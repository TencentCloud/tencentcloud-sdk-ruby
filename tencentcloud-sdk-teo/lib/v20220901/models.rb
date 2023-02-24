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
  module Teo
    module V20220901
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
        # @param OriginDetail: 源站信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginDetail: :class:`Tencentcloud::Teo.v20220901.models.OriginDetail`
        # @param CreatedOn: 创建时间。
        # @type CreatedOn: String
        # @param DomainName: 加速域名名称。
        # @type DomainName: String
        # @param ModifiedOn: 修改时间。
        # @type ModifiedOn: String
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param DomainStatus: 加速域名状态，取值有：
        # <li>online：已生效；</li>
        # <li>process：部署中；</li>
        # <li>offline：已停用；</li>
        # <li>forbidden：已封禁；</li>
        # <li>init：未生效，待激活站点；</li>
        # @type DomainStatus: String
        # @param Cname: CNAME 地址。
        # @type Cname: String

        attr_accessor :OriginDetail, :CreatedOn, :DomainName, :ModifiedOn, :ZoneId, :DomainStatus, :Cname
        
        def initialize(origindetail=nil, createdon=nil, domainname=nil, modifiedon=nil, zoneid=nil, domainstatus=nil, cname=nil)
          @OriginDetail = origindetail
          @CreatedOn = createdon
          @DomainName = domainname
          @ModifiedOn = modifiedon
          @ZoneId = zoneid
          @DomainStatus = domainstatus
          @Cname = cname
        end

        def deserialize(params)
          unless params['OriginDetail'].nil?
            @OriginDetail = OriginDetail.new
            @OriginDetail.deserialize(params['OriginDetail'])
          end
          @CreatedOn = params['CreatedOn']
          @DomainName = params['DomainName']
          @ModifiedOn = params['ModifiedOn']
          @ZoneId = params['ZoneId']
          @DomainStatus = params['DomainStatus']
          @Cname = params['Cname']
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
        # <li>sip_proto：网络层协议。</li>
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # <li>ban：IP封禁；</li>
        # <li>redirect：重定向；</li>
        # <li>page：指定页面；</li>
        # <li>alg：Javascript挑战。</li>
        # @type Action: String
        # @param RuleStatus: 规则状态，取值有：
        # <li>on：生效；</li>
        # <li>off：失效。</li>
        # @type RuleStatus: String
        # @param AclConditions: 自定义规则。
        # @type AclConditions: Array
        # @param RulePriority: 规则优先级，取值范围0-100。
        # @type RulePriority: Integer
        # @param RuleID: 规则Id。仅出参使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间。仅出参使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param PunishTime: ip封禁的惩罚时间，取值范围0-2天。默认为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTime: Integer
        # @param PunishTimeUnit: ip封禁的惩罚时间单位，取值有：
        # <li>second：秒；</li>
        # <li>minutes：分；</li>
        # <li>hour：小时。</li>默认为second。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTimeUnit: String
        # @param Name: 自定义返回页面的名称。默认为空字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PageId: 自定义返回页面的实例id。默认为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: Integer
        # @param RedirectUrl: 重定向时候的地址，必须为本用户接入的站点子域名。默认为空字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectUrl: String
        # @param ResponseCode: 重定向时候的返回码。默认为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseCode: Integer

        attr_accessor :RuleName, :Action, :RuleStatus, :AclConditions, :RulePriority, :RuleID, :UpdateTime, :PunishTime, :PunishTimeUnit, :Name, :PageId, :RedirectUrl, :ResponseCode
        
        def initialize(rulename=nil, action=nil, rulestatus=nil, aclconditions=nil, rulepriority=nil, ruleid=nil, updatetime=nil, punishtime=nil, punishtimeunit=nil, name=nil, pageid=nil, redirecturl=nil, responsecode=nil)
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
          @RedirectUrl = redirecturl
          @ResponseCode = responsecode
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
          @RedirectUrl = params['RedirectUrl']
          @ResponseCode = params['ResponseCode']
        end
      end

      # 规则引擎功能项操作，对于一种功能只对应下面三种类型的其中一种，RuleAction 数组中的每一项只能是其中一个类型，更多功能项的填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
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
        # <li> 缓存预刷新（CachePrefresh）；</li>
        # <li> 智能压缩（Compression）；</li>
        # <li> Hsts；</li>
        # <li> ClientIpHeader；</li>
        # <li> TlsVersion；</li>
        # <li> OcspStapling；</li>
        # <li> HTTP/2 访问（Http2）；</li>
        # <li> 回源跟随重定向(UpstreamFollowRedirect)；</li>
        # <li> 修改源站(Origin)。</li>
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

        attr_accessor :ZoneId, :ZoneName, :ProxyId, :ProxyName, :ProxyType, :PlatType, :Area, :SecurityType, :AccelerateType, :SessionPersistTime, :Status, :BanStatus, :ScheduleValue, :HostId, :Ipv6, :UpdateTime, :ApplicationProxyRules
        
        def initialize(zoneid=nil, zonename=nil, proxyid=nil, proxyname=nil, proxytype=nil, plattype=nil, area=nil, securitytype=nil, acceleratetype=nil, sessionpersisttime=nil, status=nil, banstatus=nil, schedulevalue=nil, hostid=nil, ipv6=nil, updatetime=nil, applicationproxyrules=nil)
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
        # <li>origins：源站组。</li>
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # <li>当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；</li>
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
        # @param OriginPort: 源站端口，支持格式：
        # <li>单端口，如：80。</li>
        # <li>端口段：81-82，表示81，82两个端口。</li>
        # @type OriginPort: String

        attr_accessor :Proto, :Port, :OriginType, :OriginValue, :RuleId, :Status, :ForwardClientIp, :SessionPersist, :OriginPort
        
        def initialize(proto=nil, port=nil, origintype=nil, originvalue=nil, ruleid=nil, status=nil, forwardclientip=nil, sessionpersist=nil, originport=nil)
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @RuleId = ruleid
          @Status = status
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @OriginPort = originport
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
          @OriginPort = params['OriginPort']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntelligenceRule: :class:`Tencentcloud::Teo.v20220901.models.IntelligenceRule`

        attr_accessor :Switch, :BotManagedRule, :BotPortraitRule, :IntelligenceRule
        
        def initialize(switch=nil, botmanagedrule=nil, botportraitrule=nil, intelligencerule=nil)
          @Switch = switch
          @BotManagedRule = botmanagedrule
          @BotPortraitRule = botportraitrule
          @IntelligenceRule = intelligencerule
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransManagedIds: Array
        # @param AlgManagedIds: JS挑战的规则ID。默认所有规则不配置JS挑战。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgManagedIds: Array
        # @param CapManagedIds: 数字验证码的规则ID。默认所有规则不配置数字验证码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapManagedIds: Array
        # @param MonManagedIds: 观察的规则ID。默认所有规则不配置观察。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonManagedIds: Array
        # @param DropManagedIds: 拦截的规则ID。默认所有规则不配置拦截。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # bot 用户画像规则
      class BotPortraitRule < TencentCloud::Common::AbstractModel
        # @param Switch: 本功能的开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RuleID: 本规则的ID。仅出参使用。
        # @type RuleID: Integer
        # @param AlgManagedIds: JS挑战的规则ID。默认所有规则不配置JS挑战。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgManagedIds: Array
        # @param CapManagedIds: 数字验证码的规则ID。默认所有规则不配置数字验证码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapManagedIds: Array
        # @param MonManagedIds: 观察的规则ID。默认所有规则不配置观察。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonManagedIds: Array
        # @param DropManagedIds: 拦截的规则ID。默认所有规则不配置拦截。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 缓存时间设置
      class Cache < TencentCloud::Common::AbstractModel
        # @param Switch: 缓存配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param CacheTime: 缓存过期时间设置。
        # 单位为秒，最大可设置为 365 天。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheTime: Integer
        # @param IgnoreCacheControl: 是否开启强制缓存，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCacheControl: String

        attr_accessor :Switch, :CacheTime, :IgnoreCacheControl
        
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

      # 缓存键配置。
      class CacheKey < TencentCloud::Common::AbstractModel
        # @param FullUrlCache: 是否开启全路径缓存，取值有：
        # <li>on：开启全路径缓存（即关闭参数忽略）；</li>
        # <li>off：关闭全路径缓存（即开启参数忽略）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullUrlCache: String
        # @param IgnoreCase: 是否忽略大小写缓存，取值有：
        # <li>on：忽略；</li>
        # <li>off：不忽略。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCase: String
        # @param QueryString: CacheKey中包含请求参数。
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

      # 缓存预刷新
      class CachePrefresh < TencentCloud::Common::AbstractModel
        # @param Switch: 缓存预刷新配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Percent: 缓存预刷新百分比，取值范围：1-99。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CheckCertificate请求参数结构体
      class CheckCertificateRequest < TencentCloud::Common::AbstractModel
        # @param Certificate: 证书内容。
        # @type Certificate: String
        # @param PrivateKey: 私钥内容。
        # @type PrivateKey: String

        attr_accessor :Certificate, :PrivateKey
        
        def initialize(certificate=nil, privatekey=nil)
          @Certificate = certificate
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @Certificate = params['Certificate']
          @PrivateKey = params['PrivateKey']
        end
      end

      # CheckCertificate返回参数结构体
      class CheckCertificateResponse < TencentCloud::Common::AbstractModel
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

      # 回源时携带客户端IP所属地域信息，值的格式为ISO-3166-1两位字母代码。
      class ClientIpCountry < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param HeaderName: 存放客户端IP所属地域信息的请求头名称，当Switch=on时有效。
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
        # @param HeaderName: 回源时，存放客户端IP的请求头名称。
        # 为空则使用默认值：X-Forwarded-IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 客户端规则信息
      class ClientRule < TencentCloud::Common::AbstractModel
        # @param ClientIp: 客户端ip。
        # @type ClientIp: String
        # @param RuleType: 规则类型。
        # @type RuleType: String
        # @param RuleId: 规则id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param Description: 规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param IpStatus: 封禁状态，取值有：
        # <li>block ：封禁 ；</li>
        # <li>allow ：放行 。</li>
        # @type IpStatus: String
        # @param BlockTime: 封禁时间，采用unix秒级时间戳。
        # @type BlockTime: Integer
        # @param Id: 每条数据的唯一标识id。
        # @type Id: String

        attr_accessor :ClientIp, :RuleType, :RuleId, :Description, :IpStatus, :BlockTime, :Id
        
        def initialize(clientip=nil, ruletype=nil, ruleid=nil, description=nil, ipstatus=nil, blocktime=nil, id=nil)
          @ClientIp = clientip
          @RuleType = ruletype
          @RuleId = ruleid
          @Description = description
          @IpStatus = ipstatus
          @BlockTime = blocktime
          @Id = id
        end

        def deserialize(params)
          @ClientIp = params['ClientIp']
          @RuleType = params['RuleType']
          @RuleId = params['RuleId']
          @Description = params['Description']
          @IpStatus = params['IpStatus']
          @BlockTime = params['BlockTime']
          @Id = params['Id']
        end
      end

      # 日志任务主题信息
      class ClsLogTopicInfo < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名。
        # @type TaskName: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param LogSetId: 日志集ID。
        # @type LogSetId: String
        # @param TopicId: 日志主题ID。
        # @type TopicId: String
        # @param EntityType: 任务类型。
        # @type EntityType: String
        # @param Period: 任务主题保存时间。
        # @type Period: Integer
        # @param Enabled: 任务主题是否开启。
        # @type Enabled: Boolean
        # @param Deleted: 任务主题是否异常。
        # @type Deleted: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Target: 推送目标地址,取值有：
        # <li>cls: 推送到cls；</li>
        # <li>custom_enpoint: 自定义推送地址。</li>
        # @type Target: String
        # @param LogSetRegion: 日志集所属地区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSetRegion: String
        # @param ZoneId: 站点id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String
        # @param LogSetType: 推送任务类型，取值有：
        # <li>cls：推送到cls；</li>
        # <li>custom_endpoint：推送到自定义接口。</li>
        # @type LogSetType: String

        attr_accessor :TaskName, :ZoneName, :LogSetId, :TopicId, :EntityType, :Period, :Enabled, :Deleted, :CreateTime, :Target, :LogSetRegion, :ZoneId, :Area, :LogSetType
        
        def initialize(taskname=nil, zonename=nil, logsetid=nil, topicid=nil, entitytype=nil, period=nil, enabled=nil, deleted=nil, createtime=nil, target=nil, logsetregion=nil, zoneid=nil, area=nil, logsettype=nil)
          @TaskName = taskname
          @ZoneName = zonename
          @LogSetId = logsetid
          @TopicId = topicid
          @EntityType = entitytype
          @Period = period
          @Enabled = enabled
          @Deleted = deleted
          @CreateTime = createtime
          @Target = target
          @LogSetRegion = logsetregion
          @ZoneId = zoneid
          @Area = area
          @LogSetType = logsettype
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ZoneName = params['ZoneName']
          @LogSetId = params['LogSetId']
          @TopicId = params['TopicId']
          @EntityType = params['EntityType']
          @Period = params['Period']
          @Enabled = params['Enabled']
          @Deleted = params['Deleted']
          @CreateTime = params['CreateTime']
          @Target = params['Target']
          @LogSetRegion = params['LogSetRegion']
          @ZoneId = params['ZoneId']
          @Area = params['Area']
          @LogSetType = params['LogSetType']
        end
      end

      # 规则引擎带有状态码的动作
      class CodeAction < TencentCloud::Common::AbstractModel
        # @param Action: 功能名称，功能名称填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateAccelerationDomain请求参数结构体
      class CreateAccelerationDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点ID。
        # @type ZoneId: String
        # @param DomainName: 加速域名名称。
        # @type DomainName: String
        # @param OriginInfo: 源站信息。
        # @type OriginInfo: :class:`Tencentcloud::Teo.v20220901.models.OriginInfo`

        attr_accessor :ZoneId, :DomainName, :OriginInfo
        
        def initialize(zoneid=nil, domainname=nil, origininfo=nil)
          @ZoneId = zoneid
          @DomainName = domainname
          @OriginInfo = origininfo
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainName = params['DomainName']
          unless params['OriginInfo'].nil?
            @OriginInfo = OriginInfo.new
            @OriginInfo.deserialize(params['OriginInfo'])
          end
        end
      end

      # CreateAccelerationDomain返回参数结构体
      class CreateAccelerationDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateApplicationProxy请求参数结构体
      class CreateApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyName: 当ProxyType=hostname时，表示域名或子域名；
        # 当ProxyType=instance时，表示代理名称。
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
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>不填写使用默认值instance。
        # @type ProxyType: String
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒。
        # 不填写使用默认值600。
        # @type SessionPersistTime: Integer
        # @param Ipv6: Ipv6访问配置。
        # 不填写表示关闭Ipv6访问。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param ApplicationProxyRules: 规则详细信息。
        # 不填写则不创建规则。
        # @type ApplicationProxyRules: Array

        attr_accessor :ZoneId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ProxyType, :SessionPersistTime, :Ipv6, :ApplicationProxyRules
        
        def initialize(zoneid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, proxytype=nil, sessionpersisttime=nil, ipv6=nil, applicationproxyrules=nil)
          @ZoneId = zoneid
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ProxyType = proxytype
          @SessionPersistTime = sessionpersisttime
          @Ipv6 = ipv6
          @ApplicationProxyRules = applicationproxyrules
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
        end
      end

      # CreateApplicationProxy返回参数结构体
      class CreateApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 新增的四层代理应用ID。
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # <li>origins：源站组。</li>
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # <li>当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；</li>
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
        # @param OriginPort: 源站端口，支持格式：
        # <li>单端口：80；</li>
        # <li>端口段：81-90，81至90端口。</li>
        # @type OriginPort: String

        attr_accessor :ZoneId, :ProxyId, :Proto, :Port, :OriginType, :OriginValue, :ForwardClientIp, :SessionPersist, :OriginPort
        
        def initialize(zoneid=nil, proxyid=nil, proto=nil, port=nil, origintype=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil, originport=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @OriginPort = originport
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
          @OriginPort = params['OriginPort']
        end
      end

      # CreateApplicationProxyRule返回参数结构体
      class CreateApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateCredential请求参数结构体
      class CreateCredentialRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateCredential返回参数结构体
      class CreateCredentialResponse < TencentCloud::Common::AbstractModel
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

      # CreateOriginGroup请求参数结构体
      class CreateOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param OriginType: 源站类型，取值有：
        # <li>self：自有源站；</li>
        # <li>third_party：第三方源站；</li>
        # <li>cos：腾讯云COS源站。</li>
        # @type OriginType: String
        # @param OriginGroupName: 源站组名称。
        # @type OriginGroupName: String
        # @param ConfigurationType: 源站配置类型，当OriginType=self时，取值有：
        # <li>area：按区域配置；</li>
        # <li>weight： 按权重配置；</li>
        # <li>proto： 按HTTP协议配置。</li>当OriginType=third_party/cos时放空。
        # @type ConfigurationType: String
        # @param OriginRecords: 源站记录信息。
        # @type OriginRecords: Array
        # @param HostHeader: 回源Host，仅当OriginType=self时可以设置。
        # @type HostHeader: String

        attr_accessor :ZoneId, :OriginType, :OriginGroupName, :ConfigurationType, :OriginRecords, :HostHeader
        
        def initialize(zoneid=nil, origintype=nil, origingroupname=nil, configurationtype=nil, originrecords=nil, hostheader=nil)
          @ZoneId = zoneid
          @OriginType = origintype
          @OriginGroupName = origingroupname
          @ConfigurationType = configurationtype
          @OriginRecords = originrecords
          @HostHeader = hostheader
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @OriginType = params['OriginType']
          @OriginGroupName = params['OriginGroupName']
          @ConfigurationType = params['ConfigurationType']
          unless params['OriginRecords'].nil?
            @OriginRecords = []
            params['OriginRecords'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @OriginRecords << originrecord_tmp
            end
          end
          @HostHeader = params['HostHeader']
        end
      end

      # CreateOriginGroup返回参数结构体
      class CreateOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param OriginGroupId: 源站组ID。
        # @type OriginGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # <li> ent_global_with_bot ：全球内容分发网络（包括中国大陆）企业版套餐附带bot管理。</li>当前账户可购买套餐类型请以<a href="https://tcloud4api.woa.com/document/product/1657/80124?!preview&!document=1">DescribeAvailablePlans</a>返回为准。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreatePrefetchTask请求参数结构体
      class CreatePrefetchTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Targets: 要预热的资源列表，每个元素格式类似如下:
        # http://www.example.com/example.txt。
        # @type Targets: Array
        # @param EncodeUrl: 是否对url进行encode，若内容含有非 ASCII 字符集的字符，请开启此开关进行编码转换（编码规则遵循 RFC3986）。
        # @type EncodeUrl: Boolean
        # @param Headers: 附带的http头部信息。
        # @type Headers: Array

        attr_accessor :ZoneId, :Targets, :EncodeUrl, :Headers
        
        def initialize(zoneid=nil, targets=nil, encodeurl=nil, headers=nil)
          @ZoneId = zoneid
          @Targets = targets
          @EncodeUrl = encodeurl
          @Headers = headers
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
        end
      end

      # CreatePrefetchTask返回参数结构体
      class CreatePrefetchTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param FailedList: 失败的任务列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Type: 清除缓存类型，取值有：
        # <li>purge_url：URL；</li>
        # <li>purge_prefix：前缀；</li>
        # <li>purge_host：Hostname；</li>
        # <li>purge_all：全部缓存；</li>
        # <li>purge_cache_tag：cache-tag刷新。</li>
        # @type Type: String
        # @param Targets: 要清除缓存的资源列表，每个元素格式依据Type而定：
        # 1) Type = purge_host 时：
        # 形如：www.example.com 或 foo.bar.example.com。
        # 2) Type = purge_prefix 时：
        # 形如：http://www.example.com/example。
        # 3) Type = purge_url 时：
        # 形如：https://www.example.com/example.jpg。
        # 4）Type = purge_all 时：
        # Targets可为空，不需要填写。
        # 5）Type = purge_cache_tag 时：
        # 形如：tag1。
        # @type Targets: Array
        # @param EncodeUrl: 若有编码转换，仅清除编码转换后匹配的资源。
        # 若内容含有非 ASCII 字符集的字符，请开启此开关进行编码转换（编码规则遵循 RFC3986）。
        # @type EncodeUrl: Boolean

        attr_accessor :ZoneId, :Type, :Targets, :EncodeUrl
        
        def initialize(zoneid=nil, type=nil, targets=nil, encodeurl=nil)
          @ZoneId = zoneid
          @Type = type
          @Targets = targets
          @EncodeUrl = encodeurl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
        end
      end

      # CreatePurgeTask返回参数结构体
      class CreatePurgeTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String
        # @param FailedList: 失败的任务列表及原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateReplayTask请求参数结构体
      class CreateReplayTaskRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 重放任务的 ID 列表。
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # CreateReplayTask返回参数结构体
      class CreateReplayTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 此次任务ID。
        # @type JobId: String
        # @param FailedList: 失败的任务列表及原因。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateSpeedTesting请求参数结构体
      class CreateSpeedTestingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Host: 拨测子域名。
        # @type Host: String

        attr_accessor :ZoneId, :Host
        
        def initialize(zoneid=nil, host=nil)
          @ZoneId = zoneid
          @Host = host
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Host = params['Host']
        end
      end

      # CreateSpeedTesting返回参数结构体
      class CreateSpeedTestingResponse < TencentCloud::Common::AbstractModel
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

      # CreateZone请求参数结构体
      class CreateZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Type: 接入方式，取值有：
        # <li> full：NS接入；</li>
        # <li> partial：CNAME接入，请先调用认证站点API（IdentifyZone）进行站点归属权校验，校验通过后继续调用本接口创建站点。</li>不填写使用默认值full。
        # @type Type: String
        # @param JumpStart: 是否跳过站点现有的DNS记录扫描。默认值：false。
        # @type JumpStart: Boolean
        # @param Tags: 资源标签。
        # @type Tags: Array
        # @param AllowDuplicates: 是否允许重复接入。
        # <li> true：允许重复接入；</li>
        # <li> false：不允许重复接入。</li>不填写使用默认值false。
        # @type AllowDuplicates: Boolean
        # @param AliasZoneName: 站点别名。数字、英文、-和_组合，限制20个字符。
        # @type AliasZoneName: String

        attr_accessor :ZoneName, :Type, :JumpStart, :Tags, :AllowDuplicates, :AliasZoneName
        
        def initialize(zonename=nil, type=nil, jumpstart=nil, tags=nil, allowduplicates=nil, aliaszonename=nil)
          @ZoneName = zonename
          @Type = type
          @JumpStart = jumpstart
          @Tags = tags
          @AllowDuplicates = allowduplicates
          @AliasZoneName = aliaszonename
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          @Type = params['Type']
          @JumpStart = params['JumpStart']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AllowDuplicates = params['AllowDuplicates']
          @AliasZoneName = params['AliasZoneName']
        end
      end

      # CreateZone返回参数结构体
      class CreateZoneResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :RequestId
        
        def initialize(zoneid=nil, requestid=nil)
          @ZoneId = zoneid
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RequestId = params['RequestId']
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

      # https 服务端证书配置
      class DefaultServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Alias: 证书备注名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Type: 证书类型，取值有：
        # <li>default: 默认证书;</li>
        # <li>upload:用户上传;</li>
        # <li>managed:腾讯云托管。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpireTime: 证书过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param EffectiveTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectiveTime: String
        # @param CommonName: 证书公用名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonName: String
        # @param SubjectAltName: 证书SAN域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param Status: 部署状态，取值有：
        # <li>processing: 部署中；</li>
        # <li>deployed: 已部署；</li>
        # <li>failed: 部署失败。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Message: Status为失败时,此字段返回失败原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param SignAlgo: 证书算法。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteOriginGroup请求参数结构体
      class DeleteOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param OriginGroupId: 源站组ID。
        # @type OriginGroupId: String

        attr_accessor :ZoneId, :OriginGroupId
        
        def initialize(zoneid=nil, origingroupid=nil)
          @ZoneId = zoneid
          @OriginGroupId = origingroupid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @OriginGroupId = params['OriginGroupId']
        end
      end

      # DeleteOriginGroup返回参数结构体
      class DeleteOriginGroupResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccelerationDomains请求参数结构体
      class DescribeAccelerationDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点ID。不填写该参数默认返回所有站点下的加速域名。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>domain-name<br>   按照【<strong>加速域名名称</strong>】进行过滤。<br>   类型：String<br>   必选：否
        # <li>origin-type<br>   按照【<strong>源站类型</strong>】进行过滤。<br>   类型：String<br>   必选：否
        # <li>origin<br>   按照【<strong>主源站地址</strong>】进行过滤。<br>   类型：String<br>   必选：否
        # <li>backup-origin<br>   按照【<strong>备用源站地址</strong>】进行过滤。<br>   类型：String<br>   必选：否
        # @type Filters: Array
        # @param Direction: 列表排序方式，取值有：
        # <li>asc：升序排列；</li>
        # <li>desc：降序排列。</li>默认值为asc。
        # @type Direction: String
        # @param Match: 匹配方式，取值有：
        # <li>all：返回匹配所有查询条件的加速域名；</li>
        # <li>any：返回匹配任意一个查询条件的加速域名。</li>默认值为all。
        # @type Match: String
        # @param Limit: 分页查询限制数目，默认值：20，上限：200。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Order: 排序依据，取值有：
        # <li>created_on：加速域名创建时间；</li>
        # <li>domain-name：加速域名名称；</li>
        # </li>默认根据domain-name属性排序。
        # @type Order: String

        attr_accessor :ZoneId, :Filters, :Direction, :Match, :Limit, :Offset, :Order
        
        def initialize(zoneid=nil, filters=nil, direction=nil, match=nil, limit=nil, offset=nil, order=nil)
          @ZoneId = zoneid
          @Filters = filters
          @Direction = direction
          @Match = match
          @Limit = limit
          @Offset = offset
          @Order = order
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
          @Direction = params['Direction']
          @Match = params['Match']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
        end
      end

      # DescribeAccelerationDomains返回参数结构体
      class DescribeAccelerationDomainsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 加速域名总数。
        # @type TotalCount: Integer
        # @param AccelerationDomains: 加速域名列表。
        # @type AccelerationDomains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAddableEntityList请求参数结构体
      class DescribeAddableEntityListRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param EntityType: 推送数据类型，取值有:
        # <li>domain：七层加速日志；</li>
        # <li>application：四层加速日志；</li>
        # <li>web-rateLiming：速率限制日志；</li>
        # <li>web-attack：web攻击防护日志；</li>
        # <li>web-rule：自定义规则日志；</li>
        # <li>web-bot：Bot管理日志。</li>
        # @type EntityType: String
        # @param Area: 服务区域，取值有：
        # <li>mainland：中国大陆境内；</li>
        # <li>overseas：全球（不含中国大陆）。</li>若为国内站账号，则默认取值为mainland；若为国际站账号，则默认取值为overseas。
        # @type Area: String

        attr_accessor :ZoneId, :EntityType, :Area
        
        def initialize(zoneid=nil, entitytype=nil, area=nil)
          @ZoneId = zoneid
          @EntityType = entitytype
          @Area = area
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @EntityType = params['EntityType']
          @Area = params['Area']
        end
      end

      # DescribeAddableEntityList返回参数结构体
      class DescribeAddableEntityListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param EntityList: 可添加的实体列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EntityList, :RequestId
        
        def initialize(totalcount=nil, entitylist=nil, requestid=nil)
          @TotalCount = totalcount
          @EntityList = entitylist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @EntityList = params['EntityList']
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
        # <li>target-name<br>   按照【<strong>目标域名名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>alias-name<br>   按照【<strong>别称域名名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>模糊查询时仅支持过滤字段名为alias-name。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: 分页查询偏移量。默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：<li>proxy-id<br>   按照【<strong>代理ID</strong>】进行过滤。代理ID形如：proxy-ev2sawbwfd。<br>   类型：String<br>   必选：否</li><li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-vawer2vadg。<br>   类型：String<br>   必选：否</li>
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
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeApplicationProxies返回参数结构体
      class DescribeApplicationProxiesResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationProxies: 应用代理列表。
        # @type ApplicationProxies: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeClientRuleList请求参数结构体
      class DescribeClientRuleListRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 查询的站点ID.
        # @type ZoneId: String
        # @param Domain: 查询的子域名。
        # @type Domain: String
        # @param RuleType: 规则类型，取值有：
        # <li>acl：自定义规则；</li>
        # <li>rate：限速规则。</li>不填表示查询所有规则。
        # @type RuleType: String
        # @param RuleId: 规则ID。
        # @type RuleId: Integer
        # @param SourceClientIp: 客户端IP。
        # @type SourceClientIp: String
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :ZoneId, :Domain, :RuleType, :RuleId, :SourceClientIp, :Limit, :Offset, :Area
        
        def initialize(zoneid=nil, domain=nil, ruletype=nil, ruleid=nil, sourceclientip=nil, limit=nil, offset=nil, area=nil)
          @ZoneId = zoneid
          @Domain = domain
          @RuleType = ruletype
          @RuleId = ruleid
          @SourceClientIp = sourceclientip
          @Limit = limit
          @Offset = offset
          @Area = area
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Domain = params['Domain']
          @RuleType = params['RuleType']
          @RuleId = params['RuleId']
          @SourceClientIp = params['SourceClientIp']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Area = params['Area']
        end
      end

      # DescribeClientRuleList返回参数结构体
      class DescribeClientRuleListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 封禁客户端数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              clientrule_tmp = ClientRule.new
              clientrule_tmp.deserialize(i)
              @Data << clientrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDDoSAttackData请求参数结构体
      class DescribeDDoSAttackDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 统计指标列表，取值有：
        # <li>ddos_attackMaxBandwidth：攻击带宽峰值；</li>
        # <li>ddos_attackMaxPackageRate：攻击包速率峰值 ；</li>
        # <li>ddos_attackBandwidth：攻击带宽曲线；</li>
        # <li>ddos_attackPackageRate：攻击包速率曲线。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDDoSAttackTopData请求参数结构体
      class DescribeDDoSAttackTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricName: 查询的统计指标，取值有：
        # <li>ddos_attackFlux_protocol：按各协议的攻击流量排行；</li>
        # <li>ddos_attackPackageNum_protocol：按各协议的攻击包量排行；</li>
        # <li>ddos_attackNum_attackType：按各攻击类型的攻击数量排行；</li>
        # <li>ddos_attackNum_sregion：按攻击源地区的攻击数量排行；</li>
        # <li>ddos_attackFlux_sip：按攻击源IP的攻击数量排行；</li>
        # <li>ddos_attackFlux_sregion：按攻击源地区的攻击数量排行。</li>
        # @type MetricName: String
        # @param ZoneIds: 站点ID集合，不填默认选择全部站点。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDefaultCertificates请求参数结构体
      class DescribeDefaultCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，Filters.Values的上限为5。详细的过滤条件如下：
        # <li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-xxx。<br>   类型：String<br>   必选：是 </li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
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

      # DescribeDefaultCertificates返回参数结构体
      class DescribeDefaultCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 证书总数。
        # @type TotalCount: Integer
        # @param DefaultServerCertInfo: 默认证书列表。
        # @type DefaultServerCertInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDnsData请求参数结构体
      class DescribeDnsDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>zone<br>   按照【<strong>站点名称</strong>】进行过滤。站点名称形如：tencent.com<br>   类型：String<br>   必选：否，仅支持填写一个站点
        # <li>host<br>   按照【<strong>域名</strong>】进行过滤。域名形如：test.tencent.com<br>   类型：String<br>   必选：否，仅支持填写一个域名
        # <li>type<br>   按照【<strong>DNS解析类型</strong>】进行过滤<br>   类型：String<br>   必选：否<br>   可选项：<br>   A：A记录<br>   AAAA：AAAA记录<br>   CNAME：CNAME记录<br>   MX：MX记录<br>   TXT：TXT记录<br>   NS：NS记录<br>   SRV：SRV记录<br>   CAA：CAA记录
        # <li>code<br>   按照【<strong>DNS解析状态码</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   NoError：成功<br>   NXDomain：请求域不存在<br>   NotImp：不支持的请求类型<br>   Refused：域名服务器因为策略的原因拒绝执行请求
        # <li>area<br>   按照【<strong>DNS解析地域</strong>】进行过滤。<br>   类型：String<br>   必选：否。<br>   可选项：<br>   亚洲：Asia<br>   欧洲：Europe<br>   非洲：Africa<br>   大洋洲：Oceania<br>   美洲：Americas
        # @type Filters: Array
        # @param Interval: 时间粒度，取值有：
        # <li>min：1分钟粒度；</li>
        # <li>5min：5分钟粒度；</li>
        # <li>hour：1小时粒度；</li>
        # <li>day：天粒度。</li>不填写，默认值为：min。
        # @type Interval: String

        attr_accessor :StartTime, :EndTime, :Filters, :Interval
        
        def initialize(starttime=nil, endtime=nil, filters=nil, interval=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @Interval = interval
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Interval = params['Interval']
        end
      end

      # DescribeDnsData返回参数结构体
      class DescribeDnsDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              dnsdata_tmp = DnsData.new
              dnsdata_tmp.deserialize(i)
              @Data << dnsdata_tmp
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
        # <li>host<br>   按照【<strong>域名</strong>】进行过滤。<br>   类型：string<br>   必选：否</li>
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeIdentifications请求参数结构体
      class DescribeIdentificationsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>zone-name<br>   按照【<strong>站点名称</strong>】进行过滤。<br>   类型：String<br>   必选：是</li>
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeLogSets请求参数结构体
      class DescribeLogSetsRequest < TencentCloud::Common::AbstractModel
        # @param LogSetRegion: 日志集所属的地域。
        # @type LogSetRegion: String
        # @param LogSetId: 日志集ID。
        # @type LogSetId: String
        # @param LogSetName: 日志集名称。
        # @type LogSetName: String

        attr_accessor :LogSetRegion, :LogSetId, :LogSetName
        
        def initialize(logsetregion=nil, logsetid=nil, logsetname=nil)
          @LogSetRegion = logsetregion
          @LogSetId = logsetid
          @LogSetName = logsetname
        end

        def deserialize(params)
          @LogSetRegion = params['LogSetRegion']
          @LogSetId = params['LogSetId']
          @LogSetName = params['LogSetName']
        end
      end

      # DescribeLogSets返回参数结构体
      class DescribeLogSetsResponse < TencentCloud::Common::AbstractModel
        # @param LogSetList: 日志集列表数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSetList: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogSetList, :TotalCount, :RequestId
        
        def initialize(logsetlist=nil, totalcount=nil, requestid=nil)
          @LogSetList = logsetlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogSetList'].nil?
            @LogSetList = []
            params['LogSetList'].each do |i|
              logsetinfo_tmp = LogSetInfo.new
              logsetinfo_tmp.deserialize(i)
              @LogSetList << logsetinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogTopicTasks请求参数结构体
      class DescribeLogTopicTasksRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
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

      # DescribeLogTopicTasks返回参数结构体
      class DescribeLogTopicTasksResponse < TencentCloud::Common::AbstractModel
        # @param TopicList: 推送任务列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicList, :TotalCount, :RequestId
        
        def initialize(topiclist=nil, totalcount=nil, requestid=nil)
          @TopicList = topiclist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              clslogtopicinfo_tmp = ClsLogTopicInfo.new
              clslogtopicinfo_tmp.deserialize(i)
              @TopicList << clslogtopicinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginGroup请求参数结构体
      class DescribeOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为10，取值：1-1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-20hzkd4rdmy0<br>   类型：String<br>   必选：否<br>   模糊查询：不支持<li>origin-group-id<br>   按照【<strong>源站组ID</strong>】进行过滤。源站组ID形如：origin-2ccgtb24-7dc5-46s2-9r3e-95825d53dwe3a<br>   类型：String<br>   必选：否<br>   模糊查询：不支持<li>origin-group-name<br>   按照【<strong>源站组名称</strong>】进行过滤<br>   类型：String<br>   必选：否<br>   模糊查询：支持。使用模糊查询时，仅支持填写一个源站组名称
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

      # DescribeOriginGroup返回参数结构体
      class DescribeOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param OriginGroups: 源站组信息。
        # @type OriginGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneIds: 查询的站点集合，不填默认查询所有站点。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # <li>l7Flow_outFlux: 访问流量；</li>
        # <li>l7Flow_request: 访问请求数；</li>
        # <li>l7Flow_outBandwidth: 访问带宽；</li>
        # <li>l7Flow_hit_outFlux: 缓存命中流量。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合。
        # 若不填写，默认选择全部站点，且最多只能查询近30天的数据；若填写，则可查询站点绑定套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>。
        # @type ZoneIds: Array
        # @param Domains: 查询的域名集合，不填默认查询所有子域名。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribePrefetchTasks请求参数结构体
      class DescribePrefetchTasksRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间。
        # @type StartTime: String
        # @param EndTime: 查询结束时间。
        # @type EndTime: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认值：20，上限：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>zone-id<br>   按照【<strong>站点 ID</strong>】进行过滤。zone-id形如：zone-1379afjk91u32h，暂不支持多值。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>job-id<br>   按照【<strong>任务ID</strong>】进行过滤。job-id形如：1379afjk91u32h，暂不支持多值。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>target<br>   按照【<strong>目标资源信息</strong>】进行过滤。target形如：http://www.qq.com/1.txt，暂不支持多值。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>domains<br>   按照【<strong>域名</strong>】进行过滤。domains形如：www.qq.com。<br>   类型：String<br>   必选：否。<br>   模糊查询：不支持。</li><li>statuses<br>   按照【<strong>任务状态</strong>】进行过滤。<br>   必选：否<br>   模糊查询：不支持。<br>   可选项：<br>   processing：处理中<br>   success：成功<br>   failed：失败<br>   timeout：超时</li>
        # @type Filters: Array

        attr_accessor :StartTime, :EndTime, :Offset, :Limit, :Filters
        
        def initialize(starttime=nil, endtime=nil, offset=nil, limit=nil, filters=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneId: 字段已废弃，请使用Filters中的zone-id。
        # @type ZoneId: String
        # @param StartTime: 查询起始时间。
        # @type StartTime: String
        # @param EndTime: 查询结束时间。
        # @type EndTime: String
        # @param Offset: 分页查询偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查限制数目，默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：<li>zone-id<br>   按照【<strong>站点 ID</strong>】进行过滤。zone-id形如：zone-xxx，暂不支持多值<br>   类型：String<br>   必选：否<br>   模糊查询：不支持</li><li>job-id<br>   按照【<strong>任务ID</strong>】进行过滤。job-id形如：1379afjk91u32h，暂不支持多值。<br>   类型：String<br>   必选：否<br>   模糊查询：不支持</li><li>target<br>   按照【<strong>目标资源信息</strong>】进行过滤，target形如：http://www.qq.com/1.txt或者tag1，暂不支持多值<br>   类型：String<br>   必选：否<br>   模糊查询：不支持</li><li>domains<br>   按照【<strong>域名</strong>】进行过滤，domains形如：www.qq.com<br>   类型：String<br>   必选：否<br>   模糊查询：不支持。</li><li>statuses<br>   按照【<strong>任务状态</strong>】进行过滤<br>   必选：否<br>   模糊查询：不支持。<br>   可选项：<br>   processing：处理中<br>   success：成功<br>   failed：失败<br>   timeout：超时</li><li>type<br>   按照【<strong>清除缓存类型</strong>】进行过滤，暂不支持多值。<br>   类型：String<br>   必选：否<br>   模糊查询：不支持<br>   可选项：<br>   purge_url：URL<br>   purge_prefix：前缀<br>   purge_all：全部缓存内容<br>   purge_host：Hostname<br>   purge_cache_tag：CacheTag</li>
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>rule-id<br>   按照【<strong>规则ID</strong>】进行过滤。<br>   类型：string<br>   必选：否</li>
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeSingleL7AnalysisData请求参数结构体
      class DescribeSingleL7AnalysisDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 查询的指标，取值有:
        # <li> l7Flow_singleIpRequest：独立IP请求数。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合。
        # 若不填写，默认选择全部站点，且最多只能查询近30天的数据；
        # 若填写，则可查询站点绑定套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>。
        # @type ZoneIds: Array
        # @param Filters: 过滤条件，详细的过滤条件Key值如下：
        # <li>country<br>   按照【<strong>国家/地区</strong>】进行过滤，国家/地区遵循<a href="https://zh.wikipedia.org/wiki/ISO_3166-1">ISO 3166</a>规范。</li>
        # <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。</li>
        # <li>protocol<br>   按照【<strong>HTTP协议</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP/1.0：HTTP 1.0；<br>   HTTP/1.1：HTTP 1.1；<br>   HTTP/2.0：HTTP 2.0；<br>   HTTP/3.0：HTTP 3.0；<br>   WebSocket：WebSocket。</li>
        # <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。</li>
        # <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。</li>
        # @type Filters: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天;。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
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

      # DescribeSingleL7AnalysisData返回参数结构体
      class DescribeSingleL7AnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 单值流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              singledatarecord_tmp = SingleDataRecord.new
              singledatarecord_tmp.deserialize(i)
              @Data << singledatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpeedTestingDetails请求参数结构体
      class DescribeSpeedTestingDetailsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSpeedTestingDetails返回参数结构体
      class DescribeSpeedTestingDetailsResponse < TencentCloud::Common::AbstractModel
        # @param SpeedTestingDetailData: 分地域拨测统计数据。
        # @type SpeedTestingDetailData: :class:`Tencentcloud::Teo.v20220901.models.SpeedTestingDetailData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpeedTestingDetailData, :RequestId
        
        def initialize(speedtestingdetaildata=nil, requestid=nil)
          @SpeedTestingDetailData = speedtestingdetaildata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpeedTestingDetailData'].nil?
            @SpeedTestingDetailData = SpeedTestingDetailData.new
            @SpeedTestingDetailData.deserialize(params['SpeedTestingDetailData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpeedTestingMetricData请求参数结构体
      class DescribeSpeedTestingMetricDataRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSpeedTestingMetricData返回参数结构体
      class DescribeSpeedTestingMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param SpeedTestingMetricData: 站点拨测维度数据。
        # @type SpeedTestingMetricData: :class:`Tencentcloud::Teo.v20220901.models.SpeedTestingMetricData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpeedTestingMetricData, :RequestId
        
        def initialize(speedtestingmetricdata=nil, requestid=nil)
          @SpeedTestingMetricData = speedtestingmetricdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpeedTestingMetricData'].nil?
            @SpeedTestingMetricData = SpeedTestingMetricData.new
            @SpeedTestingMetricData.deserialize(params['SpeedTestingMetricData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpeedTestingQuota请求参数结构体
      class DescribeSpeedTestingQuotaRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSpeedTestingQuota返回参数结构体
      class DescribeSpeedTestingQuotaResponse < TencentCloud::Common::AbstractModel
        # @param SpeedTestingQuota: 配额数据。
        # @type SpeedTestingQuota: :class:`Tencentcloud::Teo.v20220901.models.SpeedTestingQuota`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpeedTestingQuota, :RequestId
        
        def initialize(speedtestingquota=nil, requestid=nil)
          @SpeedTestingQuota = speedtestingquota
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpeedTestingQuota'].nil?
            @SpeedTestingQuota = SpeedTestingQuota.new
            @SpeedTestingQuota.deserialize(params['SpeedTestingQuota'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimingL4Data请求参数结构体
      class DescribeTimingL4DataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 查询指标，取值有：
        # <li>l4Flow_connections: 访问连接数；</li>
        # <li>l4Flow_flux: 访问总流量；</li>
        # <li>l4Flow_inFlux: 访问入流量；</li>
        # <li>l4Flow_outFlux: 访问出流量；</li>
        # <li> l4Flow_outPkt: 访问出包量。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合。
        # 若不填写，默认选择全部站点，且最多只能查询近30天的数据；
        # 若填写，则可查询站点绑定套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>。
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
        # <li>ruleId<br>   按照【<strong>转发规则ID</strong>】进行过滤。</li>
        # <li>proxyId<br>   按照【<strong>四层代理实例ID</strong>】进行过滤。</li>
        # @type Filters: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 指标列表，取值有:
        # <li>l7Flow_outFlux: 访问流量；</li>
        # <li>l7Flow_request: 访问请求数；</li>
        # <li>l7Flow_outBandwidth: 访问带宽。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合。
        # 若不填写，默认选择全部站点，且最多只能查询近30天的数据；若填写，则可查询站点绑定套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>。
        # @type ZoneIds: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min: 1分钟；</li>
        # <li>5min: 5分钟；</li>
        # <li>hour: 1小时；</li>
        # <li>day: 1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        # @type Interval: String
        # @param Filters: 过滤条件，详细的过滤条件Key值如下：
        # <li>country<br>   按照【<strong>国家/地区</strong>】进行过滤，国家/地区遵循<a href="https://zh.wikipedia.org/wiki/ISO_3166-1">ISO 3166</a>规范。</li>
        # <li>province<br>   按照【<strong>省份</strong>】进行过滤，此参数只支持服务区域为中国大陆。</li>
        # <li>isp<br>   按照【<strong>运营商</strong>】进行过滤，此参数只支持服务区域为中国大陆。<br>   对应的Value可选项如下：<br>   2：中国电信；<br>   26：中国联通；<br>   1046：中国移动；<br>   3947：中国铁通；<br>   38：教育网；<br>   43：长城宽带；<br>   0：其他运营商。</li>
        # <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。</li>
        # <li>url<br>   按照【<strong>URL Path</strong>】进行过滤，URL Path形如：/content或/content/test.jpg。<br>   若只填写url参数，则最多可查询近30天的数据；<br>   若同时填写url+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        # <li>referer<br>   按照【<strong>Referer头信息</strong>】进行过滤, Referer形如：example.com。<br>   若只填写referer参数，则最多可查询近30天的数据；<br>   若同时填写referer+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        # <li>resourceType<br>   按照【<strong>资源类型</strong>】进行过滤，资源类型一般是文件后缀，形如: .jpg, .css。<br>   若只填写resourceType参数，则最多可查询近30天的数据；<br>   若同时填写resourceType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        # <li>protocol<br>   按照【<strong>HTTP协议版本</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP/1.0：HTTP 1.0；<br>   HTTP/1.1：HTTP 1.1；<br>   HTTP/2.0：HTTP 2.0；<br>   HTTP/3.0：HTTP 3.0；<br>   WebSocket：WebSocket。</li>
        # <li>socket<br>   按照【<strong>HTTP协议类型</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP：HTTP 协议；<br>   HTTPS：HTTPS协议；<br>   QUIC：QUIC协议。</li>
        # <li>statusCode<br>   按照【<strong>状态码</strong>】进行过滤。<br>   若只填写statusCode参数，则最多可查询近30天的数据；<br>   若同时填写statusCode+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应的Value可选项如下：<br>   1XX：1xx类型的状态码；<br>   100：100状态码；<br>   101：101状态码；<br>   102：102状态码；<br>   2XX：2xx类型的状态码；<br>   200：200状态码；<br>   201：201状态码；<br>   202：202状态码；<br>   203：203状态码；<br>   204：204状态码；<br>   205：205状态码；<br>   206：206状态码；<br>   207：207状态码；<br>   3XX：3xx类型的状态码；<br>   300：300状态码；<br>   301：301状态码；<br>   302：302状态码；<br>   303：303状态码；<br>   304：304状态码；<br>   305：305状态码；<br>   307：307状态码；<br>   4XX：4xx类型的状态码；<br>   400：400状态码；<br>   401：401状态码；<br>   402：402状态码；<br>   403：403状态码；<br>   404：404状态码；<br>   405：405状态码；<br>   406：406状态码；<br>   407：407状态码；<br>   408：408状态码；<br>   409：409状态码；<br>   410：410状态码；<br>   411：411状态码；<br>   412：412状态码；<br>   412：413状态码；<br>   414：414状态码；<br>   415：415状态码；<br>   416：416状态码；<br>   417：417状态码；<br>   422：422状态码；<br>   423：423状态码；<br>   424：424状态码；<br>   426：426状态码；<br>   451：451状态码；<br>   5XX：5xx类型的状态码；<br>   500：500状态码；<br>   501：501状态码；<br>   502：502状态码；<br>   503：503状态码；<br>   504：504状态码；<br>   505：505状态码；<br>   506：506状态码；<br>   507：507状态码；<br>   510：510状态码；<br>   514：514状态码；<br>   544：544状态码。</li>
        # <li>browserType<br>   按照【<strong>浏览器类型</strong>】进行过滤。<br>   若只填写browserType参数，则最多可查询近30天的数据；<br>   若同时填写browserType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   Firefox：Firefox浏览器；<br>   Chrome：Chrome浏览器；<br>   Safari：Safari浏览器；<br>   Other：其他浏览器类型；<br>   Empty：浏览器类型为空；<br>   Bot：搜索引擎爬虫；<br>   MicrosoftEdge：MicrosoftEdge浏览器；<br>   IE：IE浏览器；<br>   Opera：Opera浏览器；<br>   QQBrowser：QQ浏览器；<br>   LBBrowser：LB浏览器；<br>   MaxthonBrowser：Maxthon浏览器；<br>   SouGouBrowser：搜狗浏览器；<br>   BIDUBrowser：百度浏览器；<br>   TaoBrowser：淘浏览器；<br>   UBrowser：UC浏览器。</li>
        # <li>deviceType<br>   按照【<strong>设备类型</strong>】进行过滤。<br>   若只填写deviceType参数，则最多可查询近30天的数据；<br>   若同时填写deviceType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   TV：TV设备；<br>   Tablet：Tablet设备；<br>   Mobile：Mobile设备；<br>   Desktop：Desktop设备；<br>   Other：其他设备类型；<br>   Empty：设备类型为空。</li>
        # <li>operatingSystemType<br>   按照【<strong>操作系统类型</strong>】进行过滤。<br>   若只填写operatingSystemType参数，则最多可查询近30天的数据；<br>   若同时填写operatingSystemType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   Linux：Linux操作系统；<br>   MacOS：MacOs操作系统；<br>   Android：Android操作系统；<br>   IOS：IOS操作系统；<br>   Windows：Windows操作系统；<br>   NetBSD：NetBSD；<br>   ChromiumOS：ChromiumOS；<br>   Bot：搜索引擎爬虫；<br>   Other：其他类型的操作系统；<br>   Empty：操作系统为空。</li>
        # <li>tlsVersion<br>   按照【<strong>TLS版本</strong>】进行过滤。<br>   若只填写tlsVersion参数，则最多可查询近30天的数据；<br>   若同时填写tlsVersion+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   TLS1.0：TLS 1.0；<br>   TLS1.1：TLS 1.1；<br>   TLS1.2：TLS 1.2；<br>   TLS1.3：TLS 1.3。</li>
        # <li>ipVersion<br>   按照【<strong>IP版本</strong>】进行过滤。<br>   对应Value的可选项如下：<br>   4：Ipv4；<br>   6：Ipv6。</li>
        # <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。</li>
        # <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。</li>
        # @type Filters: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTimingL7SourceData请求参数结构体
      class DescribeTimingL7SourceDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 指标列表，取值有:
        # <li>l7Flow_outFlux_hy: Edgeone请求流量；</li>
        # <li>l7Flow_outBandwidth_hy: Edgeone请求带宽；</li>
        # <li>l7Flow_inFlux_hy: 源站响应流量；</li>
        # <li>l7Flow_inBandwidth_hy: 源站响应带宽；</li>
        # <li>l7Flow_request_hy: 回源请求数；</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min: 1分钟；</li>
        # <li>5min: 5分钟；</li>
        # <li>hour: 1小时；</li>
        # <li>day: 1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param Filters: 过滤条件，详细的过滤条件如下：
        # <li>domain<br>   按照【<strong>回源Host</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # <li>origin<br>   按照【<strong>源站</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # <li>originGroup<br>   按照【<strong>源站组</strong>】进行过滤，源站组形如：origin-xxxxx。<br>   类型：String<br>   必选：否</li>
        # <li>flowType<br>   按照【<strong>源站响应类型</strong>】进行过滤，优先级高于 MetricNames.N 参数。<br>   类型：String<br>   必选：否<br>   可选项：<br>   inFlow：源站响应流量，对应MetricNames中l7Flow_inFlux_hy、l7Flow_inBandwidth_hy、l7Flow_request_hy三个指标；<br>   outFlow：EdgeOne请求流量，对应MetricNames中l7Flow_outFlux_hy、l7Flow_outBandwidth_hy、l7Flow_request_hy三个指标。</li>
        # @type Filters: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
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

      # DescribeTimingL7SourceData返回参数结构体
      class DescribeTimingL7SourceDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param TimingDataRecords: 时序流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimingDataRecords: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TimingDataRecords, :RequestId
        
        def initialize(totalcount=nil, timingdatarecords=nil, requestid=nil)
          @TotalCount = totalcount
          @TimingDataRecords = timingdatarecords
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TimingDataRecords'].nil?
            @TimingDataRecords = []
            params['TimingDataRecords'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @TimingDataRecords << timingdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopL7AnalysisData请求参数结构体
      class DescribeTopL7AnalysisDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricName: 查询的指标，取值有：
        # <li> l7Flow_outFlux_country：请求的国家；</li>
        # <li> l7Flow_outFlux_statusCode：请求的状态码；</li>
        # <li> l7Flow_outFlux_domain：请求域名；</li>
        # <li> l7Flow_outFlux_url：请求的URL; </li>
        # <li> l7Flow_outFlux_resourceType：请求的资源类型；</li>
        # <li> l7Flow_outFlux_sip：客户端的源IP；</li>
        # <li> l7Flow_outFlux_referers：refer信息；</li>
        # <li> l7Flow_outFlux_ua_device：设备类型; </li>
        # <li> l7Flow_outFlux_ua_browser：浏览器类型；</li>
        # <li> l7Flow_outFlux_us_os：操作系统类型。</li>
        # @type MetricName: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Limit: 查询前多少个数据，最大值为1000，不填默认默认为: 10， 表示查询前top10的数据。
        # @type Limit: Integer
        # @param Filters: 过滤条件，详细的过滤条件Key值如下：
        # <li>country<br>   按照【<strong>国家/地区</strong>】进行过滤，国家/地区遵循<a href="https://zh.wikipedia.org/wiki/ISO_3166-1">ISO 3166</a>规范。</li>
        # <li>province<br>   按照【<strong>省份</strong>】进行过滤，此参数只支持服务区域为中国大陆。</li>
        # <li>isp<br>   按照【<strong>运营商</strong>】进行过滤，此参数只支持服务区域为中国大陆。<br>   对应的Value可选项如下：<br>   2：中国电信；<br>   26：中国联通；<br>   1046：中国移动；<br>   3947：中国铁通；<br>   38：教育网；<br>   43：长城宽带；<br>   0：其他运营商。</li>
        # <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。</li>
        # <li>url<br>   按照【<strong>URL Path</strong>】进行过滤，URL Path形如：/content或/content/test.jpg。<br>   若只填写url参数，则最多可查询近30天的数据；<br>   若同时填写url+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        # <li>referer<br>   按照【<strong>Referer头信息</strong>】进行过滤, Referer形如：example.com。<br>   若只填写referer参数，则最多可查询近30天的数据；<br>   若同时填写referer+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        # <li>resourceType<br>   按照【<strong>资源类型</strong>】进行过滤，资源类型一般是文件后缀，形如: .jpg, .css。<br>   若只填写resourceType参数，则最多可查询近30天的数据；<br>   若同时填写resourceType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。</li>
        # <li>protocol<br>   按照【<strong>HTTP协议版本</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP/1.0：HTTP 1.0；<br>   HTTP/1.1：HTTP 1.1；<br>   HTTP/2.0：HTTP 2.0；<br>   HTTP/3.0：HTTP 3.0；<br>   WebSocket：WebSocket。</li>
        # <li>socket<br>   按照【<strong>HTTP协议类型</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP：HTTP 协议；<br>   HTTPS：HTTPS协议；<br>   QUIC：QUIC协议。</li>
        # <li>statusCode<br>   按照【<strong>状态码</strong>】进行过滤。<br>   若只填写statusCode参数，则最多可查询近30天的数据；<br>   若同时填写statusCode+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应的Value可选项如下：<br>   1XX：1xx类型的状态码；<br>   100：100状态码；<br>   101：101状态码；<br>   102：102状态码；<br>   2XX：2xx类型的状态码；<br>   200：200状态码；<br>   201：201状态码；<br>   202：202状态码；<br>   203：203状态码；<br>   204：204状态码；<br>   205：205状态码；<br>   206：206状态码；<br>   207：207状态码；<br>   3XX：3xx类型的状态码；<br>   300：300状态码；<br>   301：301状态码；<br>   302：302状态码；<br>   303：303状态码；<br>   304：304状态码；<br>   305：305状态码；<br>   307：307状态码；<br>   4XX：4xx类型的状态码；<br>   400：400状态码；<br>   401：401状态码；<br>   402：402状态码；<br>   403：403状态码；<br>   404：404状态码；<br>   405：405状态码；<br>   406：406状态码；<br>   407：407状态码；<br>   408：408状态码；<br>   409：409状态码；<br>   410：410状态码；<br>   411：411状态码；<br>   412：412状态码；<br>   412：413状态码；<br>   414：414状态码；<br>   415：415状态码；<br>   416：416状态码；<br>   417：417状态码；<br>   422：422状态码；<br>   423：423状态码；<br>   424：424状态码；<br>   426：426状态码；<br>   451：451状态码；<br>   5XX：5xx类型的状态码；<br>   500：500状态码；<br>   501：501状态码；<br>   502：502状态码；<br>   503：503状态码；<br>   504：504状态码；<br>   505：505状态码；<br>   506：506状态码；<br>   507：507状态码；<br>   510：510状态码；<br>   514：514状态码；<br>   544：544状态码。</li>
        # <li>browserType<br>   按照【<strong>浏览器类型</strong>】进行过滤。<br>   若只填写browserType参数，则最多可查询近30天的数据；<br>   若同时填写browserType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   Firefox：Firefox浏览器；<br>   Chrome：Chrome浏览器；<br>   Safari：Safari浏览器；<br>   Other：其他浏览器类型；<br>   Empty：浏览器类型为空；<br>   Bot：搜索引擎爬虫；<br>   MicrosoftEdge：MicrosoftEdge浏览器；<br>   IE：IE浏览器；<br>   Opera：Opera浏览器；<br>   QQBrowser：QQ浏览器；<br>   LBBrowser：LB浏览器；<br>   MaxthonBrowser：Maxthon浏览器；<br>   SouGouBrowser：搜狗浏览器；<br>   BIDUBrowser：百度浏览器；<br>   TaoBrowser：淘浏览器；<br>   UBrowser：UC浏览器。</li>
        # <li>deviceType<br>   按照【<strong>设备类型</strong>】进行过滤。<br>   若只填写deviceType参数，则最多可查询近30天的数据；<br>   若同时填写deviceType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   TV：TV设备；<br>   Tablet：Tablet设备；<br>   Mobile：Mobile设备；<br>   Desktop：Desktop设备；<br>   Other：其他设备类型；<br>   Empty：设备类型为空。</li>
        # <li>operatingSystemType<br>   按照【<strong>操作系统类型</strong>】进行过滤。<br>   若只填写operatingSystemType参数，则最多可查询近30天的数据；<br>   若同时填写operatingSystemType+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   Linux：Linux操作系统；<br>   MacOS：MacOs操作系统；<br>   Android：Android操作系统；<br>   IOS：IOS操作系统；<br>   Windows：Windows操作系统；<br>   NetBSD：NetBSD；<br>   ChromiumOS：ChromiumOS；<br>   Bot：搜索引擎爬虫；<br>   Other：其他类型的操作系统；<br>   Empty：操作系统为空。</li>
        # <li>tlsVersion<br>   按照【<strong>TLS版本</strong>】进行过滤。<br>   若只填写tlsVersion参数，则最多可查询近30天的数据；<br>   若同时填写tlsVersion+Zonelds参数，则支持的查询数据范围为套餐支持的<a href="https://cloud.tencent.com/document/product/1552/77380#edgeone-.E5.A5.97.E9.A4.90">数据分析最大查询范围</a>与30天两者中的较小值。<br>   对应Value的可选项如下：<br>   TLS1.0：TLS 1.0；<br>   TLS1.1：TLS 1.1；<br>   TLS1.2：TLS 1.2；<br>   TLS1.3：TLS 1.3。</li>
        # <li>ipVersion<br>   按照【<strong>IP版本</strong>】进行过滤。<br>   对应Value的可选项如下：<br>   4：Ipv4；<br>   6：Ipv6。</li>
        # <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。</li>
        # <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。</li>
        # @type Filters: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
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

      # DescribeTopL7AnalysisData返回参数结构体
      class DescribeTopL7AnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 七层流量前topN数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneIds: 站点id集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Limit: 查询前多少个数据，不填默认默认为10， 表示查询前top 10的数据。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeWebManagedRulesData请求参数结构体
      class DescribeWebManagedRulesDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 统计指标列表，取值有：
        # <li>waf_interceptNum：waf拦截次数。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 子域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>action：执行动作。</li>
        # @type QueryCondition: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :QueryCondition, :Interval, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, querycondition=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeWebManagedRulesData返回参数结构体
      class DescribeWebManagedRulesDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: WAF攻击的时序数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              secentry_tmp = SecEntry.new
              secentry_tmp.deserialize(i)
              @Data << secentry_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebManagedRulesHitRuleDetail请求参数结构体
      class DescribeWebManagedRulesHitRuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 子域名列表，不填默认选择全部全部子域名。
        # @type Domains: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天 。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>action ：执行动作 。</li>
        # @type QueryCondition: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :ZoneIds, :Domains, :Interval, :QueryCondition, :Limit, :Offset, :Area
        
        def initialize(starttime=nil, endtime=nil, zoneids=nil, domains=nil, interval=nil, querycondition=nil, limit=nil, offset=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ZoneIds = zoneids
          @Domains = domains
          @Interval = interval
          @QueryCondition = querycondition
          @Limit = limit
          @Offset = offset
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Interval = params['Interval']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Area = params['Area']
        end
      end

      # DescribeWebManagedRulesHitRuleDetail返回参数结构体
      class DescribeWebManagedRulesHitRuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 命中规则的详细列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              sechitruleinfo_tmp = SecHitRuleInfo.new
              sechitruleinfo_tmp.deserialize(i)
              @Data << sechitruleinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebManagedRulesLog请求参数结构体
      class DescribeWebManagedRulesLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>attackType：攻击类型；</li>
        # <li>riskLevel：风险等级；</li>
        # <li>action：执行动作（处置方式）；</li>
        # <li>ruleId：规则id；</li>
        # <li>sipCountryCode：ip所在国家；</li>
        # <li>attackIp：攻击ip；</li>
        # <li>realClientIp：真实客户端ip；</li>
        # <li>oriDomain：被攻击的子域名；</li>
        # <li>eventId：事件id；</li>
        # <li>ua：用户代理；</li>
        # <li>requestMethod：请求方法；</li>
        # <li>uri：统一资源标识符。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :ZoneIds, :Domains, :Limit, :Offset, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, zoneids=nil, domains=nil, limit=nil, offset=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ZoneIds = zoneids
          @Domains = domains
          @Limit = limit
          @Offset = offset
          @QueryCondition = querycondition
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeWebManagedRulesLog返回参数结构体
      class DescribeWebManagedRulesLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: Web攻击日志数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              weblogs_tmp = WebLogs.new
              weblogs_tmp.deserialize(i)
              @Data << weblogs_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionClientIpList请求参数结构体
      class DescribeWebProtectionClientIpListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Interval: 查询的时间粒度，支持的粒度有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>action：执行动作。</li>
        # @type QueryCondition: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :ZoneIds, :Domains, :Interval, :QueryCondition, :Limit, :Offset, :Area
        
        def initialize(starttime=nil, endtime=nil, zoneids=nil, domains=nil, interval=nil, querycondition=nil, limit=nil, offset=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ZoneIds = zoneids
          @Domains = domains
          @Interval = interval
          @QueryCondition = querycondition
          @Limit = limit
          @Offset = offset
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Interval = params['Interval']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Area = params['Area']
        end
      end

      # DescribeWebProtectionClientIpList返回参数结构体
      class DescribeWebProtectionClientIpListResponse < TencentCloud::Common::AbstractModel
        # @param Data: CC防护客户端（攻击源）ip信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              secclientip_tmp = SecClientIp.new
              secclientip_tmp.deserialize(i)
              @Data << secclientip_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionData请求参数结构体
      class DescribeWebProtectionDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 统计指标，取值有：
        # <li>ccRate_interceptNum：速率限制规则限制次数；</li>
        # <li>ccAcl_interceptNum：自定义规则拦截次数。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Interval: 查询时间粒度，支持的时间粒度有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>action：执行动作。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :Interval, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, interval=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @Interval = interval
          @QueryCondition = querycondition
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Interval = params['Interval']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeWebProtectionData返回参数结构体
      class DescribeWebProtectionDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: CC防护时序数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              secentry_tmp = SecEntry.new
              secentry_tmp.deserialize(i)
              @Data << secentry_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionHitRuleDetail请求参数结构体
      class DescribeWebProtectionHitRuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param EntityType: 所属规则数据类型，支持的规则有：
        # <li>rate：限速规则；</li>
        # <li>acl：自定义规则。</li>
        # @type EntityType: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 域名列表，不填默认选择全部子域名。
        # @type Domains: Array
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>action：执行动作。</li>
        # @type QueryCondition: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Interval: 查询时间粒度，支持的时间粒度有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :EntityType, :ZoneIds, :Domains, :QueryCondition, :Limit, :Offset, :Interval, :Area
        
        def initialize(starttime=nil, endtime=nil, entitytype=nil, zoneids=nil, domains=nil, querycondition=nil, limit=nil, offset=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @EntityType = entitytype
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
          @Limit = limit
          @Offset = offset
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EntityType = params['EntityType']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeWebProtectionHitRuleDetail返回参数结构体
      class DescribeWebProtectionHitRuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: cc防护命中规则列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              sechitruleinfo_tmp = SecHitRuleInfo.new
              sechitruleinfo_tmp.deserialize(i)
              @Data << sechitruleinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionTopData请求参数结构体
      class DescribeWebProtectionTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricName: 统计指标列表，取值有：
        # <li>ccRate_requestNum_url：速率限制规则请求次数url分布排行；</li>
        # <li>ccRate_cipRequestNum_region：速率限制规则请求次数区域客户端ip分布排行；</li>
        # <li>ccAcl_requestNum_url：自定义规则请求次数url分布排行；</li>
        # <li>ccAcl_requestNum_cip：自定义规则请求次数客户端ip分布排行；</li>
        # <li>ccAcl_cipRequestNum_region：自定义规则请求次数客户端区域分布排行。</li>
        # @type MetricName: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Limit: 查询前多少个数据，不填默认默认为10， 表示查询前top 10的数据。
        # @type Limit: Integer
        # @param QueryCondition: 筛选条件，key可选的值有：
        # <li>action：执行动作 。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Interval, :ZoneIds, :Domains, :Limit, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, interval=nil, zoneids=nil, domains=nil, limit=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Interval = interval
          @ZoneIds = zoneids
          @Domains = domains
          @Limit = limit
          @QueryCondition = querycondition
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Limit = params['Limit']
          unless params['QueryCondition'].nil?
            @QueryCondition = []
            params['QueryCondition'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @QueryCondition << querycondition_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeWebProtectionTopData返回参数结构体
      class DescribeWebProtectionTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: CC防护的TopN数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>zone-name<br>   按照【<strong>站点名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-xxx。<br>   类型：String<br>   必选：否</li><li>status<br>   按照【<strong>站点状态</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>tag-key<br>   按照【<strong>标签键</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>tag-value<br>   按照【<strong>标签值</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>模糊查询时仅支持过滤字段名为zone-name。
        # @type Filters: Array
        # @param Order: 排序字段，取值有：
        # <li> type：接入类型；</li>
        # <li> area：加速区域；</li>
        # <li> create-time：创建时间；</li>
        # <li> zone-name：站点名称；</li>
        # <li> use-time：最近使用时间；</li>
        # <li> active-status：生效状态。</li>不填写使用默认值create-time。
        # @type Order: String
        # @param Direction: 排序方向，取值有：
        # <li> asc：从小到大排序；</li>
        # <li> desc：从大到小排序。</li>不填写使用默认值desc。
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
        # @param Zones: 站点详细信息列表。
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 拨测分地域统计数据
      class DistrictStatistics < TencentCloud::Common::AbstractModel
        # @param Alpha2: ISO 3166-2 国家/地区简写，详情请参考[ISO 3166-2](https://zh.m.wikipedia.org/zh-hans/ISO_3166-2)。
        # @type Alpha2: String
        # @param LoadTime: 整体拨测用时，单位ms。
        # @type LoadTime: Integer

        attr_accessor :Alpha2, :LoadTime
        
        def initialize(alpha2=nil, loadtime=nil)
          @Alpha2 = alpha2
          @LoadTime = loadtime
        end

        def deserialize(params)
          @Alpha2 = params['Alpha2']
          @LoadTime = params['LoadTime']
        end
      end

      # Dns统计曲线数据项
      class DnsData < TencentCloud::Common::AbstractModel
        # @param Time: 时间。
        # @type Time: String
        # @param Value: 数值。
        # @type Value: Integer

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # DownloadL4Logs请求参数结构体
      class DownloadL4LogsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param ProxyIds: 四层实例ID集合。
        # @type ProxyIds: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
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
        # @param Data: 四层离线日志数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              l4offlinelog_tmp = L4OfflineLog.new
              l4offlinelog_tmp.deserialize(i)
              @Data << l4offlinelog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DownloadL7Logs请求参数结构体
      class DownloadL7LogsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 子域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
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
        # @param Data: 七层离线日志数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              l7offlinelog_tmp = L7OfflineLog.new
              l7offlinelog_tmp.deserialize(i)
              @Data << l7offlinelog_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafDropPageDetail: :class:`Tencentcloud::Teo.v20220901.models.DropPageDetail`
        # @param AclDropPageDetail: 自定义页面的拦截页面配置。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param PageId: 拦截页面的唯一Id。系统默认包含一个自带拦截页面，Id值为0。
        # 该Id可通过创建拦截页面接口进行上传获取。如传入0，代表使用系统默认拦截页面。
        # @type PageId: Integer
        # @param StatusCode: 拦截页面的HTTP状态码。状态码范围是100-600。
        # @type StatusCode: Integer
        # @param Name: 页面文件名或url。
        # @type Name: String
        # @param Type: 页面的类型，取值有：
        # <li> file：页面文件内容；</li>
        # <li> url：上传的url地址。</li>
        # @type Type: String

        attr_accessor :PageId, :StatusCode, :Name, :Type
        
        def initialize(pageid=nil, statuscode=nil, name=nil, type=nil)
          @PageId = pageid
          @StatusCode = statuscode
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @PageId = params['PageId']
          @StatusCode = params['StatusCode']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 例外规则，用于配置需要跳过特定场景的规则
      class ExceptConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param ExceptUserRules: 例外规则详情。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ExceptUserRuleConditions: 匹配条件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptUserRuleConditions: Array
        # @param ExceptUserRuleScope: 规则生效的范围。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # <li>cc：速率限制规则；</li>
        # <li>bot：Bot防护。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Modules: Array
        # @param PartialModules: 跳过部分规则ID的例外规则详情。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartialModules: Array
        # @param SkipConditions: 跳过具体字段不去扫描的例外规则详情。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param StatTime: 首段包的统计时长，单位是秒，即期望首段包的统计时长是多少，默认5秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 缓存遵循源站配置
      class FollowOrigin < TencentCloud::Common::AbstractModel
        # @param Switch: 遵循源站配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param DefaultCacheTime: 源站未返回 Cache-Control 头时, 设置默认的缓存时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCacheTime: Integer
        # @param DefaultCache: 源站未返回 Cache-Control 头时, 设置缓存/不缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCache: String
        # @param DefaultCacheStrategy: 源站未返回 Cache-Control 头时, 使用/不使用默认缓存策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCacheStrategy: String

        attr_accessor :Switch, :DefaultCacheTime, :DefaultCache, :DefaultCacheStrategy
        
        def initialize(switch=nil, defaultcachetime=nil, defaultcache=nil, defaultcachestrategy=nil)
          @Switch = switch
          @DefaultCacheTime = defaultcachetime
          @DefaultCache = defaultcache
          @DefaultCacheStrategy = defaultcachestrategy
        end

        def deserialize(params)
          @Switch = params['Switch']
          @DefaultCacheTime = params['DefaultCacheTime']
          @DefaultCache = params['DefaultCache']
          @DefaultCacheStrategy = params['DefaultCacheStrategy']
        end
      end

      # 访问协议强制https跳转配置
      class ForceRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: 访问强制跳转配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RedirectStatusCode: 重定向状态码，取值有：
        # <li>301：301跳转；</li>
        # <li>302：302跳转。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # Grpc配置项
      class Grpc < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启Grpc配置，取值有：
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

      # Hsts配置
      class Hsts < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param MaxAge: MaxAge数值。单位为秒，最大值为1天。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: Integer
        # @param IncludeSubDomains: 是否包含子域名，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeSubDomains: String
        # @param Preload: 是否开启预加载，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 域名 https 加速配置，默认为关闭状态
      class Https < TencentCloud::Common::AbstractModel
        # @param Http2: http2 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Http2: String
        # @param OcspStapling: OCSP 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcspStapling: String
        # @param TlsVersion: Tls版本设置，取值有：
        # <li>TLSv1：TLSv1版本；</li>
        # <li>TLSV1.1：TLSv1.1版本；</li>
        # <li>TLSV1.2：TLSv1.2版本；</li>
        # <li>TLSv1.3：TLSv1.3版本。</li>修改时必须开启连续的版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyType: String

        attr_accessor :Http2, :OcspStapling, :TlsVersion, :Hsts, :CertInfo, :ApplyType
        
        def initialize(http2=nil, ocspstapling=nil, tlsversion=nil, hsts=nil, certinfo=nil, applytype=nil)
          @Http2 = http2
          @OcspStapling = ocspstapling
          @TlsVersion = tlsversion
          @Hsts = hsts
          @CertInfo = certinfo
          @ApplyType = applytype
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

      # 站点验证信息
      class Identification < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Status: 验证状态，取值有：
        # <li> pending：验证中；</li>
        # <li> finished：验证完成。</li>
        # @type Status: String
        # @param Ascription: 站点归属权校验：Dns校验信息。
        # @type Ascription: :class:`Tencentcloud::Teo.v20220901.models.AscriptionInfo`
        # @param OriginalNameServers: 域名当前的 NS 记录。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalNameServers: Array
        # @param FileAscription: 站点归属权校验：文件校验信息。
        # @type FileAscription: :class:`Tencentcloud::Teo.v20220901.models.FileAscriptionInfo`

        attr_accessor :ZoneName, :Status, :Ascription, :OriginalNameServers, :FileAscription
        
        def initialize(zonename=nil, status=nil, ascription=nil, originalnameservers=nil, fileascription=nil)
          @ZoneName = zonename
          @Status = status
          @Ascription = ascription
          @OriginalNameServers = originalnameservers
          @FileAscription = fileascription
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
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

        attr_accessor :ZoneName
        
        def initialize(zonename=nil)
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
        end
      end

      # IdentifyZone返回参数结构体
      class IdentifyZoneResponse < TencentCloud::Common::AbstractModel
        # @param Ascription: 站点归属校验：Dns校验信息。
        # @type Ascription: :class:`Tencentcloud::Teo.v20220901.models.AscriptionInfo`
        # @param FileAscription: 站点归属权校验：文件校验信息。
        # @type FileAscription: :class:`Tencentcloud::Teo.v20220901.models.FileAscriptionInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 智能分析规则
      class IntelligenceRule < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param IntelligenceRuleItems: 规则详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param IpTableRules: 基础管控规则。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # IP黑白名单详细规则
      class IpTableRule < TencentCloud::Common::AbstractModel
        # @param Action: 动作，取值有：
        # <li> drop：拦截；</li>
        # <li> trans：放行；</li>
        # <li> monitor：观察。</li>
        # @type Action: String
        # @param MatchFrom: 根据类型匹配，取值有：
        # <li>ip：对ip进行匹配；</li>
        # <li>area：对ip所属地区匹配。</li>
        # @type MatchFrom: String
        # @param Operator: 规则的匹配方式，默认为空代表等于。
        # 取值有：
        # <li> is_emty：配置为空；</li>
        # <li> not_exists：配置为不存在；</li>
        # <li> include：包含；</li>
        # <li> not_include：不包含；</li>
        # <li> equal：等于；</li>
        # <li> not_equal：不等于。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param RuleID: 规则id。仅出参使用。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间。仅出参使用。
        # @type UpdateTime: String
        # @param Status: 规则启用状态，当返回为null时，为启用。取值有：
        # <li> on：启用；</li>
        # <li> off：未启用。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RuleName: 规则名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param MatchContent: 匹配内容。当 Operator为is_emty 或not_exists时，此值允许为空。
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
        # @param Switch: Ipv6访问功能配置，取值有：
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

      # 离线日志详细信息
      class L4OfflineLog < TencentCloud::Common::AbstractModel
        # @param LogTime: 日志打包开始时间。
        # @type LogTime: Integer
        # @param ProxyId: 四层实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyId: String
        # @param Size: 原始大小 单位byte。
        # @type Size: Integer
        # @param Url: 下载地址。
        # @type Url: String
        # @param LogPacketName: 日志数据包名。
        # @type LogPacketName: String
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :LogTime, :ProxyId, :Size, :Url, :LogPacketName, :Area
        
        def initialize(logtime=nil, proxyid=nil, size=nil, url=nil, logpacketname=nil, area=nil)
          @LogTime = logtime
          @ProxyId = proxyid
          @Size = size
          @Url = url
          @LogPacketName = logpacketname
          @Area = area
        end

        def deserialize(params)
          @LogTime = params['LogTime']
          @ProxyId = params['ProxyId']
          @Size = params['Size']
          @Url = params['Url']
          @LogPacketName = params['LogPacketName']
          @Area = params['Area']
        end
      end

      # 离线日志详细信息
      class L7OfflineLog < TencentCloud::Common::AbstractModel
        # @param LogTime: 日志打包开始时间。
        # @type LogTime: Integer
        # @param Domain: 子域名。
        # @type Domain: String
        # @param Size: 原始大小，单位byte。
        # @type Size: Integer
        # @param Url: 下载地址。
        # @type Url: String
        # @param LogPacketName: 日志数据包名。
        # @type LogPacketName: String
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内; </li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :LogTime, :Domain, :Size, :Url, :LogPacketName, :Area
        
        def initialize(logtime=nil, domain=nil, size=nil, url=nil, logpacketname=nil, area=nil)
          @LogTime = logtime
          @Domain = domain
          @Size = size
          @Url = url
          @LogPacketName = logpacketname
          @Area = area
        end

        def deserialize(params)
          @LogTime = params['LogTime']
          @Domain = params['Domain']
          @Size = params['Size']
          @Url = params['Url']
          @LogPacketName = params['LogPacketName']
          @Area = params['Area']
        end
      end

      # 日志集基本信息
      class LogSetInfo < TencentCloud::Common::AbstractModel
        # @param LogSetRegion: 日志集所属地区。
        # @type LogSetRegion: String
        # @param LogSetName: 日志集名
        # @type LogSetName: String
        # @param LogSetId: 日志集Id
        # @type LogSetId: String
        # @param Deleted: 该日志集是否已被删除, 可选的值有：
        # <li>no: 日志集没有被删除；</li>
        # <li>yes: 日志集已经被删除；</li>
        # @type Deleted: String

        attr_accessor :LogSetRegion, :LogSetName, :LogSetId, :Deleted
        
        def initialize(logsetregion=nil, logsetname=nil, logsetid=nil, deleted=nil)
          @LogSetRegion = logsetregion
          @LogSetName = logsetname
          @LogSetId = logsetid
          @Deleted = deleted
        end

        def deserialize(params)
          @LogSetRegion = params['LogSetRegion']
          @LogSetName = params['LogSetName']
          @LogSetId = params['LogSetId']
          @Deleted = params['Deleted']
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

      # ModifyAccelerationDomain请求参数结构体
      class ModifyAccelerationDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点ID。
        # @type ZoneId: String
        # @param DomainName: 加速域名名称。
        # @type DomainName: String
        # @param OriginInfo: 源站信息。
        # @type OriginInfo: :class:`Tencentcloud::Teo.v20220901.models.OriginInfo`

        attr_accessor :ZoneId, :DomainName, :OriginInfo
        
        def initialize(zoneid=nil, domainname=nil, origininfo=nil)
          @ZoneId = zoneid
          @DomainName = domainname
          @OriginInfo = origininfo
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainName = params['DomainName']
          unless params['OriginInfo'].nil?
            @OriginInfo = OriginInfo.new
            @OriginInfo.deserialize(params['OriginInfo'])
          end
        end
      end

      # ModifyAccelerationDomain返回参数结构体
      class ModifyAccelerationDomainResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationProxy请求参数结构体
      class ModifyApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param ProxyName: 当ProxyType=hostname时，表示域名或子域名；
        # 当ProxyType=instance时，表示代理名称。
        # @type ProxyName: String
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒。
        # 不填写保持原有配置。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>不填写保持原有配置。
        # @type ProxyType: String
        # @param Ipv6: Ipv6访问配置，不填写保持原有配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`

        attr_accessor :ZoneId, :ProxyId, :ProxyName, :SessionPersistTime, :ProxyType, :Ipv6
        
        def initialize(zoneid=nil, proxyid=nil, proxyname=nil, sessionpersisttime=nil, proxytype=nil, ipv6=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @ProxyName = proxyname
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @Ipv6 = ipv6
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
        end
      end

      # ModifyApplicationProxy返回参数结构体
      class ModifyApplicationProxyResponse < TencentCloud::Common::AbstractModel
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
        # <li>origins：源站组。</li>不填保持原有值。
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
        # @param OriginPort: 源站端口，支持格式：
        # <li>单端口：80；</li>
        # <li>端口段：81-90，81至90端口。</li>
        # @type OriginPort: String

        attr_accessor :ZoneId, :ProxyId, :RuleId, :OriginType, :Port, :Proto, :OriginValue, :ForwardClientIp, :SessionPersist, :OriginPort
        
        def initialize(zoneid=nil, proxyid=nil, ruleid=nil, origintype=nil, port=nil, proto=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil, originport=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
          @OriginType = origintype
          @Port = port
          @Proto = proto
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @OriginPort = originport
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
          @OriginPort = params['OriginPort']
        end
      end

      # ModifyApplicationProxyRule返回参数结构体
      class ModifyApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDefaultCertificate请求参数结构体
      class ModifyDefaultCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param CertId: 默认证书ID。
        # @type CertId: String
        # @param Status: 证书状态，取值有：
        # <li>deployed ：部署证书；</li>
        # <li>disabled ：禁用证书。</li>失败状态下重新deployed即可重试。
        # @type Status: String

        attr_accessor :ZoneId, :CertId, :Status
        
        def initialize(zoneid=nil, certid=nil, status=nil)
          @ZoneId = zoneid
          @CertId = certid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CertId = params['CertId']
          @Status = params['Status']
        end
      end

      # ModifyDefaultCertificate返回参数结构体
      class ModifyDefaultCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHostsCertificate请求参数结构体
      class ModifyHostsCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Hosts: 本次变更的域名列表。
        # @type Hosts: Array
        # @param ServerCertInfo: 证书信息, 只需要传入 CertId 即可, 如果为空, 则使用默认证书。
        # @type ServerCertInfo: Array
        # @param ApplyType: 托管类型，取值有：
        # <li>apply：托管EO；</li>
        # <li>none：不托管EO；</li>不填，默认取值为apply。
        # @type ApplyType: String

        attr_accessor :ZoneId, :Hosts, :ServerCertInfo, :ApplyType
        
        def initialize(zoneid=nil, hosts=nil, servercertinfo=nil, applytype=nil)
          @ZoneId = zoneid
          @Hosts = hosts
          @ServerCertInfo = servercertinfo
          @ApplyType = applytype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Hosts = params['Hosts']
          unless params['ServerCertInfo'].nil?
            @ServerCertInfo = []
            params['ServerCertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @ServerCertInfo << servercertinfo_tmp
            end
          end
          @ApplyType = params['ApplyType']
        end
      end

      # ModifyHostsCertificate返回参数结构体
      class ModifyHostsCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOriginGroup请求参数结构体
      class ModifyOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param OriginGroupId: 源站组ID。
        # @type OriginGroupId: String
        # @param OriginType: 源站类型，取值有：
        # <li>self：自有源站；</li>
        # <li>third_party：第三方源站；</li>
        # <li>cos：腾讯云COS源站。</li>
        # @type OriginType: String
        # @param OriginGroupName: 源站组名称。
        # @type OriginGroupName: String
        # @param ConfigurationType: 源站配置类型，当OriginType=self时，取值有：
        # <li>area：按区域配置；</li>
        # <li>weight： 按权重配置；</li>
        # <li>proto： 按HTTP协议配置。</li>当OriginType=third_party/cos时放空。
        # @type ConfigurationType: String
        # @param OriginRecords: 源站记录信息。
        # @type OriginRecords: Array
        # @param HostHeader: 回源Host，仅当OriginType=self时可以设置。
        # 不填写，表示使用已有配置。
        # @type HostHeader: String

        attr_accessor :ZoneId, :OriginGroupId, :OriginType, :OriginGroupName, :ConfigurationType, :OriginRecords, :HostHeader
        
        def initialize(zoneid=nil, origingroupid=nil, origintype=nil, origingroupname=nil, configurationtype=nil, originrecords=nil, hostheader=nil)
          @ZoneId = zoneid
          @OriginGroupId = origingroupid
          @OriginType = origintype
          @OriginGroupName = origingroupname
          @ConfigurationType = configurationtype
          @OriginRecords = originrecords
          @HostHeader = hostheader
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @OriginGroupId = params['OriginGroupId']
          @OriginType = params['OriginType']
          @OriginGroupName = params['OriginGroupName']
          @ConfigurationType = params['ConfigurationType']
          unless params['OriginRecords'].nil?
            @OriginRecords = []
            params['OriginRecords'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @OriginRecords << originrecord_tmp
            end
          end
          @HostHeader = params['HostHeader']
        end
      end

      # ModifyOriginGroup返回参数结构体
      class ModifyOriginGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRulePriority请求参数结构体
      class ModifyRulePriorityRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleIds: 规则 ID 的顺序，多条规则执行顺序依次往下。
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

      # ModifyRulePriority返回参数结构体
      class ModifyRulePriorityResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifySecurityPolicy请求参数结构体
      class ModifySecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点Id。
        # @type ZoneId: String
        # @param SecurityConfig: 安全配置。
        # @type SecurityConfig: :class:`Tencentcloud::Teo.v20220901.models.SecurityConfig`
        # @param Entity: 子域名/应用名。当使用Entity时可不填写TemplateId，否则必须填写TemplateId。
        # @type Entity: String
        # @param TemplateId: 模板策略id。当使用模板Id时可不填Entity，否则必须填写Entity。
        # @type TemplateId: String

        attr_accessor :ZoneId, :SecurityConfig, :Entity, :TemplateId
        
        def initialize(zoneid=nil, securityconfig=nil, entity=nil, templateid=nil)
          @ZoneId = zoneid
          @SecurityConfig = securityconfig
          @Entity = entity
          @TemplateId = templateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['SecurityConfig'].nil?
            @SecurityConfig = SecurityConfig.new
            @SecurityConfig.deserialize(params['SecurityConfig'])
          end
          @Entity = params['Entity']
          @TemplateId = params['TemplateId']
        end
      end

      # ModifySecurityPolicy返回参数结构体
      class ModifySecurityPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityWafGroupPolicy请求参数结构体
      class ModifySecurityWafGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点Id。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        # @type ZoneId: String
        # @param Entity: 子域名。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        # @type Entity: String
        # @param Switch: 总开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>不填默认为上次的配置。
        # @type Switch: String
        # @param Level: 规则等级，取值有：
        # <li> loose：宽松；</li>
        # <li> normal：正常；</li>
        # <li> strict：严格；</li>
        # <li> stricter：超严格；</li>
        # <li> custom：自定义。</li>不填默认为上次的配置。
        # @type Level: String
        # @param Mode: 处置方式，取值有：
        # <li> block：阻断；</li>
        # <li> observe：观察。</li>不填默认为上次的配置。
        # @type Mode: String
        # @param WafRules: 托管规则。不填默认为上次的配置。
        # @type WafRules: :class:`Tencentcloud::Teo.v20220901.models.WafRule`
        # @param AiRule: AI引擎模式。不填默认为上次的配置。
        # @type AiRule: :class:`Tencentcloud::Teo.v20220901.models.AiRule`
        # @param WafGroups: 托管规则等级组。不填默认为上次的配置。
        # @type WafGroups: Array
        # @param TemplateId: 模板Id。当使用模板Id时可不填ZoneId和Entity，否则必须填写ZoneId和Entity。
        # @type TemplateId: String

        attr_accessor :ZoneId, :Entity, :Switch, :Level, :Mode, :WafRules, :AiRule, :WafGroups, :TemplateId
        
        def initialize(zoneid=nil, entity=nil, switch=nil, level=nil, mode=nil, wafrules=nil, airule=nil, wafgroups=nil, templateid=nil)
          @ZoneId = zoneid
          @Entity = entity
          @Switch = switch
          @Level = level
          @Mode = mode
          @WafRules = wafrules
          @AiRule = airule
          @WafGroups = wafgroups
          @TemplateId = templateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          @Switch = params['Switch']
          @Level = params['Level']
          @Mode = params['Mode']
          unless params['WafRules'].nil?
            @WafRules = WafRule.new
            @WafRules.deserialize(params['WafRules'])
          end
          unless params['AiRule'].nil?
            @AiRule = AiRule.new
            @AiRule.deserialize(params['AiRule'])
          end
          unless params['WafGroups'].nil?
            @WafGroups = []
            params['WafGroups'].each do |i|
              wafgroup_tmp = WafGroup.new
              wafgroup_tmp.deserialize(i)
              @WafGroups << wafgroup_tmp
            end
          end
          @TemplateId = params['TemplateId']
        end
      end

      # ModifySecurityWafGroupPolicy返回参数结构体
      class ModifySecurityWafGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZone请求参数结构体
      class ModifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Type: 站点接入方式，取值有：
        # <li> full：NS 接入；</li>
        # <li> partial：CNAME 接入。</li>不填写保持原有配置。
        # @type Type: String
        # @param VanityNameServers: 自定义站点信息，以替代系统默认分配的名称服务器。不填写保持原有配置。
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220901.models.VanityNameServers`
        # @param AliasZoneName: 站点别名。数字、英文、-和_组合，限制20个字符。
        # @type AliasZoneName: String

        attr_accessor :ZoneId, :Type, :VanityNameServers, :AliasZoneName
        
        def initialize(zoneid=nil, type=nil, vanitynameservers=nil, aliaszonename=nil)
          @ZoneId = zoneid
          @Type = type
          @VanityNameServers = vanitynameservers
          @AliasZoneName = aliaszonename
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          unless params['VanityNameServers'].nil?
            @VanityNameServers = VanityNameServers.new
            @VanityNameServers.deserialize(params['VanityNameServers'])
          end
          @AliasZoneName = params['AliasZoneName']
        end
      end

      # ModifyZone返回参数结构体
      class ModifyZoneResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZoneSetting请求参数结构体
      class ModifyZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 待变更的站点ID。
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
        # @param Quic: Quic访问配置。
        # 不填写表示保持原有配置。
        # @type Quic: :class:`Tencentcloud::Teo.v20220901.models.Quic`
        # @param PostMaxSize: Post请求传输配置。
        # 不填写表示保持原有配置。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220901.models.PostMaxSize`
        # @param Compression: 智能压缩配置。
        # 不填写表示保持原有配置。
        # @type Compression: :class:`Tencentcloud::Teo.v20220901.models.Compression`
        # @param UpstreamHttp2: Http2回源配置。
        # 不填写表示保持原有配置。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220901.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制Https跳转配置。
        # 不填写表示保持原有配置。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220901.models.ForceRedirect`
        # @param Https: Https加速配置。
        # 不填写表示保持原有配置。
        # @type Https: :class:`Tencentcloud::Teo.v20220901.models.Https`
        # @param Origin: 源站配置。
        # 不填写表示保持原有配置。
        # @type Origin: :class:`Tencentcloud::Teo.v20220901.models.Origin`
        # @param SmartRouting: 智能加速配置。
        # 不填写表示保持原有配置。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220901.models.SmartRouting`
        # @param WebSocket: WebSocket配置。
        # 不填写表示保持原有配置。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220901.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置。
        # 不填写表示保持原有配置。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220901.models.ClientIpHeader`
        # @param CachePrefresh: 缓存预刷新配置。
        # 不填写表示保持原有配置。
        # @type CachePrefresh: :class:`Tencentcloud::Teo.v20220901.models.CachePrefresh`
        # @param Ipv6: Ipv6访问配置。
        # 不填写表示保持原有配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param ClientIpCountry: 回源时是否携带客户端IP所属地域信息的配置。
        # 不填写表示保持原有配置。
        # @type ClientIpCountry: :class:`Tencentcloud::Teo.v20220901.models.ClientIpCountry`
        # @param Grpc: Grpc协议支持配置。
        # 不填写表示保持原有配置。
        # @type Grpc: :class:`Tencentcloud::Teo.v20220901.models.Grpc`

        attr_accessor :ZoneId, :CacheConfig, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :WebSocket, :ClientIpHeader, :CachePrefresh, :Ipv6, :ClientIpCountry, :Grpc
        
        def initialize(zoneid=nil, cacheconfig=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, websocket=nil, clientipheader=nil, cacheprefresh=nil, ipv6=nil, clientipcountry=nil, grpc=nil)
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
        end
      end

      # ModifyZoneSetting返回参数结构体
      class ModifyZoneSettingResponse < TencentCloud::Common::AbstractModel
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
        # @param Action: 功能名称，功能名称填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
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

      # 站点拨测优化建议
      class OptimizeAction < TencentCloud::Common::AbstractModel
        # @param Name: 站点性能优化配置项，取值有：
        # <li>Http2；</li>
        # <li>Http3；</li>
        # <li>Brotli。</li>
        # @type Name: String
        # @param Connectivity: 网络环境。
        # @type Connectivity: String
        # @param Value: 开启配置项后，预估性能优化效果，单位ms。
        # @type Value: Integer
        # @param Ratio: 开启配置项后，预估性能提升比例，单位%。
        # @type Ratio: Integer

        attr_accessor :Name, :Connectivity, :Value, :Ratio
        
        def initialize(name=nil, connectivity=nil, value=nil, ratio=nil)
          @Name = name
          @Connectivity = connectivity
          @Value = value
          @Ratio = ratio
        end

        def deserialize(params)
          @Name = params['Name']
          @Connectivity = params['Connectivity']
          @Value = params['Value']
          @Ratio = params['Ratio']
        end
      end

      # 源站配置。
      class Origin < TencentCloud::Common::AbstractModel
        # @param Origins: 主源站列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origins: Array
        # @param BackupOrigins: 备源站列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOrigins: Array
        # @param OriginPullProtocol: 回源协议配置，取值有：
        # <li>http：强制 http 回源；</li>
        # <li>follow：协议跟随回源；</li>
        # <li>https：强制 https 回源。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullProtocol: String
        # @param CosPrivateAccess: 源站为腾讯云COS时，是否为私有访问bucket，取值有：
        # <li>on：私有访问；</li>
        # <li>off：公共访问。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 加速域名源站信息。
      class OriginDetail < TencentCloud::Common::AbstractModel
        # @param OriginType: 源站类型，取值有：
        # <li>IP_DOMAIN：IPV4、IPV6或域名类型源站；</li>
        # <li>COS：COS源。</li>
        # <li>ORIGIN_GROUP：源站组类型源站。</li>
        # <li>AWS_S3：AWS S3对象存储源站。</li>
        # @type OriginType: String
        # @param Origin: 源站地址，当OriginType参数指定为ORIGIN_GROUP时，该参数填写源站组ID，其他情况下填写源站地址。
        # @type Origin: String
        # @param BackupOrigin: 备用源站组ID，该参数在OriginType参数指定为ORIGIN_GROUP时生效，为空表示不使用备用源站。
        # @type BackupOrigin: String
        # @param OriginGroupName: 主源源站组名称，当OriginType参数指定为ORIGIN_GROUP时该参数生效。
        # @type OriginGroupName: String
        # @param BackOriginGroupName: 备用源站源站组名称，当OriginType参数指定为ORIGIN_GROUP，且用户指定了被用源站时该参数生效。
        # @type BackOriginGroupName: String
        # @param PrivateAccess: 指定是否允许访问私有对象存储源站。当源站类型OriginType=COS或AWS_S3时有效 取值有：
        # <li>on：使用私有鉴权；</li>
        # <li>off：不使用私有鉴权。</li>
        # 不填写，默认值为off。
        # @type PrivateAccess: String
        # @param PrivateParameters: 私有鉴权使用参数，当源站类型PrivateAccess=on时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateParameters: Array

        attr_accessor :OriginType, :Origin, :BackupOrigin, :OriginGroupName, :BackOriginGroupName, :PrivateAccess, :PrivateParameters
        
        def initialize(origintype=nil, origin=nil, backuporigin=nil, origingroupname=nil, backorigingroupname=nil, privateaccess=nil, privateparameters=nil)
          @OriginType = origintype
          @Origin = origin
          @BackupOrigin = backuporigin
          @OriginGroupName = origingroupname
          @BackOriginGroupName = backorigingroupname
          @PrivateAccess = privateaccess
          @PrivateParameters = privateparameters
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
        end
      end

      # 源站组信息
      class OriginGroup < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param OriginGroupId: 源站组ID。
        # @type OriginGroupId: String
        # @param OriginType: 源站类型，取值有：
        # <li>self：自有源站；</li>
        # <li>third_party：第三方源站；</li>
        # <li>cos：腾讯云COS源站。</li>
        # @type OriginType: String
        # @param OriginGroupName: 源站组名称。
        # @type OriginGroupName: String
        # @param ConfigurationType: 源站配置类型，当OriginType=self时，取值有：
        # <li>area：按区域配置；</li>
        # <li>weight： 按权重配置。</li>
        # <li>proto： 按HTTP协议配置。</li>当OriginType=third_party/cos时放空。
        # @type ConfigurationType: String
        # @param OriginRecords: 源站记录信息。
        # @type OriginRecords: Array
        # @param UpdateTime: 源站组更新时间。
        # @type UpdateTime: String
        # @param HostHeader: 当OriginType=self时，表示回源Host。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostHeader: String

        attr_accessor :ZoneId, :ZoneName, :OriginGroupId, :OriginType, :OriginGroupName, :ConfigurationType, :OriginRecords, :UpdateTime, :HostHeader
        
        def initialize(zoneid=nil, zonename=nil, origingroupid=nil, origintype=nil, origingroupname=nil, configurationtype=nil, originrecords=nil, updatetime=nil, hostheader=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @OriginGroupId = origingroupid
          @OriginType = origintype
          @OriginGroupName = origingroupname
          @ConfigurationType = configurationtype
          @OriginRecords = originrecords
          @UpdateTime = updatetime
          @HostHeader = hostheader
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @OriginGroupId = params['OriginGroupId']
          @OriginType = params['OriginType']
          @OriginGroupName = params['OriginGroupName']
          @ConfigurationType = params['ConfigurationType']
          unless params['OriginRecords'].nil?
            @OriginRecords = []
            params['OriginRecords'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @OriginRecords << originrecord_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @HostHeader = params['HostHeader']
        end
      end

      # 加速域名源站信息。
      class OriginInfo < TencentCloud::Common::AbstractModel
        # @param OriginType: 源站类型，取值有：
        # <li>IP_DOMAIN：IPV4、IPV6或域名类型源站；</li>
        # <li>COS：COS源。</li>
        # <li>ORIGIN_GROUP：源站组类型源站。</li>
        # <li>AWS_S3：AWS S3对象存储源站。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginType: String
        # @param Origin: 源站地址，当OriginType参数指定为ORIGIN_GROUP时，该参数填写源站组ID，其他情况下填写源站地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: String
        # @param BackupOrigin: 备用源站组ID，该参数在OriginType参数指定为ORIGIN_GROUP时生效，为空表示不使用备用源站。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOrigin: String
        # @param PrivateAccess: 指定是否允许访问私有对象存储源站，当源站类型OriginType=COS或AWS_S3时有效，取值有：
        # <li>on：使用私有鉴权；</li>
        # <li>off：不使用私有鉴权。</li>不填写，默认值为：off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateAccess: String
        # @param PrivateParameters: 私有鉴权使用参数，当源站类型PrivateAccess=on时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateParameters: Array

        attr_accessor :OriginType, :Origin, :BackupOrigin, :PrivateAccess, :PrivateParameters
        
        def initialize(origintype=nil, origin=nil, backuporigin=nil, privateaccess=nil, privateparameters=nil)
          @OriginType = origintype
          @Origin = origin
          @BackupOrigin = backuporigin
          @PrivateAccess = privateaccess
          @PrivateParameters = privateparameters
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
        # @param RecordId: 源站记录ID。
        # @type RecordId: String
        # @param Port: 源站端口，取值范围：[1-65535]。
        # @type Port: Integer
        # @param Weight: 当源站配置类型ConfigurationType=weight时，表示权重。
        # 不配置权重信息时，所有源站组记录统一填写为0或者不填写，表示多个源站轮询回源。
        # 配置权重信息时，取值为[1-100]，多个源站权重总和应为100，表示多个源站按照权重回源。
        # 当源站配置类型ConfigurationType=proto时，表示权重。
        # 不配置权重信息时，所有源站组记录统一填写为0或者不填写，表示多个源站轮询回源。
        # 配置权重信息时，取值为[1-100]，源站组内Proto相同的多个源站权重总和应为100，表示多个源站按照权重回源。
        # @type Weight: Integer
        # @param Proto: 当源站配置类型ConfigurationType=proto时，表示源站的协议类型，将按照客户端请求协议回到相应的源站，取值有：
        # <li>http：HTTP协议源站；</li>
        # <li>https：HTTPS协议源站。</li>
        # @type Proto: String
        # @param Area: 当源站配置类型ConfigurationType=area时，表示区域，为空表示全部地区。取值为iso-3166中alpha-2编码或者大洲区域代码。大洲区域代码取值为：
        # <li>Asia：亚洲；</li>
        # <li>Europe：欧洲；</li>
        # <li>Africa：非洲；</li>
        # <li>Oceania：大洋洲；</li>
        # <li>Americas：美洲。</li>源站组记录中，至少需要有一项为全部地区。
        # @type Area: Array
        # @param Private: 当源站类型OriginType=third_part时有效
        # 是否私有鉴权，取值有：
        # <li>true：使用私有鉴权；</li>
        # <li>false：不使用私有鉴权。</li>不填写，默认值为：false。
        # @type Private: Boolean
        # @param PrivateParameters: 当源站类型Private=true时有效，表示私有鉴权使用参数。
        # @type PrivateParameters: Array

        attr_accessor :Record, :RecordId, :Port, :Weight, :Proto, :Area, :Private, :PrivateParameters
        
        def initialize(record=nil, recordid=nil, port=nil, weight=nil, proto=nil, area=nil, private=nil, privateparameters=nil)
          @Record = record
          @RecordId = recordid
          @Port = port
          @Weight = weight
          @Proto = proto
          @Area = area
          @Private = private
          @PrivateParameters = privateparameters
        end

        def deserialize(params)
          @Record = params['Record']
          @RecordId = params['RecordId']
          @Port = params['Port']
          @Weight = params['Weight']
          @Proto = params['Proto']
          @Area = params['Area']
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

      # 例外规则的详细模块配置。
      class PartialModule < TencentCloud::Common::AbstractModel
        # @param Module: 模块名称，取值为：
        # <li>waf：托管规则。</li>
        # @type Module: String
        # @param Include: 模块下的需要例外的具体规则ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Switch: 是否开启POST请求上传文件限制，平台默认为限制为32MB，取值有：
        # <li>on：开启限制；</li>
        # <li>off：关闭限制。</li>
        # @type Switch: String
        # @param MaxSize: 最大限制，取值在1MB和500MB之间。单位字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 源站记录私有鉴权参数
      class PrivateParameter < TencentCloud::Common::AbstractModel
        # @param Name: 私有鉴权参数名称，取值有：
        # <li>AccessKeyId：鉴权参数Access Key ID；</li>
        # <li>SecretAccessKey：鉴权参数Secret Access Key。</li>
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Value: 使用/排除的url参数数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Switch: 是否开启Quic配置，取值有：
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

      # 速率限制规则
      class RateLimitConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RateLimitUserRules: 速率限制-用户规则列表。如果为null，默认使用历史配置。
        # @type RateLimitUserRules: Array
        # @param RateLimitTemplate: 速率限制模板功能。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitTemplate: :class:`Tencentcloud::Teo.v20220901.models.RateLimitTemplate`
        # @param RateLimitIntelligence: 智能客户端过滤。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitIntelligence: :class:`Tencentcloud::Teo.v20220901.models.RateLimitIntelligence`
        # @param RateLimitCustomizes: 速率限制-托管定制规则。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param ID: 唯一id。
        # @type ID: Integer
        # @param Action: 模板处置方式，取值有：
        # <li>alg：JavaScript挑战；</li>
        # <li>monitor：观察。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param PunishTime: 惩罚时间，取值范围0-2天，单位秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Action: 处置动作，取值有：
        # <li>monitor：观察；</li>
        # <li>drop：拦截；</li>
        # <li>alg：JavaScript挑战。</li>
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
        # <li>off：不生效。</li>默认on生效。
        # @type RuleStatus: String
        # @param AclConditions: 规则详情。
        # @type AclConditions: Array
        # @param RulePriority: 规则权重，取值范围0-100。
        # @type RulePriority: Integer
        # @param RuleID: 规则id。仅出参使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleID: Integer
        # @param FreqFields: 过滤词，取值有：
        # <li>sip：客户端ip。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreqFields: Array
        # @param UpdateTime: 更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FreqScope: 统计范围，字段为null时，代表source_to_eo。取值有：
        # <li>source_to_eo：（响应）源站到EdgeOne。</li>
        # <li>client_to_eo：（请求）客户端到EdgeOne；</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreqScope: Array

        attr_accessor :Threshold, :Period, :RuleName, :Action, :PunishTime, :PunishTimeUnit, :RuleStatus, :AclConditions, :RulePriority, :RuleID, :FreqFields, :UpdateTime, :FreqScope
        
        def initialize(threshold=nil, period=nil, rulename=nil, action=nil, punishtime=nil, punishtimeunit=nil, rulestatus=nil, aclconditions=nil, rulepriority=nil, ruleid=nil, freqfields=nil, updatetime=nil, freqscope=nil)
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
        end
      end

      # ReclaimAliasDomain请求参数结构体
      class ReclaimAliasDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String

        attr_accessor :ZoneId, :ZoneName
        
        def initialize(zoneid=nil, zonename=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
        end
      end

      # ReclaimAliasDomain返回参数结构体
      class ReclaimAliasDomainResponse < TencentCloud::Common::AbstractModel
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

      # ReclaimZone请求参数结构体
      class ReclaimZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String

        attr_accessor :ZoneName
        
        def initialize(zonename=nil)
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
        end
      end

      # ReclaimZone返回参数结构体
      class ReclaimZoneResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :Id, :PayMode, :CreateTime, :EnableTime, :ExpireTime, :Status, :Sv, :AutoRenewFlag, :PlanId, :Area
        
        def initialize(id=nil, paymode=nil, createtime=nil, enabletime=nil, expiretime=nil, status=nil, sv=nil, autorenewflag=nil, planid=nil, area=nil)
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
        end
      end

      # 规则引擎HTTP请求头/响应头类型的动作
      class RewriteAction < TencentCloud::Common::AbstractModel
        # @param Action: 功能名称，功能名称填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
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
        # @param Actions: 执行的功能。
        # @type Actions: Array
        # @param Conditions: 执行功能判断条件。
        # 注意：满足该数组内任意一项条件，功能即可执行。
        # @type Conditions: Array
        # @param SubRules: 嵌套规则。
        # @type SubRules: Array

        attr_accessor :Actions, :Conditions, :SubRules
        
        def initialize(actions=nil, conditions=nil, subrules=nil)
          @Actions = actions
          @Conditions = conditions
          @SubRules = subrules
        end

        def deserialize(params)
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @Actions << action_tmp
            end
          end
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              ruleandconditions_tmp = RuleAndConditions.new
              ruleandconditions_tmp.deserialize(i)
              @Conditions << ruleandconditions_tmp
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
        # @param Name: 参数名称，参数填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
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
        # @param Target: 匹配类型，取值有：
        # <li> filename：文件名； </li>
        # <li> extension：文件后缀； </li>
        # <li> host：HOST； </li>
        # <li> full_url：URL Full，当前站点下完整 URL 路径，必须包含 HTTP 协议，Host 和 路径； </li>
        # <li> url：URL Path，当前站点下 URL 路径的请求； </li><li>client_country：客户端国家/地区；</li>
        # <li> query_string：查询字符串，当前站点下请求URL的查询字符串； </li>
        # <li> request_header：HTTP请求头部。 </li>
        # @type Target: String
        # @param Values: 对应匹配类型的参数值，仅在匹配类型为查询字符串或HTTP请求头并且运算符取值为存在或不存在时允许传空数组，对应匹配类型有：
        # <li> 文件后缀：jpg、txt等文件后缀；</li>
        # <li> 文件名称：例如 foo.jpg 中的 foo；</li>
        # <li> 全部（站点任意请求）： all； </li>
        # <li> HOST：当前站点下的 host ，例如www.maxx55.com；</li>
        # <li> URL Path：当前站点下 URL 路径的请求，例如：/example；</li>
        # <li> URL Full：当前站点下完整 URL 请求，必须包含 HTTP 协议，Host 和 路径，例如：https://www.maxx55.cn/example；</li>
        # <li> 客户端国家/地区：符合ISO3166标准的国家/地区标识；</li>
        # <li> 查询字符串: 当前站点下URL请求中查询字符串的参数值，例如lang=cn&version=1中的cn和1； </li>
        # <li> HTTP 请求头: HTTP请求头部字段值，例如Accept-Language:zh-CN,zh;q=0.9中的zh-CN,zh;q=0.9。 </li>
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
        # @param Name: 参数名称，参数填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
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
        # @param Action: 功能参数名称，参数填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。现在只有三种取值：
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
        # <li> CUSTOM_STRING：参数值用户自定义，字符串类型。</li>注意：当参数类型为 OBJECT 类型时，请注意参考 [示例2 参数为 OBJECT 类型的创建](https://tcloud4api.woa.com/document/product/1657/79382?!preview&!document=1)
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

      # 客户端ip信息
      class SecClientIp < TencentCloud::Common::AbstractModel
        # @param ClientIp: 客户端ip。
        # @type ClientIp: String
        # @param RequestMaxQps: 最大qps。
        # @type RequestMaxQps: Integer
        # @param RequestNum: 请求数。
        # @type RequestNum: Integer

        attr_accessor :ClientIp, :RequestMaxQps, :RequestNum
        
        def initialize(clientip=nil, requestmaxqps=nil, requestnum=nil)
          @ClientIp = clientip
          @RequestMaxQps = requestmaxqps
          @RequestNum = requestnum
        end

        def deserialize(params)
          @ClientIp = params['ClientIp']
          @RequestMaxQps = params['RequestMaxQps']
          @RequestNum = params['RequestNum']
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

      # 命中规则信息
      class SecHitRuleInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param RuleId: 规则ID。
        # @type RuleId: Integer
        # @param RuleTypeName: 规则类型名称。
        # @type RuleTypeName: String
        # @param HitTime: 命中时间，采用unix秒级时间戳。
        # @type HitTime: Integer
        # @param RequestNum: 请求数。
        # @type RequestNum: Integer
        # @param Description: 规则描述。
        # @type Description: String
        # @param Domain: 子域名。
        # @type Domain: String
        # @param Action: 执行动作（处置方式），取值有：
        # <li>trans ：通过 ；</li>
        # <li>alg ：算法挑战 ；</li>
        # <li>drop ：丢弃 ；</li>
        # <li>ban ：封禁源ip ；</li>
        # <li>redirect ：重定向 ；</li>
        # <li>page ：返回指定页面 ；</li>
        # <li>monitor ：观察 。</li>
        # @type Action: String
        # @param BotLabel: Bot标签，取值有:
        # <li>evil_bot：恶意Bot；</li>
        # <li>suspect_bot：疑似Bot；</li>
        # <li>good_bot：正常Bot；</li>
        # <li>normal：正常请求；</li>
        # <li>none：未分类。</li>
        # @type BotLabel: String
        # @param RuleEnabled: 规则是否启用。
        # @type RuleEnabled: Boolean
        # @param AlarmEnabled: 规则是否启用监控告警。
        # @type AlarmEnabled: Boolean
        # @param RuleDeleted: 规则是否存在，取值有：
        # <li>true: 规则不存在；</li>
        # <li>false: 规则存在。</li>
        # @type RuleDeleted: Boolean

        attr_accessor :ZoneId, :RuleId, :RuleTypeName, :HitTime, :RequestNum, :Description, :Domain, :Action, :BotLabel, :RuleEnabled, :AlarmEnabled, :RuleDeleted
        
        def initialize(zoneid=nil, ruleid=nil, ruletypename=nil, hittime=nil, requestnum=nil, description=nil, domain=nil, action=nil, botlabel=nil, ruleenabled=nil, alarmenabled=nil, ruledeleted=nil)
          @ZoneId = zoneid
          @RuleId = ruleid
          @RuleTypeName = ruletypename
          @HitTime = hittime
          @RequestNum = requestnum
          @Description = description
          @Domain = domain
          @Action = action
          @BotLabel = botlabel
          @RuleEnabled = ruleenabled
          @AlarmEnabled = alarmenabled
          @RuleDeleted = ruledeleted
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleId = params['RuleId']
          @RuleTypeName = params['RuleTypeName']
          @HitTime = params['HitTime']
          @RequestNum = params['RequestNum']
          @Description = params['Description']
          @Domain = params['Domain']
          @Action = params['Action']
          @BotLabel = params['BotLabel']
          @RuleEnabled = params['RuleEnabled']
          @AlarmEnabled = params['AlarmEnabled']
          @RuleDeleted = params['RuleDeleted']
        end
      end

      # 安全规则（cc/waf/bot）相关信息
      class SecRuleRelatedInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID。
        # @type RuleId: Integer
        # @param Action: 执行动作（处置方式），取值有：
        # <li>trans ：通过 ；</li>
        # <li>alg ：算法挑战 ；</li>
        # <li>drop ：丢弃 ；</li>
        # <li>ban ：封禁源ip ；</li>
        # <li>redirect ：重定向 ；</li>
        # <li>page ：返回指定页面 ；</li>
        # <li>monitor ：观察 。</li>
        # @type Action: String
        # @param RiskLevel: 风险等级（waf日志中独有），取值有：
        # <li>high risk ：高危 ；</li>
        # <li>middle risk ：中危 ；</li>
        # <li>low risk ：低危 ；</li>
        # <li>unkonw ：未知 。</li>
        # @type RiskLevel: String
        # @param RuleLevel: 规则等级，取值有：
        # <li>normal  ：正常 。</li>
        # @type RuleLevel: String
        # @param Description: 规则描述。
        # @type Description: String
        # @param RuleTypeName: 规则类型名称。
        # @type RuleTypeName: String
        # @param AttackContent: 攻击内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackContent: String
        # @param RuleType: 规则类型，取值有：
        # <li>waf: 托管规则；</li>
        # <li>acl：自定义规则；</li>
        # <li>rate：速率限制规则；</li>
        # <li>bot：bot防护规则。</li>
        # @type RuleType: String
        # @param RuleEnabled: 规则是否开启。
        # @type RuleEnabled: Boolean
        # @param RuleDeleted: 规则是否存在，取值有：
        # <li>true: 规则不存在；</li>
        # <li>false: 规则存在。</li>
        # @type RuleDeleted: Boolean
        # @param AlarmEnabled: 规则是否启用监控告警。
        # @type AlarmEnabled: Boolean

        attr_accessor :RuleId, :Action, :RiskLevel, :RuleLevel, :Description, :RuleTypeName, :AttackContent, :RuleType, :RuleEnabled, :RuleDeleted, :AlarmEnabled
        
        def initialize(ruleid=nil, action=nil, risklevel=nil, rulelevel=nil, description=nil, ruletypename=nil, attackcontent=nil, ruletype=nil, ruleenabled=nil, ruledeleted=nil, alarmenabled=nil)
          @RuleId = ruleid
          @Action = action
          @RiskLevel = risklevel
          @RuleLevel = rulelevel
          @Description = description
          @RuleTypeName = ruletypename
          @AttackContent = attackcontent
          @RuleType = ruletype
          @RuleEnabled = ruleenabled
          @RuleDeleted = ruledeleted
          @AlarmEnabled = alarmenabled
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Action = params['Action']
          @RiskLevel = params['RiskLevel']
          @RuleLevel = params['RuleLevel']
          @Description = params['Description']
          @RuleTypeName = params['RuleTypeName']
          @AttackContent = params['AttackContent']
          @RuleType = params['RuleType']
          @RuleEnabled = params['RuleEnabled']
          @RuleDeleted = params['RuleDeleted']
          @AlarmEnabled = params['AlarmEnabled']
        end
      end

      # 安全配置
      class SecurityConfig < TencentCloud::Common::AbstractModel
        # @param WafConfig: 托管规则。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafConfig: :class:`Tencentcloud::Teo.v20220901.models.WafConfig`
        # @param RateLimitConfig: 速率限制。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitConfig: :class:`Tencentcloud::Teo.v20220901.models.RateLimitConfig`
        # @param AclConfig: 自定义规则。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclConfig: :class:`Tencentcloud::Teo.v20220901.models.AclConfig`
        # @param BotConfig: Bot配置。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotConfig: :class:`Tencentcloud::Teo.v20220901.models.BotConfig`
        # @param SwitchConfig: 七层防护总开关。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SwitchConfig: :class:`Tencentcloud::Teo.v20220901.models.SwitchConfig`
        # @param IpTableConfig: 基础访问管控。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpTableConfig: :class:`Tencentcloud::Teo.v20220901.models.IpTableConfig`
        # @param ExceptConfig: 例外规则配置。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptConfig: :class:`Tencentcloud::Teo.v20220901.models.ExceptConfig`
        # @param DropPageConfig: 自定义拦截页面配置。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropPageConfig: :class:`Tencentcloud::Teo.v20220901.models.DropPageConfig`
        # @param TemplateConfig: 模板配置。此处仅出参数使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateConfig: :class:`Tencentcloud::Teo.v20220901.models.TemplateConfig`
        # @param SlowPostConfig: 慢速攻击配置。如果为null，默认使用历史配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowPostConfig: :class:`Tencentcloud::Teo.v20220901.models.SlowPostConfig`

        attr_accessor :WafConfig, :RateLimitConfig, :AclConfig, :BotConfig, :SwitchConfig, :IpTableConfig, :ExceptConfig, :DropPageConfig, :TemplateConfig, :SlowPostConfig
        
        def initialize(wafconfig=nil, ratelimitconfig=nil, aclconfig=nil, botconfig=nil, switchconfig=nil, iptableconfig=nil, exceptconfig=nil, droppageconfig=nil, templateconfig=nil, slowpostconfig=nil)
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
        # @param CertId: 服务器证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Alias: 证书备注名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Type: 证书类型，取值有：
        # <li>default：默认证书；</lil>
        # <li>upload：用户上传；</li>
        # <li>managed：腾讯云托管。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpireTime: 证书过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书部署时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployTime: String
        # @param SignAlgo: 签名算法。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignAlgo: String
        # @param CommonName: 证书归属域名名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 单值类数据记录
      class SingleDataRecord < TencentCloud::Common::AbstractModel
        # @param TypeKey: 查询维度值。
        # @type TypeKey: String
        # @param TypeValue: 查询维度下具体指标值。
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
              singletypevalue_tmp = SingleTypeValue.new
              singletypevalue_tmp.deserialize(i)
              @TypeValue << singletypevalue_tmp
            end
          end
        end
      end

      # 单值指标数据
      class SingleTypeValue < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名。
        # @type MetricName: String
        # @param DetailData: 指标值。
        # @type DetailData: Integer

        attr_accessor :MetricName, :DetailData
        
        def initialize(metricname=nil, detaildata=nil)
          @MetricName = metricname
          @DetailData = detaildata
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @DetailData = params['DetailData']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchFrom: Array
        # @param MatchContentType: 匹配Content所使用的匹配方式，取值为：
        # <li>equal：精准匹配，等于；</li>
        # <li>wildcard：通配符匹配，支持 * 通配。</li>
        # @type MatchContentType: String
        # @param MatchContent: 匹配Value的值。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 慢速攻击配置。
      class SlowPostConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param FirstPartConfig: 首包配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstPartConfig: :class:`Tencentcloud::Teo.v20220901.models.FirstPartConfig`
        # @param SlowRateConfig: 基础配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowRateConfig: :class:`Tencentcloud::Teo.v20220901.models.SlowRateConfig`
        # @param Action: 慢速攻击的处置动作，取值有：
        # <li>monitor：观察；</li>
        # <li>drop：拦截。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param RuleId: 本规则的Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interval: Integer
        # @param Threshold: 统计时应用的速率阈值，单位是bps，即如果本分片中的传输速率没达到本参数的值，则判定为慢速攻击，应用慢速攻击的处置方式。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 站点拨测配置
      class SpeedTestingConfig < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，取值有：
        # <li>1：页面性能;</li>
        # <li>2：文件上传;</li>
        # <li>3：文件下载;</li>
        # <li>4：端口性能;</li>
        # <li>5：网络质量;</li>
        # <li>6：音视频体验。</li>
        # @type TaskType: Integer
        # @param Url: 拨测 url。
        # @type Url: String
        # @param UA: 拨测 UA。
        # @type UA: String
        # @param Connectivity: 网络类型。
        # @type Connectivity: String

        attr_accessor :TaskType, :Url, :UA, :Connectivity
        
        def initialize(tasktype=nil, url=nil, ua=nil, connectivity=nil)
          @TaskType = tasktype
          @Url = url
          @UA = ua
          @Connectivity = connectivity
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Url = params['Url']
          @UA = params['UA']
          @Connectivity = params['Connectivity']
        end
      end

      # 拨测详细数据，包括各地域性能数据。
      class SpeedTestingDetailData < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param DistrictStatistics: 地域性能数据。
        # @type DistrictStatistics: Array

        attr_accessor :ZoneId, :ZoneName, :DistrictStatistics
        
        def initialize(zoneid=nil, zonename=nil, districtstatistics=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @DistrictStatistics = districtstatistics
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          unless params['DistrictStatistics'].nil?
            @DistrictStatistics = []
            params['DistrictStatistics'].each do |i|
              districtstatistics_tmp = DistrictStatistics.new
              districtstatistics_tmp.deserialize(i)
              @DistrictStatistics << districtstatistics_tmp
            end
          end
        end
      end

      # 拨测结果信息
      class SpeedTestingInfo < TencentCloud::Common::AbstractModel
        # @param StatusCode: 任务状态，取值有：
        # <li> 200：任务完成;</li>
        # <li> 100：任务进行中；</li>
        # <li> 503: 任务失败。</li>
        # @type StatusCode: Integer
        # @param TestId: 拨测任务 ID。
        # @type TestId: String
        # @param SpeedTestingConfig: 拨测任务配置。
        # @type SpeedTestingConfig: :class:`Tencentcloud::Teo.v20220901.models.SpeedTestingConfig`
        # @param SpeedTestingStatistics: 拨测任务统计结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeedTestingStatistics: :class:`Tencentcloud::Teo.v20220901.models.SpeedTestingStatistics`

        attr_accessor :StatusCode, :TestId, :SpeedTestingConfig, :SpeedTestingStatistics
        
        def initialize(statuscode=nil, testid=nil, speedtestingconfig=nil, speedtestingstatistics=nil)
          @StatusCode = statuscode
          @TestId = testid
          @SpeedTestingConfig = speedtestingconfig
          @SpeedTestingStatistics = speedtestingstatistics
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @TestId = params['TestId']
          unless params['SpeedTestingConfig'].nil?
            @SpeedTestingConfig = SpeedTestingConfig.new
            @SpeedTestingConfig.deserialize(params['SpeedTestingConfig'])
          end
          unless params['SpeedTestingStatistics'].nil?
            @SpeedTestingStatistics = SpeedTestingStatistics.new
            @SpeedTestingStatistics.deserialize(params['SpeedTestingStatistics'])
          end
        end
      end

      # 不同维度的测速数据。
      class SpeedTestingMetricData < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param OriginSpeedTestingInfo: 源站拨测信息。
        # @type OriginSpeedTestingInfo: Array
        # @param ProxySpeedTestingInfo: EO 拨测信息。
        # @type ProxySpeedTestingInfo: Array
        # @param SpeedTestingStatus: 站点状态。
        # @type SpeedTestingStatus: :class:`Tencentcloud::Teo.v20220901.models.SpeedTestingStatus`
        # @param OptimizeAction: 优化建议。
        # @type OptimizeAction: Array
        # @param ProxyLoadTime: EO 整体性能，单位ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyLoadTime: Integer
        # @param OriginLoadTime: 源站整体性能，单位ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginLoadTime: Integer

        attr_accessor :ZoneId, :ZoneName, :OriginSpeedTestingInfo, :ProxySpeedTestingInfo, :SpeedTestingStatus, :OptimizeAction, :ProxyLoadTime, :OriginLoadTime
        
        def initialize(zoneid=nil, zonename=nil, originspeedtestinginfo=nil, proxyspeedtestinginfo=nil, speedtestingstatus=nil, optimizeaction=nil, proxyloadtime=nil, originloadtime=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @OriginSpeedTestingInfo = originspeedtestinginfo
          @ProxySpeedTestingInfo = proxyspeedtestinginfo
          @SpeedTestingStatus = speedtestingstatus
          @OptimizeAction = optimizeaction
          @ProxyLoadTime = proxyloadtime
          @OriginLoadTime = originloadtime
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          unless params['OriginSpeedTestingInfo'].nil?
            @OriginSpeedTestingInfo = []
            params['OriginSpeedTestingInfo'].each do |i|
              speedtestinginfo_tmp = SpeedTestingInfo.new
              speedtestinginfo_tmp.deserialize(i)
              @OriginSpeedTestingInfo << speedtestinginfo_tmp
            end
          end
          unless params['ProxySpeedTestingInfo'].nil?
            @ProxySpeedTestingInfo = []
            params['ProxySpeedTestingInfo'].each do |i|
              speedtestinginfo_tmp = SpeedTestingInfo.new
              speedtestinginfo_tmp.deserialize(i)
              @ProxySpeedTestingInfo << speedtestinginfo_tmp
            end
          end
          unless params['SpeedTestingStatus'].nil?
            @SpeedTestingStatus = SpeedTestingStatus.new
            @SpeedTestingStatus.deserialize(params['SpeedTestingStatus'])
          end
          unless params['OptimizeAction'].nil?
            @OptimizeAction = []
            params['OptimizeAction'].each do |i|
              optimizeaction_tmp = OptimizeAction.new
              optimizeaction_tmp.deserialize(i)
              @OptimizeAction << optimizeaction_tmp
            end
          end
          @ProxyLoadTime = params['ProxyLoadTime']
          @OriginLoadTime = params['OriginLoadTime']
        end
      end

      # 拨测配额数据。
      class SpeedTestingQuota < TencentCloud::Common::AbstractModel
        # @param TotalTestRuns: 站点总拨测次数。
        # @type TotalTestRuns: Integer
        # @param AvailableTestRuns: 站点剩余可用拨测次数。
        # @type AvailableTestRuns: Integer

        attr_accessor :TotalTestRuns, :AvailableTestRuns
        
        def initialize(totaltestruns=nil, availabletestruns=nil)
          @TotalTestRuns = totaltestruns
          @AvailableTestRuns = availabletestruns
        end

        def deserialize(params)
          @TotalTestRuns = params['TotalTestRuns']
          @AvailableTestRuns = params['AvailableTestRuns']
        end
      end

      # 拨测统计结果
      class SpeedTestingStatistics < TencentCloud::Common::AbstractModel
        # @param FirstContentfulPaint: 首屏时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstContentfulPaint: Integer
        # @param FirstMeaningfulPaint: 首屏完全渲染时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstMeaningfulPaint: Integer
        # @param OverallDownloadSpeed: 整体下载速度，单位 KB/s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverallDownloadSpeed: Float
        # @param RenderTime: 渲染时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenderTime: Integer
        # @param DocumentFinishTime: 文档完成时间, 单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentFinishTime: Integer
        # @param TcpConnectionTime: 基础文档TCP连接时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcpConnectionTime: Integer
        # @param ResponseTime: 基础文档服务器响应时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTime: Integer
        # @param FileDownloadTime: 基础文档下载时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileDownloadTime: Integer
        # @param LoadTime: 整体性能，测试总时间，单位 ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadTime: Integer

        attr_accessor :FirstContentfulPaint, :FirstMeaningfulPaint, :OverallDownloadSpeed, :RenderTime, :DocumentFinishTime, :TcpConnectionTime, :ResponseTime, :FileDownloadTime, :LoadTime
        
        def initialize(firstcontentfulpaint=nil, firstmeaningfulpaint=nil, overalldownloadspeed=nil, rendertime=nil, documentfinishtime=nil, tcpconnectiontime=nil, responsetime=nil, filedownloadtime=nil, loadtime=nil)
          @FirstContentfulPaint = firstcontentfulpaint
          @FirstMeaningfulPaint = firstmeaningfulpaint
          @OverallDownloadSpeed = overalldownloadspeed
          @RenderTime = rendertime
          @DocumentFinishTime = documentfinishtime
          @TcpConnectionTime = tcpconnectiontime
          @ResponseTime = responsetime
          @FileDownloadTime = filedownloadtime
          @LoadTime = loadtime
        end

        def deserialize(params)
          @FirstContentfulPaint = params['FirstContentfulPaint']
          @FirstMeaningfulPaint = params['FirstMeaningfulPaint']
          @OverallDownloadSpeed = params['OverallDownloadSpeed']
          @RenderTime = params['RenderTime']
          @DocumentFinishTime = params['DocumentFinishTime']
          @TcpConnectionTime = params['TcpConnectionTime']
          @ResponseTime = params['ResponseTime']
          @FileDownloadTime = params['FileDownloadTime']
          @LoadTime = params['LoadTime']
        end
      end

      # 拨测任务状态信息
      class SpeedTestingStatus < TencentCloud::Common::AbstractModel
        # @param Url: 拨测 url。
        # @type Url: String
        # @param Tls: 拨测 url 是否使用 https。
        # @type Tls: Boolean
        # @param CreatedOn: 任务创建时间。
        # @type CreatedOn: String
        # @param StatusCode: 任务状态，取值有：
        # <li> 200：任务完成;</li>
        # <li> 100：任务进行中。</li>
        # <li> 503: 任务失败。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCode: Integer
        # @param UA: 拨测 UA。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UA: String
        # @param Connectivity: 网络环境。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Connectivity: String
        # @param Reachable: 是否可达，取值：
        # <li> true：可达；</li>
        # <li> false：不可达。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reachable: Boolean
        # @param TimedOut: 是否超时，取值：
        # <li> true：超时；</li>
        # <li> false：不超时。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimedOut: Boolean

        attr_accessor :Url, :Tls, :CreatedOn, :StatusCode, :UA, :Connectivity, :Reachable, :TimedOut
        
        def initialize(url=nil, tls=nil, createdon=nil, statuscode=nil, ua=nil, connectivity=nil, reachable=nil, timedout=nil)
          @Url = url
          @Tls = tls
          @CreatedOn = createdon
          @StatusCode = statuscode
          @UA = ua
          @Connectivity = connectivity
          @Reachable = reachable
          @TimedOut = timedout
        end

        def deserialize(params)
          @Url = params['Url']
          @Tls = params['Tls']
          @CreatedOn = params['CreatedOn']
          @StatusCode = params['StatusCode']
          @UA = params['UA']
          @Connectivity = params['Connectivity']
          @Reachable = params['Reachable']
          @TimedOut = params['TimedOut']
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
        # @param Status: 状态。
        # @type Status: String
        # @param Target: 资源。
        # @type Target: String
        # @param Type: 任务类型。
        # @type Type: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 任务完成时间。
        # @type UpdateTime: String

        attr_accessor :JobId, :Status, :Target, :Type, :CreateTime, :UpdateTime
        
        def initialize(jobid=nil, status=nil, target=nil, type=nil, createtime=nil, updatetime=nil)
          @JobId = jobid
          @Status = status
          @Target = target
          @Type = type
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Status = params['Status']
          @Target = params['Target']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

      # 统计曲线数据项
      class TimingDataItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 返回数据对应时间点，采用unix秒级时间戳。
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

      # UpdateOriginProtectionIPWhitelist请求参数结构体
      class UpdateOriginProtectionIPWhitelistRequest < TencentCloud::Common::AbstractModel
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

      # UpdateOriginProtectionIPWhitelist返回参数结构体
      class UpdateOriginProtectionIPWhitelistResponse < TencentCloud::Common::AbstractModel
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

      # Http2回源配置
      class UpstreamHttp2 < TencentCloud::Common::AbstractModel
        # @param Switch: http2回源配置开关，取值有：
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

      # Waf托管规则组
      class WafGroup < TencentCloud::Common::AbstractModel
        # @param Action: 执行动作，取值有：
        # <li> block：阻断；</li>
        # <li> observe：观察。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Level: 防护级别，取值有：
        # <li> loose：宽松；</li>
        # <li> normal：正常；</li>
        # <li> strict：严格；</li>
        # <li> stricter：超严格；</li>
        # <li> custom：自定义。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param TypeId: 规则类型id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeId: Integer

        attr_accessor :Action, :Level, :TypeId
        
        def initialize(action=nil, level=nil, typeid=nil)
          @Action = action
          @Level = level
          @TypeId = typeid
        end

        def deserialize(params)
          @Action = params['Action']
          @Level = params['Level']
          @TypeId = params['TypeId']
        end
      end

      # Waf规则
      class WafRule < TencentCloud::Common::AbstractModel
        # @param Switch: 托管规则开关，取值有：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String
        # @param BlockRuleIDs: 黑名单，ID参考接口 [DescribeSecurityGroupManagedRules](https://tcloud4api.woa.com/document/product/1657/80807?!preview&!document=1)。
        # @type BlockRuleIDs: Array
        # @param ObserveRuleIDs: 观察模式ID列表，将规则ID加入本参数列表中代表该ID使用观察模式生效，即该规则ID进入观察模式。ID参考接口 [DescribeSecurityGroupManagedRules](https://tcloud4api.woa.com/document/product/1657/80807?!preview&!document=1)。
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

      # web攻击日志
      class WebLogs < TencentCloud::Common::AbstractModel
        # @param EventId: 请求（事件）ID。
        # @type EventId: String
        # @param HttpLog: http 日志内容。
        # @type HttpLog: String
        # @param Domain: 受攻击子域名。
        # @type Domain: String
        # @param AttackIp: 攻击源（客户端）Ip。
        # @type AttackIp: String
        # @param SipCountryCode: IP所在国家iso-3166中alpha-2编码，编码信息请参考[ISO-3166](https://git.woa.com/edgeone/iso-3166/blob/master/all/all.json)
        # @type SipCountryCode: String
        # @param RealClientIp: 真实客户端Ip。
        # @type RealClientIp: String
        # @param RealClientIpCountryCode: 真实客户端Ip所在国家iso-3166中alpha-2编码。
        # @type RealClientIpCountryCode: String
        # @param AttackTime: 攻击时间，采用unix秒级时间戳。
        # @type AttackTime: Integer
        # @param RequestUri: 请求地址。
        # @type RequestUri: String
        # @param ReqMethod: 请求类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReqMethod: String
        # @param RuleDetailList: 规则相关信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDetailList: Array
        # @param AttackContent: 攻击内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackContent: String
        # @param Area: 日志所属区域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String

        attr_accessor :EventId, :HttpLog, :Domain, :AttackIp, :SipCountryCode, :RealClientIp, :RealClientIpCountryCode, :AttackTime, :RequestUri, :ReqMethod, :RuleDetailList, :AttackContent, :Area
        
        def initialize(eventid=nil, httplog=nil, domain=nil, attackip=nil, sipcountrycode=nil, realclientip=nil, realclientipcountrycode=nil, attacktime=nil, requesturi=nil, reqmethod=nil, ruledetaillist=nil, attackcontent=nil, area=nil)
          @EventId = eventid
          @HttpLog = httplog
          @Domain = domain
          @AttackIp = attackip
          @SipCountryCode = sipcountrycode
          @RealClientIp = realclientip
          @RealClientIpCountryCode = realclientipcountrycode
          @AttackTime = attacktime
          @RequestUri = requesturi
          @ReqMethod = reqmethod
          @RuleDetailList = ruledetaillist
          @AttackContent = attackcontent
          @Area = area
        end

        def deserialize(params)
          @EventId = params['EventId']
          @HttpLog = params['HttpLog']
          @Domain = params['Domain']
          @AttackIp = params['AttackIp']
          @SipCountryCode = params['SipCountryCode']
          @RealClientIp = params['RealClientIp']
          @RealClientIpCountryCode = params['RealClientIpCountryCode']
          @AttackTime = params['AttackTime']
          @RequestUri = params['RequestUri']
          @ReqMethod = params['ReqMethod']
          unless params['RuleDetailList'].nil?
            @RuleDetailList = []
            params['RuleDetailList'].each do |i|
              secrulerelatedinfo_tmp = SecRuleRelatedInfo.new
              secrulerelatedinfo_tmp.deserialize(i)
              @RuleDetailList << secrulerelatedinfo_tmp
            end
          end
          @AttackContent = params['AttackContent']
          @Area = params['Area']
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

      # 站点信息
      class Zone < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
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
        # @type Status: String
        # @param Type: 站点接入方式，取值有
        # <li> full：NS 接入； </li>
        # <li> partial：CNAME 接入。</li>
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasZoneName: String
        # @param IsFake: 是否伪站点，取值有：
        # <li> 0：非伪站点；</li>
        # <li> 1：伪站点。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFake: Integer

        attr_accessor :ZoneId, :ZoneName, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CnameSpeedUp, :CnameStatus, :Tags, :Resources, :CreatedOn, :ModifiedOn, :Area, :VanityNameServers, :VanityNameServersIps, :ActiveStatus, :AliasZoneName, :IsFake
        
        def initialize(zoneid=nil, zonename=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, cnamespeedup=nil, cnamestatus=nil, tags=nil, resources=nil, createdon=nil, modifiedon=nil, area=nil, vanitynameservers=nil, vanitynameserversips=nil, activestatus=nil, aliaszonename=nil, isfake=nil)
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

        attr_accessor :ZoneName, :Area, :CacheKey, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :CacheConfig, :Origin, :SmartRouting, :MaxAge, :OfflineCache, :WebSocket, :ClientIpHeader, :CachePrefresh, :Ipv6, :Https, :ClientIpCountry, :Grpc
        
        def initialize(zonename=nil, area=nil, cachekey=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, cacheconfig=nil, origin=nil, smartrouting=nil, maxage=nil, offlinecache=nil, websocket=nil, clientipheader=nil, cacheprefresh=nil, ipv6=nil, https=nil, clientipcountry=nil, grpc=nil)
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
        end
      end

    end
  end
end

