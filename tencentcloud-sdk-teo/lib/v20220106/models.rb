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
    module V20220106
      # 精准防护条件
      class ACLCondition < TencentCloud::Common::AbstractModel
        # @param MatchFrom: 匹配字段
        # @type MatchFrom: String
        # @param MatchParam: 匹配字符串
        # @type MatchParam: String
        # @param Operator: 匹配关系
        # @type Operator: String
        # @param MatchContent: 匹配内容
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

      # ACL用户规则
      class ACLUserRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String
        # @param Action: 动作
        # @type Action: String
        # @param RuleStatus: 状态
        # @type RuleStatus: String
        # @param Conditions: ACL规则
        # @type Conditions: Array
        # @param RulePriority: 规则优先级
        # @type RulePriority: Integer
        # @param RuleID: 规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param PunishTime: ip封禁的惩罚时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTime: Integer
        # @param PunishTimeUnit: ip封禁的惩罚时间单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTimeUnit: String
        # @param Name: 自定义返回页面的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PageId: 自定义返回页面的实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: Integer
        # @param RedirectUrl: 重定向时候的地址，必须为本用户接入的站点子域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectUrl: String
        # @param ResponseCode: 重定向时候的返回码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseCode: Integer

        attr_accessor :RuleName, :Action, :RuleStatus, :Conditions, :RulePriority, :RuleID, :UpdateTime, :PunishTime, :PunishTimeUnit, :Name, :PageId, :RedirectUrl, :ResponseCode
        
        def initialize(rulename=nil, action=nil, rulestatus=nil, conditions=nil, rulepriority=nil, ruleid=nil, updatetime=nil, punishtime=nil, punishtimeunit=nil, name=nil, pageid=nil, redirecturl=nil, responsecode=nil)
          @RuleName = rulename
          @Action = action
          @RuleStatus = rulestatus
          @Conditions = conditions
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
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              aclcondition_tmp = ACLCondition.new
              aclcondition_tmp.deserialize(i)
              @Conditions << aclcondition_tmp
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

      # ACL配置
      class AclConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关
        # @type Switch: String
        # @param UserRules: ACL用户规则
        # @type UserRules: Array

        attr_accessor :Switch, :UserRules
        
        def initialize(switch=nil, userrules=nil)
          @Switch = switch
          @UserRules = userrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['UserRules'].nil?
            @UserRules = []
            params['UserRules'].each do |i|
              acluserrule_tmp = ACLUserRule.new
              acluserrule_tmp.deserialize(i)
              @UserRules << acluserrule_tmp
            end
          end
        end
      end

      # AI规则引擎防护
      class AiRule < TencentCloud::Common::AbstractModel
        # @param Mode: smart_status_close-关闭；smart_status_open-拦截处置；
        # smart_status_observe-观察处置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String

        attr_accessor :Mode
        
        def initialize(mode=nil)
          @Mode = mode
        end

        def deserialize(params)
          @Mode = params['Mode']
        end
      end

      # 应用代理实例
      class ApplicationProxy < TencentCloud::Common::AbstractModel
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
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
        # @param ForwardClientIp: 字段已经废弃。
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经废弃。
        # @type SessionPersist: Boolean
        # @param Rule: 规则列表。
        # @type Rule: Array
        # @param Status: 状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用；</li>
        # <li>progress：部署中；</li>
        # <li>stopping：停用中；</li>
        # <li>fail：部署失败/停用失败。</li>
        # @type Status: String
        # @param ScheduleValue: 调度信息。
        # @type ScheduleValue: Array
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param SessionPersistTime: 会话保持时间。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>
        # @type ProxyType: String
        # @param HostId: 当ProxyType=hostname时：
        # 表示代理加速唯一标识。
        # @type HostId: String
        # @param Ipv6: Ipv6访问配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220106.models.Ipv6Access`
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # 默认值：overseas
        # @type Area: String
        # @param BanStatus: 封禁状态，取值有：
        # <li>banned：已封禁;</li>
        # <li>banning：封禁中；</li>
        # <li>recover：已解封；</li>
        # <li>recovering：解封禁中。</li>
        # @type BanStatus: String

        attr_accessor :ProxyId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :Status, :ScheduleValue, :UpdateTime, :ZoneId, :ZoneName, :SessionPersistTime, :ProxyType, :HostId, :Ipv6, :Area, :BanStatus
        
        def initialize(proxyid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, status=nil, schedulevalue=nil, updatetime=nil, zoneid=nil, zonename=nil, sessionpersisttime=nil, proxytype=nil, hostid=nil, ipv6=nil, area=nil, banstatus=nil)
          @ProxyId = proxyid
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @Rule = rule
          @Status = status
          @ScheduleValue = schedulevalue
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @HostId = hostid
          @Ipv6 = ipv6
          @Area = area
          @BanStatus = banstatus
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
          @Status = params['Status']
          @ScheduleValue = params['ScheduleValue']
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
          @HostId = params['HostId']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6Access.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          @Area = params['Area']
          @BanStatus = params['BanStatus']
        end
      end

      # 应用代理规则
      class ApplicationProxyRule < TencentCloud::Common::AbstractModel
        # @param Proto: 协议，取值有：
        # <li>TCP：TCP协议；</li>
        # <li>UDP：UDP协议。</li>
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 单个端口，如：80。
        # 端口段，如：81-82。表示81，82两个端口。
        # 注意：一条规则最多可填写20个端口。
        # @type Port: Array
        # @param OriginType: 源站类型，取值有：
        # <li>custom：手动添加；</li>
        # <li>origins：源站组。</li>
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示一个或多个源站，如：
        # OriginValue=["8.8.8.8:80","9.9.9.9:80"]
        # OriginValue=["test.com:80"]；
        # 当OriginType=origins时，要求有且仅有一个元素，表示源站组ID，如：
        # OriginValue=["origin-537f5b41-162a-11ed-abaa-525400c5da15"]。
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
        # <li>OFF：不传递。</li>
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持，取值有：
        # <li>true：开启；</li>
        # <li>false：关闭。</li>
        # @type SessionPersist: Boolean

        attr_accessor :Proto, :Port, :OriginType, :OriginValue, :RuleId, :Status, :ForwardClientIp, :SessionPersist
        
        def initialize(proto=nil, port=nil, origintype=nil, originvalue=nil, ruleid=nil, status=nil, forwardclientip=nil, sessionpersist=nil)
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @RuleId = ruleid
          @Status = status
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
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
        end
      end

      # 安全Bot配置
      class BotConfig < TencentCloud::Common::AbstractModel
        # @param Switch: bot开关
        # @type Switch: String
        # @param ManagedRule: 预置规则
        # @type ManagedRule: :class:`Tencentcloud::Teo.v20220106.models.BotManagedRule`
        # @param UaBotRule: 保留
        # @type UaBotRule: :class:`Tencentcloud::Teo.v20220106.models.BotManagedRule`
        # @param IspBotRule: 保留
        # @type IspBotRule: :class:`Tencentcloud::Teo.v20220106.models.BotManagedRule`
        # @param PortraitRule: 用户画像规则
        # @type PortraitRule: :class:`Tencentcloud::Teo.v20220106.models.BotPortraitRule`
        # @param IntelligenceRule: Bot智能分析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntelligenceRule: :class:`Tencentcloud::Teo.v20220106.models.IntelligenceRule`

        attr_accessor :Switch, :ManagedRule, :UaBotRule, :IspBotRule, :PortraitRule, :IntelligenceRule
        
        def initialize(switch=nil, managedrule=nil, uabotrule=nil, ispbotrule=nil, portraitrule=nil, intelligencerule=nil)
          @Switch = switch
          @ManagedRule = managedrule
          @UaBotRule = uabotrule
          @IspBotRule = ispbotrule
          @PortraitRule = portraitrule
          @IntelligenceRule = intelligencerule
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['ManagedRule'].nil?
            @ManagedRule = BotManagedRule.new
            @ManagedRule.deserialize(params['ManagedRule'])
          end
          unless params['UaBotRule'].nil?
            @UaBotRule = BotManagedRule.new
            @UaBotRule.deserialize(params['UaBotRule'])
          end
          unless params['IspBotRule'].nil?
            @IspBotRule = BotManagedRule.new
            @IspBotRule.deserialize(params['IspBotRule'])
          end
          unless params['PortraitRule'].nil?
            @PortraitRule = BotPortraitRule.new
            @PortraitRule.deserialize(params['PortraitRule'])
          end
          unless params['IntelligenceRule'].nil?
            @IntelligenceRule = IntelligenceRule.new
            @IntelligenceRule.deserialize(params['IntelligenceRule'])
          end
        end
      end

      # Bot攻击日志
      class BotLog < TencentCloud::Common::AbstractModel
        # @param AttackTime: 攻击时间，采用unix秒级时间戳。
        # @type AttackTime: Integer
        # @param AttackIp: 攻击源（客户端）ip。
        # @type AttackIp: String
        # @param Domain: 受攻击域名。
        # @type Domain: String
        # @param RequestUri: URI。
        # @type RequestUri: String
        # @param AttackType: 当前该字段无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackType: String
        # @param RequestMethod: 请求方法。
        # @type RequestMethod: String
        # @param AttackContent: 攻击内容。
        # @type AttackContent: String
        # @param RiskLevel: 当前该字段无效 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RuleId: 当前该字段无效 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param SipCountryCode: IP所在国家iso-3166中alpha-2编码，编码信息请参考[ISO-3166](https://git.woa.com/edgeone/iso-3166/blob/master/all/all.json)。
        # @type SipCountryCode: String
        # @param EventId: 请求（事件）ID。
        # @type EventId: String
        # @param DisposalMethod: 该字段当前无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalMethod: String
        # @param HttpLog: 该字段当前无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpLog: String
        # @param Ua: user agent。
        # @type Ua: String
        # @param DetectionMethod: 该字段当前无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionMethod: String
        # @param Confidence: 该字段当前无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: String
        # @param Maliciousness: 该字段当前无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Maliciousness: String
        # @param RuleDetailList: 规则相关信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDetailList: Array
        # @param Label: Bot标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String

        attr_accessor :AttackTime, :AttackIp, :Domain, :RequestUri, :AttackType, :RequestMethod, :AttackContent, :RiskLevel, :RuleId, :SipCountryCode, :EventId, :DisposalMethod, :HttpLog, :Ua, :DetectionMethod, :Confidence, :Maliciousness, :RuleDetailList, :Label
        
        def initialize(attacktime=nil, attackip=nil, domain=nil, requesturi=nil, attacktype=nil, requestmethod=nil, attackcontent=nil, risklevel=nil, ruleid=nil, sipcountrycode=nil, eventid=nil, disposalmethod=nil, httplog=nil, ua=nil, detectionmethod=nil, confidence=nil, maliciousness=nil, ruledetaillist=nil, label=nil)
          @AttackTime = attacktime
          @AttackIp = attackip
          @Domain = domain
          @RequestUri = requesturi
          @AttackType = attacktype
          @RequestMethod = requestmethod
          @AttackContent = attackcontent
          @RiskLevel = risklevel
          @RuleId = ruleid
          @SipCountryCode = sipcountrycode
          @EventId = eventid
          @DisposalMethod = disposalmethod
          @HttpLog = httplog
          @Ua = ua
          @DetectionMethod = detectionmethod
          @Confidence = confidence
          @Maliciousness = maliciousness
          @RuleDetailList = ruledetaillist
          @Label = label
        end

        def deserialize(params)
          @AttackTime = params['AttackTime']
          @AttackIp = params['AttackIp']
          @Domain = params['Domain']
          @RequestUri = params['RequestUri']
          @AttackType = params['AttackType']
          @RequestMethod = params['RequestMethod']
          @AttackContent = params['AttackContent']
          @RiskLevel = params['RiskLevel']
          @RuleId = params['RuleId']
          @SipCountryCode = params['SipCountryCode']
          @EventId = params['EventId']
          @DisposalMethod = params['DisposalMethod']
          @HttpLog = params['HttpLog']
          @Ua = params['Ua']
          @DetectionMethod = params['DetectionMethod']
          @Confidence = params['Confidence']
          @Maliciousness = params['Maliciousness']
          unless params['RuleDetailList'].nil?
            @RuleDetailList = []
            params['RuleDetailList'].each do |i|
              secrulerelatedinfo_tmp = SecRuleRelatedInfo.new
              secrulerelatedinfo_tmp.deserialize(i)
              @RuleDetailList << secrulerelatedinfo_tmp
            end
          end
          @Label = params['Label']
        end
      end

      # 限速拦截日志
      class BotLogData < TencentCloud::Common::AbstractModel
        # @param List: Bot攻击日志数据集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Pages: 总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              botlog_tmp = BotLog.new
              botlog_tmp.deserialize(i)
              @List << botlog_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # Bot 规则，下列规则ID可参考接口 DescribeBotManagedRules返回的ID信息
      class BotManagedRule < TencentCloud::Common::AbstractModel
        # @param ManagedIds: 想开启的规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManagedIds: Array
        # @param RuleID: 本规则的id
        # @type RuleID: Integer
        # @param Action: drop/trans/monitor/alg
        # @type Action: String
        # @param PunishTime: ip封禁的惩罚时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTime: Integer
        # @param PunishTimeUnit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTimeUnit: String
        # @param Name: 自定义返回页面的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PageId: 自定义返回页面的实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: Integer
        # @param RedirectUrl: 重定向时候的地址，必须为本用户接入的站点子域名，使用URLENCODE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectUrl: String
        # @param ResponseCode: 重定向时候的返回码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseCode: Integer
        # @param TransManagedIds: 放行的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransManagedIds: Array
        # @param AlgManagedIds: JS挑战的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgManagedIds: Array
        # @param CapManagedIds: 数字验证码的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapManagedIds: Array
        # @param MonManagedIds: 观察的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonManagedIds: Array
        # @param DropManagedIds: 拦截的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropManagedIds: Array

        attr_accessor :ManagedIds, :RuleID, :Action, :PunishTime, :PunishTimeUnit, :Name, :PageId, :RedirectUrl, :ResponseCode, :TransManagedIds, :AlgManagedIds, :CapManagedIds, :MonManagedIds, :DropManagedIds
        
        def initialize(managedids=nil, ruleid=nil, action=nil, punishtime=nil, punishtimeunit=nil, name=nil, pageid=nil, redirecturl=nil, responsecode=nil, transmanagedids=nil, algmanagedids=nil, capmanagedids=nil, monmanagedids=nil, dropmanagedids=nil)
          @ManagedIds = managedids
          @RuleID = ruleid
          @Action = action
          @PunishTime = punishtime
          @PunishTimeUnit = punishtimeunit
          @Name = name
          @PageId = pageid
          @RedirectUrl = redirecturl
          @ResponseCode = responsecode
          @TransManagedIds = transmanagedids
          @AlgManagedIds = algmanagedids
          @CapManagedIds = capmanagedids
          @MonManagedIds = monmanagedids
          @DropManagedIds = dropmanagedids
        end

        def deserialize(params)
          @ManagedIds = params['ManagedIds']
          @RuleID = params['RuleID']
          @Action = params['Action']
          @PunishTime = params['PunishTime']
          @PunishTimeUnit = params['PunishTimeUnit']
          @Name = params['Name']
          @PageId = params['PageId']
          @RedirectUrl = params['RedirectUrl']
          @ResponseCode = params['ResponseCode']
          @TransManagedIds = params['TransManagedIds']
          @AlgManagedIds = params['AlgManagedIds']
          @CapManagedIds = params['CapManagedIds']
          @MonManagedIds = params['MonManagedIds']
          @DropManagedIds = params['DropManagedIds']
        end
      end

      # bot托管规则详情
      class BotManagedRuleDetail < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Description: 规则描述
        # @type Description: String
        # @param RuleTypeName: 规则分类
        # @type RuleTypeName: String
        # @param Status: 该规则开启/关闭
        # @type Status: String

        attr_accessor :RuleId, :Description, :RuleTypeName, :Status
        
        def initialize(ruleid=nil, description=nil, ruletypename=nil, status=nil)
          @RuleId = ruleid
          @Description = description
          @RuleTypeName = ruletypename
          @Status = status
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Description = params['Description']
          @RuleTypeName = params['RuleTypeName']
          @Status = params['Status']
        end
      end

      # bot 用户画像规则
      class BotPortraitRule < TencentCloud::Common::AbstractModel
        # @param RuleID: 本规则的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleID: Integer
        # @param AlgManagedIds: JS挑战的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgManagedIds: Array
        # @param CapManagedIds: 数字验证码的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapManagedIds: Array
        # @param MonManagedIds: 观察的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonManagedIds: Array
        # @param DropManagedIds: 拦截的规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropManagedIds: Array
        # @param Switch: 本功能的开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :RuleID, :AlgManagedIds, :CapManagedIds, :MonManagedIds, :DropManagedIds, :Switch
        
        def initialize(ruleid=nil, algmanagedids=nil, capmanagedids=nil, monmanagedids=nil, dropmanagedids=nil, switch=nil)
          @RuleID = ruleid
          @AlgManagedIds = algmanagedids
          @CapManagedIds = capmanagedids
          @MonManagedIds = monmanagedids
          @DropManagedIds = dropmanagedids
          @Switch = switch
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @AlgManagedIds = params['AlgManagedIds']
          @CapManagedIds = params['CapManagedIds']
          @MonManagedIds = params['MonManagedIds']
          @DropManagedIds = params['DropManagedIds']
          @Switch = params['Switch']
        end
      end

      # CC拦截事件
      class CCInterceptEvent < TencentCloud::Common::AbstractModel
        # @param ClientIp: 客户端ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIp: String
        # @param InterceptNum: 拦截次数/min
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InterceptNum: Integer
        # @param InterceptTime: 速拦截时间，分钟时间/min,单位为s
        # @type InterceptTime: Integer

        attr_accessor :ClientIp, :InterceptNum, :InterceptTime
        
        def initialize(clientip=nil, interceptnum=nil, intercepttime=nil)
          @ClientIp = clientip
          @InterceptNum = interceptnum
          @InterceptTime = intercepttime
        end

        def deserialize(params)
          @ClientIp = params['ClientIp']
          @InterceptNum = params['InterceptNum']
          @InterceptTime = params['InterceptTime']
        end
      end

      # CC拦截事件数据
      class CCInterceptEventData < TencentCloud::Common::AbstractModel
        # @param List: 攻击事件数据集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 当前页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param PageSize: 每页展示条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Pages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              ccinterceptevent_tmp = CCInterceptEvent.new
              ccinterceptevent_tmp.deserialize(i)
              @List << ccinterceptevent_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # CC日志
      class CCLog < TencentCloud::Common::AbstractModel
        # @param AttackTime: 攻击请求时间，采用unix秒级时间戳。
        # @type AttackTime: Integer
        # @param AttackSip: 客户端ip。
        # @type AttackSip: String
        # @param AttackDomain: 受攻击域名。
        # @type AttackDomain: String
        # @param RequestUri: URI。
        # @type RequestUri: String
        # @param HitCount: 命中次数。
        # @type HitCount: Integer
        # @param SipCountryCode: IP所在国家iso-3166中alpha-2编码，编码信息请参考[ISO-3166](https://git.woa.com/edgeone/iso-3166/blob/master/all/all.json)。
        # @type SipCountryCode: String
        # @param EventId: 请求（事件）ID。
        # @type EventId: String
        # @param DisposalMethod: 当前该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalMethod: String
        # @param HttpLog: 当前该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpLog: String
        # @param RuleId: 当前该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RiskLevel: 当前该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param Ua: User Agent，仅自定义规则日志中存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ua: String
        # @param RequestMethod: 请求方法，仅自定义规则日志中存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: String
        # @param RuleDetailList: 规则信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDetailList: Array

        attr_accessor :AttackTime, :AttackSip, :AttackDomain, :RequestUri, :HitCount, :SipCountryCode, :EventId, :DisposalMethod, :HttpLog, :RuleId, :RiskLevel, :Ua, :RequestMethod, :RuleDetailList
        
        def initialize(attacktime=nil, attacksip=nil, attackdomain=nil, requesturi=nil, hitcount=nil, sipcountrycode=nil, eventid=nil, disposalmethod=nil, httplog=nil, ruleid=nil, risklevel=nil, ua=nil, requestmethod=nil, ruledetaillist=nil)
          @AttackTime = attacktime
          @AttackSip = attacksip
          @AttackDomain = attackdomain
          @RequestUri = requesturi
          @HitCount = hitcount
          @SipCountryCode = sipcountrycode
          @EventId = eventid
          @DisposalMethod = disposalmethod
          @HttpLog = httplog
          @RuleId = ruleid
          @RiskLevel = risklevel
          @Ua = ua
          @RequestMethod = requestmethod
          @RuleDetailList = ruledetaillist
        end

        def deserialize(params)
          @AttackTime = params['AttackTime']
          @AttackSip = params['AttackSip']
          @AttackDomain = params['AttackDomain']
          @RequestUri = params['RequestUri']
          @HitCount = params['HitCount']
          @SipCountryCode = params['SipCountryCode']
          @EventId = params['EventId']
          @DisposalMethod = params['DisposalMethod']
          @HttpLog = params['HttpLog']
          @RuleId = params['RuleId']
          @RiskLevel = params['RiskLevel']
          @Ua = params['Ua']
          @RequestMethod = params['RequestMethod']
          unless params['RuleDetailList'].nil?
            @RuleDetailList = []
            params['RuleDetailList'].each do |i|
              secrulerelatedinfo_tmp = SecRuleRelatedInfo.new
              secrulerelatedinfo_tmp.deserialize(i)
              @RuleDetailList << secrulerelatedinfo_tmp
            end
          end
        end
      end

      # 限速拦截日志
      class CCLogData < TencentCloud::Common::AbstractModel
        # @param List: CC拦截日志数据集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param Pages: 总页数。
        # @type Pages: Integer
        # @param TotalSize: 总条数。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cclog_tmp = CCLog.new
              cclog_tmp.deserialize(i)
              @List << cclog_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # 缓存规则配置。
      class CacheConfig < TencentCloud::Common::AbstractModel
        # @param Cache: 缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigCache`
        # @param NoCache: 不缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigNoCache`
        # @param FollowOrigin: 遵循源站配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigFollowOrigin`

        attr_accessor :Cache, :NoCache, :FollowOrigin
        
        def initialize(cache=nil, nocache=nil, followorigin=nil)
          @Cache = cache
          @NoCache = nocache
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          unless params['Cache'].nil?
            @Cache = CacheConfigCache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['NoCache'].nil?
            @NoCache = CacheConfigNoCache.new
            @NoCache.deserialize(params['NoCache'])
          end
          unless params['FollowOrigin'].nil?
            @FollowOrigin = CacheConfigFollowOrigin.new
            @FollowOrigin.deserialize(params['FollowOrigin'])
          end
        end
      end

      # 缓存时间设置
      class CacheConfigCache < TencentCloud::Common::AbstractModel
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

      # 缓存遵循源站配置
      class CacheConfigFollowOrigin < TencentCloud::Common::AbstractModel
        # @param Switch: 遵循源站配置开关，取值有：
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

      # 不缓存配置
      class CacheConfigNoCache < TencentCloud::Common::AbstractModel
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

      # 缓存键配置
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
        # @type QueryString: :class:`Tencentcloud::Teo.v20220106.models.QueryString`

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

      # 证书查询过滤条件
      class CertFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下:
        #  - host：域名。
        #  - certId: 证书ID
        #  - certAlias: 证书备用名
        #  - certType: default: 默认证书, upload: 上传证书, managed:腾讯云证书
        # @type Name: String
        # @param Values: 过滤字段值
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名host。
        # 模糊查询时，Value长度最大为1。
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

      # 查询结果排序条件。
      class CertSort < TencentCloud::Common::AbstractModel
        # @param Key: 排序字段，当前支持：
        # createTime，域名创建时间
        # certExpireTime，证书过期时间
        # certDeployTime,  证书部署时间
        # @type Key: String
        # @param Sequence: asc/desc，默认desc。
        # @type Sequence: String

        attr_accessor :Key, :Sequence
        
        def initialize(key=nil, sequence=nil)
          @Key = key
          @Sequence = sequence
        end

        def deserialize(params)
          @Key = params['Key']
          @Sequence = params['Sequence']
        end
      end

      # CheckCertificate请求参数结构体
      class CheckCertificateRequest < TencentCloud::Common::AbstractModel
        # @param Certificate: 证书
        # @type Certificate: String
        # @param PrivateKey: 私钥
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

      # 存储客户端请求IP的头部信息配置
      class ClientIp < TencentCloud::Common::AbstractModel
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

      # CNAME 状态
      class CnameStatus < TencentCloud::Common::AbstractModel
        # @param Name: 记录名称
        # @type Name: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Status: 状态
        # 生效：active
        # 不生效：moved
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Name, :Cname, :Status
        
        def initialize(name=nil, cname=nil, status=nil)
          @Name = name
          @Cname = cname
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Cname = params['Cname']
          @Status = params['Status']
        end
      end

      # 智能压缩配置
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

      # CreateApplicationProxy请求参数结构体
      class CreateApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
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
        # @param SessionPersist: 字段已经废弃。
        # @type SessionPersist: Boolean
        # @param ForwardClientIp: 字段已经废弃。
        # @type ForwardClientIp: String
        # @param Rule: 规则详细信息。
        # @type Rule: Array
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>不填写使用默认值instance。
        # @type ProxyType: String
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒。
        # 不填写使用默认值600。
        # @type SessionPersistTime: Integer
        # @param Ipv6: Ipv6访问配置。
        # 不填写表示关闭Ipv6访问。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220106.models.Ipv6Access`

        attr_accessor :ZoneId, :ZoneName, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :SessionPersist, :ForwardClientIp, :Rule, :ProxyType, :SessionPersistTime, :Ipv6
        
        def initialize(zoneid=nil, zonename=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, sessionpersist=nil, forwardclientip=nil, rule=nil, proxytype=nil, sessionpersisttime=nil, ipv6=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @SessionPersist = sessionpersist
          @ForwardClientIp = forwardclientip
          @Rule = rule
          @ProxyType = proxytype
          @SessionPersistTime = sessionpersisttime
          @Ipv6 = ipv6
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @SessionPersist = params['SessionPersist']
          @ForwardClientIp = params['ForwardClientIp']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
          @ProxyType = params['ProxyType']
          @SessionPersistTime = params['SessionPersistTime']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6Access.new
            @Ipv6.deserialize(params['Ipv6'])
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
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param Proto: 协议，取值为TCP或者UDP
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 80：80端口
        # 81-90：81至90端口
        # @type Port: Array
        # @param OriginType: 源站类型，取值：
        # custom：手动添加
        # origins：源站组
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # @type OriginValue: Array
        # @param ForwardClientIp: 传递客户端IP，当Proto=TCP时，取值：
        # TOA：TOA
        # PPV1: Proxy Protocol传递，协议版本V1
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # 当Proto=UDP时，取值：
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持
        # @type SessionPersist: Boolean

        attr_accessor :ZoneId, :ProxyId, :Proto, :Port, :OriginType, :OriginValue, :ForwardClientIp, :SessionPersist
        
        def initialize(zoneid=nil, proxyid=nil, proto=nil, port=nil, origintype=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
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

      # CreateApplicationProxyRules请求参数结构体
      class CreateApplicationProxyRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param Rule: 规则列表
        # @type Rule: Array

        attr_accessor :ZoneId, :ProxyId, :Rule
        
        def initialize(zoneid=nil, proxyid=nil, rule=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Rule = rule
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
        end
      end

      # CreateApplicationProxyRules返回参数结构体
      class CreateApplicationProxyRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 新增的规则ID数组
        # @type RuleId: Array
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

      # CreateCustomErrorPage请求参数结构体
      class CreateCustomErrorPageRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: zone的id
        # @type ZoneId: String
        # @param Entity: 具体所属实体
        # @type Entity: String
        # @param Name: 自定义页面的文件名
        # @type Name: String
        # @param Content: 自定义页面的内容
        # @type Content: String

        attr_accessor :ZoneId, :Entity, :Name, :Content
        
        def initialize(zoneid=nil, entity=nil, name=nil, content=nil)
          @ZoneId = zoneid
          @Entity = entity
          @Name = name
          @Content = content
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          @Name = params['Name']
          @Content = params['Content']
        end
      end

      # CreateCustomErrorPage返回参数结构体
      class CreateCustomErrorPageResponse < TencentCloud::Common::AbstractModel
        # @param PageId: 自定义页面上传后的唯一id
        # @type PageId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Mode: 代理模式，可选值：dns_only, cdn_only, secure_cdn
        # @type Mode: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer

        attr_accessor :ZoneId, :Type, :Name, :Content, :Mode, :Ttl, :Priority
        
        def initialize(zoneid=nil, type=nil, name=nil, content=nil, mode=nil, ttl=nil, priority=nil)
          @ZoneId = zoneid
          @Type = type
          @Name = name
          @Content = content
          @Mode = mode
          @Ttl = ttl
          @Priority = priority
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Mode = params['Mode']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
        end
      end

      # CreateDnsRecord返回参数结构体
      class CreateDnsRecordResponse < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名称
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Mode: 代理模式
        # @type Mode: String
        # @param Status: 解析状态
        # active: 生效
        # pending: 不生效
        # @type Status: String
        # @param Locked: 已锁定
        # @type Locked: Boolean
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Type, :Name, :Content, :Ttl, :Priority, :Mode, :Status, :Locked, :CreatedOn, :ModifiedOn, :ZoneId, :ZoneName, :Cname, :RequestId
        
        def initialize(id=nil, type=nil, name=nil, content=nil, ttl=nil, priority=nil, mode=nil, status=nil, locked=nil, createdon=nil, modifiedon=nil, zoneid=nil, zonename=nil, cname=nil, requestid=nil)
          @Id = id
          @Type = type
          @Name = name
          @Content = content
          @Ttl = ttl
          @Priority = priority
          @Mode = mode
          @Status = status
          @Locked = locked
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @ZoneId = zoneid
          @ZoneName = zonename
          @Cname = cname
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @Mode = params['Mode']
          @Status = params['Status']
          @Locked = params['Locked']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Cname = params['Cname']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancing请求参数结构体
      class CreateLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Host: 子域名
        # @type Host: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer

        attr_accessor :ZoneId, :Host, :Type, :OriginId, :TTL
        
        def initialize(zoneid=nil, host=nil, type=nil, originid=nil, ttl=nil)
          @ZoneId = zoneid
          @Host = host
          @Type = type
          @OriginId = originid
          @TTL = ttl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @Type = params['Type']
          @OriginId = params['OriginId']
          @TTL = params['TTL']
        end
      end

      # CreateLoadBalancing返回参数结构体
      class CreateLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOriginGroup请求参数结构体
      class CreateOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param OriginName: 源站组名称
        # @type OriginName: String
        # @param Type: 配置类型，当OriginType=self 时，需要填写：
        # area: 按区域配置
        # weight: 按权重配置
        # 当OriginType=third_party/cos 时，不需要填写
        # @type Type: String
        # @param Record: 源站记录
        # @type Record: Array
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param OriginType: 源站类型
        # self：自有源站
        # third_party：第三方源站
        # cos：腾讯云COS源站
        # @type OriginType: String

        attr_accessor :OriginName, :Type, :Record, :ZoneId, :OriginType
        
        def initialize(originname=nil, type=nil, record=nil, zoneid=nil, origintype=nil)
          @OriginName = originname
          @Type = type
          @Record = record
          @ZoneId = zoneid
          @OriginType = origintype
        end

        def deserialize(params)
          @OriginName = params['OriginName']
          @Type = params['Type']
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Record << originrecord_tmp
            end
          end
          @ZoneId = params['ZoneId']
          @OriginType = params['OriginType']
        end
      end

      # CreateOriginGroup返回参数结构体
      class CreateOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param OriginId: 新增的源站组ID
        # @type OriginId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginId, :RequestId
        
        def initialize(originid=nil, requestid=nil)
          @OriginId = originid
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginId = params['OriginId']
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
        # <li> ent: 全球内容分发网络（不包括中国大陆）企业版套餐； </li>
        # <li> ent_with_bot: 全球内容分发网络（不包括中国大陆）企业版套餐附带bot管理；</li>
        # <li> ent_cm: 中国大陆内容分发网络企业版套餐； </li>
        # <li> ent_cm_with_bot: 中国大陆内容分发网络企业版套餐附带bot管理。</li>当前账户可购买套餐类型请以<a href="https://tcloud4api.woa.com/document/product/1657/80124?!preview&!document=1">DescribeAvailablePlans</a>返回为准。
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
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Targets: 要预热的资源列表，每个元素格式类似如下:
        # http://www.example.com/example.txt
        # @type Targets: Array
        # @param EncodeUrl: 是否对url进行encode
        # 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        # @type EncodeUrl: Boolean
        # @param Headers: 附带的http头部信息
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
        # @param JobId: 任务ID
        # @type JobId: String
        # @param FailedList: 失败的任务列表
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
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Type: 类型，当前支持的类型：
        # - purge_url：URL
        # - purge_prefix：前缀
        # - purge_host：Hostname
        # - purge_all：全部缓存
        # @type Type: String
        # @param Targets: 要刷新的资源列表，每个元素格式依据Type而定
        # 1) Type = purge_host 时
        # 形如：www.example.com 或 foo.bar.example.com
        # 2) Type = purge_prefix 时
        # 形如：http://www.example.com/example
        # 3) Type = purge_url 时
        # 形如：https://www.example.com/example.jpg
        # 4）Type = purge_all 时
        # Targets可为空，不需要填写
        # @type Targets: Array
        # @param EncodeUrl: 若有编码转换，仅清除编码转换后匹配的资源
        # 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
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
        # @param JobId: 任务ID
        # @type JobId: String
        # @param FailedList: 失败的任务列表及原因
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

        attr_accessor :ZoneId, :RuleName, :Status, :Rules
        
        def initialize(zoneid=nil, rulename=nil, status=nil, rules=nil)
          @ZoneId = zoneid
          @RuleName = rulename
          @Status = status
          @Rules = rules
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleName = params['RuleName']
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleitem_tmp = RuleItem.new
              ruleitem_tmp.deserialize(i)
              @Rules << ruleitem_tmp
            end
          end
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

      # CreateZone请求参数结构体
      class CreateZoneRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名字
        # @type Name: String
        # @param Type: 接入方式，默认full
        # - full NS接入
        # - partial CNAME接入
        # @type Type: String
        # @param JumpStart: 是否跳过站点历史解析记录扫描
        # @type JumpStart: Boolean
        # @param Tags: 资源标签
        # @type Tags: Array

        attr_accessor :Name, :Type, :JumpStart, :Tags
        
        def initialize(name=nil, type=nil, jumpstart=nil, tags=nil)
          @Name = name
          @Type = type
          @JumpStart = jumpstart
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
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
        end
      end

      # CreateZone返回参数结构体
      class CreateZoneResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Type: 站点接入方式
        # @type Type: String
        # @param Status: 站点状态
        # - pending 未切换NS
        # - active NS 已切换到分配的 NS
        # - moved NS 从腾讯云切走
        # @type Status: String
        # @param OriginalNameServers: 当前使用的 NS 列表
        # @type OriginalNameServers: Array
        # @param NameServers: 给用户分配的 NS 列表
        # @type NameServers: Array
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 站点更新时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Type, :Status, :OriginalNameServers, :NameServers, :CreatedOn, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, type=nil, status=nil, originalnameservers=nil, nameservers=nil, createdon=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Type = type
          @Status = status
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # DDoS配置端口过滤
      class DDoSAcl < TencentCloud::Common::AbstractModel
        # @param DportEnd: 目的端口结束，取值范围0-65535。
        # @type DportEnd: Integer
        # @param DportStart: 目的端口开始，取值范围0-65535。
        # @type DportStart: Integer
        # @param SportEnd: 源端口结束，取值范围0-65535。
        # @type SportEnd: Integer
        # @param SportStart: 源端口开始，取值范围0-65535。
        # @type SportStart: Integer
        # @param Protocol: 协议，取值有：
        # <li>tcp ：tcp协议 ；</li>
        # <li>udp ：udp协议 ；</li>
        # <li>all ：全部协议 。</li>
        # @type Protocol: String
        # @param Action: 执行动作，取值为：
        # <li>drop ：丢弃 ；</li>
        # <li>transmit ：放行 ；</li>
        # <li>forward ：继续防护 。</li>
        # @type Action: String
        # @param Default: 是否为系统配置，取值为：
        # <li>0 ：修改配置 ；</li>
        # <li>1 ：系统默认配置 。</li>
        # @type Default: Integer

        attr_accessor :DportEnd, :DportStart, :SportEnd, :SportStart, :Protocol, :Action, :Default
        
        def initialize(dportend=nil, dportstart=nil, sportend=nil, sportstart=nil, protocol=nil, action=nil, default=nil)
          @DportEnd = dportend
          @DportStart = dportstart
          @SportEnd = sportend
          @SportStart = sportstart
          @Protocol = protocol
          @Action = action
          @Default = default
        end

        def deserialize(params)
          @DportEnd = params['DportEnd']
          @DportStart = params['DportStart']
          @SportEnd = params['SportEnd']
          @SportStart = params['SportStart']
          @Protocol = params['Protocol']
          @Action = params['Action']
          @Default = params['Default']
        end
      end

      # DDoS协议防护+连接防护
      class DDoSAntiPly < TencentCloud::Common::AbstractModel
        # @param DropTcp: tcp协议封禁，取值有：
        # <li>off ：关闭 ；</li>
        # <li>on ：开启 。</li>
        # @type DropTcp: String
        # @param DropUdp: udp协议封禁，取值有：
        # <li>off ：关闭 ；</li>
        # <li>on ：开启 。</li>
        # @type DropUdp: String
        # @param DropIcmp: icmp协议封禁，取值有：
        # <li>off ：关闭 ；</li>
        # <li>on ：开启 。</li>
        # @type DropIcmp: String
        # @param DropOther: 其他协议封禁，取值有：
        # <li>off ：关闭 ；</li>
        # <li>on ：开启 。</li>
        # @type DropOther: String
        # @param SourceCreateLimit: 源站每秒新连接限速，取值范围0-4294967295。
        # @type SourceCreateLimit: Integer
        # @param SourceConnectLimit: 源站并发连接控制，取值范围0-4294967295。
        # @type SourceConnectLimit: Integer
        # @param DestinationCreateLimit: 目的端口每秒新连接限速，取值范围0-4294967295。
        # @type DestinationCreateLimit: Integer
        # @param DestinationConnectLimit: 目的端口并发连接控制，取值范围0-4294967295。
        # @type DestinationConnectLimit: Integer
        # @param AbnormalConnectNum: 每秒异常连接数阈值，取值范围0-4294967295。
        # @type AbnormalConnectNum: Integer
        # @param AbnormalSynRatio: 异常syn报文百分比阈值，取值范围0-100。
        # @type AbnormalSynRatio: Integer
        # @param AbnormalSynNum: 异常syn报文阈值，取值范围0-65535。
        # @type AbnormalSynNum: Integer
        # @param ConnectTimeout: 每秒连接超时检测，取值范围0-65535。
        # @type ConnectTimeout: Integer
        # @param EmptyConnectProtect: 空连接防护开启，取值有：
        # <li>off ：关闭 ；</li>
        # <li>on ：开启 。</li>
        # @type EmptyConnectProtect: String
        # @param UdpShard: UDP分片开关，取值有：
        # <li>off ：关闭 ；</li>
        # <li>on ：开启 。</li>
        # @type UdpShard: String

        attr_accessor :DropTcp, :DropUdp, :DropIcmp, :DropOther, :SourceCreateLimit, :SourceConnectLimit, :DestinationCreateLimit, :DestinationConnectLimit, :AbnormalConnectNum, :AbnormalSynRatio, :AbnormalSynNum, :ConnectTimeout, :EmptyConnectProtect, :UdpShard
        
        def initialize(droptcp=nil, dropudp=nil, dropicmp=nil, dropother=nil, sourcecreatelimit=nil, sourceconnectlimit=nil, destinationcreatelimit=nil, destinationconnectlimit=nil, abnormalconnectnum=nil, abnormalsynratio=nil, abnormalsynnum=nil, connecttimeout=nil, emptyconnectprotect=nil, udpshard=nil)
          @DropTcp = droptcp
          @DropUdp = dropudp
          @DropIcmp = dropicmp
          @DropOther = dropother
          @SourceCreateLimit = sourcecreatelimit
          @SourceConnectLimit = sourceconnectlimit
          @DestinationCreateLimit = destinationcreatelimit
          @DestinationConnectLimit = destinationconnectlimit
          @AbnormalConnectNum = abnormalconnectnum
          @AbnormalSynRatio = abnormalsynratio
          @AbnormalSynNum = abnormalsynnum
          @ConnectTimeout = connecttimeout
          @EmptyConnectProtect = emptyconnectprotect
          @UdpShard = udpshard
        end

        def deserialize(params)
          @DropTcp = params['DropTcp']
          @DropUdp = params['DropUdp']
          @DropIcmp = params['DropIcmp']
          @DropOther = params['DropOther']
          @SourceCreateLimit = params['SourceCreateLimit']
          @SourceConnectLimit = params['SourceConnectLimit']
          @DestinationCreateLimit = params['DestinationCreateLimit']
          @DestinationConnectLimit = params['DestinationConnectLimit']
          @AbnormalConnectNum = params['AbnormalConnectNum']
          @AbnormalSynRatio = params['AbnormalSynRatio']
          @AbnormalSynNum = params['AbnormalSynNum']
          @ConnectTimeout = params['ConnectTimeout']
          @EmptyConnectProtect = params['EmptyConnectProtect']
          @UdpShard = params['UdpShard']
        end
      end

      # DDoS7层应用
      class DDoSApplication < TencentCloud::Common::AbstractModel
        # @param Host: 二级域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Status: 域名状态；
        # init  待切ns
        # offline 需要dns开启站点加速
        # process 在部署中，稍等一会
        # online 正常状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param AccelerateType: 加速开关；on-开启加速；off-关闭加速（AccelerateType：on，SecurityType：on，安全加速，未开防护增强；AccelerateType：off，SecurityType：on，安全加速，开启防护增强；AccelerateType：on，SecurityType：off，内容加速，未开防护增强）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccelerateType: String
        # @param SecurityType: 安全开关；on-开启安全；off-关闭安全（AccelerateType：on，SecurityType：on，安全加速，未开防护增强；AccelerateType：off，SecurityType：on，安全加速，开启防护增强；AccelerateType：on，SecurityType：off，内容加速，未开防护增强）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityType: String

        attr_accessor :Host, :Status, :AccelerateType, :SecurityType
        
        def initialize(host=nil, status=nil, acceleratetype=nil, securitytype=nil)
          @Host = host
          @Status = status
          @AccelerateType = acceleratetype
          @SecurityType = securitytype
        end

        def deserialize(params)
          @Host = params['Host']
          @Status = params['Status']
          @AccelerateType = params['AccelerateType']
          @SecurityType = params['SecurityType']
        end
      end

      # DDoS配置
      class DDoSConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # DDoS特征过滤
      class DDoSFeaturesFilter < TencentCloud::Common::AbstractModel
        # @param Action: 执行动作，取值有：
        # <li>drop ：丢弃 ；</li>
        # <li>transmit ：放行 ；</li>
        # <li>drop_block ：丢弃并拉黑 ；</li>
        # <li>forward ：继续防护 。</li>
        # @type Action: String
        # @param Protocol: 协议，取值有：
        # <li>tcp ：tcp协议 ；</li>
        # <li>udp ：udp协议 ；</li>
        # <li>icmp ：icmp协议 ；</li>
        # <li>all ：全部协议 。</li>
        # @type Protocol: String
        # @param DportStart: 目标端口开始，取值范围0-65535。
        # @type DportStart: Integer
        # @param DportEnd: 目标端口结束，取值范围0-65535。
        # @type DportEnd: Integer
        # @param PacketMin: 最小包长，取值范围0-1500。
        # @type PacketMin: Integer
        # @param PacketMax: 最大包长，取值范围0-1500。
        # @type PacketMax: Integer
        # @param SportStart: 源端口开始，取值范围0-65535。
        # @type SportStart: Integer
        # @param SportEnd: 源端口结束，取值范围0-65535。
        # @type SportEnd: Integer
        # @param MatchType: 匹配方式1，【特征1】，取值有：
        # <li>pcre ：正则匹配 ；</li>
        # <li>sunday ：字符串匹配 。</li>默认为空字符串。
        # @type MatchType: String
        # @param IsNot: 取非判断，该参数对MatchType配合使用，【特征1】，取值有：
        # <li>0 ：匹配 ；</li>
        # <li>1 ：不匹配 。</li>
        # @type IsNot: Integer
        # @param Offset: 偏移量1，【特征1】，取值范围0-1500。
        # @type Offset: Integer
        # @param Depth: 检测包字符深度，【特征1】，取值范围1-1500。
        # @type Depth: Integer
        # @param MatchBegin: 匹配开始层级，层级参考计算机网络结构，取值有：
        # <li>begin_l5 ：载荷开始检测 ；</li>
        # <li>begin_l4 ：tcp/udp首部开始检测 ；</li>
        # <li>begin_l3 ：ip首部开始检测 。</li>
        # @type MatchBegin: String
        # @param Str: 正则或字符串匹配的内容，【特征1】。
        # @type Str: String
        # @param MatchType2: 匹配方式2，【特征2】，取值有：
        # <li>pcre ：正则匹配 ；</li>
        # <li>sunday ：字符串匹配 。</li>默认为空字符串。
        # @type MatchType2: String
        # @param IsNot2: 取非判断2，该参数对MatchType2配合使用，【特征2】，取值有：
        # <li>0 ：匹配 ；</li>
        # <li>1 ：不匹配 。</li>
        # @type IsNot2: Integer
        # @param Offset2: 偏移量2，【特征2】，取值范围0-1500。
        # @type Offset2: Integer
        # @param Depth2: 检测包字符深度，【特征2】，取值范围1-1500。
        # @type Depth2: Integer
        # @param MatchBegin2: 匹配开始层级，层级参考计算机网络结构，取值有：
        # <li>begin_l5 ：载荷开始检测 ；</li>
        # <li>begin_l4 ：tcp/udp首部开始检测；</li>
        # <li>begin_l3 ：ip首部开始检测 。</li>
        # @type MatchBegin2: String
        # @param Str2: 正则或字符串匹配的内容，【特征2】。
        # @type Str2: String
        # @param MatchLogic: 多特征关系，仅配置【特征1】时填 none，存在【特征2】配置可不填。
        # @type MatchLogic: String

        attr_accessor :Action, :Protocol, :DportStart, :DportEnd, :PacketMin, :PacketMax, :SportStart, :SportEnd, :MatchType, :IsNot, :Offset, :Depth, :MatchBegin, :Str, :MatchType2, :IsNot2, :Offset2, :Depth2, :MatchBegin2, :Str2, :MatchLogic
        
        def initialize(action=nil, protocol=nil, dportstart=nil, dportend=nil, packetmin=nil, packetmax=nil, sportstart=nil, sportend=nil, matchtype=nil, isnot=nil, offset=nil, depth=nil, matchbegin=nil, str=nil, matchtype2=nil, isnot2=nil, offset2=nil, depth2=nil, matchbegin2=nil, str2=nil, matchlogic=nil)
          @Action = action
          @Protocol = protocol
          @DportStart = dportstart
          @DportEnd = dportend
          @PacketMin = packetmin
          @PacketMax = packetmax
          @SportStart = sportstart
          @SportEnd = sportend
          @MatchType = matchtype
          @IsNot = isnot
          @Offset = offset
          @Depth = depth
          @MatchBegin = matchbegin
          @Str = str
          @MatchType2 = matchtype2
          @IsNot2 = isnot2
          @Offset2 = offset2
          @Depth2 = depth2
          @MatchBegin2 = matchbegin2
          @Str2 = str2
          @MatchLogic = matchlogic
        end

        def deserialize(params)
          @Action = params['Action']
          @Protocol = params['Protocol']
          @DportStart = params['DportStart']
          @DportEnd = params['DportEnd']
          @PacketMin = params['PacketMin']
          @PacketMax = params['PacketMax']
          @SportStart = params['SportStart']
          @SportEnd = params['SportEnd']
          @MatchType = params['MatchType']
          @IsNot = params['IsNot']
          @Offset = params['Offset']
          @Depth = params['Depth']
          @MatchBegin = params['MatchBegin']
          @Str = params['Str']
          @MatchType2 = params['MatchType2']
          @IsNot2 = params['IsNot2']
          @Offset2 = params['Offset2']
          @Depth2 = params['Depth2']
          @MatchBegin2 = params['MatchBegin2']
          @Str2 = params['Str2']
          @MatchLogic = params['MatchLogic']
        end
      end

      # DDoS地域封禁
      class DDoSGeoIp < TencentCloud::Common::AbstractModel
        # @param Switch: 区域封禁清空标识，取值有：
        # <li>off ：清空地域封禁列表 ；</li>
        # <li>on ：不做处理 。</li>
        # @type Switch: String
        # @param RegionId: 地域信息，ID参考[DescribeSecurityPolicyRegions](https://tcloud4api.woa.com/document/product/1657/76031?!preview&!document=1)。
        # @type RegionId: Array

        attr_accessor :Switch, :RegionId
        
        def initialize(switch=nil, regionid=nil)
          @Switch = switch
          @RegionId = regionid
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RegionId = params['RegionId']
        end
      end

      # DDoS封禁等级
      class DDoSStatusInfo < TencentCloud::Common::AbstractModel
        # @param AiStatus: 暂不支持，默认值off。
        # @type AiStatus: String
        # @param Appid: 废弃字段。
        # @type Appid: String
        # @param PlyLevel: 策略等级，取值有:
        # <li>low ：宽松 ；</li>
        # <li>middle ：适中 ；</li>
        # <li>high : 严格。 </li>
        # @type PlyLevel: String

        attr_accessor :AiStatus, :Appid, :PlyLevel
        
        def initialize(aistatus=nil, appid=nil, plylevel=nil)
          @AiStatus = aistatus
          @Appid = appid
          @PlyLevel = plylevel
        end

        def deserialize(params)
          @AiStatus = params['AiStatus']
          @Appid = params['Appid']
          @PlyLevel = params['PlyLevel']
        end
      end

      # DDoS黑白名单
      class DDoSUserAllowBlockIP < TencentCloud::Common::AbstractModel
        # @param Ip: 客户端IP。
        # @type Ip: String
        # @param Mask: 掩码。
        # @type Mask: Integer
        # @param Type: 类型，取值有：
        # <li>block ：丢弃 ；</li>
        # <li>allow ：允许。</li>
        # @type Type: String
        # @param UpdateTime: 10位时间戳，例如1199116800。
        # @type UpdateTime: Integer
        # @param Ip2: 客户端IP2，设置IP范围时使用，例如 1.1.1.1-1.1.1.2。
        # @type Ip2: String
        # @param Mask2: 掩码2，设置IP网段范围时使用，例如 1.1.1.0/24-1.1.2.0/24。
        # @type Mask2: Integer

        attr_accessor :Ip, :Mask, :Type, :UpdateTime, :Ip2, :Mask2
        
        def initialize(ip=nil, mask=nil, type=nil, updatetime=nil, ip2=nil, mask2=nil)
          @Ip = ip
          @Mask = mask
          @Type = type
          @UpdateTime = updatetime
          @Ip2 = ip2
          @Mask2 = mask2
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Mask = params['Mask']
          @Type = params['Type']
          @UpdateTime = params['UpdateTime']
          @Ip2 = params['Ip2']
          @Mask2 = params['Mask2']
        end
      end

      # DDos攻击事件对象
      class DDosAttackEvent < TencentCloud::Common::AbstractModel
        # @param PolicyId: ddos 策略组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param AttackType: 攻击类型(对应交互事件名称)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackType: String
        # @param AttackStatus: 攻击状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackStatus: Integer
        # @param AttackMaxBandWidth: 攻击最大带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackMaxBandWidth: Integer
        # @param AttackPacketMaxRate: 攻击包速率峰值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackPacketMaxRate: Integer
        # @param AttackStartTime: 攻击开始时间 单位为s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackStartTime: Integer
        # @param AttackEndTime: 攻击结束时间 单位为s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackEndTime: Integer
        # @param EventId: 事件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param ZoneId: 站点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String

        attr_accessor :PolicyId, :AttackType, :AttackStatus, :AttackMaxBandWidth, :AttackPacketMaxRate, :AttackStartTime, :AttackEndTime, :EventId, :ZoneId
        
        def initialize(policyid=nil, attacktype=nil, attackstatus=nil, attackmaxbandwidth=nil, attackpacketmaxrate=nil, attackstarttime=nil, attackendtime=nil, eventid=nil, zoneid=nil)
          @PolicyId = policyid
          @AttackType = attacktype
          @AttackStatus = attackstatus
          @AttackMaxBandWidth = attackmaxbandwidth
          @AttackPacketMaxRate = attackpacketmaxrate
          @AttackStartTime = attackstarttime
          @AttackEndTime = attackendtime
          @EventId = eventid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttackType = params['AttackType']
          @AttackStatus = params['AttackStatus']
          @AttackMaxBandWidth = params['AttackMaxBandWidth']
          @AttackPacketMaxRate = params['AttackPacketMaxRate']
          @AttackStartTime = params['AttackStartTime']
          @AttackEndTime = params['AttackEndTime']
          @EventId = params['EventId']
          @ZoneId = params['ZoneId']
        end
      end

      # DDos攻击事件数据
      class DDosAttackEventData < TencentCloud::Common::AbstractModel
        # @param List: 攻击事件数据集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Pages: 总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              ddosattackevent_tmp = DDosAttackEvent.new
              ddosattackevent_tmp.deserialize(i)
              @List << ddosattackevent_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # ddos 攻击事件的详情
      class DDosAttackEventDetailData < TencentCloud::Common::AbstractModel
        # @param AttackStatus: 攻击状态，取值有：
        # <li>1 ：观察中 ；</li>
        # <li>2 ：攻击开始 ；</li>
        # <li>3 ：攻击结束 。</li>
        # @type AttackStatus: Integer
        # @param AttackType: 攻击类型。
        # @type AttackType: String
        # @param EndTime: 结束时间。
        # @type EndTime: Integer
        # @param StartTime: 开始时间。
        # @type StartTime: Integer
        # @param MaxBandWidth: 最大带宽。
        # @type MaxBandWidth: Integer
        # @param PacketMaxRate: 最大包速率。
        # @type PacketMaxRate: Integer
        # @param EventId: 事件Id。
        # @type EventId: String
        # @param PolicyId: ddos 策略组id。
        # @type PolicyId: Integer

        attr_accessor :AttackStatus, :AttackType, :EndTime, :StartTime, :MaxBandWidth, :PacketMaxRate, :EventId, :PolicyId
        
        def initialize(attackstatus=nil, attacktype=nil, endtime=nil, starttime=nil, maxbandwidth=nil, packetmaxrate=nil, eventid=nil, policyid=nil)
          @AttackStatus = attackstatus
          @AttackType = attacktype
          @EndTime = endtime
          @StartTime = starttime
          @MaxBandWidth = maxbandwidth
          @PacketMaxRate = packetmaxrate
          @EventId = eventid
          @PolicyId = policyid
        end

        def deserialize(params)
          @AttackStatus = params['AttackStatus']
          @AttackType = params['AttackType']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @MaxBandWidth = params['MaxBandWidth']
          @PacketMaxRate = params['PacketMaxRate']
          @EventId = params['EventId']
          @PolicyId = params['PolicyId']
        end
      end

      # DDos攻击事件对象
      class DDosAttackSourceEvent < TencentCloud::Common::AbstractModel
        # @param AttackSourceIp: 攻击源ip。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackSourceIp: String
        # @param AttackRegion: 地区（国家）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackRegion: String
        # @param AttackFlow: 累计攻击流量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackFlow: Integer
        # @param AttackPacketNum: 累计攻击包量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackPacketNum: Integer

        attr_accessor :AttackSourceIp, :AttackRegion, :AttackFlow, :AttackPacketNum
        
        def initialize(attacksourceip=nil, attackregion=nil, attackflow=nil, attackpacketnum=nil)
          @AttackSourceIp = attacksourceip
          @AttackRegion = attackregion
          @AttackFlow = attackflow
          @AttackPacketNum = attackpacketnum
        end

        def deserialize(params)
          @AttackSourceIp = params['AttackSourceIp']
          @AttackRegion = params['AttackRegion']
          @AttackFlow = params['AttackFlow']
          @AttackPacketNum = params['AttackPacketNum']
        end
      end

      # DDos攻击源数据
      class DDosAttackSourceEventData < TencentCloud::Common::AbstractModel
        # @param List: DDos攻击源数据集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Pages: 总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              ddosattacksourceevent_tmp = DDosAttackSourceEvent.new
              ddosattacksourceevent_tmp.deserialize(i)
              @List << ddosattacksourceevent_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # DDos主攻击事件
      class DDosMajorAttackEvent < TencentCloud::Common::AbstractModel
        # @param PolicyId: ddos 策略组id。
        # @type PolicyId: Integer
        # @param AttackMaxBandWidth: 攻击最大带宽。
        # @type AttackMaxBandWidth: Integer
        # @param AttackTime: 攻击请求时间，采用unix秒级时间戳。
        # @type AttackTime: Integer

        attr_accessor :PolicyId, :AttackMaxBandWidth, :AttackTime
        
        def initialize(policyid=nil, attackmaxbandwidth=nil, attacktime=nil)
          @PolicyId = policyid
          @AttackMaxBandWidth = attackmaxbandwidth
          @AttackTime = attacktime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttackMaxBandWidth = params['AttackMaxBandWidth']
          @AttackTime = params['AttackTime']
        end
      end

      # 主攻击对象Data
      class DDosMajorAttackEventData < TencentCloud::Common::AbstractModel
        # @param List: DDosMajorAttackEvent ddos 攻击事件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Pages: 总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              ddosmajorattackevent_tmp = DDosMajorAttackEvent.new
              ddosmajorattackevent_tmp.deserialize(i)
              @List << ddosmajorattackevent_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # 统计曲线数据项
      class DataItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Value: 数值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ddos端口过滤
      class DdosAcls < TencentCloud::Common::AbstractModel
        # @param Acl: 端口过滤规则数组。
        # @type Acl: Array
        # @param Switch: 清空规则标识，取值有：
        # <li>off ：清空端口过滤规则列表，Acl无需填写。 ；</li>
        # <li>on ：配置端口过滤规则，需填写Acl参数。</li>默认值为on。
        # @type Switch: String

        attr_accessor :Acl, :Switch
        
        def initialize(acl=nil, switch=nil)
          @Acl = acl
          @Switch = switch
        end

        def deserialize(params)
          unless params['Acl'].nil?
            @Acl = []
            params['Acl'].each do |i|
              ddosacl_tmp = DDoSAcl.new
              ddosacl_tmp.deserialize(i)
              @Acl << ddosacl_tmp
            end
          end
          @Switch = params['Switch']
        end
      end

      # ddos黑白名单
      class DdosAllowBlock < TencentCloud::Common::AbstractModel
        # @param UserAllowBlockIp: 黑白名单数组。
        # @type UserAllowBlockIp: Array
        # @param Switch: 开关标识防护是否清空，取值有：
        # <li>off ：清空黑白名单列表，UserAllowBlockIp无需填写。 ；</li>
        # <li>on ：配置黑白名单，需填写UserAllowBlockIp参数。</li>默认值为on。
        # @type Switch: String

        attr_accessor :UserAllowBlockIp, :Switch
        
        def initialize(userallowblockip=nil, switch=nil)
          @UserAllowBlockIp = userallowblockip
          @Switch = switch
        end

        def deserialize(params)
          unless params['UserAllowBlockIp'].nil?
            @UserAllowBlockIp = []
            params['UserAllowBlockIp'].each do |i|
              ddosuserallowblockip_tmp = DDoSUserAllowBlockIP.new
              ddosuserallowblockip_tmp.deserialize(i)
              @UserAllowBlockIp << ddosuserallowblockip_tmp
            end
          end
          @Switch = params['Switch']
        end
      end

      # ddos特征过滤
      class DdosPacketFilter < TencentCloud::Common::AbstractModel
        # @param PacketFilter: 特征过滤规则数组。
        # @type PacketFilter: Array
        # @param Switch: 特征过滤清空标识，取值有：
        # <li>off ：清空特征过滤规则，无需填写 PacketFilter 参数 ；</li>
        # <li>on ：配置特征过滤规则，需填写 PacketFilter 参数。</li>默认值为on。
        # @type Switch: String

        attr_accessor :PacketFilter, :Switch
        
        def initialize(packetfilter=nil, switch=nil)
          @PacketFilter = packetfilter
          @Switch = switch
        end

        def deserialize(params)
          unless params['PacketFilter'].nil?
            @PacketFilter = []
            params['PacketFilter'].each do |i|
              ddosfeaturesfilter_tmp = DDoSFeaturesFilter.new
              ddosfeaturesfilter_tmp.deserialize(i)
              @PacketFilter << ddosfeaturesfilter_tmp
            end
          end
          @Switch = params['Switch']
        end
      end

      # Ddos防护配置
      class DdosRule < TencentCloud::Common::AbstractModel
        # @param DdosStatusInfo: DDoS防护等级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosStatusInfo: :class:`Tencentcloud::Teo.v20220106.models.DDoSStatusInfo`
        # @param DdosGeoIp: DDoS地域封禁。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosGeoIp: :class:`Tencentcloud::Teo.v20220106.models.DDoSGeoIp`
        # @param DdosAllowBlock: DDoS黑白名单。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosAllowBlock: :class:`Tencentcloud::Teo.v20220106.models.DdosAllowBlock`
        # @param DdosAntiPly: DDoS 协议封禁+连接防护。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosAntiPly: :class:`Tencentcloud::Teo.v20220106.models.DDoSAntiPly`
        # @param DdosPacketFilter: DDoS特征过滤。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosPacketFilter: :class:`Tencentcloud::Teo.v20220106.models.DdosPacketFilter`
        # @param DdosAcl: DDoS端口过滤。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosAcl: :class:`Tencentcloud::Teo.v20220106.models.DdosAcls`
        # @param Switch: DDoS开关，取值有:
        # <li>on ：开启 ；</li>
        # <li>off ：关闭 。</li>
        # @type Switch: String
        # @param UdpShardOpen: UDP分片功能是否支持，取值有:
        # <li>on ：支持 ；</li>
        # <li>off ：不支持 。</li>
        # @type UdpShardOpen: String
        # @param DdosSpeedLimit: DDoS源站访问速率限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosSpeedLimit: :class:`Tencentcloud::Teo.v20220106.models.DdosSpeedLimit`

        attr_accessor :DdosStatusInfo, :DdosGeoIp, :DdosAllowBlock, :DdosAntiPly, :DdosPacketFilter, :DdosAcl, :Switch, :UdpShardOpen, :DdosSpeedLimit
        
        def initialize(ddosstatusinfo=nil, ddosgeoip=nil, ddosallowblock=nil, ddosantiply=nil, ddospacketfilter=nil, ddosacl=nil, switch=nil, udpshardopen=nil, ddosspeedlimit=nil)
          @DdosStatusInfo = ddosstatusinfo
          @DdosGeoIp = ddosgeoip
          @DdosAllowBlock = ddosallowblock
          @DdosAntiPly = ddosantiply
          @DdosPacketFilter = ddospacketfilter
          @DdosAcl = ddosacl
          @Switch = switch
          @UdpShardOpen = udpshardopen
          @DdosSpeedLimit = ddosspeedlimit
        end

        def deserialize(params)
          unless params['DdosStatusInfo'].nil?
            @DdosStatusInfo = DDoSStatusInfo.new
            @DdosStatusInfo.deserialize(params['DdosStatusInfo'])
          end
          unless params['DdosGeoIp'].nil?
            @DdosGeoIp = DDoSGeoIp.new
            @DdosGeoIp.deserialize(params['DdosGeoIp'])
          end
          unless params['DdosAllowBlock'].nil?
            @DdosAllowBlock = DdosAllowBlock.new
            @DdosAllowBlock.deserialize(params['DdosAllowBlock'])
          end
          unless params['DdosAntiPly'].nil?
            @DdosAntiPly = DDoSAntiPly.new
            @DdosAntiPly.deserialize(params['DdosAntiPly'])
          end
          unless params['DdosPacketFilter'].nil?
            @DdosPacketFilter = DdosPacketFilter.new
            @DdosPacketFilter.deserialize(params['DdosPacketFilter'])
          end
          unless params['DdosAcl'].nil?
            @DdosAcl = DdosAcls.new
            @DdosAcl.deserialize(params['DdosAcl'])
          end
          @Switch = params['Switch']
          @UdpShardOpen = params['UdpShardOpen']
          unless params['DdosSpeedLimit'].nil?
            @DdosSpeedLimit = DdosSpeedLimit.new
            @DdosSpeedLimit.deserialize(params['DdosSpeedLimit'])
          end
        end
      end

      # DDoS端口限速
      class DdosSpeedLimit < TencentCloud::Common::AbstractModel
        # @param PackageLimit: 源站包量限制，支持单位有pps、Kpps、Mpps、Gpps。支持范围1 pps-10000 Gpps。"0 pps"或其他单位数值为0，即不限包。""为不更新。
        # @type PackageLimit: String
        # @param FluxLimit: 源站流量限制，支持单位有bps、Kbps、Mbps、Gbps，支持范围1 bps-10000 Gbps。"0 bps"或其他单位数值为0，即不限流。""为不更新。
        # @type FluxLimit: String

        attr_accessor :PackageLimit, :FluxLimit
        
        def initialize(packagelimit=nil, fluxlimit=nil)
          @PackageLimit = packagelimit
          @FluxLimit = fluxlimit
        end

        def deserialize(params)
          @PackageLimit = params['PackageLimit']
          @FluxLimit = params['FluxLimit']
        end
      end

      # https 服务端证书配置
      class DefaultServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID, 默认证书ID, 或在 SSL 证书管理进行证书托管时自动生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Alias: 证书备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Type: 证书类型:
        # default: 默认证书
        # upload:用户上传
        # managed:腾讯云托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpireTime: 证书过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param EffectiveTime: 证书生效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectiveTime: String
        # @param CommonName: 证书公用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonName: String
        # @param SubjectAltName: 证书SAN域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param Status: 证书状态:
        # applying: 证书申请中
        # failed: 证书(申请)失败
        # processing: 证书部署中
        # deployed: 证书已部署
        # disabled: 证书被禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Message: Status为失败时,此字段返回失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :EffectiveTime, :CommonName, :SubjectAltName, :Status, :Message
        
        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, effectivetime=nil, commonname=nil, subjectaltname=nil, status=nil, message=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @EffectiveTime = effectivetime
          @CommonName = commonname
          @SubjectAltName = subjectaltname
          @Status = status
          @Message = message
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
        end
      end

      # DeleteApplicationProxy请求参数结构体
      class DeleteApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
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
        # @param ProxyId: 代理ID
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

      # DeleteApplicationProxyRule请求参数结构体
      class DeleteApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param RuleId: 规则ID
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

      # DeleteDnsRecords请求参数结构体
      class DeleteDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Ids: 记录 ID
        # @type Ids: Array

        attr_accessor :ZoneId, :Ids
        
        def initialize(zoneid=nil, ids=nil)
          @ZoneId = zoneid
          @Ids = ids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Ids = params['Ids']
        end
      end

      # DeleteDnsRecords返回参数结构体
      class DeleteDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Ids: 记录 ID
        # @type Ids: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ids, :RequestId
        
        def initialize(ids=nil, requestid=nil)
          @Ids = ids
          @RequestId = requestid
        end

        def deserialize(params)
          @Ids = params['Ids']
          @RequestId = params['RequestId']
        end
      end

      # DeleteLoadBalancing请求参数结构体
      class DeleteLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String

        attr_accessor :ZoneId, :LoadBalancingId
        
        def initialize(zoneid=nil, loadbalancingid=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
        end
      end

      # DeleteLoadBalancing返回参数结构体
      class DeleteLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteOriginGroup请求参数结构体
      class DeleteOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String

        attr_accessor :OriginId, :ZoneId
        
        def initialize(originid=nil, zoneid=nil)
          @OriginId = originid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @OriginId = params['OriginId']
          @ZoneId = params['ZoneId']
        end
      end

      # DeleteOriginGroup返回参数结构体
      class DeleteOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginId, :RequestId
        
        def initialize(originid=nil, requestid=nil)
          @OriginId = originid
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginId = params['OriginId']
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
        # @param Id: 站点 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteZone返回参数结构体
      class DeleteZoneResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
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

      # DescribeApplicationProxyDetail请求参数结构体
      class DescribeApplicationProxyDetailRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 实例ID。
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

      # DescribeApplicationProxyDetail返回参数结构体
      class DescribeApplicationProxyDetailResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 实例ID。
        # @type ProxyId: String
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
        # @param ForwardClientIp: 字段已经废弃。
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经废弃。
        # @type SessionPersist: Boolean
        # @param Rule: 规则列表。
        # @type Rule: Array
        # @param Status: 状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用；</li>
        # <li>progress：部署中。</li>
        # @type Status: String
        # @param ScheduleValue: 调度信息。
        # @type ScheduleValue: Array
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param SessionPersistTime: 会话保持时间。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>
        # @type ProxyType: String
        # @param HostId: 当ProxyType=hostname时：
        # 表示代理加速唯一标识。
        # @type HostId: String
        # @param Ipv6: IPv6访问配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220106.models.Ipv6Access`
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :Status, :ScheduleValue, :UpdateTime, :ZoneId, :ZoneName, :SessionPersistTime, :ProxyType, :HostId, :Ipv6, :Area, :RequestId
        
        def initialize(proxyid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, status=nil, schedulevalue=nil, updatetime=nil, zoneid=nil, zonename=nil, sessionpersisttime=nil, proxytype=nil, hostid=nil, ipv6=nil, area=nil, requestid=nil)
          @ProxyId = proxyid
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @Rule = rule
          @Status = status
          @ScheduleValue = schedulevalue
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @HostId = hostid
          @Ipv6 = ipv6
          @Area = area
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @Rule << applicationproxyrule_tmp
            end
          end
          @Status = params['Status']
          @ScheduleValue = params['ScheduleValue']
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
          @HostId = params['HostId']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6Access.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          @Area = params['Area']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationProxy请求参数结构体
      class DescribeApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为10，最大可设置为1000。
        # @type Limit: Integer
        # @param ProxyId: 代理ID。
        # 当ProxyId为空时，表示查询站点下所有应用代理的列表。
        # @type ProxyId: String

        attr_accessor :ZoneId, :Offset, :Limit, :ProxyId
        
        def initialize(zoneid=nil, offset=nil, limit=nil, proxyid=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProxyId = params['ProxyId']
        end
      end

      # DescribeApplicationProxy返回参数结构体
      class DescribeApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 应用代理列表。
        # @type Data: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param Quota: 字段已废弃。
        # @type Quota: Integer
        # @param IpCount: 当ProxyId为空时，表示套餐内PlatType为ip的Anycast IP的实例数量。
        # @type IpCount: Integer
        # @param DomainCount: 当ProxyId为空时，表示套餐内PlatType为domain的CNAME的实例数量。
        # @type DomainCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :Quota, :IpCount, :DomainCount, :RequestId
        
        def initialize(data=nil, totalcount=nil, quota=nil, ipcount=nil, domaincount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @Quota = quota
          @IpCount = ipcount
          @DomainCount = domaincount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              applicationproxy_tmp = ApplicationProxy.new
              applicationproxy_tmp.deserialize(i)
              @Data << applicationproxy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Quota = params['Quota']
          @IpCount = params['IpCount']
          @DomainCount = params['DomainCount']
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
        # @param PlanInfoList: 当前账户可购买套餐类型及相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlanInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanInfoList, :RequestId
        
        def initialize(planinfolist=nil, requestid=nil)
          @PlanInfoList = planinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlanInfoList'].nil?
            @PlanInfoList = []
            params['PlanInfoList'].each do |i|
              planinfo_tmp = PlanInfo.new
              planinfo_tmp.deserialize(i)
              @PlanInfoList << planinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBotLog请求参数结构体
      class DescribeBotLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param ZoneIds: 站点集合，不填默认查询所有站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认查询所有子域名。
        # @type Domains: Array
        # @param QueryCondition: 筛选条件，取值有：
        # <li>action ：执行动作（处置方式）；</li>
        # <li>sipCountryCode ：ip所在国家 ；</li>
        # <li>attackIp ：攻击ip ；</li>
        # <li>ruleId ：规则id ；</li>
        # <li>eventId ：事件id ；</li>
        # <li>ua ：用户代理 ；</li>
        # <li>requestMethod ：请求方法 ；</li>
        # <li>uri ：统一资源标识符 。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :ZoneIds, :Domains, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zoneids=nil, domains=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
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
          @Area = params['Area']
        end
      end

      # DescribeBotLog返回参数结构体
      class DescribeBotLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: Bot攻击数据内容。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.BotLogData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BotLogData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBotManagedRules请求参数结构体
      class DescribeBotManagedRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 子域名/应用名
        # @type Entity: String
        # @param Page: 页数
        # @type Page: Integer
        # @param PerPage: 每页数量
        # @type PerPage: Integer
        # @param RuleType: idcid/sipbot/uabot规则类型，空代表拉取全部
        # @type RuleType: String

        attr_accessor :ZoneId, :Entity, :Page, :PerPage, :RuleType
        
        def initialize(zoneid=nil, entity=nil, page=nil, perpage=nil, ruletype=nil)
          @ZoneId = zoneid
          @Entity = entity
          @Page = page
          @PerPage = perpage
          @RuleType = ruletype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          @Page = params['Page']
          @PerPage = params['PerPage']
          @RuleType = params['RuleType']
        end
      end

      # DescribeBotManagedRules返回参数结构体
      class DescribeBotManagedRulesResponse < TencentCloud::Common::AbstractModel
        # @param Count: 本次返回的规则数
        # @type Count: Integer
        # @param Rules: Bot规则
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Rules, :Total, :RequestId
        
        def initialize(count=nil, rules=nil, total=nil, requestid=nil)
          @Count = count
          @Rules = rules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              botmanagedruledetail_tmp = BotManagedRuleDetail.new
              botmanagedruledetail_tmp.deserialize(i)
              @Rules << botmanagedruledetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCnameStatus请求参数结构体
      class DescribeCnameStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Names: 域名列表
        # @type Names: Array

        attr_accessor :ZoneId, :Names
        
        def initialize(zoneid=nil, names=nil)
          @ZoneId = zoneid
          @Names = names
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Names = params['Names']
        end
      end

      # DescribeCnameStatus返回参数结构体
      class DescribeCnameStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态列表
        # @type Status: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Status'].nil?
            @Status = []
            params['Status'].each do |i|
              cnamestatus_tmp = CnameStatus.new
              cnamestatus_tmp.deserialize(i)
              @Status << cnamestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSPolicy请求参数结构体
      class DescribeDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略组id
        # @type PolicyId: Integer
        # @param ZoneId: 一级域名zone
        # @type ZoneId: String

        attr_accessor :PolicyId, :ZoneId
        
        def initialize(policyid=nil, zoneid=nil)
          @PolicyId = policyid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeDDoSPolicy返回参数结构体
      class DescribeDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param DdosRule: DDoS防护配置
        # @type DdosRule: :class:`Tencentcloud::Teo.v20220106.models.DdosRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DdosRule, :RequestId
        
        def initialize(ddosrule=nil, requestid=nil)
          @DdosRule = ddosrule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DdosRule'].nil?
            @DdosRule = DdosRule.new
            @DdosRule.deserialize(params['DdosRule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDosAttackData请求参数结构体
      class DescribeDDosAttackDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 统计指标列表，取值有：
        # <li>ddos_attackMaxBandwidth ：攻击带宽峰值 ；</li>
        # <li>ddos_attackMaxPackageRate：攻击包速率峰值  ；</li>
        # <li>ddos_attackBandwidth ：攻击带宽曲线 ；</li>
        # <li>ddos_attackPackageRate ：攻击包速率曲线 。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param PolicyIds: ddos策略组id列表，不填默认选择全部策略id。
        # @type PolicyIds: Array
        # @param Port: 端口号。
        # @type Port: Integer
        # @param ProtocolType: 协议类型，取值有：
        # <li>tcp ；</li>
        # <li>udp ；</li>
        # <li>all 。</li>
        # @type ProtocolType: String
        # @param AttackType: 攻击类型，取值有：
        # <li>flood ；</li>
        # <li>icmpFlood ；</li>
        # <li>all 。</li>
        # @type AttackType: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :PolicyIds, :Port, :ProtocolType, :AttackType, :Interval, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, policyids=nil, port=nil, protocoltype=nil, attacktype=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @Port = port
          @ProtocolType = protocoltype
          @AttackType = attacktype
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @PolicyIds = params['PolicyIds']
          @Port = params['Port']
          @ProtocolType = params['ProtocolType']
          @AttackType = params['AttackType']
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeDDosAttackData返回参数结构体
      class DescribeDDosAttackDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击数据内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :Interval, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, interval=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @Interval = interval
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
          @Status = params['Status']
          @Msg = params['Msg']
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDosAttackEventDetail请求参数结构体
      class DescribeDDosAttackEventDetailRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件id。
        # @type EventId: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :EventId, :Area
        
        def initialize(eventid=nil, area=nil)
          @EventId = eventid
          @Area = area
        end

        def deserialize(params)
          @EventId = params['EventId']
          @Area = params['Area']
        end
      end

      # DescribeDDosAttackEventDetail返回参数结构体
      class DescribeDDosAttackEventDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击事件详情。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosAttackEventDetailData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DDosAttackEventDetailData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDosAttackEvent请求参数结构体
      class DescribeDDosAttackEventRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param PolicyIds: ddos策略组id列表，不填默认选择全部策略Id。
        # @type PolicyIds: Array
        # @param ZoneIds: 站点id列表，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param ProtocolType: 协议类型，取值有：
        # <li>tcp ；</li>
        # <li>udp ；</li>
        # <li>all 。</li>
        # @type ProtocolType: String
        # @param IsShowDetail: 是否展示详情，取值有：
        # <li>Y ：展示 ；</li>
        # <li>N ：不展示 。</li>默认为Y。
        # @type IsShowDetail: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ZoneIds, :ProtocolType, :IsShowDetail, :Area
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, zoneids=nil, protocoltype=nil, isshowdetail=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ZoneIds = zoneids
          @ProtocolType = protocoltype
          @IsShowDetail = isshowdetail
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @PolicyIds = params['PolicyIds']
          @ZoneIds = params['ZoneIds']
          @ProtocolType = params['ProtocolType']
          @IsShowDetail = params['IsShowDetail']
          @Area = params['Area']
        end
      end

      # DescribeDDosAttackEvent返回参数结构体
      class DescribeDDosAttackEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击事件数据。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosAttackEventData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DDosAttackEventData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDosAttackSourceEvent请求参数结构体
      class DescribeDDosAttackSourceEventRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param PolicyIds: ddos策略组id 集合，不填默认选择全部策略id。
        # @type PolicyIds: Array
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param ProtocolType: 协议类型，取值有：
        # <li>tcp ；</li>
        # <li>udp ；</li>
        # <li>all 。</li>
        # @type ProtocolType: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ZoneIds, :ProtocolType, :Area
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, zoneids=nil, protocoltype=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ZoneIds = zoneids
          @ProtocolType = protocoltype
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @PolicyIds = params['PolicyIds']
          @ZoneIds = params['ZoneIds']
          @ProtocolType = params['ProtocolType']
          @Area = params['Area']
        end
      end

      # DescribeDDosAttackSourceEvent返回参数结构体
      class DescribeDDosAttackSourceEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击源数据。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosAttackSourceEventData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DDosAttackSourceEventData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDosAttackTopData请求参数结构体
      class DescribeDDosAttackTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricName: 统计指标列表，取值有：
        # <li>ddos_attackFlux_protocol ：攻击总流量协议类型分布排行 ；</li>
        # <li>ddos_attackPackageNum_protocol ：攻击总包量协议类型分布排行 ；</li>
        # <li>ddos_attackNum_attackType ：攻击总次数攻击类型分布排行 ；</li>
        # <li>ddos_attackNum_sregion ：攻击总次数攻击源地区分布排行 ；</li>
        # <li>ddos_attackFlux_sip ：攻击总流量攻击源ip分布排行 ；</li>
        # <li>ddos_attackFlux_sregion ：攻击总流量攻击源地区分布排行 。</li>
        # @type MetricName: String
        # @param Limit: 查询前多少个，传值为0返回全量。
        # @type Limit: Integer
        # @param ZoneIds: 站点id集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param PolicyIds: ddos策略组id 集合，不填默认选择全部策略id。
        # @type PolicyIds: Array
        # @param Port: 端口号。
        # @type Port: Integer
        # @param ProtocolType: 协议类型，取值有：
        # <li>tcp ；</li>
        # <li>udp ；</li>
        # <li>all 。</li>
        # @type ProtocolType: String
        # @param AttackType: 攻击类型，取值有：
        # <li>flood ；</li>
        # <li>icmpFlood ；</li>
        # <li>all 。</li>
        # @type AttackType: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :ZoneIds, :PolicyIds, :Port, :ProtocolType, :AttackType, :Area
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, zoneids=nil, policyids=nil, port=nil, protocoltype=nil, attacktype=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Limit = limit
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @Port = port
          @ProtocolType = protocoltype
          @AttackType = attacktype
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Limit = params['Limit']
          @ZoneIds = params['ZoneIds']
          @PolicyIds = params['PolicyIds']
          @Port = params['Port']
          @ProtocolType = params['ProtocolType']
          @AttackType = params['AttackType']
          @Area = params['Area']
        end
      end

      # DescribeDDosAttackTopData返回参数结构体
      class DescribeDDosAttackTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: top数据内容
        # @type Data: Array
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应消息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topnentry_tmp = TopNEntry.new
              topnentry_tmp.deserialize(i)
              @Data << topnentry_tmp
            end
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDosMajorAttackEvent请求参数结构体
      class DescribeDDosMajorAttackEventRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param PolicyIds: ddos 策略组id集合，不填默认选择全部策略id。
        # @type PolicyIds: Array
        # @param ProtocolType: 协议类型，取值有：
        # <li>tcp ；</li>
        # <li>udp ；</li>
        # <li>all 。</li>
        # @type ProtocolType: String
        # @param ZoneIds: 站点id列表，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ProtocolType, :ZoneIds, :Area
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, protocoltype=nil, zoneids=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ProtocolType = protocoltype
          @ZoneIds = zoneids
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @PolicyIds = params['PolicyIds']
          @ProtocolType = params['ProtocolType']
          @ZoneIds = params['ZoneIds']
          @Area = params['Area']
        end
      end

      # DescribeDDosMajorAttackEvent返回参数结构体
      class DescribeDDosMajorAttackEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos查询主攻击事件。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosMajorAttackEventData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应消息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DDosMajorAttackEventData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultCertificates请求参数结构体
      class DescribeDefaultCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeDefaultCertificates返回参数结构体
      class DescribeDefaultCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 证书总数
        # @type TotalCount: Integer
        # @param CertInfo: 默认证书列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CertInfo, :RequestId
        
        def initialize(totalcount=nil, certinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @CertInfo = certinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              defaultservercertinfo_tmp = DefaultServerCertInfo.new
              defaultservercertinfo_tmp.deserialize(i)
              @CertInfo << defaultservercertinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnsData请求参数结构体
      class DescribeDnsDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param Interval: 时间粒度，默认为1分钟粒度，服务端根据时间范围自适应。
        # 支持指定以下几种粒度：
        # min：1分钟粒度
        # 5min：5分钟粒度
        # hour：1小时粒度
        # day：天粒度
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
              dnsdatafilter_tmp = DnsDataFilter.new
              dnsdatafilter_tmp.deserialize(i)
              @Filters << dnsdatafilter_tmp
            end
          end
          @Interval = params['Interval']
        end
      end

      # DescribeDnsData返回参数结构体
      class DescribeDnsDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计曲线数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Interval: 时间粒度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Interval, :RequestId
        
        def initialize(data=nil, interval=nil, requestid=nil)
          @Data = data
          @Interval = interval
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              dataitem_tmp = DataItem.new
              dataitem_tmp.deserialize(i)
              @Data << dataitem_tmp
            end
          end
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnsRecords请求参数结构体
      class DescribeDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件过滤器
        # @type Filters: Array
        # @param Order: 排序
        # @type Order: String
        # @param Direction: 可选值 asc, desc
        # @type Direction: String
        # @param Match: 可选值 all, any
        # @type Match: String
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param ZoneId: 站点 ID
        # @type ZoneId: String

        attr_accessor :Filters, :Order, :Direction, :Match, :Limit, :Offset, :ZoneId
        
        def initialize(filters=nil, order=nil, direction=nil, match=nil, limit=nil, offset=nil, zoneid=nil)
          @Filters = filters
          @Order = order
          @Direction = direction
          @Match = match
          @Limit = limit
          @Offset = offset
          @ZoneId = zoneid
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dnsrecordfilter_tmp = DnsRecordFilter.new
              dnsrecordfilter_tmp.deserialize(i)
              @Filters << dnsrecordfilter_tmp
            end
          end
          @Order = params['Order']
          @Direction = params['Direction']
          @Match = params['Match']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeDnsRecords返回参数结构体
      class DescribeDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，用于分页查询
        # @type TotalCount: Integer
        # @param Records: DNS 记录列表
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              dnsrecord_tmp = DnsRecord.new
              dnsrecord_tmp.deserialize(i)
              @Records << dnsrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnssec请求参数结构体
      class DescribeDnssecRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeDnssec返回参数结构体
      class DescribeDnssecResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: DNSSEC 状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String
        # @param Dnssec: DNSSEC 相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dnssec: :class:`Tencentcloud::Teo.v20220106.models.DnssecInfo`
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Status, :Dnssec, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, status=nil, dnssec=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Status = status
          @Dnssec = dnssec
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          unless params['Dnssec'].nil?
            @Dnssec = DnssecInfo.new
            @Dnssec.deserialize(params['Dnssec'])
          end
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostsCertificate请求参数结构体
      class DescribeHostsCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器
        # @type Filters: Array
        # @param Sort: 排序方式
        # @type Sort: :class:`Tencentcloud::Teo.v20220106.models.CertSort`

        attr_accessor :ZoneId, :Offset, :Limit, :Filters, :Sort
        
        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil, sort=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Sort = sort
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              certfilter_tmp = CertFilter.new
              certfilter_tmp.deserialize(i)
              @Filters << certfilter_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = CertSort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribeHostsCertificate返回参数结构体
      class DescribeHostsCertificateResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，用于分页查询
        # @type TotalCount: Integer
        # @param Hosts: 域名证书配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hosts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Hosts, :RequestId
        
        def initialize(totalcount=nil, hosts=nil, requestid=nil)
          @TotalCount = totalcount
          @Hosts = hosts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Hosts'].nil?
            @Hosts = []
            params['Hosts'].each do |i|
              hostcertsetting_tmp = HostCertSetting.new
              hostcertsetting_tmp.deserialize(i)
              @Hosts << hostcertsetting_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostsSetting请求参数结构体
      class DescribeHostsSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认为 100，最大可设置为 1000
        # @type Limit: Integer
        # @param Hosts: 指定域名查询
        # @type Hosts: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Hosts
        
        def initialize(zoneid=nil, offset=nil, limit=nil, hosts=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Hosts = hosts
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Hosts = params['Hosts']
        end
      end

      # DescribeHostsSetting返回参数结构体
      class DescribeHostsSettingResponse < TencentCloud::Common::AbstractModel
        # @param Hosts: 域名列表
        # @type Hosts: Array
        # @param TotalNumber: 域名数量
        # @type TotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hosts, :TotalNumber, :RequestId
        
        def initialize(hosts=nil, totalnumber=nil, requestid=nil)
          @Hosts = hosts
          @TotalNumber = totalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Hosts'].nil?
            @Hosts = []
            params['Hosts'].each do |i|
              detailhost_tmp = DetailHost.new
              detailhost_tmp.deserialize(i)
              @Hosts << detailhost_tmp
            end
          end
          @TotalNumber = params['TotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdentification请求参数结构体
      class DescribeIdentificationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeIdentification返回参数结构体
      class DescribeIdentificationResponse < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: 验证状态
        # - pending 验证中
        # - finished 验证完成
        # @type Status: String
        # @param Subdomain: 子域
        # @type Subdomain: String
        # @param RecordType: 记录类型
        # @type RecordType: String
        # @param RecordValue: 记录值
        # @type RecordValue: String
        # @param OriginalNameServers: 域名当前的 NS 记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalNameServers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Status, :Subdomain, :RecordType, :RecordValue, :OriginalNameServers, :RequestId
        
        def initialize(name=nil, status=nil, subdomain=nil, recordtype=nil, recordvalue=nil, originalnameservers=nil, requestid=nil)
          @Name = name
          @Status = status
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
          @OriginalNameServers = originalnameservers
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
          @OriginalNameServers = params['OriginalNameServers']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancingDetail请求参数结构体
      class DescribeLoadBalancingDetailRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String

        attr_accessor :ZoneId, :LoadBalancingId
        
        def initialize(zoneid=nil, loadbalancingid=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
        end
      end

      # DescribeLoadBalancingDetail返回参数结构体
      class DescribeLoadBalancingDetailResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Host: 子域名，填写@表示根域
        # @type Host: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param Origin: 使用的源站信息
        # @type Origin: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: String
        # @param Cname: 调度域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :ZoneId, :Host, :Type, :TTL, :OriginId, :Origin, :UpdateTime, :Status, :Cname, :RequestId
        
        def initialize(loadbalancingid=nil, zoneid=nil, host=nil, type=nil, ttl=nil, originid=nil, origin=nil, updatetime=nil, status=nil, cname=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @ZoneId = zoneid
          @Host = host
          @Type = type
          @TTL = ttl
          @OriginId = originid
          @Origin = origin
          @UpdateTime = updatetime
          @Status = status
          @Cname = cname
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @Type = params['Type']
          @TTL = params['TTL']
          @OriginId = params['OriginId']
          unless params['Origin'].nil?
            @Origin = []
            params['Origin'].each do |i|
              origingroup_tmp = OriginGroup.new
              origingroup_tmp.deserialize(i)
              @Origin << origingroup_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Cname = params['Cname']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancing请求参数结构体
      class DescribeLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Offset: 分页参数Offset
        # @type Offset: Integer
        # @param Limit: 分页参数Limit
        # @type Limit: Integer
        # @param Host: 过滤参数Host
        # @type Host: String
        # @param Fuzzy: 过滤参数Host是否支持模糊匹配
        # @type Fuzzy: Boolean

        attr_accessor :ZoneId, :Offset, :Limit, :Host, :Fuzzy
        
        def initialize(zoneid=nil, offset=nil, limit=nil, host=nil, fuzzy=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Host = host
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Host = params['Host']
          @Fuzzy = params['Fuzzy']
        end
      end

      # DescribeLoadBalancing返回参数结构体
      class DescribeLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param Data: 负载均衡信息
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
              loadbalancing_tmp = LoadBalancing.new
              loadbalancing_tmp.deserialize(i)
              @Data << loadbalancing_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginGroupDetail请求参数结构体
      class DescribeOriginGroupDetailRequest < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String

        attr_accessor :OriginId, :ZoneId
        
        def initialize(originid=nil, zoneid=nil)
          @OriginId = originid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @OriginId = params['OriginId']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeOriginGroupDetail返回参数结构体
      class DescribeOriginGroupDetailResponse < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param OriginName: 源站组名称
        # @type OriginName: String
        # @param Type: 源站组配置类型
        # area：表示按照Record记录中的Area字段进行按客户端IP所在区域回源。
        # weight：表示按照Record记录中的Weight字段进行按权重回源。
        # @type Type: String
        # @param Record: 记录
        # @type Record: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param OriginType: 源站类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginType: String
        # @param ApplicationProxyUsed: 当前源站组是否被四层代理使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationProxyUsed: Boolean
        # @param LoadBalancingUsed: 当前源站组是否被负载均衡使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsed: Boolean
        # @param LoadBalancingUsedType: 使用当前源站组的负载均衡的类型：
        # none：未被使用
        # dns_only：被仅DNS类型负载均衡使用
        # proxied：被代理加速类型负载均衡使用
        # both：同时被仅DNS和代理加速类型负载均衡使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsedType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginId, :OriginName, :Type, :Record, :UpdateTime, :ZoneId, :ZoneName, :OriginType, :ApplicationProxyUsed, :LoadBalancingUsed, :LoadBalancingUsedType, :RequestId
        
        def initialize(originid=nil, originname=nil, type=nil, record=nil, updatetime=nil, zoneid=nil, zonename=nil, origintype=nil, applicationproxyused=nil, loadbalancingused=nil, loadbalancingusedtype=nil, requestid=nil)
          @OriginId = originid
          @OriginName = originname
          @Type = type
          @Record = record
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @OriginType = origintype
          @ApplicationProxyUsed = applicationproxyused
          @LoadBalancingUsed = loadbalancingused
          @LoadBalancingUsedType = loadbalancingusedtype
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginId = params['OriginId']
          @OriginName = params['OriginName']
          @Type = params['Type']
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Record << originrecord_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @OriginType = params['OriginType']
          @ApplicationProxyUsed = params['ApplicationProxyUsed']
          @LoadBalancingUsed = params['LoadBalancingUsed']
          @LoadBalancingUsedType = params['LoadBalancingUsedType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginGroup请求参数结构体
      class DescribeOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页参数Offset
        # @type Offset: Integer
        # @param Limit: 分页参数Limit
        # @type Limit: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param ZoneId: 站点ID
        # 不填写获取所有站点源站组
        # @type ZoneId: String

        attr_accessor :Offset, :Limit, :Filters, :ZoneId
        
        def initialize(offset=nil, limit=nil, filters=nil, zoneid=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ZoneId = zoneid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              originfilter_tmp = OriginFilter.new
              originfilter_tmp.deserialize(i)
              @Filters << originfilter_tmp
            end
          end
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeOriginGroup返回参数结构体
      class DescribeOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 源站组信息
        # @type Data: Array
        # @param TotalCount: 记录总数
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
              origingroup_tmp = OriginGroup.new
              origingroup_tmp.deserialize(i)
              @Data << origingroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOverviewL7Data请求参数结构体
      class DescribeOverviewL7DataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: RFC3339格式，客户端时间
        # @type StartTime: String
        # @param EndTime: RFC3339格式，客户端时间
        # @type EndTime: String
        # @param MetricNames: 指标列表，支持的指标
        # l7Flow_outFlux: 访问流量
        # l7Flow_request: 访问请求数
        # l7Flow_outBandwidth: 访问带宽
        #  l7Flow_hit_outFlux: 缓存命中流量
        # @type MetricNames: Array
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: ZoneId列表，仅在zone/domain维度下查询时该参数有效
        # @type ZoneIds: Array
        # @param Domains: Domain列表，仅在domain维度下查询时该参数有效
        # @type Domains: Array
        # @param Protocol: 协议类型， 选填{http,http2,https,all}
        # @type Protocol: String
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :Interval, :ZoneIds, :Domains, :Protocol, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, interval=nil, zoneids=nil, domains=nil, protocol=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Interval = interval
          @ZoneIds = zoneids
          @Domains = domains
          @Protocol = protocol
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Protocol = params['Protocol']
          @Area = params['Area']
        end
      end

      # DescribeOverviewL7Data返回参数结构体
      class DescribeOverviewL7DataResponse < TencentCloud::Common::AbstractModel
        # @param Type: 查询维度
        # @type Type: String
        # @param Interval: 时间间隔
        # @type Interval: String
        # @param Data: 详细数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :Interval, :Data, :RequestId
        
        def initialize(type=nil, interval=nil, data=nil, requestid=nil)
          @Type = type
          @Interval = interval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @Interval = params['Interval']
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
        # @param JobId: 任务ID
        # @type JobId: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大返回的结果条数
        # @type Limit: Integer
        # @param Statuses: 查询的状态
        # 允许的值为：processing、success、failed、timeout、invalid
        # @type Statuses: Array
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param Domains: 查询的域名列表
        # @type Domains: Array
        # @param Target: 查询的资源
        # @type Target: String

        attr_accessor :JobId, :StartTime, :EndTime, :Offset, :Limit, :Statuses, :ZoneId, :Domains, :Target
        
        def initialize(jobid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, statuses=nil, zoneid=nil, domains=nil, target=nil)
          @JobId = jobid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Statuses = statuses
          @ZoneId = zoneid
          @Domains = domains
          @Target = target
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Statuses = params['Statuses']
          @ZoneId = params['ZoneId']
          @Domains = params['Domains']
          @Target = params['Target']
        end
      end

      # DescribePrefetchTasks返回参数结构体
      class DescribePrefetchTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表
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
        # @param JobId: 任务ID
        # @type JobId: String
        # @param Type: 类型
        # @type Type: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大返回的结果条数
        # @type Limit: Integer
        # @param Statuses: 查询的状态
        # 允许的值为：processing、success、failed、timeout、invalid
        # @type Statuses: Array
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param Domains: 查询的域名列表
        # @type Domains: Array
        # @param Target: 查询内容
        # @type Target: String

        attr_accessor :JobId, :Type, :StartTime, :EndTime, :Offset, :Limit, :Statuses, :ZoneId, :Domains, :Target
        
        def initialize(jobid=nil, type=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, statuses=nil, zoneid=nil, domains=nil, target=nil)
          @JobId = jobid
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Statuses = statuses
          @ZoneId = zoneid
          @Domains = domains
          @Target = target
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Statuses = params['Statuses']
          @ZoneId = params['ZoneId']
          @Domains = params['Domains']
          @Target = params['Target']
        end
      end

      # DescribePurgeTasks返回参数结构体
      class DescribePurgeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表
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
        # @param Filters: 过滤参数，不填默认不过滤。
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
              rulefilter_tmp = RuleFilter.new
              rulefilter_tmp.deserialize(i)
              @Filters << rulefilter_tmp
            end
          end
        end
      end

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleList: 规则列表，按规则执行顺序从先往后排序。
        # @type RuleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :RuleList, :RequestId
        
        def initialize(zoneid=nil, rulelist=nil, requestid=nil)
          @ZoneId = zoneid
          @RuleList = rulelist
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              rulesettingdetail_tmp = RuleSettingDetail.new
              rulesettingdetail_tmp.deserialize(i)
              @RuleList << rulesettingdetail_tmp
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

      # DescribeSecurityPolicyList请求参数结构体
      class DescribeSecurityPolicyListRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeSecurityPolicyList返回参数结构体
      class DescribeSecurityPolicyListResponse < TencentCloud::Common::AbstractModel
        # @param Entities: 防护资源列表
        # @type Entities: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entities, :RequestId
        
        def initialize(entities=nil, requestid=nil)
          @Entities = entities
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entities'].nil?
            @Entities = []
            params['Entities'].each do |i|
              securityentity_tmp = SecurityEntity.new
              securityentity_tmp.deserialize(i)
              @Entities << securityentity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicyManagedRulesId请求参数结构体
      class DescribeSecurityPolicyManagedRulesIdRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则id集合
        # @type RuleId: Array

        attr_accessor :RuleId
        
        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DescribeSecurityPolicyManagedRulesId返回参数结构体
      class DescribeSecurityPolicyManagedRulesIdResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回总数
        # @type Total: Integer
        # @param Rules: 门神规则
        # @type Rules: Array
        # @param Count: 返回总数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Rules, :Count, :RequestId
        
        def initialize(total=nil, rules=nil, count=nil, requestid=nil)
          @Total = total
          @Rules = rules
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              managedrule_tmp = ManagedRule.new
              managedrule_tmp.deserialize(i)
              @Rules << managedrule_tmp
            end
          end
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicyManagedRules请求参数结构体
      class DescribeSecurityPolicyManagedRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 子域名/应用名
        # @type Entity: String
        # @param Page: 页数
        # @type Page: Integer
        # @param PerPage: 每页数量
        # @type PerPage: Integer

        attr_accessor :ZoneId, :Entity, :Page, :PerPage
        
        def initialize(zoneid=nil, entity=nil, page=nil, perpage=nil)
          @ZoneId = zoneid
          @Entity = entity
          @Page = page
          @PerPage = perpage
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          @Page = params['Page']
          @PerPage = params['PerPage']
        end
      end

      # DescribeSecurityPolicyManagedRules返回参数结构体
      class DescribeSecurityPolicyManagedRulesResponse < TencentCloud::Common::AbstractModel
        # @param Count: 本次返回的规则数
        # @type Count: Integer
        # @param Rules: 门神规则
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Rules, :Total, :RequestId
        
        def initialize(count=nil, rules=nil, total=nil, requestid=nil)
          @Count = count
          @Rules = rules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              managedrule_tmp = ManagedRule.new
              managedrule_tmp.deserialize(i)
              @Rules << managedrule_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicyRegions请求参数结构体
      class DescribeSecurityPolicyRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecurityPolicyRegions返回参数结构体
      class DescribeSecurityPolicyRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Count: 总数
        # @type Count: Integer
        # @param GeoIp: 地域信息
        # @type GeoIp: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :GeoIp, :RequestId
        
        def initialize(count=nil, geoip=nil, requestid=nil)
          @Count = count
          @GeoIp = geoip
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['GeoIp'].nil?
            @GeoIp = []
            params['GeoIp'].each do |i|
              geoip_tmp = GeoIp.new
              geoip_tmp.deserialize(i)
              @GeoIp << geoip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicy请求参数结构体
      class DescribeSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 二级域名
        # @type Entity: String

        attr_accessor :ZoneId, :Entity
        
        def initialize(zoneid=nil, entity=nil)
          @ZoneId = zoneid
          @Entity = entity
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
        end
      end

      # DescribeSecurityPolicy返回参数结构体
      class DescribeSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 用户id
        # @type AppId: Integer
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 二级域名
        # @type Entity: String
        # @param Config: 安全配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Teo.v20220106.models.SecurityConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :ZoneId, :Entity, :Config, :RequestId
        
        def initialize(appid=nil, zoneid=nil, entity=nil, config=nil, requestid=nil)
          @AppId = appid
          @ZoneId = zoneid
          @Entity = entity
          @Config = config
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          unless params['Config'].nil?
            @Config = SecurityConfig.new
            @Config.deserialize(params['Config'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPortraitRules请求参数结构体
      class DescribeSecurityPortraitRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 子域名/应用名
        # @type Entity: String

        attr_accessor :ZoneId, :Entity
        
        def initialize(zoneid=nil, entity=nil)
          @ZoneId = zoneid
          @Entity = entity
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
        end
      end

      # DescribeSecurityPortraitRules返回参数结构体
      class DescribeSecurityPortraitRulesResponse < TencentCloud::Common::AbstractModel
        # @param Count: 本次返回的规则数
        # @type Count: Integer
        # @param Rules: Bot用户画像规则
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Rules, :Total, :RequestId
        
        def initialize(count=nil, rules=nil, total=nil, requestid=nil)
          @Count = count
          @Rules = rules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              portraitmanagedruledetail_tmp = PortraitManagedRuleDetail.new
              portraitmanagedruledetail_tmp.deserialize(i)
              @Rules << portraitmanagedruledetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimingL4Data请求参数结构体
      class DescribeTimingL4DataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: RFC3339格式，客户端时间
        # @type StartTime: String
        # @param EndTime: RFC3339格式，客户端时间
        # @type EndTime: String
        # @param MetricNames: 支持的指标：
        # l4Flow_connections: 访问连接数
        # l4Flow_flux: 访问总流量
        # l4Flow_inFlux: 访问入流量
        # l4Flow_outFlux: 访问出流量
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表
        # @type ZoneIds: Array
        # @param InstanceIds: 该字段已废弃，请使用ProxyIds字段
        # @type InstanceIds: Array
        # @param Protocol: 该字段当前无效
        # @type Protocol: String
        # @param Interval: 时间间隔，选填{min, 5min, hour, day}
        # @type Interval: String
        # @param RuleId: 该字段当前无效，请使用Filter筛选
        # @type RuleId: String
        # @param Filters: 支持的 Filter：proxyd,ruleId
        # @type Filters: Array
        # @param ProxyIds: 四层实例列表
        # @type ProxyIds: Array
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :InstanceIds, :Protocol, :Interval, :RuleId, :Filters, :ProxyIds, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, instanceids=nil, protocol=nil, interval=nil, ruleid=nil, filters=nil, proxyids=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @InstanceIds = instanceids
          @Protocol = protocol
          @Interval = interval
          @RuleId = ruleid
          @Filters = filters
          @ProxyIds = proxyids
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @InstanceIds = params['InstanceIds']
          @Protocol = params['Protocol']
          @Interval = params['Interval']
          @RuleId = params['RuleId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ProxyIds = params['ProxyIds']
          @Area = params['Area']
        end
      end

      # DescribeTimingL4Data返回参数结构体
      class DescribeTimingL4DataResponse < TencentCloud::Common::AbstractModel
        # @param Type: 查询维度
        # @type Type: String
        # @param Interval: 时间间隔
        # @type Interval: String
        # @param Data: 详细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :Interval, :Data, :RequestId
        
        def initialize(type=nil, interval=nil, data=nil, requestid=nil)
          @Type = type
          @Interval = interval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @Interval = params['Interval']
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
        # @param StartTime: RFC3339标准，客户端时间
        # @type StartTime: String
        # @param EndTime: RFC3339标准，客户端时间
        # @type EndTime: String
        # @param MetricNames: 指标列表，支持的指标
        # l7Flow_outFlux: 访问流量
        # l7Flow_request: 访问请求数
        # l7Flow_outBandwidth: 访问带宽
        # @type MetricNames: Array
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: ZoneId数组
        # @type ZoneIds: Array
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :Interval, :ZoneIds, :Filters, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, interval=nil, zoneids=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Interval = interval
          @ZoneIds = zoneids
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeTimingL7AnalysisData返回参数结构体
      class DescribeTimingL7AnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 详细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Type: 查询维度
        # @type Type: String
        # @param Interval: 时间间隔
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Type, :Interval, :RequestId
        
        def initialize(data=nil, type=nil, interval=nil, requestid=nil)
          @Data = data
          @Type = type
          @Interval = interval
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @Data << timingdatarecord_tmp
            end
          end
          @Type = params['Type']
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimingL7CacheData请求参数结构体
      class DescribeTimingL7CacheDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: RFC3339标准，客户端时间
        # @type StartTime: String
        # @param EndTime: RFC3339标准，客户端时间
        # @type EndTime: String
        # @param MetricNames: 时序类访问流量指标列表，支持的指标
        # l7Cache_outFlux: 访问流量
        # l7Cache_request: 访问请求数
        # @type MetricNames: Array
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: 站点id列表
        # @type ZoneIds: Array
        # @param Filters: 筛选条件，筛选EO/源站响应如下：
        # EO响应：{Key: "cacheType", Value: ["hit"], Operator: "equals"}；
        # 源站响应：{Key: "cacheType", Value: ["miss", "dynamic"], Operator: "equals"}
        # @type Filters: Array
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :Interval, :ZoneIds, :Filters, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, interval=nil, zoneids=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Interval = interval
          @ZoneIds = zoneids
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeTimingL7CacheData返回参数结构体
      class DescribeTimingL7CacheDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 详细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Type: 查询维度
        # @type Type: String
        # @param Interval: 时间间隔
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Type, :Interval, :RequestId
        
        def initialize(data=nil, type=nil, interval=nil, requestid=nil)
          @Data = data
          @Type = type
          @Interval = interval
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @Data << timingdatarecord_tmp
            end
          end
          @Type = params['Type']
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopL7AnalysisData请求参数结构体
      class DescribeTopL7AnalysisDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: RFC3339标准，客户端时间
        # @type StartTime: String
        # @param EndTime: RFC3339标准，客户端时间
        # @type EndTime: String
        # @param MetricName: 时序类访问流量指标
        # @type MetricName: String
        # @param Limit: topN,填0时返回全量数据
        # @type Limit: Integer
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: ZoneId数组
        # @type ZoneIds: Array
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :Interval, :ZoneIds, :Filters, :Area
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, interval=nil, zoneids=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Limit = limit
          @Interval = interval
          @ZoneIds = zoneids
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Limit = params['Limit']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeTopL7AnalysisData返回参数结构体
      class DescribeTopL7AnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: top详细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Type: 查询维度
        # @type Type: String
        # @param MetricName: 查询指标
        # @type MetricName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Type, :MetricName, :RequestId
        
        def initialize(data=nil, type=nil, metricname=nil, requestid=nil)
          @Data = data
          @Type = type
          @MetricName = metricname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topdatarecord_tmp = TopDataRecord.new
              topdatarecord_tmp.deserialize(i)
              @Data << topdatarecord_tmp
            end
          end
          @Type = params['Type']
          @MetricName = params['MetricName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopL7CacheData请求参数结构体
      class DescribeTopL7CacheDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: RFC3339标准，客户端时间
        # @type StartTime: String
        # @param EndTime: RFC3339标准，客户端时间
        # @type EndTime: String
        # @param MetricName: 时序类访问流量指标
        # @type MetricName: String
        # @param Limit: topN,填0时返回全量数据
        # @type Limit: Integer
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: ZoneId数组
        # @type ZoneIds: Array
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :Interval, :ZoneIds, :Filters, :Area
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, interval=nil, zoneids=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Limit = limit
          @Interval = interval
          @ZoneIds = zoneids
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Limit = params['Limit']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeTopL7CacheData返回参数结构体
      class DescribeTopL7CacheDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: top详细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Type: 查询维度
        # @type Type: String
        # @param MetricName: 查询指标
        # @type MetricName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Type, :MetricName, :RequestId
        
        def initialize(data=nil, type=nil, metricname=nil, requestid=nil)
          @Data = data
          @Type = type
          @MetricName = metricname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topdatarecord_tmp = TopDataRecord.new
              topdatarecord_tmp.deserialize(i)
              @Data << topdatarecord_tmp
            end
          end
          @Type = params['Type']
          @MetricName = params['MetricName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebManagedRulesAttackEvents请求参数结构体
      class DescribeWebManagedRulesAttackEventsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param PolicyIds: ddos策略组id列表
        # @type PolicyIds: Array
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param Domains: 子域名列表
        # @type Domains: Array
        # @param IsShowDetail: 选填{Y、N},默认为Y；Y：展示，N：不展示
        # @type IsShowDetail: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ZoneIds, :Domains, :IsShowDetail
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, zoneids=nil, domains=nil, isshowdetail=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ZoneIds = zoneids
          @Domains = domains
          @IsShowDetail = isshowdetail
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @PolicyIds = params['PolicyIds']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @IsShowDetail = params['IsShowDetail']
        end
      end

      # DescribeWebManagedRulesAttackEvents返回参数结构体
      class DescribeWebManagedRulesAttackEventsResponse < TencentCloud::Common::AbstractModel
        # @param Data: Web攻击事件数据
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.WebEventData`
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回数据
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WebEventData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebManagedRulesData请求参数结构体
      class DescribeWebManagedRulesDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，RFC3339格式。
        # @type StartTime: String
        # @param EndTime: 结束时间，RFC3339格式。
        # @type EndTime: String
        # @param MetricNames: 统计指标列表，取值有：
        # <li>waf_interceptNum ：waf拦截次数 。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 子域名列表，不填默认选择子域名。
        # @type Domains: Array
        # @param ProtocolType: 该字段已废弃，请勿传。
        # @type ProtocolType: String
        # @param AttackType: 该字段已废弃，请勿传。
        # @type AttackType: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param QueryCondition: 筛选条件，取值有：
        # <li>action ：执行动作 。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :ProtocolType, :AttackType, :Interval, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, protocoltype=nil, attacktype=nil, interval=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @ProtocolType = protocoltype
          @AttackType = attacktype
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
          @ProtocolType = params['ProtocolType']
          @AttackType = params['AttackType']
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

      # DescribeWebManagedRulesData返回参数结构体
      class DescribeWebManagedRulesDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: Web攻击日志实体。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应消息。
        # @type Msg: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :Interval, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, interval=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @Interval = interval
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
          @Status = params['Status']
          @Msg = params['Msg']
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebManagedRulesLog请求参数结构体
      class DescribeWebManagedRulesLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param ZoneIds: 站点集合，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param QueryCondition: 筛选条件，取值有：
        # <li>attackType ：攻击类型 ；</li>
        # <li>riskLevel ：风险等级 ；</li>
        # <li>action ：执行动作（处置方式） ；</li>
        # <li>ruleId ：规则id ；</li>
        # <li>sipCountryCode ：ip所在国家 ；</li>
        # <li>attackIp ：攻击ip ；</li>
        # <li>oriDomain ：被攻击的子域名 ；</li>
        # <li>eventId ：事件id ；</li>
        # <li>ua ：用户代理 ；</li>
        # <li>requestMethod ：请求方法 ；</li>
        # <li>uri ：统一资源标识符 。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :ZoneIds, :Domains, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zoneids=nil, domains=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
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
          @Area = params['Area']
        end
      end

      # DescribeWebManagedRulesLog返回参数结构体
      class DescribeWebManagedRulesLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: web攻击日志数据内容。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.WebLogData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = WebLogData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebManagedRulesTopData请求参数结构体
      class DescribeWebManagedRulesTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricName: 统计指标列表，取值有：
        # <li>waf_requestNum_url ：url请求数排行 ；</li>
        # <li>waf_requestNum_cip：客户端ip请求数排行 ；</li>
        # <li>waf_cipRequestNum_region ：客户端区域请求数排行 。</li>
        # @type MetricName: String
        # @param Limit: 查询前多少个，传值为0返回全量。
        # @type Limit: Integer
        # @param ZoneIds: 站点id列表，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param PolicyIds: 该字段已废弃，请勿传。
        # @type PolicyIds: Array
        # @param Port: 该字段已废弃，请勿传。
        # @type Port: Integer
        # @param ProtocolType: 该字段已废弃，请勿传。
        # @type ProtocolType: String
        # @param AttackType: 该字段已废弃，请勿传。
        # @type AttackType: String
        # @param Domains: 域名列表，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param QueryCondition: 筛选条件，取值有：
        # <li>action ：执行动作 。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :ZoneIds, :PolicyIds, :Port, :ProtocolType, :AttackType, :Domains, :Interval, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, zoneids=nil, policyids=nil, port=nil, protocoltype=nil, attacktype=nil, domains=nil, interval=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Limit = limit
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @Port = port
          @ProtocolType = protocoltype
          @AttackType = attacktype
          @Domains = domains
          @Interval = interval
          @QueryCondition = querycondition
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Limit = params['Limit']
          @ZoneIds = params['ZoneIds']
          @PolicyIds = params['PolicyIds']
          @Port = params['Port']
          @ProtocolType = params['ProtocolType']
          @AttackType = params['AttackType']
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

      # DescribeWebManagedRulesTopData返回参数结构体
      class DescribeWebManagedRulesTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: top数据内容。
        # @type Data: Array
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应消息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topnentry_tmp = TopNEntry.new
              topnentry_tmp.deserialize(i)
              @Data << topnentry_tmp
            end
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionAttackEvents请求参数结构体
      class DescribeWebProtectionAttackEventsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param Domains: 域名
        # @type Domains: Array
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :Domains, :ZoneIds
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, domains=nil, zoneids=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @Domains = domains
          @ZoneIds = zoneids
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Domains = params['Domains']
          @ZoneIds = params['ZoneIds']
        end
      end

      # DescribeWebProtectionAttackEvents返回参数结构体
      class DescribeWebProtectionAttackEventsResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击事件数据
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.CCInterceptEventData`
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回消息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CCInterceptEventData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionData请求参数结构体
      class DescribeWebProtectionDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，RFC3339格式。
        # @type StartTime: String
        # @param EndTime: 结束时间，RFC3339格式。
        # @type EndTime: String
        # @param MetricNames: 统计指标列表，取值有：
        # <li>ccRate_interceptNum ：速率限制规则限制次数 ；</li>
        # <li>ccAcl_interceptNum ：自定义规则拦截次数 。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表，不填默认选择全部站点。
        # @type ZoneIds: Array
        # @param Domains: 子域名列表，不填默认选择全部子域名。
        # @type Domains: Array
        # @param ProtocolType: 该字段已废弃，请勿传。
        # @type ProtocolType: String
        # @param AttackType: 该字段已废弃，请勿传。
        # @type AttackType: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param QueryCondition: 筛选条件，取值有：
        # <li>action ：执行动作 。</li>
        # @type QueryCondition: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :ProtocolType, :AttackType, :Interval, :QueryCondition, :Area
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, protocoltype=nil, attacktype=nil, interval=nil, querycondition=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @ProtocolType = protocoltype
          @AttackType = attacktype
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
          @ProtocolType = params['ProtocolType']
          @AttackType = params['AttackType']
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
        # @param Data: 数据详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应消息。
        # @type Msg: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min ：1分钟 ；</li>
        # <li>5min ：5分钟 ；</li>
        # <li>hour ：1小时 ；</li>
        # <li>day ：1天 。</li>
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :Interval, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, interval=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @Interval = interval
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
          @Status = params['Status']
          @Msg = params['Msg']
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebProtectionLog请求参数结构体
      class DescribeWebProtectionLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param ZoneIds: 站点集合，不填默认查询所有站点。
        # @type ZoneIds: Array
        # @param Domains: 域名集合，不填默认查询所有域名。
        # @type Domains: Array
        # @param QueryCondition: 筛选条件。
        # 限速规则日志中取值有：
        # <li>action ：执行动作（处置方式）；</li>
        # <li>ruleId ：规则id ；</li>
        # <li>oriDomain ：被攻击的子域名 ；</li>
        # <li>attackIp ：攻击ip 。</li>
        # 自定义规则日志中取值有：
        # <li>action ：执行动作（处置方式）；</li>
        # <li>ruleId ：规则id ；</li>
        # <li>oriDomain ：被攻击的子域名 ；</li>
        # <li>attackIp ：攻击ip ；</li>
        # <li>eventId ：事件id ；</li>
        # <li>ua ：用户代理 ；</li>
        # <li>requestMethod ：请求方法 ；</li>
        # <li>uri ：统一资源标识符 。</li>
        # @type QueryCondition: Array
        # @param EntityType: 日志类型，取值有：
        # <li>rate ：限速日志 ；</li>
        # <li>acl ：自定义规则日志 。</li>不填默认为rate。
        # @type EntityType: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas ：全球（除中国大陆地区）数据 ；</li>
        # <li>mainland ：中国大陆地区数据 。</li>不填默认查询overseas。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :ZoneIds, :Domains, :QueryCondition, :EntityType, :Area
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zoneids=nil, domains=nil, querycondition=nil, entitytype=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
          @EntityType = entitytype
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
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
          @EntityType = params['EntityType']
          @Area = params['Area']
        end
      end

      # DescribeWebProtectionLog返回参数结构体
      class DescribeWebProtectionLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 限速拦截数据内容。
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.CCLogData`
        # @param Status: 请求响应状态，取值有：
        # <li>1 ：失败 ；</li>
        # <li>0 ：成功 。</li>
        # @type Status: Integer
        # @param Msg: 请求响应信息。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :Msg, :RequestId
        
        def initialize(data=nil, status=nil, msg=nil, requestid=nil)
          @Data = data
          @Status = status
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CCLogData.new
            @Data.deserialize(params['Data'])
          end
          @Status = params['Status']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneDDoSPolicy请求参数结构体
      class DescribeZoneDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名id
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeZoneDDoSPolicy返回参数结构体
      class DescribeZoneDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param ShieldAreas: 防护分区
        # @type ShieldAreas: Array
        # @param Domains: 所有子域名信息，包含安全加速/内容加速
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :ShieldAreas, :Domains, :RequestId
        
        def initialize(appid=nil, shieldareas=nil, domains=nil, requestid=nil)
          @AppId = appid
          @ShieldAreas = shieldareas
          @Domains = domains
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['ShieldAreas'].nil?
            @ShieldAreas = []
            params['ShieldAreas'].each do |i|
              shieldarea_tmp = ShieldArea.new
              shieldarea_tmp.deserialize(i)
              @ShieldAreas << shieldarea_tmp
            end
          end
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              ddosapplication_tmp = DDoSApplication.new
              ddosapplication_tmp.deserialize(i)
              @Domains << ddosapplication_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneDetails请求参数结构体
      class DescribeZoneDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeZoneDetails返回参数结构体
      class DescribeZoneDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param OriginalNameServers: 用户当前使用的 NS 列表
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配给用户的 NS 列表
        # @type NameServers: Array
        # @param Status: 站点状态
        # - active：NS 已切换
        # - pending：NS 未切换
        # - moved：NS 已切走
        # - deactivated：被封禁
        # @type Status: String
        # @param Type: 站点接入方式
        # - full：NS 接入
        # - partial：CNAME 接入
        # @type Type: String
        # @param Paused: 站点是否关闭
        # @type Paused: Boolean
        # @param CnameSpeedUp: 是否开启 CNAME 加速
        # - enabled：开启
        # - disabled：关闭
        # @type CnameSpeedUp: String
        # @param CnameStatus: cname切换验证状态
        # - finished 切换完成
        # - pending 切换验证中
        # @type CnameStatus: String
        # @param Tags: 资源标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Area: 站点接入地域，取值为：
        # <li> global：全球；</li>
        # <li> mainland：中国大陆；</li>
        # <li> overseas：境外区域。</li>
        # @type Area: String
        # @param Resources: 计费资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array
        # @param ModifiedOn: 站点修改时间
        # @type ModifiedOn: String
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param VanityNameServers: 用户自定义 NS 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220106.models.VanityNameServers`
        # @param VanityNameServersIps: 用户自定义 NS IP 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServersIps: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CnameSpeedUp, :CnameStatus, :Tags, :Area, :Resources, :ModifiedOn, :CreatedOn, :VanityNameServers, :VanityNameServersIps, :RequestId
        
        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, cnamespeedup=nil, cnamestatus=nil, tags=nil, area=nil, resources=nil, modifiedon=nil, createdon=nil, vanitynameservers=nil, vanitynameserversips=nil, requestid=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CnameSpeedUp = cnamespeedup
          @CnameStatus = cnamestatus
          @Tags = tags
          @Area = area
          @Resources = resources
          @ModifiedOn = modifiedon
          @CreatedOn = createdon
          @VanityNameServers = vanitynameservers
          @VanityNameServersIps = vanitynameserversips
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
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
          @Area = params['Area']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @Resources << resource_tmp
            end
          end
          @ModifiedOn = params['ModifiedOn']
          @CreatedOn = params['CreatedOn']
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
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Zone: 站点名称。
        # @type Zone: String
        # @param Cache: 缓存过期时间配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220106.models.CacheKey`
        # @param Quic: Quic访问配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quic: :class:`Tencentcloud::Teo.v20220106.models.Quic`
        # @param PostMaxSize: POST请求传输配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220106.models.PostMaxSize`
        # @param Compression: 智能压缩配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Teo.v20220106.models.Compression`
        # @param UpstreamHttp2: Http2回源配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220106.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制Https跳转配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220106.models.ForceRedirect`
        # @param Https: Https 加速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Teo.v20220106.models.Https`
        # @param Origin: 源站配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Teo.v20220106.models.Origin`
        # @param SmartRouting: 智能加速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220106.models.SmartRouting`
        # @param MaxAge: 浏览器缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220106.models.MaxAge`
        # @param OfflineCache: 离线缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220106.models.OfflineCache`
        # @param WebSocket: WebSocket配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220106.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220106.models.ClientIp`
        # @param CachePrefresh: 缓存预刷新配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CachePrefresh: :class:`Tencentcloud::Teo.v20220106.models.CachePrefresh`
        # @param Ipv6: Ipv6访问配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220106.models.Ipv6Access`
        # @param Area: 站点加速区域信息，取值有：
        # <li>mainland：中国境内加速；</li>
        # <li>overseas：中国境外加速。</li>
        # @type Area: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :Zone, :Cache, :CacheKey, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :MaxAge, :OfflineCache, :WebSocket, :ClientIpHeader, :CachePrefresh, :Ipv6, :Area, :RequestId
        
        def initialize(zoneid=nil, zone=nil, cache=nil, cachekey=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, maxage=nil, offlinecache=nil, websocket=nil, clientipheader=nil, cacheprefresh=nil, ipv6=nil, area=nil, requestid=nil)
          @ZoneId = zoneid
          @Zone = zone
          @Cache = cache
          @CacheKey = cachekey
          @Quic = quic
          @PostMaxSize = postmaxsize
          @Compression = compression
          @UpstreamHttp2 = upstreamhttp2
          @ForceRedirect = forceredirect
          @Https = https
          @Origin = origin
          @SmartRouting = smartrouting
          @MaxAge = maxage
          @OfflineCache = offlinecache
          @WebSocket = websocket
          @ClientIpHeader = clientipheader
          @CachePrefresh = cacheprefresh
          @Ipv6 = ipv6
          @Area = area
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          unless params['Cache'].nil?
            @Cache = CacheConfig.new
            @Cache.deserialize(params['Cache'])
          end
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
            @ClientIpHeader = ClientIp.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
          unless params['CachePrefresh'].nil?
            @CachePrefresh = CachePrefresh.new
            @CachePrefresh.deserialize(params['CachePrefresh'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6Access.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          @Area = params['Area']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量。默认值：0，最小值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：1000，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器，复杂类型。
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
              zonefilter_tmp = ZoneFilter.new
              zonefilter_tmp.deserialize(i)
              @Filters << zonefilter_tmp
            end
          end
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
        # @param AppId: 腾讯云账号ID
        # @type AppId: Integer
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Status: 加速服务状态
        # process：部署中
        # online：已启动
        # offline：已关闭
        # @type Status: String
        # @param Host: 域名
        # @type Host: String

        attr_accessor :AppId, :ZoneId, :Status, :Host
        
        def initialize(appid=nil, zoneid=nil, status=nil, host=nil)
          @AppId = appid
          @ZoneId = zoneid
          @Status = status
          @Host = host
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ZoneId = params['ZoneId']
          @Status = params['Status']
          @Host = params['Host']
        end
      end

      # Dns数据曲线过滤参数
      class DnsDataFilter < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称，取值范围：
        # zone：站点名
        # host：域名
        # type：dns解析类型
        # code：dns返回状态码
        # area：解析服务器所在区域
        # @type Name: String
        # @param Value: 参数值
        # 当Name=area时，Value取值范围：
        # 亚洲：Asia
        # 欧洲：Europe
        # 非洲：Africa
        # 大洋洲：Oceania
        # 美洲：Americas

        # 当Name=code时，Value取值范围：
        # NoError：成功的响应
        # NXDomain：只在权威域名服务器的响应消息中有效，标示请求中请求的域不存在
        # NotImp：域名服务器不支持请求的类型
        # Refused：域名服务器因为策略的原因拒绝执行请求的操作
        # @type Value: String
        # @param Values: 参数值
        # 当Name=area时，Value取值范围：
        # 亚洲：Asia
        # 欧洲：Europe
        # 非洲：Africa
        # 大洋洲：Oceania
        # 美洲：Americas

        # 当Name=code时，Value取值范围：
        # NoError：成功的响应
        # NXDomain：只在权威域名服务器的响应消息中有效，标示请求中请求的域不存在
        # NotImp：域名服务器不支持请求的类型
        # Refused：域名服务器因为策略的原因拒绝执行请求的操作
        # @type Values: Array

        attr_accessor :Name, :Value, :Values
        
        def initialize(name=nil, value=nil, values=nil)
          @Name = name
          @Value = value
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Values = params['Values']
        end
      end

      # DNS 记录
      class DnsRecord < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 主机记录
        # @type Name: String
        # @param Content: 记录值
        # @type Content: String
        # @param Mode: 代理模式
        # @type Mode: String
        # @param Ttl: TTL 值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param Locked: 域名锁
        # @type Locked: Boolean
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param Status: 解析状态
        # active: 生效
        # pending: 不生效
        # @type Status: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param DomainStatus: 域名是否开启了负载均衡，四层代理，安全
        # - lb 负载均衡
        # - security 安全
        # - l4 四层代理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainStatus: Array

        attr_accessor :Id, :Type, :Name, :Content, :Mode, :Ttl, :Priority, :CreatedOn, :ModifiedOn, :Locked, :ZoneId, :ZoneName, :Status, :Cname, :DomainStatus
        
        def initialize(id=nil, type=nil, name=nil, content=nil, mode=nil, ttl=nil, priority=nil, createdon=nil, modifiedon=nil, locked=nil, zoneid=nil, zonename=nil, status=nil, cname=nil, domainstatus=nil)
          @Id = id
          @Type = type
          @Name = name
          @Content = content
          @Mode = mode
          @Ttl = ttl
          @Priority = priority
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @Locked = locked
          @ZoneId = zoneid
          @ZoneName = zonename
          @Status = status
          @Cname = cname
          @DomainStatus = domainstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Mode = params['Mode']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @Locked = params['Locked']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Status = params['Status']
          @Cname = params['Cname']
          @DomainStatus = params['DomainStatus']
        end
      end

      # DNS 记录查询过滤条件
      class DnsRecordFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # - name: 站点名。
        # - status: 站点状态
        # @type Name: String
        # @param Values: 过滤字段值
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为name。模糊查询时，Values长度最大为1
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

      # DNSSEC 相关信息
      class DnssecInfo < TencentCloud::Common::AbstractModel
        # @param Flags: 标志
        # @type Flags: Integer
        # @param Algorithm: 加密算法
        # @type Algorithm: String
        # @param KeyType: 加密类型
        # @type KeyType: String
        # @param DigestType: 摘要类型
        # @type DigestType: String
        # @param DigestAlgorithm: 摘要算法
        # @type DigestAlgorithm: String
        # @param Digest: 摘要信息
        # @type Digest: String
        # @param DS: DS 记录值
        # @type DS: String
        # @param KeyTag: 密钥标签
        # @type KeyTag: Integer
        # @param PublicKey: 公钥
        # @type PublicKey: String

        attr_accessor :Flags, :Algorithm, :KeyType, :DigestType, :DigestAlgorithm, :Digest, :DS, :KeyTag, :PublicKey
        
        def initialize(flags=nil, algorithm=nil, keytype=nil, digesttype=nil, digestalgorithm=nil, digest=nil, ds=nil, keytag=nil, publickey=nil)
          @Flags = flags
          @Algorithm = algorithm
          @KeyType = keytype
          @DigestType = digesttype
          @DigestAlgorithm = digestalgorithm
          @Digest = digest
          @DS = ds
          @KeyTag = keytag
          @PublicKey = publickey
        end

        def deserialize(params)
          @Flags = params['Flags']
          @Algorithm = params['Algorithm']
          @KeyType = params['KeyType']
          @DigestType = params['DigestType']
          @DigestAlgorithm = params['DigestAlgorithm']
          @Digest = params['Digest']
          @DS = params['DS']
          @KeyTag = params['KeyTag']
          @PublicKey = params['PublicKey']
        end
      end

      # DownloadL7Logs请求参数结构体
      class DownloadL7LogsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间(需严格按照RFC3339标准传参)
        # @type StartTime: String
        # @param EndTime: 结束时间(需严格按照RFC3339标准传参)
        # @type EndTime: String
        # @param PageSize: 每页展示条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param Zones: 站点名集合
        # @type Zones: Array
        # @param Domains: 子域名集合
        # @type Domains: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :Zones, :Domains
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zones=nil, domains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @Zones = zones
          @Domains = domains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Zones = params['Zones']
          @Domains = params['Domains']
        end
      end

      # DownloadL7Logs返回参数结构体
      class DownloadL7LogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 七层离线日志data
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param PageSize: 页面大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNo: 页号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param Pages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :PageSize, :PageNo, :Pages, :TotalSize, :RequestId
        
        def initialize(data=nil, pagesize=nil, pageno=nil, pages=nil, totalsize=nil, requestid=nil)
          @Data = data
          @PageSize = pagesize
          @PageNo = pageno
          @Pages = pages
          @TotalSize = totalsize
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
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
          @RequestId = params['RequestId']
        end
      end

      # 失败原因
      class FailReason < TencentCloud::Common::AbstractModel
        # @param Reason: 失败原因
        # @type Reason: String
        # @param Targets: 处理失败的资源列表。
        # 该列表元素来源于输入参数中的Targets，因此格式和入参中的Targets保持一致
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

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Key: 筛选维度
        # @type Key: String
        # @param Operator: 操作符
        # @type Operator: String
        # @param Value: 筛选维度值
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

      # 地域信息
      class GeoIp < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Country: 国家名
        # @type Country: String
        # @param Continent: 洲
        # @type Continent: String
        # @param CountryEn: 国家英文名
        # @type CountryEn: String
        # @param ContinentEn: 洲
        # @type ContinentEn: String

        attr_accessor :RegionId, :Country, :Continent, :CountryEn, :ContinentEn
        
        def initialize(regionid=nil, country=nil, continent=nil, countryen=nil, continenten=nil)
          @RegionId = regionid
          @Country = country
          @Continent = continent
          @CountryEn = countryen
          @ContinentEn = continenten
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Country = params['Country']
          @Continent = params['Continent']
          @CountryEn = params['CountryEn']
          @ContinentEn = params['ContinentEn']
        end
      end

      # 刷新预热附带的头部信息
      class Header < TencentCloud::Common::AbstractModel
        # @param Name: HTTP头部
        # @type Name: String
        # @param Value: HTTP头部值
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

      # 域名证书配置
      class HostCertSetting < TencentCloud::Common::AbstractModel
        # @param Host: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param CertInfo: 服务端证书配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: Array

        attr_accessor :Host, :CertInfo
        
        def initialize(host=nil, certinfo=nil)
          @Host = host
          @CertInfo = certinfo
        end

        def deserialize(params)
          @Host = params['Host']
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @CertInfo << servercertinfo_tmp
            end
          end
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
        # @type Hsts: :class:`Tencentcloud::Teo.v20220106.models.Hsts`

        attr_accessor :Http2, :OcspStapling, :TlsVersion, :Hsts
        
        def initialize(http2=nil, ocspstapling=nil, tlsversion=nil, hsts=nil)
          @Http2 = http2
          @OcspStapling = ocspstapling
          @TlsVersion = tlsversion
          @Hsts = hsts
        end

        def deserialize(params)
          @Http2 = params['Http2']
          @OcspStapling = params['OcspStapling']
          @TlsVersion = params['TlsVersion']
          unless params['Hsts'].nil?
            @Hsts = Hsts.new
            @Hsts.deserialize(params['Hsts'])
          end
        end
      end

      # IdentifyZone请求参数结构体
      class IdentifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # IdentifyZone返回参数结构体
      class IdentifyZoneResponse < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param Subdomain: 子域
        # @type Subdomain: String
        # @param RecordType: 记录类型
        # @type RecordType: String
        # @param RecordValue: 记录值
        # @type RecordValue: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Subdomain, :RecordType, :RecordValue, :RequestId
        
        def initialize(name=nil, subdomain=nil, recordtype=nil, recordvalue=nil, requestid=nil)
          @Name = name
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
          @RequestId = params['RequestId']
        end
      end

      # ImportDnsRecords请求参数结构体
      class ImportDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param File: 文件内容
        # @type File: String

        attr_accessor :ZoneId, :File
        
        def initialize(zoneid=nil, file=nil)
          @ZoneId = zoneid
          @File = file
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @File = params['File']
        end
      end

      # ImportDnsRecords返回参数结构体
      class ImportDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Ids: 记录 ID
        # @type Ids: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ids, :RequestId
        
        def initialize(ids=nil, requestid=nil)
          @Ids = ids
          @RequestId = requestid
        end

        def deserialize(params)
          @Ids = params['Ids']
          @RequestId = params['RequestId']
        end
      end

      # 智能分析规则
      class IntelligenceRule < TencentCloud::Common::AbstractModel
        # @param Switch: 开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Items: 规则详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :Switch, :Items
        
        def initialize(switch=nil, items=nil)
          @Switch = switch
          @Items = items
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              intelligenceruleitem_tmp = IntelligenceRuleItem.new
              intelligenceruleitem_tmp.deserialize(i)
              @Items << intelligenceruleitem_tmp
            end
          end
        end
      end

      # Bot智能分析规则详情
      class IntelligenceRuleItem < TencentCloud::Common::AbstractModel
        # @param Label: 恶意BOT
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Action: 动作
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Switch: 开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Rules: []
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :Switch, :Rules
        
        def initialize(switch=nil, rules=nil)
          @Switch = switch
          @Rules = rules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              iptablerule_tmp = IpTableRule.new
              iptablerule_tmp.deserialize(i)
              @Rules << iptablerule_tmp
            end
          end
        end
      end

      # IP黑白名单详细规则
      class IpTableRule < TencentCloud::Common::AbstractModel
        # @param Action: 动作: drop拦截，trans放行，monitor观察
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param MatchFrom: 根据类型匹配：ip(根据ip), area(根据区域)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchFrom: String
        # @param MatchContent: 匹配内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchContent: String
        # @param RuleID: 规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Action, :MatchFrom, :MatchContent, :RuleID, :UpdateTime
        
        def initialize(action=nil, matchfrom=nil, matchcontent=nil, ruleid=nil, updatetime=nil)
          @Action = action
          @MatchFrom = matchfrom
          @MatchContent = matchcontent
          @RuleID = ruleid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Action = params['Action']
          @MatchFrom = params['MatchFrom']
          @MatchContent = params['MatchContent']
          @RuleID = params['RuleID']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Ipv6访问配置
      class Ipv6Access < TencentCloud::Common::AbstractModel
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
      class L7OfflineLog < TencentCloud::Common::AbstractModel
        # @param LogTime: 日志打包开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTime: Integer
        # @param Domain: 子域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Size: 原始大小 单位byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Url: 下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param LogPacketName: 日志数据包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogPacketName: String
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
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

      # 负载均衡信息
      class LoadBalancing < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Host: 子域名，填写@表示根域
        # @type Host: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param Origin: 使用的源站信息
        # @type Origin: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: String
        # @param Cname: 调度域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String

        attr_accessor :LoadBalancingId, :ZoneId, :Host, :Type, :TTL, :OriginId, :Origin, :UpdateTime, :Status, :Cname
        
        def initialize(loadbalancingid=nil, zoneid=nil, host=nil, type=nil, ttl=nil, originid=nil, origin=nil, updatetime=nil, status=nil, cname=nil)
          @LoadBalancingId = loadbalancingid
          @ZoneId = zoneid
          @Host = host
          @Type = type
          @TTL = ttl
          @OriginId = originid
          @Origin = origin
          @UpdateTime = updatetime
          @Status = status
          @Cname = cname
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @Type = params['Type']
          @TTL = params['TTL']
          @OriginId = params['OriginId']
          unless params['Origin'].nil?
            @Origin = []
            params['Origin'].each do |i|
              origingroup_tmp = OriginGroup.new
              origingroup_tmp.deserialize(i)
              @Origin << origingroup_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Cname = params['Cname']
        end
      end

      # 门神规则
      class ManagedRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param Description: 规则描述
        # @type Description: String
        # @param RuleTypeName: 规则类型名
        # @type RuleTypeName: String
        # @param RuleLevelDesc: 策略规则防护等级
        # @type RuleLevelDesc: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 规则当前状态  block, allow
        # @type Status: String
        # @param RuleTags: 规则标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTags: Array
        # @param RuleTypeDesc: 规则类型详细描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTypeDesc: String
        # @param RuleTypeId: 规则类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTypeId: Integer

        attr_accessor :RuleId, :Description, :RuleTypeName, :RuleLevelDesc, :UpdateTime, :Status, :RuleTags, :RuleTypeDesc, :RuleTypeId
        
        def initialize(ruleid=nil, description=nil, ruletypename=nil, ruleleveldesc=nil, updatetime=nil, status=nil, ruletags=nil, ruletypedesc=nil, ruletypeid=nil)
          @RuleId = ruleid
          @Description = description
          @RuleTypeName = ruletypename
          @RuleLevelDesc = ruleleveldesc
          @UpdateTime = updatetime
          @Status = status
          @RuleTags = ruletags
          @RuleTypeDesc = ruletypedesc
          @RuleTypeId = ruletypeid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Description = params['Description']
          @RuleTypeName = params['RuleTypeName']
          @RuleLevelDesc = params['RuleLevelDesc']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @RuleTags = params['RuleTags']
          @RuleTypeDesc = params['RuleTypeDesc']
          @RuleTypeId = params['RuleTypeId']
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

      # ModifyApplicationProxy请求参数结构体
      class ModifyApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param ProxyName: 当ProxyType=hostname时，表示域名或子域名；
        # 当ProxyType=instance时，表示代理名称。
        # @type ProxyName: String
        # @param ForwardClientIp: 参数已经废弃。
        # @type ForwardClientIp: String
        # @param SessionPersist: 参数已经废弃。
        # @type SessionPersist: Boolean
        # @param SessionPersistTime: 会话保持时间，不填写保持原有配置。取值范围：30-3600，单位：秒。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>不填写保持原有配置。
        # @type ProxyType: String
        # @param Ipv6: Ipv6访问配置，不填写保持原有配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220106.models.Ipv6Access`

        attr_accessor :ZoneId, :ProxyId, :ProxyName, :ForwardClientIp, :SessionPersist, :SessionPersistTime, :ProxyType, :Ipv6
        
        def initialize(zoneid=nil, proxyid=nil, proxyname=nil, forwardclientip=nil, sessionpersist=nil, sessionpersisttime=nil, proxytype=nil, ipv6=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @ProxyName = proxyname
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @Ipv6 = ipv6
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6Access.new
            @Ipv6.deserialize(params['Ipv6'])
          end
        end
      end

      # ModifyApplicationProxy返回参数结构体
      class ModifyApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 代理ID。
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

      # ModifyApplicationProxyRule请求参数结构体
      class ModifyApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Proto: 协议，取值为TCP或者UDP
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 80：80端口
        # 81-90：81至90端口
        # @type Port: Array
        # @param OriginType: 源站类型，取值：
        # custom：手动添加
        # origins：源站组
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示一个或多个源站，如：
        # OriginValue=["8.8.8.8:80","9.9.9.9:80"]
        # OriginValue=["test.com:80"]

        # 当OriginType=origins时，包含一个元素，表示源站组ID，如：
        # OriginValue=["origin-xxx"]
        # @type OriginValue: Array
        # @param ForwardClientIp: 传递客户端IP，当Proto=TCP时，取值：
        # TOA：TOA
        # PPV1: Proxy Protocol传递，协议版本V1
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # 当Proto=UDP时，取值：
        # PPV2: Proxy Protocol传递，协议版本V2
        # OFF：不传递
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持
        # @type SessionPersist: Boolean

        attr_accessor :ZoneId, :ProxyId, :RuleId, :Proto, :Port, :OriginType, :OriginValue, :ForwardClientIp, :SessionPersist
        
        def initialize(zoneid=nil, proxyid=nil, ruleid=nil, proto=nil, port=nil, origintype=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
          @Proto = params['Proto']
          @Port = params['Port']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
        end
      end

      # ModifyApplicationProxyRule返回参数结构体
      class ModifyApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationProxyRuleStatus请求参数结构体
      class ModifyApplicationProxyRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Status: 状态
        # offline: 停用
        # online: 启用
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

      # ModifyApplicationProxyStatus请求参数结构体
      class ModifyApplicationProxyStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 代理ID
        # @type ProxyId: String
        # @param Status: 状态
        # offline: 停用
        # online: 启用
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
        # @param ProxyId: 代理ID
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

      # ModifyDDoSPolicyHost请求参数结构体
      class ModifyDDoSPolicyHostRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点id
        # @type ZoneId: String
        # @param Host: 二级域名
        # @type Host: String
        # @param AccelerateType: 加速开关 on-开启加速；off-关闭加速（AccelerateType：on，SecurityType：on，安全加速，未开防护增强；AccelerateType：off，SecurityType：on，安全加速，开启防护增强；AccelerateType：on，SecurityType：off，内容加速，未开防护增强）
        # @type AccelerateType: String
        # @param PolicyId: 策略id
        # @type PolicyId: Integer
        # @param SecurityType: 安全开关 on-开启安全；off-关闭安全（AccelerateType：on，SecurityType：on，安全加速，未开防护增强；AccelerateType：off，SecurityType：on，安全加速，开启防护增强；AccelerateType：on，SecurityType：off，内容加速，未开防护增强）
        # @type SecurityType: String

        attr_accessor :ZoneId, :Host, :AccelerateType, :PolicyId, :SecurityType
        
        def initialize(zoneid=nil, host=nil, acceleratetype=nil, policyid=nil, securitytype=nil)
          @ZoneId = zoneid
          @Host = host
          @AccelerateType = acceleratetype
          @PolicyId = policyid
          @SecurityType = securitytype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @AccelerateType = params['AccelerateType']
          @PolicyId = params['PolicyId']
          @SecurityType = params['SecurityType']
        end
      end

      # ModifyDDoSPolicyHost返回参数结构体
      class ModifyDDoSPolicyHostResponse < TencentCloud::Common::AbstractModel
        # @param Host: 修改成功的host
        # @type Host: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Host, :RequestId
        
        def initialize(host=nil, requestid=nil)
          @Host = host
          @RequestId = requestid
        end

        def deserialize(params)
          @Host = params['Host']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSPolicy请求参数结构体
      class ModifyDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略id。
        # @type PolicyId: Integer
        # @param ZoneId: 站点id。
        # @type ZoneId: String
        # @param DdosRule: DDoS防护配置详情。
        # @type DdosRule: :class:`Tencentcloud::Teo.v20220106.models.DdosRule`

        attr_accessor :PolicyId, :ZoneId, :DdosRule
        
        def initialize(policyid=nil, zoneid=nil, ddosrule=nil)
          @PolicyId = policyid
          @ZoneId = zoneid
          @DdosRule = ddosrule
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @ZoneId = params['ZoneId']
          unless params['DdosRule'].nil?
            @DdosRule = DdosRule.new
            @DdosRule.deserialize(params['DdosRule'])
          end
        end
      end

      # ModifyDDoSPolicy返回参数结构体
      class ModifyDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略id。
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId
        
        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDefaultCertificate请求参数结构体
      class ModifyDefaultCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param CertId: 默认证书ID
        # @type CertId: String
        # @param Status: 证书状态
        # deployed: 部署证书
        # disabled:禁用证书
        # 失败状态下重新deployed即可重试失败
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

      # ModifyDnsRecord请求参数结构体
      class ModifyDnsRecordRequest < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名称
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Mode: 代理模式
        # @type Mode: String

        attr_accessor :Id, :ZoneId, :Type, :Name, :Content, :Ttl, :Priority, :Mode
        
        def initialize(id=nil, zoneid=nil, type=nil, name=nil, content=nil, ttl=nil, priority=nil, mode=nil)
          @Id = id
          @ZoneId = zoneid
          @Type = type
          @Name = name
          @Content = content
          @Ttl = ttl
          @Priority = priority
          @Mode = mode
        end

        def deserialize(params)
          @Id = params['Id']
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @Mode = params['Mode']
        end
      end

      # ModifyDnsRecord返回参数结构体
      class ModifyDnsRecordResponse < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID
        # @type Id: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Name: 记录名称
        # @type Name: String
        # @param Content: 记录内容
        # @type Content: String
        # @param Ttl: 生存时间值
        # @type Ttl: Integer
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Mode: 代理模式
        # @type Mode: String
        # @param Status: 解析状态
        # @type Status: String
        # @param Cname: CNAME 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Locked: 锁定状态
        # @type Locked: Boolean
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Type, :Name, :Content, :Ttl, :Priority, :Mode, :Status, :Cname, :Locked, :CreatedOn, :ModifiedOn, :ZoneId, :ZoneName, :RequestId
        
        def initialize(id=nil, type=nil, name=nil, content=nil, ttl=nil, priority=nil, mode=nil, status=nil, cname=nil, locked=nil, createdon=nil, modifiedon=nil, zoneid=nil, zonename=nil, requestid=nil)
          @Id = id
          @Type = type
          @Name = name
          @Content = content
          @Ttl = ttl
          @Priority = priority
          @Mode = mode
          @Status = status
          @Cname = cname
          @Locked = locked
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @ZoneId = zoneid
          @ZoneName = zonename
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @Content = params['Content']
          @Ttl = params['Ttl']
          @Priority = params['Priority']
          @Mode = params['Mode']
          @Status = params['Status']
          @Cname = params['Cname']
          @Locked = params['Locked']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDnssec请求参数结构体
      class ModifyDnssecRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Status: DNSSEC 状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String

        attr_accessor :Id, :Status
        
        def initialize(id=nil, status=nil)
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # ModifyDnssec返回参数结构体
      class ModifyDnssecResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: DNSSEC 状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String
        # @param Dnssec: DNSSEC 相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dnssec: :class:`Tencentcloud::Teo.v20220106.models.DnssecInfo`
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Status, :Dnssec, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, status=nil, dnssec=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Status = status
          @Dnssec = dnssec
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          unless params['Dnssec'].nil?
            @Dnssec = DnssecInfo.new
            @Dnssec.deserialize(params['Dnssec'])
          end
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # ModifyHostsCertificate请求参数结构体
      class ModifyHostsCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Hosts: 本次变更的域名
        # @type Hosts: Array
        # @param CertInfo: 证书信息, 只需要传入 CertId 即可, 如果为空, 则使用默认证书
        # @type CertInfo: Array

        attr_accessor :ZoneId, :Hosts, :CertInfo
        
        def initialize(zoneid=nil, hosts=nil, certinfo=nil)
          @ZoneId = zoneid
          @Hosts = hosts
          @CertInfo = certinfo
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Hosts = params['Hosts']
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @CertInfo << servercertinfo_tmp
            end
          end
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

      # ModifyLoadBalancing请求参数结构体
      class ModifyLoadBalancingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param Type: 代理模式：
        # dns_only: 仅DNS
        # proxied: 开启代理
        # @type Type: String
        # @param OriginId: 使用的源站组ID
        # @type OriginId: Array
        # @param TTL: 当Type=dns_only表示DNS的TTL时间
        # @type TTL: Integer

        attr_accessor :ZoneId, :LoadBalancingId, :Type, :OriginId, :TTL
        
        def initialize(zoneid=nil, loadbalancingid=nil, type=nil, originid=nil, ttl=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
          @Type = type
          @OriginId = originid
          @TTL = ttl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
          @Type = params['Type']
          @OriginId = params['OriginId']
          @TTL = params['TTL']
        end
      end

      # ModifyLoadBalancing返回参数结构体
      class ModifyLoadBalancingResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoadBalancingStatus请求参数结构体
      class ModifyLoadBalancingStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param Status: 状态
        # online: 启用
        # offline: 停用
        # @type Status: String

        attr_accessor :ZoneId, :LoadBalancingId, :Status
        
        def initialize(zoneid=nil, loadbalancingid=nil, status=nil)
          @ZoneId = zoneid
          @LoadBalancingId = loadbalancingid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LoadBalancingId = params['LoadBalancingId']
          @Status = params['Status']
        end
      end

      # ModifyLoadBalancingStatus返回参数结构体
      class ModifyLoadBalancingStatusResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancingId: 负载均衡ID
        # @type LoadBalancingId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancingId, :RequestId
        
        def initialize(loadbalancingid=nil, requestid=nil)
          @LoadBalancingId = loadbalancingid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancingId = params['LoadBalancingId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyOriginGroup请求参数结构体
      class ModifyOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param OriginName: 源站组名称
        # @type OriginName: String
        # @param Type: 配置类型，当OriginType=self 时，需要填写：
        # area: 按区域配置
        # weight: 按权重配置
        # 当OriginType=third_party/cos 时，不需要填写
        # @type Type: String
        # @param Record: 源站记录
        # @type Record: Array
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param OriginType: 源站类型
        # self：自有源站
        # third_party：第三方源站
        # cos：腾讯云COS源站
        # @type OriginType: String

        attr_accessor :OriginId, :OriginName, :Type, :Record, :ZoneId, :OriginType
        
        def initialize(originid=nil, originname=nil, type=nil, record=nil, zoneid=nil, origintype=nil)
          @OriginId = originid
          @OriginName = originname
          @Type = type
          @Record = record
          @ZoneId = zoneid
          @OriginType = origintype
        end

        def deserialize(params)
          @OriginId = params['OriginId']
          @OriginName = params['OriginName']
          @Type = params['Type']
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Record << originrecord_tmp
            end
          end
          @ZoneId = params['ZoneId']
          @OriginType = params['OriginType']
        end
      end

      # ModifyOriginGroup返回参数结构体
      class ModifyOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginId, :RequestId
        
        def initialize(originid=nil, requestid=nil)
          @OriginId = originid
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginId = params['OriginId']
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

        attr_accessor :ZoneId, :RuleName, :Rules, :RuleId, :Status
        
        def initialize(zoneid=nil, rulename=nil, rules=nil, ruleid=nil, status=nil)
          @ZoneId = zoneid
          @RuleName = rulename
          @Rules = rules
          @RuleId = ruleid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleName = params['RuleName']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleitem_tmp = RuleItem.new
              ruleitem_tmp.deserialize(i)
              @Rules << ruleitem_tmp
            end
          end
          @RuleId = params['RuleId']
          @Status = params['Status']
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
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 二级域名/应用名
        # @type Entity: String
        # @param Config: 安全配置
        # @type Config: :class:`Tencentcloud::Teo.v20220106.models.SecurityConfig`

        attr_accessor :ZoneId, :Entity, :Config
        
        def initialize(zoneid=nil, entity=nil, config=nil)
          @ZoneId = zoneid
          @Entity = entity
          @Config = config
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          unless params['Config'].nil?
            @Config = SecurityConfig.new
            @Config.deserialize(params['Config'])
          end
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

      # ModifyZoneCnameSpeedUp请求参数结构体
      class ModifyZoneCnameSpeedUpRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Status: CNAME 加速状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String

        attr_accessor :Id, :Status
        
        def initialize(id=nil, status=nil)
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # ModifyZoneCnameSpeedUp返回参数结构体
      class ModifyZoneCnameSpeedUpResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Status: CNAME 加速状态
        # - enabled 开启
        # - disabled 关闭
        # @type Status: String
        # @param ModifiedOn: 更新时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Status, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, status=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Status = status
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
        end
      end

      # ModifyZone请求参数结构体
      class ModifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID，用于唯一标识站点信息
        # @type Id: String
        # @param Type: 站点接入方式
        # - full NS 接入
        # - partial CNAME 接入
        # @type Type: String
        # @param VanityNameServers: 自定义站点信息
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220106.models.VanityNameServers`

        attr_accessor :Id, :Type, :VanityNameServers
        
        def initialize(id=nil, type=nil, vanitynameservers=nil)
          @Id = id
          @Type = type
          @VanityNameServers = vanitynameservers
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          unless params['VanityNameServers'].nil?
            @VanityNameServers = VanityNameServers.new
            @VanityNameServers.deserialize(params['VanityNameServers'])
          end
        end
      end

      # ModifyZone返回参数结构体
      class ModifyZoneResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param OriginalNameServers: 站点当前使用的 NS
        # @type OriginalNameServers: Array
        # @param Status: 站点状态
        # - pending 未接入 NS
        # - active 已接入 NS
        # - moved NS 已切走
        # @type Status: String
        # @param Type: 站点接入方式
        # - full NS 接入
        # - partial CNAME 接入
        # @type Type: String
        # @param NameServers: 腾讯云分配的 NS 列表
        # @type NameServers: Array
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间
        # @type ModifiedOn: String
        # @param CnameStatus: cname 接入状态
        # - finished 站点验证完成
        # - pending 站点验证中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :OriginalNameServers, :Status, :Type, :NameServers, :CreatedOn, :ModifiedOn, :CnameStatus, :RequestId
        
        def initialize(id=nil, name=nil, originalnameservers=nil, status=nil, type=nil, nameservers=nil, createdon=nil, modifiedon=nil, cnamestatus=nil, requestid=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @Status = status
          @Type = type
          @NameServers = nameservers
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @CnameStatus = cnamestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @OriginalNameServers = params['OriginalNameServers']
          @Status = params['Status']
          @Type = params['Type']
          @NameServers = params['NameServers']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @CnameStatus = params['CnameStatus']
          @RequestId = params['RequestId']
        end
      end

      # ModifyZoneSetting请求参数结构体
      class ModifyZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 待变更的站点ID。
        # @type ZoneId: String
        # @param Cache: 缓存过期时间配置。
        # 不填写表示保持原有配置。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置。
        # 不填写表示保持原有配置。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220106.models.CacheKey`
        # @param MaxAge: 浏览器缓存配置。
        # 不填写表示保持原有配置。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220106.models.MaxAge`
        # @param OfflineCache: 离线缓存配置。
        # 不填写表示保持原有配置。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220106.models.OfflineCache`
        # @param Quic: Quic访问配置。
        # 不填写表示保持原有配置。
        # @type Quic: :class:`Tencentcloud::Teo.v20220106.models.Quic`
        # @param PostMaxSize: Post请求传输配置。
        # 不填写表示保持原有配置。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220106.models.PostMaxSize`
        # @param Compression: 智能压缩配置。
        # 不填写表示保持原有配置。
        # @type Compression: :class:`Tencentcloud::Teo.v20220106.models.Compression`
        # @param UpstreamHttp2: Http2回源配置。
        # 不填写表示保持原有配置。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220106.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制Https跳转配置。
        # 不填写表示保持原有配置。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220106.models.ForceRedirect`
        # @param Https: Https加速配置。
        # 不填写表示保持原有配置。
        # @type Https: :class:`Tencentcloud::Teo.v20220106.models.Https`
        # @param Origin: 源站配置。
        # 不填写表示保持原有配置。
        # @type Origin: :class:`Tencentcloud::Teo.v20220106.models.Origin`
        # @param SmartRouting: 智能加速配置。
        # 不填写表示保持原有配置。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220106.models.SmartRouting`
        # @param WebSocket: WebSocket配置。
        # 不填写表示保持原有配置。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220106.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置。
        # 不填写表示保持原有配置。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220106.models.ClientIp`
        # @param CachePrefresh: 缓存预刷新配置。
        # 不填写表示保持原有配置。
        # @type CachePrefresh: :class:`Tencentcloud::Teo.v20220106.models.CachePrefresh`
        # @param Ipv6: Ipv6访问配置。
        # 不填写表示保持原有配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220106.models.Ipv6Access`

        attr_accessor :ZoneId, :Cache, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :WebSocket, :ClientIpHeader, :CachePrefresh, :Ipv6
        
        def initialize(zoneid=nil, cache=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, websocket=nil, clientipheader=nil, cacheprefresh=nil, ipv6=nil)
          @ZoneId = zoneid
          @Cache = cache
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
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Cache'].nil?
            @Cache = CacheConfig.new
            @Cache.deserialize(params['Cache'])
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
            @ClientIpHeader = ClientIp.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
          unless params['CachePrefresh'].nil?
            @CachePrefresh = CachePrefresh.new
            @CachePrefresh.deserialize(params['CachePrefresh'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6Access.new
            @Ipv6.deserialize(params['Ipv6'])
          end
        end
      end

      # ModifyZoneSetting返回参数结构体
      class ModifyZoneSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZoneStatus请求参数结构体
      class ModifyZoneStatusRequest < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Paused: 站点状态
        # - false 开启站点
        # - true 关闭站点
        # @type Paused: Boolean

        attr_accessor :Id, :Paused
        
        def initialize(id=nil, paused=nil)
          @Id = id
          @Paused = paused
        end

        def deserialize(params)
          @Id = params['Id']
          @Paused = params['Paused']
        end
      end

      # ModifyZoneStatus返回参数结构体
      class ModifyZoneStatusResponse < TencentCloud::Common::AbstractModel
        # @param Id: 站点 ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Paused: 站点状态
        # - false 开启站点
        # - true 关闭站点
        # @type Paused: Boolean
        # @param ModifiedOn: 更新时间
        # @type ModifiedOn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :Paused, :ModifiedOn, :RequestId
        
        def initialize(id=nil, name=nil, paused=nil, modifiedon=nil, requestid=nil)
          @Id = id
          @Name = name
          @Paused = paused
          @ModifiedOn = modifiedon
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Paused = params['Paused']
          @ModifiedOn = params['ModifiedOn']
          @RequestId = params['RequestId']
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
        # <li>https：强制 https 回源，https 回源时仅支持源站 443 端口。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullProtocol: String
        # @param CosPrivateAccess: OriginType 为对象存储（COS）时，可以指定是否允许访问私有 bucket。
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

      # 源站健康检查，源站状态信息
      class OriginCheckOriginStatus < TencentCloud::Common::AbstractModel
        # @param Status: healthy: 健康，unhealthy: 不健康，process: 探测中
        # @type Status: String
        # @param Host: host列表，源站组不健康时存在值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: Array

        attr_accessor :Status, :Host
        
        def initialize(status=nil, host=nil)
          @Status = status
          @Host = host
        end

        def deserialize(params)
          @Status = params['Status']
          @Host = params['Host']
        end
      end

      # 源站组查询过滤参数
      class OriginFilter < TencentCloud::Common::AbstractModel
        # @param Name: 要过滤的字段，支持：name
        # @type Name: String
        # @param Value: 要过滤的值
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

      # 源站组信息
      class OriginGroup < TencentCloud::Common::AbstractModel
        # @param OriginId: 源站组ID
        # @type OriginId: String
        # @param OriginName: 源站组名称
        # @type OriginName: String
        # @param Type: 源站组配置类型
        # area：表示按照Record记录中的Area字段进行按客户端IP所在区域回源。
        # weight：表示按照Record记录中的Weight字段进行按权重回源。
        # @type Type: String
        # @param Record: 记录
        # @type Record: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param OriginType: 源站类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginType: String
        # @param ApplicationProxyUsed: 当前源站组是否被四层代理使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationProxyUsed: Boolean
        # @param LoadBalancingUsed: 当前源站组是否被负载均衡使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsed: Boolean
        # @param Status: 源站状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: :class:`Tencentcloud::Teo.v20220106.models.OriginCheckOriginStatus`
        # @param LoadBalancingUsedType: 使用当前源站组的负载均衡的类型：
        # none：未被使用
        # dns_only：被仅DNS类型负载均衡使用
        # proxied：被代理加速类型负载均衡使用
        # both：同时被仅DNS和代理加速类型负载均衡使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsedType: String

        attr_accessor :OriginId, :OriginName, :Type, :Record, :UpdateTime, :ZoneId, :ZoneName, :OriginType, :ApplicationProxyUsed, :LoadBalancingUsed, :Status, :LoadBalancingUsedType
        
        def initialize(originid=nil, originname=nil, type=nil, record=nil, updatetime=nil, zoneid=nil, zonename=nil, origintype=nil, applicationproxyused=nil, loadbalancingused=nil, status=nil, loadbalancingusedtype=nil)
          @OriginId = originid
          @OriginName = originname
          @Type = type
          @Record = record
          @UpdateTime = updatetime
          @ZoneId = zoneid
          @ZoneName = zonename
          @OriginType = origintype
          @ApplicationProxyUsed = applicationproxyused
          @LoadBalancingUsed = loadbalancingused
          @Status = status
          @LoadBalancingUsedType = loadbalancingusedtype
        end

        def deserialize(params)
          @OriginId = params['OriginId']
          @OriginName = params['OriginName']
          @Type = params['Type']
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Record << originrecord_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @OriginType = params['OriginType']
          @ApplicationProxyUsed = params['ApplicationProxyUsed']
          @LoadBalancingUsed = params['LoadBalancingUsed']
          unless params['Status'].nil?
            @Status = OriginCheckOriginStatus.new
            @Status.deserialize(params['Status'])
          end
          @LoadBalancingUsedType = params['LoadBalancingUsedType']
        end
      end

      # 源站组记录
      class OriginRecord < TencentCloud::Common::AbstractModel
        # @param Record: 记录值
        # @type Record: String
        # @param Area: 当源站配置类型Type=area时，表示区域
        # 为空表示默认区域
        # @type Area: Array
        # @param Weight: 当源站配置类型Type=weight时，表示权重
        # 取值范围为[1-100]
        # 源站组内多个源站权重总和应为100。
        # 当源站配置类型Type=proto，表示权重
        # 取值范围为[1-100]
        # 源站组内Proto相同的多个源站权重总和应为100。
        # @type Weight: Integer
        # @param Port: 端口
        # @type Port: Integer
        # @param RecordId: 记录ID
        # @type RecordId: String
        # @param Private: 是否私有鉴权
        # 当源站类型OriginType=third_part时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Private: Boolean
        # @param PrivateParameter: 私有鉴权参数
        # 当源站类型Private=true时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateParameter: Array
        # @param Proto: 当源站配置类型Type=proto时，表示客户端请求协议，取值：http/https
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Proto: String

        attr_accessor :Record, :Area, :Weight, :Port, :RecordId, :Private, :PrivateParameter, :Proto
        
        def initialize(record=nil, area=nil, weight=nil, port=nil, recordid=nil, private=nil, privateparameter=nil, proto=nil)
          @Record = record
          @Area = area
          @Weight = weight
          @Port = port
          @RecordId = recordid
          @Private = private
          @PrivateParameter = privateparameter
          @Proto = proto
        end

        def deserialize(params)
          @Record = params['Record']
          @Area = params['Area']
          @Weight = params['Weight']
          @Port = params['Port']
          @RecordId = params['RecordId']
          @Private = params['Private']
          unless params['PrivateParameter'].nil?
            @PrivateParameter = []
            params['PrivateParameter'].each do |i|
              originrecordprivateparameter_tmp = OriginRecordPrivateParameter.new
              originrecordprivateparameter_tmp.deserialize(i)
              @PrivateParameter << originrecordprivateparameter_tmp
            end
          end
          @Proto = params['Proto']
        end
      end

      # 源站记录私有鉴权参数
      class OriginRecordPrivateParameter < TencentCloud::Common::AbstractModel
        # @param Name: 私有鉴权参数名称：
        # "AccessKeyId"：Access Key ID
        # "SecretAccessKey"：Secret Access Key
        # @type Name: String
        # @param Value: 私有鉴权参数数值
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

      # edgeone套餐信息
      class PlanInfo < TencentCloud::Common::AbstractModel
        # @param Currency: 结算货币类型，取值有：
        # <li> CNY ：人民币结算； </li>
        # <li> USD ：美元结算。</li>
        # @type Currency: String
        # @param Flux: 套餐所含流量（单位：字节）
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
        # <li> ent ：全球内容分发网络（不包括中国大陆）企业版套餐； </li>
        # <li> ent_with_bot ： 全球内容分发网络（不包括中国大陆）企业版套餐附带bot管理；</li>
        # <li> ent_cm ：中国大陆内容分发网络企业版套餐； </li>
        # <li> ent_cm_with_bot ：中国大陆内容分发网络企业版套餐附带bot管理。</li>
        # @type PlanType: String
        # @param Price: 套餐价格（单位：分）
        # @type Price: Float
        # @param Request: 套餐所含请求次数（单位：字节）
        # @type Request: Integer
        # @param SiteNumber: 套餐所能绑定的站点个数。
        # @type SiteNumber: Integer

        attr_accessor :Currency, :Flux, :Frequency, :PlanType, :Price, :Request, :SiteNumber
        
        def initialize(currency=nil, flux=nil, frequency=nil, plantype=nil, price=nil, request=nil, sitenumber=nil)
          @Currency = currency
          @Flux = flux
          @Frequency = frequency
          @PlanType = plantype
          @Price = price
          @Request = request
          @SiteNumber = sitenumber
        end

        def deserialize(params)
          @Currency = params['Currency']
          @Flux = params['Flux']
          @Frequency = params['Frequency']
          @PlanType = params['PlanType']
          @Price = params['Price']
          @Request = params['Request']
          @SiteNumber = params['SiteNumber']
        end
      end

      # 用户画像规则详情
      class PortraitManagedRuleDetail < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param Description: 规则的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RuleTypeName: 规则所属类型的名字, botdb(用户画像)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTypeName: String
        # @param ClassificationId: 规则内的功能分类Id(扫描器，Bot行为等)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationId: Integer
        # @param Status: 规则当前所属动作状态(block, alg, ...)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :RuleId, :Description, :RuleTypeName, :ClassificationId, :Status
        
        def initialize(ruleid=nil, description=nil, ruletypename=nil, classificationid=nil, status=nil)
          @RuleId = ruleid
          @Description = description
          @RuleTypeName = ruletypename
          @ClassificationId = classificationid
          @Status = status
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Description = params['Description']
          @RuleTypeName = params['RuleTypeName']
          @ClassificationId = params['ClassificationId']
          @Status = params['Status']
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

      # 查询条件
      class QueryCondition < TencentCloud::Common::AbstractModel
        # @param Key: 维度
        # @type Key: String
        # @param Operator: 操作符
        # @type Operator: String
        # @param Value: 维度值
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

      # RateLimit配置
      class RateLimitConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关
        # @type Switch: String
        # @param UserRules: 用户规则
        # @type UserRules: Array
        # @param Template: 默认模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Template: :class:`Tencentcloud::Teo.v20220106.models.RateLimitTemplate`
        # @param Intelligence: 智能客户端过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intelligence: :class:`Tencentcloud::Teo.v20220106.models.RateLimitIntelligence`

        attr_accessor :Switch, :UserRules, :Template, :Intelligence
        
        def initialize(switch=nil, userrules=nil, template=nil, intelligence=nil)
          @Switch = switch
          @UserRules = userrules
          @Template = template
          @Intelligence = intelligence
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['UserRules'].nil?
            @UserRules = []
            params['UserRules'].each do |i|
              ratelimituserrule_tmp = RateLimitUserRule.new
              ratelimituserrule_tmp.deserialize(i)
              @UserRules << ratelimituserrule_tmp
            end
          end
          unless params['Template'].nil?
            @Template = RateLimitTemplate.new
            @Template.deserialize(params['Template'])
          end
          unless params['Intelligence'].nil?
            @Intelligence = RateLimitIntelligence.new
            @Intelligence.deserialize(params['Intelligence'])
          end
        end
      end

      # 智能客户端过滤
      class RateLimitIntelligence < TencentCloud::Common::AbstractModel
        # @param Switch: 功能开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Action: 执行动作 monitor(观察), alg(挑战)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String

        attr_accessor :Switch, :Action
        
        def initialize(switch=nil, action=nil)
          @Switch = switch
          @Action = action
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
        end
      end

      # 速率限制模板
      class RateLimitTemplate < TencentCloud::Common::AbstractModel
        # @param Mode: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Detail: 模板值详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Teo.v20220106.models.RateLimitTemplateDetail`

        attr_accessor :Mode, :Detail
        
        def initialize(mode=nil, detail=nil)
          @Mode = mode
          @Detail = detail
        end

        def deserialize(params)
          @Mode = params['Mode']
          unless params['Detail'].nil?
            @Detail = RateLimitTemplateDetail.new
            @Detail.deserialize(params['Detail'])
          end
        end
      end

      # 模板当前详细配置
      class RateLimitTemplateDetail < TencentCloud::Common::AbstractModel
        # @param Mode: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param ID: 唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Action: 处置动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param PunishTime: 惩罚时间，秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PunishTime: Integer
        # @param Threshold: 阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Threshold: Integer
        # @param Period: 统计周期
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Threshold: RateLimit统计阈值
        # @type Threshold: Integer
        # @param Period: RateLimit统计时间
        # @type Period: Integer
        # @param RuleName: 规则名
        # @type RuleName: String
        # @param Action: 动作：monitor(观察), drop(拦截)
        # @type Action: String
        # @param PunishTime: 惩罚时长
        # @type PunishTime: Integer
        # @param PunishTimeUnit: 处罚时长单位，second
        # @type PunishTimeUnit: String
        # @param RuleStatus: 规则状态
        # @type RuleStatus: String
        # @param Conditions: 规则
        # @type Conditions: Array
        # @param RulePriority: 规则权重
        # @type RulePriority: Integer
        # @param RuleID: 规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleID: Integer
        # @param FreqFields: 过滤词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreqFields: Array
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Threshold, :Period, :RuleName, :Action, :PunishTime, :PunishTimeUnit, :RuleStatus, :Conditions, :RulePriority, :RuleID, :FreqFields, :UpdateTime
        
        def initialize(threshold=nil, period=nil, rulename=nil, action=nil, punishtime=nil, punishtimeunit=nil, rulestatus=nil, conditions=nil, rulepriority=nil, ruleid=nil, freqfields=nil, updatetime=nil)
          @Threshold = threshold
          @Period = period
          @RuleName = rulename
          @Action = action
          @PunishTime = punishtime
          @PunishTimeUnit = punishtimeunit
          @RuleStatus = rulestatus
          @Conditions = conditions
          @RulePriority = rulepriority
          @RuleID = ruleid
          @FreqFields = freqfields
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Threshold = params['Threshold']
          @Period = params['Period']
          @RuleName = params['RuleName']
          @Action = params['Action']
          @PunishTime = params['PunishTime']
          @PunishTimeUnit = params['PunishTimeUnit']
          @RuleStatus = params['RuleStatus']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              aclcondition_tmp = ACLCondition.new
              aclcondition_tmp.deserialize(i)
              @Conditions << aclcondition_tmp
            end
          end
          @RulePriority = params['RulePriority']
          @RuleID = params['RuleID']
          @FreqFields = params['FreqFields']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ReclaimZone请求参数结构体
      class ReclaimZoneRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # ReclaimZone返回参数结构体
      class ReclaimZoneResponse < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :RequestId
        
        def initialize(name=nil, requestid=nil)
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
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

      # 规则引擎功能项操作，对于一种功能只对应下面三种类型的其中一种，RuleAction 数组中的每一项只能是其中一个类型，更多功能项的填写规范可调用接口 [查询规则引擎的设置参数](https://tcloud4api.woa.com/document/product/1657/79433?!preview&!document=1) 查看。
      class RuleAction < TencentCloud::Common::AbstractModel
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
        # <li> OcspStapling。</li>
        # <li> HTTP/2 访问（Http2）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalAction: :class:`Tencentcloud::Teo.v20220106.models.RuleNormalAction`
        # @param RewriteAction: 带有请求头/响应头的功能操作，选择该类型的功能项有：
        # <li> 修改 HTTP 请求头（RequestHeader）；</li>
        # <li> 修改HTTP响应头（ResponseHeader）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewriteAction: :class:`Tencentcloud::Teo.v20220106.models.RuleRewriteAction`
        # @param CodeAction: 带有状态码的功能操作，选择该类型的功能项有：
        # <li> 自定义错误页面（ErrorPage）；</li>
        # <li> 状态码缓存 TTL（StatusCodeCache）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeAction: :class:`Tencentcloud::Teo.v20220106.models.RuleCodeAction`

        attr_accessor :NormalAction, :RewriteAction, :CodeAction
        
        def initialize(normalaction=nil, rewriteaction=nil, codeaction=nil)
          @NormalAction = normalaction
          @RewriteAction = rewriteaction
          @CodeAction = codeaction
        end

        def deserialize(params)
          unless params['NormalAction'].nil?
            @NormalAction = RuleNormalAction.new
            @NormalAction.deserialize(params['NormalAction'])
          end
          unless params['RewriteAction'].nil?
            @RewriteAction = RuleRewriteAction.new
            @RewriteAction.deserialize(params['RewriteAction'])
          end
          unless params['CodeAction'].nil?
            @CodeAction = RuleCodeAction.new
            @CodeAction.deserialize(params['CodeAction'])
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
        # @type ExtraParameter: :class:`Tencentcloud::Teo.v20220106.models.RuleExtraParameter`

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

      # 规则引擎带有状态码的动作
      class RuleCodeAction < TencentCloud::Common::AbstractModel
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
        # <li> notequal: 不等于。</li>
        # @type Operator: String
        # @param Target: 匹配类型，取值有：
        # <li> 全部（站点任意请求）: host。 </li>
        # <li> 文件名: filename； </li>
        # <li> 文件后缀: extension； </li>
        # <li> HOST: host； </li>
        # <li> URL Full: full_url，当前站点下完整 URL 路径，必须包含 HTTP 协议，Host 和 路径； </li>
        # <li> URL Path: url，当前站点下 URL 路径的请求。 </li>
        # @type Target: String
        # @param Values: 对应匹配类型的参数值，对应匹配类型的取值有：
        # <li> 文件后缀：jpg、txt等文件后缀；</li>
        # <li> 文件名称：例如 foo.jpg 中的 foo；</li>
        # <li> 全部（站点任意请求）： all； </li>
        # <li> HOST：当前站点下的 host ，例如www.maxx55.com；</li>
        # <li> URL Path：当前站点下 URL 路径的请求，例如：/example；</li>
        # <li> URL Full：当前站点下完整 URL 请求，必须包含 HTTP 协议，Host 和 路径，例如：https://www.maxx55.cn/example。</li>
        # @type Values: Array

        attr_accessor :Operator, :Target, :Values
        
        def initialize(operator=nil, target=nil, values=nil)
          @Operator = operator
          @Target = target
          @Values = values
        end

        def deserialize(params)
          @Operator = params['Operator']
          @Target = params['Target']
          @Values = params['Values']
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
        # @type Choices: String

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

      # 规则查询 Filter
      class RuleFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数，取值有：
        # <li> RULE_ID：规则 ID。 </li>
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

      # 规则引擎规则项，Conditions 数组内多个项的关系为 或，内层 Conditions 列表内多个项的关系为 且。
      class RuleItem < TencentCloud::Common::AbstractModel
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
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @Actions << ruleaction_tmp
            end
          end
        end
      end

      # 规则引擎常规类型的动作
      class RuleNormalAction < TencentCloud::Common::AbstractModel
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

      # 规则引擎HTTP请求头/响应头类型的动作
      class RuleRewriteAction < TencentCloud::Common::AbstractModel
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

      # 规则引擎规则详情
      class RuleSettingDetail < TencentCloud::Common::AbstractModel
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

        attr_accessor :RuleId, :RuleName, :Status, :Rules, :RulePriority
        
        def initialize(ruleid=nil, rulename=nil, status=nil, rules=nil, rulepriority=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Status = status
          @Rules = rules
          @RulePriority = rulepriority
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleitem_tmp = RuleItem.new
              ruleitem_tmp.deserialize(i)
              @Rules << ruleitem_tmp
            end
          end
          @RulePriority = params['RulePriority']
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
        # @type ExtraParameter: :class:`Tencentcloud::Teo.v20220106.models.RuleExtraParameter`

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

      # ScanDnsRecords请求参数结构体
      class ScanDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # ScanDnsRecords返回参数结构体
      class ScanDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Status: 扫描状态
        # - doing 扫描中
        # - done 扫描完成
        # @type Status: String
        # @param RecordsAdded: 扫描后添加的记录数
        # @type RecordsAdded: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RecordsAdded, :RequestId
        
        def initialize(status=nil, recordsadded=nil, requestid=nil)
          @Status = status
          @RecordsAdded = recordsadded
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RecordsAdded = params['RecordsAdded']
          @RequestId = params['RequestId']
        end
      end

      # 安全数据Entry返回值
      class SecEntry < TencentCloud::Common::AbstractModel
        # @param Key: 查询维度值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 查询维度下详细数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 安全数据Entry对应的值
      class SecEntryValue < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param Detail: 时序数据详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param Max: 最大值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: Integer
        # @param Avg: 平均值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avg: Float
        # @param Sum: 数据总和。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 安全规则（cc/waf/bot）相关信息
      class SecRuleRelatedInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID列表（99999为无效id）。
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

        attr_accessor :RuleId, :Action, :RiskLevel, :RuleLevel, :Description, :RuleTypeName
        
        def initialize(ruleid=nil, action=nil, risklevel=nil, rulelevel=nil, description=nil, ruletypename=nil)
          @RuleId = ruleid
          @Action = action
          @RiskLevel = risklevel
          @RuleLevel = rulelevel
          @Description = description
          @RuleTypeName = ruletypename
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Action = params['Action']
          @RiskLevel = params['RiskLevel']
          @RuleLevel = params['RuleLevel']
          @Description = params['Description']
          @RuleTypeName = params['RuleTypeName']
        end
      end

      # 安全配置
      class SecurityConfig < TencentCloud::Common::AbstractModel
        # @param WafConfig: 门神配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafConfig: :class:`Tencentcloud::Teo.v20220106.models.WafConfig`
        # @param RateLimitConfig: RateLimit配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitConfig: :class:`Tencentcloud::Teo.v20220106.models.RateLimitConfig`
        # @param DdosConfig: DDoS配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosConfig: :class:`Tencentcloud::Teo.v20220106.models.DDoSConfig`
        # @param AclConfig: ACL配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclConfig: :class:`Tencentcloud::Teo.v20220106.models.AclConfig`
        # @param BotConfig: Bot配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotConfig: :class:`Tencentcloud::Teo.v20220106.models.BotConfig`
        # @param SwitchConfig: 总开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SwitchConfig: :class:`Tencentcloud::Teo.v20220106.models.SwitchConfig`
        # @param IpTableConfig: IP黑白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpTableConfig: :class:`Tencentcloud::Teo.v20220106.models.IpTableConfig`

        attr_accessor :WafConfig, :RateLimitConfig, :DdosConfig, :AclConfig, :BotConfig, :SwitchConfig, :IpTableConfig
        
        def initialize(wafconfig=nil, ratelimitconfig=nil, ddosconfig=nil, aclconfig=nil, botconfig=nil, switchconfig=nil, iptableconfig=nil)
          @WafConfig = wafconfig
          @RateLimitConfig = ratelimitconfig
          @DdosConfig = ddosconfig
          @AclConfig = aclconfig
          @BotConfig = botconfig
          @SwitchConfig = switchconfig
          @IpTableConfig = iptableconfig
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
          unless params['DdosConfig'].nil?
            @DdosConfig = DDoSConfig.new
            @DdosConfig.deserialize(params['DdosConfig'])
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
        end
      end

      # 安全防护实例
      class SecurityEntity < TencentCloud::Common::AbstractModel
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param Entity: 二级域名
        # @type Entity: String
        # @param EntityType: 类型 domain/application
        # @type EntityType: String

        attr_accessor :AppId, :ZoneId, :Entity, :EntityType
        
        def initialize(appid=nil, zoneid=nil, entity=nil, entitytype=nil)
          @AppId = appid
          @ZoneId = zoneid
          @Entity = entity
          @EntityType = entitytype
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          @EntityType = params['EntityType']
        end
      end

      # https 服务端证书配置
      class ServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID, 默认证书ID, 或在 SSL 证书管理进行证书托管时自动生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Alias: 证书备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Type: 证书类型:
        # default: 默认证书
        # upload:用户上传
        # managed:腾讯云托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpireTime: 证书过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param DeployTime: 证书部署时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployTime: String
        # @param Status: 部署状态:
        # processing: 部署中
        # deployed: 已部署
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :DeployTime, :Status
        
        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, deploytime=nil, status=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @DeployTime = deploytime
          @Status = status
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Alias = params['Alias']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @DeployTime = params['DeployTime']
          @Status = params['Status']
        end
      end

      # DDoS防护分区
      class ShieldArea < TencentCloud::Common::AbstractModel
        # @param ZoneId: 一级域名id
        # @type ZoneId: String
        # @param PolicyId: 策略id
        # @type PolicyId: Integer
        # @param Type: 防护类型 domain/application
        # @type Type: String
        # @param EntityName: 四层应用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityName: String
        # @param Application: 7层域名参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Application: Array
        # @param TcpNum: 四层tcp转发规则数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcpNum: Integer
        # @param UdpNum: 四层udp转发规则数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UdpNum: Integer
        # @param Entity: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Entity: String
        # @param Share: 是否为共享资源客户，注意共享资源用户不可以切换代理模式，true-是；false-否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Share: Boolean

        attr_accessor :ZoneId, :PolicyId, :Type, :EntityName, :Application, :TcpNum, :UdpNum, :Entity, :Share
        
        def initialize(zoneid=nil, policyid=nil, type=nil, entityname=nil, application=nil, tcpnum=nil, udpnum=nil, entity=nil, share=nil)
          @ZoneId = zoneid
          @PolicyId = policyid
          @Type = type
          @EntityName = entityname
          @Application = application
          @TcpNum = tcpnum
          @UdpNum = udpnum
          @Entity = entity
          @Share = share
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @PolicyId = params['PolicyId']
          @Type = params['Type']
          @EntityName = params['EntityName']
          unless params['Application'].nil?
            @Application = []
            params['Application'].each do |i|
              ddosapplication_tmp = DDoSApplication.new
              ddosapplication_tmp.deserialize(i)
              @Application << ddosapplication_tmp
            end
          end
          @TcpNum = params['TcpNum']
          @UdpNum = params['UdpNum']
          @Entity = params['Entity']
          @Share = params['Share']
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
        # @param WebSwitch: Web类型的安全总开关：Web基础防护，自定义规则，速率限制
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
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
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
        # @param JobId: 任务ID
        # @type JobId: String
        # @param Status: 状态
        # @type Status: String
        # @param Target: 资源
        # @type Target: String
        # @param Type: 任务类型
        # @type Type: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 任务完成时间
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

      # 统计曲线数据项
      class TimingDataItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 返回数据对应时间点，采用unix秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Value: 具体数值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # L7数据分析时序数据
      class TimingDataRecord < TencentCloud::Common::AbstractModel
        # @param TypeKey: 查询维度值
        # @type TypeKey: String
        # @param TypeValue: 详细时序数据
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Sum: 数据和
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sum: Integer
        # @param Max: 最大
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: Integer
        # @param Avg: 平均
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avg: Integer
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param DetailData: 废弃字段，即将下线，请使用Detail字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailData: Array
        # @param Detail: 详细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array

        attr_accessor :Sum, :Max, :Avg, :MetricName, :DetailData, :Detail
        
        def initialize(sum=nil, max=nil, avg=nil, metricname=nil, detaildata=nil, detail=nil)
          @Sum = sum
          @Max = max
          @Avg = avg
          @MetricName = metricname
          @DetailData = detaildata
          @Detail = detail
        end

        def deserialize(params)
          @Sum = params['Sum']
          @Max = params['Max']
          @Avg = params['Avg']
          @MetricName = params['MetricName']
          @DetailData = params['DetailData']
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

      # 七层数据分析类top数据
      class TopDataRecord < TencentCloud::Common::AbstractModel
        # @param TypeKey: 查询维度值
        # @type TypeKey: String
        # @param DetailData: top数据排行
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 用于对top数据排序的结构体
      class TopDetailData < TencentCloud::Common::AbstractModel
        # @param Key: 字段名
        # @type Key: String
        # @param Value: 字段值
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

      # TopN entry
      class TopNEntry < TencentCloud::Common::AbstractModel
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
              topnentryvalue_tmp = TopNEntryValue.new
              topnentryvalue_tmp.deserialize(i)
              @Value << topnentryvalue_tmp
            end
          end
        end
      end

      # TopN数据Entry
      class TopNEntryValue < TencentCloud::Common::AbstractModel
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
        # @param Switch: 自定义 ns 开关
        # - on 开启
        # - off 关闭
        # @type Switch: String
        # @param Servers: 自定义 ns 列表
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
        # @param Name: 自定义名字服务器名称
        # @type Name: String
        # @param IPv4: 自定义名字服务器 IPv4 地址
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

      # 门神配置
      class WafConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关
        # @type Switch: String
        # @param Level: 防护级别，loose/normal/strict/stricter/custom
        # @type Level: String
        # @param Mode: 模式 block-阻断；observe-观察模式；close-关闭
        # @type Mode: String
        # @param WafRules: 托管规则黑白名单
        # @type WafRules: :class:`Tencentcloud::Teo.v20220106.models.WafRule`
        # @param AiRule: AI规则引擎防护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiRule: :class:`Tencentcloud::Teo.v20220106.models.AiRule`

        attr_accessor :Switch, :Level, :Mode, :WafRules, :AiRule
        
        def initialize(switch=nil, level=nil, mode=nil, wafrules=nil, airule=nil)
          @Switch = switch
          @Level = level
          @Mode = mode
          @WafRules = wafrules
          @AiRule = airule
        end

        def deserialize(params)
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
        end
      end

      # Waf规则
      class WafRule < TencentCloud::Common::AbstractModel
        # @param BlockRuleIDs: 黑名单，ID参考接口 DescribeSecurityPolicyManagedRules
        # @type BlockRuleIDs: Array
        # @param Switch: 托管规则 开关
        # @type Switch: String
        # @param ObserveRuleIDs: 观察模式，ID参考接口 DescribeSecurityPolicyManagedRules
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObserveRuleIDs: Array

        attr_accessor :BlockRuleIDs, :Switch, :ObserveRuleIDs
        
        def initialize(blockruleids=nil, switch=nil, observeruleids=nil)
          @BlockRuleIDs = blockruleids
          @Switch = switch
          @ObserveRuleIDs = observeruleids
        end

        def deserialize(params)
          @BlockRuleIDs = params['BlockRuleIDs']
          @Switch = params['Switch']
          @ObserveRuleIDs = params['ObserveRuleIDs']
        end
      end

      # Web拦截事件
      class WebAttackEvent < TencentCloud::Common::AbstractModel
        # @param ClientIp: 客户端ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIp: String
        # @param AttackUrl: 攻击URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackUrl: String
        # @param AttackTime: 攻击时间 单位为s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackTime: Integer

        attr_accessor :ClientIp, :AttackUrl, :AttackTime
        
        def initialize(clientip=nil, attackurl=nil, attacktime=nil)
          @ClientIp = clientip
          @AttackUrl = attackurl
          @AttackTime = attacktime
        end

        def deserialize(params)
          @ClientIp = params['ClientIp']
          @AttackUrl = params['AttackUrl']
          @AttackTime = params['AttackTime']
        end
      end

      # web事件数据
      class WebEventData < TencentCloud::Common::AbstractModel
        # @param List: 攻击事件数据集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 当前页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: Integer
        # @param PageSize: 每页展示条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Pages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param TotalSize: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              webattackevent_tmp = WebAttackEvent.new
              webattackevent_tmp.deserialize(i)
              @List << webattackevent_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # web攻击日志Data
      class WebLogData < TencentCloud::Common::AbstractModel
        # @param List: 分组数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param PageNo: 分页拉取的起始页号。最小值：1。
        # @type PageNo: Integer
        # @param PageSize: 分页拉取的最大返回结果数。最大值：1000。
        # @type PageSize: Integer
        # @param Pages: 总页数。
        # @type Pages: Integer
        # @param TotalSize: 总条数。
        # @type TotalSize: Integer

        attr_accessor :List, :PageNo, :PageSize, :Pages, :TotalSize
        
        def initialize(list=nil, pageno=nil, pagesize=nil, pages=nil, totalsize=nil)
          @List = list
          @PageNo = pageno
          @PageSize = pagesize
          @Pages = pages
          @TotalSize = totalsize
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              weblogs_tmp = WebLogs.new
              weblogs_tmp.deserialize(i)
              @List << weblogs_tmp
            end
          end
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Pages = params['Pages']
          @TotalSize = params['TotalSize']
        end
      end

      # web攻击日志
      class WebLogs < TencentCloud::Common::AbstractModel
        # @param AttackContent: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackContent: String
        # @param AttackIp: 攻击源（客户端）Ip。
        # @type AttackIp: String
        # @param AttackType: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackType: String
        # @param Domain: 受攻击子域名。
        # @type Domain: String
        # @param Msuuid: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msuuid: String
        # @param RequestMethod: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: String
        # @param RequestUri: URI
        # @type RequestUri: String
        # @param RiskLevel: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RuleId: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param SipCountryCode: IP所在国家iso-3166中alpha-2编码，编码信息请参考[ISO-3166](https://git.woa.com/edgeone/iso-3166/blob/master/all/all.json)
        # @type SipCountryCode: String
        # @param EventId: 请求（事件）ID。
        # @type EventId: String
        # @param DisposalMethod: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalMethod: String
        # @param HttpLog: http log。
        # @type HttpLog: String
        # @param Ua: 该字段已废弃。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ua: String
        # @param AttackTime: 攻击时间，采用unix秒级时间戳。
        # @type AttackTime: Integer
        # @param RuleDetailList: 规则相关信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDetailList: Array

        attr_accessor :AttackContent, :AttackIp, :AttackType, :Domain, :Msuuid, :RequestMethod, :RequestUri, :RiskLevel, :RuleId, :SipCountryCode, :EventId, :DisposalMethod, :HttpLog, :Ua, :AttackTime, :RuleDetailList
        
        def initialize(attackcontent=nil, attackip=nil, attacktype=nil, domain=nil, msuuid=nil, requestmethod=nil, requesturi=nil, risklevel=nil, ruleid=nil, sipcountrycode=nil, eventid=nil, disposalmethod=nil, httplog=nil, ua=nil, attacktime=nil, ruledetaillist=nil)
          @AttackContent = attackcontent
          @AttackIp = attackip
          @AttackType = attacktype
          @Domain = domain
          @Msuuid = msuuid
          @RequestMethod = requestmethod
          @RequestUri = requesturi
          @RiskLevel = risklevel
          @RuleId = ruleid
          @SipCountryCode = sipcountrycode
          @EventId = eventid
          @DisposalMethod = disposalmethod
          @HttpLog = httplog
          @Ua = ua
          @AttackTime = attacktime
          @RuleDetailList = ruledetaillist
        end

        def deserialize(params)
          @AttackContent = params['AttackContent']
          @AttackIp = params['AttackIp']
          @AttackType = params['AttackType']
          @Domain = params['Domain']
          @Msuuid = params['Msuuid']
          @RequestMethod = params['RequestMethod']
          @RequestUri = params['RequestUri']
          @RiskLevel = params['RiskLevel']
          @RuleId = params['RuleId']
          @SipCountryCode = params['SipCountryCode']
          @EventId = params['EventId']
          @DisposalMethod = params['DisposalMethod']
          @HttpLog = params['HttpLog']
          @Ua = params['Ua']
          @AttackTime = params['AttackTime']
          unless params['RuleDetailList'].nil?
            @RuleDetailList = []
            params['RuleDetailList'].each do |i|
              secrulerelatedinfo_tmp = SecRuleRelatedInfo.new
              secrulerelatedinfo_tmp.deserialize(i)
              @RuleDetailList << secrulerelatedinfo_tmp
            end
          end
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
        # @param Id: 站点ID。
        # @type Id: String
        # @param Name: 站点名称。
        # @type Name: String
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
        # @param CnameSpeedUp: 是否开启cname加速，取值有：
        # <li> enabled：开启；</li>
        # <li> disabled：关闭。</li>
        # @type CnameSpeedUp: String
        # @param CnameStatus: cname 接入状态，取值有：
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
        # @param Area: 站点接入地域，取值为：
        # <li> global：全球；</li>
        # <li> mainland：中国大陆；</li>
        # <li> overseas：境外区域。</li>
        # @type Area: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CnameSpeedUp, :CnameStatus, :Tags, :Resources, :CreatedOn, :ModifiedOn, :Area
        
        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, cnamespeedup=nil, cnamestatus=nil, tags=nil, resources=nil, createdon=nil, modifiedon=nil, area=nil)
          @Id = id
          @Name = name
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
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
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
        end
      end

      # 站点查询过滤条件
      class ZoneFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # <li> name：站点名；</li>
        # <li> status：站点状态；</li>
        # <li> tagKey：标签键；</li>
        # <li> tagValue: 标签值。</li>
        # @type Name: String
        # @param Values: 过滤字段值。
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为name。模糊查询时，Values长度最大为1。默认为false。
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

    end
  end
end

