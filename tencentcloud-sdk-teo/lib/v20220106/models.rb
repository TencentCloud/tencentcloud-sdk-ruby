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
        # @param ProxyId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyId: String
        # @param ProxyName: 实例名称
        # @type ProxyName: String
        # @param PlatType: 调度模式：
        # ip表示Anycast IP
        # domain表示CNAME
        # @type PlatType: String
        # @param SecurityType: 0关闭安全，1开启安全
        # @type SecurityType: Integer
        # @param AccelerateType: 0关闭加速，1开启加速
        # @type AccelerateType: Integer
        # @param ForwardClientIp: 字段已经移至Rule.ForwardClientIp
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经移至Rule.SessionPersist
        # @type SessionPersist: Boolean
        # @param Rule: 规则列表
        # @type Rule: Array
        # @param Status: 状态：
        # online：启用
        # offline：停用
        # progress：部署中
        # stopping：停用中
        # fail：部署失败/停用失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ScheduleValue: 调度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleValue: Array
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param SessionPersistTime: 会话保持时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyType: String
        # @param HostId: 七层实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostId: String

        attr_accessor :ProxyId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :Status, :ScheduleValue, :UpdateTime, :ZoneId, :ZoneName, :SessionPersistTime, :ProxyType, :HostId
        
        def initialize(proxyid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, status=nil, schedulevalue=nil, updatetime=nil, zoneid=nil, zonename=nil, sessionpersisttime=nil, proxytype=nil, hostid=nil)
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
        end
      end

      # 应用代理规则
      class ApplicationProxyRule < TencentCloud::Common::AbstractModel
        # @param Proto: 协议，取值为TCP或者UDP
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # 80：80端口
        # 81-90：81至90端口
        # @type Port: Array
        # @param OriginType: 源站类型，取值：
        # custom：手动添加
        # origins：源站组
        # load_balancing：负载均衡
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # 当OriginType=load_balancing时，包含一个元素，表示负载均衡ID
        # @type OriginValue: Array
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param Status: 状态：
        # online：启用
        # offline：停用
        # progress：部署中
        # stopping：停用中
        # fail：部署失败/停用失败
        # @type Status: String
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

        attr_accessor :Switch, :ManagedRule, :UaBotRule, :IspBotRule, :PortraitRule
        
        def initialize(switch=nil, managedrule=nil, uabotrule=nil, ispbotrule=nil, portraitrule=nil)
          @Switch = switch
          @ManagedRule = managedrule
          @UaBotRule = uabotrule
          @IspBotRule = ispbotrule
          @PortraitRule = portraitrule
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
        end
      end

      # Bot攻击日志
      class BotLog < TencentCloud::Common::AbstractModel
        # @param AttackTime: 攻击时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackTime: Integer
        # @param AttackIp: 攻击ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackIp: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param RequestUri: 请求uri
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestUri: String
        # @param AttackType: 攻击类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackType: String
        # @param RequestMethod: 请求方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: String
        # @param AttackContent: 攻击内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackContent: String
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RuleId: 规则编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param SipCountryCode: IP所在国家
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SipCountryCode: String
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param DisposalMethod: 处置方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalMethod: String
        # @param HttpLog: http_log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpLog: String
        # @param Ua: user agent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ua: String
        # @param DetectionMethod: 检出方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionMethod: String
        # @param Confidence: 置信度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: String
        # @param Maliciousness: 恶意度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Maliciousness: String

        attr_accessor :AttackTime, :AttackIp, :Domain, :RequestUri, :AttackType, :RequestMethod, :AttackContent, :RiskLevel, :RuleId, :SipCountryCode, :EventId, :DisposalMethod, :HttpLog, :Ua, :DetectionMethod, :Confidence, :Maliciousness
        
        def initialize(attacktime=nil, attackip=nil, domain=nil, requesturi=nil, attacktype=nil, requestmethod=nil, attackcontent=nil, risklevel=nil, ruleid=nil, sipcountrycode=nil, eventid=nil, disposalmethod=nil, httplog=nil, ua=nil, detectionmethod=nil, confidence=nil, maliciousness=nil)
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
        end
      end

      # 限速拦截日志
      class BotLogData < TencentCloud::Common::AbstractModel
        # @param List: Bot攻击日志数据集合
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

      # Bot 规则
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

      # 限速拦截日志
      class CCLog < TencentCloud::Common::AbstractModel
        # @param AttackTime: 攻击时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackTime: Integer
        # @param AttackSip: 攻击源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackSip: String
        # @param AttackDomain: 攻击域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackDomain: String
        # @param RequestUri: 请求uri
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestUri: String
        # @param HitCount: 命中次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitCount: Integer
        # @param SipCountryCode: IP所在国家
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SipCountryCode: String
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param DisposalMethod: 处置方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalMethod: String
        # @param HttpLog: http_log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpLog: String
        # @param RuleId: 规则编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String

        attr_accessor :AttackTime, :AttackSip, :AttackDomain, :RequestUri, :HitCount, :SipCountryCode, :EventId, :DisposalMethod, :HttpLog, :RuleId, :RiskLevel
        
        def initialize(attacktime=nil, attacksip=nil, attackdomain=nil, requesturi=nil, hitcount=nil, sipcountrycode=nil, eventid=nil, disposalmethod=nil, httplog=nil, ruleid=nil, risklevel=nil)
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
        end
      end

      # 限速拦截日志
      class CCLogData < TencentCloud::Common::AbstractModel
        # @param List: CC拦截日志数据集合
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
        # @param Cache: 缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigCache`
        # @param NoCache: 不缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfigNoCache`
        # @param FollowOrigin: 遵循源站配置
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
        # @param Switch: 缓存配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param CacheTime: 缓存过期时间设置
        # 单位为秒，最大可设置为 365 天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheTime: Integer
        # @param IgnoreCacheControl: 是否开启强制缓存
        # 开启：on
        # 关闭：off
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
        # @param Switch: 遵循源站配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Switch: 不缓存配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param FullUrlCache: 是否开启全路径缓存
        # on：开启全路径缓存（即关闭参数忽略）
        # off：关闭全路径缓存（即开启参数忽略）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullUrlCache: String
        # @param IgnoreCase: 是否忽略大小写缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCase: String
        # @param QueryString: CacheKey中包含请求参数
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

      # 客户端IP头部
      class ClientIp < TencentCloud::Common::AbstractModel
        # @param Switch: 客户端IP头部配置开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param HeaderName: 回源客户端IP请求头名称
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
        # @param Switch: 智能压缩配置开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # CreateApplicationProxy请求参数结构体
      class CreateApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param ProxyName: 四层代理名称
        # @type ProxyName: String
        # @param PlatType: 调度模式：
        # ip表示Anycast IP
        # domain表示CNAME
        # @type PlatType: String
        # @param SecurityType: 0关闭安全，1开启安全
        # @type SecurityType: Integer
        # @param AccelerateType: 0关闭加速，1开启加速
        # @type AccelerateType: Integer
        # @param ForwardClientIp: 字段已经移至Rule.ForwardClientIp
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经移至Rule.SessionPersist
        # @type SessionPersist: Boolean
        # @param Rule: 规则详细信息
        # @type Rule: Array
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # @type ProxyType: String

        attr_accessor :ZoneId, :ZoneName, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :SessionPersistTime, :ProxyType
        
        def initialize(zoneid=nil, zonename=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, sessionpersisttime=nil, proxytype=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @Rule = rule
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
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
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
        end
      end

      # CreateApplicationProxy返回参数结构体
      class CreateApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 新增的四层代理应用ID
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
        # load_balancing：负载均衡
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # 当OriginType=load_balancing时，包含一个元素，表示负载均衡ID
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
        # @param Host: 子域名，填写@表示根域
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
        # 当OriginType=third_party 时，不需要填写
        # @type Type: String
        # @param Record: 源站记录
        # @type Record: Array
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param OriginType: 源站类型
        # self：自有源站
        # third_party：第三方源站
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

        attr_accessor :Name, :Type, :JumpStart
        
        def initialize(name=nil, type=nil, jumpstart=nil)
          @Name = name
          @Type = type
          @JumpStart = jumpstart
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @JumpStart = params['JumpStart']
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
        # @param DportEnd: 目的端口end
        # @type DportEnd: Integer
        # @param DportStart: 目的端口start
        # @type DportStart: Integer
        # @param SportEnd: 源端口end
        # @type SportEnd: Integer
        # @param SportStart: 源端口start
        # @type SportStart: Integer
        # @param Protocol: 协议 'tcp', 'udp', 'all'
        # @type Protocol: String
        # @param Action: 动作  drop-丢弃,；transmit-放行； forward-继续防护
        # @type Action: String
        # @param Default: 是否为系统配置 0-人工配置；1-系统配置
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
        # @param DropTcp: tcp协议封禁 on-开；off-关
        # @type DropTcp: String
        # @param DropUdp: udp协议封禁 on-开；off-关
        # @type DropUdp: String
        # @param DropIcmp: icmp协议封禁 on-开；off-关
        # @type DropIcmp: String
        # @param DropOther: 其他协议封禁 on-开；off-关
        # @type DropOther: String
        # @param SourceCreateLimit: 源每秒新建数限制  0-4294967295
        # @type SourceCreateLimit: Integer
        # @param SourceConnectLimit: 源并发连接控制 0-4294967295
        # @type SourceConnectLimit: Integer
        # @param DestinationCreateLimit: 目的每秒新建数限制 0-4294967295
        # @type DestinationCreateLimit: Integer
        # @param DestinationConnectLimit: 目的端口的并发连接控制 0-4294967295
        # @type DestinationConnectLimit: Integer
        # @param AbnormalConnectNum: 异常连接数阈值  0-4294967295
        # @type AbnormalConnectNum: Integer
        # @param AbnormalSynRatio: syn占比异常阈值 0-100
        # @type AbnormalSynRatio: Integer
        # @param AbnormalSynNum: syn个数异常阈值 0-65535
        # @type AbnormalSynNum: Integer
        # @param ConnectTimeout: 连接超时检测 0-65535
        # @type ConnectTimeout: Integer
        # @param EmptyConnectProtect: 空连接防护开启 0-1
        # @type EmptyConnectProtect: String

        attr_accessor :DropTcp, :DropUdp, :DropIcmp, :DropOther, :SourceCreateLimit, :SourceConnectLimit, :DestinationCreateLimit, :DestinationConnectLimit, :AbnormalConnectNum, :AbnormalSynRatio, :AbnormalSynNum, :ConnectTimeout, :EmptyConnectProtect
        
        def initialize(droptcp=nil, dropudp=nil, dropicmp=nil, dropother=nil, sourcecreatelimit=nil, sourceconnectlimit=nil, destinationcreatelimit=nil, destinationconnectlimit=nil, abnormalconnectnum=nil, abnormalsynratio=nil, abnormalsynnum=nil, connecttimeout=nil, emptyconnectprotect=nil)
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
        # @param Action: 动作 drop-丢弃；transmit-放行；drop_block-丢弃并拉黑；forward-继续防护
        # @type Action: String
        # @param Depth: 深度值1
        # @type Depth: Integer
        # @param Depth2: 深度值2
        # @type Depth2: Integer
        # @param DportEnd: 目标端口结束
        # @type DportEnd: Integer
        # @param DportStart: 目标端口开始
        # @type DportStart: Integer
        # @param IsNot: 取非判断1
        # @type IsNot: Integer
        # @param IsNot2: 取非判断2
        # @type IsNot2: Integer
        # @param MatchLogic: 多特征关系（单特征时(none)，第二特征相关配置可不填） none；and；or
        # @type MatchLogic: String
        # @param MatchType: 匹配方式1 pcre-正则匹配, sunday-字符串匹配
        # @type MatchType: String
        # @param MatchType2: 匹配方式2 pcre-正则匹配, sunday-字符串匹配
        # @type MatchType2: String
        # @param Offset: 偏移量1
        # @type Offset: Integer
        # @param Offset2: 偏移量2
        # @type Offset2: Integer
        # @param PacketMax: 最大包长
        # @type PacketMax: Integer
        # @param PacketMin: 最小包长
        # @type PacketMin: Integer
        # @param Protocol: 协议 tcp；udp；icmp；all
        # @type Protocol: String
        # @param SportEnd: 源端口结束
        # @type SportEnd: Integer
        # @param SportStart: 源端口开始
        # @type SportStart: Integer
        # @param Str: 匹配字符串1
        # @type Str: String
        # @param Str2: 匹配字符串2
        # @type Str2: String
        # @param MatchBegin: 匹配开始层级，层级参考计算机网络结构 begin_l5, no_match, begin_l3, begin_l4
        # @type MatchBegin: String
        # @param MatchBegin2: 匹配开始层级，层级参考计算机网络结构 begin_l5, no_match, begin_l3, begin_l4
        # @type MatchBegin2: String

        attr_accessor :Action, :Depth, :Depth2, :DportEnd, :DportStart, :IsNot, :IsNot2, :MatchLogic, :MatchType, :MatchType2, :Offset, :Offset2, :PacketMax, :PacketMin, :Protocol, :SportEnd, :SportStart, :Str, :Str2, :MatchBegin, :MatchBegin2
        
        def initialize(action=nil, depth=nil, depth2=nil, dportend=nil, dportstart=nil, isnot=nil, isnot2=nil, matchlogic=nil, matchtype=nil, matchtype2=nil, offset=nil, offset2=nil, packetmax=nil, packetmin=nil, protocol=nil, sportend=nil, sportstart=nil, str=nil, str2=nil, matchbegin=nil, matchbegin2=nil)
          @Action = action
          @Depth = depth
          @Depth2 = depth2
          @DportEnd = dportend
          @DportStart = dportstart
          @IsNot = isnot
          @IsNot2 = isnot2
          @MatchLogic = matchlogic
          @MatchType = matchtype
          @MatchType2 = matchtype2
          @Offset = offset
          @Offset2 = offset2
          @PacketMax = packetmax
          @PacketMin = packetmin
          @Protocol = protocol
          @SportEnd = sportend
          @SportStart = sportstart
          @Str = str
          @Str2 = str2
          @MatchBegin = matchbegin
          @MatchBegin2 = matchbegin2
        end

        def deserialize(params)
          @Action = params['Action']
          @Depth = params['Depth']
          @Depth2 = params['Depth2']
          @DportEnd = params['DportEnd']
          @DportStart = params['DportStart']
          @IsNot = params['IsNot']
          @IsNot2 = params['IsNot2']
          @MatchLogic = params['MatchLogic']
          @MatchType = params['MatchType']
          @MatchType2 = params['MatchType2']
          @Offset = params['Offset']
          @Offset2 = params['Offset2']
          @PacketMax = params['PacketMax']
          @PacketMin = params['PacketMin']
          @Protocol = params['Protocol']
          @SportEnd = params['SportEnd']
          @SportStart = params['SportStart']
          @Str = params['Str']
          @Str2 = params['Str2']
          @MatchBegin = params['MatchBegin']
          @MatchBegin2 = params['MatchBegin2']
        end
      end

      # DDoS地域封禁
      class DDoSGeoIp < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Array
        # @param Switch: 区域封禁清空标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :RegionId, :Switch
        
        def initialize(regionid=nil, switch=nil)
          @RegionId = regionid
          @Switch = switch
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Switch = params['Switch']
        end
      end

      # DDoS封禁等级
      class DDoSStatusInfo < TencentCloud::Common::AbstractModel
        # @param AiStatus: 不支持，填off
        # @type AiStatus: String
        # @param Appid: 用户appid
        # @type Appid: String
        # @param PlyLevel: 策略等级 low, middle, high
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
        # @param Ip: 用户ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Mask: 掩码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mask: Integer
        # @param Type: 类型 block-丢弃；allow-允许
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param UpdateTime: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Ip2: 用户ip范围截止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip2: String
        # @param Mask2: 掩码截止范围
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param AttackStatus: 攻击状态
        # @type AttackStatus: Integer
        # @param AttackType: 攻击类型
        # @type AttackType: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param MaxBandWidth: 最大带宽
        # @type MaxBandWidth: Integer
        # @param PacketMaxRate: 最大包速率
        # @type PacketMaxRate: Integer
        # @param EventId: 事件Id
        # @type EventId: String
        # @param PolicyId: ddos 策略组id
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
        # @param AttackSourceIp: 攻击源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackSourceIp: String
        # @param AttackRegion: 地区(国家)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackRegion: String
        # @param AttackFlow: 累计攻击流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackFlow: Integer
        # @param AttackPacketNum: 累计攻击包量
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
        # @param List: DDos攻击源数据集合
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
        # @param PolicyId: ddos 策略组id
        # @type PolicyId: Integer
        # @param AttackMaxBandWidth: 攻击最大带宽
        # @type AttackMaxBandWidth: Integer
        # @param AttackTime: 攻击时间 单位为s
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
        # @param List: DDosMajorAttackEvent ddos 攻击事件
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
        # @param Switch: 开关 off清空规则标识
        # @type Switch: String
        # @param Acl: 端口过了详细参数
        # @type Acl: Array

        attr_accessor :Switch, :Acl
        
        def initialize(switch=nil, acl=nil)
          @Switch = switch
          @Acl = acl
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['Acl'].nil?
            @Acl = []
            params['Acl'].each do |i|
              ddosacl_tmp = DDoSAcl.new
              ddosacl_tmp.deserialize(i)
              @Acl << ddosacl_tmp
            end
          end
        end
      end

      # ddos黑白名单
      class DdosAllowBlock < TencentCloud::Common::AbstractModel
        # @param Switch: 开关标识防护是否清空
        # @type Switch: String
        # @param UserAllowBlockIp: 黑白名单数组
        # @type UserAllowBlockIp: Array

        attr_accessor :Switch, :UserAllowBlockIp
        
        def initialize(switch=nil, userallowblockip=nil)
          @Switch = switch
          @UserAllowBlockIp = userallowblockip
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['UserAllowBlockIp'].nil?
            @UserAllowBlockIp = []
            params['UserAllowBlockIp'].each do |i|
              ddosuserallowblockip_tmp = DDoSUserAllowBlockIP.new
              ddosuserallowblockip_tmp.deserialize(i)
              @UserAllowBlockIp << ddosuserallowblockip_tmp
            end
          end
        end
      end

      # ddos特征过滤
      class DdosPacketFilter < TencentCloud::Common::AbstractModel
        # @param Switch: 特征过滤清空标识，off清空处理
        # @type Switch: String
        # @param PacketFilter: 特征过滤数组
        # @type PacketFilter: Array

        attr_accessor :Switch, :PacketFilter
        
        def initialize(switch=nil, packetfilter=nil)
          @Switch = switch
          @PacketFilter = packetfilter
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['PacketFilter'].nil?
            @PacketFilter = []
            params['PacketFilter'].each do |i|
              ddosfeaturesfilter_tmp = DDoSFeaturesFilter.new
              ddosfeaturesfilter_tmp.deserialize(i)
              @PacketFilter << ddosfeaturesfilter_tmp
            end
          end
        end
      end

      # Ddos防护配置
      class DdosRule < TencentCloud::Common::AbstractModel
        # @param DdosStatusInfo: DDoS防护等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosStatusInfo: :class:`Tencentcloud::Teo.v20220106.models.DDoSStatusInfo`
        # @param DdosGeoIp: DDoS地域封禁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosGeoIp: :class:`Tencentcloud::Teo.v20220106.models.DDoSGeoIp`
        # @param DdosAllowBlock: DDoS黑白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosAllowBlock: :class:`Tencentcloud::Teo.v20220106.models.DdosAllowBlock`
        # @param DdosAntiPly: DDoS 协议封禁+连接防护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosAntiPly: :class:`Tencentcloud::Teo.v20220106.models.DDoSAntiPly`
        # @param DdosPacketFilter: DDoS特征过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosPacketFilter: :class:`Tencentcloud::Teo.v20220106.models.DdosPacketFilter`
        # @param DdosAcl: DDoS端口过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdosAcl: :class:`Tencentcloud::Teo.v20220106.models.DdosAcls`
        # @param Switch: DDoS开关 on-开启；off-关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :DdosStatusInfo, :DdosGeoIp, :DdosAllowBlock, :DdosAntiPly, :DdosPacketFilter, :DdosAcl, :Switch
        
        def initialize(ddosstatusinfo=nil, ddosgeoip=nil, ddosallowblock=nil, ddosantiply=nil, ddospacketfilter=nil, ddosacl=nil, switch=nil)
          @DdosStatusInfo = ddosstatusinfo
          @DdosGeoIp = ddosgeoip
          @DdosAllowBlock = ddosallowblock
          @DdosAntiPly = ddosantiply
          @DdosPacketFilter = ddospacketfilter
          @DdosAcl = ddosacl
          @Switch = switch
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
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 实例ID
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
        # @param ProxyId: 实例ID
        # @type ProxyId: String
        # @param ProxyName: 实例名称
        # @type ProxyName: String
        # @param PlatType: 调度模式：
        # ip表示Anycast IP
        # domain表示CNAME
        # @type PlatType: String
        # @param SecurityType: 0关闭安全，1开启安全
        # @type SecurityType: Integer
        # @param AccelerateType: 0关闭加速，1开启加速
        # @type AccelerateType: Integer
        # @param ForwardClientIp: 字段已经移至Rule.ForwardClientIp
        # @type ForwardClientIp: String
        # @param SessionPersist: 字段已经移至Rule.SessionPersist
        # @type SessionPersist: Boolean
        # @param Rule: 规则列表
        # @type Rule: Array
        # @param Status: 状态：
        # online：启用
        # offline：停用
        # progress：部署中
        # @type Status: String
        # @param ScheduleValue: 调度信息
        # @type ScheduleValue: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ZoneName: 站点名称
        # @type ZoneName: String
        # @param SessionPersistTime: 会话保持时间
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # @type ProxyType: String
        # @param HostId: 七层实例ID
        # @type HostId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ForwardClientIp, :SessionPersist, :Rule, :Status, :ScheduleValue, :UpdateTime, :ZoneId, :ZoneName, :SessionPersistTime, :ProxyType, :HostId, :RequestId
        
        def initialize(proxyid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, forwardclientip=nil, sessionpersist=nil, rule=nil, status=nil, schedulevalue=nil, updatetime=nil, zoneid=nil, zonename=nil, sessionpersisttime=nil, proxytype=nil, hostid=nil, requestid=nil)
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationProxy请求参数结构体
      class DescribeApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Offset: 分页参数Offset
        # @type Offset: Integer
        # @param Limit: 分页参数Limit
        # @type Limit: Integer

        attr_accessor :ZoneId, :Offset, :Limit
        
        def initialize(zoneid=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeApplicationProxy返回参数结构体
      class DescribeApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Quota: 当ZoneId不为空时，表示当前站点允许创建的实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quota: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :Quota, :RequestId
        
        def initialize(data=nil, totalcount=nil, quota=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @Quota = quota
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeBotLog请求参数结构体
      class DescribeBotLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param Domains: 域名集合
        # @type Domains: Array
        # @param QueryCondition: 查询条件
        # @type QueryCondition: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :ZoneIds, :Domains, :QueryCondition
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zoneids=nil, domains=nil, querycondition=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
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
        end
      end

      # DescribeBotLog返回参数结构体
      class DescribeBotLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: Bot攻击Data
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.BotLogData`
        # @param Status: 状态，1：失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回信息
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

      # DescribeDDosAttackData请求参数结构体
      class DescribeDDosAttackDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricNames: 统计指标列表
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表
        # @type ZoneIds: Array
        # @param PolicyIds: ddos策略组id列表
        # @type PolicyIds: Array
        # @param Port: 端口号
        # @type Port: Integer
        # @param ProtocolType: 协议类型,tcp,udp,all
        # @type ProtocolType: String
        # @param AttackType: 攻击类型,flood,icmpFlood......,all
        # @type AttackType: String
        # @param Interval: 查询时间粒度，可选{min,5min,hour,day}
        # @type Interval: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :PolicyIds, :Port, :ProtocolType, :AttackType, :Interval
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, policyids=nil, port=nil, protocoltype=nil, attacktype=nil, interval=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @Port = port
          @ProtocolType = protocoltype
          @AttackType = attacktype
          @Interval = interval
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
        end
      end

      # DescribeDDosAttackData返回参数结构体
      class DescribeDDosAttackDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回数据
        # @type Msg: String
        # @param Interval: 查询时间粒度，可选{min,5min,hour,day}
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
        # @param EventId: 时间id
        # @type EventId: String

        attr_accessor :EventId
        
        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeDDosAttackEventDetail返回参数结构体
      class DescribeDDosAttackEventDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击事件详情
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosAttackEventDetailData`
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回信息
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param PolicyIds: ddos策略组id 集合
        # @type PolicyIds: Array
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param ProtocolType: 协议类型,{tcp,udp,all}
        # @type ProtocolType: String
        # @param IsShowDetail: 选填{Y、N},默认为Y；Y：展示，N：不展示
        # @type IsShowDetail: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ZoneIds, :ProtocolType, :IsShowDetail
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, zoneids=nil, protocoltype=nil, isshowdetail=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ZoneIds = zoneids
          @ProtocolType = protocoltype
          @IsShowDetail = isshowdetail
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
        end
      end

      # DescribeDDosAttackEvent返回参数结构体
      class DescribeDDosAttackEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击事件数据
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosAttackEventData`
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回信息
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param PolicyIds: ddos策略组id 集合
        # @type PolicyIds: Array
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param ProtocolType: 协议类型,{tcp,udp,all}
        # @type ProtocolType: String

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ZoneIds, :ProtocolType
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, zoneids=nil, protocoltype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ZoneIds = zoneids
          @ProtocolType = protocoltype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @PolicyIds = params['PolicyIds']
          @ZoneIds = params['ZoneIds']
          @ProtocolType = params['ProtocolType']
        end
      end

      # DescribeDDosAttackSourceEvent返回参数结构体
      class DescribeDDosAttackSourceEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos攻击源数据
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosAttackSourceEventData`
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回信息
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricName: 过滤指标
        # @type MetricName: String
        # @param Limit: 查询前多少名,传值为0 全量
        # @type Limit: Integer
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param PolicyIds: ddos策略组id 集合
        # @type PolicyIds: Array
        # @param Port: 端口号
        # @type Port: Integer
        # @param ProtocolType: 协议类型,tcp,udp,all
        # @type ProtocolType: String
        # @param AttackType: 攻击类型,flood,icmpFlood......,all
        # @type AttackType: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :ZoneIds, :PolicyIds, :Port, :ProtocolType, :AttackType
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, zoneids=nil, policyids=nil, port=nil, protocoltype=nil, attacktype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Limit = limit
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @Port = port
          @ProtocolType = protocoltype
          @AttackType = attacktype
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
        end
      end

      # DescribeDDosAttackTopData返回参数结构体
      class DescribeDDosAttackTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: topn数据
        # @type Data: Array
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param PolicyIds: ddos 策略组id集合
        # @type PolicyIds: Array
        # @param ProtocolType: 协议类型，{tcp,udp,all}
        # @type ProtocolType: String
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :PolicyIds, :ProtocolType, :ZoneIds
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, policyids=nil, protocoltype=nil, zoneids=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @PolicyIds = policyids
          @ProtocolType = protocoltype
          @ZoneIds = zoneids
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @PolicyIds = params['PolicyIds']
          @ProtocolType = params['ProtocolType']
          @ZoneIds = params['ZoneIds']
        end
      end

      # DescribeDDosMajorAttackEvent返回参数结构体
      class DescribeDDosMajorAttackEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDos查询主攻击事件
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.DDosMajorAttackEventData`
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
        # @param Type: 配置类型
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
        # @param ApplicationProxyUsed: 是否被四层代理使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationProxyUsed: Boolean
        # @param LoadBalancingUsed: 是否被负载均衡使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsed: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginId, :OriginName, :Type, :Record, :UpdateTime, :ZoneId, :ZoneName, :OriginType, :ApplicationProxyUsed, :LoadBalancingUsed, :RequestId
        
        def initialize(originid=nil, originname=nil, type=nil, record=nil, updatetime=nil, zoneid=nil, zonename=nil, origintype=nil, applicationproxyused=nil, loadbalancingused=nil, requestid=nil)
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
        # @param MetricNames: 指标列表
        # @type MetricNames: Array
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: ZoneId列表，仅在zone/domain维度下查询时该参数有效
        # @type ZoneIds: Array
        # @param Domains: Domain列表，仅在domain维度下查询时该参数有效
        # @type Domains: Array
        # @param Protocol: 协议类型， 选填{http,http2,https,all}
        # @type Protocol: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :Interval, :ZoneIds, :Domains, :Protocol
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, interval=nil, zoneids=nil, domains=nil, protocol=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Interval = interval
          @ZoneIds = zoneids
          @Domains = domains
          @Protocol = protocol
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Interval = params['Interval']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Protocol = params['Protocol']
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
        # @param MetricNames: 指标列表
        # @type MetricNames: Array
        # @param ZoneIds: ZoneId列表，仅在zone/instance维度下查询时该参数有效
        # @type ZoneIds: Array
        # @param InstanceIds: InstanceId列表，仅在Instance维度下查询时该参数有效
        # @type InstanceIds: Array
        # @param Protocol: 协议类型， 该字段当前无效
        # @type Protocol: String
        # @param Interval: 时间间隔，选填{min, 5min, hour, day}
        # @type Interval: String
        # @param RuleId: 规则ID，仅在instance维度有效
        # @type RuleId: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :InstanceIds, :Protocol, :Interval, :RuleId
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, instanceids=nil, protocol=nil, interval=nil, ruleid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @InstanceIds = instanceids
          @Protocol = protocol
          @Interval = interval
          @RuleId = ruleid
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
        # @param MetricNames: 时序类访问流量指标
        # @type MetricNames: Array
        # @param Interval: 时间间隔，选填{min, 5min, hour, day, week}
        # @type Interval: String
        # @param ZoneIds: ZoneId数组
        # @type ZoneIds: Array
        # @param Filters: 筛选条件
        # @type Filters: Array

        attr_accessor :StartTime, :EndTime, :MetricNames, :Interval, :ZoneIds, :Filters
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, interval=nil, zoneids=nil, filters=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Interval = interval
          @ZoneIds = zoneids
          @Filters = filters
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

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :Interval, :ZoneIds, :Filters
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, interval=nil, zoneids=nil, filters=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Limit = limit
          @Interval = interval
          @ZoneIds = zoneids
          @Filters = filters
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
        # @param PolicyIds: ddos策略组id 集合
        # @type PolicyIds: Array
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param Domains: 协议类型,{tcp,udp,all}
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricNames: 统计指标列表
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表
        # @type ZoneIds: Array
        # @param Domains: 子域名列表
        # @type Domains: Array
        # @param ProtocolType: 协议类型
        # @type ProtocolType: String
        # @param AttackType: "webshell" : Webshell检测防护
        # "oa" : 常见OA漏洞防护
        # "xss" : XSS跨站脚本攻击防护
        # "xxe" : XXE攻击防护
        # "webscan" : 扫描器攻击漏洞防护
        # "cms" : 常见CMS漏洞防护
        # "upload" : 恶意文件上传攻击防护
        # "sql" : SQL注入攻击防护
        # "cmd_inject": 命令/代码注入攻击防护
        # "osc" : 开源组件漏洞防护
        # "file_read" : 任意文件读取
        # "ldap" : LDAP注入攻击防护
        # "other" : 其它漏洞防护

        # "all":"所有"
        # @type AttackType: String
        # @param Interval: 查询时间粒度，可选{min,5min,hour,day}
        # @type Interval: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :ProtocolType, :AttackType, :Interval
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, protocoltype=nil, attacktype=nil, interval=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @ProtocolType = protocoltype
          @AttackType = attacktype
          @Interval = interval
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
        end
      end

      # DescribeWebManagedRulesData返回参数结构体
      class DescribeWebManagedRulesDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: Web攻击日志实体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回消息
        # @type Msg: String
        # @param Interval: 查询时间粒度，可选{min,5min,hour,day}
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
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param Domains: 域名集合
        # @type Domains: Array
        # @param QueryCondition: 查询条件
        # @type QueryCondition: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :ZoneIds, :Domains, :QueryCondition
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zoneids=nil, domains=nil, querycondition=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
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
        end
      end

      # DescribeWebManagedRulesLog返回参数结构体
      class DescribeWebManagedRulesLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: web攻击日志data
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.WebLogData`
        # @param Status: 状态，1:失败，0:失败
        # @type Status: Integer
        # @param Msg: 返回信息
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricName: 过滤指标
        # @type MetricName: String
        # @param Limit: 查询前多少名,传值为0 全量
        # @type Limit: Integer
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param PolicyIds: ddos策略组id 集合
        # @type PolicyIds: Array
        # @param Port: 端口号
        # @type Port: Integer
        # @param ProtocolType: 协议类型,tcp,udp,all
        # @type ProtocolType: String
        # @param AttackType: 攻击类型,flood,icmpFlood......,all
        # @type AttackType: String
        # @param Domains: 域名集合
        # @type Domains: Array

        attr_accessor :StartTime, :EndTime, :MetricName, :Limit, :ZoneIds, :PolicyIds, :Port, :ProtocolType, :AttackType, :Domains
        
        def initialize(starttime=nil, endtime=nil, metricname=nil, limit=nil, zoneids=nil, policyids=nil, port=nil, protocoltype=nil, attacktype=nil, domains=nil)
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
        end
      end

      # DescribeWebManagedRulesTopData返回参数结构体
      class DescribeWebManagedRulesTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: topn数据
        # @type Data: Array
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricNames: 统计指标列表
        # @type MetricNames: Array
        # @param ZoneIds: 站点id列表
        # @type ZoneIds: Array
        # @param Domains: 子域名列表
        # @type Domains: Array
        # @param ProtocolType: 协议类型
        # @type ProtocolType: String
        # @param AttackType: "webshell" : Webshell检测防护
        # "oa" : 常见OA漏洞防护
        # "xss" : XSS跨站脚本攻击防护
        # "xxe" : XXE攻击防护
        # "webscan" : 扫描器攻击漏洞防护
        # "cms" : 常见CMS漏洞防护
        # "upload" : 恶意文件上传攻击防护
        # "sql" : SQL注入攻击防护
        # "cmd_inject": 命令/代码注入攻击防护
        # "osc" : 开源组件漏洞防护
        # "file_read" : 任意文件读取
        # "ldap" : LDAP注入攻击防护
        # "other" : 其它漏洞防护

        # "all":"所有"
        # @type AttackType: String
        # @param Interval: 查询时间粒度，可选{min,5min,hour,day}
        # @type Interval: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :ProtocolType, :AttackType, :Interval
        
        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, protocoltype=nil, attacktype=nil, interval=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @ProtocolType = protocoltype
          @AttackType = attacktype
          @Interval = interval
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
        end
      end

      # DescribeWebProtectionData返回参数结构体
      class DescribeWebProtectionDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: 状态，1:失败，0:成功
        # @type Status: Integer
        # @param Msg: 消息
        # @type Msg: String
        # @param Interval: 查询时间粒度，可选{min,5min,hour,day}
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
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param PageNo: 当前页
        # @type PageNo: Integer
        # @param ZoneIds: 站点集合
        # @type ZoneIds: Array
        # @param Domains: 域名集合
        # @type Domains: Array
        # @param QueryCondition: 查询条件
        # @type QueryCondition: Array

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNo, :ZoneIds, :Domains, :QueryCondition
        
        def initialize(starttime=nil, endtime=nil, pagesize=nil, pageno=nil, zoneids=nil, domains=nil, querycondition=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNo = pageno
          @ZoneIds = zoneids
          @Domains = domains
          @QueryCondition = querycondition
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
        end
      end

      # DescribeWebProtectionLog返回参数结构体
      class DescribeWebProtectionLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 限速拦截Data
        # @type Data: :class:`Tencentcloud::Teo.v20220106.models.CCLogData`
        # @param Status: 状态，1：失败，0:成功
        # @type Status: Integer
        # @param Msg: 返回信息
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配给用户的 NS 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 站点修改时间
        # @type ModifiedOn: String
        # @param VanityNameServers: 用户自定义 NS 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220106.models.VanityNameServers`
        # @param VanityNameServersIps: 用户自定义 NS IP 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServersIps: Array
        # @param CnameSpeedUp: 是否开启 CNAME 加速
        # - enabled：开启
        # - disabled：关闭
        # @type CnameSpeedUp: String
        # @param CnameStatus: cname切换验证状态
        # - finished 切换完成
        # - pending 切换验证中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CreatedOn, :ModifiedOn, :VanityNameServers, :VanityNameServersIps, :CnameSpeedUp, :CnameStatus, :RequestId
        
        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, createdon=nil, modifiedon=nil, vanitynameservers=nil, vanitynameserversips=nil, cnamespeedup=nil, cnamestatus=nil, requestid=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @VanityNameServers = vanitynameservers
          @VanityNameServersIps = vanitynameserversips
          @CnameSpeedUp = cnamespeedup
          @CnameStatus = cnamestatus
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
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
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
          @CnameSpeedUp = params['CnameSpeedUp']
          @CnameStatus = params['CnameStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneSetting请求参数结构体
      class DescribeZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
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
        # @param Cache: 缓存过期时间配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220106.models.CacheKey`
        # @param MaxAge: 浏览器缓存配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220106.models.MaxAge`
        # @param OfflineCache: 离线缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220106.models.OfflineCache`
        # @param Quic: Quic访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quic: :class:`Tencentcloud::Teo.v20220106.models.Quic`
        # @param PostMaxSize: POST请求传输配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220106.models.PostMaxSize`
        # @param Compression: 智能压缩配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Teo.v20220106.models.Compression`
        # @param UpstreamHttp2: http2回源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220106.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制https跳转配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220106.models.ForceRedirect`
        # @param Https: Https 加速配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Teo.v20220106.models.Https`
        # @param Origin: 源站配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Teo.v20220106.models.Origin`
        # @param SmartRouting: 动态加速配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220106.models.SmartRouting`
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param Zone: 站点域名
        # @type Zone: String
        # @param WebSocket: WebSocket配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220106.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220106.models.ClientIp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cache, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :ZoneId, :Zone, :WebSocket, :ClientIpHeader, :RequestId
        
        def initialize(cache=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, zoneid=nil, zone=nil, websocket=nil, clientipheader=nil, requestid=nil)
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
          @ZoneId = zoneid
          @Zone = zone
          @WebSocket = websocket
          @ClientIpHeader = clientipheader
          @RequestId = requestid
        end

        def deserialize(params)
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
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
          unless params['ClientIpHeader'].nil?
            @ClientIpHeader = ClientIp.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页参数，页偏移
        # @type Offset: Integer
        # @param Limit: 分页参数，每页返回的站点个数
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器，复杂类型
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
        # @param TotalCount: 符合条件的站点数
        # @type TotalCount: Integer
        # @param Zones: 站点详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param DomainStatus: 域名是否开启了lb，四层，安全
        # - lb 负载均衡
        # - security 安全
        # - l4 四层
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
        # @param Zones: 站点集合
        # @type Zones: Array
        # @param Domains: 域名集合
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
        # @param Switch: 访问强制跳转配置开关
        # on：开启
        # off：关闭
        # @type Switch: String
        # @param RedirectStatusCode: 重定向状态码
        # 301
        # 302
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
        # @param Switch: 是否开启，on或off。
        # @type Switch: String
        # @param MaxAge: MaxAge数值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: Integer
        # @param IncludeSubDomains: 是否包含子域名，on或off。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeSubDomains: String
        # @param Preload: 是否预加载，on或off。
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
        # @param Http2: http2 配置开关
        # on：开启
        # off：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Http2: String
        # @param OcspStapling: OCSP 配置开关
        # on：开启
        # off：关闭
        # 默认为关闭状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcspStapling: String
        # @param TlsVersion: Tls版本设置，支持设置 TLSv1, TLSV1.1, TLSV1.2, TLSv1.3，修改时必须开启连续的版本
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

      # 离线日志详细信息
      class L7OfflineLog < TencentCloud::Common::AbstractModel
        # @param LogTime: 日志打包开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTime: Integer
        # @param Domain: 站点名称
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

        attr_accessor :LogTime, :Domain, :Size, :Url, :LogPacketName
        
        def initialize(logtime=nil, domain=nil, size=nil, url=nil, logpacketname=nil)
          @LogTime = logtime
          @Domain = domain
          @Size = size
          @Url = url
          @LogPacketName = logpacketname
        end

        def deserialize(params)
          @LogTime = params['LogTime']
          @Domain = params['Domain']
          @Size = params['Size']
          @Url = params['Url']
          @LogPacketName = params['LogPacketName']
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
        # @param MaxAgeTime: MaxAge 时间设置，单位秒，最大365天
        # 注意：时间为0，即不缓存。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAgeTime: Integer
        # @param FollowOrigin: 是否遵循源站，on或off，开启时忽略时间设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: String

        attr_accessor :MaxAgeTime, :FollowOrigin
        
        def initialize(maxagetime=nil, followorigin=nil)
          @MaxAgeTime = maxagetime
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          @MaxAgeTime = params['MaxAgeTime']
          @FollowOrigin = params['FollowOrigin']
        end
      end

      # ModifyApplicationProxy请求参数结构体
      class ModifyApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param ProxyId: 四层代理ID
        # @type ProxyId: String
        # @param ProxyName: 四层代理名称
        # @type ProxyName: String
        # @param ForwardClientIp: 参数已经废弃
        # @type ForwardClientIp: String
        # @param SessionPersist: 参数已经废弃
        # @type SessionPersist: Boolean
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒
        # @type SessionPersistTime: Integer
        # @param ProxyType: 服务类型
        # hostname：子域名
        # instance：实例
        # @type ProxyType: String

        attr_accessor :ZoneId, :ProxyId, :ProxyName, :ForwardClientIp, :SessionPersist, :SessionPersistTime, :ProxyType
        
        def initialize(zoneid=nil, proxyid=nil, proxyname=nil, forwardclientip=nil, sessionpersist=nil, sessionpersisttime=nil, proxytype=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @ProxyName = proxyname
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
        end
      end

      # ModifyApplicationProxy返回参数结构体
      class ModifyApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 四层代理ID
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
        # load_balancing：负载均衡
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # 当OriginType=custom时，表示多个：
        # IP:端口
        # 域名:端口
        # 当OriginType=origins时，包含一个元素，表示源站组ID
        # 当OriginType=load_balancing时，包含一个元素，表示负载均衡ID
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
        # @param ProxyId: 四层代理ID
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
        # @param ProxyId: 四层代理ID
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
        # @param ProxyId: 四层代理ID
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
        # @param PolicyId: 策略组ID
        # @type PolicyId: Integer
        # @param ZoneId: 一级域名
        # @type ZoneId: String
        # @param DdosRule: DDoS具体防护配置
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
        # @param PolicyId: 策略组ID
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
        # 当OriginType=third_party 时，不需要填写
        # @type Type: String
        # @param Record: 源站记录
        # @type Record: Array
        # @param ZoneId: 站点ID
        # @type ZoneId: String
        # @param OriginType: 源站类型
        # self：自有源站
        # third_party：第三方源站
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
        # @param ZoneId: 待变更的站点ID
        # @type ZoneId: String
        # @param Cache: 缓存过期时间配置
        # @type Cache: :class:`Tencentcloud::Teo.v20220106.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220106.models.CacheKey`
        # @param MaxAge: 浏览器缓存配置
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220106.models.MaxAge`
        # @param OfflineCache: 离线缓存
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220106.models.OfflineCache`
        # @param Quic: Quic访问
        # @type Quic: :class:`Tencentcloud::Teo.v20220106.models.Quic`
        # @param PostMaxSize: POST请求传输配置
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220106.models.PostMaxSize`
        # @param Compression: 智能压缩配置
        # @type Compression: :class:`Tencentcloud::Teo.v20220106.models.Compression`
        # @param UpstreamHttp2: http2回源配置
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220106.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制https跳转配置
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220106.models.ForceRedirect`
        # @param Https: Https 加速配置
        # @type Https: :class:`Tencentcloud::Teo.v20220106.models.Https`
        # @param Origin: 源站配置
        # @type Origin: :class:`Tencentcloud::Teo.v20220106.models.Origin`
        # @param SmartRouting: 智能加速配置
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220106.models.SmartRouting`
        # @param WebSocket: WebSocket配置
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220106.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220106.models.ClientIp`

        attr_accessor :ZoneId, :Cache, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :WebSocket, :ClientIpHeader
        
        def initialize(zoneid=nil, cache=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, websocket=nil, clientipheader=nil)
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
        end
      end

      # ModifyZoneSetting返回参数结构体
      class ModifyZoneSettingResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID
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
        # @param Switch: on | off, 离线缓存是否开启
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param OriginPullProtocol: 回源协议配置
        # http：强制 http 回源
        # follow：协议跟随回源
        # https：强制 https 回源，https 回源时仅支持源站 443 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginPullProtocol: String

        attr_accessor :OriginPullProtocol
        
        def initialize(originpullprotocol=nil)
          @OriginPullProtocol = originpullprotocol
        end

        def deserialize(params)
          @OriginPullProtocol = params['OriginPullProtocol']
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
        # @param Type: 配置类型
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
        # @param ApplicationProxyUsed: 是否为四层代理使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationProxyUsed: Boolean
        # @param LoadBalancingUsed: 是否为负载均衡使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancingUsed: Boolean

        attr_accessor :OriginId, :OriginName, :Type, :Record, :UpdateTime, :ZoneId, :ZoneName, :OriginType, :ApplicationProxyUsed, :LoadBalancingUsed
        
        def initialize(originid=nil, originname=nil, type=nil, record=nil, updatetime=nil, zoneid=nil, zonename=nil, origintype=nil, applicationproxyused=nil, loadbalancingused=nil)
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
        end
      end

      # 源站组记录
      class OriginRecord < TencentCloud::Common::AbstractModel
        # @param Record: 记录值
        # @type Record: String
        # @param Area: 当源站配置类型Type=area时，表示区域
        # 当源站类型Type=area时，为空表示默认区域
        # @type Area: Array
        # @param Weight: 当源站配置类型Type=weight时，表示权重
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

        attr_accessor :Record, :Area, :Weight, :Port, :RecordId, :Private, :PrivateParameter
        
        def initialize(record=nil, area=nil, weight=nil, port=nil, recordid=nil, private=nil, privateparameter=nil)
          @Record = record
          @Area = area
          @Weight = weight
          @Port = port
          @RecordId = recordid
          @Private = private
          @PrivateParameter = privateparameter
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
        # @param Switch: 是调整POST请求限制，平台默认为32MB。
        # 关闭：off，
        # 开启：on。
        # @type Switch: String
        # @param MaxSize: 最大限制，取值在1MB和500MB之间。单位字节
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
        # @param Switch: on | off CacheKey是否由QueryString组成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param Action: includeCustom:使用部分url参数
        # excludeCustom:排除部分url参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Value: 使用/排除的url参数数组
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
        # @param Switch: 是否启动Quic配置
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

        attr_accessor :Switch, :UserRules, :Template
        
        def initialize(switch=nil, userrules=nil, template=nil)
          @Switch = switch
          @UserRules = userrules
          @Template = template
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
        # @param Key: Entry的Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: Entry的Value
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
        # @param Metric: 指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param Detail: 指标数据明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param Max: 最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: Integer
        # @param Avg: 平均值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avg: Float
        # @param Sum: 数据总和
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

        attr_accessor :WafConfig, :RateLimitConfig, :DdosConfig, :AclConfig, :BotConfig, :SwitchConfig
        
        def initialize(wafconfig=nil, ratelimitconfig=nil, ddosconfig=nil, aclconfig=nil, botconfig=nil, switchconfig=nil)
          @WafConfig = wafconfig
          @RateLimitConfig = ratelimitconfig
          @DdosConfig = ddosconfig
          @AclConfig = aclconfig
          @BotConfig = botconfig
          @SwitchConfig = switchconfig
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
        # @param Switch: 智能加速配置开关
        # on：开启
        # off：关闭
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
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
        # @param Timestamp: 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Value: 数值
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
        # @param Key: Entry key
        # @type Key: String
        # @param Value: TopN数据
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
        # @param Name: Entry的name
        # @type Name: String
        # @param Count: 数量
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
        # @param Switch: http2回源配置开关
        # on：开启
        # off：关闭
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
        # @param WafRules: 门神黑白名单
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
        # @param BlockRuleIDs: 黑名单
        # @type BlockRuleIDs: Array
        # @param Switch: id的开关
        # @type Switch: String
        # @param ObserveRuleIDs: 观察模式
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
        # @param List: 数据
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
        # @param AttackContent: 攻击内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackContent: String
        # @param AttackIp: 攻击IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackIp: String
        # @param AttackType: 攻击类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackType: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Msuuid: uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msuuid: String
        # @param RequestMethod: 请求方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: String
        # @param RequestUri: 请求URI
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestUri: String
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RuleId: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param SipCountryCode: IP所在国家
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SipCountryCode: String
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param DisposalMethod: 处置方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisposalMethod: String
        # @param HttpLog: http_log
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpLog: String
        # @param Ua: user agent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ua: String
        # @param AttackTime: 攻击时间，为保持统一，原参数time更名为AttackTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackTime: Integer

        attr_accessor :AttackContent, :AttackIp, :AttackType, :Domain, :Msuuid, :RequestMethod, :RequestUri, :RiskLevel, :RuleId, :SipCountryCode, :EventId, :DisposalMethod, :HttpLog, :Ua, :AttackTime
        
        def initialize(attackcontent=nil, attackip=nil, attacktype=nil, domain=nil, msuuid=nil, requestmethod=nil, requesturi=nil, risklevel=nil, ruleid=nil, sipcountrycode=nil, eventid=nil, disposalmethod=nil, httplog=nil, ua=nil, attacktime=nil)
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
        end
      end

      # WebSocket配置
      class WebSocket < TencentCloud::Common::AbstractModel
        # @param Switch: WebSocket 超时配置开关, 开关为off时，平台仍支持WebSocket连接，此时超时时间默认为15秒，若需要调整超时时间，将开关置为on.
        # @type Switch: String
        # @param Timeout: 设置超时时间，单位为秒，最大超时时间120秒。
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
        # @param Id: 站点ID
        # @type Id: String
        # @param Name: 站点名称
        # @type Name: String
        # @param OriginalNameServers: 站点当前使用的 NS 列表
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配的 NS 列表
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
        # @param CreatedOn: 站点创建时间
        # @type CreatedOn: String
        # @param ModifiedOn: 站点修改时间
        # @type ModifiedOn: String
        # @param CnameStatus: cname 接入状态
        # - finished 站点已验证
        # - pending 站点验证中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CreatedOn, :ModifiedOn, :CnameStatus
        
        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, createdon=nil, modifiedon=nil, cnamestatus=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @CnameStatus = cnamestatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @Status = params['Status']
          @Type = params['Type']
          @Paused = params['Paused']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @CnameStatus = params['CnameStatus']
        end
      end

      # 站点查询过滤条件
      class ZoneFilter < TencentCloud::Common::AbstractModel
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

    end
  end
end

