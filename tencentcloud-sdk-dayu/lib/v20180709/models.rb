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
  module Dayu
    module V20180709
      # 巴拉多返回的数据
      class BaradData < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名（connum表示TCP活跃连接数；
        # new_conn表示新建TCP连接数；
        # inactive_conn表示非活跃连接数;
        # intraffic表示入流量；
        # outtraffic表示出流量；
        # alltraffic表示出流量和入流量之和；
        # inpkg表示入包速率；
        # outpkg表示出包速率；）
        # @type MetricName: String
        # @param Data: 值数组
        # @type Data: Array
        # @param Count: 值数组的大小
        # @type Count: Integer

        attr_accessor :MetricName, :Data, :Count

        def initialize(metricname=nil, data=nil, count=nil)
          @MetricName = metricname
          @Data = data
          @Count = count
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Data = params['Data']
          @Count = params['Count']
        end
      end

      # 高防包绑定IP对象
      class BoundIpInfo < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param BizType: 绑定的产品分类，取值[public（CVM、CLB产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        # @type BizType: String
        # @param DeviceType: 产品分类下的子类型，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param InstanceId: IP所属的资源实例ID，当绑定新IP时必须填写此字段；例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*); 如果绑定的是托管IP没有对应的资源实例ID，请填写"none";
        # @type InstanceId: String
        # @param IspCode: 运营商，0：电信；1：联通；2：移动；5：BGP
        # @type IspCode: Integer

        attr_accessor :Ip, :BizType, :DeviceType, :InstanceId, :IspCode

        def initialize(ip=nil, biztype=nil, devicetype=nil, instanceid=nil, ispcode=nil)
          @Ip = ip
          @BizType = biztype
          @DeviceType = devicetype
          @InstanceId = instanceid
          @IspCode = ispcode
        end

        def deserialize(params)
          @Ip = params['Ip']
          @BizType = params['BizType']
          @DeviceType = params['DeviceType']
          @InstanceId = params['InstanceId']
          @IspCode = params['IspCode']
        end
      end

      # CC告警阈值
      class CCAlarmThreshold < TencentCloud::Common::AbstractModel
        # @param AlarmThreshold: CC告警阈值
        # @type AlarmThreshold: Integer

        attr_accessor :AlarmThreshold

        def initialize(alarmthreshold=nil)
          @AlarmThreshold = alarmthreshold
        end

        def deserialize(params)
          @AlarmThreshold = params['AlarmThreshold']
        end
      end

      # CC攻击事件记录
      class CCEventRecord < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Vip: 资源的IP
        # @type Vip: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String
        # @param ReqQps: 总请求QPS峰值
        # @type ReqQps: Integer
        # @param DropQps: 攻击QPS峰值
        # @type DropQps: Integer
        # @param AttackStatus: 攻击状态，取值[0（攻击中）, 1（攻击结束）]
        # @type AttackStatus: Integer
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param DomainList: 域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainList: String
        # @param UriList: uri列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UriList: String
        # @param AttackipList: 攻击源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackipList: String

        attr_accessor :Business, :Id, :Vip, :StartTime, :EndTime, :ReqQps, :DropQps, :AttackStatus, :ResourceName, :DomainList, :UriList, :AttackipList

        def initialize(business=nil, id=nil, vip=nil, starttime=nil, endtime=nil, reqqps=nil, dropqps=nil, attackstatus=nil, resourcename=nil, domainlist=nil, urilist=nil, attackiplist=nil)
          @Business = business
          @Id = id
          @Vip = vip
          @StartTime = starttime
          @EndTime = endtime
          @ReqQps = reqqps
          @DropQps = dropqps
          @AttackStatus = attackstatus
          @ResourceName = resourcename
          @DomainList = domainlist
          @UriList = urilist
          @AttackipList = attackiplist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Vip = params['Vip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReqQps = params['ReqQps']
          @DropQps = params['DropQps']
          @AttackStatus = params['AttackStatus']
          @ResourceName = params['ResourceName']
          @DomainList = params['DomainList']
          @UriList = params['UriList']
          @AttackipList = params['AttackipList']
        end
      end

      # CC的访问频率控制规则
      class CCFrequencyRule < TencentCloud::Common::AbstractModel
        # @param CCFrequencyRuleId: CC的访问频率控制规则ID
        # @type CCFrequencyRuleId: String
        # @param Uri: URI字符串，必须以/开头，例如/abc/a.php，长度不超过31；当URI=/时，匹配模式只能选择前缀匹配；
        # @type Uri: String
        # @param UserAgent: User-Agent字符串，长度不超过80
        # @type UserAgent: String
        # @param Cookie: Cookie字符串，长度不超过40
        # @type Cookie: String
        # @param Mode: 匹配规则，取值["include"(前缀匹配)，"equal"(完全匹配)]
        # @type Mode: String
        # @param Period: 统计周期，单位秒，取值[10, 30, 60]
        # @type Period: Integer
        # @param ReqNumber: 访问次数，取值[1-10000]
        # @type ReqNumber: Integer
        # @param Act: 执行动作，取值["alg"（人机识别）, "drop"（拦截）]
        # @type Act: String
        # @param ExeDuration: 执行时间，单位秒，取值[1-900]
        # @type ExeDuration: Integer

        attr_accessor :CCFrequencyRuleId, :Uri, :UserAgent, :Cookie, :Mode, :Period, :ReqNumber, :Act, :ExeDuration

        def initialize(ccfrequencyruleid=nil, uri=nil, useragent=nil, cookie=nil, mode=nil, period=nil, reqnumber=nil, act=nil, exeduration=nil)
          @CCFrequencyRuleId = ccfrequencyruleid
          @Uri = uri
          @UserAgent = useragent
          @Cookie = cookie
          @Mode = mode
          @Period = period
          @ReqNumber = reqnumber
          @Act = act
          @ExeDuration = exeduration
        end

        def deserialize(params)
          @CCFrequencyRuleId = params['CCFrequencyRuleId']
          @Uri = params['Uri']
          @UserAgent = params['UserAgent']
          @Cookie = params['Cookie']
          @Mode = params['Mode']
          @Period = params['Period']
          @ReqNumber = params['ReqNumber']
          @Act = params['Act']
          @ExeDuration = params['ExeDuration']
        end
      end

      # cc自定义规则
      class CCPolicy < TencentCloud::Common::AbstractModel
        # @param Name: 策略名称
        # @type Name: String
        # @param Smode: 匹配模式，取值[matching(匹配模式), speedlimit(限速模式)]
        # @type Smode: String
        # @param SetId: 策略id
        # @type SetId: String
        # @param Frequency: 每分钟限制的次数
        # @type Frequency: Integer
        # @param ExeMode: 执行策略模式，拦截或者验证码，取值[alg（验证码）, drop（拦截）]
        # @type ExeMode: String
        # @param Switch: 生效开关
        # @type Switch: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RuleList: 规则列表
        # @type RuleList: Array
        # @param IpList: IP列表，如果不填时，请传空数组但不能为null；
        # @type IpList: Array
        # @param Protocol: cc防护类型，取值[http，https]
        # @type Protocol: String
        # @param RuleId: 可选字段，表示HTTPS的CC防护域名对应的转发规则ID;
        # @type RuleId: String
        # @param Domain: HTTPS的CC防护域名
        # @type Domain: String

        attr_accessor :Name, :Smode, :SetId, :Frequency, :ExeMode, :Switch, :CreateTime, :RuleList, :IpList, :Protocol, :RuleId, :Domain

        def initialize(name=nil, smode=nil, setid=nil, frequency=nil, exemode=nil, switch=nil, createtime=nil, rulelist=nil, iplist=nil, protocol=nil, ruleid=nil, domain=nil)
          @Name = name
          @Smode = smode
          @SetId = setid
          @Frequency = frequency
          @ExeMode = exemode
          @Switch = switch
          @CreateTime = createtime
          @RuleList = rulelist
          @IpList = iplist
          @Protocol = protocol
          @RuleId = ruleid
          @Domain = domain
        end

        def deserialize(params)
          @Name = params['Name']
          @Smode = params['Smode']
          @SetId = params['SetId']
          @Frequency = params['Frequency']
          @ExeMode = params['ExeMode']
          @Switch = params['Switch']
          @CreateTime = params['CreateTime']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              ccrule_tmp = CCRule.new
              ccrule_tmp.deserialize(i)
              @RuleList << ccrule_tmp
            end
          end
          @IpList = params['IpList']
          @Protocol = params['Protocol']
          @RuleId = params['RuleId']
          @Domain = params['Domain']
        end
      end

      # cc自定义策略配置的规则
      class CCRule < TencentCloud::Common::AbstractModel
        # @param Skey: 规则的key, 可以为host、cgi、ua、referer
        # @type Skey: String
        # @param Operator: 规则的条件，可以为include、not_include、equal
        # @type Operator: String
        # @param Value: 规则的值，长度小于31字节
        # @type Value: String

        attr_accessor :Skey, :Operator, :Value

        def initialize(skey=nil, operator=nil, value=nil)
          @Skey = skey
          @Operator = operator
          @Value = value
        end

        def deserialize(params)
          @Skey = params['Skey']
          @Operator = params['Operator']
          @Value = params['Value']
        end
      end

      # 7层CC自定义规则
      class CCRuleConfig < TencentCloud::Common::AbstractModel
        # @param Period: 统计周期，单位秒，取值[10, 30, 60]
        # @type Period: Integer
        # @param ReqNumber: 访问次数，取值[1-10000]
        # @type ReqNumber: Integer
        # @param Action: 执行动作，取值["alg"（人机识别）, "drop"（拦截）]
        # @type Action: String
        # @param ExeDuration: 执行时间，单位秒，取值[1-900]
        # @type ExeDuration: Integer

        attr_accessor :Period, :ReqNumber, :Action, :ExeDuration

        def initialize(period=nil, reqnumber=nil, action=nil, exeduration=nil)
          @Period = period
          @ReqNumber = reqnumber
          @Action = action
          @ExeDuration = exeduration
        end

        def deserialize(params)
          @Period = params['Period']
          @ReqNumber = params['ReqNumber']
          @Action = params['Action']
          @ExeDuration = params['ExeDuration']
        end
      end

      # CreateBasicDDoSAlarmThreshold请求参数结构体
      class CreateBasicDDoSAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（basic表示DDoS基础防护）
        # @type Business: String
        # @param Method: =get表示读取告警阈值；=set表示设置告警阈值；
        # @type Method: String
        # @param AlarmType: 可选，告警阈值类型，1-入流量，2-清洗流量；当Method为set时必须填写；
        # @type AlarmType: Integer
        # @param AlarmThreshold: 可选，告警阈值，当Method为set时必须填写；当设置阈值为0时表示清除告警阈值配置；
        # @type AlarmThreshold: Integer

        attr_accessor :Business, :Method, :AlarmType, :AlarmThreshold

        def initialize(business=nil, method=nil, alarmtype=nil, alarmthreshold=nil)
          @Business = business
          @Method = method
          @AlarmType = alarmtype
          @AlarmThreshold = alarmthreshold
        end

        def deserialize(params)
          @Business = params['Business']
          @Method = params['Method']
          @AlarmType = params['AlarmType']
          @AlarmThreshold = params['AlarmThreshold']
        end
      end

      # CreateBasicDDoSAlarmThreshold返回参数结构体
      class CreateBasicDDoSAlarmThresholdResponse < TencentCloud::Common::AbstractModel
        # @param AlarmThreshold: 当存在告警阈值配置时，返回告警阈值大于0，当不存在告警配置时，返回告警阈值为0；
        # @type AlarmThreshold: Integer
        # @param AlarmType: 告警阈值类型，1-入流量，2-清洗流量；当AlarmThreshold大于0时有效；
        # @type AlarmType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmThreshold, :AlarmType, :RequestId

        def initialize(alarmthreshold=nil, alarmtype=nil, requestid=nil)
          @AlarmThreshold = alarmthreshold
          @AlarmType = alarmtype
          @RequestId = requestid
        end

        def deserialize(params)
          @AlarmThreshold = params['AlarmThreshold']
          @AlarmType = params['AlarmType']
          @RequestId = params['RequestId']
        end
      end

      # CreateBoundIP请求参数结构体
      class CreateBoundIPRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param BoundDevList: 绑定到资源实例的IP数组，当资源实例为高防包(独享包)时，数组只允许填1个IP；当没有要绑定的IP时可以为空数组；但是BoundDevList和UnBoundDevList至少有一个不为空；
        # @type BoundDevList: Array
        # @param UnBoundDevList: 与资源实例解绑的IP数组，当资源实例为高防包(独享包)时，数组只允许填1个IP；当没有要解绑的IP时可以为空数组；但是BoundDevList和UnBoundDevList至少有一个不为空；
        # @type UnBoundDevList: Array
        # @param CopyPolicy: 已弃用，不填
        # @type CopyPolicy: String

        attr_accessor :Business, :Id, :BoundDevList, :UnBoundDevList, :CopyPolicy

        def initialize(business=nil, id=nil, bounddevlist=nil, unbounddevlist=nil, copypolicy=nil)
          @Business = business
          @Id = id
          @BoundDevList = bounddevlist
          @UnBoundDevList = unbounddevlist
          @CopyPolicy = copypolicy
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['BoundDevList'].nil?
            @BoundDevList = []
            params['BoundDevList'].each do |i|
              boundipinfo_tmp = BoundIpInfo.new
              boundipinfo_tmp.deserialize(i)
              @BoundDevList << boundipinfo_tmp
            end
          end
          unless params['UnBoundDevList'].nil?
            @UnBoundDevList = []
            params['UnBoundDevList'].each do |i|
              boundipinfo_tmp = BoundIpInfo.new
              boundipinfo_tmp.deserialize(i)
              @UnBoundDevList << boundipinfo_tmp
            end
          end
          @CopyPolicy = params['CopyPolicy']
        end
      end

      # CreateBoundIP返回参数结构体
      class CreateBoundIPResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCCFrequencyRules请求参数结构体
      class CreateCCFrequencyRulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleId: 7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）
        # @type RuleId: String
        # @param Mode: 匹配规则，取值["include"(前缀匹配)，"equal"(完全匹配)]
        # @type Mode: String
        # @param Period: 统计周期，单位秒，取值[10, 30, 60]
        # @type Period: Integer
        # @param ReqNumber: 访问次数，取值[1-10000]
        # @type ReqNumber: Integer
        # @param Act: 执行动作，取值["alg"（人机识别）, "drop"（拦截）]
        # @type Act: String
        # @param ExeDuration: 执行时间，单位秒，取值[1-900]
        # @type ExeDuration: Integer
        # @param Uri: URI字符串，必须以/开头，例如/abc/a.php，长度不超过31；当URI=/时，匹配模式只能选择前缀匹配；
        # @type Uri: String
        # @param UserAgent: User-Agent字符串，长度不超过80
        # @type UserAgent: String
        # @param Cookie: Cookie字符串，长度不超过40
        # @type Cookie: String

        attr_accessor :Business, :Id, :RuleId, :Mode, :Period, :ReqNumber, :Act, :ExeDuration, :Uri, :UserAgent, :Cookie

        def initialize(business=nil, id=nil, ruleid=nil, mode=nil, period=nil, reqnumber=nil, act=nil, exeduration=nil, uri=nil, useragent=nil, cookie=nil)
          @Business = business
          @Id = id
          @RuleId = ruleid
          @Mode = mode
          @Period = period
          @ReqNumber = reqnumber
          @Act = act
          @ExeDuration = exeduration
          @Uri = uri
          @UserAgent = useragent
          @Cookie = cookie
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleId = params['RuleId']
          @Mode = params['Mode']
          @Period = params['Period']
          @ReqNumber = params['ReqNumber']
          @Act = params['Act']
          @ExeDuration = params['ExeDuration']
          @Uri = params['Uri']
          @UserAgent = params['UserAgent']
          @Cookie = params['Cookie']
        end
      end

      # CreateCCFrequencyRules返回参数结构体
      class CreateCCFrequencyRulesResponse < TencentCloud::Common::AbstractModel
        # @param CCFrequencyRuleId: CC防护的访问频率控制规则ID
        # @type CCFrequencyRuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CCFrequencyRuleId, :RequestId

        def initialize(ccfrequencyruleid=nil, requestid=nil)
          @CCFrequencyRuleId = ccfrequencyruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @CCFrequencyRuleId = params['CCFrequencyRuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCCSelfDefinePolicy请求参数结构体
      class CreateCCSelfDefinePolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Policy: CC策略描述
        # @type Policy: :class:`Tencentcloud::Dayu.v20180709.models.CCPolicy`

        attr_accessor :Business, :Id, :Policy

        def initialize(business=nil, id=nil, policy=nil)
          @Business = business
          @Id = id
          @Policy = policy
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Policy'].nil?
            @Policy = CCPolicy.new
            @Policy.deserialize(params['Policy'])
          end
        end
      end

      # CreateCCSelfDefinePolicy返回参数结构体
      class CreateCCSelfDefinePolicyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDDoSPolicyCase请求参数结构体
      class CreateDDoSPolicyCaseRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param CaseName: 策略场景名，字符串长度小于64
        # @type CaseName: String
        # @param PlatformTypes: 开发平台，取值[PC（PC客户端）， MOBILE（移动端）， TV（电视端）， SERVER（主机）]
        # @type PlatformTypes: Array
        # @param AppType: 细分品类，取值[WEB（网站）， GAME（游戏）， APP（应用）， OTHER（其他）]
        # @type AppType: String
        # @param AppProtocols: 应用协议，取值[tcp（TCP协议），udp（UDP协议），icmp（ICMP协议），all（其他协议）]
        # @type AppProtocols: Array
        # @param TcpSportStart: TCP业务起始端口，取值(0, 65535]
        # @type TcpSportStart: String
        # @param TcpSportEnd: TCP业务结束端口，取值(0, 65535]，必须大于等于TCP业务起始端口
        # @type TcpSportEnd: String
        # @param UdpSportStart: UDP业务起始端口，取值范围(0, 65535]
        # @type UdpSportStart: String
        # @param UdpSportEnd: UDP业务结束端口，取值范围(0, 65535)，必须大于等于UDP业务起始端口
        # @type UdpSportEnd: String
        # @param HasAbroad: 是否有海外客户，取值[no（没有）, yes（有）]
        # @type HasAbroad: String
        # @param HasInitiateTcp: 是否会主动对外发起TCP请求，取值[no（不会）, yes（会）]
        # @type HasInitiateTcp: String
        # @param HasInitiateUdp: 是否会主动对外发起UDP业务请求，取值[no（不会）, yes（会）]
        # @type HasInitiateUdp: String
        # @param PeerTcpPort: 主动发起TCP请求的端口，取值范围(0, 65535]
        # @type PeerTcpPort: String
        # @param PeerUdpPort: 主动发起UDP请求的端口，取值范围(0, 65535]
        # @type PeerUdpPort: String
        # @param TcpFootprint: TCP载荷的固定特征码，字符串长度小于512
        # @type TcpFootprint: String
        # @param UdpFootprint: UDP载荷的固定特征码，字符串长度小于512
        # @type UdpFootprint: String
        # @param WebApiUrl: Web业务的API的URL
        # @type WebApiUrl: Array
        # @param MinTcpPackageLen: TCP业务报文长度最小值，取值范围(0, 1500)
        # @type MinTcpPackageLen: String
        # @param MaxTcpPackageLen: TCP业务报文长度最大值，取值范围(0, 1500)，必须大于等于TCP业务报文长度最小值
        # @type MaxTcpPackageLen: String
        # @param MinUdpPackageLen: UDP业务报文长度最小值，取值范围(0, 1500)
        # @type MinUdpPackageLen: String
        # @param MaxUdpPackageLen: UDP业务报文长度最大值，取值范围(0, 1500)，必须大于等于UDP业务报文长度最小值
        # @type MaxUdpPackageLen: String
        # @param HasVPN: 是否有VPN业务，取值[no（没有）, yes（有）]
        # @type HasVPN: String
        # @param TcpPortList: TCP业务端口列表，同时支持单个端口和端口段，字符串格式，例如：80,443,700-800,53,1000-3000
        # @type TcpPortList: String
        # @param UdpPortList: UDP业务端口列表，同时支持单个端口和端口段，字符串格式，例如：80,443,700-800,53,1000-3000
        # @type UdpPortList: String

        attr_accessor :Business, :CaseName, :PlatformTypes, :AppType, :AppProtocols, :TcpSportStart, :TcpSportEnd, :UdpSportStart, :UdpSportEnd, :HasAbroad, :HasInitiateTcp, :HasInitiateUdp, :PeerTcpPort, :PeerUdpPort, :TcpFootprint, :UdpFootprint, :WebApiUrl, :MinTcpPackageLen, :MaxTcpPackageLen, :MinUdpPackageLen, :MaxUdpPackageLen, :HasVPN, :TcpPortList, :UdpPortList

        def initialize(business=nil, casename=nil, platformtypes=nil, apptype=nil, appprotocols=nil, tcpsportstart=nil, tcpsportend=nil, udpsportstart=nil, udpsportend=nil, hasabroad=nil, hasinitiatetcp=nil, hasinitiateudp=nil, peertcpport=nil, peerudpport=nil, tcpfootprint=nil, udpfootprint=nil, webapiurl=nil, mintcppackagelen=nil, maxtcppackagelen=nil, minudppackagelen=nil, maxudppackagelen=nil, hasvpn=nil, tcpportlist=nil, udpportlist=nil)
          @Business = business
          @CaseName = casename
          @PlatformTypes = platformtypes
          @AppType = apptype
          @AppProtocols = appprotocols
          @TcpSportStart = tcpsportstart
          @TcpSportEnd = tcpsportend
          @UdpSportStart = udpsportstart
          @UdpSportEnd = udpsportend
          @HasAbroad = hasabroad
          @HasInitiateTcp = hasinitiatetcp
          @HasInitiateUdp = hasinitiateudp
          @PeerTcpPort = peertcpport
          @PeerUdpPort = peerudpport
          @TcpFootprint = tcpfootprint
          @UdpFootprint = udpfootprint
          @WebApiUrl = webapiurl
          @MinTcpPackageLen = mintcppackagelen
          @MaxTcpPackageLen = maxtcppackagelen
          @MinUdpPackageLen = minudppackagelen
          @MaxUdpPackageLen = maxudppackagelen
          @HasVPN = hasvpn
          @TcpPortList = tcpportlist
          @UdpPortList = udpportlist
        end

        def deserialize(params)
          @Business = params['Business']
          @CaseName = params['CaseName']
          @PlatformTypes = params['PlatformTypes']
          @AppType = params['AppType']
          @AppProtocols = params['AppProtocols']
          @TcpSportStart = params['TcpSportStart']
          @TcpSportEnd = params['TcpSportEnd']
          @UdpSportStart = params['UdpSportStart']
          @UdpSportEnd = params['UdpSportEnd']
          @HasAbroad = params['HasAbroad']
          @HasInitiateTcp = params['HasInitiateTcp']
          @HasInitiateUdp = params['HasInitiateUdp']
          @PeerTcpPort = params['PeerTcpPort']
          @PeerUdpPort = params['PeerUdpPort']
          @TcpFootprint = params['TcpFootprint']
          @UdpFootprint = params['UdpFootprint']
          @WebApiUrl = params['WebApiUrl']
          @MinTcpPackageLen = params['MinTcpPackageLen']
          @MaxTcpPackageLen = params['MaxTcpPackageLen']
          @MinUdpPackageLen = params['MinUdpPackageLen']
          @MaxUdpPackageLen = params['MaxUdpPackageLen']
          @HasVPN = params['HasVPN']
          @TcpPortList = params['TcpPortList']
          @UdpPortList = params['UdpPortList']
        end
      end

      # CreateDDoSPolicyCase返回参数结构体
      class CreateDDoSPolicyCaseResponse < TencentCloud::Common::AbstractModel
        # @param SceneId: 策略场景ID
        # @type SceneId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SceneId, :RequestId

        def initialize(sceneid=nil, requestid=nil)
          @SceneId = sceneid
          @RequestId = requestid
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDDoSPolicy请求参数结构体
      class CreateDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param DropOptions: 协议禁用，必须填写且数组长度必须为1
        # @type DropOptions: Array
        # @param Name: 策略名称
        # @type Name: String
        # @param PortLimits: 端口禁用，当没有禁用端口时填空数组
        # @type PortLimits: Array
        # @param IpAllowDenys: 请求源IP黑白名单，当没有IP黑白名单时填空数组
        # @type IpAllowDenys: Array
        # @param PacketFilters: 报文过滤，当没有报文过滤时填空数组
        # @type PacketFilters: Array
        # @param WaterPrint: 水印策略参数，当没有启用水印功能时填空数组，最多只能传一条水印策略（即数组大小不超过1）
        # @type WaterPrint: Array

        attr_accessor :Business, :DropOptions, :Name, :PortLimits, :IpAllowDenys, :PacketFilters, :WaterPrint

        def initialize(business=nil, dropoptions=nil, name=nil, portlimits=nil, ipallowdenys=nil, packetfilters=nil, waterprint=nil)
          @Business = business
          @DropOptions = dropoptions
          @Name = name
          @PortLimits = portlimits
          @IpAllowDenys = ipallowdenys
          @PacketFilters = packetfilters
          @WaterPrint = waterprint
        end

        def deserialize(params)
          @Business = params['Business']
          unless params['DropOptions'].nil?
            @DropOptions = []
            params['DropOptions'].each do |i|
              ddospolicydropoption_tmp = DDoSPolicyDropOption.new
              ddospolicydropoption_tmp.deserialize(i)
              @DropOptions << ddospolicydropoption_tmp
            end
          end
          @Name = params['Name']
          unless params['PortLimits'].nil?
            @PortLimits = []
            params['PortLimits'].each do |i|
              ddospolicyportlimit_tmp = DDoSPolicyPortLimit.new
              ddospolicyportlimit_tmp.deserialize(i)
              @PortLimits << ddospolicyportlimit_tmp
            end
          end
          unless params['IpAllowDenys'].nil?
            @IpAllowDenys = []
            params['IpAllowDenys'].each do |i|
              ipblackwhite_tmp = IpBlackWhite.new
              ipblackwhite_tmp.deserialize(i)
              @IpAllowDenys << ipblackwhite_tmp
            end
          end
          unless params['PacketFilters'].nil?
            @PacketFilters = []
            params['PacketFilters'].each do |i|
              ddospolicypacketfilter_tmp = DDoSPolicyPacketFilter.new
              ddospolicypacketfilter_tmp.deserialize(i)
              @PacketFilters << ddospolicypacketfilter_tmp
            end
          end
          unless params['WaterPrint'].nil?
            @WaterPrint = []
            params['WaterPrint'].each do |i|
              waterprintpolicy_tmp = WaterPrintPolicy.new
              waterprintpolicy_tmp.deserialize(i)
              @WaterPrint << waterprintpolicy_tmp
            end
          end
        end
      end

      # CreateDDoSPolicy返回参数结构体
      class CreateDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: String
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

      # CreateInstanceName请求参数结构体
      class CreateInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Name: 资源实例名称，长度不超过32个字符
        # @type Name: String

        attr_accessor :Business, :Id, :Name

        def initialize(business=nil, id=nil, name=nil)
          @Business = business
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # CreateInstanceName返回参数结构体
      class CreateInstanceNameResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL4HealthConfig请求参数结构体
      class CreateL4HealthConfigRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param HealthConfig: 四层健康检查配置数组
        # @type HealthConfig: Array

        attr_accessor :Business, :Id, :HealthConfig

        def initialize(business=nil, id=nil, healthconfig=nil)
          @Business = business
          @Id = id
          @HealthConfig = healthconfig
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['HealthConfig'].nil?
            @HealthConfig = []
            params['HealthConfig'].each do |i|
              l4healthconfig_tmp = L4HealthConfig.new
              l4healthconfig_tmp.deserialize(i)
              @HealthConfig << l4healthconfig_tmp
            end
          end
        end
      end

      # CreateL4HealthConfig返回参数结构体
      class CreateL4HealthConfigResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL4Rules请求参数结构体
      class CreateL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :Business, :Id, :Rules

        def initialize(business=nil, id=nil, rules=nil)
          @Business = business
          @Id = id
          @Rules = rules
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l4ruleentry_tmp = L4RuleEntry.new
              l4ruleentry_tmp.deserialize(i)
              @Rules << l4ruleentry_tmp
            end
          end
        end
      end

      # CreateL4Rules返回参数结构体
      class CreateL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL7CCRule请求参数结构体
      class CreateL7CCRuleRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Method: 操作码，取值[query(表示查询)，add(表示添加)，del(表示删除)]
        # @type Method: String
        # @param RuleId: 7层转发规则ID，例如：rule-0000001
        # @type RuleId: String
        # @param RuleConfig: 7层CC自定义规则参数，当操作码为query时，可以不用填写；当操作码为add或del时，必须填写，且数组长度只能为1；
        # @type RuleConfig: Array

        attr_accessor :Business, :Id, :Method, :RuleId, :RuleConfig

        def initialize(business=nil, id=nil, method=nil, ruleid=nil, ruleconfig=nil)
          @Business = business
          @Id = id
          @Method = method
          @RuleId = ruleid
          @RuleConfig = ruleconfig
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Method = params['Method']
          @RuleId = params['RuleId']
          unless params['RuleConfig'].nil?
            @RuleConfig = []
            params['RuleConfig'].each do |i|
              ccruleconfig_tmp = CCRuleConfig.new
              ccruleconfig_tmp.deserialize(i)
              @RuleConfig << ccruleconfig_tmp
            end
          end
        end
      end

      # CreateL7CCRule返回参数结构体
      class CreateL7CCRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleConfig: 7层CC自定义规则参数，当没有开启CC自定义规则时，返回空数组
        # @type RuleConfig: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleConfig, :RequestId

        def initialize(ruleconfig=nil, requestid=nil)
          @RuleConfig = ruleconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleConfig'].nil?
            @RuleConfig = []
            params['RuleConfig'].each do |i|
              ccruleconfig_tmp = CCRuleConfig.new
              ccruleconfig_tmp.deserialize(i)
              @RuleConfig << ccruleconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL7HealthConfig请求参数结构体
      class CreateL7HealthConfigRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param HealthConfig: 七层健康检查配置数组
        # @type HealthConfig: Array

        attr_accessor :Business, :Id, :HealthConfig

        def initialize(business=nil, id=nil, healthconfig=nil)
          @Business = business
          @Id = id
          @HealthConfig = healthconfig
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['HealthConfig'].nil?
            @HealthConfig = []
            params['HealthConfig'].each do |i|
              l7healthconfig_tmp = L7HealthConfig.new
              l7healthconfig_tmp.deserialize(i)
              @HealthConfig << l7healthconfig_tmp
            end
          end
        end
      end

      # CreateL7HealthConfig返回参数结构体
      class CreateL7HealthConfigResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL7RuleCert请求参数结构体
      class CreateL7RuleCertRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源实例ID，例如高防IP实例的ID，高防IP专业版实例的ID
        # @type Id: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param CertType: 证书类型，当为协议为HTTPS协议时必须填，取值[2(腾讯云托管证书)]
        # @type CertType: Integer
        # @param SSLId: 当证书来源为腾讯云托管证书时，此字段必须填写托管证书ID
        # @type SSLId: String
        # @param Cert: 当证书来源为自有证书时，此字段必须填写证书内容；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type Cert: String
        # @param PrivateKey: 当证书来源为自有证书时，此字段必须填写证书密钥；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type PrivateKey: String

        attr_accessor :Business, :Id, :RuleId, :CertType, :SSLId, :Cert, :PrivateKey

        def initialize(business=nil, id=nil, ruleid=nil, certtype=nil, sslid=nil, cert=nil, privatekey=nil)
          @Business = business
          @Id = id
          @RuleId = ruleid
          @CertType = certtype
          @SSLId = sslid
          @Cert = cert
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleId = params['RuleId']
          @CertType = params['CertType']
          @SSLId = params['SSLId']
          @Cert = params['Cert']
          @PrivateKey = params['PrivateKey']
        end
      end

      # CreateL7RuleCert返回参数结构体
      class CreateL7RuleCertResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL7Rules请求参数结构体
      class CreateL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :Business, :Id, :Rules

        def initialize(business=nil, id=nil, rules=nil)
          @Business = business
          @Id = id
          @Rules = rules
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l7ruleentry_tmp = L7RuleEntry.new
              l7ruleentry_tmp.deserialize(i)
              @Rules << l7ruleentry_tmp
            end
          end
        end
      end

      # CreateL7Rules返回参数结构体
      class CreateL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateL7RulesUpload请求参数结构体
      class CreateL7RulesUploadRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :Business, :Id, :Rules

        def initialize(business=nil, id=nil, rules=nil)
          @Business = business
          @Id = id
          @Rules = rules
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l7ruleentry_tmp = L7RuleEntry.new
              l7ruleentry_tmp.deserialize(i)
              @Rules << l7ruleentry_tmp
            end
          end
        end
      end

      # CreateL7RulesUpload返回参数结构体
      class CreateL7RulesUploadResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNetReturn请求参数结构体
      class CreateNetReturnRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String

        attr_accessor :Business, :Id

        def initialize(business=nil, id=nil)
          @Business = business
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
        end
      end

      # CreateNetReturn返回参数结构体
      class CreateNetReturnResponse < TencentCloud::Common::AbstractModel
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

      # CreateNewL4Rules请求参数结构体
      class CreateNewL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 高防产品代号：bgpip
        # @type Business: String
        # @param IdList: 添加规则资源列表
        # @type IdList: Array
        # @param VipList: 添加规则IP列表
        # @type VipList: Array
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :Business, :IdList, :VipList, :Rules

        def initialize(business=nil, idlist=nil, viplist=nil, rules=nil)
          @Business = business
          @IdList = idlist
          @VipList = viplist
          @Rules = rules
        end

        def deserialize(params)
          @Business = params['Business']
          @IdList = params['IdList']
          @VipList = params['VipList']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l4ruleentry_tmp = L4RuleEntry.new
              l4ruleentry_tmp.deserialize(i)
              @Rules << l4ruleentry_tmp
            end
          end
        end
      end

      # CreateNewL4Rules返回参数结构体
      class CreateNewL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNewL7Rules请求参数结构体
      class CreateNewL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param IdList: 资源ID列表
        # @type IdList: Array
        # @param VipList: 资源IP列表
        # @type VipList: Array
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :Business, :IdList, :VipList, :Rules

        def initialize(business=nil, idlist=nil, viplist=nil, rules=nil)
          @Business = business
          @IdList = idlist
          @VipList = viplist
          @Rules = rules
        end

        def deserialize(params)
          @Business = params['Business']
          @IdList = params['IdList']
          @VipList = params['VipList']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l7ruleentry_tmp = L7RuleEntry.new
              l7ruleentry_tmp.deserialize(i)
              @Rules << l7ruleentry_tmp
            end
          end
        end
      end

      # CreateNewL7Rules返回参数结构体
      class CreateNewL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNewL7RulesUpload请求参数结构体
      class CreateNewL7RulesUploadRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param IdList: 资源ID列表
        # @type IdList: Array
        # @param VipList: 资源IP列表
        # @type VipList: Array
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :Business, :IdList, :VipList, :Rules

        def initialize(business=nil, idlist=nil, viplist=nil, rules=nil)
          @Business = business
          @IdList = idlist
          @VipList = viplist
          @Rules = rules
        end

        def deserialize(params)
          @Business = params['Business']
          @IdList = params['IdList']
          @VipList = params['VipList']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l7ruleentry_tmp = L7RuleEntry.new
              l7ruleentry_tmp.deserialize(i)
              @Rules << l7ruleentry_tmp
            end
          end
        end
      end

      # CreateNewL7RulesUpload返回参数结构体
      class CreateNewL7RulesUploadResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUnblockIp请求参数结构体
      class CreateUnblockIpRequest < TencentCloud::Common::AbstractModel
        # @param Ip: IP
        # @type Ip: String
        # @param ActionType: 解封类型（user：自助解封；auto：自动解封； update：升级解封；bind：绑定高防包解封）
        # @type ActionType: String

        attr_accessor :Ip, :ActionType

        def initialize(ip=nil, actiontype=nil)
          @Ip = ip
          @ActionType = actiontype
        end

        def deserialize(params)
          @Ip = params['Ip']
          @ActionType = params['ActionType']
        end
      end

      # CreateUnblockIp返回参数结构体
      class CreateUnblockIpResponse < TencentCloud::Common::AbstractModel
        # @param Ip: IP
        # @type Ip: String
        # @param ActionType: 解封类型（user：自助解封；auto：自动解封； update：升级解封；bind：绑定高防包解封）
        # @type ActionType: String
        # @param UnblockTime: 解封时间（预计解封时间）
        # @type UnblockTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ip, :ActionType, :UnblockTime, :RequestId

        def initialize(ip=nil, actiontype=nil, unblocktime=nil, requestid=nil)
          @Ip = ip
          @ActionType = actiontype
          @UnblockTime = unblocktime
          @RequestId = requestid
        end

        def deserialize(params)
          @Ip = params['Ip']
          @ActionType = params['ActionType']
          @UnblockTime = params['UnblockTime']
          @RequestId = params['RequestId']
        end
      end

      # DDoS告警阈值
      class DDoSAlarmThreshold < TencentCloud::Common::AbstractModel
        # @param AlarmType: 告警阈值类型，1-入流量，2-清洗流量
        # @type AlarmType: Integer
        # @param AlarmThreshold: 告警阈值，大于0（目前排定的值）
        # @type AlarmThreshold: Integer

        attr_accessor :AlarmType, :AlarmThreshold

        def initialize(alarmtype=nil, alarmthreshold=nil)
          @AlarmType = alarmtype
          @AlarmThreshold = alarmthreshold
        end

        def deserialize(params)
          @AlarmType = params['AlarmType']
          @AlarmThreshold = params['AlarmThreshold']
        end
      end

      # 攻击源信息
      class DDoSAttackSourceRecord < TencentCloud::Common::AbstractModel
        # @param SrcIp: 攻击源ip
        # @type SrcIp: String
        # @param Province: 省份（国内有效，不包含港澳台）
        # @type Province: String
        # @param Nation: 国家
        # @type Nation: String
        # @param PacketSum: 累计攻击包量
        # @type PacketSum: Integer
        # @param PacketLen: 累计攻击流量
        # @type PacketLen: Integer

        attr_accessor :SrcIp, :Province, :Nation, :PacketSum, :PacketLen

        def initialize(srcip=nil, province=nil, nation=nil, packetsum=nil, packetlen=nil)
          @SrcIp = srcip
          @Province = province
          @Nation = nation
          @PacketSum = packetsum
          @PacketLen = packetlen
        end

        def deserialize(params)
          @SrcIp = params['SrcIp']
          @Province = params['Province']
          @Nation = params['Nation']
          @PacketSum = params['PacketSum']
          @PacketLen = params['PacketLen']
        end
      end

      # DDoS攻击事件记录
      class DDoSEventRecord < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Vip: 资源的IP
        # @type Vip: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String
        # @param Mbps: 攻击最大带宽
        # @type Mbps: Integer
        # @param Pps: 攻击最大包速率
        # @type Pps: Integer
        # @param AttackType: 攻击类型
        # @type AttackType: String
        # @param BlockFlag: 是否被封堵，取值[1（是），0（否），2（无效值）]
        # @type BlockFlag: Integer
        # @param OverLoad: 是否超过弹性防护峰值，取值取值[yes(是)，no(否)，空字符串（未知值）]
        # @type OverLoad: String
        # @param AttackStatus: 攻击状态，取值[0（攻击中）, 1（攻击结束）]
        # @type AttackStatus: Integer
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param EventId: 攻击事件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String

        attr_accessor :Business, :Id, :Vip, :StartTime, :EndTime, :Mbps, :Pps, :AttackType, :BlockFlag, :OverLoad, :AttackStatus, :ResourceName, :EventId

        def initialize(business=nil, id=nil, vip=nil, starttime=nil, endtime=nil, mbps=nil, pps=nil, attacktype=nil, blockflag=nil, overload=nil, attackstatus=nil, resourcename=nil, eventid=nil)
          @Business = business
          @Id = id
          @Vip = vip
          @StartTime = starttime
          @EndTime = endtime
          @Mbps = mbps
          @Pps = pps
          @AttackType = attacktype
          @BlockFlag = blockflag
          @OverLoad = overload
          @AttackStatus = attackstatus
          @ResourceName = resourcename
          @EventId = eventid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Vip = params['Vip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mbps = params['Mbps']
          @Pps = params['Pps']
          @AttackType = params['AttackType']
          @BlockFlag = params['BlockFlag']
          @OverLoad = params['OverLoad']
          @AttackStatus = params['AttackStatus']
          @ResourceName = params['ResourceName']
          @EventId = params['EventId']
        end
      end

      # DDoS高级策略的禁用协议选项
      class DDoSPolicyDropOption < TencentCloud::Common::AbstractModel
        # @param DropTcp: 禁用TCP协议，取值范围[0,1]
        # @type DropTcp: Integer
        # @param DropUdp: 禁用UDP协议，取值范围[0,1]
        # @type DropUdp: Integer
        # @param DropIcmp: 禁用ICMP协议，取值范围[0,1]
        # @type DropIcmp: Integer
        # @param DropOther: 禁用其他协议，取值范围[0,1]
        # @type DropOther: Integer
        # @param DropAbroad: 拒绝海外流量，取值范围[0,1]
        # @type DropAbroad: Integer
        # @param CheckSyncConn: 空连接防护，取值范围[0,1]
        # @type CheckSyncConn: Integer
        # @param SdNewLimit: 基于来源IP及目的IP的新建连接抑制，取值范围[0,4294967295]
        # @type SdNewLimit: Integer
        # @param DstNewLimit: 基于目的IP的新建连接抑制，取值范围[0,4294967295]
        # @type DstNewLimit: Integer
        # @param SdConnLimit: 基于来源IP及目的IP的并发连接抑制，取值范围[0,4294967295]
        # @type SdConnLimit: Integer
        # @param DstConnLimit: 基于目的IP的并发连接抑制，取值范围[0,4294967295]
        # @type DstConnLimit: Integer
        # @param BadConnThreshold: 基于连接抑制触发阈值，取值范围[0,4294967295]
        # @type BadConnThreshold: Integer
        # @param NullConnEnable: 异常连接检测条件，空连接防护开关，，取值范围[0,1]
        # @type NullConnEnable: Integer
        # @param ConnTimeout: 异常连接检测条件，连接超时，，取值范围[0,65535]
        # @type ConnTimeout: Integer
        # @param SynRate: 异常连接检测条件，syn占比ack百分比，，取值范围[0,100]
        # @type SynRate: Integer
        # @param SynLimit: 异常连接检测条件，syn阈值，取值范围[0,100]
        # @type SynLimit: Integer
        # @param DTcpMbpsLimit: tcp限速，取值范围[0,4294967295]
        # @type DTcpMbpsLimit: Integer
        # @param DUdpMbpsLimit: udp限速，取值范围[0,4294967295]
        # @type DUdpMbpsLimit: Integer
        # @param DIcmpMbpsLimit: icmp限速，取值范围[0,4294967295]
        # @type DIcmpMbpsLimit: Integer
        # @param DOtherMbpsLimit: other协议限速，取值范围[0,4294967295]
        # @type DOtherMbpsLimit: Integer

        attr_accessor :DropTcp, :DropUdp, :DropIcmp, :DropOther, :DropAbroad, :CheckSyncConn, :SdNewLimit, :DstNewLimit, :SdConnLimit, :DstConnLimit, :BadConnThreshold, :NullConnEnable, :ConnTimeout, :SynRate, :SynLimit, :DTcpMbpsLimit, :DUdpMbpsLimit, :DIcmpMbpsLimit, :DOtherMbpsLimit

        def initialize(droptcp=nil, dropudp=nil, dropicmp=nil, dropother=nil, dropabroad=nil, checksyncconn=nil, sdnewlimit=nil, dstnewlimit=nil, sdconnlimit=nil, dstconnlimit=nil, badconnthreshold=nil, nullconnenable=nil, conntimeout=nil, synrate=nil, synlimit=nil, dtcpmbpslimit=nil, dudpmbpslimit=nil, dicmpmbpslimit=nil, dothermbpslimit=nil)
          @DropTcp = droptcp
          @DropUdp = dropudp
          @DropIcmp = dropicmp
          @DropOther = dropother
          @DropAbroad = dropabroad
          @CheckSyncConn = checksyncconn
          @SdNewLimit = sdnewlimit
          @DstNewLimit = dstnewlimit
          @SdConnLimit = sdconnlimit
          @DstConnLimit = dstconnlimit
          @BadConnThreshold = badconnthreshold
          @NullConnEnable = nullconnenable
          @ConnTimeout = conntimeout
          @SynRate = synrate
          @SynLimit = synlimit
          @DTcpMbpsLimit = dtcpmbpslimit
          @DUdpMbpsLimit = dudpmbpslimit
          @DIcmpMbpsLimit = dicmpmbpslimit
          @DOtherMbpsLimit = dothermbpslimit
        end

        def deserialize(params)
          @DropTcp = params['DropTcp']
          @DropUdp = params['DropUdp']
          @DropIcmp = params['DropIcmp']
          @DropOther = params['DropOther']
          @DropAbroad = params['DropAbroad']
          @CheckSyncConn = params['CheckSyncConn']
          @SdNewLimit = params['SdNewLimit']
          @DstNewLimit = params['DstNewLimit']
          @SdConnLimit = params['SdConnLimit']
          @DstConnLimit = params['DstConnLimit']
          @BadConnThreshold = params['BadConnThreshold']
          @NullConnEnable = params['NullConnEnable']
          @ConnTimeout = params['ConnTimeout']
          @SynRate = params['SynRate']
          @SynLimit = params['SynLimit']
          @DTcpMbpsLimit = params['DTcpMbpsLimit']
          @DUdpMbpsLimit = params['DUdpMbpsLimit']
          @DIcmpMbpsLimit = params['DIcmpMbpsLimit']
          @DOtherMbpsLimit = params['DOtherMbpsLimit']
        end
      end

      # DDoS高级策略的报文过滤项
      class DDoSPolicyPacketFilter < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议，取值范围[tcp,udp,icmp,all]
        # @type Protocol: String
        # @param SportStart: 开始源端口，取值范围[0,65535]
        # @type SportStart: Integer
        # @param SportEnd: 结束源端口，取值范围[0,65535]
        # @type SportEnd: Integer
        # @param DportStart: 开始目的端口，取值范围[0,65535]
        # @type DportStart: Integer
        # @param DportEnd: 结束目的端口，取值范围[0,65535]
        # @type DportEnd: Integer
        # @param PktlenMin: 最小包长，取值范围[0,1500]
        # @type PktlenMin: Integer
        # @param PktlenMax: 最大包长，取值范围[0,1500]
        # @type PktlenMax: Integer
        # @param MatchBegin: 是否检测载荷，取值范围[
        # begin_l3(IP头)
        # begin_l4(TCP头)
        # begin_l5(载荷)
        # no_match(不检测)
        # ]
        # @type MatchBegin: String
        # @param MatchType: 是否是正则表达式，取值范围[sunday(表示关键字),pcre(表示正则表达式)]
        # @type MatchType: String
        # @param Str: 关键字或正则表达式
        # @type Str: String
        # @param Depth: 检测深度，取值范围[0,1500]
        # @type Depth: Integer
        # @param Offset: 检测偏移量，取值范围[0,1500]
        # @type Offset: Integer
        # @param IsNot: 是否包括，取值范围[0(表示不包含),1(表示包含)]
        # @type IsNot: Integer
        # @param Action: 策略动作，取值范围[drop，drop_black，drop_rst，drop_black_rst，transmit]
        # @type Action: String

        attr_accessor :Protocol, :SportStart, :SportEnd, :DportStart, :DportEnd, :PktlenMin, :PktlenMax, :MatchBegin, :MatchType, :Str, :Depth, :Offset, :IsNot, :Action

        def initialize(protocol=nil, sportstart=nil, sportend=nil, dportstart=nil, dportend=nil, pktlenmin=nil, pktlenmax=nil, matchbegin=nil, matchtype=nil, str=nil, depth=nil, offset=nil, isnot=nil, action=nil)
          @Protocol = protocol
          @SportStart = sportstart
          @SportEnd = sportend
          @DportStart = dportstart
          @DportEnd = dportend
          @PktlenMin = pktlenmin
          @PktlenMax = pktlenmax
          @MatchBegin = matchbegin
          @MatchType = matchtype
          @Str = str
          @Depth = depth
          @Offset = offset
          @IsNot = isnot
          @Action = action
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @SportStart = params['SportStart']
          @SportEnd = params['SportEnd']
          @DportStart = params['DportStart']
          @DportEnd = params['DportEnd']
          @PktlenMin = params['PktlenMin']
          @PktlenMax = params['PktlenMax']
          @MatchBegin = params['MatchBegin']
          @MatchType = params['MatchType']
          @Str = params['Str']
          @Depth = params['Depth']
          @Offset = params['Offset']
          @IsNot = params['IsNot']
          @Action = params['Action']
        end
      end

      # DDoS高级策略的禁用端口
      class DDoSPolicyPortLimit < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议，取值范围[tcp,udp,all]
        # @type Protocol: String
        # @param DPortStart: 开始目的端口，取值范围[0,65535]
        # @type DPortStart: Integer
        # @param DPortEnd: 结束目的端口，取值范围[0,65535]，要求大于等于开始目的端口
        # @type DPortEnd: Integer
        # @param SPortStart: 开始源端口，取值范围[0,65535]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPortStart: Integer
        # @param SPortEnd: 结束源端口，取值范围[0,65535]，要求大于等于开始源端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPortEnd: Integer
        # @param Action: 执行动作，取值[drop(丢弃) ，transmit(转发)]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Kind: 禁用端口类型，取值[0（目的端口范围禁用）， 1（源端口范围禁用）， 2（目的和源端口范围同时禁用）]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: Integer

        attr_accessor :Protocol, :DPortStart, :DPortEnd, :SPortStart, :SPortEnd, :Action, :Kind

        def initialize(protocol=nil, dportstart=nil, dportend=nil, sportstart=nil, sportend=nil, action=nil, kind=nil)
          @Protocol = protocol
          @DPortStart = dportstart
          @DPortEnd = dportend
          @SPortStart = sportstart
          @SPortEnd = sportend
          @Action = action
          @Kind = kind
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @DPortStart = params['DPortStart']
          @DPortEnd = params['DPortEnd']
          @SPortStart = params['SPortStart']
          @SPortEnd = params['SPortEnd']
          @Action = params['Action']
          @Kind = params['Kind']
        end
      end

      # DDoS高级策略
      class DDosPolicy < TencentCloud::Common::AbstractModel
        # @param Resources: 策略绑定的资源
        # @type Resources: Array
        # @param DropOptions: 禁用协议
        # @type DropOptions: :class:`Tencentcloud::Dayu.v20180709.models.DDoSPolicyDropOption`
        # @param PortLimits: 禁用端口
        # @type PortLimits: Array
        # @param PacketFilters: 报文过滤
        # @type PacketFilters: Array
        # @param IpBlackWhiteLists: 黑白IP名单
        # @type IpBlackWhiteLists: Array
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param CreateTime: 策略创建时间
        # @type CreateTime: String
        # @param WaterPrint: 水印策略参数，最多只有一个，当没有水印策略时数组为空
        # @type WaterPrint: Array
        # @param WaterKey: 水印密钥，最多只有2个，当没有水印策略时数组为空
        # @type WaterKey: Array
        # @param BoundResources: 策略绑定的资源实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundResources: Array
        # @param SceneId: 策略所属的策略场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneId: String

        attr_accessor :Resources, :DropOptions, :PortLimits, :PacketFilters, :IpBlackWhiteLists, :PolicyId, :PolicyName, :CreateTime, :WaterPrint, :WaterKey, :BoundResources, :SceneId

        def initialize(resources=nil, dropoptions=nil, portlimits=nil, packetfilters=nil, ipblackwhitelists=nil, policyid=nil, policyname=nil, createtime=nil, waterprint=nil, waterkey=nil, boundresources=nil, sceneid=nil)
          @Resources = resources
          @DropOptions = dropoptions
          @PortLimits = portlimits
          @PacketFilters = packetfilters
          @IpBlackWhiteLists = ipblackwhitelists
          @PolicyId = policyid
          @PolicyName = policyname
          @CreateTime = createtime
          @WaterPrint = waterprint
          @WaterKey = waterkey
          @BoundResources = boundresources
          @SceneId = sceneid
        end

        def deserialize(params)
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourceip_tmp = ResourceIp.new
              resourceip_tmp.deserialize(i)
              @Resources << resourceip_tmp
            end
          end
          unless params['DropOptions'].nil?
            @DropOptions = DDoSPolicyDropOption.new
            @DropOptions.deserialize(params['DropOptions'])
          end
          unless params['PortLimits'].nil?
            @PortLimits = []
            params['PortLimits'].each do |i|
              ddospolicyportlimit_tmp = DDoSPolicyPortLimit.new
              ddospolicyportlimit_tmp.deserialize(i)
              @PortLimits << ddospolicyportlimit_tmp
            end
          end
          unless params['PacketFilters'].nil?
            @PacketFilters = []
            params['PacketFilters'].each do |i|
              ddospolicypacketfilter_tmp = DDoSPolicyPacketFilter.new
              ddospolicypacketfilter_tmp.deserialize(i)
              @PacketFilters << ddospolicypacketfilter_tmp
            end
          end
          unless params['IpBlackWhiteLists'].nil?
            @IpBlackWhiteLists = []
            params['IpBlackWhiteLists'].each do |i|
              ipblackwhite_tmp = IpBlackWhite.new
              ipblackwhite_tmp.deserialize(i)
              @IpBlackWhiteLists << ipblackwhite_tmp
            end
          end
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @CreateTime = params['CreateTime']
          unless params['WaterPrint'].nil?
            @WaterPrint = []
            params['WaterPrint'].each do |i|
              waterprintpolicy_tmp = WaterPrintPolicy.new
              waterprintpolicy_tmp.deserialize(i)
              @WaterPrint << waterprintpolicy_tmp
            end
          end
          unless params['WaterKey'].nil?
            @WaterKey = []
            params['WaterKey'].each do |i|
              waterprintkey_tmp = WaterPrintKey.new
              waterprintkey_tmp.deserialize(i)
              @WaterKey << waterprintkey_tmp
            end
          end
          @BoundResources = params['BoundResources']
          @SceneId = params['SceneId']
        end
      end

      # DeleteCCFrequencyRules请求参数结构体
      class DeleteCCFrequencyRulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param CCFrequencyRuleId: CC防护的访问频率控制规则ID
        # @type CCFrequencyRuleId: String

        attr_accessor :Business, :CCFrequencyRuleId

        def initialize(business=nil, ccfrequencyruleid=nil)
          @Business = business
          @CCFrequencyRuleId = ccfrequencyruleid
        end

        def deserialize(params)
          @Business = params['Business']
          @CCFrequencyRuleId = params['CCFrequencyRuleId']
        end
      end

      # DeleteCCFrequencyRules返回参数结构体
      class DeleteCCFrequencyRulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteCCSelfDefinePolicy请求参数结构体
      class DeleteCCSelfDefinePolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param SetId: 策略ID
        # @type SetId: String

        attr_accessor :Business, :Id, :SetId

        def initialize(business=nil, id=nil, setid=nil)
          @Business = business
          @Id = id
          @SetId = setid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @SetId = params['SetId']
        end
      end

      # DeleteCCSelfDefinePolicy返回参数结构体
      class DeleteCCSelfDefinePolicyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteDDoSPolicyCase请求参数结构体
      class DeleteDDoSPolicyCaseRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param SceneId: 策略场景ID
        # @type SceneId: String

        attr_accessor :Business, :SceneId

        def initialize(business=nil, sceneid=nil)
          @Business = business
          @SceneId = sceneid
        end

        def deserialize(params)
          @Business = params['Business']
          @SceneId = params['SceneId']
        end
      end

      # DeleteDDoSPolicyCase返回参数结构体
      class DeleteDDoSPolicyCaseResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteDDoSPolicy请求参数结构体
      class DeleteDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String

        attr_accessor :Business, :PolicyId

        def initialize(business=nil, policyid=nil)
          @Business = business
          @PolicyId = policyid
        end

        def deserialize(params)
          @Business = params['Business']
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteDDoSPolicy返回参数结构体
      class DeleteDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteL4Rules请求参数结构体
      class DeleteL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleIdList: 规则ID列表
        # @type RuleIdList: Array

        attr_accessor :Business, :Id, :RuleIdList

        def initialize(business=nil, id=nil, ruleidlist=nil)
          @Business = business
          @Id = id
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DeleteL4Rules返回参数结构体
      class DeleteL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteL7Rules请求参数结构体
      class DeleteL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleIdList: 规则ID列表
        # @type RuleIdList: Array

        attr_accessor :Business, :Id, :RuleIdList

        def initialize(business=nil, id=nil, ruleidlist=nil)
          @Business = business
          @Id = id
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DeleteL7Rules返回参数结构体
      class DeleteL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteNewL4Rules请求参数结构体
      class DeleteNewL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Rule: 删除接口结构体
        # @type Rule: Array

        attr_accessor :Business, :Rule

        def initialize(business=nil, rule=nil)
          @Business = business
          @Rule = rule
        end

        def deserialize(params)
          @Business = params['Business']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              l4delrule_tmp = L4DelRule.new
              l4delrule_tmp.deserialize(i)
              @Rule << l4delrule_tmp
            end
          end
        end
      end

      # DeleteNewL4Rules返回参数结构体
      class DeleteNewL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteNewL7Rules请求参数结构体
      class DeleteNewL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP)
        # @type Business: String
        # @param Rule: 删除规则列表
        # @type Rule: Array

        attr_accessor :Business, :Rule

        def initialize(business=nil, rule=nil)
          @Business = business
          @Rule = rule
        end

        def deserialize(params)
          @Business = params['Business']
          unless params['Rule'].nil?
            @Rule = []
            params['Rule'].each do |i|
              l4delrule_tmp = L4DelRule.new
              l4delrule_tmp.deserialize(i)
              @Rule << l4delrule_tmp
            end
          end
        end
      end

      # DeleteNewL7Rules返回参数结构体
      class DeleteNewL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeActionLog请求参数结构体
      class DescribeActionLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Filter: 搜索值，只支持资源ID或用户UIN
        # @type Filter: String
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :Business, :Filter, :Limit, :Offset

        def initialize(starttime=nil, endtime=nil, business=nil, filter=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Business = business
          @Filter = filter
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Business = params['Business']
          @Filter = params['Filter']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeActionLog返回参数结构体
      class DescribeActionLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Data: 记录数组
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
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @Data << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBGPIPL7RuleMaxCnt请求参数结构体
      class DescribeBGPIPL7RuleMaxCntRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String

        attr_accessor :Business, :Id

        def initialize(business=nil, id=nil)
          @Business = business
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
        end
      end

      # DescribeBGPIPL7RuleMaxCnt返回参数结构体
      class DescribeBGPIPL7RuleMaxCntResponse < TencentCloud::Common::AbstractModel
        # @param Count: 高防IP最多可添加的7层规则数量
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId

        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaradData请求参数结构体
      class DescribeBaradDataRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param MetricName: 指标名，取值：
        # connum表示TCP活跃连接数；
        # new_conn表示新建TCP连接数；
        # inactive_conn表示非活跃连接数;
        # intraffic表示入流量；
        # outtraffic表示出流量；
        # alltraffic表示出流量和入流量之和；
        # inpkg表示入包速率；
        # outpkg表示出包速率；
        # @type MetricName: String
        # @param Period: 统计时间粒度，单位秒（300表示5分钟；3600表示小时；86400表示天）
        # @type Period: Integer
        # @param StartTime: 统计开始时间，秒部分保持为0，分钟部分为5的倍数
        # @type StartTime: String
        # @param EndTime: 统计结束时间，秒部分保持为0，分钟部分为5的倍数
        # @type EndTime: String
        # @param Statistics: 统计方式，取值：
        # max表示最大值；
        # min表示最小值；
        # avg表示均值；
        # @type Statistics: String
        # @param ProtocolPort: 协议端口数组
        # @type ProtocolPort: Array
        # @param Ip: 资源实例下的IP，只有当Business=net(高防IP专业版)时才必须填写资源的一个IP（因为高防IP专业版资源实例有多个IP，才需要指定）；
        # @type Ip: String

        attr_accessor :Business, :Id, :MetricName, :Period, :StartTime, :EndTime, :Statistics, :ProtocolPort, :Ip

        def initialize(business=nil, id=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, statistics=nil, protocolport=nil, ip=nil)
          @Business = business
          @Id = id
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Statistics = statistics
          @ProtocolPort = protocolport
          @Ip = ip
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Statistics = params['Statistics']
          unless params['ProtocolPort'].nil?
            @ProtocolPort = []
            params['ProtocolPort'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtocolPort << protocolport_tmp
            end
          end
          @Ip = params['Ip']
        end
      end

      # DescribeBaradData返回参数结构体
      class DescribeBaradDataResponse < TencentCloud::Common::AbstractModel
        # @param DataList: 返回指标的值
        # @type DataList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataList, :RequestId

        def initialize(datalist=nil, requestid=nil)
          @DataList = datalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              baraddata_tmp = BaradData.new
              baraddata_tmp.deserialize(i)
              @DataList << baraddata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBasicCCThreshold请求参数结构体
      class DescribeBasicCCThresholdRequest < TencentCloud::Common::AbstractModel
        # @param BasicIp: 查询的IP地址，取值如：1.1.1.1
        # @type BasicIp: String
        # @param BasicRegion: 查询IP所属地域，取值如：gz、bj、sh、hk等地域缩写
        # @type BasicRegion: String
        # @param BasicBizType: 专区类型，取值如：公有云专区：public，黑石专区：bm, NAT服务器专区：nat，互联网通道：channel。
        # @type BasicBizType: String
        # @param BasicDeviceType: 设备类型，取值如：服务器：cvm，公有云负载均衡：clb，黑石负载均衡：lb，NAT服务器：nat，互联网通道：channel.
        # @type BasicDeviceType: String
        # @param BasicIpInstance: 可选，IPInstance Nat 网关（如果查询的设备类型是NAT服务器，需要传此参数，通过nat资源查询接口获取）
        # @type BasicIpInstance: String
        # @param BasicIspCode: 可选，运营商线路（如果查询的设备类型是NAT服务器，需要传此参数为5）
        # @type BasicIspCode: Integer

        attr_accessor :BasicIp, :BasicRegion, :BasicBizType, :BasicDeviceType, :BasicIpInstance, :BasicIspCode

        def initialize(basicip=nil, basicregion=nil, basicbiztype=nil, basicdevicetype=nil, basicipinstance=nil, basicispcode=nil)
          @BasicIp = basicip
          @BasicRegion = basicregion
          @BasicBizType = basicbiztype
          @BasicDeviceType = basicdevicetype
          @BasicIpInstance = basicipinstance
          @BasicIspCode = basicispcode
        end

        def deserialize(params)
          @BasicIp = params['BasicIp']
          @BasicRegion = params['BasicRegion']
          @BasicBizType = params['BasicBizType']
          @BasicDeviceType = params['BasicDeviceType']
          @BasicIpInstance = params['BasicIpInstance']
          @BasicIspCode = params['BasicIspCode']
        end
      end

      # DescribeBasicCCThreshold返回参数结构体
      class DescribeBasicCCThresholdResponse < TencentCloud::Common::AbstractModel
        # @param CCEnable: CC启动开关（0:关闭；1:开启）
        # @type CCEnable: Integer
        # @param CCThreshold: CC防护阈值
        # @type CCThreshold: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CCEnable, :CCThreshold, :RequestId

        def initialize(ccenable=nil, ccthreshold=nil, requestid=nil)
          @CCEnable = ccenable
          @CCThreshold = ccthreshold
          @RequestId = requestid
        end

        def deserialize(params)
          @CCEnable = params['CCEnable']
          @CCThreshold = params['CCThreshold']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBasicDeviceThreshold请求参数结构体
      class DescribeBasicDeviceThresholdRequest < TencentCloud::Common::AbstractModel
        # @param BasicIp: 查询的IP地址，取值如：1.1.1.1
        # @type BasicIp: String
        # @param BasicRegion: 查询IP所属地域，取值如：gz、bj、sh、hk等地域缩写
        # @type BasicRegion: String
        # @param BasicBizType: 专区类型，取值如：公有云专区：public，黑石专区：bm, NAT服务器专区：nat，互联网通道：channel。
        # @type BasicBizType: String
        # @param BasicDeviceType: 设备类型，取值如：服务器：cvm，公有云负载均衡：clb，黑石负载均衡：lb，NAT服务器：nat，互联网通道：channel.
        # @type BasicDeviceType: String
        # @param BasicCheckFlag: 有效性检查，取值为1
        # @type BasicCheckFlag: Integer
        # @param BasicIpInstance: 可选，IPInstance Nat 网关（如果查询的设备类型是NAT服务器，需要传此参数，通过nat资源查询接口获取）
        # @type BasicIpInstance: String
        # @param BasicIspCode: 可选，运营商线路（如果查询的设备类型是NAT服务器，需要传此参数为5）
        # @type BasicIspCode: Integer

        attr_accessor :BasicIp, :BasicRegion, :BasicBizType, :BasicDeviceType, :BasicCheckFlag, :BasicIpInstance, :BasicIspCode

        def initialize(basicip=nil, basicregion=nil, basicbiztype=nil, basicdevicetype=nil, basiccheckflag=nil, basicipinstance=nil, basicispcode=nil)
          @BasicIp = basicip
          @BasicRegion = basicregion
          @BasicBizType = basicbiztype
          @BasicDeviceType = basicdevicetype
          @BasicCheckFlag = basiccheckflag
          @BasicIpInstance = basicipinstance
          @BasicIspCode = basicispcode
        end

        def deserialize(params)
          @BasicIp = params['BasicIp']
          @BasicRegion = params['BasicRegion']
          @BasicBizType = params['BasicBizType']
          @BasicDeviceType = params['BasicDeviceType']
          @BasicCheckFlag = params['BasicCheckFlag']
          @BasicIpInstance = params['BasicIpInstance']
          @BasicIspCode = params['BasicIspCode']
        end
      end

      # DescribeBasicDeviceThreshold返回参数结构体
      class DescribeBasicDeviceThresholdResponse < TencentCloud::Common::AbstractModel
        # @param Threshold: 返回黑洞封堵值
        # @type Threshold: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Threshold, :RequestId

        def initialize(threshold=nil, requestid=nil)
          @Threshold = threshold
          @RequestId = requestid
        end

        def deserialize(params)
          @Threshold = params['Threshold']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBizHttpStatus请求参数结构体
      class DescribeBizHttpStatusRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Id: 资源Id
        # @type Id: String
        # @param Period: 统计周期，可取值300，1800，3600， 21600，86400，单位秒
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Statistics: 统计方式，仅支持sum
        # @type Statistics: String
        # @param ProtoInfo: 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        # @type ProtoInfo: Array
        # @param Domain: 特定域名查询
        # @type Domain: String

        attr_accessor :Business, :Id, :Period, :StartTime, :EndTime, :Statistics, :ProtoInfo, :Domain

        def initialize(business=nil, id=nil, period=nil, starttime=nil, endtime=nil, statistics=nil, protoinfo=nil, domain=nil)
          @Business = business
          @Id = id
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Statistics = statistics
          @ProtoInfo = protoinfo
          @Domain = domain
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Statistics = params['Statistics']
          unless params['ProtoInfo'].nil?
            @ProtoInfo = []
            params['ProtoInfo'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtoInfo << protocolport_tmp
            end
          end
          @Domain = params['Domain']
        end
      end

      # DescribeBizHttpStatus返回参数结构体
      class DescribeBizHttpStatusResponse < TencentCloud::Common::AbstractModel
        # @param HttpStatusMap: 业务流量http状态码统计数据
        # @type HttpStatusMap: :class:`Tencentcloud::Dayu.v20180709.models.HttpStatusMap`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HttpStatusMap, :RequestId

        def initialize(httpstatusmap=nil, requestid=nil)
          @HttpStatusMap = httpstatusmap
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HttpStatusMap'].nil?
            @HttpStatusMap = HttpStatusMap.new
            @HttpStatusMap.deserialize(params['HttpStatusMap'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBizTrend请求参数结构体
      class DescribeBizTrendRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param Period: 统计周期，可取值300，1800，3600，21600，86400，单位秒
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Statistics: 统计方式，可取值max, min, avg, sum, 如统计纬度是流量速率或包量速率，仅可取值max
        # @type Statistics: String
        # @param MetricName: 统计纬度，可取值connum, new_conn, inactive_conn, intraffic, outtraffic, inpkg, outpkg, qps
        # @type MetricName: String
        # @param ProtoInfo: 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        # @type ProtoInfo: Array
        # @param Domain: 统计纬度为qps时，可选特定域名查询
        # @type Domain: String

        attr_accessor :Business, :Id, :Period, :StartTime, :EndTime, :Statistics, :MetricName, :ProtoInfo, :Domain

        def initialize(business=nil, id=nil, period=nil, starttime=nil, endtime=nil, statistics=nil, metricname=nil, protoinfo=nil, domain=nil)
          @Business = business
          @Id = id
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Statistics = statistics
          @MetricName = metricname
          @ProtoInfo = protoinfo
          @Domain = domain
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Statistics = params['Statistics']
          @MetricName = params['MetricName']
          unless params['ProtoInfo'].nil?
            @ProtoInfo = []
            params['ProtoInfo'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtoInfo << protocolport_tmp
            end
          end
          @Domain = params['Domain']
        end
      end

      # DescribeBizTrend返回参数结构体
      class DescribeBizTrendResponse < TencentCloud::Common::AbstractModel
        # @param DataList: 曲线图各个时间点的值
        # @type DataList: Array
        # @param MetricName: 统计纬度
        # @type MetricName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataList, :MetricName, :RequestId

        def initialize(datalist=nil, metricname=nil, requestid=nil)
          @DataList = datalist
          @MetricName = metricname
          @RequestId = requestid
        end

        def deserialize(params)
          @DataList = params['DataList']
          @MetricName = params['MetricName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCAlarmThreshold请求参数结构体
      class DescribeCCAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        # @type Business: String
        # @param RsId: 资源ID,字符串类型
        # @type RsId: String

        attr_accessor :Business, :RsId

        def initialize(business=nil, rsid=nil)
          @Business = business
          @RsId = rsid
        end

        def deserialize(params)
          @Business = params['Business']
          @RsId = params['RsId']
        end
      end

      # DescribeCCAlarmThreshold返回参数结构体
      class DescribeCCAlarmThresholdResponse < TencentCloud::Common::AbstractModel
        # @param CCAlarmThreshold: CC告警阈值
        # @type CCAlarmThreshold: :class:`Tencentcloud::Dayu.v20180709.models.CCAlarmThreshold`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CCAlarmThreshold, :RequestId

        def initialize(ccalarmthreshold=nil, requestid=nil)
          @CCAlarmThreshold = ccalarmthreshold
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CCAlarmThreshold'].nil?
            @CCAlarmThreshold = CCAlarmThreshold.new
            @CCAlarmThreshold.deserialize(params['CCAlarmThreshold'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCEvList请求参数结构体
      class DescribeCCEvListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param IpList: 资源实例的IP，当business不为basic时，如果IpList不为空则Id也必须不能为空；
        # @type IpList: Array
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :Business, :StartTime, :EndTime, :Id, :IpList, :Limit, :Offset

        def initialize(business=nil, starttime=nil, endtime=nil, id=nil, iplist=nil, limit=nil, offset=nil)
          @Business = business
          @StartTime = starttime
          @EndTime = endtime
          @Id = id
          @IpList = iplist
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Business = params['Business']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Id = params['Id']
          @IpList = params['IpList']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCCEvList返回参数结构体
      class DescribeCCEvListResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（shield表示棋牌盾；bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param IpList: 资源实例的IP列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpList: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Data: CC攻击事件列表
        # @type Data: Array
        # @param Total: 总记录数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :IpList, :StartTime, :EndTime, :Data, :Total, :RequestId

        def initialize(business=nil, id=nil, iplist=nil, starttime=nil, endtime=nil, data=nil, total=nil, requestid=nil)
          @Business = business
          @Id = id
          @IpList = iplist
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @IpList = params['IpList']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              cceventrecord_tmp = CCEventRecord.new
              cceventrecord_tmp.deserialize(i)
              @Data << cceventrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCFrequencyRules请求参数结构体
      class DescribeCCFrequencyRulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleId: 7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）；当填写时表示获取转发规则的访问频率控制规则；
        # @type RuleId: String

        attr_accessor :Business, :Id, :RuleId

        def initialize(business=nil, id=nil, ruleid=nil)
          @Business = business
          @Id = id
          @RuleId = ruleid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleId = params['RuleId']
        end
      end

      # DescribeCCFrequencyRules返回参数结构体
      class DescribeCCFrequencyRulesResponse < TencentCloud::Common::AbstractModel
        # @param CCFrequencyRuleList: 访问频率控制规则列表
        # @type CCFrequencyRuleList: Array
        # @param CCFrequencyRuleStatus: 访问频率控制规则开关状态，取值[on(开启)，off(关闭)]
        # @type CCFrequencyRuleStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CCFrequencyRuleList, :CCFrequencyRuleStatus, :RequestId

        def initialize(ccfrequencyrulelist=nil, ccfrequencyrulestatus=nil, requestid=nil)
          @CCFrequencyRuleList = ccfrequencyrulelist
          @CCFrequencyRuleStatus = ccfrequencyrulestatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CCFrequencyRuleList'].nil?
            @CCFrequencyRuleList = []
            params['CCFrequencyRuleList'].each do |i|
              ccfrequencyrule_tmp = CCFrequencyRule.new
              ccfrequencyrule_tmp.deserialize(i)
              @CCFrequencyRuleList << ccfrequencyrule_tmp
            end
          end
          @CCFrequencyRuleStatus = params['CCFrequencyRuleStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCIpAllowDeny请求参数结构体
      class DescribeCCIpAllowDenyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Type: 黑或白名单，取值[white(白名单)，black(黑名单)]
        # 注意：此数组只能有一个值，不能同时获取黑名单和白名单
        # @type Type: Array
        # @param Limit: 分页参数
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Protocol: 可选，代表HTTP协议或HTTPS协议的CC防护，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；
        # @type Protocol: String

        attr_accessor :Business, :Id, :Type, :Limit, :Offset, :Protocol

        def initialize(business=nil, id=nil, type=nil, limit=nil, offset=nil, protocol=nil)
          @Business = business
          @Id = id
          @Type = type
          @Limit = limit
          @Offset = offset
          @Protocol = protocol
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Type = params['Type']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Protocol = params['Protocol']
        end
      end

      # DescribeCCIpAllowDeny返回参数结构体
      class DescribeCCIpAllowDenyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 该字段被RecordList字段替代了，请不要使用
        # @type Data: Array
        # @param Total: 记录数
        # @type Total: Integer
        # @param RecordList: 返回黑/白名单的记录，
        # "Key":"ip"时，"Value":值表示ip;
        # "Key":"domain"时， "Value":值表示域名;
        # "Key":"type"时，"Value":值表示黑白名单类型(white为白名单，block为黑名单);
        # "Key":"protocol"时，"Value":值表示CC防护的协议(http或https);
        # @type RecordList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RecordList, :RequestId

        def initialize(data=nil, total=nil, recordlist=nil, requestid=nil)
          @Data = data
          @Total = total
          @RecordList = recordlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @Total = params['Total']
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @RecordList << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCSelfDefinePolicy请求参数结构体
      class DescribeCCSelfDefinePolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp高防包；bgp-multip共享包）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Limit: 拉取的条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :Business, :Id, :Limit, :Offset

        def initialize(business=nil, id=nil, limit=nil, offset=nil)
          @Business = business
          @Id = id
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCCSelfDefinePolicy返回参数结构体
      class DescribeCCSelfDefinePolicyResponse < TencentCloud::Common::AbstractModel
        # @param Total: 自定义规则总数
        # @type Total: Integer
        # @param Policys: 策略列表
        # @type Policys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Policys, :RequestId

        def initialize(total=nil, policys=nil, requestid=nil)
          @Total = total
          @Policys = policys
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Policys'].nil?
            @Policys = []
            params['Policys'].each do |i|
              ccpolicy_tmp = CCPolicy.new
              ccpolicy_tmp.deserialize(i)
              @Policys << ccpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCTrend请求参数结构体
      class DescribeCCTrendRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param MetricName: 指标，取值[inqps(总请求峰值，dropqps(攻击请求峰值))]
        # @type MetricName: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Id: 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        # @type Id: String
        # @param Domain: 域名，可选
        # @type Domain: String

        attr_accessor :Business, :Ip, :MetricName, :Period, :StartTime, :EndTime, :Id, :Domain

        def initialize(business=nil, ip=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, id=nil, domain=nil)
          @Business = business
          @Ip = ip
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Id = id
          @Domain = domain
        end

        def deserialize(params)
          @Business = params['Business']
          @Ip = params['Ip']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Id = params['Id']
          @Domain = params['Domain']
        end
      end

      # DescribeCCTrend返回参数结构体
      class DescribeCCTrendResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Id: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param MetricName: 指标，取值[inqps(总请求峰值，dropqps(攻击请求峰值))]
        # @type MetricName: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Data: 值数组
        # @type Data: Array
        # @param Count: 值个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :Ip, :MetricName, :Period, :StartTime, :EndTime, :Data, :Count, :RequestId

        def initialize(business=nil, id=nil, ip=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, data=nil, count=nil, requestid=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Data = params['Data']
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCUrlAllow请求参数结构体
      class DescribeCCUrlAllowRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Type: 黑或白名单，取值[white(白名单)]，目前只支持白名单
        # 注意：此数组只能有一个值，且只能为white
        # @type Type: Array
        # @param Limit: 分页参数
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Protocol: 可选，代表HTTP协议或HTTPS协议的CC防护，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；
        # @type Protocol: String

        attr_accessor :Business, :Id, :Type, :Limit, :Offset, :Protocol

        def initialize(business=nil, id=nil, type=nil, limit=nil, offset=nil, protocol=nil)
          @Business = business
          @Id = id
          @Type = type
          @Limit = limit
          @Offset = offset
          @Protocol = protocol
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Type = params['Type']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Protocol = params['Protocol']
        end
      end

      # DescribeCCUrlAllow返回参数结构体
      class DescribeCCUrlAllowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 该字段被RecordList字段替代了，请不要使用
        # @type Data: Array
        # @param Total: 记录总数
        # @type Total: Integer
        # @param RecordList: 返回黑/白名单的记录，
        # "Key":"url"时，"Value":值表示URL;
        # "Key":"domain"时， "Value":值表示域名;
        # "Key":"type"时，"Value":值表示黑白名单类型(white为白名单，block为黑名单);
        # "Key":"protocol"时，"Value":值表示CC的防护类型(HTTP防护或HTTPS域名防护);
        # @type RecordList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RecordList, :RequestId

        def initialize(data=nil, total=nil, recordlist=nil, requestid=nil)
          @Data = data
          @Total = total
          @RecordList = recordlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @Total = params['Total']
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @RecordList << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSAlarmThreshold请求参数结构体
      class DescribeDDoSAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        # @type Business: String
        # @param RsId: 资源ID,字符串类型
        # @type RsId: String

        attr_accessor :Business, :RsId

        def initialize(business=nil, rsid=nil)
          @Business = business
          @RsId = rsid
        end

        def deserialize(params)
          @Business = params['Business']
          @RsId = params['RsId']
        end
      end

      # DescribeDDoSAlarmThreshold返回参数结构体
      class DescribeDDoSAlarmThresholdResponse < TencentCloud::Common::AbstractModel
        # @param DDoSAlarmThreshold: DDoS告警阈值
        # @type DDoSAlarmThreshold: :class:`Tencentcloud::Dayu.v20180709.models.DDoSAlarmThreshold`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DDoSAlarmThreshold, :RequestId

        def initialize(ddosalarmthreshold=nil, requestid=nil)
          @DDoSAlarmThreshold = ddosalarmthreshold
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DDoSAlarmThreshold'].nil?
            @DDoSAlarmThreshold = DDoSAlarmThreshold.new
            @DDoSAlarmThreshold.deserialize(params['DDoSAlarmThreshold'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSAttackIPRegionMap请求参数结构体
      class DescribeDDoSAttackIPRegionMapRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间，最大可统计的时间范围是半年；
        # @type EndTime: String
        # @param IpList: 指定资源的特定IP的攻击源，可选
        # @type IpList: Array

        attr_accessor :Business, :Id, :StartTime, :EndTime, :IpList

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, iplist=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @IpList = iplist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IpList = params['IpList']
        end
      end

      # DescribeDDoSAttackIPRegionMap返回参数结构体
      class DescribeDDoSAttackIPRegionMapResponse < TencentCloud::Common::AbstractModel
        # @param NationCount: 全球地域分布数据
        # @type NationCount: Array
        # @param ProvinceCount: 国内省份地域分布数据
        # @type ProvinceCount: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NationCount, :ProvinceCount, :RequestId

        def initialize(nationcount=nil, provincecount=nil, requestid=nil)
          @NationCount = nationcount
          @ProvinceCount = provincecount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NationCount'].nil?
            @NationCount = []
            params['NationCount'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @NationCount << keyvaluerecord_tmp
            end
          end
          unless params['ProvinceCount'].nil?
            @ProvinceCount = []
            params['ProvinceCount'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @ProvinceCount << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSAttackSource请求参数结构体
      class DescribeDDoSAttackSourceRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param IpList: 获取指定资源的特定ip的攻击源，可选
        # @type IpList: Array

        attr_accessor :Business, :Id, :StartTime, :EndTime, :Limit, :Offset, :IpList

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, iplist=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @IpList = iplist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @IpList = params['IpList']
        end
      end

      # DescribeDDoSAttackSource返回参数结构体
      class DescribeDDoSAttackSourceResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总攻击源条数
        # @type Total: Integer
        # @param AttackSourceList: 攻击源列表
        # @type AttackSourceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AttackSourceList, :RequestId

        def initialize(total=nil, attacksourcelist=nil, requestid=nil)
          @Total = total
          @AttackSourceList = attacksourcelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AttackSourceList'].nil?
            @AttackSourceList = []
            params['AttackSourceList'].each do |i|
              ddosattacksourcerecord_tmp = DDoSAttackSourceRecord.new
              ddosattacksourcerecord_tmp.deserialize(i)
              @AttackSourceList << ddosattacksourcerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSCount请求参数结构体
      class DescribeDDoSCountRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param MetricName: 指标，取值[traffic（攻击协议流量, 单位KB）, pkg（攻击协议报文数）, classnum（攻击事件次数）]
        # @type MetricName: String

        attr_accessor :Business, :Id, :Ip, :StartTime, :EndTime, :MetricName

        def initialize(business=nil, id=nil, ip=nil, starttime=nil, endtime=nil, metricname=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
        end
      end

      # DescribeDDoSCount返回参数结构体
      class DescribeDDoSCountResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param MetricName: 指标，取值[traffic（攻击协议流量, 单位KB）, pkg（攻击协议报文数）, classnum（攻击事件次数）]
        # @type MetricName: String
        # @param Data: Key-Value值数组，Key说明如下，
        # 当MetricName为traffic时：
        # key为"TcpKBSum"，表示TCP报文流量，单位KB
        # key为"UdpKBSum"，表示UDP报文流量，单位KB
        # key为"IcmpKBSum"，表示ICMP报文流量，单位KB
        # key为"OtherKBSum"，表示其他报文流量，单位KB

        # 当MetricName为pkg时：
        # key为"TcpPacketSum"，表示TCP报文个数，单位个
        # key为"UdpPacketSum"，表示UDP报文个数，单位个
        # key为"IcmpPacketSum"，表示ICMP报文个数，单位个
        # key为"OtherPacketSum"，表示其他报文个数，单位个

        # 当MetricName为classnum时：
        # key的值表示攻击事件类型，其中Key为"UNKNOWNFLOOD"，表示未知的攻击事件
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :Ip, :StartTime, :EndTime, :MetricName, :Data, :RequestId

        def initialize(business=nil, id=nil, ip=nil, starttime=nil, endtime=nil, metricname=nil, data=nil, requestid=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSDefendStatus请求参数结构体
      class DescribeDDoSDefendStatusRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（basic表示基础防护；bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源实例ID，只有当Business不是基础防护时才需要填写此字段；
        # @type Id: String
        # @param Ip: 基础防护的IP，只有当Business为基础防护时才需要填写此字段；
        # @type Ip: String
        # @param BizType: 只有当Business为基础防护时才需要填写此字段，IP所属的产品类型，取值[public（CVM产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        # @type BizType: String
        # @param DeviceType: 只有当Business为基础防护时才需要填写此字段，IP所属的产品子类，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param InstanceId: 只有当Business为基础防护时才需要填写此字段，IP所属的资源实例ID，当绑定新IP时必须填写此字段；例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*);
        # @type InstanceId: String
        # @param IPRegion: 只有当Business为基础防护时才需要填写此字段，表示IP所属的地域，取值：
        # "bj":     华北地区(北京)
        # "cd":     西南地区(成都)
        # "cq":     西南地区(重庆)
        # "gz":     华南地区(广州)
        # "gzopen": 华南地区(广州Open)
        # "hk":     中国香港
        # "kr":     东南亚地区(首尔)
        # "sh":     华东地区(上海)
        # "shjr":   华东地区(上海金融)
        # "szjr":   华南地区(深圳金融)
        # "sg":     东南亚地区(新加坡)
        # "th":     东南亚地区(泰国)
        # "de":     欧洲地区(德国)
        # "usw":    美国西部（硅谷）
        # "ca":     北美地区(多伦多)
        # "jp":     日本
        # "hzec":   杭州
        # "in":     印度
        # "use":    美东地区（弗吉尼亚）
        # "ru":     俄罗斯
        # "tpe":    中国台湾
        # "nj":     南京
        # @type IPRegion: String

        attr_accessor :Business, :Id, :Ip, :BizType, :DeviceType, :InstanceId, :IPRegion

        def initialize(business=nil, id=nil, ip=nil, biztype=nil, devicetype=nil, instanceid=nil, ipregion=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @BizType = biztype
          @DeviceType = devicetype
          @InstanceId = instanceid
          @IPRegion = ipregion
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @BizType = params['BizType']
          @DeviceType = params['DeviceType']
          @InstanceId = params['InstanceId']
          @IPRegion = params['IPRegion']
        end
      end

      # DescribeDDoSDefendStatus返回参数结构体
      class DescribeDDoSDefendStatusResponse < TencentCloud::Common::AbstractModel
        # @param DefendStatus: 防护状态，为0表示防护处于关闭状态，为1表示防护处于开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefendStatus: Integer
        # @param UndefendExpire: 防护临时关闭的过期时间，当防护状态为开启时此字段为空；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UndefendExpire: String
        # @param ShowFlag: 控制台功能展示字段，为1表示控制台功能展示，为0表示控制台功能隐藏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DefendStatus, :UndefendExpire, :ShowFlag, :RequestId

        def initialize(defendstatus=nil, undefendexpire=nil, showflag=nil, requestid=nil)
          @DefendStatus = defendstatus
          @UndefendExpire = undefendexpire
          @ShowFlag = showflag
          @RequestId = requestid
        end

        def deserialize(params)
          @DefendStatus = params['DefendStatus']
          @UndefendExpire = params['UndefendExpire']
          @ShowFlag = params['ShowFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSEvInfo请求参数结构体
      class DescribeDDoSEvInfoRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String

        attr_accessor :Business, :Id, :Ip, :StartTime, :EndTime

        def initialize(business=nil, id=nil, ip=nil, starttime=nil, endtime=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDDoSEvInfo返回参数结构体
      class DescribeDDoSEvInfoResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String
        # @param TcpPacketSum: TCP报文攻击包数
        # @type TcpPacketSum: Integer
        # @param TcpKBSum: TCP报文攻击流量，单位KB
        # @type TcpKBSum: Integer
        # @param UdpPacketSum: UDP报文攻击包数
        # @type UdpPacketSum: Integer
        # @param UdpKBSum: UDP报文攻击流量，单位KB
        # @type UdpKBSum: Integer
        # @param IcmpPacketSum: ICMP报文攻击包数
        # @type IcmpPacketSum: Integer
        # @param IcmpKBSum: ICMP报文攻击流量，单位KB
        # @type IcmpKBSum: Integer
        # @param OtherPacketSum: 其他报文攻击包数
        # @type OtherPacketSum: Integer
        # @param OtherKBSum: 其他报文攻击流量，单位KB
        # @type OtherKBSum: Integer
        # @param TotalTraffic: 累计攻击流量，单位KB
        # @type TotalTraffic: Integer
        # @param Mbps: 攻击流量带宽峰值
        # @type Mbps: Integer
        # @param Pps: 攻击包速率峰值
        # @type Pps: Integer
        # @param PcapUrl: PCAP文件下载链接
        # @type PcapUrl: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :Ip, :StartTime, :EndTime, :TcpPacketSum, :TcpKBSum, :UdpPacketSum, :UdpKBSum, :IcmpPacketSum, :IcmpKBSum, :OtherPacketSum, :OtherKBSum, :TotalTraffic, :Mbps, :Pps, :PcapUrl, :RequestId

        def initialize(business=nil, id=nil, ip=nil, starttime=nil, endtime=nil, tcppacketsum=nil, tcpkbsum=nil, udppacketsum=nil, udpkbsum=nil, icmppacketsum=nil, icmpkbsum=nil, otherpacketsum=nil, otherkbsum=nil, totaltraffic=nil, mbps=nil, pps=nil, pcapurl=nil, requestid=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @StartTime = starttime
          @EndTime = endtime
          @TcpPacketSum = tcppacketsum
          @TcpKBSum = tcpkbsum
          @UdpPacketSum = udppacketsum
          @UdpKBSum = udpkbsum
          @IcmpPacketSum = icmppacketsum
          @IcmpKBSum = icmpkbsum
          @OtherPacketSum = otherpacketsum
          @OtherKBSum = otherkbsum
          @TotalTraffic = totaltraffic
          @Mbps = mbps
          @Pps = pps
          @PcapUrl = pcapurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TcpPacketSum = params['TcpPacketSum']
          @TcpKBSum = params['TcpKBSum']
          @UdpPacketSum = params['UdpPacketSum']
          @UdpKBSum = params['UdpKBSum']
          @IcmpPacketSum = params['IcmpPacketSum']
          @IcmpKBSum = params['IcmpKBSum']
          @OtherPacketSum = params['OtherPacketSum']
          @OtherKBSum = params['OtherKBSum']
          @TotalTraffic = params['TotalTraffic']
          @Mbps = params['Mbps']
          @Pps = params['Pps']
          @PcapUrl = params['PcapUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSEvList请求参数结构体
      class DescribeDDoSEvListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Id: 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        # @type Id: String
        # @param IpList: 资源的IP
        # @type IpList: Array
        # @param OverLoad: 是否超过弹性防护峰值，取值[yes(是)，no(否)]，填写空字符串时表示不进行过滤
        # @type OverLoad: String
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :Business, :StartTime, :EndTime, :Id, :IpList, :OverLoad, :Limit, :Offset

        def initialize(business=nil, starttime=nil, endtime=nil, id=nil, iplist=nil, overload=nil, limit=nil, offset=nil)
          @Business = business
          @StartTime = starttime
          @EndTime = endtime
          @Id = id
          @IpList = iplist
          @OverLoad = overload
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Business = params['Business']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Id = params['Id']
          @IpList = params['IpList']
          @OverLoad = params['OverLoad']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDDoSEvList返回参数结构体
      class DescribeDDoSEvListResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param IpList: 资源的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpList: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Data: DDoS攻击事件列表
        # @type Data: Array
        # @param Total: 总记录数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :IpList, :StartTime, :EndTime, :Data, :Total, :RequestId

        def initialize(business=nil, id=nil, iplist=nil, starttime=nil, endtime=nil, data=nil, total=nil, requestid=nil)
          @Business = business
          @Id = id
          @IpList = iplist
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @IpList = params['IpList']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ddoseventrecord_tmp = DDoSEventRecord.new
              ddoseventrecord_tmp.deserialize(i)
              @Data << ddoseventrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSIpLog请求参数结构体
      class DescribeDDoSIpLogRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String

        attr_accessor :Business, :Id, :Ip, :StartTime, :EndTime

        def initialize(business=nil, id=nil, ip=nil, starttime=nil, endtime=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDDoSIpLog返回参数结构体
      class DescribeDDoSIpLogResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String
        # @param Data: IP攻击日志，KeyValue数组，Key-Value取值说明：
        # Key为"LogTime"时，Value值为IP日志时间
        # Key为"LogMessage"时，Value值为Ip日志内容
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :Ip, :StartTime, :EndTime, :Data, :RequestId

        def initialize(business=nil, id=nil, ip=nil, starttime=nil, endtime=nil, data=nil, requestid=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @Data << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSNetCount请求参数结构体
      class DescribeDDoSNetCountRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param MetricName: 指标，取值[traffic（攻击协议流量, 单位KB）, pkg（攻击协议报文数）, classnum（攻击事件次数）]
        # @type MetricName: String

        attr_accessor :Business, :Id, :StartTime, :EndTime, :MetricName

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, metricname=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
        end
      end

      # DescribeDDoSNetCount返回参数结构体
      class DescribeDDoSNetCountResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param MetricName: 指标，取值[traffic（攻击协议流量, 单位KB）, pkg（攻击协议报文数）, classnum（攻击事件次数）]
        # @type MetricName: String
        # @param Data: Key-Value值数组，Key说明如下，
        # 当MetricName为traffic时：
        # key为"TcpKBSum"，表示TCP报文流量，单位KB
        # key为"UdpKBSum"，表示UDP报文流量，单位KB
        # key为"IcmpKBSum"，表示ICMP报文流量，单位KB
        # key为"OtherKBSum"，表示其他报文流量，单位KB

        # 当MetricName为pkg时：
        # key为"TcpPacketSum"，表示TCP报文个数，单位个
        # key为"UdpPacketSum"，表示UDP报文个数，单位个
        # key为"IcmpPacketSum"，表示ICMP报文个数，单位个
        # key为"OtherPacketSum"，表示其他报文个数，单位个

        # 当MetricName为classnum时：
        # key的值表示攻击事件类型，其中Key为"UNKNOWNFLOOD"，表示未知的攻击事件
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :StartTime, :EndTime, :MetricName, :Data, :RequestId

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, metricname=nil, data=nil, requestid=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSNetEvInfo请求参数结构体
      class DescribeDDoSNetEvInfoRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String

        attr_accessor :Business, :Id, :StartTime, :EndTime

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDDoSNetEvInfo返回参数结构体
      class DescribeDDoSNetEvInfoResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String
        # @param TcpPacketSum: TCP报文攻击包数
        # @type TcpPacketSum: Integer
        # @param TcpKBSum: TCP报文攻击流量，单位KB
        # @type TcpKBSum: Integer
        # @param UdpPacketSum: UDP报文攻击包数
        # @type UdpPacketSum: Integer
        # @param UdpKBSum: UDP报文攻击流量，单位KB
        # @type UdpKBSum: Integer
        # @param IcmpPacketSum: ICMP报文攻击包数
        # @type IcmpPacketSum: Integer
        # @param IcmpKBSum: ICMP报文攻击流量，单位KB
        # @type IcmpKBSum: Integer
        # @param OtherPacketSum: 其他报文攻击包数
        # @type OtherPacketSum: Integer
        # @param OtherKBSum: 其他报文攻击流量，单位KB
        # @type OtherKBSum: Integer
        # @param TotalTraffic: 累计攻击流量，单位KB
        # @type TotalTraffic: Integer
        # @param Mbps: 攻击流量带宽峰值
        # @type Mbps: Integer
        # @param Pps: 攻击包速率峰值
        # @type Pps: Integer
        # @param PcapUrl: PCAP文件下载链接
        # @type PcapUrl: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :StartTime, :EndTime, :TcpPacketSum, :TcpKBSum, :UdpPacketSum, :UdpKBSum, :IcmpPacketSum, :IcmpKBSum, :OtherPacketSum, :OtherKBSum, :TotalTraffic, :Mbps, :Pps, :PcapUrl, :RequestId

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, tcppacketsum=nil, tcpkbsum=nil, udppacketsum=nil, udpkbsum=nil, icmppacketsum=nil, icmpkbsum=nil, otherpacketsum=nil, otherkbsum=nil, totaltraffic=nil, mbps=nil, pps=nil, pcapurl=nil, requestid=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @TcpPacketSum = tcppacketsum
          @TcpKBSum = tcpkbsum
          @UdpPacketSum = udppacketsum
          @UdpKBSum = udpkbsum
          @IcmpPacketSum = icmppacketsum
          @IcmpKBSum = icmpkbsum
          @OtherPacketSum = otherpacketsum
          @OtherKBSum = otherkbsum
          @TotalTraffic = totaltraffic
          @Mbps = mbps
          @Pps = pps
          @PcapUrl = pcapurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TcpPacketSum = params['TcpPacketSum']
          @TcpKBSum = params['TcpKBSum']
          @UdpPacketSum = params['UdpPacketSum']
          @UdpKBSum = params['UdpKBSum']
          @IcmpPacketSum = params['IcmpPacketSum']
          @IcmpKBSum = params['IcmpKBSum']
          @OtherPacketSum = params['OtherPacketSum']
          @OtherKBSum = params['OtherKBSum']
          @TotalTraffic = params['TotalTraffic']
          @Mbps = params['Mbps']
          @Pps = params['Pps']
          @PcapUrl = params['PcapUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSNetEvList请求参数结构体
      class DescribeDDoSNetEvListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :Business, :Id, :StartTime, :EndTime, :Limit, :Offset

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDDoSNetEvList返回参数结构体
      class DescribeDDoSNetEvListResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Data: DDoS攻击事件列表
        # @type Data: Array
        # @param Total: 总记录数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :StartTime, :EndTime, :Data, :Total, :RequestId

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, data=nil, total=nil, requestid=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ddoseventrecord_tmp = DDoSEventRecord.new
              ddoseventrecord_tmp.deserialize(i)
              @Data << ddoseventrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSNetIpLog请求参数结构体
      class DescribeDDoSNetIpLogRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String

        attr_accessor :Business, :Id, :StartTime, :EndTime

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDDoSNetIpLog返回参数结构体
      class DescribeDDoSNetIpLogResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param StartTime: 攻击开始时间
        # @type StartTime: String
        # @param EndTime: 攻击结束时间
        # @type EndTime: String
        # @param Data: IP攻击日志，KeyValue数组，Key-Value取值说明：
        # Key为"LogTime"时，Value值为IP日志时间
        # Key为"LogMessage"时，Value值为Ip日志内容
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :StartTime, :EndTime, :Data, :RequestId

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, data=nil, requestid=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @Data << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSNetTrend请求参数结构体
      class DescribeDDoSNetTrendRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param MetricName: 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        # @type MetricName: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String

        attr_accessor :Business, :Id, :MetricName, :Period, :StartTime, :EndTime

        def initialize(business=nil, id=nil, metricname=nil, period=nil, starttime=nil, endtime=nil)
          @Business = business
          @Id = id
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDDoSNetTrend返回参数结构体
      class DescribeDDoSNetTrendResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param MetricName: 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        # @type MetricName: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Data: 值数组
        # @type Data: Array
        # @param Count: 值个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :MetricName, :Period, :StartTime, :EndTime, :Data, :Count, :RequestId

        def initialize(business=nil, id=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, data=nil, count=nil, requestid=nil)
          @Business = business
          @Id = id
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Data = params['Data']
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSPolicy请求参数结构体
      class DescribeDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 可选字段，资源ID，如果填写则表示该资源绑定的DDoS高级策略
        # @type Id: String

        attr_accessor :Business, :Id

        def initialize(business=nil, id=nil)
          @Business = business
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
        end
      end

      # DescribeDDoSPolicy返回参数结构体
      class DescribeDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param DDosPolicyList: DDoS高级策略列表
        # @type DDosPolicyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DDosPolicyList, :RequestId

        def initialize(ddospolicylist=nil, requestid=nil)
          @DDosPolicyList = ddospolicylist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DDosPolicyList'].nil?
            @DDosPolicyList = []
            params['DDosPolicyList'].each do |i|
              ddospolicy_tmp = DDosPolicy.new
              ddospolicy_tmp.deserialize(i)
              @DDosPolicyList << ddospolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSTrend请求参数结构体
      class DescribeDDoSTrendRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Ip: 资源实例的IP
        # @type Ip: String
        # @param MetricName: 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        # @type MetricName: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Id: 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        # @type Id: String

        attr_accessor :Business, :Ip, :MetricName, :Period, :StartTime, :EndTime, :Id

        def initialize(business=nil, ip=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, id=nil)
          @Business = business
          @Ip = ip
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Ip = params['Ip']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Id = params['Id']
        end
      end

      # DescribeDDoSTrend返回参数结构体
      class DescribeDDoSTrendResponse < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Id: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param MetricName: 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        # @type MetricName: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Data: 值数组，攻击流量带宽单位为Mbps，包速率单位为pps
        # @type Data: Array
        # @param Count: 值个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Id, :Ip, :MetricName, :Period, :StartTime, :EndTime, :Data, :Count, :RequestId

        def initialize(business=nil, id=nil, ip=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, data=nil, count=nil, requestid=nil)
          @Business = business
          @Id = id
          @Ip = ip
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Ip = params['Ip']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Data = params['Data']
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSUsedStatis请求参数结构体
      class DescribeDDoSUsedStatisRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String

        attr_accessor :Business

        def initialize(business=nil)
          @Business = business
        end

        def deserialize(params)
          @Business = params['Business']
        end
      end

      # DescribeDDoSUsedStatis返回参数结构体
      class DescribeDDoSUsedStatisResponse < TencentCloud::Common::AbstractModel
        # @param Data: 字段值，如下：
        # Days：高防资源使用天数
        # Attacks：DDoS防护次数
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
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPProductInfo请求参数结构体
      class DescribeIPProductInfoRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包）
        # @type Business: String
        # @param IpList: IP列表
        # @type IpList: Array

        attr_accessor :Business, :IpList

        def initialize(business=nil, iplist=nil)
          @Business = business
          @IpList = iplist
        end

        def deserialize(params)
          @Business = params['Business']
          @IpList = params['IpList']
        end
      end

      # DescribeIPProductInfo返回参数结构体
      class DescribeIPProductInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云产品信息列表，如果没有查询到则返回空数组，值说明如下：
        # Key为ProductName时，value表示云产品实例的名称；
        # Key为ProductInstanceId时，value表示云产品实例的ID；
        # Key为ProductType时，value表示的是云产品的类型（cvm表示云主机、clb表示负载均衡）;
        # Key为IP时，value表示云产品实例的IP；
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
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @Data << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInsurePacks请求参数结构体
      class DescribeInsurePacksRequest < TencentCloud::Common::AbstractModel
        # @param IdList: 可选字段，保险包套餐ID，当要获取指定ID（例如insure-000000xe）的保险包套餐时请填写此字段；
        # @type IdList: Array

        attr_accessor :IdList

        def initialize(idlist=nil)
          @IdList = idlist
        end

        def deserialize(params)
          @IdList = params['IdList']
        end
      end

      # DescribeInsurePacks返回参数结构体
      class DescribeInsurePacksResponse < TencentCloud::Common::AbstractModel
        # @param InsurePacks: 保险包套餐列表
        # @type InsurePacks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InsurePacks, :RequestId

        def initialize(insurepacks=nil, requestid=nil)
          @InsurePacks = insurepacks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InsurePacks'].nil?
            @InsurePacks = []
            params['InsurePacks'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @InsurePacks << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpBlockList请求参数结构体
      class DescribeIpBlockListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIpBlockList返回参数结构体
      class DescribeIpBlockListResponse < TencentCloud::Common::AbstractModel
        # @param List: IP封堵列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              ipblockdata_tmp = IpBlockData.new
              ipblockdata_tmp.deserialize(i)
              @List << ipblockdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpUnBlockList请求参数结构体
      class DescribeIpUnBlockListRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Ip: IP（不为空时，进行IP过滤）
        # @type Ip: String
        # @param Paging: 分页参数（不为空时，进行分页查询），此字段后面会弃用，请用Limit和Offset字段代替；
        # @type Paging: :class:`Tencentcloud::Dayu.v20180709.models.Paging`
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :BeginTime, :EndTime, :Ip, :Paging, :Limit, :Offset

        def initialize(begintime=nil, endtime=nil, ip=nil, paging=nil, limit=nil, offset=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Ip = ip
          @Paging = paging
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Ip = params['Ip']
          unless params['Paging'].nil?
            @Paging = Paging.new
            @Paging.deserialize(params['Paging'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeIpUnBlockList返回参数结构体
      class DescribeIpUnBlockListResponse < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param List: IP解封记录
        # @type List: Array
        # @param Total: 总记录数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BeginTime, :EndTime, :List, :Total, :RequestId

        def initialize(begintime=nil, endtime=nil, list=nil, total=nil, requestid=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              ipunblockdata_tmp = IpUnBlockData.new
              ipunblockdata_tmp.deserialize(i)
              @List << ipunblockdata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeL4HealthConfig请求参数结构体
      class DescribeL4HealthConfigRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleIdList: 规则ID数组，当导出所有规则的健康检查配置则不填或填空数组；
        # @type RuleIdList: Array

        attr_accessor :Business, :Id, :RuleIdList

        def initialize(business=nil, id=nil, ruleidlist=nil)
          @Business = business
          @Id = id
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DescribeL4HealthConfig返回参数结构体
      class DescribeL4HealthConfigResponse < TencentCloud::Common::AbstractModel
        # @param HealthConfig: 四层健康检查配置数组
        # @type HealthConfig: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthConfig, :RequestId

        def initialize(healthconfig=nil, requestid=nil)
          @HealthConfig = healthconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthConfig'].nil?
            @HealthConfig = []
            params['HealthConfig'].each do |i|
              l4healthconfig_tmp = L4HealthConfig.new
              l4healthconfig_tmp.deserialize(i)
              @HealthConfig << l4healthconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL4RulesErrHealth请求参数结构体
      class DescribeL4RulesErrHealthRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String

        attr_accessor :Business, :Id

        def initialize(business=nil, id=nil)
          @Business = business
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
        end
      end

      # DescribeL4RulesErrHealth返回参数结构体
      class DescribeL4RulesErrHealthResponse < TencentCloud::Common::AbstractModel
        # @param Total: 异常规则的总数
        # @type Total: Integer
        # @param ErrHealths: 异常规则列表，返回值说明: Key值为规则ID，Value值为异常IP，多个IP用","分割
        # @type ErrHealths: Array
        # @param ExtErrHealths: 异常规则列表(提供更多的错误相关信息)，返回值说明:
        # Key值为RuleId时，Value值为规则ID；
        # Key值为Protocol时，Value值为规则的转发协议；
        # Key值为VirtualPort时，Value值为规则的转发端口；
        # Key值为ErrMessage时，Value值为健康检查异常信息；
        # 健康检查异常信息的格式为"SourceIp:1.1.1.1|SourcePort:1234|AbnormalStatTime:1570689065|AbnormalReason:connection time out|Interval:20|CheckNum:6|FailNum:6" 多个源IP的错误信息用，分割,
        # SourceIp表示源站IP，SourcePort表示源站端口，AbnormalStatTime表示异常时间，AbnormalReason表示异常原因，Interval表示检查周期，CheckNum表示检查次数，FailNum表示失败次数；
        # @type ExtErrHealths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ErrHealths, :ExtErrHealths, :RequestId

        def initialize(total=nil, errhealths=nil, exterrhealths=nil, requestid=nil)
          @Total = total
          @ErrHealths = errhealths
          @ExtErrHealths = exterrhealths
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ErrHealths'].nil?
            @ErrHealths = []
            params['ErrHealths'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @ErrHealths << keyvalue_tmp
            end
          end
          unless params['ExtErrHealths'].nil?
            @ExtErrHealths = []
            params['ExtErrHealths'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @ExtErrHealths << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7HealthConfig请求参数结构体
      class DescribeL7HealthConfigRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleIdList: 规则ID数组，当导出所有规则的健康检查配置则不填或填空数组；
        # @type RuleIdList: Array

        attr_accessor :Business, :Id, :RuleIdList

        def initialize(business=nil, id=nil, ruleidlist=nil)
          @Business = business
          @Id = id
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DescribeL7HealthConfig返回参数结构体
      class DescribeL7HealthConfigResponse < TencentCloud::Common::AbstractModel
        # @param HealthConfig: 七层健康检查配置数组
        # @type HealthConfig: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthConfig, :RequestId

        def initialize(healthconfig=nil, requestid=nil)
          @HealthConfig = healthconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthConfig'].nil?
            @HealthConfig = []
            params['HealthConfig'].each do |i|
              l7healthconfig_tmp = L7HealthConfig.new
              l7healthconfig_tmp.deserialize(i)
              @HealthConfig << l7healthconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNewL4RulesErrHealth请求参数结构体
      class DescribeNewL4RulesErrHealthRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param RuleIdList: 规则ID列表
        # @type RuleIdList: Array

        attr_accessor :Business, :RuleIdList

        def initialize(business=nil, ruleidlist=nil)
          @Business = business
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Business = params['Business']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DescribeNewL4RulesErrHealth返回参数结构体
      class DescribeNewL4RulesErrHealthResponse < TencentCloud::Common::AbstractModel
        # @param Total: 异常规则的总数
        # @type Total: Integer
        # @param ErrHealths: 异常规则列表，返回值说明: Key值为规则ID，Value值为异常IP，多个IP用","分割
        # @type ErrHealths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ErrHealths, :RequestId

        def initialize(total=nil, errhealths=nil, requestid=nil)
          @Total = total
          @ErrHealths = errhealths
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ErrHealths'].nil?
            @ErrHealths = []
            params['ErrHealths'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @ErrHealths << keyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNewL4Rules请求参数结构体
      class DescribeNewL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Ip: 指定IP查询
        # @type Ip: String
        # @param VirtualPort: 指定高防IP端口查询
        # @type VirtualPort: Integer
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :Business, :Ip, :VirtualPort, :Limit, :Offset

        def initialize(business=nil, ip=nil, virtualport=nil, limit=nil, offset=nil)
          @Business = business
          @Ip = ip
          @VirtualPort = virtualport
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Business = params['Business']
          @Ip = params['Ip']
          @VirtualPort = params['VirtualPort']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNewL4Rules返回参数结构体
      class DescribeNewL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 转发规则列表
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param Healths: 四层健康检查配置列表
        # @type Healths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :Total, :Healths, :RequestId

        def initialize(rules=nil, total=nil, healths=nil, requestid=nil)
          @Rules = rules
          @Total = total
          @Healths = healths
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              newl4ruleentry_tmp = NewL4RuleEntry.new
              newl4ruleentry_tmp.deserialize(i)
              @Rules << newl4ruleentry_tmp
            end
          end
          @Total = params['Total']
          unless params['Healths'].nil?
            @Healths = []
            params['Healths'].each do |i|
              l4rulehealth_tmp = L4RuleHealth.new
              l4rulehealth_tmp.deserialize(i)
              @Healths << l4rulehealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNewL7RulesErrHealth请求参数结构体
      class DescribeNewL7RulesErrHealthRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP)
        # @type Business: String
        # @param RuleIdList: 规则Id列表
        # @type RuleIdList: Array

        attr_accessor :Business, :RuleIdList

        def initialize(business=nil, ruleidlist=nil)
          @Business = business
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Business = params['Business']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DescribeNewL7RulesErrHealth返回参数结构体
      class DescribeNewL7RulesErrHealthResponse < TencentCloud::Common::AbstractModel
        # @param Total: 异常规则的总数
        # @type Total: Integer
        # @param ErrHealths: 异常规则列表，返回值说明: Key值为规则ID，Value值为异常IP及错误信息，多个IP用","分割
        # @type ErrHealths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ErrHealths, :RequestId

        def initialize(total=nil, errhealths=nil, requestid=nil)
          @Total = total
          @ErrHealths = errhealths
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ErrHealths'].nil?
            @ErrHealths = []
            params['ErrHealths'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @ErrHealths << keyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePackIndex请求参数结构体
      class DescribePackIndexRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示高防包；net表示高防IP专业版）
        # @type Business: String

        attr_accessor :Business

        def initialize(business=nil)
          @Business = business
        end

        def deserialize(params)
          @Business = params['Business']
        end
      end

      # DescribePackIndex返回参数结构体
      class DescribePackIndexResponse < TencentCloud::Common::AbstractModel
        # @param Data: 字段值，如下：
        # TotalPackCount：资源数
        # AttackPackCount：清洗中的资源数
        # BlockPackCount：封堵中的资源数
        # ExpiredPackCount：过期的资源数
        # ExpireingPackCount：即将过期的资源数
        # IsolatePackCount：隔离中的资源数
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
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePcap请求参数结构体
      class DescribePcapRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param StartTime: 攻击事件的开始时间，格式为"2018-08-28 07:00:00"
        # @type StartTime: String
        # @param EndTime: 攻击事件的结束时间，格式为"2018-08-28 07:02:00"
        # @type EndTime: String
        # @param Ip: 资源的IP，只有当Business为net时才需要填写资源实例下的IP；
        # @type Ip: String

        attr_accessor :Business, :Id, :StartTime, :EndTime, :Ip

        def initialize(business=nil, id=nil, starttime=nil, endtime=nil, ip=nil)
          @Business = business
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Ip = ip
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Ip = params['Ip']
        end
      end

      # DescribePcap返回参数结构体
      class DescribePcapResponse < TencentCloud::Common::AbstractModel
        # @param PcapUrlList: pcap包的下载链接列表，无pcap包时为空数组；
        # @type PcapUrlList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PcapUrlList, :RequestId

        def initialize(pcapurllist=nil, requestid=nil)
          @PcapUrlList = pcapurllist
          @RequestId = requestid
        end

        def deserialize(params)
          @PcapUrlList = params['PcapUrlList']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyCase请求参数结构体
      class DescribePolicyCaseRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param SceneId: 策略场景ID
        # @type SceneId: String

        attr_accessor :Business, :SceneId

        def initialize(business=nil, sceneid=nil)
          @Business = business
          @SceneId = sceneid
        end

        def deserialize(params)
          @Business = params['Business']
          @SceneId = params['SceneId']
        end
      end

      # DescribePolicyCase返回参数结构体
      class DescribePolicyCaseResponse < TencentCloud::Common::AbstractModel
        # @param CaseList: 策略场景列表
        # @type CaseList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaseList, :RequestId

        def initialize(caselist=nil, requestid=nil)
          @CaseList = caselist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CaseList'].nil?
            @CaseList = []
            params['CaseList'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @CaseList << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResIpList请求参数结构体
      class DescribeResIpListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param IdList: 资源ID, 如果不填，则获取用户所有资源的IP
        # @type IdList: Array

        attr_accessor :Business, :IdList

        def initialize(business=nil, idlist=nil)
          @Business = business
          @IdList = idlist
        end

        def deserialize(params)
          @Business = params['Business']
          @IdList = params['IdList']
        end
      end

      # DescribeResIpList返回参数结构体
      class DescribeResIpListResponse < TencentCloud::Common::AbstractModel
        # @param Resource: 资源的IP列表
        # @type Resource: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Resource, :RequestId

        def initialize(resource=nil, requestid=nil)
          @Resource = resource
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Resource'].nil?
            @Resource = []
            params['Resource'].each do |i|
              resourceip_tmp = ResourceIp.new
              resourceip_tmp.deserialize(i)
              @Resource << resourceip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceList请求参数结构体
      class DescribeResourceListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param RegionList: 地域码搜索，可选，当不指定地域时空数组，当指定地域时，填地域码。例如：["gz", "sh"]
        # @type RegionList: Array
        # @param Line: 线路搜索，可选，只有当获取高防IP资源列表是可以选填，取值为[1（BGP线路），2（南京电信），3（南京联通），99（第三方合作线路）]，当获取其他产品时请填空数组；
        # @type Line: Array
        # @param IdList: 资源ID搜索，可选，当不为空数组时表示获取指定资源的资源列表；
        # @type IdList: Array
        # @param Name: 资源名称搜索，可选，当不为空字符串时表示按名称搜索资源；
        # @type Name: String
        # @param IpList: IP搜索列表，可选，当不为空时表示按照IP搜索资源；
        # @type IpList: Array
        # @param Status: 资源状态搜索列表，可选，取值为[0（运行中）, 1（清洗中）, 2（封堵中）]，当填空数组时不进行状态搜索；
        # @type Status: Array
        # @param Expire: 即将到期搜索；可选，取值为[0（不搜索），1（搜索即将到期的资源）]
        # @type Expire: Integer
        # @param OderBy: 排序字段，可选
        # @type OderBy: Array
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param CName: 高防IP专业版资源的CNAME，可选，只对高防IP专业版资源列表有效；
        # @type CName: String
        # @param Domain: 高防IP专业版资源的域名，可选，只对高防IP专业版资源列表有效；
        # @type Domain: String

        attr_accessor :Business, :RegionList, :Line, :IdList, :Name, :IpList, :Status, :Expire, :OderBy, :Limit, :Offset, :CName, :Domain

        def initialize(business=nil, regionlist=nil, line=nil, idlist=nil, name=nil, iplist=nil, status=nil, expire=nil, oderby=nil, limit=nil, offset=nil, cname=nil, domain=nil)
          @Business = business
          @RegionList = regionlist
          @Line = line
          @IdList = idlist
          @Name = name
          @IpList = iplist
          @Status = status
          @Expire = expire
          @OderBy = oderby
          @Limit = limit
          @Offset = offset
          @CName = cname
          @Domain = domain
        end

        def deserialize(params)
          @Business = params['Business']
          @RegionList = params['RegionList']
          @Line = params['Line']
          @IdList = params['IdList']
          @Name = params['Name']
          @IpList = params['IpList']
          @Status = params['Status']
          @Expire = params['Expire']
          unless params['OderBy'].nil?
            @OderBy = []
            params['OderBy'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OderBy << orderby_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @CName = params['CName']
          @Domain = params['Domain']
        end
      end

      # DescribeResourceList返回参数结构体
      class DescribeResourceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总记录数
        # @type Total: Integer
        # @param ServicePacks: 资源记录列表，返回Key值说明：
        # "Key": "CreateTime" 表示资源实例购买时间
        # "Key": "Region" 表示资源实例的地域
        # "Key": "BoundIP" 表示独享包实例绑定的IP
        # "Key": "Id" 表示资源实例的ID
        # "Key": "CCEnabled" 表示资源实例的CC防护开关状态
        # "Key": "DDoSThreshold" 表示资源实例的DDoS的清洗阈值
        # "Key": "BoundStatus" 表示独享包或共享包实例的绑定IP操作状态(绑定中或绑定完成)
        # "Key": "Type" 此字段弃用
        # "Key": "ElasticLimit" 表示资源实例的弹性防护值
        # "Key": "DDoSAI" 表示资源实例的DDoS AI防护开关
        # "Key": "OverloadCount" 表示资源实例受到超过弹性防护值的次数
        # "Key": "Status" 表示资源实例的状态(idle:运行中, attacking:攻击中, blocking:封堵中, isolate:隔离中)
        # "Key": "Lbid" 此字段弃用
        # "Key": "ShowFlag" 此字段弃用
        # "Key": "Expire" 表示资源实例的过期时间
        # "Key": "CCThreshold" 表示资源实例的CC防护触发阈值
        # "Key": "AutoRenewFlag" 表示资源实例的自动续费是否开启
        # "Key": "IspCode" 表示独享包或共享包的线路(0-电信, 1-联通, 2-移动, 5-BGP)
        # "Key": "PackType" 表示套餐包类型
        # "Key": "PackId" 表示套餐包ID
        # "Key": "Name" 表示资源实例的名称
        # "Key": "Locked" 此字段弃用
        # "Key": "IpDDoSLevel" 表示资源实例的防护等级(low-宽松, middle-正常, high-严格)
        # "Key": "DefendStatus" 表示资源实例的DDoS防护状态(防护开启或临时关闭)
        # "Key": "UndefendExpire" 表示资源实例的DDoS防护临时关闭结束时间
        # "Key": "Tgw" 表示资源实例是否是新资源
        # "Key": "Bandwidth" 表示资源实例的保底防护值，只针对高防包和高防IP
        # "Key": "DdosMax" 表示资源实例的保底防护值，只针对高防IP专业版
        # "Key": "GFBandwidth" 表示资源实例的保底业务带宽，只针对高防IP
        # "Key": "ServiceBandwidth" 表示资源实例的保底业务带宽，只针对高防IP专业版
        # @type ServicePacks: Array
        # @param Business: 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ServicePacks, :Business, :RequestId

        def initialize(total=nil, servicepacks=nil, business=nil, requestid=nil)
          @Total = total
          @ServicePacks = servicepacks
          @Business = business
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ServicePacks'].nil?
            @ServicePacks = []
            params['ServicePacks'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @ServicePacks << keyvaluerecord_tmp
            end
          end
          @Business = params['Business']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleSets请求参数结构体
      class DescribeRuleSetsRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param IdList: 资源ID列表
        # @type IdList: Array

        attr_accessor :Business, :IdList

        def initialize(business=nil, idlist=nil)
          @Business = business
          @IdList = idlist
        end

        def deserialize(params)
          @Business = params['Business']
          @IdList = params['IdList']
        end
      end

      # DescribeRuleSets返回参数结构体
      class DescribeRuleSetsResponse < TencentCloud::Common::AbstractModel
        # @param L4RuleSets: 规则记录数数组，取值说明:
        # Key值为"Id"时，Value表示资源ID
        # Key值为"RuleIdList"时，Value值表示资源的规则ID，多个规则ID用","分割
        # Key值为"RuleNameList"时，Value值表示资源的规则名，多个规则名用","分割
        # Key值为"RuleNum"时，Value值表示资源的规则数
        # @type L4RuleSets: Array
        # @param L7RuleSets: 规则记录数数组，取值说明:
        # Key值为"Id"时，Value表示资源ID
        # Key值为"RuleIdList"时，Value值表示资源的规则ID，多个规则ID用","分割
        # Key值为"RuleNameList"时，Value值表示资源的规则名，多个规则名用","分割
        # Key值为"RuleNum"时，Value值表示资源的规则数
        # @type L7RuleSets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :L4RuleSets, :L7RuleSets, :RequestId

        def initialize(l4rulesets=nil, l7rulesets=nil, requestid=nil)
          @L4RuleSets = l4rulesets
          @L7RuleSets = l7rulesets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['L4RuleSets'].nil?
            @L4RuleSets = []
            params['L4RuleSets'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @L4RuleSets << keyvaluerecord_tmp
            end
          end
          unless params['L7RuleSets'].nil?
            @L7RuleSets = []
            params['L7RuleSets'].each do |i|
              keyvaluerecord_tmp = KeyValueRecord.new
              keyvaluerecord_tmp.deserialize(i)
              @L7RuleSets << keyvaluerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSchedulingDomainList请求参数结构体
      class DescribeSchedulingDomainListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Domain: 可选，筛选特定的域名
        # @type Domain: String

        attr_accessor :Limit, :Offset, :Domain

        def initialize(limit=nil, offset=nil, domain=nil)
          @Limit = limit
          @Offset = offset
          @Domain = domain
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Domain = params['Domain']
        end
      end

      # DescribeSchedulingDomainList返回参数结构体
      class DescribeSchedulingDomainListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 调度域名总数
        # @type Total: Integer
        # @param DomainList: 调度域名列表信息
        # @type DomainList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DomainList, :RequestId

        def initialize(total=nil, domainlist=nil, requestid=nil)
          @Total = total
          @DomainList = domainlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DomainList'].nil?
            @DomainList = []
            params['DomainList'].each do |i|
              schedulingdomain_tmp = SchedulingDomain.new
              schedulingdomain_tmp.deserialize(i)
              @DomainList << schedulingdomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecIndex请求参数结构体
      class DescribeSecIndexRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecIndex返回参数结构体
      class DescribeSecIndexResponse < TencentCloud::Common::AbstractModel
        # @param Data: 字段值，如下：
        # AttackIpCount：受攻击的IP数
        # AttackCount：攻击次数
        # BlockCount：封堵次数
        # MaxMbps：攻击峰值Mbps
        # IpNum：统计的IP数据
        # @type Data: Array
        # @param BeginDate: 本月开始时间
        # @type BeginDate: String
        # @param EndDate: 本月结束时间
        # @type EndDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :BeginDate, :EndDate, :RequestId

        def initialize(data=nil, begindate=nil, enddate=nil, requestid=nil)
          @Data = data
          @BeginDate = begindate
          @EndDate = enddate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Data << keyvalue_tmp
            end
          end
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSourceIpSegment请求参数结构体
      class DescribeSourceIpSegmentRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String

        attr_accessor :Business, :Id

        def initialize(business=nil, id=nil)
          @Business = business
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
        end
      end

      # DescribeSourceIpSegment返回参数结构体
      class DescribeSourceIpSegmentResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回源IP段，多个用"；"分隔
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTransmitStatis请求参数结构体
      class DescribeTransmitStatisRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版；bgp表示独享包；bgp-multip表示共享包）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param MetricName: 指标名，取值：
        # traffic表示流量带宽；
        # pkg表示包速率；
        # @type MetricName: String
        # @param Period: 统计时间粒度（300表示5分钟；3600表示小时；86400表示天）
        # @type Period: Integer
        # @param StartTime: 统计开始时间，秒部分保持为0，分钟部分为5的倍数
        # @type StartTime: String
        # @param EndTime: 统计结束时间，秒部分保持为0，分钟部分为5的倍数
        # @type EndTime: String
        # @param IpList: 资源的IP（当Business为bgp-multip时必填，且仅支持一个IP）；当不填写时，默认统计资源实例的所有IP；资源实例有多个IP（比如高防IP专业版）时，统计方式是求和；
        # @type IpList: Array

        attr_accessor :Business, :Id, :MetricName, :Period, :StartTime, :EndTime, :IpList

        def initialize(business=nil, id=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, iplist=nil)
          @Business = business
          @Id = id
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @IpList = iplist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IpList = params['IpList']
        end
      end

      # DescribeTransmitStatis返回参数结构体
      class DescribeTransmitStatisResponse < TencentCloud::Common::AbstractModel
        # @param InDataList: 当MetricName=traffic时，表示入流量带宽，单位bps；
        # 当MetricName=pkg时，表示入包速率，单位pps；
        # @type InDataList: Array
        # @param OutDataList: 当MetricName=traffic时，表示出流量带宽，单位bps；
        # 当MetricName=pkg时，表示出包速率，单位pps；
        # @type OutDataList: Array
        # @param MetricName: 指标名：
        # traffic表示流量带宽；
        # pkg表示包速率；
        # @type MetricName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InDataList, :OutDataList, :MetricName, :RequestId

        def initialize(indatalist=nil, outdatalist=nil, metricname=nil, requestid=nil)
          @InDataList = indatalist
          @OutDataList = outdatalist
          @MetricName = metricname
          @RequestId = requestid
        end

        def deserialize(params)
          @InDataList = params['InDataList']
          @OutDataList = params['OutDataList']
          @MetricName = params['MetricName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnBlockStatis请求参数结构体
      class DescribeUnBlockStatisRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUnBlockStatis返回参数结构体
      class DescribeUnBlockStatisResponse < TencentCloud::Common::AbstractModel
        # @param Total: 解封总配额数
        # @type Total: Integer
        # @param Used: 已使用次数
        # @type Used: Integer
        # @param BeginTime: 统计起始时间
        # @type BeginTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Used, :BeginTime, :EndTime, :RequestId

        def initialize(total=nil, used=nil, begintime=nil, endtime=nil, requestid=nil)
          @Total = total
          @Used = used
          @BeginTime = begintime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Used = params['Used']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribleL4Rules请求参数结构体
      class DescribleL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleIdList: 规则ID，可选参数，填写后获取指定的规则
        # @type RuleIdList: Array
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer

        attr_accessor :Business, :Id, :RuleIdList, :Limit, :Offset

        def initialize(business=nil, id=nil, ruleidlist=nil, limit=nil, offset=nil)
          @Business = business
          @Id = id
          @RuleIdList = ruleidlist
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleIdList = params['RuleIdList']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribleL4Rules返回参数结构体
      class DescribleL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 转发规则列表
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param Healths: 健康检查配置列表
        # @type Healths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :Total, :Healths, :RequestId

        def initialize(rules=nil, total=nil, healths=nil, requestid=nil)
          @Rules = rules
          @Total = total
          @Healths = healths
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l4ruleentry_tmp = L4RuleEntry.new
              l4ruleentry_tmp.deserialize(i)
              @Rules << l4ruleentry_tmp
            end
          end
          @Total = params['Total']
          unless params['Healths'].nil?
            @Healths = []
            params['Healths'].each do |i|
              l4rulehealth_tmp = L4RuleHealth.new
              l4rulehealth_tmp.deserialize(i)
              @Healths << l4rulehealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribleL7Rules请求参数结构体
      class DescribleL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleIdList: 规则ID，可选参数，填写后获取指定的规则
        # @type RuleIdList: Array
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Domain: 域名搜索，选填，当需要搜索域名请填写
        # @type Domain: String
        # @param ProtocolList: 转发协议搜索，选填，取值[http, https, http/https]
        # @type ProtocolList: Array
        # @param StatusList: 状态搜索，选填，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        # @type StatusList: Array

        attr_accessor :Business, :Id, :RuleIdList, :Limit, :Offset, :Domain, :ProtocolList, :StatusList

        def initialize(business=nil, id=nil, ruleidlist=nil, limit=nil, offset=nil, domain=nil, protocollist=nil, statuslist=nil)
          @Business = business
          @Id = id
          @RuleIdList = ruleidlist
          @Limit = limit
          @Offset = offset
          @Domain = domain
          @ProtocolList = protocollist
          @StatusList = statuslist
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleIdList = params['RuleIdList']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Domain = params['Domain']
          @ProtocolList = params['ProtocolList']
          @StatusList = params['StatusList']
        end
      end

      # DescribleL7Rules返回参数结构体
      class DescribleL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 转发规则列表
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param Healths: 健康检查配置列表
        # @type Healths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :Total, :Healths, :RequestId

        def initialize(rules=nil, total=nil, healths=nil, requestid=nil)
          @Rules = rules
          @Total = total
          @Healths = healths
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              l7ruleentry_tmp = L7RuleEntry.new
              l7ruleentry_tmp.deserialize(i)
              @Rules << l7ruleentry_tmp
            end
          end
          @Total = params['Total']
          unless params['Healths'].nil?
            @Healths = []
            params['Healths'].each do |i|
              l7rulehealth_tmp = L7RuleHealth.new
              l7rulehealth_tmp.deserialize(i)
              @Healths << l7rulehealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribleNewL7Rules请求参数结构体
      class DescribleNewL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Limit: 一页条数，填0表示不分页
        # @type Limit: Integer
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Domain: 域名搜索，选填，当需要搜索域名请填写
        # @type Domain: String
        # @param ProtocolList: 转发协议搜索，选填，取值[http, https, http/https]
        # @type ProtocolList: Array
        # @param StatusList: 状态搜索，选填，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        # @type StatusList: Array
        # @param Ip: IP搜索，选填，当需要搜索IP请填写
        # @type Ip: String

        attr_accessor :Business, :Limit, :Offset, :Domain, :ProtocolList, :StatusList, :Ip

        def initialize(business=nil, limit=nil, offset=nil, domain=nil, protocollist=nil, statuslist=nil, ip=nil)
          @Business = business
          @Limit = limit
          @Offset = offset
          @Domain = domain
          @ProtocolList = protocollist
          @StatusList = statuslist
          @Ip = ip
        end

        def deserialize(params)
          @Business = params['Business']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Domain = params['Domain']
          @ProtocolList = params['ProtocolList']
          @StatusList = params['StatusList']
          @Ip = params['Ip']
        end
      end

      # DescribleNewL7Rules返回参数结构体
      class DescribleNewL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 转发规则列表
        # @type Rules: Array
        # @param Total: 总规则数
        # @type Total: Integer
        # @param Healths: 健康检查配置列表
        # @type Healths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :Total, :Healths, :RequestId

        def initialize(rules=nil, total=nil, healths=nil, requestid=nil)
          @Rules = rules
          @Total = total
          @Healths = healths
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              newl7ruleentry_tmp = NewL7RuleEntry.new
              newl7ruleentry_tmp.deserialize(i)
              @Rules << newl7ruleentry_tmp
            end
          end
          @Total = params['Total']
          unless params['Healths'].nil?
            @Healths = []
            params['Healths'].each do |i|
              l7rulehealth_tmp = L7RuleHealth.new
              l7rulehealth_tmp.deserialize(i)
              @Healths << l7rulehealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribleRegionCount请求参数结构体
      class DescribleRegionCountRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；）
        # @type Business: String
        # @param LineList: 根据线路统计，取值为[1（BGP线路），2（南京电信），3（南京联通），99（第三方合作线路）]；只对高防IP产品有效，其他产品此字段忽略
        # @type LineList: Array

        attr_accessor :Business, :LineList

        def initialize(business=nil, linelist=nil)
          @Business = business
          @LineList = linelist
        end

        def deserialize(params)
          @Business = params['Business']
          @LineList = params['LineList']
        end
      end

      # DescribleRegionCount返回参数结构体
      class DescribleRegionCountResponse < TencentCloud::Common::AbstractModel
        # @param RegionList: 地域资源实例数
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionList, :RequestId

        def initialize(regionlist=nil, requestid=nil)
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              regioninstancecount_tmp = RegionInstanceCount.new
              regioninstancecount_tmp.deserialize(i)
              @RegionList << regioninstancecount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务流量的http状态码聚合数据
      class HttpStatusMap < TencentCloud::Common::AbstractModel
        # @param Http2xx: http2xx状态码
        # @type Http2xx: Array
        # @param Http3xx: http3xx状态码
        # @type Http3xx: Array
        # @param Http404: http404状态码
        # @type Http404: Array
        # @param Http4xx: http4xx状态码
        # @type Http4xx: Array
        # @param Http5xx: http5xx状态码
        # @type Http5xx: Array
        # @param SourceHttp2xx: http2xx回源状态码
        # @type SourceHttp2xx: Array
        # @param SourceHttp3xx: http3xx回源状态码
        # @type SourceHttp3xx: Array
        # @param SourceHttp404: http404回源状态码
        # @type SourceHttp404: Array
        # @param SourceHttp4xx: http4xx回源状态码
        # @type SourceHttp4xx: Array
        # @param SourceHttp5xx: http5xx回源状态码
        # @type SourceHttp5xx: Array

        attr_accessor :Http2xx, :Http3xx, :Http404, :Http4xx, :Http5xx, :SourceHttp2xx, :SourceHttp3xx, :SourceHttp404, :SourceHttp4xx, :SourceHttp5xx

        def initialize(http2xx=nil, http3xx=nil, http404=nil, http4xx=nil, http5xx=nil, sourcehttp2xx=nil, sourcehttp3xx=nil, sourcehttp404=nil, sourcehttp4xx=nil, sourcehttp5xx=nil)
          @Http2xx = http2xx
          @Http3xx = http3xx
          @Http404 = http404
          @Http4xx = http4xx
          @Http5xx = http5xx
          @SourceHttp2xx = sourcehttp2xx
          @SourceHttp3xx = sourcehttp3xx
          @SourceHttp404 = sourcehttp404
          @SourceHttp4xx = sourcehttp4xx
          @SourceHttp5xx = sourcehttp5xx
        end

        def deserialize(params)
          @Http2xx = params['Http2xx']
          @Http3xx = params['Http3xx']
          @Http404 = params['Http404']
          @Http4xx = params['Http4xx']
          @Http5xx = params['Http5xx']
          @SourceHttp2xx = params['SourceHttp2xx']
          @SourceHttp3xx = params['SourceHttp3xx']
          @SourceHttp404 = params['SourceHttp404']
          @SourceHttp4xx = params['SourceHttp4xx']
          @SourceHttp5xx = params['SourceHttp5xx']
        end
      end

      # 黑白IP
      class IpBlackWhite < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Type: 黑白类型，取值范围[black，white]
        # @type Type: String

        attr_accessor :Ip, :Type

        def initialize(ip=nil, type=nil)
          @Ip = ip
          @Type = type
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Type = params['Type']
        end
      end

      # IP封堵记录
      class IpBlockData < TencentCloud::Common::AbstractModel
        # @param Ip: IP
        # @type Ip: String
        # @param Status: 状态（Blocked：被封堵；UnBlocking：解封中；UnBlockFailed：解封失败）
        # @type Status: String
        # @param BlockTime: 封堵时间
        # @type BlockTime: String
        # @param UnBlockTime: 解封时间（预计解封时间）
        # @type UnBlockTime: String
        # @param ActionType: 解封类型（user：自助解封；auto：自动解封； update：升级解封；bind：绑定高防包解封）
        # @type ActionType: String
        # @param ProtectFlag: 高防标记，0：非高防，1：高防
        # @type ProtectFlag: Integer

        attr_accessor :Ip, :Status, :BlockTime, :UnBlockTime, :ActionType, :ProtectFlag

        def initialize(ip=nil, status=nil, blocktime=nil, unblocktime=nil, actiontype=nil, protectflag=nil)
          @Ip = ip
          @Status = status
          @BlockTime = blocktime
          @UnBlockTime = unblocktime
          @ActionType = actiontype
          @ProtectFlag = protectflag
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Status = params['Status']
          @BlockTime = params['BlockTime']
          @UnBlockTime = params['UnBlockTime']
          @ActionType = params['ActionType']
          @ProtectFlag = params['ProtectFlag']
        end
      end

      # IP解封记录
      class IpUnBlockData < TencentCloud::Common::AbstractModel
        # @param Ip: IP
        # @type Ip: String
        # @param BlockTime: 封堵时间
        # @type BlockTime: String
        # @param UnBlockTime: 解封时间（实际解封时间）
        # @type UnBlockTime: String
        # @param ActionType: 解封类型（user：自助解封；auto：自动解封； update：升级解封；bind：绑定高防包解封）
        # @type ActionType: String

        attr_accessor :Ip, :BlockTime, :UnBlockTime, :ActionType

        def initialize(ip=nil, blocktime=nil, unblocktime=nil, actiontype=nil)
          @Ip = ip
          @BlockTime = blocktime
          @UnBlockTime = unblocktime
          @ActionType = actiontype
        end

        def deserialize(params)
          @Ip = params['Ip']
          @BlockTime = params['BlockTime']
          @UnBlockTime = params['UnBlockTime']
          @ActionType = params['ActionType']
        end
      end

      # 字段值，K-V形式
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 字段名称
        # @type Key: String
        # @param Value: 字段取值
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

      # KeyValue记录
      class KeyValueRecord < TencentCloud::Common::AbstractModel
        # @param Record: 一条记录的Key-Value数组
        # @type Record: Array

        attr_accessor :Record

        def initialize(record=nil)
          @Record = record
        end

        def deserialize(params)
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Record << keyvalue_tmp
            end
          end
        end
      end

      # 删除l4规则接口
      class L4DelRule < TencentCloud::Common::AbstractModel
        # @param Id: 资源Id
        # @type Id: String
        # @param Ip: 资源IP
        # @type Ip: String
        # @param RuleIdList: 规则Id
        # @type RuleIdList: Array

        attr_accessor :Id, :Ip, :RuleIdList

        def initialize(id=nil, ip=nil, ruleidlist=nil)
          @Id = id
          @Ip = ip
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Id = params['Id']
          @Ip = params['Ip']
          @RuleIdList = params['RuleIdList']
        end
      end

      # 四层健康检查配置
      class L4HealthConfig < TencentCloud::Common::AbstractModel
        # @param Protocol: 转发协议，取值[TCP, UDP]
        # @type Protocol: String
        # @param VirtualPort: 转发端口
        # @type VirtualPort: Integer
        # @param Enable: =1表示开启；=0表示关闭
        # @type Enable: Integer
        # @param TimeOut: 响应超时时间，单位秒
        # @type TimeOut: Integer
        # @param Interval: 检测间隔时间，单位秒
        # @type Interval: Integer
        # @param KickNum: 不健康阈值，单位次
        # @type KickNum: Integer
        # @param AliveNum: 健康阈值，单位次
        # @type AliveNum: Integer
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer

        attr_accessor :Protocol, :VirtualPort, :Enable, :TimeOut, :Interval, :KickNum, :AliveNum, :KeepTime

        def initialize(protocol=nil, virtualport=nil, enable=nil, timeout=nil, interval=nil, kicknum=nil, alivenum=nil, keeptime=nil)
          @Protocol = protocol
          @VirtualPort = virtualport
          @Enable = enable
          @TimeOut = timeout
          @Interval = interval
          @KickNum = kicknum
          @AliveNum = alivenum
          @KeepTime = keeptime
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @VirtualPort = params['VirtualPort']
          @Enable = params['Enable']
          @TimeOut = params['TimeOut']
          @Interval = params['Interval']
          @KickNum = params['KickNum']
          @AliveNum = params['AliveNum']
          @KeepTime = params['KeepTime']
        end
      end

      # L4规则
      class L4RuleEntry < TencentCloud::Common::AbstractModel
        # @param Protocol: 转发协议，取值[TCP, UDP]
        # @type Protocol: String
        # @param VirtualPort: 转发端口
        # @type VirtualPort: Integer
        # @param SourcePort: 源站端口
        # @type SourcePort: Integer
        # @param SourceType: 回源方式，取值[1(域名回源)，2(IP回源)]
        # @type SourceType: Integer
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer
        # @param SourceList: 回源列表
        # @type SourceList: Array
        # @param LbType: 负载均衡方式，取值[1(加权轮询)，2(源IP hash)]
        # @type LbType: Integer
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]；
        # @type KeepEnable: Integer
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RuleName: 规则描述
        # @type RuleName: String
        # @param RemoveSwitch: 移除水印状态，取值[0(关闭)，1(开启)]
        # @type RemoveSwitch: Integer

        attr_accessor :Protocol, :VirtualPort, :SourcePort, :SourceType, :KeepTime, :SourceList, :LbType, :KeepEnable, :RuleId, :RuleName, :RemoveSwitch

        def initialize(protocol=nil, virtualport=nil, sourceport=nil, sourcetype=nil, keeptime=nil, sourcelist=nil, lbtype=nil, keepenable=nil, ruleid=nil, rulename=nil, removeswitch=nil)
          @Protocol = protocol
          @VirtualPort = virtualport
          @SourcePort = sourceport
          @SourceType = sourcetype
          @KeepTime = keeptime
          @SourceList = sourcelist
          @LbType = lbtype
          @KeepEnable = keepenable
          @RuleId = ruleid
          @RuleName = rulename
          @RemoveSwitch = removeswitch
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @VirtualPort = params['VirtualPort']
          @SourcePort = params['SourcePort']
          @SourceType = params['SourceType']
          @KeepTime = params['KeepTime']
          unless params['SourceList'].nil?
            @SourceList = []
            params['SourceList'].each do |i|
              l4rulesource_tmp = L4RuleSource.new
              l4rulesource_tmp.deserialize(i)
              @SourceList << l4rulesource_tmp
            end
          end
          @LbType = params['LbType']
          @KeepEnable = params['KeepEnable']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RemoveSwitch = params['RemoveSwitch']
        end
      end

      # 规则健康检查参数
      class L4RuleHealth < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Enable: =1表示开启；=0表示关闭
        # @type Enable: Integer
        # @param TimeOut: 响应超时时间，单位秒
        # @type TimeOut: Integer
        # @param Interval: 检测间隔时间，单位秒，必须要大于响应超时时间
        # @type Interval: Integer
        # @param KickNum: 不健康阈值，单位次
        # @type KickNum: Integer
        # @param AliveNum: 健康阈值，单位次
        # @type AliveNum: Integer

        attr_accessor :RuleId, :Enable, :TimeOut, :Interval, :KickNum, :AliveNum

        def initialize(ruleid=nil, enable=nil, timeout=nil, interval=nil, kicknum=nil, alivenum=nil)
          @RuleId = ruleid
          @Enable = enable
          @TimeOut = timeout
          @Interval = interval
          @KickNum = kicknum
          @AliveNum = alivenum
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Enable = params['Enable']
          @TimeOut = params['TimeOut']
          @Interval = params['Interval']
          @KickNum = params['KickNum']
          @AliveNum = params['AliveNum']
        end
      end

      # L4规则回源列表
      class L4RuleSource < TencentCloud::Common::AbstractModel
        # @param Source: 回源IP或域名
        # @type Source: String
        # @param Weight: 权重值，取值[0,100]
        # @type Weight: Integer

        attr_accessor :Source, :Weight

        def initialize(source=nil, weight=nil)
          @Source = source
          @Weight = weight
        end

        def deserialize(params)
          @Source = params['Source']
          @Weight = params['Weight']
        end
      end

      # 七层健康检查配置
      class L7HealthConfig < TencentCloud::Common::AbstractModel
        # @param Protocol: 转发协议，取值[http, https, http/https]
        # @type Protocol: String
        # @param Domain: 转发域名
        # @type Domain: String
        # @param Enable: =1表示开启；=0表示关闭
        # @type Enable: Integer
        # @param Interval: 检测间隔时间，单位秒
        # @type Interval: Integer
        # @param KickNum: 异常判定次数，单位次
        # @type KickNum: Integer
        # @param AliveNum: 健康判定次数，单位次
        # @type AliveNum: Integer
        # @param Method: 健康检查探测方法，可选HEAD或GET，默认为HEAD
        # @type Method: String
        # @param StatusCode: 健康检查判定正常状态码，1xx =1, 2xx=2, 3xx=4, 4xx=8,5xx=16，多个状态码值加和
        # @type StatusCode: Integer
        # @param Url: 检查目录的URL，默认为/
        # @type Url: String

        attr_accessor :Protocol, :Domain, :Enable, :Interval, :KickNum, :AliveNum, :Method, :StatusCode, :Url

        def initialize(protocol=nil, domain=nil, enable=nil, interval=nil, kicknum=nil, alivenum=nil, method=nil, statuscode=nil, url=nil)
          @Protocol = protocol
          @Domain = domain
          @Enable = enable
          @Interval = interval
          @KickNum = kicknum
          @AliveNum = alivenum
          @Method = method
          @StatusCode = statuscode
          @Url = url
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @Enable = params['Enable']
          @Interval = params['Interval']
          @KickNum = params['KickNum']
          @AliveNum = params['AliveNum']
          @Method = params['Method']
          @StatusCode = params['StatusCode']
          @Url = params['Url']
        end
      end

      # L7规则
      class L7RuleEntry < TencentCloud::Common::AbstractModel
        # @param Protocol: 转发协议，取值[http, https]
        # @type Protocol: String
        # @param Domain: 转发域名
        # @type Domain: String
        # @param SourceType: 回源方式，取值[1(域名回源)，2(IP回源)]
        # @type SourceType: Integer
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer
        # @param SourceList: 回源列表
        # @type SourceList: Array
        # @param LbType: 负载均衡方式，取值[1(加权轮询)]
        # @type LbType: Integer
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]
        # @type KeepEnable: Integer
        # @param RuleId: 规则ID，当添加新规则时可以不用填写此字段；当修改或者删除规则时需要填写此字段；
        # @type RuleId: String
        # @param CertType: 证书来源，当转发协议为https时必须填，取值[2(腾讯云托管证书)]，当转发协议为http时也可以填0
        # @type CertType: Integer
        # @param SSLId: 当证书来源为腾讯云托管证书时，此字段必须填写托管证书ID
        # @type SSLId: String
        # @param Cert: 当证书来源为自有证书时，此字段必须填写证书内容；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type Cert: String
        # @param PrivateKey: 当证书来源为自有证书时，此字段必须填写证书密钥；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type PrivateKey: String
        # @param RuleName: 规则描述
        # @type RuleName: String
        # @param Status: 规则状态，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        # @type Status: Integer
        # @param CCStatus: cc防护状态，取值[0(关闭), 1(开启)]
        # @type CCStatus: Integer
        # @param CCEnable: HTTPS协议的CC防护状态，取值[0(关闭), 1(开启)]
        # @type CCEnable: Integer
        # @param CCThreshold: HTTPS协议的CC防护阈值
        # @type CCThreshold: Integer
        # @param CCLevel: HTTPS协议的CC防护等级
        # @type CCLevel: String
        # @param HttpsToHttpEnable: 是否开启Https协议使用Http回源，取值[0(关闭), 1(开启)]，不填写默认是关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpsToHttpEnable: Integer
        # @param VirtualPort: 接入端口值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPort: Integer

        attr_accessor :Protocol, :Domain, :SourceType, :KeepTime, :SourceList, :LbType, :KeepEnable, :RuleId, :CertType, :SSLId, :Cert, :PrivateKey, :RuleName, :Status, :CCStatus, :CCEnable, :CCThreshold, :CCLevel, :HttpsToHttpEnable, :VirtualPort

        def initialize(protocol=nil, domain=nil, sourcetype=nil, keeptime=nil, sourcelist=nil, lbtype=nil, keepenable=nil, ruleid=nil, certtype=nil, sslid=nil, cert=nil, privatekey=nil, rulename=nil, status=nil, ccstatus=nil, ccenable=nil, ccthreshold=nil, cclevel=nil, httpstohttpenable=nil, virtualport=nil)
          @Protocol = protocol
          @Domain = domain
          @SourceType = sourcetype
          @KeepTime = keeptime
          @SourceList = sourcelist
          @LbType = lbtype
          @KeepEnable = keepenable
          @RuleId = ruleid
          @CertType = certtype
          @SSLId = sslid
          @Cert = cert
          @PrivateKey = privatekey
          @RuleName = rulename
          @Status = status
          @CCStatus = ccstatus
          @CCEnable = ccenable
          @CCThreshold = ccthreshold
          @CCLevel = cclevel
          @HttpsToHttpEnable = httpstohttpenable
          @VirtualPort = virtualport
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @SourceType = params['SourceType']
          @KeepTime = params['KeepTime']
          unless params['SourceList'].nil?
            @SourceList = []
            params['SourceList'].each do |i|
              l4rulesource_tmp = L4RuleSource.new
              l4rulesource_tmp.deserialize(i)
              @SourceList << l4rulesource_tmp
            end
          end
          @LbType = params['LbType']
          @KeepEnable = params['KeepEnable']
          @RuleId = params['RuleId']
          @CertType = params['CertType']
          @SSLId = params['SSLId']
          @Cert = params['Cert']
          @PrivateKey = params['PrivateKey']
          @RuleName = params['RuleName']
          @Status = params['Status']
          @CCStatus = params['CCStatus']
          @CCEnable = params['CCEnable']
          @CCThreshold = params['CCThreshold']
          @CCLevel = params['CCLevel']
          @HttpsToHttpEnable = params['HttpsToHttpEnable']
          @VirtualPort = params['VirtualPort']
        end
      end

      # L7规则健康检查参数
      class L7RuleHealth < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Enable: =1表示开启；=0表示关闭
        # @type Enable: Integer
        # @param Interval: 检测间隔时间，单位秒
        # @type Interval: Integer
        # @param KickNum: 不健康阈值，单位次
        # @type KickNum: Integer
        # @param AliveNum: 健康阈值，单位次
        # @type AliveNum: Integer
        # @param Method: HTTP请求方式，取值[HEAD,GET]
        # @type Method: String
        # @param StatusCode: 健康检查判定正常状态码，1xx =1, 2xx=2, 3xx=4, 4xx=8,5xx=16，多个状态码值加和
        # @type StatusCode: Integer
        # @param Url: 检查目录的URL，默认为/
        # @type Url: String
        # @param Status: 配置状态，0： 正常，1：配置中，2：配置失败
        # @type Status: Integer

        attr_accessor :RuleId, :Enable, :Interval, :KickNum, :AliveNum, :Method, :StatusCode, :Url, :Status

        def initialize(ruleid=nil, enable=nil, interval=nil, kicknum=nil, alivenum=nil, method=nil, statuscode=nil, url=nil, status=nil)
          @RuleId = ruleid
          @Enable = enable
          @Interval = interval
          @KickNum = kicknum
          @AliveNum = alivenum
          @Method = method
          @StatusCode = statuscode
          @Url = url
          @Status = status
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Enable = params['Enable']
          @Interval = params['Interval']
          @KickNum = params['KickNum']
          @AliveNum = params['AliveNum']
          @Method = params['Method']
          @StatusCode = params['StatusCode']
          @Url = params['Url']
          @Status = params['Status']
        end
      end

      # ModifyCCAlarmThreshold请求参数结构体
      class ModifyCCAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        # @type Business: String
        # @param RsId: 资源ID,字符串类型
        # @type RsId: String
        # @param AlarmThreshold: 告警阈值，大于0（目前排定的值），后台设置默认值为1000
        # @type AlarmThreshold: Integer
        # @param IpList: 资源关联的IP列表，高防包未绑定时，传空数组，高防IP专业版传多个IP的数据
        # @type IpList: Array

        attr_accessor :Business, :RsId, :AlarmThreshold, :IpList

        def initialize(business=nil, rsid=nil, alarmthreshold=nil, iplist=nil)
          @Business = business
          @RsId = rsid
          @AlarmThreshold = alarmthreshold
          @IpList = iplist
        end

        def deserialize(params)
          @Business = params['Business']
          @RsId = params['RsId']
          @AlarmThreshold = params['AlarmThreshold']
          @IpList = params['IpList']
        end
      end

      # ModifyCCAlarmThreshold返回参数结构体
      class ModifyCCAlarmThresholdResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCFrequencyRules请求参数结构体
      class ModifyCCFrequencyRulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param CCFrequencyRuleId: CC的访问频率控制规则ID
        # @type CCFrequencyRuleId: String
        # @param Mode: 匹配规则，取值["include"(前缀匹配)，"equal"(完全匹配)]
        # @type Mode: String
        # @param Period: 统计周期，单位秒，取值[10, 30, 60]
        # @type Period: Integer
        # @param ReqNumber: 访问次数，取值[1-10000]
        # @type ReqNumber: Integer
        # @param Act: 执行动作，取值["alg"（人机识别）, "drop"（拦截）]
        # @type Act: String
        # @param ExeDuration: 执行时间，单位秒，取值[1-900]
        # @type ExeDuration: Integer
        # @param Uri: URI字符串，必须以/开头，例如/abc/a.php，长度不超过31；当URI=/时，匹配模式只能选择前缀匹配；
        # @type Uri: String
        # @param UserAgent: User-Agent字符串，长度不超过80
        # @type UserAgent: String
        # @param Cookie: Cookie字符串，长度不超过40
        # @type Cookie: String

        attr_accessor :Business, :CCFrequencyRuleId, :Mode, :Period, :ReqNumber, :Act, :ExeDuration, :Uri, :UserAgent, :Cookie

        def initialize(business=nil, ccfrequencyruleid=nil, mode=nil, period=nil, reqnumber=nil, act=nil, exeduration=nil, uri=nil, useragent=nil, cookie=nil)
          @Business = business
          @CCFrequencyRuleId = ccfrequencyruleid
          @Mode = mode
          @Period = period
          @ReqNumber = reqnumber
          @Act = act
          @ExeDuration = exeduration
          @Uri = uri
          @UserAgent = useragent
          @Cookie = cookie
        end

        def deserialize(params)
          @Business = params['Business']
          @CCFrequencyRuleId = params['CCFrequencyRuleId']
          @Mode = params['Mode']
          @Period = params['Period']
          @ReqNumber = params['ReqNumber']
          @Act = params['Act']
          @ExeDuration = params['ExeDuration']
          @Uri = params['Uri']
          @UserAgent = params['UserAgent']
          @Cookie = params['Cookie']
        end
      end

      # ModifyCCFrequencyRules返回参数结构体
      class ModifyCCFrequencyRulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCFrequencyRulesStatus请求参数结构体
      class ModifyCCFrequencyRulesStatusRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleId: 7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）
        # @type RuleId: String
        # @param Method: 开启或关闭，取值["on"(开启)，"off"(关闭)]
        # @type Method: String

        attr_accessor :Business, :Id, :RuleId, :Method

        def initialize(business=nil, id=nil, ruleid=nil, method=nil)
          @Business = business
          @Id = id
          @RuleId = ruleid
          @Method = method
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleId = params['RuleId']
          @Method = params['Method']
        end
      end

      # ModifyCCFrequencyRulesStatus返回参数结构体
      class ModifyCCFrequencyRulesStatusResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCHostProtection请求参数结构体
      class ModifyCCHostProtectionRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Method: 开启/关闭CC域名防护，取值[open(表示开启)，close(表示关闭)]
        # @type Method: String

        attr_accessor :Business, :Id, :RuleId, :Method

        def initialize(business=nil, id=nil, ruleid=nil, method=nil)
          @Business = business
          @Id = id
          @RuleId = ruleid
          @Method = method
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleId = params['RuleId']
          @Method = params['Method']
        end
      end

      # ModifyCCHostProtection返回参数结构体
      class ModifyCCHostProtectionResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCIpAllowDeny请求参数结构体
      class ModifyCCIpAllowDenyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Method: add表示添加，delete表示删除
        # @type Method: String
        # @param Type: 黑/白名单类型；取值[white(白名单)，black(黑名单)]
        # @type Type: String
        # @param IpList: 黑/白名单的IP数组
        # @type IpList: Array
        # @param Protocol: 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写Domain和RuleId字段；
        # @type Protocol: String
        # @param Domain: 可选字段，表示HTTPS协议的7层转发规则域名（通过获取7层转发规则接口可以获取域名），只有当Protocol字段为https时才必须填写此字段；
        # @type Domain: String
        # @param RuleId: 可选字段，表示HTTPS协议的7层转发规则ID（通过获取7层转发规则接口可以获取规则ID），
        # 当Method为delete时，不用填写此字段；
        # @type RuleId: String

        attr_accessor :Business, :Id, :Method, :Type, :IpList, :Protocol, :Domain, :RuleId

        def initialize(business=nil, id=nil, method=nil, type=nil, iplist=nil, protocol=nil, domain=nil, ruleid=nil)
          @Business = business
          @Id = id
          @Method = method
          @Type = type
          @IpList = iplist
          @Protocol = protocol
          @Domain = domain
          @RuleId = ruleid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Method = params['Method']
          @Type = params['Type']
          @IpList = params['IpList']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @RuleId = params['RuleId']
        end
      end

      # ModifyCCIpAllowDeny返回参数结构体
      class ModifyCCIpAllowDenyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCLevel请求参数结构体
      class ModifyCCLevelRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Level: CC防护等级，取值[default(正常), loose(宽松), strict(严格)];
        # @type Level: String
        # @param Protocol: 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写RuleId字段；
        # @type Protocol: String
        # @param RuleId: 表示7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）；
        # @type RuleId: String

        attr_accessor :Business, :Id, :Level, :Protocol, :RuleId

        def initialize(business=nil, id=nil, level=nil, protocol=nil, ruleid=nil)
          @Business = business
          @Id = id
          @Level = level
          @Protocol = protocol
          @RuleId = ruleid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Level = params['Level']
          @Protocol = params['Protocol']
          @RuleId = params['RuleId']
        end
      end

      # ModifyCCLevel返回参数结构体
      class ModifyCCLevelResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCPolicySwitch请求参数结构体
      class ModifyCCPolicySwitchRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param SetId: 策略ID
        # @type SetId: String
        # @param Switch: 开关状态
        # @type Switch: Integer

        attr_accessor :Business, :Id, :SetId, :Switch

        def initialize(business=nil, id=nil, setid=nil, switch=nil)
          @Business = business
          @Id = id
          @SetId = setid
          @Switch = switch
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @SetId = params['SetId']
          @Switch = params['Switch']
        end
      end

      # ModifyCCPolicySwitch返回参数结构体
      class ModifyCCPolicySwitchResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCSelfDefinePolicy请求参数结构体
      class ModifyCCSelfDefinePolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param SetId: 策略ID
        # @type SetId: String
        # @param Policy: CC策略描述
        # @type Policy: :class:`Tencentcloud::Dayu.v20180709.models.CCPolicy`

        attr_accessor :Business, :Id, :SetId, :Policy

        def initialize(business=nil, id=nil, setid=nil, policy=nil)
          @Business = business
          @Id = id
          @SetId = setid
          @Policy = policy
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @SetId = params['SetId']
          unless params['Policy'].nil?
            @Policy = CCPolicy.new
            @Policy.deserialize(params['Policy'])
          end
        end
      end

      # ModifyCCSelfDefinePolicy返回参数结构体
      class ModifyCCSelfDefinePolicyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCThreshold请求参数结构体
      class ModifyCCThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示基础防护）
        # @type Business: String
        # @param Threshold: CC防护阈值，取值(0 100 150 240 350 480 550 700 850 1000 1500 2000 3000 5000 10000 20000);
        # 当Business为高防IP、高防IP专业版时，其CC防护最大阈值跟资源的保底防护带宽有关，对应关系如下：
        #   保底带宽: 最大C防护阈值
        #   10:  20000,
        #   20:  40000,
        #   30:  70000,
        #   40:  100000,
        #   50:  150000,
        #   60:  200000,
        #   80:  250000,
        #   100: 300000,
        # @type Threshold: Integer
        # @param Id: 资源ID
        # @type Id: String
        # @param Protocol: 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写RuleId字段；
        # @type Protocol: String
        # @param RuleId: 可选字段，表示HTTPS协议的7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）；
        # 当Protocol=https时必须填写；
        # @type RuleId: String
        # @param BasicIp: 查询的IP地址（仅基础防护提供），取值如：1.1.1.1
        # @type BasicIp: String
        # @param BasicRegion: 查询IP所属地域（仅基础防护提供），取值如：gz、bj、sh、hk等地域缩写
        # @type BasicRegion: String
        # @param BasicBizType: 专区类型（仅基础防护提供），取值如：公有云专区：public，黑石专区：bm, NAT服务器专区：nat，互联网通道：channel。
        # @type BasicBizType: String
        # @param BasicDeviceType: 设备类型（仅基础防护提供），取值如：服务器：cvm，公有云负载均衡：clb，黑石负载均衡：lb，NAT服务器：nat，互联网通道：channel.
        # @type BasicDeviceType: String
        # @param BasicIpInstance: 仅基础防护提供。可选，IPInstance Nat 网关（如果查询的设备类型是NAT服务器，需要传此参数，通过nat资源查询接口获取）
        # @type BasicIpInstance: String
        # @param BasicIspCode: 仅基础防护提供。可选，运营商线路（如果查询的设备类型是NAT服务器，需要传此参数为5）
        # @type BasicIspCode: Integer
        # @param Domain: 可选字段，当协议取值HTTPS时，必填
        # @type Domain: String

        attr_accessor :Business, :Threshold, :Id, :Protocol, :RuleId, :BasicIp, :BasicRegion, :BasicBizType, :BasicDeviceType, :BasicIpInstance, :BasicIspCode, :Domain

        def initialize(business=nil, threshold=nil, id=nil, protocol=nil, ruleid=nil, basicip=nil, basicregion=nil, basicbiztype=nil, basicdevicetype=nil, basicipinstance=nil, basicispcode=nil, domain=nil)
          @Business = business
          @Threshold = threshold
          @Id = id
          @Protocol = protocol
          @RuleId = ruleid
          @BasicIp = basicip
          @BasicRegion = basicregion
          @BasicBizType = basicbiztype
          @BasicDeviceType = basicdevicetype
          @BasicIpInstance = basicipinstance
          @BasicIspCode = basicispcode
          @Domain = domain
        end

        def deserialize(params)
          @Business = params['Business']
          @Threshold = params['Threshold']
          @Id = params['Id']
          @Protocol = params['Protocol']
          @RuleId = params['RuleId']
          @BasicIp = params['BasicIp']
          @BasicRegion = params['BasicRegion']
          @BasicBizType = params['BasicBizType']
          @BasicDeviceType = params['BasicDeviceType']
          @BasicIpInstance = params['BasicIpInstance']
          @BasicIspCode = params['BasicIspCode']
          @Domain = params['Domain']
        end
      end

      # ModifyCCThreshold返回参数结构体
      class ModifyCCThresholdResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCCUrlAllow请求参数结构体
      class ModifyCCUrlAllowRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Method: =add表示添加，=delete表示删除
        # @type Method: String
        # @param Type: 黑/白名单类型；取值[white(白名单)]
        # @type Type: String
        # @param UrlList: URL数组，URL格式如下：
        # http://域名/cgi
        # https://域名/cgi
        # @type UrlList: Array
        # @param Protocol: 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写Domain和RuleId字段；
        # @type Protocol: String
        # @param Domain: 可选字段，表示HTTPS协议的7层转发规则域名（通过获取7层转发规则接口可以获取域名），只有当Protocol字段为https时才必须填写此字段；
        # @type Domain: String
        # @param RuleId: 可选字段，表示HTTPS协议的7层转发规则ID（通过获取7层转发规则接口可以获取规则ID），当添加并且Protocol=https时必须填写；
        # 当Method为delete时，可以不用填写此字段；
        # @type RuleId: String

        attr_accessor :Business, :Id, :Method, :Type, :UrlList, :Protocol, :Domain, :RuleId

        def initialize(business=nil, id=nil, method=nil, type=nil, urllist=nil, protocol=nil, domain=nil, ruleid=nil)
          @Business = business
          @Id = id
          @Method = method
          @Type = type
          @UrlList = urllist
          @Protocol = protocol
          @Domain = domain
          @RuleId = ruleid
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Method = params['Method']
          @Type = params['Type']
          @UrlList = params['UrlList']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @RuleId = params['RuleId']
        end
      end

      # ModifyCCUrlAllow返回参数结构体
      class ModifyCCUrlAllowResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSAIStatus请求参数结构体
      class ModifyDDoSAIStatusRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Method: =get表示读取AI防护状态；=set表示修改AI防护状态；
        # @type Method: String
        # @param DDoSAI: AI防护状态，取值[on，off]；当Method=set时必填；
        # @type DDoSAI: String

        attr_accessor :Business, :Id, :Method, :DDoSAI

        def initialize(business=nil, id=nil, method=nil, ddosai=nil)
          @Business = business
          @Id = id
          @Method = method
          @DDoSAI = ddosai
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Method = params['Method']
          @DDoSAI = params['DDoSAI']
        end
      end

      # ModifyDDoSAIStatus返回参数结构体
      class ModifyDDoSAIStatusResponse < TencentCloud::Common::AbstractModel
        # @param DDoSAI: AI防护状态，取值[on，off]
        # @type DDoSAI: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DDoSAI, :Id, :RequestId

        def initialize(ddosai=nil, id=nil, requestid=nil)
          @DDoSAI = ddosai
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @DDoSAI = params['DDoSAI']
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSAlarmThreshold请求参数结构体
      class ModifyDDoSAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（shield表示棋牌；bgpip表示高防IP；bgp表示高防包；bgp-multip表示多ip高防包；net表示高防IP专业版）
        # @type Business: String
        # @param RsId: 资源ID,字符串类型
        # @type RsId: String
        # @param AlarmType: 告警阈值类型，0-未设置，1-入流量，2-清洗流量
        # @type AlarmType: Integer
        # @param AlarmThreshold: 告警阈值，大于0（目前暂定的值）
        # @type AlarmThreshold: Integer
        # @param IpList: 资源关联的IP列表，高防包未绑定时，传空数组，高防IP专业版传多个IP的数据
        # @type IpList: Array

        attr_accessor :Business, :RsId, :AlarmType, :AlarmThreshold, :IpList

        def initialize(business=nil, rsid=nil, alarmtype=nil, alarmthreshold=nil, iplist=nil)
          @Business = business
          @RsId = rsid
          @AlarmType = alarmtype
          @AlarmThreshold = alarmthreshold
          @IpList = iplist
        end

        def deserialize(params)
          @Business = params['Business']
          @RsId = params['RsId']
          @AlarmType = params['AlarmType']
          @AlarmThreshold = params['AlarmThreshold']
          @IpList = params['IpList']
        end
      end

      # ModifyDDoSAlarmThreshold返回参数结构体
      class ModifyDDoSAlarmThresholdResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSDefendStatus请求参数结构体
      class ModifyDDoSDefendStatusRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版；basic表示基础防护）
        # @type Business: String
        # @param Status: 防护状态值，取值[0（关闭），1（开启）]
        # @type Status: Integer
        # @param Hour: 关闭时长，单位小时，取值[0，1，2，3，4，5，6]；当Status=0表示关闭时，Hour必须大于0；
        # @type Hour: Integer
        # @param Id: 资源ID；当Business不是基础防护时必须填写此字段；
        # @type Id: String
        # @param Ip: 基础防护的IP，只有当Business为基础防护时才需要填写此字段；
        # @type Ip: String
        # @param BizType: 只有当Business为基础防护时才需要填写此字段，IP所属的产品类型，取值[public（CVM产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        # @type BizType: String
        # @param DeviceType: 只有当Business为基础防护时才需要填写此字段，IP所属的产品子类，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param InstanceId: 只有当Business为基础防护时才需要填写此字段，IP所属的资源实例ID，当绑定新IP时必须填写此字段；例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*);
        # @type InstanceId: String
        # @param IPRegion: 只有当Business为基础防护时才需要填写此字段，表示IP所属的地域，取值：
        # "bj":     华北地区(北京)
        # "cd":     西南地区(成都)
        # "cq":     西南地区(重庆)
        # "gz":     华南地区(广州)
        # "gzopen": 华南地区(广州Open)
        # "hk":     中国香港
        # "kr":     东南亚地区(首尔)
        # "sh":     华东地区(上海)
        # "shjr":   华东地区(上海金融)
        # "szjr":   华南地区(深圳金融)
        # "sg":     东南亚地区(新加坡)
        # "th":     东南亚地区(泰国)
        # "de":     欧洲地区(德国)
        # "usw":    美国西部（硅谷）
        # "ca":     北美地区(多伦多)
        # "jp":     日本
        # "hzec":   杭州
        # "in":     印度
        # "use":    美东地区（弗吉尼亚）
        # "ru":     俄罗斯
        # "tpe":    中国台湾
        # "nj":     南京
        # @type IPRegion: String

        attr_accessor :Business, :Status, :Hour, :Id, :Ip, :BizType, :DeviceType, :InstanceId, :IPRegion

        def initialize(business=nil, status=nil, hour=nil, id=nil, ip=nil, biztype=nil, devicetype=nil, instanceid=nil, ipregion=nil)
          @Business = business
          @Status = status
          @Hour = hour
          @Id = id
          @Ip = ip
          @BizType = biztype
          @DeviceType = devicetype
          @InstanceId = instanceid
          @IPRegion = ipregion
        end

        def deserialize(params)
          @Business = params['Business']
          @Status = params['Status']
          @Hour = params['Hour']
          @Id = params['Id']
          @Ip = params['Ip']
          @BizType = params['BizType']
          @DeviceType = params['DeviceType']
          @InstanceId = params['InstanceId']
          @IPRegion = params['IPRegion']
        end
      end

      # ModifyDDoSDefendStatus返回参数结构体
      class ModifyDDoSDefendStatusResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSLevel请求参数结构体
      class ModifyDDoSLevelRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Method: =get表示读取防护等级；=set表示修改防护等级
        # @type Method: String
        # @param DDoSLevel: 防护等级，取值[low,middle,high]；当Method=set时必填
        # @type DDoSLevel: String

        attr_accessor :Business, :Id, :Method, :DDoSLevel

        def initialize(business=nil, id=nil, method=nil, ddoslevel=nil)
          @Business = business
          @Id = id
          @Method = method
          @DDoSLevel = ddoslevel
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Method = params['Method']
          @DDoSLevel = params['DDoSLevel']
        end
      end

      # ModifyDDoSLevel返回参数结构体
      class ModifyDDoSLevelResponse < TencentCloud::Common::AbstractModel
        # @param Id: 资源ID
        # @type Id: String
        # @param DDoSLevel: 防护等级，取值[low,middle,high]
        # @type DDoSLevel: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :DDoSLevel, :RequestId

        def initialize(id=nil, ddoslevel=nil, requestid=nil)
          @Id = id
          @DDoSLevel = ddoslevel
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @DDoSLevel = params['DDoSLevel']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSPolicyCase请求参数结构体
      class ModifyDDoSPolicyCaseRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param SceneId: 策略场景ID
        # @type SceneId: String
        # @param PlatformTypes: 开发平台，取值[PC（PC客户端）， MOBILE（移动端）， TV（电视端）， SERVER（主机）]
        # @type PlatformTypes: Array
        # @param AppType: 细分品类，取值[WEB（网站）， GAME（游戏）， APP（应用）， OTHER（其他）]
        # @type AppType: String
        # @param AppProtocols: 应用协议，取值[tcp（TCP协议），udp（UDP协议），icmp（ICMP协议），all（其他协议）]
        # @type AppProtocols: Array
        # @param TcpSportStart: TCP业务起始端口，取值(0, 65535]
        # @type TcpSportStart: String
        # @param TcpSportEnd: TCP业务结束端口，取值(0, 65535]，必须大于等于TCP业务起始端口
        # @type TcpSportEnd: String
        # @param UdpSportStart: UDP业务起始端口，取值范围(0, 65535]
        # @type UdpSportStart: String
        # @param UdpSportEnd: UDP业务结束端口，取值范围(0, 65535)，必须大于等于UDP业务起始端口
        # @type UdpSportEnd: String
        # @param HasAbroad: 是否有海外客户，取值[no（没有）, yes（有）]
        # @type HasAbroad: String
        # @param HasInitiateTcp: 是否会主动对外发起TCP请求，取值[no（不会）, yes（会）]
        # @type HasInitiateTcp: String
        # @param HasInitiateUdp: 是否会主动对外发起UDP业务请求，取值[no（不会）, yes（会）]
        # @type HasInitiateUdp: String
        # @param PeerTcpPort: 主动发起TCP请求的端口，取值范围(0, 65535]
        # @type PeerTcpPort: String
        # @param PeerUdpPort: 主动发起UDP请求的端口，取值范围(0, 65535]
        # @type PeerUdpPort: String
        # @param TcpFootprint: TCP载荷的固定特征码，字符串长度小于512
        # @type TcpFootprint: String
        # @param UdpFootprint: UDP载荷的固定特征码，字符串长度小于512
        # @type UdpFootprint: String
        # @param WebApiUrl: Web业务的API的URL
        # @type WebApiUrl: Array
        # @param MinTcpPackageLen: TCP业务报文长度最小值，取值范围(0, 1500)
        # @type MinTcpPackageLen: String
        # @param MaxTcpPackageLen: TCP业务报文长度最大值，取值范围(0, 1500)，必须大于等于TCP业务报文长度最小值
        # @type MaxTcpPackageLen: String
        # @param MinUdpPackageLen: UDP业务报文长度最小值，取值范围(0, 1500)
        # @type MinUdpPackageLen: String
        # @param MaxUdpPackageLen: UDP业务报文长度最大值，取值范围(0, 1500)，必须大于等于UDP业务报文长度最小值
        # @type MaxUdpPackageLen: String
        # @param HasVPN: 是否有VPN业务，取值[no（没有）, yes（有）]
        # @type HasVPN: String
        # @param TcpPortList: TCP业务端口列表，同时支持单个端口和端口段，字符串格式，例如：80,443,700-800,53,1000-3000
        # @type TcpPortList: String
        # @param UdpPortList: UDP业务端口列表，同时支持单个端口和端口段，字符串格式，例如：80,443,700-800,53,1000-3000
        # @type UdpPortList: String

        attr_accessor :Business, :SceneId, :PlatformTypes, :AppType, :AppProtocols, :TcpSportStart, :TcpSportEnd, :UdpSportStart, :UdpSportEnd, :HasAbroad, :HasInitiateTcp, :HasInitiateUdp, :PeerTcpPort, :PeerUdpPort, :TcpFootprint, :UdpFootprint, :WebApiUrl, :MinTcpPackageLen, :MaxTcpPackageLen, :MinUdpPackageLen, :MaxUdpPackageLen, :HasVPN, :TcpPortList, :UdpPortList

        def initialize(business=nil, sceneid=nil, platformtypes=nil, apptype=nil, appprotocols=nil, tcpsportstart=nil, tcpsportend=nil, udpsportstart=nil, udpsportend=nil, hasabroad=nil, hasinitiatetcp=nil, hasinitiateudp=nil, peertcpport=nil, peerudpport=nil, tcpfootprint=nil, udpfootprint=nil, webapiurl=nil, mintcppackagelen=nil, maxtcppackagelen=nil, minudppackagelen=nil, maxudppackagelen=nil, hasvpn=nil, tcpportlist=nil, udpportlist=nil)
          @Business = business
          @SceneId = sceneid
          @PlatformTypes = platformtypes
          @AppType = apptype
          @AppProtocols = appprotocols
          @TcpSportStart = tcpsportstart
          @TcpSportEnd = tcpsportend
          @UdpSportStart = udpsportstart
          @UdpSportEnd = udpsportend
          @HasAbroad = hasabroad
          @HasInitiateTcp = hasinitiatetcp
          @HasInitiateUdp = hasinitiateudp
          @PeerTcpPort = peertcpport
          @PeerUdpPort = peerudpport
          @TcpFootprint = tcpfootprint
          @UdpFootprint = udpfootprint
          @WebApiUrl = webapiurl
          @MinTcpPackageLen = mintcppackagelen
          @MaxTcpPackageLen = maxtcppackagelen
          @MinUdpPackageLen = minudppackagelen
          @MaxUdpPackageLen = maxudppackagelen
          @HasVPN = hasvpn
          @TcpPortList = tcpportlist
          @UdpPortList = udpportlist
        end

        def deserialize(params)
          @Business = params['Business']
          @SceneId = params['SceneId']
          @PlatformTypes = params['PlatformTypes']
          @AppType = params['AppType']
          @AppProtocols = params['AppProtocols']
          @TcpSportStart = params['TcpSportStart']
          @TcpSportEnd = params['TcpSportEnd']
          @UdpSportStart = params['UdpSportStart']
          @UdpSportEnd = params['UdpSportEnd']
          @HasAbroad = params['HasAbroad']
          @HasInitiateTcp = params['HasInitiateTcp']
          @HasInitiateUdp = params['HasInitiateUdp']
          @PeerTcpPort = params['PeerTcpPort']
          @PeerUdpPort = params['PeerUdpPort']
          @TcpFootprint = params['TcpFootprint']
          @UdpFootprint = params['UdpFootprint']
          @WebApiUrl = params['WebApiUrl']
          @MinTcpPackageLen = params['MinTcpPackageLen']
          @MaxTcpPackageLen = params['MaxTcpPackageLen']
          @MinUdpPackageLen = params['MinUdpPackageLen']
          @MaxUdpPackageLen = params['MaxUdpPackageLen']
          @HasVPN = params['HasVPN']
          @TcpPortList = params['TcpPortList']
          @UdpPortList = params['UdpPortList']
        end
      end

      # ModifyDDoSPolicyCase返回参数结构体
      class ModifyDDoSPolicyCaseResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSPolicyName请求参数结构体
      class ModifyDDoSPolicyNameRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param Name: 策略名称
        # @type Name: String

        attr_accessor :Business, :PolicyId, :Name

        def initialize(business=nil, policyid=nil, name=nil)
          @Business = business
          @PolicyId = policyid
          @Name = name
        end

        def deserialize(params)
          @Business = params['Business']
          @PolicyId = params['PolicyId']
          @Name = params['Name']
        end
      end

      # ModifyDDoSPolicyName返回参数结构体
      class ModifyDDoSPolicyNameResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSPolicy请求参数结构体
      class ModifyDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param DropOptions: 协议禁用，必须填写且数组长度必须为1
        # @type DropOptions: Array
        # @param PortLimits: 端口禁用，当没有禁用端口时填空数组
        # @type PortLimits: Array
        # @param IpAllowDenys: IP黑白名单，当没有IP黑白名单时填空数组
        # @type IpAllowDenys: Array
        # @param PacketFilters: 报文过滤，当没有报文过滤时填空数组
        # @type PacketFilters: Array
        # @param WaterPrint: 水印策略参数，当没有启用水印功能时填空数组，最多只能传一条水印策略（即数组大小不超过1）
        # @type WaterPrint: Array

        attr_accessor :Business, :PolicyId, :DropOptions, :PortLimits, :IpAllowDenys, :PacketFilters, :WaterPrint

        def initialize(business=nil, policyid=nil, dropoptions=nil, portlimits=nil, ipallowdenys=nil, packetfilters=nil, waterprint=nil)
          @Business = business
          @PolicyId = policyid
          @DropOptions = dropoptions
          @PortLimits = portlimits
          @IpAllowDenys = ipallowdenys
          @PacketFilters = packetfilters
          @WaterPrint = waterprint
        end

        def deserialize(params)
          @Business = params['Business']
          @PolicyId = params['PolicyId']
          unless params['DropOptions'].nil?
            @DropOptions = []
            params['DropOptions'].each do |i|
              ddospolicydropoption_tmp = DDoSPolicyDropOption.new
              ddospolicydropoption_tmp.deserialize(i)
              @DropOptions << ddospolicydropoption_tmp
            end
          end
          unless params['PortLimits'].nil?
            @PortLimits = []
            params['PortLimits'].each do |i|
              ddospolicyportlimit_tmp = DDoSPolicyPortLimit.new
              ddospolicyportlimit_tmp.deserialize(i)
              @PortLimits << ddospolicyportlimit_tmp
            end
          end
          unless params['IpAllowDenys'].nil?
            @IpAllowDenys = []
            params['IpAllowDenys'].each do |i|
              ipblackwhite_tmp = IpBlackWhite.new
              ipblackwhite_tmp.deserialize(i)
              @IpAllowDenys << ipblackwhite_tmp
            end
          end
          unless params['PacketFilters'].nil?
            @PacketFilters = []
            params['PacketFilters'].each do |i|
              ddospolicypacketfilter_tmp = DDoSPolicyPacketFilter.new
              ddospolicypacketfilter_tmp.deserialize(i)
              @PacketFilters << ddospolicypacketfilter_tmp
            end
          end
          unless params['WaterPrint'].nil?
            @WaterPrint = []
            params['WaterPrint'].each do |i|
              waterprintpolicy_tmp = WaterPrintPolicy.new
              waterprintpolicy_tmp.deserialize(i)
              @WaterPrint << waterprintpolicy_tmp
            end
          end
        end
      end

      # ModifyDDoSPolicy返回参数结构体
      class ModifyDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSSwitch请求参数结构体
      class ModifyDDoSSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（basic表示基础防护）
        # @type Business: String
        # @param Method: =get表示读取DDoS防护状态；=set表示修改DDoS防护状态；
        # @type Method: String
        # @param Ip: 基础防护的IP，只有当Business为基础防护时才需要填写此字段；
        # @type Ip: String
        # @param BizType: 只有当Business为基础防护时才需要填写此字段，IP所属的产品类型，取值[public（CVM产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        # @type BizType: String
        # @param DeviceType: 只有当Business为基础防护时才需要填写此字段，IP所属的产品子类，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param InstanceId: 只有当Business为基础防护时才需要填写此字段，IP所属的资源实例ID，当绑定新IP时必须填写此字段；例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*);
        # @type InstanceId: String
        # @param IPRegion: 只有当Business为基础防护时才需要填写此字段，表示IP所属的地域，取值：
        # "bj":     华北地区(北京)
        # "cd":     西南地区(成都)
        # "cq":     西南地区(重庆)
        # "gz":     华南地区(广州)
        # "gzopen": 华南地区(广州Open)
        # "hk":     中国香港
        # "kr":     东南亚地区(首尔)
        # "sh":     华东地区(上海)
        # "shjr":   华东地区(上海金融)
        # "szjr":   华南地区(深圳金融)
        # "sg":     东南亚地区(新加坡)
        # "th":     东南亚地区(泰国)
        # "de":     欧洲地区(德国)
        # "usw":    美国西部（硅谷）
        # "ca":     北美地区(多伦多)
        # "jp":     日本
        # "hzec":   杭州
        # "in":     印度
        # "use":    美东地区（弗吉尼亚）
        # "ru":     俄罗斯
        # "tpe":    中国台湾
        # "nj":     南京
        # @type IPRegion: String
        # @param Status: 可选字段，防护状态值，取值[0（关闭），1（开启）]；当Method为get时可以不填写此字段；
        # @type Status: Integer

        attr_accessor :Business, :Method, :Ip, :BizType, :DeviceType, :InstanceId, :IPRegion, :Status

        def initialize(business=nil, method=nil, ip=nil, biztype=nil, devicetype=nil, instanceid=nil, ipregion=nil, status=nil)
          @Business = business
          @Method = method
          @Ip = ip
          @BizType = biztype
          @DeviceType = devicetype
          @InstanceId = instanceid
          @IPRegion = ipregion
          @Status = status
        end

        def deserialize(params)
          @Business = params['Business']
          @Method = params['Method']
          @Ip = params['Ip']
          @BizType = params['BizType']
          @DeviceType = params['DeviceType']
          @InstanceId = params['InstanceId']
          @IPRegion = params['IPRegion']
          @Status = params['Status']
        end
      end

      # ModifyDDoSSwitch返回参数结构体
      class ModifyDDoSSwitchResponse < TencentCloud::Common::AbstractModel
        # @param Status: 当前防护状态值，取值[0（关闭），1（开启）]
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSThreshold请求参数结构体
      class ModifyDDoSThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Threshold: DDoS清洗阈值，取值[0, 60, 80, 100, 150, 200, 250, 300, 400, 500, 700, 1000];
        # 当设置值为0时，表示采用默认值；
        # @type Threshold: Integer

        attr_accessor :Business, :Id, :Threshold

        def initialize(business=nil, id=nil, threshold=nil)
          @Business = business
          @Id = id
          @Threshold = threshold
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Threshold = params['Threshold']
        end
      end

      # ModifyDDoSThreshold返回参数结构体
      class ModifyDDoSThresholdResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSWaterKey请求参数结构体
      class ModifyDDoSWaterKeyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param Method: 密钥操作，取值：[add（添加），delete（删除），open（开启），close（关闭），get（获取密钥）]
        # @type Method: String
        # @param KeyId: 密钥ID，当添加密钥操作时可以不填或填0，其他操作时必须填写；
        # @type KeyId: Integer

        attr_accessor :Business, :PolicyId, :Method, :KeyId

        def initialize(business=nil, policyid=nil, method=nil, keyid=nil)
          @Business = business
          @PolicyId = policyid
          @Method = method
          @KeyId = keyid
        end

        def deserialize(params)
          @Business = params['Business']
          @PolicyId = params['PolicyId']
          @Method = params['Method']
          @KeyId = params['KeyId']
        end
      end

      # ModifyDDoSWaterKey返回参数结构体
      class ModifyDDoSWaterKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyList: 水印密钥列表
        # @type KeyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyList, :RequestId

        def initialize(keylist=nil, requestid=nil)
          @KeyList = keylist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyList'].nil?
            @KeyList = []
            params['KeyList'].each do |i|
              waterprintkey_tmp = WaterPrintKey.new
              waterprintkey_tmp.deserialize(i)
              @KeyList << waterprintkey_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyElasticLimit请求参数结构体
      class ModifyElasticLimitRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Limit: 弹性防护阈值，取值[0 10000 20000 30000 40000 50000 60000 70000 80000 90000 100000 120000 150000 200000 250000 300000 400000 600000 800000 220000 310000 110000 270000 610000]
        # @type Limit: Integer

        attr_accessor :Business, :Id, :Limit

        def initialize(business=nil, id=nil, limit=nil)
          @Business = business
          @Id = id
          @Limit = limit
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Limit = params['Limit']
        end
      end

      # ModifyElasticLimit返回参数结构体
      class ModifyElasticLimitResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyL4Health请求参数结构体
      class ModifyL4HealthRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Healths: 健康检查参数数组
        # @type Healths: Array

        attr_accessor :Business, :Id, :Healths

        def initialize(business=nil, id=nil, healths=nil)
          @Business = business
          @Id = id
          @Healths = healths
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Healths'].nil?
            @Healths = []
            params['Healths'].each do |i|
              l4rulehealth_tmp = L4RuleHealth.new
              l4rulehealth_tmp.deserialize(i)
              @Healths << l4rulehealth_tmp
            end
          end
        end
      end

      # ModifyL4Health返回参数结构体
      class ModifyL4HealthResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyL4KeepTime请求参数结构体
      class ModifyL4KeepTimeRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]
        # @type KeepEnable: Integer
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer

        attr_accessor :Business, :Id, :RuleId, :KeepEnable, :KeepTime

        def initialize(business=nil, id=nil, ruleid=nil, keepenable=nil, keeptime=nil)
          @Business = business
          @Id = id
          @RuleId = ruleid
          @KeepEnable = keepenable
          @KeepTime = keeptime
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RuleId = params['RuleId']
          @KeepEnable = params['KeepEnable']
          @KeepTime = params['KeepTime']
        end
      end

      # ModifyL4KeepTime返回参数结构体
      class ModifyL4KeepTimeResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyL4Rules请求参数结构体
      class ModifyL4RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Dayu.v20180709.models.L4RuleEntry`

        attr_accessor :Business, :Id, :Rule

        def initialize(business=nil, id=nil, rule=nil)
          @Business = business
          @Id = id
          @Rule = rule
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rule'].nil?
            @Rule = L4RuleEntry.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyL4Rules返回参数结构体
      class ModifyL4RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyL7Rules请求参数结构体
      class ModifyL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Dayu.v20180709.models.L7RuleEntry`

        attr_accessor :Business, :Id, :Rule

        def initialize(business=nil, id=nil, rule=nil)
          @Business = business
          @Id = id
          @Rule = rule
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rule'].nil?
            @Rule = L7RuleEntry.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyL7Rules返回参数结构体
      class ModifyL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyNetReturnSwitch请求参数结构体
      class ModifyNetReturnSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param Status: Status 表示回切开关，0: 关闭， 1:打开
        # @type Status: Integer
        # @param Hour: 回切时长，单位：小时，取值[0,1,2,3,4,5,6;]当status=1时必选填写Hour>0
        # @type Hour: Integer

        attr_accessor :Business, :Id, :Status, :Hour

        def initialize(business=nil, id=nil, status=nil, hour=nil)
          @Business = business
          @Id = id
          @Status = status
          @Hour = hour
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @Status = params['Status']
          @Hour = params['Hour']
        end
      end

      # ModifyNetReturnSwitch返回参数结构体
      class ModifyNetReturnSwitchResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNewDomainRules请求参数结构体
      class ModifyNewDomainRulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rule: 域名转发规则
        # @type Rule: :class:`Tencentcloud::Dayu.v20180709.models.NewL7RuleEntry`

        attr_accessor :Business, :Id, :Rule

        def initialize(business=nil, id=nil, rule=nil)
          @Business = business
          @Id = id
          @Rule = rule
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rule'].nil?
            @Rule = NewL7RuleEntry.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyNewDomainRules返回参数结构体
      class ModifyNewDomainRulesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyNewL4Rule请求参数结构体
      class ModifyNewL4RuleRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rule: 转发规则
        # @type Rule: :class:`Tencentcloud::Dayu.v20180709.models.L4RuleEntry`

        attr_accessor :Business, :Id, :Rule

        def initialize(business=nil, id=nil, rule=nil)
          @Business = business
          @Id = id
          @Rule = rule
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          unless params['Rule'].nil?
            @Rule = L4RuleEntry.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyNewL4Rule返回参数结构体
      class ModifyNewL4RuleResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyResBindDDoSPolicy请求参数结构体
      class ModifyResBindDDoSPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param Method: 绑定或解绑，bind表示绑定策略，unbind表示解绑策略
        # @type Method: String

        attr_accessor :Business, :Id, :PolicyId, :Method

        def initialize(business=nil, id=nil, policyid=nil, method=nil)
          @Business = business
          @Id = id
          @PolicyId = policyid
          @Method = method
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @PolicyId = params['PolicyId']
          @Method = params['Method']
        end
      end

      # ModifyResBindDDoSPolicy返回参数结构体
      class ModifyResBindDDoSPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceRenewFlag请求参数结构体
      class ModifyResourceRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版；shield表示棋牌盾；bgp表示独享包；bgp-multip表示共享包；insurance表示保险包；staticpack表示三网套餐包）
        # @type Business: String
        # @param Id: 资源Id
        # @type Id: String
        # @param RenewFlag: 自动续费标记（0手动续费；1自动续费；2到期不续费）
        # @type RenewFlag: Integer

        attr_accessor :Business, :Id, :RenewFlag

        def initialize(business=nil, id=nil, renewflag=nil)
          @Business = business
          @Id = id
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Business = params['Business']
          @Id = params['Id']
          @RenewFlag = params['RenewFlag']
        end
      end

      # ModifyResourceRenewFlag返回参数结构体
      class ModifyResourceRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Dayu.v20180709.models.SuccessCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Success'].nil?
            @Success = SuccessCode.new
            @Success.deserialize(params['Success'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 四层规则结构体
      class NewL4RuleEntry < TencentCloud::Common::AbstractModel
        # @param Protocol: 转发协议，取值[TCP, UDP]
        # @type Protocol: String
        # @param VirtualPort: 转发端口
        # @type VirtualPort: Integer
        # @param SourcePort: 源站端口
        # @type SourcePort: Integer
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer
        # @param SourceList: 回源列表
        # @type SourceList: Array
        # @param LbType: 负载均衡方式，取值[1(加权轮询)，2(源IP hash)]
        # @type LbType: Integer
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]；
        # @type KeepEnable: Integer
        # @param SourceType: 回源方式，取值[1(域名回源)，2(IP回源)]
        # @type SourceType: Integer
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RuleName: 规则描述
        # @type RuleName: String
        # @param RemoveSwitch: 移除水印状态，取值[0(关闭)，1(开启)]
        # @type RemoveSwitch: Integer
        # @param ModifyTime: 规则修改时间
        # @type ModifyTime: String
        # @param Region: 对应地区信息
        # @type Region: Integer
        # @param Ip: 绑定资源IP信息
        # @type Ip: String
        # @param Id: 绑定资源Id信息
        # @type Id: String

        attr_accessor :Protocol, :VirtualPort, :SourcePort, :KeepTime, :SourceList, :LbType, :KeepEnable, :SourceType, :RuleId, :RuleName, :RemoveSwitch, :ModifyTime, :Region, :Ip, :Id

        def initialize(protocol=nil, virtualport=nil, sourceport=nil, keeptime=nil, sourcelist=nil, lbtype=nil, keepenable=nil, sourcetype=nil, ruleid=nil, rulename=nil, removeswitch=nil, modifytime=nil, region=nil, ip=nil, id=nil)
          @Protocol = protocol
          @VirtualPort = virtualport
          @SourcePort = sourceport
          @KeepTime = keeptime
          @SourceList = sourcelist
          @LbType = lbtype
          @KeepEnable = keepenable
          @SourceType = sourcetype
          @RuleId = ruleid
          @RuleName = rulename
          @RemoveSwitch = removeswitch
          @ModifyTime = modifytime
          @Region = region
          @Ip = ip
          @Id = id
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @VirtualPort = params['VirtualPort']
          @SourcePort = params['SourcePort']
          @KeepTime = params['KeepTime']
          unless params['SourceList'].nil?
            @SourceList = []
            params['SourceList'].each do |i|
              l4rulesource_tmp = L4RuleSource.new
              l4rulesource_tmp.deserialize(i)
              @SourceList << l4rulesource_tmp
            end
          end
          @LbType = params['LbType']
          @KeepEnable = params['KeepEnable']
          @SourceType = params['SourceType']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RemoveSwitch = params['RemoveSwitch']
          @ModifyTime = params['ModifyTime']
          @Region = params['Region']
          @Ip = params['Ip']
          @Id = params['Id']
        end
      end

      # L7规则
      class NewL7RuleEntry < TencentCloud::Common::AbstractModel
        # @param Protocol: 转发协议，取值[http, https]
        # @type Protocol: String
        # @param Domain: 转发域名
        # @type Domain: String
        # @param SourceType: 回源方式，取值[1(域名回源)，2(IP回源)]
        # @type SourceType: Integer
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer
        # @param SourceList: 回源列表
        # @type SourceList: Array
        # @param LbType: 负载均衡方式，取值[1(加权轮询)]
        # @type LbType: Integer
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]
        # @type KeepEnable: Integer
        # @param RuleId: 规则ID，当添加新规则时可以不用填写此字段；当修改或者删除规则时需要填写此字段；
        # @type RuleId: String
        # @param CertType: 证书来源，当转发协议为https时必须填，取值[2(腾讯云托管证书)]，当转发协议为http时也可以填0
        # @type CertType: Integer
        # @param SSLId: 当证书来源为腾讯云托管证书时，此字段必须填写托管证书ID
        # @type SSLId: String
        # @param Cert: 当证书来源为自有证书时，此字段必须填写证书内容；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type Cert: String
        # @param PrivateKey: 当证书来源为自有证书时，此字段必须填写证书密钥；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type PrivateKey: String
        # @param RuleName: 规则描述
        # @type RuleName: String
        # @param Status: 规则状态，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        # @type Status: Integer
        # @param CCStatus: cc防护状态，取值[0(关闭), 1(开启)]
        # @type CCStatus: Integer
        # @param CCEnable: HTTPS协议的CC防护状态，取值[0(关闭), 1(开启)]
        # @type CCEnable: Integer
        # @param CCThreshold: HTTPS协议的CC防护阈值
        # @type CCThreshold: Integer
        # @param CCLevel: HTTPS协议的CC防护等级
        # @type CCLevel: String
        # @param Region: 区域码
        # @type Region: Integer
        # @param Id: 资源Id
        # @type Id: String
        # @param Ip: 资源Ip
        # @type Ip: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param HttpsToHttpEnable: 是否开启Https协议使用Http回源，取值[0(关闭), 1(开启)]，不填写默认是关闭
        # @type HttpsToHttpEnable: Integer
        # @param VirtualPort: 接入端口值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPort: Integer

        attr_accessor :Protocol, :Domain, :SourceType, :KeepTime, :SourceList, :LbType, :KeepEnable, :RuleId, :CertType, :SSLId, :Cert, :PrivateKey, :RuleName, :Status, :CCStatus, :CCEnable, :CCThreshold, :CCLevel, :Region, :Id, :Ip, :ModifyTime, :HttpsToHttpEnable, :VirtualPort

        def initialize(protocol=nil, domain=nil, sourcetype=nil, keeptime=nil, sourcelist=nil, lbtype=nil, keepenable=nil, ruleid=nil, certtype=nil, sslid=nil, cert=nil, privatekey=nil, rulename=nil, status=nil, ccstatus=nil, ccenable=nil, ccthreshold=nil, cclevel=nil, region=nil, id=nil, ip=nil, modifytime=nil, httpstohttpenable=nil, virtualport=nil)
          @Protocol = protocol
          @Domain = domain
          @SourceType = sourcetype
          @KeepTime = keeptime
          @SourceList = sourcelist
          @LbType = lbtype
          @KeepEnable = keepenable
          @RuleId = ruleid
          @CertType = certtype
          @SSLId = sslid
          @Cert = cert
          @PrivateKey = privatekey
          @RuleName = rulename
          @Status = status
          @CCStatus = ccstatus
          @CCEnable = ccenable
          @CCThreshold = ccthreshold
          @CCLevel = cclevel
          @Region = region
          @Id = id
          @Ip = ip
          @ModifyTime = modifytime
          @HttpsToHttpEnable = httpstohttpenable
          @VirtualPort = virtualport
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @SourceType = params['SourceType']
          @KeepTime = params['KeepTime']
          unless params['SourceList'].nil?
            @SourceList = []
            params['SourceList'].each do |i|
              l4rulesource_tmp = L4RuleSource.new
              l4rulesource_tmp.deserialize(i)
              @SourceList << l4rulesource_tmp
            end
          end
          @LbType = params['LbType']
          @KeepEnable = params['KeepEnable']
          @RuleId = params['RuleId']
          @CertType = params['CertType']
          @SSLId = params['SSLId']
          @Cert = params['Cert']
          @PrivateKey = params['PrivateKey']
          @RuleName = params['RuleName']
          @Status = params['Status']
          @CCStatus = params['CCStatus']
          @CCEnable = params['CCEnable']
          @CCThreshold = params['CCThreshold']
          @CCLevel = params['CCLevel']
          @Region = params['Region']
          @Id = params['Id']
          @Ip = params['Ip']
          @ModifyTime = params['ModifyTime']
          @HttpsToHttpEnable = params['HttpsToHttpEnable']
          @VirtualPort = params['VirtualPort']
        end
      end

      # 排序字段
      class OrderBy < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段名称，取值[
        # bandwidth（带宽），
        # overloadCount（超峰值次数）
        # ]
        # @type Field: String
        # @param Order: 升降序，取值为[asc（升序），（升序），desc（降序）， DESC（降序）]
        # @type Order: String

        attr_accessor :Field, :Order

        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 分页索引
      class Paging < TencentCloud::Common::AbstractModel
        # @param Offset: 起始位置
        # @type Offset: Integer
        # @param Limit: 数量
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

      # Protocol、Port参数
      class ProtocolPort < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议（tcp；udp）
        # @type Protocol: String
        # @param Port: 端口
        # @type Port: Integer

        attr_accessor :Protocol, :Port

        def initialize(protocol=nil, port=nil)
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Port = params['Port']
        end
      end

      # 地域资源实例数
      class RegionInstanceCount < TencentCloud::Common::AbstractModel
        # @param Region: 地域码
        # @type Region: String
        # @param RegionV3: 地域码（新规范）
        # @type RegionV3: String
        # @param Count: 资源实例数
        # @type Count: Integer

        attr_accessor :Region, :RegionV3, :Count

        def initialize(region=nil, regionv3=nil, count=nil)
          @Region = region
          @RegionV3 = regionv3
          @Count = count
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionV3 = params['RegionV3']
          @Count = params['Count']
        end
      end

      # 资源的IP数组
      class ResourceIp < TencentCloud::Common::AbstractModel
        # @param Id: 资源ID
        # @type Id: String
        # @param IpList: 资源的IP数组
        # @type IpList: Array

        attr_accessor :Id, :IpList

        def initialize(id=nil, iplist=nil)
          @Id = id
          @IpList = iplist
        end

        def deserialize(params)
          @Id = params['Id']
          @IpList = params['IpList']
        end
      end

      # 调度域名信息
      class SchedulingDomain < TencentCloud::Common::AbstractModel
        # @param Domain: 调度域名
        # @type Domain: String
        # @param BGPIpList: BGP线路IP列表
        # @type BGPIpList: Array
        # @param CTCCIpList: 电信线路IP列表
        # @type CTCCIpList: Array
        # @param CUCCIpList: 联通线路IP列表
        # @type CUCCIpList: Array
        # @param CMCCIpList: 移动线路IP列表
        # @type CMCCIpList: Array
        # @param OverseaIpList: 海外线路IP列表
        # @type OverseaIpList: Array
        # @param Method: 调度方式，当前仅支持优先级, 取值为priority
        # @type Method: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param TTL: ttl
        # @type TTL: Integer
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String

        attr_accessor :Domain, :BGPIpList, :CTCCIpList, :CUCCIpList, :CMCCIpList, :OverseaIpList, :Method, :CreateTime, :TTL, :Status, :ModifyTime

        def initialize(domain=nil, bgpiplist=nil, ctcciplist=nil, cucciplist=nil, cmcciplist=nil, overseaiplist=nil, method=nil, createtime=nil, ttl=nil, status=nil, modifytime=nil)
          @Domain = domain
          @BGPIpList = bgpiplist
          @CTCCIpList = ctcciplist
          @CUCCIpList = cucciplist
          @CMCCIpList = cmcciplist
          @OverseaIpList = overseaiplist
          @Method = method
          @CreateTime = createtime
          @TTL = ttl
          @Status = status
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Domain = params['Domain']
          @BGPIpList = params['BGPIpList']
          @CTCCIpList = params['CTCCIpList']
          @CUCCIpList = params['CUCCIpList']
          @CMCCIpList = params['CMCCIpList']
          @OverseaIpList = params['OverseaIpList']
          @Method = params['Method']
          @CreateTime = params['CreateTime']
          @TTL = params['TTL']
          @Status = params['Status']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 操作返回码，只用于返回成功的情况
      class SuccessCode < TencentCloud::Common::AbstractModel
        # @param Code: 成功/错误码
        # @type Code: String
        # @param Message: 描述
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

      # 水印Key
      class WaterPrintKey < TencentCloud::Common::AbstractModel
        # @param KeyId: 水印KeyID
        # @type KeyId: String
        # @param KeyContent: 水印Key值
        # @type KeyContent: String
        # @param KeyVersion: 水印Key的版本号
        # @type KeyVersion: String
        # @param OpenStatus: 是否开启，取值[0（没有开启），1（已开启）]
        # @type OpenStatus: Integer
        # @param CreateTime: 密钥生成时间
        # @type CreateTime: String

        attr_accessor :KeyId, :KeyContent, :KeyVersion, :OpenStatus, :CreateTime

        def initialize(keyid=nil, keycontent=nil, keyversion=nil, openstatus=nil, createtime=nil)
          @KeyId = keyid
          @KeyContent = keycontent
          @KeyVersion = keyversion
          @OpenStatus = openstatus
          @CreateTime = createtime
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyContent = params['KeyContent']
          @KeyVersion = params['KeyVersion']
          @OpenStatus = params['OpenStatus']
          @CreateTime = params['CreateTime']
        end
      end

      # 水印策略参数
      class WaterPrintPolicy < TencentCloud::Common::AbstractModel
        # @param TcpPortList: TCP端口段，例如["2000-3000","3500-4000"]
        # @type TcpPortList: Array
        # @param UdpPortList: UDP端口段，例如["2000-3000","3500-4000"]
        # @type UdpPortList: Array
        # @param Offset: 水印偏移量，取值范围[0, 100)
        # @type Offset: Integer
        # @param RemoveSwitch: 是否自动剥离，取值[0（不自动剥离），1（自动剥离）]
        # @type RemoveSwitch: Integer
        # @param OpenStatus: 是否开启，取值[0（没有开启），1（已开启）]
        # @type OpenStatus: Integer

        attr_accessor :TcpPortList, :UdpPortList, :Offset, :RemoveSwitch, :OpenStatus

        def initialize(tcpportlist=nil, udpportlist=nil, offset=nil, removeswitch=nil, openstatus=nil)
          @TcpPortList = tcpportlist
          @UdpPortList = udpportlist
          @Offset = offset
          @RemoveSwitch = removeswitch
          @OpenStatus = openstatus
        end

        def deserialize(params)
          @TcpPortList = params['TcpPortList']
          @UdpPortList = params['UdpPortList']
          @Offset = params['Offset']
          @RemoveSwitch = params['RemoveSwitch']
          @OpenStatus = params['OpenStatus']
        end
      end

    end
  end
end

