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
  module Cfw
    module V20190904
      # 访问控制列表对象
      class AcListsData < TencentCloud::Common::AbstractModel
        # @param Id: 规则id
        # @type Id: Integer
        # @param SourceIp: 访问源
        # @type SourceIp: String
        # @param TargetIp: 访问目的
        # @type TargetIp: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Port: 端口
        # @type Port: String
        # @param Strategy: 策略
        # @type Strategy: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param Count: 命中次数
        # @type Count: Integer
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param LogId: 告警规则id
        # @type LogId: String
        # @param Status: 规则开关状态 1打开 0关闭
        # @type Status: Integer
        # @param SrcType: 规则源类型
        # @type SrcType: Integer
        # @param DstType: 规则目的类型
        # @type DstType: Integer
        # @param Uuid: 规则唯一ID
        # @type Uuid: String
        # @param Invalid: 规则有效性
        # 1 有效
        # 0 无效
        # @type Invalid: Integer
        # @param IsRegion: 是否地域规则
        # @type IsRegion: Integer
        # @param CloudCode: 云厂商代码
        # @type CloudCode: String
        # @param AutoTask: 自动化助手信息
        # @type AutoTask: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param RegionCode: 地域码信息
        # @type RegionCode: String
        # @param Country: 国家代码
        # @type Country: Integer
        # @param City: 城市代码
        # @type City: Integer
        # @param RegName1: 国家名称
        # @type RegName1: String
        # @param RegName2: 城市名称
        # @type RegName2: String

        attr_accessor :Id, :SourceIp, :TargetIp, :Protocol, :Port, :Strategy, :Detail, :Count, :OrderIndex, :LogId, :Status, :SrcType, :DstType, :Uuid, :Invalid, :IsRegion, :CloudCode, :AutoTask, :InstanceName, :RegionCode, :Country, :City, :RegName1, :RegName2

        def initialize(id=nil, sourceip=nil, targetip=nil, protocol=nil, port=nil, strategy=nil, detail=nil, count=nil, orderindex=nil, logid=nil, status=nil, srctype=nil, dsttype=nil, uuid=nil, invalid=nil, isregion=nil, cloudcode=nil, autotask=nil, instancename=nil, regioncode=nil, country=nil, city=nil, regname1=nil, regname2=nil)
          @Id = id
          @SourceIp = sourceip
          @TargetIp = targetip
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @Count = count
          @OrderIndex = orderindex
          @LogId = logid
          @Status = status
          @SrcType = srctype
          @DstType = dsttype
          @Uuid = uuid
          @Invalid = invalid
          @IsRegion = isregion
          @CloudCode = cloudcode
          @AutoTask = autotask
          @InstanceName = instancename
          @RegionCode = regioncode
          @Country = country
          @City = city
          @RegName1 = regname1
          @RegName2 = regname2
        end

        def deserialize(params)
          @Id = params['Id']
          @SourceIp = params['SourceIp']
          @TargetIp = params['TargetIp']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @Count = params['Count']
          @OrderIndex = params['OrderIndex']
          @LogId = params['LogId']
          @Status = params['Status']
          @SrcType = params['SrcType']
          @DstType = params['DstType']
          @Uuid = params['Uuid']
          @Invalid = params['Invalid']
          @IsRegion = params['IsRegion']
          @CloudCode = params['CloudCode']
          @AutoTask = params['AutoTask']
          @InstanceName = params['InstanceName']
          @RegionCode = params['RegionCode']
          @Country = params['Country']
          @City = params['City']
          @RegName1 = params['RegName1']
          @RegName2 = params['RegName2']
        end
      end

      # AddAclRule请求参数结构体
      class AddAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 需要添加的访问控制规则列表
        # @type Rules: Array
        # @param From: 添加规则的来源，一般不需要使用，值insert_rule 表示插入指定位置的规则；值batch_import 表示批量导入规则；为空时表示添加规则
        # @type From: String

        attr_accessor :Rules, :From

        def initialize(rules=nil, from=nil)
          @Rules = rules
          @From = from
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              createruleitem_tmp = CreateRuleItem.new
              createruleitem_tmp.deserialize(i)
              @Rules << createruleitem_tmp
            end
          end
          @From = params['From']
        end
      end

      # AddAclRule返回参数结构体
      class AddAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 创建成功后返回新策略ID列表
        # @type RuleUuid: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :RequestId

        def initialize(ruleuuid=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # AddEnterpriseSecurityGroupRules请求参数结构体
      class AddEnterpriseSecurityGroupRulesRequest < TencentCloud::Common::AbstractModel
        # @param Data: 创建规则数据
        # @type Data: Array
        # @param Type: 添加类型，0：添加到最后，1：添加到最前；2：中间插入；默认0添加到最后
        # @type Type: Integer
        # @param ClientToken: 保证请求幂等性。从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符，且不能超过64个字符。
        # @type ClientToken: String
        # @param IsDelay: （IsDelay为老版参数，新版无需输入）是否延迟下发，1则延迟下发，否则立即下发
        # @type IsDelay: Integer
        # @param From: 来源 默认空 覆盖导入是 batch_import_cover
        # @type From: String
        # @param IsUseId: 是否复用rule id，1为是，默认不需要
        # @type IsUseId: Integer

        attr_accessor :Data, :Type, :ClientToken, :IsDelay, :From, :IsUseId

        def initialize(data=nil, type=nil, clienttoken=nil, isdelay=nil, from=nil, isuseid=nil)
          @Data = data
          @Type = type
          @ClientToken = clienttoken
          @IsDelay = isdelay
          @From = from
          @IsUseId = isuseid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygrouprule_tmp = SecurityGroupRule.new
              securitygrouprule_tmp.deserialize(i)
              @Data << securitygrouprule_tmp
            end
          end
          @Type = params['Type']
          @ClientToken = params['ClientToken']
          @IsDelay = params['IsDelay']
          @From = params['From']
          @IsUseId = params['IsUseId']
        end
      end

      # AddEnterpriseSecurityGroupRules返回参数结构体
      class AddEnterpriseSecurityGroupRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：添加成功，非0：添加失败
        # @type Status: Integer
        # @param Rules: 添加成功的规则详情
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Rules, :RequestId

        def initialize(status=nil, rules=nil, requestid=nil)
          @Status = status
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              securitygroupsimplifyrule_tmp = SecurityGroupSimplifyRule.new
              securitygroupsimplifyrule_tmp.deserialize(i)
              @Rules << securitygroupsimplifyrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AddNatAcRule请求参数结构体
      class AddNatAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 需要添加的nat访问控制规则列表
        # @type Rules: Array
        # @param From: 添加规则的来源，一般不需要使用，值insert_rule 表示插入指定位置的规则；值batch_import 表示批量导入规则；为空时表示添加规则
        # @type From: String

        attr_accessor :Rules, :From

        def initialize(rules=nil, from=nil)
          @Rules = rules
          @From = from
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              createnatruleitem_tmp = CreateNatRuleItem.new
              createnatruleitem_tmp.deserialize(i)
              @Rules << createnatruleitem_tmp
            end
          end
          @From = params['From']
        end
      end

      # AddNatAcRule返回参数结构体
      class AddNatAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 创建成功后返回新策略ID列表
        # @type RuleUuid: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :RequestId

        def initialize(ruleuuid=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # AddVpcAcRule请求参数结构体
      class AddVpcAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 需要添加的vpc内网间规则列表
        # @type Rules: Array
        # @param From: 添加规则的来源，一般不需要使用，值insert_rule 表示插入指定位置的规则；值batch_import 表示批量导入规则；为空时表示添加规则
        # @type From: String

        attr_accessor :Rules, :From

        def initialize(rules=nil, from=nil)
          @Rules = rules
          @From = from
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              vpcruleitem_tmp = VpcRuleItem.new
              vpcruleitem_tmp.deserialize(i)
              @Rules << vpcruleitem_tmp
            end
          end
          @From = params['From']
        end
      end

      # AddVpcAcRule返回参数结构体
      class AddVpcAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuids: 创建成功后返回新策略ID列表
        # @type RuleUuids: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuids, :RequestId

        def initialize(ruleuuids=nil, requestid=nil)
          @RuleUuids = ruleuuids
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuids = params['RuleUuids']
          @RequestId = params['RequestId']
        end
      end

      # AssetZone
      class AssetZone < TencentCloud::Common::AbstractModel
        # @param Zone: 地域
        # @type Zone: String
        # @param ZoneEng: 地域英文
        # @type ZoneEng: String

        attr_accessor :Zone, :ZoneEng

        def initialize(zone=nil, zoneeng=nil)
          @Zone = zone
          @ZoneEng = zoneeng
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneEng = params['ZoneEng']
        end
      end

      # 企业安全组关联实例信息
      class AssociatedInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Type: 实例类型，3是cvm实例,4是clb实例,5是eni实例,6是云数据库
        # @type Type: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param Ip: 内网IP
        # @type Ip: String
        # @param SecurityGroupCount: 关联安全组数量
        # @type SecurityGroupCount: Integer
        # @param SecurityGroupRuleCount: 关联安全组规则数量
        # @type SecurityGroupRuleCount: Integer
        # @param CdbId: 关联数据库代理Id
        # @type CdbId: String

        attr_accessor :InstanceId, :InstanceName, :Type, :VpcId, :VpcName, :PublicIp, :Ip, :SecurityGroupCount, :SecurityGroupRuleCount, :CdbId

        def initialize(instanceid=nil, instancename=nil, type=nil, vpcid=nil, vpcname=nil, publicip=nil, ip=nil, securitygroupcount=nil, securitygrouprulecount=nil, cdbid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Type = type
          @VpcId = vpcid
          @VpcName = vpcname
          @PublicIp = publicip
          @Ip = ip
          @SecurityGroupCount = securitygroupcount
          @SecurityGroupRuleCount = securitygrouprulecount
          @CdbId = cdbid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Type = params['Type']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @PublicIp = params['PublicIp']
          @Ip = params['Ip']
          @SecurityGroupCount = params['SecurityGroupCount']
          @SecurityGroupRuleCount = params['SecurityGroupRuleCount']
          @CdbId = params['CdbId']
        end
      end

      # 封禁列表和放通列表结构体
      class BanAndAllowRule < TencentCloud::Common::AbstractModel
        # @param Comment: 规则评论
        # @type Comment: String
        # @param CustomRule: 自定义白名单规则
        # @type CustomRule: :class:`Tencentcloud::Cfw.v20190904.models.CustomWhiteRule`
        # @param DirectionList: 0互联网出站 1互联网入站 5内网访问源 6内网访问目的
        # @type DirectionList: String
        # @param EndTime: 规则截止时间
        # @type EndTime: String
        # @param FwType: 放通的引擎: 1针对互联网边界 2针对nat防火墙 4针对vpc防火墙
        # @type FwType: Integer
        # @param Ioc: 封禁和放通对象
        # @type Ioc: String

        attr_accessor :Comment, :CustomRule, :DirectionList, :EndTime, :FwType, :Ioc

        def initialize(comment=nil, customrule=nil, directionlist=nil, endtime=nil, fwtype=nil, ioc=nil)
          @Comment = comment
          @CustomRule = customrule
          @DirectionList = directionlist
          @EndTime = endtime
          @FwType = fwtype
          @Ioc = ioc
        end

        def deserialize(params)
          @Comment = params['Comment']
          unless params['CustomRule'].nil?
            @CustomRule = CustomWhiteRule.new
            @CustomRule.deserialize(params['CustomRule'])
          end
          @DirectionList = params['DirectionList']
          @EndTime = params['EndTime']
          @FwType = params['FwType']
          @Ioc = params['Ioc']
        end
      end

      # 封禁列表和放通列表结构体
      class BanAndAllowRuleDel < TencentCloud::Common::AbstractModel
        # @param Ioc: 封禁和放通对象
        # @type Ioc: String
        # @param DirectionList: 0互联网出站 1互联网入站 5内网访问源 6内网访问目的 （DeleteBlockIgnoreRuleNew接口，该字段无效）
        # @type DirectionList: String
        # @param RuleType: 规则类型
        # RuleType: 1黑名单 2外部IP 3域名 4情报 5资产 6自定义规则  7入侵防御规则
        # @type RuleType: Integer

        attr_accessor :Ioc, :DirectionList, :RuleType

        def initialize(ioc=nil, directionlist=nil, ruletype=nil)
          @Ioc = ioc
          @DirectionList = directionlist
          @RuleType = ruletype
        end

        def deserialize(params)
          @Ioc = params['Ioc']
          @DirectionList = params['DirectionList']
          @RuleType = params['RuleType']
        end
      end

      # 规则关联的beta任务
      class BetaInfoByACL < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param LastTime: 上次执行时间
        # @type LastTime: String

        attr_accessor :TaskId, :TaskName, :LastTime

        def initialize(taskid=nil, taskname=nil, lasttime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @LastTime = lasttime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @LastTime = params['LastTime']
        end
      end

      # 入侵防御放通封禁规则
      class BlockIgnoreRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型，取值：1 封禁，2外部IP，3域名，4情报，5assets，6自定义策略，7入侵防御规则id （2-7属于白名单类型）
        # @type RuleType: Integer
        # @param Ioc: 规则ip或白名单内容
        # @type Ioc: String
        # @param IocName: 资产实例名称、自定义策略名称等
        # @type IocName: String
        # @param IocInfo: 白名单信息
        # @type IocInfo: String
        # @param Domain: 域名
        # @type Domain: String
        # @param IP: IP
        # @type IP: String
        # @param Level: 危险等级
        # @type Level: String
        # @param EventName: 来源事件名称
        # @type EventName: String
        # @param Direction: 方向：1入站，0出站
        # @type Direction: Integer
        # @param DirectionList: 所有方向聚合成字符串
        # @type DirectionList: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Address: 地理位置
        # @type Address: String
        # @param Action: 规则类型：1封禁，2放通
        # @type Action: Integer
        # @param StartTime: 规则生效开始时间
        # @type StartTime: String
        # @param EndTime: 规则生效结束时间
        # @type EndTime: String
        # @param IgnoreReason: 忽略原因
        # @type IgnoreReason: String
        # @param Source: 安全事件来源
        # @type Source: String
        # @param UniqueId: 规则id
        # @type UniqueId: String
        # @param MatchTimes: 规则命中次数
        # @type MatchTimes: Integer
        # @param Country: 国家
        # @type Country: String
        # @param Comment: 备注
        # @type Comment: String
        # @param LastHitTime: 上次命中时间
        # @type LastHitTime: String
        # @param CustomRule: 自定义规则细节
        # @type CustomRule: :class:`Tencentcloud::Cfw.v20190904.models.CustomWhiteRule`
        # @param FwType: 1 border 2 nat 4 vpc 8 border-serial
        # @type FwType: Integer

        attr_accessor :RuleType, :Ioc, :IocName, :IocInfo, :Domain, :IP, :Level, :EventName, :Direction, :DirectionList, :Protocol, :Address, :Action, :StartTime, :EndTime, :IgnoreReason, :Source, :UniqueId, :MatchTimes, :Country, :Comment, :LastHitTime, :CustomRule, :FwType

        def initialize(ruletype=nil, ioc=nil, iocname=nil, iocinfo=nil, domain=nil, ip=nil, level=nil, eventname=nil, direction=nil, directionlist=nil, protocol=nil, address=nil, action=nil, starttime=nil, endtime=nil, ignorereason=nil, source=nil, uniqueid=nil, matchtimes=nil, country=nil, comment=nil, lasthittime=nil, customrule=nil, fwtype=nil)
          @RuleType = ruletype
          @Ioc = ioc
          @IocName = iocname
          @IocInfo = iocinfo
          @Domain = domain
          @IP = ip
          @Level = level
          @EventName = eventname
          @Direction = direction
          @DirectionList = directionlist
          @Protocol = protocol
          @Address = address
          @Action = action
          @StartTime = starttime
          @EndTime = endtime
          @IgnoreReason = ignorereason
          @Source = source
          @UniqueId = uniqueid
          @MatchTimes = matchtimes
          @Country = country
          @Comment = comment
          @LastHitTime = lasthittime
          @CustomRule = customrule
          @FwType = fwtype
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @Ioc = params['Ioc']
          @IocName = params['IocName']
          @IocInfo = params['IocInfo']
          @Domain = params['Domain']
          @IP = params['IP']
          @Level = params['Level']
          @EventName = params['EventName']
          @Direction = params['Direction']
          @DirectionList = params['DirectionList']
          @Protocol = params['Protocol']
          @Address = params['Address']
          @Action = params['Action']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IgnoreReason = params['IgnoreReason']
          @Source = params['Source']
          @UniqueId = params['UniqueId']
          @MatchTimes = params['MatchTimes']
          @Country = params['Country']
          @Comment = params['Comment']
          @LastHitTime = params['LastHitTime']
          unless params['CustomRule'].nil?
            @CustomRule = CustomWhiteRule.new
            @CustomRule.deserialize(params['CustomRule'])
          end
          @FwType = params['FwType']
        end
      end

      # NAT防火墙Dnat规则
      class CfwNatDnatRule < TencentCloud::Common::AbstractModel
        # @param IpProtocol: 网络协议，可选值：TCP、UDP。
        # @type IpProtocol: String
        # @param PublicIpAddress: 弹性IP。
        # @type PublicIpAddress: String
        # @param PublicPort: 公网端口。
        # @type PublicPort: Integer
        # @param PrivateIpAddress: 内网地址。
        # @type PrivateIpAddress: String
        # @param PrivatePort: 内网端口。
        # @type PrivatePort: Integer
        # @param Description: NAT防火墙转发规则描述。
        # @type Description: String

        attr_accessor :IpProtocol, :PublicIpAddress, :PublicPort, :PrivateIpAddress, :PrivatePort, :Description

        def initialize(ipprotocol=nil, publicipaddress=nil, publicport=nil, privateipaddress=nil, privateport=nil, description=nil)
          @IpProtocol = ipprotocol
          @PublicIpAddress = publicipaddress
          @PublicPort = publicport
          @PrivateIpAddress = privateipaddress
          @PrivatePort = privateport
          @Description = description
        end

        def deserialize(params)
          @IpProtocol = params['IpProtocol']
          @PublicIpAddress = params['PublicIpAddress']
          @PublicPort = params['PublicPort']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PrivatePort = params['PrivatePort']
          @Description = params['Description']
        end
      end

      # 通用的列表检索过滤选项
      class CommonFilter < TencentCloud::Common::AbstractModel
        # @param Name: 检索的键值
        # @type Name: String
        # @param OperatorType: 枚举类型，代表Name与Values之间的匹配关系
        # enum FilterOperatorType {
        #     //等于
        #     FILTER_OPERATOR_TYPE_EQUAL = 1;
        #     //大于
        #     FILTER_OPERATOR_TYPE_GREATER = 2;
        #     //小于
        #     FILTER_OPERATOR_TYPE_LESS = 3;
        #     //大于等于
        #     FILTER_OPERATOR_TYPE_GREATER_EQ = 4;
        #     //小于等于
        #     FILTER_OPERATOR_TYPE_LESS_EQ = 5;
        #     //不等于
        #     FILTER_OPERATOR_TYPE_NO_EQ = 6;
        #     //not in
        #     FILTER_OPERATOR_TYPE_NOT_IN = 8;
        #     //模糊匹配
        #     FILTER_OPERATOR_TYPE_FUZZINESS = 9;
        # }
        # @type OperatorType: Integer
        # @param Values: 检索的值，各检索值间为OR关系
        # @type Values: Array

        attr_accessor :Name, :OperatorType, :Values

        def initialize(name=nil, operatortype=nil, values=nil)
          @Name = name
          @OperatorType = operatortype
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @OperatorType = params['OperatorType']
          @Values = params['Values']
        end
      end

      # CreateAcRules请求参数结构体
      class CreateAcRulesRequest < TencentCloud::Common::AbstractModel
        # @param Data: 创建规则数据
        # @type Data: Array
        # @param Type: 0：添加（默认），1：插入
        # @type Type: Integer
        # @param EdgeId: 边id
        # @type EdgeId: String
        # @param Enable: 访问控制规则状态
        # @type Enable: Integer
        # @param Overwrite: 0：添加，1：覆盖
        # @type Overwrite: Integer
        # @param InstanceId: NAT实例ID, 参数Area存在的时候这个必传
        # @type InstanceId: String
        # @param From: portScan: 来自于端口扫描, patchImport: 来自于批量导入
        # @type From: String
        # @param Area: NAT地域
        # @type Area: String

        attr_accessor :Data, :Type, :EdgeId, :Enable, :Overwrite, :InstanceId, :From, :Area

        def initialize(data=nil, type=nil, edgeid=nil, enable=nil, overwrite=nil, instanceid=nil, from=nil, area=nil)
          @Data = data
          @Type = type
          @EdgeId = edgeid
          @Enable = enable
          @Overwrite = overwrite
          @InstanceId = instanceid
          @From = from
          @Area = area
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ruleinfodata_tmp = RuleInfoData.new
              ruleinfodata_tmp.deserialize(i)
              @Data << ruleinfodata_tmp
            end
          end
          @Type = params['Type']
          @EdgeId = params['EdgeId']
          @Enable = params['Enable']
          @Overwrite = params['Overwrite']
          @InstanceId = params['InstanceId']
          @From = params['From']
          @Area = params['Area']
        end
      end

      # CreateAcRules返回参数结构体
      class CreateAcRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0:操作成功
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # @type Info: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId

        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # CreateAddressTemplate请求参数结构体
      class CreateAddressTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模板名称
        # @type Name: String
        # @param Detail: 模板描述
        # @type Detail: String
        # @param IpString: Type为1，ip模板eg：1.1.1.1,2.2.2.2；
        # Type为5，域名模板eg：www.qq.com,www.tencent.com
        # @type IpString: String
        # @param Type: 1 ip模板
        # 5 域名模板
        # 6 协议端口模板
        # @type Type: Integer
        # @param ProtocolType: 协议端口模板，协议类型，4:4层协议，7:7层协议，Type=6时必填
        # @type ProtocolType: String
        # @param IpVersion: IP版本,0 IPV4;1 IPV6
        # @type IpVersion: Integer

        attr_accessor :Name, :Detail, :IpString, :Type, :ProtocolType, :IpVersion

        def initialize(name=nil, detail=nil, ipstring=nil, type=nil, protocoltype=nil, ipversion=nil)
          @Name = name
          @Detail = detail
          @IpString = ipstring
          @Type = type
          @ProtocolType = protocoltype
          @IpVersion = ipversion
        end

        def deserialize(params)
          @Name = params['Name']
          @Detail = params['Detail']
          @IpString = params['IpString']
          @Type = params['Type']
          @ProtocolType = params['ProtocolType']
          @IpVersion = params['IpVersion']
        end
      end

      # CreateAddressTemplate返回参数结构体
      class CreateAddressTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 创建结果,0成功
        # @type Status: Integer
        # @param Uuid: 唯一Id
        # @type Uuid: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Uuid, :RequestId

        def initialize(status=nil, uuid=nil, requestid=nil)
          @Status = status
          @Uuid = uuid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Uuid = params['Uuid']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlertCenterIsolate请求参数结构体
      class CreateAlertCenterIsolateRequest < TencentCloud::Common::AbstractModel
        # @param HandleAssetList: 处置对象,资产列表
        # @type HandleAssetList: Array
        # @param HandleTime: 处置时间
        # 1  1天
        # 7   7天
        # -2 永久
        # @type HandleTime: Integer
        # @param AlertDirection: 当前日志方向： 0 出向 1 入向
        # @type AlertDirection: Integer
        # @param IsolateType: 隔离类型
        # 1 互联网入站
        # 2 互联网出站
        # 4 内网访问
        # @type IsolateType: Array
        # @param OmMode: 运维模式 1 IP白名单 2 身份认证  0 非运维模式
        # @type OmMode: Integer

        attr_accessor :HandleAssetList, :HandleTime, :AlertDirection, :IsolateType, :OmMode

        def initialize(handleassetlist=nil, handletime=nil, alertdirection=nil, isolatetype=nil, ommode=nil)
          @HandleAssetList = handleassetlist
          @HandleTime = handletime
          @AlertDirection = alertdirection
          @IsolateType = isolatetype
          @OmMode = ommode
        end

        def deserialize(params)
          @HandleAssetList = params['HandleAssetList']
          @HandleTime = params['HandleTime']
          @AlertDirection = params['AlertDirection']
          @IsolateType = params['IsolateType']
          @OmMode = params['OmMode']
        end
      end

      # CreateAlertCenterIsolate返回参数结构体
      class CreateAlertCenterIsolateResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回状态码：
        # 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息：
        # success 成功
        # 其他
        # @type ReturnMsg: String
        # @param Status: 处置状态码：
        # 0  处置成功
        # -1 通用错误，不用处理
        # -3 表示重复，需重新刷新列表
        # 其他
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :ReturnMsg, :Status, :RequestId

        def initialize(returncode=nil, returnmsg=nil, status=nil, requestid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlertCenterOmit请求参数结构体
      class CreateAlertCenterOmitRequest < TencentCloud::Common::AbstractModel
        # @param HandleIdList: 处置对象,ID列表，  IdLists和IpList二选一
        # @type HandleIdList: Array
        # @param TableType: 忽略数据来源：
        # AlertTable 告警中心  InterceptionTable拦截列表
        # @type TableType: String

        attr_accessor :HandleIdList, :TableType

        def initialize(handleidlist=nil, tabletype=nil)
          @HandleIdList = handleidlist
          @TableType = tabletype
        end

        def deserialize(params)
          @HandleIdList = params['HandleIdList']
          @TableType = params['TableType']
        end
      end

      # CreateAlertCenterOmit返回参数结构体
      class CreateAlertCenterOmitResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回状态码：
        # 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息：
        # success 成功
        # 其他
        # @type ReturnMsg: String
        # @param Status: 处置状态码：
        # 0  处置成功
        # -1 通用错误，不用处理
        # -3 表示重复，需重新刷新列表
        # 其他
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :ReturnMsg, :Status, :RequestId

        def initialize(returncode=nil, returnmsg=nil, status=nil, requestid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlertCenterRule请求参数结构体
      class CreateAlertCenterRuleRequest < TencentCloud::Common::AbstractModel
        # @param HandleTime: 处置时间
        # 1  1天
        # 7   7天
        # -2 永久
        # @type HandleTime: Integer
        # @param HandleType: 处置类型
        # 当HandleIdList 不为空时：1封禁 2放通
        # 当HandleIpList 不为空时：3放通 4封禁
        # @type HandleType: Integer
        # @param AlertDirection: 当前日志方向： 0 出向 1 入向
        # @type AlertDirection: Integer
        # @param HandleDirection: 处置方向： 0出向 1入向 0,1出入向 3内网
        # @type HandleDirection: String
        # @param HandleIdList: 处置对象,ID列表，  IdLists和IpList二选一
        # @type HandleIdList: Array
        # @param HandleIpList: 处置对象,IP列表，  IdLists和IpList二选一
        # @type HandleIpList: Array
        # @param HandleComment: 处置描述
        # @type HandleComment: String
        # @param IgnoreReason: 放通原因:
        # 0默认 1重复 2误报 3紧急放通
        # @type IgnoreReason: Integer
        # @param BlockDomain: 封禁域名-保留字段
        # @type BlockDomain: String

        attr_accessor :HandleTime, :HandleType, :AlertDirection, :HandleDirection, :HandleIdList, :HandleIpList, :HandleComment, :IgnoreReason, :BlockDomain

        def initialize(handletime=nil, handletype=nil, alertdirection=nil, handledirection=nil, handleidlist=nil, handleiplist=nil, handlecomment=nil, ignorereason=nil, blockdomain=nil)
          @HandleTime = handletime
          @HandleType = handletype
          @AlertDirection = alertdirection
          @HandleDirection = handledirection
          @HandleIdList = handleidlist
          @HandleIpList = handleiplist
          @HandleComment = handlecomment
          @IgnoreReason = ignorereason
          @BlockDomain = blockdomain
        end

        def deserialize(params)
          @HandleTime = params['HandleTime']
          @HandleType = params['HandleType']
          @AlertDirection = params['AlertDirection']
          @HandleDirection = params['HandleDirection']
          @HandleIdList = params['HandleIdList']
          @HandleIpList = params['HandleIpList']
          @HandleComment = params['HandleComment']
          @IgnoreReason = params['IgnoreReason']
          @BlockDomain = params['BlockDomain']
        end
      end

      # CreateAlertCenterRule返回参数结构体
      class CreateAlertCenterRuleResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回状态码：
        # 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息：
        # success 成功
        # 其他
        # @type ReturnMsg: String
        # @param Status: 处置状态码：
        # 0  处置成功
        # -1 通用错误，不用处理
        # -3 表示重复，需重新刷新列表
        # 其他
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :ReturnMsg, :Status, :RequestId

        def initialize(returncode=nil, returnmsg=nil, status=nil, requestid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateBlockIgnoreRuleList请求参数结构体
      class CreateBlockIgnoreRuleListRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param RuleType: 规则类型，1封禁，2放通，不支持域名封禁
        # @type RuleType: Integer
        # @param CoverDuplicate: 是否覆盖重复数据，1覆盖，非1不覆盖，跳过重复数据
        # @type CoverDuplicate: Integer

        attr_accessor :Rules, :RuleType, :CoverDuplicate

        def initialize(rules=nil, ruletype=nil, coverduplicate=nil)
          @Rules = rules
          @RuleType = ruletype
          @CoverDuplicate = coverduplicate
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              intrusiondefenserule_tmp = IntrusionDefenseRule.new
              intrusiondefenserule_tmp.deserialize(i)
              @Rules << intrusiondefenserule_tmp
            end
          end
          @RuleType = params['RuleType']
          @CoverDuplicate = params['CoverDuplicate']
        end
      end

      # CreateBlockIgnoreRuleList返回参数结构体
      class CreateBlockIgnoreRuleListResponse < TencentCloud::Common::AbstractModel
        # @param List: 成功返回
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              ioclistdata_tmp = IocListData.new
              ioclistdata_tmp.deserialize(i)
              @List << ioclistdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateBlockIgnoreRuleNew请求参数结构体
      class CreateBlockIgnoreRuleNewRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 非自定义类型规则列表
        # @type Rules: Array
        # @param RuleType: RuleType: 1黑名单 2外部IP 3域名 4情报 5资产 6自定义规则  7入侵防御规则
        # @type RuleType: Integer
        # @param CoverDuplicate: 是否覆盖重复数据，1覆盖，非1不覆盖，跳过重复数据
        # @type CoverDuplicate: Integer

        attr_accessor :Rules, :RuleType, :CoverDuplicate

        def initialize(rules=nil, ruletype=nil, coverduplicate=nil)
          @Rules = rules
          @RuleType = ruletype
          @CoverDuplicate = coverduplicate
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              banandallowrule_tmp = BanAndAllowRule.new
              banandallowrule_tmp.deserialize(i)
              @Rules << banandallowrule_tmp
            end
          end
          @RuleType = params['RuleType']
          @CoverDuplicate = params['CoverDuplicate']
        end
      end

      # CreateBlockIgnoreRuleNew返回参数结构体
      class CreateBlockIgnoreRuleNewResponse < TencentCloud::Common::AbstractModel
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

      # CreateChooseVpcs请求参数结构体
      class CreateChooseVpcsRequest < TencentCloud::Common::AbstractModel
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AllZoneList: zone列表
        # @type AllZoneList: Array

        attr_accessor :VpcList, :AllZoneList

        def initialize(vpclist=nil, allzonelist=nil)
          @VpcList = vpclist
          @AllZoneList = allzonelist
        end

        def deserialize(params)
          @VpcList = params['VpcList']
          unless params['AllZoneList'].nil?
            @AllZoneList = []
            params['AllZoneList'].each do |i|
              vpczonedata_tmp = VpcZoneData.new
              vpczonedata_tmp.deserialize(i)
              @AllZoneList << vpczonedata_tmp
            end
          end
        end
      end

      # CreateChooseVpcs返回参数结构体
      class CreateChooseVpcsResponse < TencentCloud::Common::AbstractModel
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

      # CreateDatabaseWhiteListRules请求参数结构体
      class CreateDatabaseWhiteListRulesRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseWhiteListRuleData: 创建白名单数据
        # @type DatabaseWhiteListRuleData: Array

        attr_accessor :DatabaseWhiteListRuleData

        def initialize(databasewhitelistruledata=nil)
          @DatabaseWhiteListRuleData = databasewhitelistruledata
        end

        def deserialize(params)
          unless params['DatabaseWhiteListRuleData'].nil?
            @DatabaseWhiteListRuleData = []
            params['DatabaseWhiteListRuleData'].each do |i|
              databasewhitelistruledata_tmp = DatabaseWhiteListRuleData.new
              databasewhitelistruledata_tmp.deserialize(i)
              @DatabaseWhiteListRuleData << databasewhitelistruledata_tmp
            end
          end
        end
      end

      # CreateDatabaseWhiteListRules返回参数结构体
      class CreateDatabaseWhiteListRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0:添加成功，非0：添加失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateIdsWhiteRule请求参数结构体
      class CreateIdsWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param IdsRuleId: 入侵防御规则ID
        # @type IdsRuleId: String
        # @param WhiteRuleType: 白名单类型：
        # src 针对源放通
        # dst 针对目的放通
        # srcdst 针对源和目的放通
        # @type WhiteRuleType: String
        # @param FwType: 白名单生效防火墙范围：
        # 1 边界防火墙
        # 2 nat防火墙
        # 4 vpc防火墙
        # 7 = 1+2+4  所有防火墙
        # @type FwType: Integer
        # @param SrcIp: 源IP
        # @type SrcIp: String
        # @param DstIp: 目的IP
        # @type DstIp: String

        attr_accessor :IdsRuleId, :WhiteRuleType, :FwType, :SrcIp, :DstIp

        def initialize(idsruleid=nil, whiteruletype=nil, fwtype=nil, srcip=nil, dstip=nil)
          @IdsRuleId = idsruleid
          @WhiteRuleType = whiteruletype
          @FwType = fwtype
          @SrcIp = srcip
          @DstIp = dstip
        end

        def deserialize(params)
          @IdsRuleId = params['IdsRuleId']
          @WhiteRuleType = params['WhiteRuleType']
          @FwType = params['FwType']
          @SrcIp = params['SrcIp']
          @DstIp = params['DstIp']
        end
      end

      # CreateIdsWhiteRule返回参数结构体
      class CreateIdsWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回状态码：
        # 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息：
        # success 成功
        # 其他
        # @type ReturnMsg: String
        # @param Status: 返回状态码：
        # 0  处置成功
        # -1 通用错误，不用处理
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :ReturnMsg, :Status, :RequestId

        def initialize(returncode=nil, returnmsg=nil, status=nil, requestid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateNatFwInstance请求参数结构体
      class CreateNatFwInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 防火墙实例名称
        # @type Name: String
        # @param Width: 带宽
        # @type Width: Integer
        # @param Mode: 模式 1：接入模式；0：新增模式
        # @type Mode: Integer
        # @param NewModeItems: 新增模式传递参数，其中NewModeItems和NatgwList至少传递一种。
        # @type NewModeItems: :class:`Tencentcloud::Cfw.v20190904.models.NewModeItems`
        # @param NatGwList: 接入模式接入的nat网关列表，其中NewModeItems和NatgwList至少传递一种。
        # @type NatGwList: Array
        # @param Zone: 主可用区，为空则选择默认可用区
        # @type Zone: String
        # @param ZoneBak: 备可用区，为空则选择默认可用区
        # @type ZoneBak: String
        # @param CrossAZone: 异地灾备 1：使用异地灾备；0：不使用异地灾备；为空则默认不使用异地灾备
        # @type CrossAZone: Integer
        # @param FwCidrInfo: 指定防火墙使用网段信息
        # @type FwCidrInfo: :class:`Tencentcloud::Cfw.v20190904.models.FwCidrInfo`

        attr_accessor :Name, :Width, :Mode, :NewModeItems, :NatGwList, :Zone, :ZoneBak, :CrossAZone, :FwCidrInfo

        def initialize(name=nil, width=nil, mode=nil, newmodeitems=nil, natgwlist=nil, zone=nil, zonebak=nil, crossazone=nil, fwcidrinfo=nil)
          @Name = name
          @Width = width
          @Mode = mode
          @NewModeItems = newmodeitems
          @NatGwList = natgwlist
          @Zone = zone
          @ZoneBak = zonebak
          @CrossAZone = crossazone
          @FwCidrInfo = fwcidrinfo
        end

        def deserialize(params)
          @Name = params['Name']
          @Width = params['Width']
          @Mode = params['Mode']
          unless params['NewModeItems'].nil?
            @NewModeItems = NewModeItems.new
            @NewModeItems.deserialize(params['NewModeItems'])
          end
          @NatGwList = params['NatGwList']
          @Zone = params['Zone']
          @ZoneBak = params['ZoneBak']
          @CrossAZone = params['CrossAZone']
          unless params['FwCidrInfo'].nil?
            @FwCidrInfo = FwCidrInfo.new
            @FwCidrInfo.deserialize(params['FwCidrInfo'])
          end
        end
      end

      # CreateNatFwInstance返回参数结构体
      class CreateNatFwInstanceResponse < TencentCloud::Common::AbstractModel
        # @param CfwInsId: 防火墙实例id
        # @type CfwInsId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CfwInsId, :RequestId

        def initialize(cfwinsid=nil, requestid=nil)
          @CfwInsId = cfwinsid
          @RequestId = requestid
        end

        def deserialize(params)
          @CfwInsId = params['CfwInsId']
          @RequestId = params['RequestId']
        end
      end

      # CreateNatFwInstanceWithDomain请求参数结构体
      class CreateNatFwInstanceWithDomainRequest < TencentCloud::Common::AbstractModel
        # @param Name: 防火墙实例名称
        # @type Name: String
        # @param Width: 带宽
        # @type Width: Integer
        # @param Mode: 模式 1：接入模式；0：新增模式
        # @type Mode: Integer
        # @param NewModeItems: 新增模式传递参数，其中NewModeItems和NatgwList至少传递一种。
        # @type NewModeItems: :class:`Tencentcloud::Cfw.v20190904.models.NewModeItems`
        # @param NatGwList: 接入模式接入的nat网关列表，其中NewModeItems和NatgwList至少传递一种。
        # @type NatGwList: Array
        # @param Zone: 主可用区，为空则选择默认可用区
        # @type Zone: String
        # @param ZoneBak: 备可用区，为空则选择默认可用区
        # @type ZoneBak: String
        # @param CrossAZone: 异地灾备 1：使用异地灾备；0：不使用异地灾备；为空则默认不使用异地灾备
        # @type CrossAZone: Integer
        # @param IsCreateDomain: 0不创建域名,1创建域名
        # @type IsCreateDomain: Integer
        # @param Domain: 如果要创建域名则必填
        # @type Domain: String
        # @param FwCidrInfo: 指定防火墙使用网段信息
        # @type FwCidrInfo: :class:`Tencentcloud::Cfw.v20190904.models.FwCidrInfo`

        attr_accessor :Name, :Width, :Mode, :NewModeItems, :NatGwList, :Zone, :ZoneBak, :CrossAZone, :IsCreateDomain, :Domain, :FwCidrInfo

        def initialize(name=nil, width=nil, mode=nil, newmodeitems=nil, natgwlist=nil, zone=nil, zonebak=nil, crossazone=nil, iscreatedomain=nil, domain=nil, fwcidrinfo=nil)
          @Name = name
          @Width = width
          @Mode = mode
          @NewModeItems = newmodeitems
          @NatGwList = natgwlist
          @Zone = zone
          @ZoneBak = zonebak
          @CrossAZone = crossazone
          @IsCreateDomain = iscreatedomain
          @Domain = domain
          @FwCidrInfo = fwcidrinfo
        end

        def deserialize(params)
          @Name = params['Name']
          @Width = params['Width']
          @Mode = params['Mode']
          unless params['NewModeItems'].nil?
            @NewModeItems = NewModeItems.new
            @NewModeItems.deserialize(params['NewModeItems'])
          end
          @NatGwList = params['NatGwList']
          @Zone = params['Zone']
          @ZoneBak = params['ZoneBak']
          @CrossAZone = params['CrossAZone']
          @IsCreateDomain = params['IsCreateDomain']
          @Domain = params['Domain']
          unless params['FwCidrInfo'].nil?
            @FwCidrInfo = FwCidrInfo.new
            @FwCidrInfo.deserialize(params['FwCidrInfo'])
          end
        end
      end

      # CreateNatFwInstanceWithDomain返回参数结构体
      class CreateNatFwInstanceWithDomainResponse < TencentCloud::Common::AbstractModel
        # @param CfwInsId: nat实例信息
        # @type CfwInsId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CfwInsId, :RequestId

        def initialize(cfwinsid=nil, requestid=nil)
          @CfwInsId = cfwinsid
          @RequestId = requestid
        end

        def deserialize(params)
          @CfwInsId = params['CfwInsId']
          @RequestId = params['RequestId']
        end
      end

      # 创建NAT ACL规则参数结构
      class CreateNatRuleItem < TencentCloud::Common::AbstractModel
        # @param SourceContent: 访问源示例： net：IP/CIDR(192.168.0.2)
        # @type SourceContent: String
        # @param SourceType: 访问源类型：入向规则时类型可以为 ip,net,template,location；出向规则时可以为 ip,net,template,instance,group,tag
        # @type SourceType: String
        # @param TargetContent: 访问目的示例： net：IP/CIDR(192.168.0.2) domain：域名规则，例如*.qq.com
        # @type TargetContent: String
        # @param TargetType: 访问目的类型：入向规则时类型可以为ip,net,template,instance,group,tag；出向规则时可以为  ip,net,domain,template,location
        # @type TargetType: String
        # @param Protocol: 协议，可选的值： TCP UDP ICMP ANY HTTP HTTPS HTTP/HTTPS SMTP SMTPS SMTP/SMTPS FTP DNS
        # @type Protocol: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值： accept：放行 drop：拒绝 log：观察
        # @type RuleAction: String
        # @param Port: 访问控制策略的端口。取值： -1/-1：全部端口 80：80端口
        # @type Port: String
        # @param Direction: 规则方向：1，入站；0，出站
        # @type Direction: Integer
        # @param OrderIndex: 规则序号
        # @type OrderIndex: Integer
        # @param Enable: 规则状态，true表示启用，false表示禁用
        # @type Enable: String
        # @param Uuid: 规则对应的唯一id，创建规则时无需填写
        # @type Uuid: Integer
        # @param Description: 描述
        # @type Description: String
        # @param ParamTemplateId: 端口协议组ID
        # @type ParamTemplateId: String
        # @param InternalUuid: 内部id
        # @type InternalUuid: Integer
        # @param Scope: 规则生效的范围：ALL，全局生效；ap-guangzhou，生效的地域；cfwnat-xxx，生效基于实例维度
        # @type Scope: String

        attr_accessor :SourceContent, :SourceType, :TargetContent, :TargetType, :Protocol, :RuleAction, :Port, :Direction, :OrderIndex, :Enable, :Uuid, :Description, :ParamTemplateId, :InternalUuid, :Scope

        def initialize(sourcecontent=nil, sourcetype=nil, targetcontent=nil, targettype=nil, protocol=nil, ruleaction=nil, port=nil, direction=nil, orderindex=nil, enable=nil, uuid=nil, description=nil, paramtemplateid=nil, internaluuid=nil, scope=nil)
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @TargetContent = targetcontent
          @TargetType = targettype
          @Protocol = protocol
          @RuleAction = ruleaction
          @Port = port
          @Direction = direction
          @OrderIndex = orderindex
          @Enable = enable
          @Uuid = uuid
          @Description = description
          @ParamTemplateId = paramtemplateid
          @InternalUuid = internaluuid
          @Scope = scope
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @TargetContent = params['TargetContent']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @Port = params['Port']
          @Direction = params['Direction']
          @OrderIndex = params['OrderIndex']
          @Enable = params['Enable']
          @Uuid = params['Uuid']
          @Description = params['Description']
          @ParamTemplateId = params['ParamTemplateId']
          @InternalUuid = params['InternalUuid']
          @Scope = params['Scope']
        end
      end

      # 创建互联网边界规则参数结构
      class CreateRuleItem < TencentCloud::Common::AbstractModel
        # @param SourceContent: 访问源示例： net：IP/CIDR(192.168.0.2)
        # @type SourceContent: String
        # @param SourceType: 访问源类型：入向规则时类型可以为 ip,net,template,location；出向规则时可以为 ip,net,template,instance,group,tag
        # @type SourceType: String
        # @param TargetContent: 访问目的示例： net：IP/CIDR(192.168.0.2) domain：域名规则，例如*.qq.com
        # @type TargetContent: String
        # @param TargetType: 访问目的类型：入向规则时类型可以为ip,net,template,instance,group,tag；出向规则时可以为  ip,net,domain,template,location
        # @type TargetType: String
        # @param Protocol: 协议，可选的值： TCP UDP ICMP ANY HTTP HTTPS HTTP/HTTPS SMTP SMTPS SMTP/SMTPS FTP DNS
        # 1. 入方向  旁路防火墙/全局规则 仅支持TCP

        # 2.出方向  旁路防火墙/全局规则 仅支持TCP HTTP/HTTPS TLS/SSL

        # 3.domain  请选择七层协议 如HTTP/HTTPS
        # @type Protocol: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值： accept：放行 drop：拒绝 log：观察
        # @type RuleAction: String
        # @param Port: 访问控制策略的端口。取值： -1/-1：全部端口 80：80端口
        # @type Port: String
        # @param Direction: 规则方向：1，入站；0，出站
        # @type Direction: Integer
        # @param OrderIndex: 规则序号
        # @type OrderIndex: Integer
        # @param Uuid: 规则对应的唯一id，创建规则时无需填写
        # @type Uuid: Integer
        # @param Enable: 规则状态，true表示启用，false表示禁用
        # @type Enable: String
        # @param Description: 描述
        # @type Description: String
        # @param Scope: all
        # @type Scope: String
        # @param RuleSource: 0，正常规则添加；1，入侵检测添加
        # @type RuleSource: Integer
        # @param LogId: 告警Id
        # @type LogId: String
        # @param ParamTemplateId: 端都协议组ID
        # @type ParamTemplateId: String

        attr_accessor :SourceContent, :SourceType, :TargetContent, :TargetType, :Protocol, :RuleAction, :Port, :Direction, :OrderIndex, :Uuid, :Enable, :Description, :Scope, :RuleSource, :LogId, :ParamTemplateId

        def initialize(sourcecontent=nil, sourcetype=nil, targetcontent=nil, targettype=nil, protocol=nil, ruleaction=nil, port=nil, direction=nil, orderindex=nil, uuid=nil, enable=nil, description=nil, scope=nil, rulesource=nil, logid=nil, paramtemplateid=nil)
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @TargetContent = targetcontent
          @TargetType = targettype
          @Protocol = protocol
          @RuleAction = ruleaction
          @Port = port
          @Direction = direction
          @OrderIndex = orderindex
          @Uuid = uuid
          @Enable = enable
          @Description = description
          @Scope = scope
          @RuleSource = rulesource
          @LogId = logid
          @ParamTemplateId = paramtemplateid
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @TargetContent = params['TargetContent']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @Port = params['Port']
          @Direction = params['Direction']
          @OrderIndex = params['OrderIndex']
          @Uuid = params['Uuid']
          @Enable = params['Enable']
          @Description = params['Description']
          @Scope = params['Scope']
          @RuleSource = params['RuleSource']
          @LogId = params['LogId']
          @ParamTemplateId = params['ParamTemplateId']
        end
      end

      # CreateSecurityGroupRules请求参数结构体
      class CreateSecurityGroupRulesRequest < TencentCloud::Common::AbstractModel
        # @param Data: 添加的企业安全组规则数据
        # @type Data: Array
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param Type: 0：后插，1：前插，2：中插，默认0
        # @type Type: Integer
        # @param Enable: 添加后是否启用规则，0：不启用，1：启用，默认1
        # @type Enable: Integer

        attr_accessor :Data, :Direction, :Type, :Enable

        def initialize(data=nil, direction=nil, type=nil, enable=nil)
          @Data = data
          @Direction = direction
          @Type = type
          @Enable = enable
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygrouplistdata_tmp = SecurityGroupListData.new
              securitygrouplistdata_tmp.deserialize(i)
              @Data << securitygrouplistdata_tmp
            end
          end
          @Direction = params['Direction']
          @Type = params['Type']
          @Enable = params['Enable']
        end
      end

      # CreateSecurityGroupRules返回参数结构体
      class CreateSecurityGroupRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：添加成功，非0：添加失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateVpcFwGroup请求参数结构体
      class CreateVpcFwGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: VPC防火墙(组)名称
        # @type Name: String
        # @param Mode: 模式 1：CCN云联网模式；0：私有网络模式 2: sase 模式 3：ccn 高级模式 4: 私有网络(跨租户单边模式)
        # @type Mode: Integer
        # @param VpcFwInstances: 防火墙(组)下的防火墙实例列表
        # @type VpcFwInstances: Array
        # @param SwitchMode: 防火墙实例的开关模式
        # 1: 单点互通
        # 2: 多点互通
        # 3: 全互通
        # 4: 自定义路由
        # @type SwitchMode: Integer
        # @param FwVpcCidr: auto 自动选择防火墙网段
        # 10.10.10.0/24 用户输入的防火墙网段
        # @type FwVpcCidr: String
        # @param CcnId: 云联网id ，适用于云联网模式
        # @type CcnId: String
        # @param FwCidrInfo: 指定防火墙使用网段信息
        # @type FwCidrInfo: :class:`Tencentcloud::Cfw.v20190904.models.FwCidrInfo`
        # @param CrossUserMode: 跨租户管理员模式  1管理员 2多账号
        # @type CrossUserMode: String

        attr_accessor :Name, :Mode, :VpcFwInstances, :SwitchMode, :FwVpcCidr, :CcnId, :FwCidrInfo, :CrossUserMode

        def initialize(name=nil, mode=nil, vpcfwinstances=nil, switchmode=nil, fwvpccidr=nil, ccnid=nil, fwcidrinfo=nil, crossusermode=nil)
          @Name = name
          @Mode = mode
          @VpcFwInstances = vpcfwinstances
          @SwitchMode = switchmode
          @FwVpcCidr = fwvpccidr
          @CcnId = ccnid
          @FwCidrInfo = fwcidrinfo
          @CrossUserMode = crossusermode
        end

        def deserialize(params)
          @Name = params['Name']
          @Mode = params['Mode']
          unless params['VpcFwInstances'].nil?
            @VpcFwInstances = []
            params['VpcFwInstances'].each do |i|
              vpcfwinstance_tmp = VpcFwInstance.new
              vpcfwinstance_tmp.deserialize(i)
              @VpcFwInstances << vpcfwinstance_tmp
            end
          end
          @SwitchMode = params['SwitchMode']
          @FwVpcCidr = params['FwVpcCidr']
          @CcnId = params['CcnId']
          unless params['FwCidrInfo'].nil?
            @FwCidrInfo = FwCidrInfo.new
            @FwCidrInfo.deserialize(params['FwCidrInfo'])
          end
          @CrossUserMode = params['CrossUserMode']
        end
      end

      # CreateVpcFwGroup返回参数结构体
      class CreateVpcFwGroupResponse < TencentCloud::Common::AbstractModel
        # @param FwGroupId: 防火墙组ID
        # @type FwGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FwGroupId, :RequestId

        def initialize(fwgroupid=nil, requestid=nil)
          @FwGroupId = fwgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @FwGroupId = params['FwGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 自定义白名单规则
      class CustomWhiteRule < TencentCloud::Common::AbstractModel
        # @param DstIP: 访问目的
        # @type DstIP: String
        # @param IdsRuleId: 规则ID
        # @type IdsRuleId: String
        # @param IdsRuleName: 规则名称
        # @type IdsRuleName: String
        # @param SrcIP: 访问源
        # @type SrcIP: String

        attr_accessor :DstIP, :IdsRuleId, :IdsRuleName, :SrcIP

        def initialize(dstip=nil, idsruleid=nil, idsrulename=nil, srcip=nil)
          @DstIP = dstip
          @IdsRuleId = idsruleid
          @IdsRuleName = idsrulename
          @SrcIP = srcip
        end

        def deserialize(params)
          @DstIP = params['DstIP']
          @IdsRuleId = params['IdsRuleId']
          @IdsRuleName = params['IdsRuleName']
          @SrcIP = params['SrcIP']
        end
      end

      # 数据库白名单规则数据
      class DatabaseWhiteListRuleData < TencentCloud::Common::AbstractModel
        # @param SourceIp: 访问源
        # @type SourceIp: String
        # @param SourceType: 访问源类型，1 ip；6 实例；100 资源分组
        # @type SourceType: Integer
        # @param TargetIp: 访问目的
        # @type TargetIp: String
        # @param TargetType: 访问目的类型，1 ip；6 实例；100 资源分组
        # @type TargetType: Integer
        # @param Detail: 规则描述
        # @type Detail: String
        # @param IsRegionRule: 是否地域规则，0不是 1是
        # @type IsRegionRule: Integer
        # @param IsCloudRule: 是否云厂商规则，0不是 1 时
        # @type IsCloudRule: Integer
        # @param Enable: 是否启用，0 不启用，1启用
        # @type Enable: Integer
        # @param FirstLevelRegionCode: 地域码1
        # @type FirstLevelRegionCode: Integer
        # @param SecondLevelRegionCode: 地域码2
        # @type SecondLevelRegionCode: Integer
        # @param FirstLevelRegionName: 地域名称1
        # @type FirstLevelRegionName: String
        # @param SecondLevelRegionName: 地域名称2
        # @type SecondLevelRegionName: String
        # @param CloudCode: 云厂商码
        # @type CloudCode: String

        attr_accessor :SourceIp, :SourceType, :TargetIp, :TargetType, :Detail, :IsRegionRule, :IsCloudRule, :Enable, :FirstLevelRegionCode, :SecondLevelRegionCode, :FirstLevelRegionName, :SecondLevelRegionName, :CloudCode

        def initialize(sourceip=nil, sourcetype=nil, targetip=nil, targettype=nil, detail=nil, isregionrule=nil, iscloudrule=nil, enable=nil, firstlevelregioncode=nil, secondlevelregioncode=nil, firstlevelregionname=nil, secondlevelregionname=nil, cloudcode=nil)
          @SourceIp = sourceip
          @SourceType = sourcetype
          @TargetIp = targetip
          @TargetType = targettype
          @Detail = detail
          @IsRegionRule = isregionrule
          @IsCloudRule = iscloudrule
          @Enable = enable
          @FirstLevelRegionCode = firstlevelregioncode
          @SecondLevelRegionCode = secondlevelregioncode
          @FirstLevelRegionName = firstlevelregionname
          @SecondLevelRegionName = secondlevelregionname
          @CloudCode = cloudcode
        end

        def deserialize(params)
          @SourceIp = params['SourceIp']
          @SourceType = params['SourceType']
          @TargetIp = params['TargetIp']
          @TargetType = params['TargetType']
          @Detail = params['Detail']
          @IsRegionRule = params['IsRegionRule']
          @IsCloudRule = params['IsCloudRule']
          @Enable = params['Enable']
          @FirstLevelRegionCode = params['FirstLevelRegionCode']
          @SecondLevelRegionCode = params['SecondLevelRegionCode']
          @FirstLevelRegionName = params['FirstLevelRegionName']
          @SecondLevelRegionName = params['SecondLevelRegionName']
          @CloudCode = params['CloudCode']
        end
      end

      # DeleteAcRule请求参数结构体
      class DeleteAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 删除规则对应的id值, 对应获取规则列表接口的Id 值
        # @type Id: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param EdgeId: EdgeId值两个vpc间的边id
        # @type EdgeId: String
        # @param Area: NAT地域， 如ap-shanghai/ap-guangzhou/ap-chongqing等
        # @type Area: String

        attr_accessor :Id, :Direction, :EdgeId, :Area

        def initialize(id=nil, direction=nil, edgeid=nil, area=nil)
          @Id = id
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Id = params['Id']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # DeleteAcRule返回参数结构体
      class DeleteAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值 0: 删除成功, !0: 删除失败
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # @type Info: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId

        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAddressTemplate请求参数结构体
      class DeleteAddressTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 模板id
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DeleteAddressTemplate返回参数结构体
      class DeleteAddressTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 删除结果,0成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteAllAccessControlRule请求参数结构体
      class DeleteAllAccessControlRuleRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站  默认值是 0
        # @type Direction: Integer
        # @param EdgeId: VPC间防火墙开关ID  全部删除 EdgeId和Area只填写一个，不填写则不删除vpc间防火墙开关 ，默认值为‘’
        # @type EdgeId: String
        # @param Area: nat地域 全部删除 EdgeId和Area只填写一个，不填写则不删除nat防火墙开关 默认值为‘’
        # @type Area: String

        attr_accessor :Direction, :EdgeId, :Area

        def initialize(direction=nil, edgeid=nil, area=nil)
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # DeleteAllAccessControlRule返回参数结构体
      class DeleteAllAccessControlRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值 0: 修改成功, 非0: 修改失败
        # @type Status: Integer
        # @param Info: 删除了几条访问控制规则
        # @type Info: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId

        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DeleteBlockIgnoreRuleList请求参数结构体
      class DeleteBlockIgnoreRuleListRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param RuleType: 规则类型，1封禁，2放通，不支持域名封禁
        # @type RuleType: Integer

        attr_accessor :Rules, :RuleType

        def initialize(rules=nil, ruletype=nil)
          @Rules = rules
          @RuleType = ruletype
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ioclistdata_tmp = IocListData.new
              ioclistdata_tmp.deserialize(i)
              @Rules << ioclistdata_tmp
            end
          end
          @RuleType = params['RuleType']
        end
      end

      # DeleteBlockIgnoreRuleList返回参数结构体
      class DeleteBlockIgnoreRuleListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBlockIgnoreRuleNew请求参数结构体
      class DeleteBlockIgnoreRuleNewRequest < TencentCloud::Common::AbstractModel
        # @param DeleteAll: 是否删除全部
        # @type DeleteAll: Integer
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param RuleType: 封禁：1，放通：100，
        # 主要用于全部删除时区分列表类型
        # @type RuleType: Integer
        # @param ShowType: blocklist 封禁列表 whitelist 白名单列表
        # @type ShowType: String

        attr_accessor :DeleteAll, :Rules, :RuleType, :ShowType

        def initialize(deleteall=nil, rules=nil, ruletype=nil, showtype=nil)
          @DeleteAll = deleteall
          @Rules = rules
          @RuleType = ruletype
          @ShowType = showtype
        end

        def deserialize(params)
          @DeleteAll = params['DeleteAll']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              banandallowruledel_tmp = BanAndAllowRuleDel.new
              banandallowruledel_tmp.deserialize(i)
              @Rules << banandallowruledel_tmp
            end
          end
          @RuleType = params['RuleType']
          @ShowType = params['ShowType']
        end
      end

      # DeleteBlockIgnoreRuleNew返回参数结构体
      class DeleteBlockIgnoreRuleNewResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIdsWhiteRule请求参数结构体
      class DeleteIdsWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 入侵防御白名单id
        # 参考DescribeIdsWhiteRule接口返回的Id字段
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteIdsWhiteRule返回参数结构体
      class DeleteIdsWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回状态码：
        # 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息：
        # success 成功
        # 其他
        # @type ReturnMsg: String
        # @param Status: 返回状态码：
        # 0  处置成功
        # -1 通用错误，不用处理
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :ReturnMsg, :Status, :RequestId

        def initialize(returncode=nil, returnmsg=nil, status=nil, requestid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteNatFwInstance请求参数结构体
      class DeleteNatFwInstanceRequest < TencentCloud::Common::AbstractModel
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String

        attr_accessor :CfwInstance

        def initialize(cfwinstance=nil)
          @CfwInstance = cfwinstance
        end

        def deserialize(params)
          @CfwInstance = params['CfwInstance']
        end
      end

      # DeleteNatFwInstance返回参数结构体
      class DeleteNatFwInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRemoteAccessDomain请求参数结构体
      class DeleteRemoteAccessDomainRequest < TencentCloud::Common::AbstractModel
        # @param AccessDomainList: 域名列表
        # @type AccessDomainList: Array

        attr_accessor :AccessDomainList

        def initialize(accessdomainlist=nil)
          @AccessDomainList = accessdomainlist
        end

        def deserialize(params)
          @AccessDomainList = params['AccessDomainList']
        end
      end

      # DeleteRemoteAccessDomain返回参数结构体
      class DeleteRemoteAccessDomainResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值 0：删除成功，非 0：删除失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteResourceGroup请求参数结构体
      class DeleteResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 组id
        # @type GroupId: String

        attr_accessor :GroupId

        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteResourceGroup返回参数结构体
      class DeleteResourceGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityGroupRule请求参数结构体
      class DeleteSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 所需要删除规则的ID
        # @type Id: Integer
        # @param Area: 腾讯云地域的英文简写
        # @type Area: String
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param IsDelReverse: 是否删除反向规则，0：否，1：是
        # @type IsDelReverse: Integer

        attr_accessor :Id, :Area, :Direction, :IsDelReverse

        def initialize(id=nil, area=nil, direction=nil, isdelreverse=nil)
          @Id = id
          @Area = area
          @Direction = direction
          @IsDelReverse = isdelreverse
        end

        def deserialize(params)
          @Id = params['Id']
          @Area = params['Area']
          @Direction = params['Direction']
          @IsDelReverse = params['IsDelReverse']
        end
      end

      # DeleteSecurityGroupRule返回参数结构体
      class DeleteSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：成功，非0：失败
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # @type Info: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId

        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DeleteVpcFwGroup请求参数结构体
      class DeleteVpcFwGroupRequest < TencentCloud::Common::AbstractModel
        # @param FwGroupId: 防火墙(组)Id
        # @type FwGroupId: String
        # @param DeleteFwGroup: 是否删除整个防火墙(组)
        # 0：不删除防火墙(组)，只删除单独实例
        # 1：删除整个防火墙(组)
        # @type DeleteFwGroup: Integer
        # @param VpcFwInsList: 待删除的防火墙实例数组
        # @type VpcFwInsList: Array

        attr_accessor :FwGroupId, :DeleteFwGroup, :VpcFwInsList

        def initialize(fwgroupid=nil, deletefwgroup=nil, vpcfwinslist=nil)
          @FwGroupId = fwgroupid
          @DeleteFwGroup = deletefwgroup
          @VpcFwInsList = vpcfwinslist
        end

        def deserialize(params)
          @FwGroupId = params['FwGroupId']
          @DeleteFwGroup = params['DeleteFwGroup']
          @VpcFwInsList = params['VpcFwInsList']
        end
      end

      # DeleteVpcFwGroup返回参数结构体
      class DeleteVpcFwGroupResponse < TencentCloud::Common::AbstractModel
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

      # 访问控制列表对象
      class DescAcItem < TencentCloud::Common::AbstractModel
        # @param SourceContent: 访问源
        # @type SourceContent: String
        # @param TargetContent: 访问目的
        # @type TargetContent: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Port: 端口
        # @type Port: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值： accept：放行 drop：拒绝 log：观察
        # @type RuleAction: String
        # @param Description: 描述
        # @type Description: String
        # @param Count: 命中次数
        # @type Count: Integer
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param SourceType: 访问源类型：入向规则时类型可以为 ip,net,template,location；出向规则时可以为 ip,net,template,instance,group,tag
        # @type SourceType: String
        # @param TargetType: 访问目的类型：入向规则时类型可以为ip,net,template,instance,group,tag；出向规则时可以为 ip,net,domain,template,location,dnsparse
        # @type TargetType: String
        # @param Uuid: 规则对应的唯一id
        # @type Uuid: Integer
        # @param Invalid: 规则有效性
        # @type Invalid: Integer
        # @param IsRegion: 0为正常规则,1为地域规则
        # @type IsRegion: Integer
        # @param CountryCode: 国家id
        # @type CountryCode: Integer
        # @param CityCode: 城市id
        # @type CityCode: Integer
        # @param CountryName: 国家名称
        # @type CountryName: String
        # @param CityName: 省名称
        # @type CityName: String
        # @param CloudCode: 云厂商code
        # @type CloudCode: String
        # @param IsCloud: 0为正常规则,1为云厂商规则
        # @type IsCloud: Integer
        # @param Enable: 规则状态，true表示启用，false表示禁用
        # @type Enable: String
        # @param Direction: 规则方向：1，入向；0，出向
        # @type Direction: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InternalUuid: 内部使用的uuid，一般情况下不会使用到该字段
        # @type InternalUuid: Integer
        # @param Status: 规则状态，查询规则命中详情时该字段有效，0：新增，1: 已删除, 2: 编辑删除
        # @type Status: Integer
        # @param BetaList: 关联任务详情
        # @type BetaList: Array
        # @param Scope: （1）互联网边界防火墙，生效范围：serial，串行；side，旁路；all，全局；
        # （2）NAT边界防火墙：ALL，全局生效；ap-guangzhou，生效的地域；cfwnat-xxx，生效基于实例维度
        # @type Scope: String
        # @param ScopeDesc: 生效范围描述
        # @type ScopeDesc: String
        # @param InternetBorderUuid: 互联网边界防火墙使用的内部规则id
        # @type InternetBorderUuid: String
        # @param ParamTemplateName: 协议端口组名称
        # @type ParamTemplateName: String
        # @param ParamTemplateId: 协议端口组ID
        # @type ParamTemplateId: String
        # @param SourceName: 访问源名称
        # @type SourceName: String
        # @param TargetName: 访问目的名称
        # @type TargetName: String
        # @param LastHitTime: 规则最近命中时间
        # @type LastHitTime: String

        attr_accessor :SourceContent, :TargetContent, :Protocol, :Port, :RuleAction, :Description, :Count, :OrderIndex, :SourceType, :TargetType, :Uuid, :Invalid, :IsRegion, :CountryCode, :CityCode, :CountryName, :CityName, :CloudCode, :IsCloud, :Enable, :Direction, :InstanceName, :InternalUuid, :Status, :BetaList, :Scope, :ScopeDesc, :InternetBorderUuid, :ParamTemplateName, :ParamTemplateId, :SourceName, :TargetName, :LastHitTime

        def initialize(sourcecontent=nil, targetcontent=nil, protocol=nil, port=nil, ruleaction=nil, description=nil, count=nil, orderindex=nil, sourcetype=nil, targettype=nil, uuid=nil, invalid=nil, isregion=nil, countrycode=nil, citycode=nil, countryname=nil, cityname=nil, cloudcode=nil, iscloud=nil, enable=nil, direction=nil, instancename=nil, internaluuid=nil, status=nil, betalist=nil, scope=nil, scopedesc=nil, internetborderuuid=nil, paramtemplatename=nil, paramtemplateid=nil, sourcename=nil, targetname=nil, lasthittime=nil)
          @SourceContent = sourcecontent
          @TargetContent = targetcontent
          @Protocol = protocol
          @Port = port
          @RuleAction = ruleaction
          @Description = description
          @Count = count
          @OrderIndex = orderindex
          @SourceType = sourcetype
          @TargetType = targettype
          @Uuid = uuid
          @Invalid = invalid
          @IsRegion = isregion
          @CountryCode = countrycode
          @CityCode = citycode
          @CountryName = countryname
          @CityName = cityname
          @CloudCode = cloudcode
          @IsCloud = iscloud
          @Enable = enable
          @Direction = direction
          @InstanceName = instancename
          @InternalUuid = internaluuid
          @Status = status
          @BetaList = betalist
          @Scope = scope
          @ScopeDesc = scopedesc
          @InternetBorderUuid = internetborderuuid
          @ParamTemplateName = paramtemplatename
          @ParamTemplateId = paramtemplateid
          @SourceName = sourcename
          @TargetName = targetname
          @LastHitTime = lasthittime
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @TargetContent = params['TargetContent']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @Count = params['Count']
          @OrderIndex = params['OrderIndex']
          @SourceType = params['SourceType']
          @TargetType = params['TargetType']
          @Uuid = params['Uuid']
          @Invalid = params['Invalid']
          @IsRegion = params['IsRegion']
          @CountryCode = params['CountryCode']
          @CityCode = params['CityCode']
          @CountryName = params['CountryName']
          @CityName = params['CityName']
          @CloudCode = params['CloudCode']
          @IsCloud = params['IsCloud']
          @Enable = params['Enable']
          @Direction = params['Direction']
          @InstanceName = params['InstanceName']
          @InternalUuid = params['InternalUuid']
          @Status = params['Status']
          unless params['BetaList'].nil?
            @BetaList = []
            params['BetaList'].each do |i|
              betainfobyacl_tmp = BetaInfoByACL.new
              betainfobyacl_tmp.deserialize(i)
              @BetaList << betainfobyacl_tmp
            end
          end
          @Scope = params['Scope']
          @ScopeDesc = params['ScopeDesc']
          @InternetBorderUuid = params['InternetBorderUuid']
          @ParamTemplateName = params['ParamTemplateName']
          @ParamTemplateId = params['ParamTemplateId']
          @SourceName = params['SourceName']
          @TargetName = params['TargetName']
          @LastHitTime = params['LastHitTime']
        end
      end

      # NAT防火墙Dnat规则列表
      class DescNatDnatRule < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: Integer
        # @param IpProtocol: 网络协议，可选值：TCP、UDP。
        # @type IpProtocol: String
        # @param PublicIpAddress: 弹性IP。
        # @type PublicIpAddress: String
        # @param PublicPort: 公网端口。
        # @type PublicPort: Integer
        # @param PrivateIpAddress: 内网地址。
        # @type PrivateIpAddress: String
        # @param PrivatePort: 内网端口。
        # @type PrivatePort: Integer
        # @param Description: NAT防火墙转发规则描述。
        # @type Description: String
        # @param IsReferenced: 是否被关联引用，如被远程运维使用
        # @type IsReferenced: Integer
        # @param FwInsId: 所属防火墙实例id
        # @type FwInsId: String
        # @param NatGwId: 关联的nat网关Id
        # @type NatGwId: String

        attr_accessor :Id, :IpProtocol, :PublicIpAddress, :PublicPort, :PrivateIpAddress, :PrivatePort, :Description, :IsReferenced, :FwInsId, :NatGwId

        def initialize(id=nil, ipprotocol=nil, publicipaddress=nil, publicport=nil, privateipaddress=nil, privateport=nil, description=nil, isreferenced=nil, fwinsid=nil, natgwid=nil)
          @Id = id
          @IpProtocol = ipprotocol
          @PublicIpAddress = publicipaddress
          @PublicPort = publicport
          @PrivateIpAddress = privateipaddress
          @PrivatePort = privateport
          @Description = description
          @IsReferenced = isreferenced
          @FwInsId = fwinsid
          @NatGwId = natgwid
        end

        def deserialize(params)
          @Id = params['Id']
          @IpProtocol = params['IpProtocol']
          @PublicIpAddress = params['PublicIpAddress']
          @PublicPort = params['PublicPort']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PrivatePort = params['PrivatePort']
          @Description = params['Description']
          @IsReferenced = params['IsReferenced']
          @FwInsId = params['FwInsId']
          @NatGwId = params['NatGwId']
        end
      end

      # DescribeAcLists请求参数结构体
      class DescribeAcListsRequest < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Strategy: 策略
        # @type Strategy: String
        # @param SearchValue: 搜索值
        # @type SearchValue: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Direction: 出站还是入站，1：入站，0：出站
        # @type Direction: Integer
        # @param EdgeId: EdgeId值
        # @type EdgeId: String
        # @param Status: 规则是否开启，'0': 未开启，'1': 开启, 默认为'0'
        # @type Status: String
        # @param Area: 地域
        # @type Area: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :Protocol, :Strategy, :SearchValue, :Limit, :Offset, :Direction, :EdgeId, :Status, :Area, :InstanceId

        def initialize(protocol=nil, strategy=nil, searchvalue=nil, limit=nil, offset=nil, direction=nil, edgeid=nil, status=nil, area=nil, instanceid=nil)
          @Protocol = protocol
          @Strategy = strategy
          @SearchValue = searchvalue
          @Limit = limit
          @Offset = offset
          @Direction = direction
          @EdgeId = edgeid
          @Status = status
          @Area = area
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Strategy = params['Strategy']
          @SearchValue = params['SearchValue']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Area = params['Area']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAcLists返回参数结构体
      class DescribeAcListsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: 访问控制列表数据
        # @type Data: Array
        # @param AllTotal: 不算筛选条数的总条数
        # @type AllTotal: Integer
        # @param Enable: 访问控制规则全部启用/全部停用
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AllTotal, :Enable, :RequestId

        def initialize(total=nil, data=nil, alltotal=nil, enable=nil, requestid=nil)
          @Total = total
          @Data = data
          @AllTotal = alltotal
          @Enable = enable
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              aclistsdata_tmp = AcListsData.new
              aclistsdata_tmp.deserialize(i)
              @Data << aclistsdata_tmp
            end
          end
          @AllTotal = params['AllTotal']
          @Enable = params['Enable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAclRule请求参数结构体
      class DescribeAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Index: 需要查询的索引，特定场景使用，可不填
        # @type Index: String
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值，默认为asc
        # @type Order: String
        # @param By: 排序所用到的字段，默认为sequence
        # @type By: String

        attr_accessor :Limit, :Offset, :Index, :Filters, :StartTime, :EndTime, :Order, :By

        def initialize(limit=nil, offset=nil, index=nil, filters=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Index = index
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Index = params['Index']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAclRule返回参数结构体
      class DescribeAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: nat访问控制列表数据
        # @type Data: Array
        # @param AllTotal: 未过滤的总条数
        # @type AllTotal: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AllTotal, :RequestId

        def initialize(total=nil, data=nil, alltotal=nil, requestid=nil)
          @Total = total
          @Data = data
          @AllTotal = alltotal
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              descacitem_tmp = DescAcItem.new
              descacitem_tmp.deserialize(i)
              @Data << descacitem_tmp
            end
          end
          @AllTotal = params['AllTotal']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressTemplateList请求参数结构体
      class DescribeAddressTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，分页用
        # @type Offset: Integer
        # @param Limit: 条数，分页用
        # @type Limit: Integer
        # @param By: 排序字段，取值：UpdateTime最近更新时间，RulesNum关联规则数
        # @type By: String
        # @param Order: 排序，取值 ：asc正序，desc逆序
        # @type Order: String
        # @param SearchValue: 搜索值
        # @type SearchValue: String
        # @param Uuid: 检索地址模板唯一id
        # @type Uuid: String
        # @param TemplateType: 模板类型，取值：1：ip模板，5：域名模板，6：协议端口模板
        # @type TemplateType: String
        # @param TemplateId: 模板Id
        # @type TemplateId: String

        attr_accessor :Offset, :Limit, :By, :Order, :SearchValue, :Uuid, :TemplateType, :TemplateId

        def initialize(offset=nil, limit=nil, by=nil, order=nil, searchvalue=nil, uuid=nil, templatetype=nil, templateid=nil)
          @Offset = offset
          @Limit = limit
          @By = by
          @Order = order
          @SearchValue = searchvalue
          @Uuid = uuid
          @TemplateType = templatetype
          @TemplateId = templateid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @By = params['By']
          @Order = params['Order']
          @SearchValue = params['SearchValue']
          @Uuid = params['Uuid']
          @TemplateType = params['TemplateType']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeAddressTemplateList返回参数结构体
      class DescribeAddressTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 模板总数
        # @type Total: Integer
        # @param Data: 模板列表数据
        # @type Data: Array
        # @param NameList: 模板名称列表
        # @type NameList: Array
        # @param IpTemplateCount: Ip地址模板数量
        # @type IpTemplateCount: Integer
        # @param DomainTemplateCount: 域名地址模板数量
        # @type DomainTemplateCount: Integer
        # @param PortTemplateCount: 协议端口模板数量
        # @type PortTemplateCount: Integer
        # @param UsedTemplateCount: 已使用的地址模板数
        # @type UsedTemplateCount: Integer
        # @param TemplateQuotaCount: 地址模板配额数量
        # @type TemplateQuotaCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :NameList, :IpTemplateCount, :DomainTemplateCount, :PortTemplateCount, :UsedTemplateCount, :TemplateQuotaCount, :RequestId

        def initialize(total=nil, data=nil, namelist=nil, iptemplatecount=nil, domaintemplatecount=nil, porttemplatecount=nil, usedtemplatecount=nil, templatequotacount=nil, requestid=nil)
          @Total = total
          @Data = data
          @NameList = namelist
          @IpTemplateCount = iptemplatecount
          @DomainTemplateCount = domaintemplatecount
          @PortTemplateCount = porttemplatecount
          @UsedTemplateCount = usedtemplatecount
          @TemplateQuotaCount = templatequotacount
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              templatelistinfo_tmp = TemplateListInfo.new
              templatelistinfo_tmp.deserialize(i)
              @Data << templatelistinfo_tmp
            end
          end
          @NameList = params['NameList']
          @IpTemplateCount = params['IpTemplateCount']
          @DomainTemplateCount = params['DomainTemplateCount']
          @PortTemplateCount = params['PortTemplateCount']
          @UsedTemplateCount = params['UsedTemplateCount']
          @TemplateQuotaCount = params['TemplateQuotaCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetSync请求参数结构体
      class DescribeAssetSyncRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetSync返回参数结构体
      class DescribeAssetSyncResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回状态
        # 1 更新中
        # 2 更新完成
        # 3 更新失败
        # 4 更新失败
        # @type Status: Integer
        # @param ReturnMsg: success 成功
        # 其他失败
        # @type ReturnMsg: String
        # @param ReturnCode: 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ReturnMsg, :ReturnCode, :RequestId

        def initialize(status=nil, returnmsg=nil, returncode=nil, requestid=nil)
          @Status = status
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssociatedInstanceList请求参数结构体
      class DescribeAssociatedInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 列表偏移量
        # @type Offset: Integer
        # @param Limit: 每页记录条数
        # @type Limit: Integer
        # @param Area: 地域代码（例：ap-guangzhou）,支持腾讯云全地域
        # @type Area: String
        # @param SearchValue: 额外检索条件（JSON字符串）
        # @type SearchValue: String
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式（asc:升序,desc:降序）
        # @type Order: String
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param Type: 实例类型,'3'是cvm实例,'4'是clb实例,'5'是eni实例,'6'是云数据库
        # @type Type: String

        attr_accessor :Offset, :Limit, :Area, :SearchValue, :By, :Order, :SecurityGroupId, :Type

        def initialize(offset=nil, limit=nil, area=nil, searchvalue=nil, by=nil, order=nil, securitygroupid=nil, type=nil)
          @Offset = offset
          @Limit = limit
          @Area = area
          @SearchValue = searchvalue
          @By = by
          @Order = order
          @SecurityGroupId = securitygroupid
          @Type = type
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Area = params['Area']
          @SearchValue = params['SearchValue']
          @By = params['By']
          @Order = params['Order']
          @SecurityGroupId = params['SecurityGroupId']
          @Type = params['Type']
        end
      end

      # DescribeAssociatedInstanceList返回参数结构体
      class DescribeAssociatedInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 实例数量
        # @type Total: Integer
        # @param Data: 实例列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RequestId

        def initialize(total=nil, data=nil, requestid=nil)
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              associatedinstanceinfo_tmp = AssociatedInstanceInfo.new
              associatedinstanceinfo_tmp.deserialize(i)
              @Data << associatedinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockByIpTimesList请求参数结构体
      class DescribeBlockByIpTimesListRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Ip: ip查询条件
        # @type Ip: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Direction: 方向
        # @type Direction: String
        # @param EdgeId: vpc间防火墙开关边id
        # @type EdgeId: String
        # @param LogSource: 日志来源 move：vpc间防火墙
        # @type LogSource: String
        # @param Source: 来源
        # @type Source: String
        # @param Zone: 地域
        # @type Zone: String

        attr_accessor :EndTime, :Ip, :StartTime, :Direction, :EdgeId, :LogSource, :Source, :Zone

        def initialize(endtime=nil, ip=nil, starttime=nil, direction=nil, edgeid=nil, logsource=nil, source=nil, zone=nil)
          @EndTime = endtime
          @Ip = ip
          @StartTime = starttime
          @Direction = direction
          @EdgeId = edgeid
          @LogSource = logsource
          @Source = source
          @Zone = zone
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @Ip = params['Ip']
          @StartTime = params['StartTime']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @LogSource = params['LogSource']
          @Source = params['Source']
          @Zone = params['Zone']
        end
      end

      # DescribeBlockByIpTimesList返回参数结构体
      class DescribeBlockByIpTimesListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              ipstatic_tmp = IpStatic.new
              ipstatic_tmp.deserialize(i)
              @Data << ipstatic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockIgnoreList请求参数结构体
      class DescribeBlockIgnoreListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 单页数量
        # @type Limit: Integer
        # @param Offset: 页偏移量
        # @type Offset: Integer
        # @param Direction: 方向：1互联网入站，0互联网出站，3内网，空 全部方向
        # @type Direction: String
        # @param Order: 排序类型：desc降序，asc正序
        # @type Order: String
        # @param By: 排序列：EndTime结束时间，StartTime开始时间，MatchTimes命中次数
        # @type By: String
        # @param SearchValue: 搜索参数，json格式字符串，空则传"{}"，域名：domain，危险等级：level，放通原因：ignore_reason，安全事件来源：rule_source，地理位置：address，模糊搜索：common
        # @type SearchValue: String
        # @param RuleType: 规则类型：1封禁，2放通
        # @type RuleType: Integer
        # @param ShowType: blocklist 封禁列表
        # whitelist 白名单列表
        # @type ShowType: String

        attr_accessor :Limit, :Offset, :Direction, :Order, :By, :SearchValue, :RuleType, :ShowType

        def initialize(limit=nil, offset=nil, direction=nil, order=nil, by=nil, searchvalue=nil, ruletype=nil, showtype=nil)
          @Limit = limit
          @Offset = offset
          @Direction = direction
          @Order = order
          @By = by
          @SearchValue = searchvalue
          @RuleType = ruletype
          @ShowType = showtype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Direction = params['Direction']
          @Order = params['Order']
          @By = params['By']
          @SearchValue = params['SearchValue']
          @RuleType = params['RuleType']
          @ShowType = params['ShowType']
        end
      end

      # DescribeBlockIgnoreList返回参数结构体
      class DescribeBlockIgnoreListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表数据
        # @type Data: Array
        # @param Total: 查询结果总数，用于分页
        # @type Total: Integer
        # @param ReturnCode: 状态值，0：查询成功，非0：查询失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息，success：查询成功，fail：查询失败
        # @type ReturnMsg: String
        # @param SourceList: 安全事件来源下拉框
        # @type SourceList: Array
        # @param RuleTypeDataList: 对应规则类型的数量，示例：[0,122,30,55,12,232,0]，封禁0个，IP地址122个，域名30个，威胁情报55个，资产实例12个，自定义策略232个，入侵防御规则0个
        # @type RuleTypeDataList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :ReturnCode, :ReturnMsg, :SourceList, :RuleTypeDataList, :RequestId

        def initialize(data=nil, total=nil, returncode=nil, returnmsg=nil, sourcelist=nil, ruletypedatalist=nil, requestid=nil)
          @Data = data
          @Total = total
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @SourceList = sourcelist
          @RuleTypeDataList = ruletypedatalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              blockignorerule_tmp = BlockIgnoreRule.new
              blockignorerule_tmp.deserialize(i)
              @Data << blockignorerule_tmp
            end
          end
          @Total = params['Total']
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @SourceList = params['SourceList']
          @RuleTypeDataList = params['RuleTypeDataList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockStaticList请求参数结构体
      class DescribeBlockStaticListRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 列表类型，只能是下面三种之一：port、address、ip
        # @type QueryType: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Top: top数
        # @type Top: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :EndTime, :QueryType, :StartTime, :Top, :SearchValue

        def initialize(endtime=nil, querytype=nil, starttime=nil, top=nil, searchvalue=nil)
          @EndTime = endtime
          @QueryType = querytype
          @StartTime = starttime
          @Top = top
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @StartTime = params['StartTime']
          @Top = params['Top']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeBlockStaticList返回参数结构体
      class DescribeBlockStaticListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询结果
        # @type Data: Array
        # @param Status: 异步查询状态，1查询执行中，0查询已结束
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Status, :RequestId

        def initialize(data=nil, status=nil, requestid=nil)
          @Data = data
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              staticinfo_tmp = StaticInfo.new
              staticinfo_tmp.deserialize(i)
              @Data << staticinfo_tmp
            end
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfwEips请求参数结构体
      class DescribeCfwEipsRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 1：cfw接入模式，目前仅支持接入模式实例
        # @type Mode: Integer
        # @param NatGatewayId: ALL：查询所有弹性公网ip; nat-xxxxx：接入模式场景指定网关的弹性公网ip
        # @type NatGatewayId: String
        # @param CfwInstance: 防火墙实例id，当前仅支持接入模式的实例
        # @type CfwInstance: String

        attr_accessor :Mode, :NatGatewayId, :CfwInstance

        def initialize(mode=nil, natgatewayid=nil, cfwinstance=nil)
          @Mode = mode
          @NatGatewayId = natgatewayid
          @CfwInstance = cfwinstance
        end

        def deserialize(params)
          @Mode = params['Mode']
          @NatGatewayId = params['NatGatewayId']
          @CfwInstance = params['CfwInstance']
        end
      end

      # DescribeCfwEips返回参数结构体
      class DescribeCfwEipsResponse < TencentCloud::Common::AbstractModel
        # @param NatFwEipList: 返回值信息
        # @type NatFwEipList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatFwEipList, :RequestId

        def initialize(natfweiplist=nil, requestid=nil)
          @NatFwEipList = natfweiplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatFwEipList'].nil?
            @NatFwEipList = []
            params['NatFwEipList'].each do |i|
              natfweipsinfo_tmp = NatFwEipsInfo.new
              natfweipsinfo_tmp.deserialize(i)
              @NatFwEipList << natfweipsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefenseSwitch请求参数结构体
      class DescribeDefenseSwitchRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDefenseSwitch返回参数结构体
      class DescribeDefenseSwitchResponse < TencentCloud::Common::AbstractModel
        # @param BasicRuleSwitch: 基础防御开关
        # @type BasicRuleSwitch: Integer
        # @param BaselineAllSwitch: 安全基线开关
        # @type BaselineAllSwitch: Integer
        # @param TiSwitch: 威胁情报开关
        # @type TiSwitch: Integer
        # @param VirtualPatchSwitch: 虚拟补丁开关
        # @type VirtualPatchSwitch: Integer
        # @param HistoryOpen: 是否历史开启
        # @type HistoryOpen: Integer
        # @param ReturnCode: 状态值，0：查询成功，非0：查询失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息，success：查询成功，fail：查询失败
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BasicRuleSwitch, :BaselineAllSwitch, :TiSwitch, :VirtualPatchSwitch, :HistoryOpen, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(basicruleswitch=nil, baselineallswitch=nil, tiswitch=nil, virtualpatchswitch=nil, historyopen=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @BasicRuleSwitch = basicruleswitch
          @BaselineAllSwitch = baselineallswitch
          @TiSwitch = tiswitch
          @VirtualPatchSwitch = virtualpatchswitch
          @HistoryOpen = historyopen
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @BasicRuleSwitch = params['BasicRuleSwitch']
          @BaselineAllSwitch = params['BaselineAllSwitch']
          @TiSwitch = params['TiSwitch']
          @VirtualPatchSwitch = params['VirtualPatchSwitch']
          @HistoryOpen = params['HistoryOpen']
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnterpriseSGRuleProgress请求参数结构体
      class DescribeEnterpriseSGRuleProgressRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEnterpriseSGRuleProgress返回参数结构体
      class DescribeEnterpriseSGRuleProgressResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 0-100，代表下发进度百分比
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId

        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnterpriseSecurityGroupRuleList请求参数结构体
      class DescribeEnterpriseSecurityGroupRuleListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页每页数量
        # @type Limit: Integer
        # @param Offset: 分页当前页
        # @type Offset: Integer
        # @param Status: 启用状态 1启用 0 未启用
        # @type Status: String
        # @param Area: 地域
        # @type Area: String
        # @param Filter: 规则下发方式筛选  1 新规则和延迟下发  2  仅看新规则
        # @type Filter: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String
        # @param SearchFilters: 查询条件新
        # @type SearchFilters: Array

        attr_accessor :Limit, :Offset, :Status, :Area, :Filter, :SearchValue, :SearchFilters

        def initialize(limit=nil, offset=nil, status=nil, area=nil, filter=nil, searchvalue=nil, searchfilters=nil)
          @Limit = limit
          @Offset = offset
          @Status = status
          @Area = area
          @Filter = filter
          @SearchValue = searchvalue
          @SearchFilters = searchfilters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @Area = params['Area']
          @Filter = params['Filter']
          @SearchValue = params['SearchValue']
          unless params['SearchFilters'].nil?
            @SearchFilters = []
            params['SearchFilters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @SearchFilters << commonfilter_tmp
            end
          end
        end
      end

      # DescribeEnterpriseSecurityGroupRuleList返回参数结构体
      class DescribeEnterpriseSecurityGroupRuleListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 查询结果总数
        # @type Total: Integer
        # @param AllTotal: 规则总数
        # @type AllTotal: Integer
        # @param Data: 规则列表
        # @type Data: Array
        # @param Enable: 规则列表整体启用状态
        # 取值范围 0/1/2
        # 0.表示没有启用的(可以批量启用)
        # 1.表示没有禁用的(可以批量禁用)
        # 2 表示混合情况（不可批量操作）
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AllTotal, :Data, :Enable, :RequestId

        def initialize(total=nil, alltotal=nil, data=nil, enable=nil, requestid=nil)
          @Total = total
          @AllTotal = alltotal
          @Data = data
          @Enable = enable
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @AllTotal = params['AllTotal']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              enterprisesecuritygroupruleruleinfo_tmp = EnterpriseSecurityGroupRuleRuleInfo.new
              enterprisesecuritygroupruleruleinfo_tmp.deserialize(i)
              @Data << enterprisesecuritygroupruleruleinfo_tmp
            end
          end
          @Enable = params['Enable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnterpriseSecurityGroupRule请求参数结构体
      class DescribeEnterpriseSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param PageNo: 分页查询时，显示的当前页的页码。

        # 默认值为1。
        # @type PageNo: String
        # @param PageSize: 分页查询时，显示的每页数据的最大条数。

        # 可设置值最大为50。
        # @type PageSize: String
        # @param SourceContent: 访问源示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板(ipm-dyodhpby)
        # instance：资产实例(ins-123456)
        # resourcegroup：资产分组(/全部分组/分组1/子分组1)
        # tag：资源标签({"Key":"标签key值","Value":"标签Value值"})
        # region：地域(ap-gaungzhou)
        # 支持通配
        # @type SourceContent: String
        # @param DestContent: 访问目的示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板(ipm-dyodhpby)
        # instance：资产实例(ins-123456)
        # resourcegroup：资产分组(/全部分组/分组1/子分组1)
        # tag：资源标签({"Key":"标签key值","Value":"标签Value值"})
        # region：地域(ap-gaungzhou)
        # 支持通配
        # @type DestContent: String
        # @param Description: 规则描述，支持通配
        # @type Description: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值：
        # accept：放行
        # drop：拒绝
        # @type RuleAction: String
        # @param Enable: 是否启用规则，默认为启用，取值：
        # true为启用，false为不启用
        # @type Enable: String
        # @param Port: 访问控制策略的端口。取值：
        # -1/-1：全部端口
        # 80：80端口
        # @type Port: String
        # @param Protocol: 协议；TCP/UDP/ICMP/ANY
        # @type Protocol: String
        # @param ServiceTemplateId: 端口协议类型参数模板id；协议端口模板id
        # @type ServiceTemplateId: String
        # @param RuleUuid: 规则的uuid
        # @type RuleUuid: Integer

        attr_accessor :PageNo, :PageSize, :SourceContent, :DestContent, :Description, :RuleAction, :Enable, :Port, :Protocol, :ServiceTemplateId, :RuleUuid

        def initialize(pageno=nil, pagesize=nil, sourcecontent=nil, destcontent=nil, description=nil, ruleaction=nil, enable=nil, port=nil, protocol=nil, servicetemplateid=nil, ruleuuid=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @SourceContent = sourcecontent
          @DestContent = destcontent
          @Description = description
          @RuleAction = ruleaction
          @Enable = enable
          @Port = port
          @Protocol = protocol
          @ServiceTemplateId = servicetemplateid
          @RuleUuid = ruleuuid
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @SourceContent = params['SourceContent']
          @DestContent = params['DestContent']
          @Description = params['Description']
          @RuleAction = params['RuleAction']
          @Enable = params['Enable']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @ServiceTemplateId = params['ServiceTemplateId']
          @RuleUuid = params['RuleUuid']
        end
      end

      # DescribeEnterpriseSecurityGroupRule返回参数结构体
      class DescribeEnterpriseSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param PageNo: 分页查询时，显示的当前页的页码。
        # @type PageNo: String
        # @param PageSize: 分页查询时，显示的每页数据的最大条数。
        # @type PageSize: String
        # @param Rules: 访问控制策略列表
        # @type Rules: Array
        # @param TotalCount: 访问控制策略的总数量。
        # @type TotalCount: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageNo, :PageSize, :Rules, :TotalCount, :RequestId

        def initialize(pageno=nil, pagesize=nil, rules=nil, totalcount=nil, requestid=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @Rules = rules
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              securitygrouprule_tmp = SecurityGroupRule.new
              securitygrouprule_tmp.deserialize(i)
              @Rules << securitygrouprule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFwEdgeIps请求参数结构体
      class DescribeFwEdgeIpsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        # @type Order: String
        # @param By: 排序所用到的字段
        # @type By: String

        attr_accessor :Filters, :Limit, :Offset, :StartTime, :EndTime, :Order, :By

        def initialize(filters=nil, limit=nil, offset=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeFwEdgeIps返回参数结构体
      class DescribeFwEdgeIpsResponse < TencentCloud::Common::AbstractModel
        # @param Data: ip 开关列表
        # @type Data: Array
        # @param Total: ip 开关列表个数
        # @type Total: Integer
        # @param RegionLst: 地域列表
        # @type RegionLst: Array
        # @param InstanceTypeLst: 实例类型列表
        # @type InstanceTypeLst: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RegionLst, :InstanceTypeLst, :RequestId

        def initialize(data=nil, total=nil, regionlst=nil, instancetypelst=nil, requestid=nil)
          @Data = data
          @Total = total
          @RegionLst = regionlst
          @InstanceTypeLst = instancetypelst
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              edgeipinfo_tmp = EdgeIpInfo.new
              edgeipinfo_tmp.deserialize(i)
              @Data << edgeipinfo_tmp
            end
          end
          @Total = params['Total']
          @RegionLst = params['RegionLst']
          @InstanceTypeLst = params['InstanceTypeLst']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFwGroupInstanceInfo请求参数结构体
      class DescribeFwGroupInstanceInfoRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        # @type Order: String
        # @param By: 排序所用到的字段
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :StartTime, :EndTime, :Order, :By

        def initialize(limit=nil, offset=nil, filters=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeFwGroupInstanceInfo返回参数结构体
      class DescribeFwGroupInstanceInfoResponse < TencentCloud::Common::AbstractModel
        # @param VpcFwGroupLst: 防火墙(组)详细信息
        # @type VpcFwGroupLst: Array
        # @param Total: 防火墙(组)个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcFwGroupLst, :Total, :RequestId

        def initialize(vpcfwgrouplst=nil, total=nil, requestid=nil)
          @VpcFwGroupLst = vpcfwgrouplst
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcFwGroupLst'].nil?
            @VpcFwGroupLst = []
            params['VpcFwGroupLst'].each do |i|
              vpcfwgroupinfo_tmp = VpcFwGroupInfo.new
              vpcfwgroupinfo_tmp.deserialize(i)
              @VpcFwGroupLst << vpcfwgroupinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFwSyncStatus请求参数结构体
      class DescribeFwSyncStatusRequest < TencentCloud::Common::AbstractModel
        # @param SyncType: 查询的同步状态类型：Route,同步路由状态
        # @type SyncType: String

        attr_accessor :SyncType

        def initialize(synctype=nil)
          @SyncType = synctype
        end

        def deserialize(params)
          @SyncType = params['SyncType']
        end
      end

      # DescribeFwSyncStatus返回参数结构体
      class DescribeFwSyncStatusResponse < TencentCloud::Common::AbstractModel
        # @param SyncStatus: 同步状态：1，同步中；0，同步完成
        # @type SyncStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SyncStatus, :RequestId

        def initialize(syncstatus=nil, requestid=nil)
          @SyncStatus = syncstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @SyncStatus = params['SyncStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGuideScanInfo请求参数结构体
      class DescribeGuideScanInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeGuideScanInfo返回参数结构体
      class DescribeGuideScanInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 扫描信息
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.ScanInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ScanInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPStatusList请求参数结构体
      class DescribeIPStatusListRequest < TencentCloud::Common::AbstractModel
        # @param IPList: 资产Id
        # @type IPList: Array

        attr_accessor :IPList

        def initialize(iplist=nil)
          @IPList = iplist
        end

        def deserialize(params)
          @IPList = params['IPList']
        end
      end

      # DescribeIPStatusList返回参数结构体
      class DescribeIPStatusListResponse < TencentCloud::Common::AbstractModel
        # @param StatusList: IP状态信息
        # @type StatusList: Array
        # @param ReturnCode: 状态码
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatusList, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(statuslist=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @StatusList = statuslist
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatusList'].nil?
            @StatusList = []
            params['StatusList'].each do |i|
              ipdefendstatus_tmp = IPDefendStatus.new
              ipdefendstatus_tmp.deserialize(i)
              @StatusList << ipdefendstatus_tmp
            end
          end
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdsWhiteRule请求参数结构体
      class DescribeIdsWhiteRuleRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        # @type Order: String
        # @param By: 排序所用到的字段
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By

        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeIdsWhiteRule返回参数结构体
      class DescribeIdsWhiteRuleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: 规则详情
        # @type Data: Array
        # @param ReturnCode: 返回状态码 0 成功 非0不成功
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息  success 成功 其他 不成功
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(total=nil, data=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @Total = total
          @Data = data
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              idswhiteinfo_tmp = IdsWhiteInfo.new
              idswhiteinfo_tmp.deserialize(i)
              @Data << idswhiteinfo_tmp
            end
          end
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogs请求参数结构体
      class DescribeLogsRequest < TencentCloud::Common::AbstractModel
        # @param Index: 日志类型标识
        # 流量日志：互联网边界防火墙netflow_border，NAT边界防火墙netflow_nat，VPC间防火墙vpcnetflow，内网流量日志netflow_fl
        # 入侵防御日志rule_threatinfo
        # 访问控制日志：互联网边界规则rule_acl，NAT边界规则rule_acl，内网间规则rule_vpcacl，企业安全组rule_sg
        # 操作日志：防火墙开关-开关操作operate_switch，防火墙开关-实例配置operate_instance，资产中心操作operate_assetgroup，访问控制操作operate_acl，零信任防护操作operate_identity，入侵防御操作-入侵防御operate_ids，入侵防御操作-安全基线operate_baseline，常用工具操作operate_tool，网络蜜罐操作operate_honeypot，日志投递操作operate_logdelivery，通用设置操作operate_logstorage，登录日志operate_login
        # @type Index: String
        # @param Limit: 每页条数，最大支持2000
        # @type Limit: Integer
        # @param Offset: 偏移值，最大支持60000
        # @type Offset: Integer
        # @param StartTime: 筛选开始时间
        # @type StartTime: String
        # @param EndTime: 筛选结束时间
        # @type EndTime: String
        # @param Filters: 过滤条件组合，各数组元素间为AND关系，查询字段名Name参考文档https://cloud.tencent.com/document/product/1132/87894，数值类型字段不支持模糊匹配
        # @type Filters: Array

        attr_accessor :Index, :Limit, :Offset, :StartTime, :EndTime, :Filters

        def initialize(index=nil, limit=nil, offset=nil, starttime=nil, endtime=nil, filters=nil)
          @Index = index
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @Index = params['Index']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
        end
      end

      # DescribeLogs返回参数结构体
      class DescribeLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 日志列表
        # @type Data: String
        # @param Total: 总条数
        # @type Total: Integer
        # @param ReturnCode: 返回状态码 0 成功 非0不成功
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息  success 成功 其他 不成功
        # @type ReturnMsg: String
        # @param AppProtocolList: 七层协议，NTA日志有效
        # @type AppProtocolList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :ReturnCode, :ReturnMsg, :AppProtocolList, :RequestId

        def initialize(data=nil, total=nil, returncode=nil, returnmsg=nil, appprotocollist=nil, requestid=nil)
          @Data = data
          @Total = total
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @AppProtocolList = appprotocollist
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Total = params['Total']
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @AppProtocolList = params['AppProtocolList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatAcRule请求参数结构体
      class DescribeNatAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Index: 需要查询的索引，特定场景使用，可不填
        # @type Index: String
        # @param Filters: 过滤条件组合，Direction 为0时表述查询出向规则，为1时表示查询入向规则
        # @type Filters: Array
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值，默认为asc
        # @type Order: String
        # @param By: 排序所用到的字段，默认为sequence
        # @type By: String

        attr_accessor :Limit, :Offset, :Index, :Filters, :StartTime, :EndTime, :Order, :By

        def initialize(limit=nil, offset=nil, index=nil, filters=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Index = index
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Index = params['Index']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeNatAcRule返回参数结构体
      class DescribeNatAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: nat访问控制列表数据
        # @type Data: Array
        # @param AllTotal: 未过滤的总条数
        # @type AllTotal: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AllTotal, :RequestId

        def initialize(total=nil, data=nil, alltotal=nil, requestid=nil)
          @Total = total
          @Data = data
          @AllTotal = alltotal
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              descacitem_tmp = DescAcItem.new
              descacitem_tmp.deserialize(i)
              @Data << descacitem_tmp
            end
          end
          @AllTotal = params['AllTotal']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatFwDnatRule请求参数结构体
      class DescribeNatFwDnatRuleRequest < TencentCloud::Common::AbstractModel
        # @param Index: 需要查询的索引，特定场景使用，可不填
        # @type Index: String
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值，可不传
        # @type Order: String
        # @param By: 排序所用到的字段，可不传
        # @type By: String

        attr_accessor :Index, :Filters, :Limit, :Offset, :StartTime, :EndTime, :Order, :By

        def initialize(index=nil, filters=nil, limit=nil, offset=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Index = index
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Index = params['Index']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeNatFwDnatRule返回参数结构体
      class DescribeNatFwDnatRuleResponse < TencentCloud::Common::AbstractModel
        # @param Data: Dnat规则列表
        # @type Data: Array
        # @param Total: 列表总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              descnatdnatrule_tmp = DescNatDnatRule.new
              descnatdnatrule_tmp.deserialize(i)
              @Data << descnatdnatrule_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatFwInfoCount请求参数结构体
      class DescribeNatFwInfoCountRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeNatFwInfoCount返回参数结构体
      class DescribeNatFwInfoCountResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 返回参数 success 成功 failed 失败
        # @type ReturnMsg: String
        # @param NatFwInsCount: 当前租户的nat防火墙实例个数
        # @type NatFwInsCount: Integer
        # @param SubnetCount: 当前租户接入防火墙的子网个数
        # @type SubnetCount: Integer
        # @param OpenSwitchCount: 打开NAT防火墙开关个数
        # @type OpenSwitchCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnMsg, :NatFwInsCount, :SubnetCount, :OpenSwitchCount, :RequestId

        def initialize(returnmsg=nil, natfwinscount=nil, subnetcount=nil, openswitchcount=nil, requestid=nil)
          @ReturnMsg = returnmsg
          @NatFwInsCount = natfwinscount
          @SubnetCount = subnetcount
          @OpenSwitchCount = openswitchcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnMsg = params['ReturnMsg']
          @NatFwInsCount = params['NatFwInsCount']
          @SubnetCount = params['SubnetCount']
          @OpenSwitchCount = params['OpenSwitchCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatFwInstance请求参数结构体
      class DescribeNatFwInstanceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeNatFwInstance返回参数结构体
      class DescribeNatFwInstanceResponse < TencentCloud::Common::AbstractModel
        # @param NatinsLst: 实例数组
        # @type NatinsLst: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatinsLst, :RequestId

        def initialize(natinslst=nil, requestid=nil)
          @NatinsLst = natinslst
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatinsLst'].nil?
            @NatinsLst = []
            params['NatinsLst'].each do |i|
              natfwinstance_tmp = NatFwInstance.new
              natfwinstance_tmp.deserialize(i)
              @NatinsLst << natfwinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatFwInstanceWithRegion请求参数结构体
      class DescribeNatFwInstanceWithRegionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeNatFwInstanceWithRegion返回参数结构体
      class DescribeNatFwInstanceWithRegionResponse < TencentCloud::Common::AbstractModel
        # @param NatinsLst: 实例数组
        # @type NatinsLst: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatinsLst, :RequestId

        def initialize(natinslst=nil, requestid=nil)
          @NatinsLst = natinslst
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatinsLst'].nil?
            @NatinsLst = []
            params['NatinsLst'].each do |i|
              natfwinstance_tmp = NatFwInstance.new
              natfwinstance_tmp.deserialize(i)
              @NatinsLst << natfwinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatFwInstancesInfo请求参数结构体
      class DescribeNatFwInstancesInfoRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 获取实例列表过滤字段
        # @type Filter: Array
        # @param Offset: 第几页
        # @type Offset: Integer
        # @param Limit: 每页长度
        # @type Limit: Integer

        attr_accessor :Filter, :Offset, :Limit

        def initialize(filter=nil, offset=nil, limit=nil)
          @Filter = filter
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              natfwfilter_tmp = NatFwFilter.new
              natfwfilter_tmp.deserialize(i)
              @Filter << natfwfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeNatFwInstancesInfo返回参数结构体
      class DescribeNatFwInstancesInfoResponse < TencentCloud::Common::AbstractModel
        # @param NatinsLst: 实例卡片信息数组
        # @type NatinsLst: Array
        # @param Total: nat 防火墙个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatinsLst, :Total, :RequestId

        def initialize(natinslst=nil, total=nil, requestid=nil)
          @NatinsLst = natinslst
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatinsLst'].nil?
            @NatinsLst = []
            params['NatinsLst'].each do |i|
              natinstanceinfo_tmp = NatInstanceInfo.new
              natinstanceinfo_tmp.deserialize(i)
              @NatinsLst << natinstanceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatFwVpcDnsLst请求参数结构体
      class DescribeNatFwVpcDnsLstRequest < TencentCloud::Common::AbstractModel
        # @param NatFwInsId: natfw 防火墙实例id
        # @type NatFwInsId: String
        # @param NatInsIdFilter: natfw 过滤，以','分隔
        # @type NatInsIdFilter: String
        # @param Offset: 分页页数
        # @type Offset: Integer
        # @param Limit: 每页最多个数
        # @type Limit: Integer

        attr_accessor :NatFwInsId, :NatInsIdFilter, :Offset, :Limit

        def initialize(natfwinsid=nil, natinsidfilter=nil, offset=nil, limit=nil)
          @NatFwInsId = natfwinsid
          @NatInsIdFilter = natinsidfilter
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NatFwInsId = params['NatFwInsId']
          @NatInsIdFilter = params['NatInsIdFilter']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeNatFwVpcDnsLst返回参数结构体
      class DescribeNatFwVpcDnsLstResponse < TencentCloud::Common::AbstractModel
        # @param VpcDnsSwitchLst: nat防火墙vpc dns 信息数组
        # @type VpcDnsSwitchLst: Array
        # @param ReturnMsg: 返回参数 success成功 failed 失败
        # @type ReturnMsg: String
        # @param Total: 开关总条数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcDnsSwitchLst, :ReturnMsg, :Total, :RequestId

        def initialize(vpcdnsswitchlst=nil, returnmsg=nil, total=nil, requestid=nil)
          @VpcDnsSwitchLst = vpcdnsswitchlst
          @ReturnMsg = returnmsg
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcDnsSwitchLst'].nil?
            @VpcDnsSwitchLst = []
            params['VpcDnsSwitchLst'].each do |i|
              vpcdnsinfo_tmp = VpcDnsInfo.new
              vpcdnsinfo_tmp.deserialize(i)
              @VpcDnsSwitchLst << vpcdnsinfo_tmp
            end
          end
          @ReturnMsg = params['ReturnMsg']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceGroupNew请求参数结构体
      class DescribeResourceGroupNewRequest < TencentCloud::Common::AbstractModel
        # @param QueryType: 查询类型 网络结构-vpc，业务识别-resource ，资源标签-tag
        # @type QueryType: String
        # @param GroupId: 资产组id  全部传0
        # @type GroupId: String
        # @param ShowType: all  包含子组 own自己
        # @type ShowType: String

        attr_accessor :QueryType, :GroupId, :ShowType

        def initialize(querytype=nil, groupid=nil, showtype=nil)
          @QueryType = querytype
          @GroupId = groupid
          @ShowType = showtype
        end

        def deserialize(params)
          @QueryType = params['QueryType']
          @GroupId = params['GroupId']
          @ShowType = params['ShowType']
        end
      end

      # DescribeResourceGroupNew返回参数结构体
      class DescribeResourceGroupNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回树形结构
        # @type Data: String
        # @param ReturnCode: 返回码；0为请求成功
        # @type ReturnCode: Integer
        # @param ReturnMsg: 接口返回消息
        # @type ReturnMsg: String
        # @param UnResourceNum: 未分类实例数量
        # @type UnResourceNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ReturnCode, :ReturnMsg, :UnResourceNum, :RequestId

        def initialize(data=nil, returncode=nil, returnmsg=nil, unresourcenum=nil, requestid=nil)
          @Data = data
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @UnResourceNum = unresourcenum
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @UnResourceNum = params['UnResourceNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceGroup请求参数结构体
      class DescribeResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param QueryType: 查询类型 网络结构 vpc，业务识别- resource ，资源标签-tag
        # @type QueryType: String
        # @param GroupId: 资产组id  全部传0
        # @type GroupId: String
        # @param ShowType: all  包含子组 own自己
        # @type ShowType: String

        attr_accessor :QueryType, :GroupId, :ShowType

        def initialize(querytype=nil, groupid=nil, showtype=nil)
          @QueryType = querytype
          @GroupId = groupid
          @ShowType = showtype
        end

        def deserialize(params)
          @QueryType = params['QueryType']
          @GroupId = params['GroupId']
          @ShowType = params['ShowType']
        end
      end

      # DescribeResourceGroup返回参数结构体
      class DescribeResourceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回树形结构
        # @type Data: String
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

      # DescribeRuleOverview请求参数结构体
      class DescribeRuleOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer

        attr_accessor :Direction

        def initialize(direction=nil)
          @Direction = direction
        end

        def deserialize(params)
          @Direction = params['Direction']
        end
      end

      # DescribeRuleOverview返回参数结构体
      class DescribeRuleOverviewResponse < TencentCloud::Common::AbstractModel
        # @param AllTotal: 规则总数
        # @type AllTotal: Integer
        # @param StrategyNum: 阻断策略规则数量
        # @type StrategyNum: Integer
        # @param StartRuleNum: 启用规则数量
        # @type StartRuleNum: Integer
        # @param StopRuleNum: 停用规则数量
        # @type StopRuleNum: Integer
        # @param RemainingNum: 剩余配额
        # @type RemainingNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllTotal, :StrategyNum, :StartRuleNum, :StopRuleNum, :RemainingNum, :RequestId

        def initialize(alltotal=nil, strategynum=nil, startrulenum=nil, stoprulenum=nil, remainingnum=nil, requestid=nil)
          @AllTotal = alltotal
          @StrategyNum = strategynum
          @StartRuleNum = startrulenum
          @StopRuleNum = stoprulenum
          @RemainingNum = remainingnum
          @RequestId = requestid
        end

        def deserialize(params)
          @AllTotal = params['AllTotal']
          @StrategyNum = params['StrategyNum']
          @StartRuleNum = params['StartRuleNum']
          @StopRuleNum = params['StopRuleNum']
          @RemainingNum = params['RemainingNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupList请求参数结构体
      class DescribeSecurityGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 0: 出站规则，1：入站规则
        # @type Direction: Integer
        # @param Area: 地域代码（例: ap-guangzhou),支持腾讯云全部地域
        # @type Area: String
        # @param SearchValue: 搜索值
        # @type SearchValue: String
        # @param Limit: 每页条数，默认为10
        # @type Limit: Integer
        # @param Offset: 偏移值，默认为0
        # @type Offset: Integer
        # @param Status: 状态，'': 全部，'0'：筛选停用规则，'1'：筛选启用规则
        # @type Status: String
        # @param Filter: 0: 不过滤，1：过滤掉正常规则，保留下发异常规则
        # @type Filter: Integer

        attr_accessor :Direction, :Area, :SearchValue, :Limit, :Offset, :Status, :Filter

        def initialize(direction=nil, area=nil, searchvalue=nil, limit=nil, offset=nil, status=nil, filter=nil)
          @Direction = direction
          @Area = area
          @SearchValue = searchvalue
          @Limit = limit
          @Offset = offset
          @Status = status
          @Filter = filter
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Area = params['Area']
          @SearchValue = params['SearchValue']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @Filter = params['Filter']
        end
      end

      # DescribeSecurityGroupList返回参数结构体
      class DescribeSecurityGroupListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 列表当前规则总条数
        # @type Total: Integer
        # @param Data: 安全组规则列表数据
        # @type Data: Array
        # @param AllTotal: 不算筛选条数的总条数
        # @type AllTotal: Integer
        # @param Enable: 访问控制规则全部启用/全部停用
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AllTotal, :Enable, :RequestId

        def initialize(total=nil, data=nil, alltotal=nil, enable=nil, requestid=nil)
          @Total = total
          @Data = data
          @AllTotal = alltotal
          @Enable = enable
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygrouplistdata_tmp = SecurityGroupListData.new
              securitygrouplistdata_tmp.deserialize(i)
              @Data << securitygrouplistdata_tmp
            end
          end
          @AllTotal = params['AllTotal']
          @Enable = params['Enable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSourceAsset请求参数结构体
      class DescribeSourceAssetRequest < TencentCloud::Common::AbstractModel
        # @param ChooseType: ChooseType为1，查询已经分组的资产；ChooseType不为1查询没有分组的资产
        # @type ChooseType: String
        # @param FuzzySearch: 模糊查询
        # @type FuzzySearch: String
        # @param InsType: 资产类型 1公网 2内网
        # @type InsType: String
        # @param Limit: 查询单页的最大值；eg：10；则最多返回10条结果
        # @type Limit: Integer
        # @param Offset: 查询结果的偏移量
        # @type Offset: Integer
        # @param Zone: 地域
        # @type Zone: String

        attr_accessor :ChooseType, :FuzzySearch, :InsType, :Limit, :Offset, :Zone

        def initialize(choosetype=nil, fuzzysearch=nil, instype=nil, limit=nil, offset=nil, zone=nil)
          @ChooseType = choosetype
          @FuzzySearch = fuzzysearch
          @InsType = instype
          @Limit = limit
          @Offset = offset
          @Zone = zone
        end

        def deserialize(params)
          @ChooseType = params['ChooseType']
          @FuzzySearch = params['FuzzySearch']
          @InsType = params['InsType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Zone = params['Zone']
        end
      end

      # DescribeSourceAsset返回参数结构体
      class DescribeSourceAssetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据
        # @type Data: Array
        # @param Total: 返回数据总数
        # @type Total: Integer
        # @param ZoneList: 地域集合
        # @type ZoneList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :ZoneList, :RequestId

        def initialize(data=nil, total=nil, zonelist=nil, requestid=nil)
          @Data = data
          @Total = total
          @ZoneList = zonelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Data << instanceinfo_tmp
            end
          end
          @Total = params['Total']
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              assetzone_tmp = AssetZone.new
              assetzone_tmp.deserialize(i)
              @ZoneList << assetzone_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSwitchLists请求参数结构体
      class DescribeSwitchListsRequest < TencentCloud::Common::AbstractModel
        # @param Status: 防火墙状态  0: 关闭，1：开启
        # @type Status: Integer
        # @param Type: 资产类型 CVM/NAT/VPN/CLB/其它
        # @type Type: String
        # @param Area: 地域 上海/重庆/广州，等等
        # @type Area: String
        # @param SearchValue: 搜索值  例子："{"common":"106.54.189.45"}"
        # @type SearchValue: String
        # @param Limit: 条数  默认值:10
        # @type Limit: Integer
        # @param Offset: 偏移值 默认值: 0
        # @type Offset: Integer
        # @param Order: 排序，desc：降序，asc：升序
        # @type Order: String
        # @param By: 排序字段 PortTimes(风险端口数)
        # @type By: String

        attr_accessor :Status, :Type, :Area, :SearchValue, :Limit, :Offset, :Order, :By

        def initialize(status=nil, type=nil, area=nil, searchvalue=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Status = status
          @Type = type
          @Area = area
          @SearchValue = searchvalue
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Status = params['Status']
          @Type = params['Type']
          @Area = params['Area']
          @SearchValue = params['SearchValue']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeSwitchLists返回参数结构体
      class DescribeSwitchListsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: 列表数据
        # @type Data: Array
        # @param AreaLists: 区域列表
        # @type AreaLists: Array
        # @param OnNum: 打开个数
        # @type OnNum: Integer
        # @param OffNum: 关闭个数
        # @type OffNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AreaLists, :OnNum, :OffNum, :RequestId

        def initialize(total=nil, data=nil, arealists=nil, onnum=nil, offnum=nil, requestid=nil)
          @Total = total
          @Data = data
          @AreaLists = arealists
          @OnNum = onnum
          @OffNum = offnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              switchlistsdata_tmp = SwitchListsData.new
              switchlistsdata_tmp.deserialize(i)
              @Data << switchlistsdata_tmp
            end
          end
          @AreaLists = params['AreaLists']
          @OnNum = params['OnNum']
          @OffNum = params['OffNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTLogInfo请求参数结构体
      class DescribeTLogInfoRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型 1 告警 2阻断
        # @type QueryType: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :EndTime, :QueryType, :StartTime, :SearchValue

        def initialize(endtime=nil, querytype=nil, starttime=nil, searchvalue=nil)
          @EndTime = endtime
          @QueryType = querytype
          @StartTime = starttime
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @StartTime = params['StartTime']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTLogInfo返回参数结构体
      class DescribeTLogInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: "NetworkNum":网络扫描探测
        #  "HandleNum": 待处理事件
        # "BanNum":
        #   "VulNum": 漏洞利用
        #   "OutNum": 失陷主机
        # "BruteForceNum": 0
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.TLogInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TLogInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTLogIpList请求参数结构体
      class DescribeTLogIpListRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型 1 告警 2阻断
        # @type QueryType: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Top: top数
        # @type Top: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :EndTime, :QueryType, :StartTime, :Top, :SearchValue

        def initialize(endtime=nil, querytype=nil, starttime=nil, top=nil, searchvalue=nil)
          @EndTime = endtime
          @QueryType = querytype
          @StartTime = starttime
          @Top = top
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @StartTime = params['StartTime']
          @Top = params['Top']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTLogIpList返回参数结构体
      class DescribeTLogIpListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据集合
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
              staticinfo_tmp = StaticInfo.new
              staticinfo_tmp.deserialize(i)
              @Data << staticinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableStatus请求参数结构体
      class DescribeTableStatusRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: EdgeId值两个vpc间的边id vpc填Edgeid，不要填Area；
        # @type EdgeId: String
        # @param Status: 状态值，0：检查表的状态 确实只有一个默认值
        # @type Status: Integer
        # @param Area: Nat所在地域 NAT填Area，不要填Edgeid；
        # @type Area: String
        # @param Direction: 方向，0：出站，1：入站 默认值为 0
        # @type Direction: Integer

        attr_accessor :EdgeId, :Status, :Area, :Direction

        def initialize(edgeid=nil, status=nil, area=nil, direction=nil)
          @EdgeId = edgeid
          @Status = status
          @Area = area
          @Direction = direction
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Area = params['Area']
          @Direction = params['Direction']
        end
      end

      # DescribeTableStatus返回参数结构体
      class DescribeTableStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：正常，其它：不正常
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeUnHandleEventTabList请求参数结构体
      class DescribeUnHandleEventTabListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param AssetID: 查询示例ID
        # @type AssetID: String

        attr_accessor :StartTime, :EndTime, :AssetID

        def initialize(starttime=nil, endtime=nil, assetid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @AssetID = assetid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AssetID = params['AssetID']
        end
      end

      # DescribeUnHandleEventTabList返回参数结构体
      class DescribeUnHandleEventTabListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 租户伪攻击链未处置事件
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.UnHandleEvent`
        # @param ReturnCode: 错误码，0成功 非0错误
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息 success成功
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(data=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @Data = data
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UnHandleEvent.new
            @Data.deserialize(params['Data'])
          end
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcAcRule请求参数结构体
      class DescribeVpcAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Index: 需要查询的索引，特定场景使用，可不填
        # @type Index: String
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        # @type Order: String
        # @param By: 排序所用到的字段
        # @type By: String

        attr_accessor :Limit, :Offset, :Index, :Filters, :StartTime, :EndTime, :Order, :By

        def initialize(limit=nil, offset=nil, index=nil, filters=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Index = index
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Index = params['Index']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeVpcAcRule返回参数结构体
      class DescribeVpcAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: 内网间访问控制列表数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RequestId

        def initialize(total=nil, data=nil, requestid=nil)
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vpcruleitem_tmp = VpcRuleItem.new
              vpcruleitem_tmp.deserialize(i)
              @Data << vpcruleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcFwGroupSwitch请求参数结构体
      class DescribeVpcFwGroupSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Filters: 过滤条件组合
        # @type Filters: Array
        # @param StartTime: 检索的起始时间，可不传
        # @type StartTime: String
        # @param EndTime: 检索的截止时间，可不传
        # @type EndTime: String
        # @param Order: desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        # @type Order: String
        # @param By: 排序所用到的字段
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :StartTime, :EndTime, :Order, :By

        def initialize(limit=nil, offset=nil, filters=nil, starttime=nil, endtime=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeVpcFwGroupSwitch返回参数结构体
      class DescribeVpcFwGroupSwitchResponse < TencentCloud::Common::AbstractModel
        # @param SwitchList: 开关列表
        # @type SwitchList: Array
        # @param Total: 开关总个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SwitchList, :Total, :RequestId

        def initialize(switchlist=nil, total=nil, requestid=nil)
          @SwitchList = switchlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SwitchList'].nil?
            @SwitchList = []
            params['SwitchList'].each do |i|
              fwgroupswitchshow_tmp = FwGroupSwitchShow.new
              fwgroupswitchshow_tmp.deserialize(i)
              @SwitchList << fwgroupswitchshow_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 设置nat防火墙的vpc dns 接入开关
      class DnsVpcSwitch < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param Status: 0：设置为关闭 1:设置为打开
        # @type Status: Integer

        attr_accessor :VpcId, :Status

        def initialize(vpcid=nil, status=nil)
          @VpcId = vpcid
          @Status = status
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @Status = params['Status']
        end
      end

      # 边界防火墙公网IP开关列表
      class EdgeIpInfo < TencentCloud::Common::AbstractModel
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param PublicIpType: 公网 IP 类型 1 公网,2 弹性,3 弹性ipv6,4 anycastIP, 6 HighQualityEIP
        # @type PublicIpType: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param IntranetIp: 内网IP
        # @type IntranetIp: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 地域
        # @type Region: String
        # @param PortRiskCount: 风险端口数
        # @type PortRiskCount: Integer
        # @param LastScanTime: 最近扫描时间
        # @type LastScanTime: String
        # @param IsRegionEip: 是否为region eip
        # 0 不为region eip，不能选择串行
        # 1 为region eip 可以选择串行
        # @type IsRegionEip: Integer
        # @param VpcId: EIP 所关联的VPC
        # @type VpcId: String
        # @param IsSerialRegion: 0: 该地域暂未支持串行
        # 1: 该用户未在该地域配置串行带宽
        # 2: 该用户已在该地域配置串行带宽，可以开启串行开关
        # @type IsSerialRegion: Integer
        # @param IsPublicClb: 0: 不是公网CLB 可以开启串行开关
        # 1: 是公网CLB 不可以开启串行开关
        # @type IsPublicClb: Integer
        # @param EndpointBindEipNum: 0: 开启开关时提示要创建私有连接。
        # 1: 关闭该开关是提示删除私有连接。
        # 如果大于 1: 关闭开关 、开启开关不需提示创建删除私有连接。
        # @type EndpointBindEipNum: Integer
        # @param ScanMode: 扫描深度
        # @type ScanMode: String
        # @param ScanStatus: 扫描状态
        # @type ScanStatus: Integer
        # @param Status: 开关状态
        # 0 : 关闭
        # 1 : 开启
        # 2 : 开启中
        # 3 : 关闭中
        # 4 : 异常
        # @type Status: Integer
        # @param EndpointId: 私有连接ID
        # @type EndpointId: String
        # @param EndpointIp: 私有连接IP
        # @type EndpointIp: String
        # @param SwitchMode: 0 : 旁路
        # 1 : 串行
        # 2 : 正在模式切换
        # @type SwitchMode: Integer
        # @param SwitchWeight: 开关权重
        # @type SwitchWeight: Integer
        # @param Domain: 域名化CLB的域名
        # @type Domain: String
        # @param OverUsedStatus: IP超量状态
        # @type OverUsedStatus: Integer

        attr_accessor :PublicIp, :PublicIpType, :InstanceId, :InstanceName, :IntranetIp, :AssetType, :Region, :PortRiskCount, :LastScanTime, :IsRegionEip, :VpcId, :IsSerialRegion, :IsPublicClb, :EndpointBindEipNum, :ScanMode, :ScanStatus, :Status, :EndpointId, :EndpointIp, :SwitchMode, :SwitchWeight, :Domain, :OverUsedStatus

        def initialize(publicip=nil, publiciptype=nil, instanceid=nil, instancename=nil, intranetip=nil, assettype=nil, region=nil, portriskcount=nil, lastscantime=nil, isregioneip=nil, vpcid=nil, isserialregion=nil, ispublicclb=nil, endpointbindeipnum=nil, scanmode=nil, scanstatus=nil, status=nil, endpointid=nil, endpointip=nil, switchmode=nil, switchweight=nil, domain=nil, overusedstatus=nil)
          @PublicIp = publicip
          @PublicIpType = publiciptype
          @InstanceId = instanceid
          @InstanceName = instancename
          @IntranetIp = intranetip
          @AssetType = assettype
          @Region = region
          @PortRiskCount = portriskcount
          @LastScanTime = lastscantime
          @IsRegionEip = isregioneip
          @VpcId = vpcid
          @IsSerialRegion = isserialregion
          @IsPublicClb = ispublicclb
          @EndpointBindEipNum = endpointbindeipnum
          @ScanMode = scanmode
          @ScanStatus = scanstatus
          @Status = status
          @EndpointId = endpointid
          @EndpointIp = endpointip
          @SwitchMode = switchmode
          @SwitchWeight = switchweight
          @Domain = domain
          @OverUsedStatus = overusedstatus
        end

        def deserialize(params)
          @PublicIp = params['PublicIp']
          @PublicIpType = params['PublicIpType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @IntranetIp = params['IntranetIp']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @PortRiskCount = params['PortRiskCount']
          @LastScanTime = params['LastScanTime']
          @IsRegionEip = params['IsRegionEip']
          @VpcId = params['VpcId']
          @IsSerialRegion = params['IsSerialRegion']
          @IsPublicClb = params['IsPublicClb']
          @EndpointBindEipNum = params['EndpointBindEipNum']
          @ScanMode = params['ScanMode']
          @ScanStatus = params['ScanStatus']
          @Status = params['Status']
          @EndpointId = params['EndpointId']
          @EndpointIp = params['EndpointIp']
          @SwitchMode = params['SwitchMode']
          @SwitchWeight = params['SwitchWeight']
          @Domain = params['Domain']
          @OverUsedStatus = params['OverUsedStatus']
        end
      end

      # 开启、关闭 防火墙互联网边界开关
      class EdgeIpSwitch < TencentCloud::Common::AbstractModel
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param SubnetId: vpc 中第一个EIP开关打开，需要指定子网创建私有连接
        # @type SubnetId: String
        # @param EndpointIp: 创建私有连接指定IP
        # @type EndpointIp: String
        # @param SwitchMode: 0 : 旁路 1 : 串行
        # @type SwitchMode: Integer

        attr_accessor :PublicIp, :SubnetId, :EndpointIp, :SwitchMode

        def initialize(publicip=nil, subnetid=nil, endpointip=nil, switchmode=nil)
          @PublicIp = publicip
          @SubnetId = subnetid
          @EndpointIp = endpointip
          @SwitchMode = switchmode
        end

        def deserialize(params)
          @PublicIp = params['PublicIp']
          @SubnetId = params['SubnetId']
          @EndpointIp = params['EndpointIp']
          @SwitchMode = params['SwitchMode']
        end
      end

      # 企业安全组自动化任务信息
      class EnterpriseSecurityGroupRuleBetaInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param LastTime: 时间
        # @type LastTime: String

        attr_accessor :TaskId, :TaskName, :LastTime

        def initialize(taskid=nil, taskname=nil, lasttime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @LastTime = lasttime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @LastTime = params['LastTime']
        end
      end

      # 企业安全组规则列表信息
      class EnterpriseSecurityGroupRuleRuleInfo < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 排序
        # @type OrderIndex: Integer
        # @param RuleUuid: 主键id
        # @type RuleUuid: Integer
        # @param Uuid: 规则uuid
        # @type Uuid: String
        # @param SourceId: 源规则内容
        # @type SourceId: String
        # @param SourceType: 源规则类型
        # 取值范围 0/1/2/3/4/5/6/7/8/9/100
        # 0表示ip(net),
        # 1表示VPC实例(intance)
        # 2表示子网实例(intance)
        # 3表示CVM实例(intance)
        # 4表示CLB实例(intance)
        # 5表示ENI实例(intance)
        # 6表示数据库实例(intance)
        # 7表示模版(template)
        # 8表示标签(tag)
        # 9表示地域(region)
        # 100表示资产分组(resourcegroup)
        # @type SourceType: Integer
        # @param TargetId: 目的规则内容
        # @type TargetId: String
        # @param TargetType: 目的规则类型
        # 取值范围 0/1/2/3/4/5/6/7/8/9/100
        # 0表示ip(net),
        # 1表示VPC实例(intance)
        # 2表示子网实例(intance)
        # 3表示CVM实例(intance)
        # 4表示CLB实例(intance)
        # 5表示ENI实例(intance)
        # 6表示数据库实例(intance)
        # 7表示模版(template)
        # 8表示标签(tag)
        # 9表示地域(region)
        # 100表示资产分组(resourcegroup)
        # @type TargetType: Integer
        # @param Protocol: 协议名称
        # 取值范围:TCP/ANY/ICMP/UDP
        # ANY:表示所有
        # @type Protocol: String
        # @param Port: 端口
        # @type Port: String
        # @param Strategy: 规则策略
        # 取值范围:1/2
        # 1:阻断
        # 2:放行
        # @type Strategy: Integer
        # @param Status: 规则启用状态
        # 取值范围： 0/1
        # 0:未开启
        # 1:开启
        # @type Status: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param AclTags: 标签
        # @type AclTags: String
        # @param IsNew: 规则最新一次是否有改动
        # 取值范围：0/1
        # 0:否
        # 1:是
        # @type IsNew: Integer
        # @param Region: 地域
        # @type Region: String
        # @param IsDelay: 是否延迟下发规则
        # 取值范围：0/1
        # 0:立即下发 1:延迟下发
        # @type IsDelay: Integer
        # @param ServiceTemplateId: 服务模板id
        # @type ServiceTemplateId: String
        # @param SouInstanceName: 源资产名称
        # @type SouInstanceName: String
        # @param SouPublicIp: 源资产公网ip
        # @type SouPublicIp: String
        # @param SouPrivateIp: 源资产内网ip
        # @type SouPrivateIp: String
        # @param SouCidr: 源资产网段信息
        # @type SouCidr: String
        # @param SouParameterName: 源模板名称
        # @type SouParameterName: String
        # @param InstanceName: 目的资产名称
        # @type InstanceName: String
        # @param PublicIp: 目的资产公网ip
        # @type PublicIp: String
        # @param PrivateIp: 目的资产内网ip
        # @type PrivateIp: String
        # @param Cidr: 目的资产网段信息
        # @type Cidr: String
        # @param ParameterName: 目的模板名称
        # @type ParameterName: String
        # @param ProtocolPortName: 端口模板名称
        # @type ProtocolPortName: String
        # @param BetaList: 自动化任务信息
        # @type BetaList: Array
        # @param Id: 规则id  等同RuleUuid
        # @type Id: Integer

        attr_accessor :OrderIndex, :RuleUuid, :Uuid, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Status, :Detail, :AclTags, :IsNew, :Region, :IsDelay, :ServiceTemplateId, :SouInstanceName, :SouPublicIp, :SouPrivateIp, :SouCidr, :SouParameterName, :InstanceName, :PublicIp, :PrivateIp, :Cidr, :ParameterName, :ProtocolPortName, :BetaList, :Id

        def initialize(orderindex=nil, ruleuuid=nil, uuid=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, status=nil, detail=nil, acltags=nil, isnew=nil, region=nil, isdelay=nil, servicetemplateid=nil, souinstancename=nil, soupublicip=nil, souprivateip=nil, soucidr=nil, souparametername=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil, parametername=nil, protocolportname=nil, betalist=nil, id=nil)
          @OrderIndex = orderindex
          @RuleUuid = ruleuuid
          @Uuid = uuid
          @SourceId = sourceid
          @SourceType = sourcetype
          @TargetId = targetid
          @TargetType = targettype
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Status = status
          @Detail = detail
          @AclTags = acltags
          @IsNew = isnew
          @Region = region
          @IsDelay = isdelay
          @ServiceTemplateId = servicetemplateid
          @SouInstanceName = souinstancename
          @SouPublicIp = soupublicip
          @SouPrivateIp = souprivateip
          @SouCidr = soucidr
          @SouParameterName = souparametername
          @InstanceName = instancename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Cidr = cidr
          @ParameterName = parametername
          @ProtocolPortName = protocolportname
          @BetaList = betalist
          @Id = id
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @RuleUuid = params['RuleUuid']
          @Uuid = params['Uuid']
          @SourceId = params['SourceId']
          @SourceType = params['SourceType']
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Status = params['Status']
          @Detail = params['Detail']
          @AclTags = params['AclTags']
          @IsNew = params['IsNew']
          @Region = params['Region']
          @IsDelay = params['IsDelay']
          @ServiceTemplateId = params['ServiceTemplateId']
          @SouInstanceName = params['SouInstanceName']
          @SouPublicIp = params['SouPublicIp']
          @SouPrivateIp = params['SouPrivateIp']
          @SouCidr = params['SouCidr']
          @SouParameterName = params['SouParameterName']
          @InstanceName = params['InstanceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Cidr = params['Cidr']
          @ParameterName = params['ParameterName']
          @ProtocolPortName = params['ProtocolPortName']
          unless params['BetaList'].nil?
            @BetaList = []
            params['BetaList'].each do |i|
              enterprisesecuritygrouprulebetainfo_tmp = EnterpriseSecurityGroupRuleBetaInfo.new
              enterprisesecuritygrouprulebetainfo_tmp.deserialize(i)
              @BetaList << enterprisesecuritygrouprulebetainfo_tmp
            end
          end
          @Id = params['Id']
        end
      end

      # ExpandCfwVertical请求参数结构体
      class ExpandCfwVerticalRequest < TencentCloud::Common::AbstractModel
        # @param FwType: nat：nat防火墙，ew：东西向防火墙
        # @type FwType: String
        # @param Width: 带宽值
        # @type Width: Integer
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String
        # @param ElasticSwitch: 弹性开关 1打开 0 关闭
        # @type ElasticSwitch: Integer
        # @param ElasticBandwidth: 弹性带宽上限，单位Mbps
        # @type ElasticBandwidth: Integer
        # @param Tags: 按量计费标签
        # @type Tags: Array

        attr_accessor :FwType, :Width, :CfwInstance, :ElasticSwitch, :ElasticBandwidth, :Tags

        def initialize(fwtype=nil, width=nil, cfwinstance=nil, elasticswitch=nil, elasticbandwidth=nil, tags=nil)
          @FwType = fwtype
          @Width = width
          @CfwInstance = cfwinstance
          @ElasticSwitch = elasticswitch
          @ElasticBandwidth = elasticbandwidth
          @Tags = tags
        end

        def deserialize(params)
          @FwType = params['FwType']
          @Width = params['Width']
          @CfwInstance = params['CfwInstance']
          @ElasticSwitch = params['ElasticSwitch']
          @ElasticBandwidth = params['ElasticBandwidth']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # ExpandCfwVertical返回参数结构体
      class ExpandCfwVerticalResponse < TencentCloud::Common::AbstractModel
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

      # 防火墙网段信息
      class FwCidrInfo < TencentCloud::Common::AbstractModel
        # @param FwCidrType: 防火墙使用的网段类型，值VpcSelf/Assis/Custom分别代表自有网段优先/扩展网段优先/自定义
        # @type FwCidrType: String
        # @param FwCidrLst: 为每个vpc指定防火墙的网段
        # @type FwCidrLst: Array
        # @param ComFwCidr: 其他防火墙占用网段，一般是防火墙需要独占vpc时指定的网段
        # @type ComFwCidr: String

        attr_accessor :FwCidrType, :FwCidrLst, :ComFwCidr

        def initialize(fwcidrtype=nil, fwcidrlst=nil, comfwcidr=nil)
          @FwCidrType = fwcidrtype
          @FwCidrLst = fwcidrlst
          @ComFwCidr = comfwcidr
        end

        def deserialize(params)
          @FwCidrType = params['FwCidrType']
          unless params['FwCidrLst'].nil?
            @FwCidrLst = []
            params['FwCidrLst'].each do |i|
              fwvpccidr_tmp = FwVpcCidr.new
              fwvpccidr_tmp.deserialize(i)
              @FwCidrLst << fwvpccidr_tmp
            end
          end
          @ComFwCidr = params['ComFwCidr']
        end
      end

      # 防火墙部署输入参数列表
      class FwDeploy < TencentCloud::Common::AbstractModel
        # @param DeployRegion: 防火墙部署地域
        # @type DeployRegion: String
        # @param Width: 带宽，单位：Mbps
        # @type Width: Integer
        # @param CrossAZone: 异地灾备 1：使用异地灾备；0：不使用异地灾备；为空则默认不使用异地灾备
        # @type CrossAZone: Integer
        # @param Zone: 主可用区，为空则选择默认可用区
        # @type Zone: String
        # @param ZoneBak: 备可用区，为空则选择默认可用区
        # @type ZoneBak: String
        # @param CdcId: 若为cdc防火墙时填充该id
        # @type CdcId: String

        attr_accessor :DeployRegion, :Width, :CrossAZone, :Zone, :ZoneBak, :CdcId

        def initialize(deployregion=nil, width=nil, crossazone=nil, zone=nil, zonebak=nil, cdcid=nil)
          @DeployRegion = deployregion
          @Width = width
          @CrossAZone = crossazone
          @Zone = zone
          @ZoneBak = zonebak
          @CdcId = cdcid
        end

        def deserialize(params)
          @DeployRegion = params['DeployRegion']
          @Width = params['Width']
          @CrossAZone = params['CrossAZone']
          @Zone = params['Zone']
          @ZoneBak = params['ZoneBak']
          @CdcId = params['CdcId']
        end
      end

      # 防火墙引流网关信息
      class FwGateway < TencentCloud::Common::AbstractModel
        # @param GatewayId: 防火墙网关id
        # @type GatewayId: String
        # @param VpcId: 网关所属vpc id
        # @type VpcId: String
        # @param IpAddress: 网关ip地址
        # @type IpAddress: String

        attr_accessor :GatewayId, :VpcId, :IpAddress

        def initialize(gatewayid=nil, vpcid=nil, ipaddress=nil)
          @GatewayId = gatewayid
          @VpcId = vpcid
          @IpAddress = ipaddress
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @VpcId = params['VpcId']
          @IpAddress = params['IpAddress']
        end
      end

      # 多种VPC墙模式开关结构
      class FwGroupSwitch < TencentCloud::Common::AbstractModel
        # @param SwitchMode: 防火墙实例的开关模式 1: 单点互通 2: 多点互通 3: 全互通 4: 自定义路由
        # @type SwitchMode: Integer
        # @param SwitchId: 防火墙开关ID
        # 支持三种类型
        # 1. 边开关(单点互通)
        # 2. 点开关(多点互通)
        # 3. 全开关(全互通)
        # @type SwitchId: String

        attr_accessor :SwitchMode, :SwitchId

        def initialize(switchmode=nil, switchid=nil)
          @SwitchMode = switchmode
          @SwitchId = switchid
        end

        def deserialize(params)
          @SwitchMode = params['SwitchMode']
          @SwitchId = params['SwitchId']
        end
      end

      # VPC防火墙(组)四种开关展示
      class FwGroupSwitchShow < TencentCloud::Common::AbstractModel
        # @param SwitchId: 防火墙开关ID
        # @type SwitchId: String
        # @param SwitchName: 防火墙开关NAME
        # @type SwitchName: String
        # @param SwitchMode: 互通模式
        # @type SwitchMode: Integer
        # @param ConnectType: 开关边连接类型 0：对等连接， 1：云连网
        # @type ConnectType: Integer
        # @param ConnectId: 连接ID
        # @type ConnectId: String
        # @param ConnectName: 连接名称
        # @type ConnectName: String
        # @param SrcInstancesInfo: 源实例信息
        # @type SrcInstancesInfo: Array
        # @param DstInstancesInfo: 目的实例信息
        # @type DstInstancesInfo: Array
        # @param FwGroupId: 防火墙(组)数据
        # @type FwGroupId: String
        # @param FwGroupName: 防火墙(组)名称
        # @type FwGroupName: String
        # @param Enable: 开关状态 0：关 ， 1：开
        # @type Enable: Integer
        # @param Status: 开关的状态 0：正常， 1：转换中
        # @type Status: Integer
        # @param AttachWithEdge: 0-非sase实例，忽略，1-未绑定状态，2-已绑定
        # @type AttachWithEdge: Integer
        # @param CrossEdgeStatus: 对等防火墙和开关状态 0：正常， 1：对等未创建防火墙，2：对等已创建防火墙，未打开开关
        # @type CrossEdgeStatus: Integer
        # @param FwInsRegion: 网络经过VPC防火墙CVM所在地域
        # @type FwInsRegion: Array
        # @param IpsAction: 0 观察 1 拦截 2 严格 3 关闭 4 不支持ips 前端展示tag
        # @type IpsAction: Integer
        # @param FwInsLst: 开关关联的防火墙实例列表
        # @type FwInsLst: Array
        # @param BypassStatus: 开关是否处于bypass状态
        # 0：正常状态
        # 1：bypass状态
        # @type BypassStatus: Integer
        # @param IpVersion: 0: ipv4 , 1:ipv6
        # @type IpVersion: Integer

        attr_accessor :SwitchId, :SwitchName, :SwitchMode, :ConnectType, :ConnectId, :ConnectName, :SrcInstancesInfo, :DstInstancesInfo, :FwGroupId, :FwGroupName, :Enable, :Status, :AttachWithEdge, :CrossEdgeStatus, :FwInsRegion, :IpsAction, :FwInsLst, :BypassStatus, :IpVersion

        def initialize(switchid=nil, switchname=nil, switchmode=nil, connecttype=nil, connectid=nil, connectname=nil, srcinstancesinfo=nil, dstinstancesinfo=nil, fwgroupid=nil, fwgroupname=nil, enable=nil, status=nil, attachwithedge=nil, crossedgestatus=nil, fwinsregion=nil, ipsaction=nil, fwinslst=nil, bypassstatus=nil, ipversion=nil)
          @SwitchId = switchid
          @SwitchName = switchname
          @SwitchMode = switchmode
          @ConnectType = connecttype
          @ConnectId = connectid
          @ConnectName = connectname
          @SrcInstancesInfo = srcinstancesinfo
          @DstInstancesInfo = dstinstancesinfo
          @FwGroupId = fwgroupid
          @FwGroupName = fwgroupname
          @Enable = enable
          @Status = status
          @AttachWithEdge = attachwithedge
          @CrossEdgeStatus = crossedgestatus
          @FwInsRegion = fwinsregion
          @IpsAction = ipsaction
          @FwInsLst = fwinslst
          @BypassStatus = bypassstatus
          @IpVersion = ipversion
        end

        def deserialize(params)
          @SwitchId = params['SwitchId']
          @SwitchName = params['SwitchName']
          @SwitchMode = params['SwitchMode']
          @ConnectType = params['ConnectType']
          @ConnectId = params['ConnectId']
          @ConnectName = params['ConnectName']
          unless params['SrcInstancesInfo'].nil?
            @SrcInstancesInfo = []
            params['SrcInstancesInfo'].each do |i|
              netinstancesinfo_tmp = NetInstancesInfo.new
              netinstancesinfo_tmp.deserialize(i)
              @SrcInstancesInfo << netinstancesinfo_tmp
            end
          end
          unless params['DstInstancesInfo'].nil?
            @DstInstancesInfo = []
            params['DstInstancesInfo'].each do |i|
              netinstancesinfo_tmp = NetInstancesInfo.new
              netinstancesinfo_tmp.deserialize(i)
              @DstInstancesInfo << netinstancesinfo_tmp
            end
          end
          @FwGroupId = params['FwGroupId']
          @FwGroupName = params['FwGroupName']
          @Enable = params['Enable']
          @Status = params['Status']
          @AttachWithEdge = params['AttachWithEdge']
          @CrossEdgeStatus = params['CrossEdgeStatus']
          @FwInsRegion = params['FwInsRegion']
          @IpsAction = params['IpsAction']
          unless params['FwInsLst'].nil?
            @FwInsLst = []
            params['FwInsLst'].each do |i|
              vpcfwinstanceshow_tmp = VpcFwInstanceShow.new
              vpcfwinstanceshow_tmp.deserialize(i)
              @FwInsLst << vpcfwinstanceshow_tmp
            end
          end
          @BypassStatus = params['BypassStatus']
          @IpVersion = params['IpVersion']
        end
      end

      # vpc的防火墙网段
      class FwVpcCidr < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的id
        # @type VpcId: String
        # @param FwCidr: 防火墙网段，最少/24的网段
        # @type FwCidr: String

        attr_accessor :VpcId, :FwCidr

        def initialize(vpcid=nil, fwcidr=nil)
          @VpcId = vpcid
          @FwCidr = fwcidr
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @FwCidr = params['FwCidr']
        end
      end

      # ip防护状态
      class IPDefendStatus < TencentCloud::Common::AbstractModel
        # @param IP: ip地址
        # @type IP: String
        # @param Status: 防护状态   1:防护打开; -1:地址错误; 其他:未防护
        # @type Status: Integer

        attr_accessor :IP, :Status

        def initialize(ip=nil, status=nil)
          @IP = ip
          @Status = status
        end

        def deserialize(params)
          @IP = params['IP']
          @Status = params['Status']
        end
      end

      # 入侵防御规则白名单详情
      class IdsWhiteInfo < TencentCloud::Common::AbstractModel
        # @param Id: 白名单唯一ID
        # @type Id: Integer
        # @param SrcIp: 源IP
        # @type SrcIp: String
        # @param DstIp: 目的IP
        # @type DstIp: String
        # @param WhiteRuleType: 规则类型
        # @type WhiteRuleType: String
        # @param FwType: 白名单生效防火墙范围： 1 边界防火墙 2 nat防火墙 4 vpc防火墙 7 = 1+2+4 所有防火墙
        # @type FwType: Integer
        # @param RuleId: 入侵防御规则ID
        # @type RuleId: String

        attr_accessor :Id, :SrcIp, :DstIp, :WhiteRuleType, :FwType, :RuleId

        def initialize(id=nil, srcip=nil, dstip=nil, whiteruletype=nil, fwtype=nil, ruleid=nil)
          @Id = id
          @SrcIp = srcip
          @DstIp = dstip
          @WhiteRuleType = whiteruletype
          @FwType = fwtype
          @RuleId = ruleid
        end

        def deserialize(params)
          @Id = params['Id']
          @SrcIp = params['SrcIp']
          @DstIp = params['DstIp']
          @WhiteRuleType = params['WhiteRuleType']
          @FwType = params['FwType']
          @RuleId = params['RuleId']
        end
      end

      # 实例详情结果
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param AppId: appid信息
        # @type AppId: String
        # @param InsSource: 资产来源
        # 1公网 2内网
        # @type InsSource: String
        # @param InsType: 资产类型
        #  3是cvm实例,4是clb实例,5是eni实例,6是mysql,7是redis,8是NAT,9是VPN,10是ES,11是MARIADB,12是KAFKA 13 NATFW
        # @type InsType: Integer
        # @param InstanceId: 资产id
        # @type InstanceId: String
        # @param InstanceName: 资产名
        # @type InstanceName: String
        # @param LeakNum: 漏洞数
        # @type LeakNum: String
        # @param PortNum: 端口数
        # @type PortNum: String
        # @param PrivateIp: 内网ip
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param Region: 地域
        # @type Region: String
        # @param RegionKey: 地域
        # @type RegionKey: String
        # @param ResourcePath: 资产路径
        # @type ResourcePath: Array
        # @param Server: 扫描结果
        # @type Server: Array
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param VPCName: vpc名称
        # @type VPCName: String
        # @param VpcId: vpcid信息
        # @type VpcId: String

        attr_accessor :AppId, :InsSource, :InsType, :InstanceId, :InstanceName, :LeakNum, :PortNum, :PrivateIp, :PublicIp, :Region, :RegionKey, :ResourcePath, :Server, :SubnetId, :VPCName, :VpcId

        def initialize(appid=nil, inssource=nil, instype=nil, instanceid=nil, instancename=nil, leaknum=nil, portnum=nil, privateip=nil, publicip=nil, region=nil, regionkey=nil, resourcepath=nil, server=nil, subnetid=nil, vpcname=nil, vpcid=nil)
          @AppId = appid
          @InsSource = inssource
          @InsType = instype
          @InstanceId = instanceid
          @InstanceName = instancename
          @LeakNum = leaknum
          @PortNum = portnum
          @PrivateIp = privateip
          @PublicIp = publicip
          @Region = region
          @RegionKey = regionkey
          @ResourcePath = resourcepath
          @Server = server
          @SubnetId = subnetid
          @VPCName = vpcname
          @VpcId = vpcid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @InsSource = params['InsSource']
          @InsType = params['InsType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @LeakNum = params['LeakNum']
          @PortNum = params['PortNum']
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Region = params['Region']
          @RegionKey = params['RegionKey']
          @ResourcePath = params['ResourcePath']
          @Server = params['Server']
          @SubnetId = params['SubnetId']
          @VPCName = params['VPCName']
          @VpcId = params['VpcId']
        end
      end

      # 入侵防御封禁列表、放通列表添加规则入参
      class IntrusionDefenseRule < TencentCloud::Common::AbstractModel
        # @param Direction: 规则方向，0出站，1入站，3内网间
        # @type Direction: Integer
        # @param EndTime: 规则结束时间，格式：2006-01-02 15:04:05，必须大于当前时间
        # @type EndTime: String
        # @param IP: 规则IP地址，IP与Domain必填其中之一
        # @type IP: String
        # @param Domain: 规则域名，IP与Domain必填其中之一
        # @type Domain: String
        # @param StartTime: 规则开始时间
        # @type StartTime: String
        # @param Comment: 备注信息，长度不能超过50
        # @type Comment: String

        attr_accessor :Direction, :EndTime, :IP, :Domain, :StartTime, :Comment

        def initialize(direction=nil, endtime=nil, ip=nil, domain=nil, starttime=nil, comment=nil)
          @Direction = direction
          @EndTime = endtime
          @IP = ip
          @Domain = domain
          @StartTime = starttime
          @Comment = comment
        end

        def deserialize(params)
          @Direction = params['Direction']
          @EndTime = params['EndTime']
          @IP = params['IP']
          @Domain = params['Domain']
          @StartTime = params['StartTime']
          @Comment = params['Comment']
        end
      end

      # 封禁放通IOC列表
      class IocListData < TencentCloud::Common::AbstractModel
        # @param IP: 待处置IP地址，IP/Domain字段二选一
        # @type IP: String
        # @param Direction: 只能为0或者1   0代表出站 1代表入站
        # @type Direction: Integer
        # @param Domain: 待处置域名，IP/Domain字段二选一
        # @type Domain: String

        attr_accessor :IP, :Direction, :Domain

        def initialize(ip=nil, direction=nil, domain=nil)
          @IP = ip
          @Direction = direction
          @Domain = domain
        end

        def deserialize(params)
          @IP = params['IP']
          @Direction = params['Direction']
          @Domain = params['Domain']
        end
      end

      # 统计折线图通用结构体
      class IpStatic < TencentCloud::Common::AbstractModel
        # @param Num: 值
        # @type Num: Integer
        # @param StatTime: 折线图横坐标时间
        # @type StatTime: String

        attr_accessor :Num, :StatTime

        def initialize(num=nil, stattime=nil)
          @Num = num
          @StatTime = stattime
        end

        def deserialize(params)
          @Num = params['Num']
          @StatTime = params['StatTime']
        end
      end

      # ModifyAcRule请求参数结构体
      class ModifyAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Data: 规则数组
        # @type Data: Array
        # @param EdgeId: EdgeId值
        # @type EdgeId: String
        # @param Enable: 访问规则状态
        # @type Enable: Integer
        # @param Area: NAT地域
        # @type Area: String

        attr_accessor :Data, :EdgeId, :Enable, :Area

        def initialize(data=nil, edgeid=nil, enable=nil, area=nil)
          @Data = data
          @EdgeId = edgeid
          @Enable = enable
          @Area = area
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ruleinfodata_tmp = RuleInfoData.new
              ruleinfodata_tmp.deserialize(i)
              @Data << ruleinfodata_tmp
            end
          end
          @EdgeId = params['EdgeId']
          @Enable = params['Enable']
          @Area = params['Area']
        end
      end

      # ModifyAcRule返回参数结构体
      class ModifyAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0:操作成功，非0：操作失败
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # @type Info: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId

        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAclRule请求参数结构体
      class ModifyAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 需要编辑的规则数组，基于Uuid唯一id修改该规则
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              createruleitem_tmp = CreateRuleItem.new
              createruleitem_tmp.deserialize(i)
              @Rules << createruleitem_tmp
            end
          end
        end
      end

      # ModifyAclRule返回参数结构体
      class ModifyAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 编辑成功后返回新策略ID列表
        # @type RuleUuid: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :RequestId

        def initialize(ruleuuid=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAddressTemplate请求参数结构体
      class ModifyAddressTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 地址模板唯一Id
        # @type Uuid: String
        # @param Name: 模板名称
        # @type Name: String
        # @param Detail: 模板描述
        # @type Detail: String
        # @param IpString: Type为1，ip模板eg：1.1.1.1,2.2.2.2；
        # Type为5，域名模板eg：www.qq.com,www.tencent.com
        # @type IpString: String
        # @param Type: 1 ip模板
        # 5 域名模板
        # @type Type: Integer
        # @param ProtocolType: 协议端口模板，协议类型，4:4层协议，7:7层协议。Type=6时必填。
        # @type ProtocolType: String

        attr_accessor :Uuid, :Name, :Detail, :IpString, :Type, :ProtocolType

        def initialize(uuid=nil, name=nil, detail=nil, ipstring=nil, type=nil, protocoltype=nil)
          @Uuid = uuid
          @Name = name
          @Detail = detail
          @IpString = ipstring
          @Type = type
          @ProtocolType = protocoltype
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Name = params['Name']
          @Detail = params['Detail']
          @IpString = params['IpString']
          @Type = params['Type']
          @ProtocolType = params['ProtocolType']
        end
      end

      # ModifyAddressTemplate返回参数结构体
      class ModifyAddressTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 创建结果,0成功
        # @type Status: Integer
        # @param Uuid: 唯一Id
        # @type Uuid: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Uuid, :RequestId

        def initialize(status=nil, uuid=nil, requestid=nil)
          @Status = status
          @Uuid = uuid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Uuid = params['Uuid']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAllPublicIPSwitchStatus请求参数结构体
      class ModifyAllPublicIPSwitchStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态，0：关闭，1：开启
        # @type Status: Integer
        # @param FireWallPublicIPs: 选中的防火墙开关Id
        # @type FireWallPublicIPs: Array

        attr_accessor :Status, :FireWallPublicIPs

        def initialize(status=nil, firewallpublicips=nil)
          @Status = status
          @FireWallPublicIPs = firewallpublicips
        end

        def deserialize(params)
          @Status = params['Status']
          @FireWallPublicIPs = params['FireWallPublicIPs']
        end
      end

      # ModifyAllPublicIPSwitchStatus返回参数结构体
      class ModifyAllPublicIPSwitchStatusResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 接口返回信息
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnMsg, :ReturnCode, :RequestId

        def initialize(returnmsg=nil, returncode=nil, requestid=nil)
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAllRuleStatus请求参数结构体
      class ModifyAllRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态，0：全部停用，1：全部启用
        # @type Status: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param EdgeId: Edge ID值
        # @type EdgeId: String
        # @param Area: NAT地域
        # @type Area: String

        attr_accessor :Status, :Direction, :EdgeId, :Area

        def initialize(status=nil, direction=nil, edgeid=nil, area=nil)
          @Status = status
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Status = params['Status']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # ModifyAllRuleStatus返回参数结构体
      class ModifyAllRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 修改成功, 其他: 修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyAssetScan请求参数结构体
      class ModifyAssetScanRequest < TencentCloud::Common::AbstractModel
        # @param ScanRange: 扫描范围：1端口, 2端口+漏扫
        # @type ScanRange: Integer
        # @param ScanDeep: 扫描深度：'heavy', 'medium', 'light'
        # @type ScanDeep: String
        # @param RangeType: 扫描类型：1立即扫描 2 周期任务
        # @type RangeType: Integer
        # @param ScanPeriod: RangeType为2 是必须添加，定时任务时间
        # @type ScanPeriod: String
        # @param ScanFilterIp: 立即扫描这个字段传过滤的扫描集合
        # @type ScanFilterIp: Array
        # @param ScanType: 1全量2单个
        # @type ScanType: Integer

        attr_accessor :ScanRange, :ScanDeep, :RangeType, :ScanPeriod, :ScanFilterIp, :ScanType

        def initialize(scanrange=nil, scandeep=nil, rangetype=nil, scanperiod=nil, scanfilterip=nil, scantype=nil)
          @ScanRange = scanrange
          @ScanDeep = scandeep
          @RangeType = rangetype
          @ScanPeriod = scanperiod
          @ScanFilterIp = scanfilterip
          @ScanType = scantype
        end

        def deserialize(params)
          @ScanRange = params['ScanRange']
          @ScanDeep = params['ScanDeep']
          @RangeType = params['RangeType']
          @ScanPeriod = params['ScanPeriod']
          @ScanFilterIp = params['ScanFilterIp']
          @ScanType = params['ScanType']
        end
      end

      # ModifyAssetScan返回参数结构体
      class ModifyAssetScanResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 接口返回信息
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # @type ReturnCode: Integer
        # @param Status: 状态值 0：成功，1 执行扫描中,其他：失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnMsg, :ReturnCode, :Status, :RequestId

        def initialize(returnmsg=nil, returncode=nil, status=nil, requestid=nil)
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAssetSync请求参数结构体
      class ModifyAssetSyncRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyAssetSync返回参数结构体
      class ModifyAssetSyncResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回状态
        # 0 请求成功
        # 2 请求失败
        # 3 请求失败-频率限制
        # @type Status: Integer
        # @param ReturnMsg: success 成功
        # 其他失败
        # @type ReturnMsg: String
        # @param ReturnCode: 0 成功
        # 非0 失败
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ReturnMsg, :ReturnCode, :RequestId

        def initialize(status=nil, returnmsg=nil, returncode=nil, requestid=nil)
          @Status = status
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBlockIgnoreList请求参数结构体
      class ModifyBlockIgnoreListRequest < TencentCloud::Common::AbstractModel
        # @param RuleType: 1封禁列表 2 放通列表
        # @type RuleType: Integer
        # @param IOC: IP、Domain二选一（注：封禁列表，只能填写IP），不能同时为空
        # @type IOC: Array
        # @param IocAction: 可选值：delete（删除）、edit（编辑）、add（添加）  其他值无效
        # @type IocAction: String
        # @param StartTime: 时间格式：yyyy-MM-dd HH:mm:ss，IocAction 为edit或add时必填
        # @type StartTime: String
        # @param EndTime: 时间格式：yyyy-MM-dd HH:mm:ss，IocAction 为edit或add时必填，必须大于当前时间且大于StartTime
        # @type EndTime: String

        attr_accessor :RuleType, :IOC, :IocAction, :StartTime, :EndTime

        def initialize(ruletype=nil, ioc=nil, iocaction=nil, starttime=nil, endtime=nil)
          @RuleType = ruletype
          @IOC = ioc
          @IocAction = iocaction
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          unless params['IOC'].nil?
            @IOC = []
            params['IOC'].each do |i|
              ioclistdata_tmp = IocListData.new
              ioclistdata_tmp.deserialize(i)
              @IOC << ioclistdata_tmp
            end
          end
          @IocAction = params['IocAction']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyBlockIgnoreList返回参数结构体
      class ModifyBlockIgnoreListResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 接口返回信息
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnMsg, :ReturnCode, :RequestId

        def initialize(returnmsg=nil, returncode=nil, requestid=nil)
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBlockIgnoreRuleNew请求参数结构体
      class ModifyBlockIgnoreRuleNewRequest < TencentCloud::Common::AbstractModel
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Cfw.v20190904.models.BanAndAllowRule`
        # @param RuleType: RuleType: 1放通列表 2外部IP 3域名 4情报 5资产 6自定义规则  7入侵防御规则
        # @type RuleType: Integer

        attr_accessor :Rule, :RuleType

        def initialize(rule=nil, ruletype=nil)
          @Rule = rule
          @RuleType = ruletype
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = BanAndAllowRule.new
            @Rule.deserialize(params['Rule'])
          end
          @RuleType = params['RuleType']
        end
      end

      # ModifyBlockIgnoreRuleNew返回参数结构体
      class ModifyBlockIgnoreRuleNewResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBlockIgnoreRule请求参数结构体
      class ModifyBlockIgnoreRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rule: 规则列表
        # @type Rule: :class:`Tencentcloud::Cfw.v20190904.models.IntrusionDefenseRule`
        # @param RuleType: 规则类型，1封禁，2放通
        # @type RuleType: Integer

        attr_accessor :Rule, :RuleType

        def initialize(rule=nil, ruletype=nil)
          @Rule = rule
          @RuleType = ruletype
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = IntrusionDefenseRule.new
            @Rule.deserialize(params['Rule'])
          end
          @RuleType = params['RuleType']
        end
      end

      # ModifyBlockIgnoreRule返回参数结构体
      class ModifyBlockIgnoreRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBlockTop请求参数结构体
      class ModifyBlockTopRequest < TencentCloud::Common::AbstractModel
        # @param OpeType: 操作类型 1 置顶 0取消
        # @type OpeType: String
        # @param UniqueId: 记录id
        # @type UniqueId: String

        attr_accessor :OpeType, :UniqueId

        def initialize(opetype=nil, uniqueid=nil)
          @OpeType = opetype
          @UniqueId = uniqueid
        end

        def deserialize(params)
          @OpeType = params['OpeType']
          @UniqueId = params['UniqueId']
        end
      end

      # ModifyBlockTop返回参数结构体
      class ModifyBlockTopResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEWRuleStatus请求参数结构体
      class ModifyEWRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: vpc规则必填，边id
        # @type EdgeId: String
        # @param Status: 是否开关开启，0：未开启，1：开启
        # @type Status: Integer
        # @param Direction: 规则方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param RuleSequence: 更改的规则当前执行顺序
        # @type RuleSequence: Integer
        # @param RuleType: 规则类型，vpc：VPC间规则、nat：Nat边界规则
        # @type RuleType: String

        attr_accessor :EdgeId, :Status, :Direction, :RuleSequence, :RuleType

        def initialize(edgeid=nil, status=nil, direction=nil, rulesequence=nil, ruletype=nil)
          @EdgeId = edgeid
          @Status = status
          @Direction = direction
          @RuleSequence = rulesequence
          @RuleType = ruletype
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Direction = params['Direction']
          @RuleSequence = params['RuleSequence']
          @RuleType = params['RuleType']
        end
      end

      # ModifyEWRuleStatus返回参数结构体
      class ModifyEWRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 状态值，0：修改成功，非0：修改失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息，success：查询成功，fail：查询失败
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :ReturnMsg, :RequestId

        def initialize(returncode=nil, returnmsg=nil, requestid=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyEdgeIpSwitch请求参数结构体
      class ModifyEdgeIpSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 0 关闭开关
        # 1 打开开关
        # 2 不操作开关，此次切换模式
        # @type Enable: Integer
        # @param EdgeIpSwitchLst: 操作开关详情
        # @type EdgeIpSwitchLst: Array
        # @param AutoChooseSubnet: 0 不自动选择子网
        # 1 自动选择子网创建私有连接
        # @type AutoChooseSubnet: Integer
        # @param SwitchMode: 0 切换为旁路
        # 1 切换为串行
        # 2 不切换模式，此次操作开关
        # @type SwitchMode: Integer

        attr_accessor :Enable, :EdgeIpSwitchLst, :AutoChooseSubnet, :SwitchMode

        def initialize(enable=nil, edgeipswitchlst=nil, autochoosesubnet=nil, switchmode=nil)
          @Enable = enable
          @EdgeIpSwitchLst = edgeipswitchlst
          @AutoChooseSubnet = autochoosesubnet
          @SwitchMode = switchmode
        end

        def deserialize(params)
          @Enable = params['Enable']
          unless params['EdgeIpSwitchLst'].nil?
            @EdgeIpSwitchLst = []
            params['EdgeIpSwitchLst'].each do |i|
              edgeipswitch_tmp = EdgeIpSwitch.new
              edgeipswitch_tmp.deserialize(i)
              @EdgeIpSwitchLst << edgeipswitch_tmp
            end
          end
          @AutoChooseSubnet = params['AutoChooseSubnet']
          @SwitchMode = params['SwitchMode']
        end
      end

      # ModifyEdgeIpSwitch返回参数结构体
      class ModifyEdgeIpSwitchResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEnterpriseSecurityDispatchStatus请求参数结构体
      class ModifyEnterpriseSecurityDispatchStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 0：打开立即下发开关；

        # 1：关闭立即下发开关；

        # 2：关闭立即下发开关情况下，触发开始下发
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyEnterpriseSecurityDispatchStatus返回参数结构体
      class ModifyEnterpriseSecurityDispatchStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 修改成功, 其他: 修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyEnterpriseSecurityGroupRule请求参数结构体
      class ModifyEnterpriseSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 规则的uuid，可通过查询规则列表获取
        # @type RuleUuid: Integer
        # @param ModifyType: 修改类型，0：修改规则内容；1：修改单条规则开关状态；2：修改所有规则开关状态
        # @type ModifyType: Integer
        # @param Data: 编辑后的企业安全组规则数据；修改规则状态不用填该字段
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.SecurityGroupRule`
        # @param Enable: 0是关闭,1是开启
        # @type Enable: Integer

        attr_accessor :RuleUuid, :ModifyType, :Data, :Enable

        def initialize(ruleuuid=nil, modifytype=nil, data=nil, enable=nil)
          @RuleUuid = ruleuuid
          @ModifyType = modifytype
          @Data = data
          @Enable = enable
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @ModifyType = params['ModifyType']
          unless params['Data'].nil?
            @Data = SecurityGroupRule.new
            @Data.deserialize(params['Data'])
          end
          @Enable = params['Enable']
        end
      end

      # ModifyEnterpriseSecurityGroupRule返回参数结构体
      class ModifyEnterpriseSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：编辑成功，非0：编辑失败
        # @type Status: Integer
        # @param NewRuleUuid: 编辑后新生成规则的Id
        # @type NewRuleUuid: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :NewRuleUuid, :RequestId

        def initialize(status=nil, newruleuuid=nil, requestid=nil)
          @Status = status
          @NewRuleUuid = newruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @NewRuleUuid = params['NewRuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # ModifyFwGroupSwitch请求参数结构体
      class ModifyFwGroupSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 打开或关闭开关
        # 0：关闭开关
        # 1：打开开关
        # @type Enable: Integer
        # @param AllSwitch: 是否操作全部开关 0 不操作全部开关，1 操作全部开关
        # @type AllSwitch: Integer
        # @param SwitchList: 开关列表
        # @type SwitchList: Array

        attr_accessor :Enable, :AllSwitch, :SwitchList

        def initialize(enable=nil, allswitch=nil, switchlist=nil)
          @Enable = enable
          @AllSwitch = allswitch
          @SwitchList = switchlist
        end

        def deserialize(params)
          @Enable = params['Enable']
          @AllSwitch = params['AllSwitch']
          unless params['SwitchList'].nil?
            @SwitchList = []
            params['SwitchList'].each do |i|
              fwgroupswitch_tmp = FwGroupSwitch.new
              fwgroupswitch_tmp.deserialize(i)
              @SwitchList << fwgroupswitch_tmp
            end
          end
        end
      end

      # ModifyFwGroupSwitch返回参数结构体
      class ModifyFwGroupSwitchResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatAcRule请求参数结构体
      class ModifyNatAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 需要编辑的规则数组,基于Uuid唯一id来修改该规则
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              createnatruleitem_tmp = CreateNatRuleItem.new
              createnatruleitem_tmp.deserialize(i)
              @Rules << createnatruleitem_tmp
            end
          end
        end
      end

      # ModifyNatAcRule返回参数结构体
      class ModifyNatAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 编辑成功后返回新策略ID列表
        # @type RuleUuid: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :RequestId

        def initialize(ruleuuid=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # ModifyNatFwReSelect请求参数结构体
      class ModifyNatFwReSelectRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 模式 1：接入模式；0：新增模式
        # @type Mode: Integer
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String
        # @param NatGwList: 接入模式重新接入的nat网关列表，其中NatGwList和VpcList只能传递一个。
        # @type NatGwList: Array
        # @param VpcList: 新增模式重新接入的vpc列表，其中NatGwList和NatgwList只能传递一个。
        # @type VpcList: Array
        # @param FwCidrInfo: 指定防火墙使用网段信息
        # @type FwCidrInfo: :class:`Tencentcloud::Cfw.v20190904.models.FwCidrInfo`

        attr_accessor :Mode, :CfwInstance, :NatGwList, :VpcList, :FwCidrInfo

        def initialize(mode=nil, cfwinstance=nil, natgwlist=nil, vpclist=nil, fwcidrinfo=nil)
          @Mode = mode
          @CfwInstance = cfwinstance
          @NatGwList = natgwlist
          @VpcList = vpclist
          @FwCidrInfo = fwcidrinfo
        end

        def deserialize(params)
          @Mode = params['Mode']
          @CfwInstance = params['CfwInstance']
          @NatGwList = params['NatGwList']
          @VpcList = params['VpcList']
          unless params['FwCidrInfo'].nil?
            @FwCidrInfo = FwCidrInfo.new
            @FwCidrInfo.deserialize(params['FwCidrInfo'])
          end
        end
      end

      # ModifyNatFwReSelect返回参数结构体
      class ModifyNatFwReSelectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatFwSwitch请求参数结构体
      class ModifyNatFwSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 开关，0：关闭，1：开启
        # @type Enable: Integer
        # @param CfwInsIdList: 防火墙实例id列表，其中CfwInsIdList，SubnetIdList和RouteTableIdList只能传递一种。
        # @type CfwInsIdList: Array
        # @param SubnetIdList: 子网id列表，其中CfwInsIdList，SubnetIdList和RouteTableIdList只能传递一种。
        # @type SubnetIdList: Array
        # @param RouteTableIdList: 路由表id列表，其中CfwInsIdList，SubnetIdList和RouteTableIdList只能传递一种。
        # @type RouteTableIdList: Array

        attr_accessor :Enable, :CfwInsIdList, :SubnetIdList, :RouteTableIdList

        def initialize(enable=nil, cfwinsidlist=nil, subnetidlist=nil, routetableidlist=nil)
          @Enable = enable
          @CfwInsIdList = cfwinsidlist
          @SubnetIdList = subnetidlist
          @RouteTableIdList = routetableidlist
        end

        def deserialize(params)
          @Enable = params['Enable']
          @CfwInsIdList = params['CfwInsIdList']
          @SubnetIdList = params['SubnetIdList']
          @RouteTableIdList = params['RouteTableIdList']
        end
      end

      # ModifyNatFwSwitch返回参数结构体
      class ModifyNatFwSwitchResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatFwVpcDnsSwitch请求参数结构体
      class ModifyNatFwVpcDnsSwitchRequest < TencentCloud::Common::AbstractModel
        # @param NatFwInsId: nat 防火墙 id
        # @type NatFwInsId: String
        # @param DnsVpcSwitchLst: DNS 开关切换列表
        # @type DnsVpcSwitchLst: Array

        attr_accessor :NatFwInsId, :DnsVpcSwitchLst

        def initialize(natfwinsid=nil, dnsvpcswitchlst=nil)
          @NatFwInsId = natfwinsid
          @DnsVpcSwitchLst = dnsvpcswitchlst
        end

        def deserialize(params)
          @NatFwInsId = params['NatFwInsId']
          unless params['DnsVpcSwitchLst'].nil?
            @DnsVpcSwitchLst = []
            params['DnsVpcSwitchLst'].each do |i|
              dnsvpcswitch_tmp = DnsVpcSwitch.new
              dnsvpcswitch_tmp.deserialize(i)
              @DnsVpcSwitchLst << dnsvpcswitch_tmp
            end
          end
        end
      end

      # ModifyNatFwVpcDnsSwitch返回参数结构体
      class ModifyNatFwVpcDnsSwitchResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 修改成功
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnMsg, :RequestId

        def initialize(returnmsg=nil, requestid=nil)
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyNatInstance请求参数结构体
      class ModifyNatInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: NAT防火墙实例名称
        # @type InstanceName: String
        # @param NatInstanceId: NAT防火墙实例ID
        # @type NatInstanceId: String

        attr_accessor :InstanceName, :NatInstanceId

        def initialize(instancename=nil, natinstanceid=nil)
          @InstanceName = instancename
          @NatInstanceId = natinstanceid
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @NatInstanceId = params['NatInstanceId']
        end
      end

      # ModifyNatInstance返回参数结构体
      class ModifyNatInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0 正常
        # -1 异常
        # @type Status: Integer
        # @param NatInstanceId: nat实例唯一ID
        # @type NatInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :NatInstanceId, :RequestId

        def initialize(status=nil, natinstanceid=nil, requestid=nil)
          @Status = status
          @NatInstanceId = natinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @NatInstanceId = params['NatInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyNatSequenceRules请求参数结构体
      class ModifyNatSequenceRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleChangeItems: 规则快速排序：OrderIndex，原始序号；NewOrderIndex：新序号
        # @type RuleChangeItems: Array
        # @param Direction: 规则方向：1，入站；0，出站
        # @type Direction: Integer

        attr_accessor :RuleChangeItems, :Direction

        def initialize(rulechangeitems=nil, direction=nil)
          @RuleChangeItems = rulechangeitems
          @Direction = direction
        end

        def deserialize(params)
          unless params['RuleChangeItems'].nil?
            @RuleChangeItems = []
            params['RuleChangeItems'].each do |i|
              rulechangeitem_tmp = RuleChangeItem.new
              rulechangeitem_tmp.deserialize(i)
              @RuleChangeItems << rulechangeitem_tmp
            end
          end
          @Direction = params['Direction']
        end
      end

      # ModifyNatSequenceRules返回参数结构体
      class ModifyNatSequenceRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyResourceGroup请求参数结构体
      class ModifyResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 资产组id
        # @type GroupId: String
        # @param GroupName: 组名称
        # @type GroupName: String
        # @param ParentId: 上级组资产组id
        # @type ParentId: String

        attr_accessor :GroupId, :GroupName, :ParentId

        def initialize(groupid=nil, groupname=nil, parentid=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ParentId = parentid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ParentId = params['ParentId']
        end
      end

      # ModifyResourceGroup返回参数结构体
      class ModifyResourceGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRunSyncAsset请求参数结构体
      class ModifyRunSyncAssetRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0: 互联网防火墙开关，1：vpc 防火墙开关
        # @type Type: Integer

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # ModifyRunSyncAsset返回参数结构体
      class ModifyRunSyncAssetResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：同步成功，1：资产更新中，2：后台同步调用失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifySecurityGroupItemRuleStatus请求参数结构体
      class ModifySecurityGroupItemRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param Status: 是否开关开启，0：未开启，1：开启
        # @type Status: Integer
        # @param RuleSequence: 更改的企业安全组规则的执行顺序
        # @type RuleSequence: Integer

        attr_accessor :Direction, :Status, :RuleSequence

        def initialize(direction=nil, status=nil, rulesequence=nil)
          @Direction = direction
          @Status = status
          @RuleSequence = rulesequence
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Status = params['Status']
          @RuleSequence = params['RuleSequence']
        end
      end

      # ModifySecurityGroupItemRuleStatus返回参数结构体
      class ModifySecurityGroupItemRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：修改成功，非0：修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifySecurityGroupRule请求参数结构体
      class ModifySecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param Enable: 编辑后是否启用规则，0：不启用，1：启用，默认1
        # @type Enable: Integer
        # @param Data: 编辑的企业安全组规则数据
        # @type Data: Array
        # @param SgRuleOriginSequence: 编辑的企业安全组规则的原始执行顺序
        # @type SgRuleOriginSequence: Integer

        attr_accessor :Direction, :Enable, :Data, :SgRuleOriginSequence

        def initialize(direction=nil, enable=nil, data=nil, sgruleoriginsequence=nil)
          @Direction = direction
          @Enable = enable
          @Data = data
          @SgRuleOriginSequence = sgruleoriginsequence
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Enable = params['Enable']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygrouplistdata_tmp = SecurityGroupListData.new
              securitygrouplistdata_tmp.deserialize(i)
              @Data << securitygrouplistdata_tmp
            end
          end
          @SgRuleOriginSequence = params['SgRuleOriginSequence']
        end
      end

      # ModifySecurityGroupRule返回参数结构体
      class ModifySecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：编辑成功，非0：编辑失败
        # @type Status: Integer
        # @param NewRuleId: 编辑后新生成规则的Id
        # @type NewRuleId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :NewRuleId, :RequestId

        def initialize(status=nil, newruleid=nil, requestid=nil)
          @Status = status
          @NewRuleId = newruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @NewRuleId = params['NewRuleId']
          @RequestId = params['RequestId']
        end
      end

      # ModifySecurityGroupSequenceRules请求参数结构体
      class ModifySecurityGroupSequenceRulesRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param Data: 企业安全组规则快速排序数据
        # @type Data: Array

        attr_accessor :Direction, :Data

        def initialize(direction=nil, data=nil)
          @Direction = direction
          @Data = data
        end

        def deserialize(params)
          @Direction = params['Direction']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygrouporderindexdata_tmp = SecurityGroupOrderIndexData.new
              securitygrouporderindexdata_tmp.deserialize(i)
              @Data << securitygrouporderindexdata_tmp
            end
          end
        end
      end

      # ModifySecurityGroupSequenceRules返回参数结构体
      class ModifySecurityGroupSequenceRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：修改成功，非0：修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifySequenceAclRules请求参数结构体
      class ModifySequenceAclRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleChangeItems: 规则快速排序：OrderIndex，原始序号；NewOrderIndex：新序号
        # @type RuleChangeItems: Array
        # @param Direction: 规则方向：1，入站；0，出站
        # @type Direction: Integer

        attr_accessor :RuleChangeItems, :Direction

        def initialize(rulechangeitems=nil, direction=nil)
          @RuleChangeItems = rulechangeitems
          @Direction = direction
        end

        def deserialize(params)
          unless params['RuleChangeItems'].nil?
            @RuleChangeItems = []
            params['RuleChangeItems'].each do |i|
              rulechangeitem_tmp = RuleChangeItem.new
              rulechangeitem_tmp.deserialize(i)
              @RuleChangeItems << rulechangeitem_tmp
            end
          end
          @Direction = params['Direction']
        end
      end

      # ModifySequenceAclRules返回参数结构体
      class ModifySequenceAclRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifySequenceRules请求参数结构体
      class ModifySequenceRulesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: 边Id值
        # @type EdgeId: String
        # @param Data: 修改数据
        # @type Data: Array
        # @param Area: NAT地域
        # @type Area: String
        # @param Direction: 方向，0：出向，1：入向
        # @type Direction: Integer

        attr_accessor :EdgeId, :Data, :Area, :Direction

        def initialize(edgeid=nil, data=nil, area=nil, direction=nil)
          @EdgeId = edgeid
          @Data = data
          @Area = area
          @Direction = direction
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sequencedata_tmp = SequenceData.new
              sequencedata_tmp.deserialize(i)
              @Data << sequencedata_tmp
            end
          end
          @Area = params['Area']
          @Direction = params['Direction']
        end
      end

      # ModifySequenceRules返回参数结构体
      class ModifySequenceRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 修改成功, 非0: 修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyStorageSetting请求参数结构体
      class ModifyStorageSettingRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyStorageSetting返回参数结构体
      class ModifyStorageSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTableStatus请求参数结构体
      class ModifyTableStatusRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: EdgeId值两个vpc间的边id
        # @type EdgeId: String
        # @param Status: 状态值，1：锁表，2：解锁表
        # @type Status: Integer
        # @param Area: Nat所在地域
        # @type Area: String
        # @param Direction: 0： 出向，1：入向
        # @type Direction: Integer

        attr_accessor :EdgeId, :Status, :Area, :Direction

        def initialize(edgeid=nil, status=nil, area=nil, direction=nil)
          @EdgeId = edgeid
          @Status = status
          @Area = area
          @Direction = direction
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Area = params['Area']
          @Direction = params['Direction']
        end
      end

      # ModifyTableStatus返回参数结构体
      class ModifyTableStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：正常，-1：不正常
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyVpcAcRule请求参数结构体
      class ModifyVpcAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 需要编辑的规则数组
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              vpcruleitem_tmp = VpcRuleItem.new
              vpcruleitem_tmp.deserialize(i)
              @Rules << vpcruleitem_tmp
            end
          end
        end
      end

      # ModifyVpcAcRule返回参数结构体
      class ModifyVpcAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuids: 编辑成功后返回新策略ID列表
        # @type RuleUuids: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuids, :RequestId

        def initialize(ruleuuids=nil, requestid=nil)
          @RuleUuids = ruleuuids
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuids = params['RuleUuids']
          @RequestId = params['RequestId']
        end
      end

      # ModifyVpcFwGroup请求参数结构体
      class ModifyVpcFwGroupRequest < TencentCloud::Common::AbstractModel
        # @param FwGroupId: 编辑的防火墙(组)ID
        # @type FwGroupId: String
        # @param Name: 修改防火墙(组)名称
        # @type Name: String
        # @param VpcFwInstances: 编辑的防火墙实例列表
        # @type VpcFwInstances: Array
        # @param FwCidrInfo: 指定防火墙使用网段信息
        # @type FwCidrInfo: :class:`Tencentcloud::Cfw.v20190904.models.FwCidrInfo`

        attr_accessor :FwGroupId, :Name, :VpcFwInstances, :FwCidrInfo

        def initialize(fwgroupid=nil, name=nil, vpcfwinstances=nil, fwcidrinfo=nil)
          @FwGroupId = fwgroupid
          @Name = name
          @VpcFwInstances = vpcfwinstances
          @FwCidrInfo = fwcidrinfo
        end

        def deserialize(params)
          @FwGroupId = params['FwGroupId']
          @Name = params['Name']
          unless params['VpcFwInstances'].nil?
            @VpcFwInstances = []
            params['VpcFwInstances'].each do |i|
              vpcfwinstance_tmp = VpcFwInstance.new
              vpcfwinstance_tmp.deserialize(i)
              @VpcFwInstances << vpcfwinstance_tmp
            end
          end
          unless params['FwCidrInfo'].nil?
            @FwCidrInfo = FwCidrInfo.new
            @FwCidrInfo.deserialize(params['FwCidrInfo'])
          end
        end
      end

      # ModifyVpcFwGroup返回参数结构体
      class ModifyVpcFwGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcFwSequenceRules请求参数结构体
      class ModifyVpcFwSequenceRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleChangeItems: 规则快速排序：OrderIndex，原始序号；NewOrderIndex：新序号
        # @type RuleChangeItems: Array

        attr_accessor :RuleChangeItems

        def initialize(rulechangeitems=nil)
          @RuleChangeItems = rulechangeitems
        end

        def deserialize(params)
          unless params['RuleChangeItems'].nil?
            @RuleChangeItems = []
            params['RuleChangeItems'].each do |i|
              rulechangeitem_tmp = RuleChangeItem.new
              rulechangeitem_tmp.deserialize(i)
              @RuleChangeItems << rulechangeitem_tmp
            end
          end
        end
      end

      # ModifyVpcFwSequenceRules返回参数结构体
      class ModifyVpcFwSequenceRulesResponse < TencentCloud::Common::AbstractModel
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

      # Nat防火墙弹性公网ip列表
      class NatFwEipsInfo < TencentCloud::Common::AbstractModel
        # @param Eip: 弹性公网ip
        # @type Eip: String
        # @param NatGatewayId: 所属的Nat网关Id
        # @type NatGatewayId: String
        # @param NatGatewayName: Nat网关名称
        # @type NatGatewayName: String

        attr_accessor :Eip, :NatGatewayId, :NatGatewayName

        def initialize(eip=nil, natgatewayid=nil, natgatewayname=nil)
          @Eip = eip
          @NatGatewayId = natgatewayid
          @NatGatewayName = natgatewayname
        end

        def deserialize(params)
          @Eip = params['Eip']
          @NatGatewayId = params['NatGatewayId']
          @NatGatewayName = params['NatGatewayName']
        end
      end

      # nat fw 实例展示的过滤列表
      class NatFwFilter < TencentCloud::Common::AbstractModel
        # @param FilterType: 过滤的类型，例如实例id
        # @type FilterType: String
        # @param FilterContent: 过滤的内容，以',' 分隔
        # @type FilterContent: String

        attr_accessor :FilterType, :FilterContent

        def initialize(filtertype=nil, filtercontent=nil)
          @FilterType = filtertype
          @FilterContent = filtercontent
        end

        def deserialize(params)
          @FilterType = params['FilterType']
          @FilterContent = params['FilterContent']
        end
      end

      # Nat实例类型
      class NatFwInstance < TencentCloud::Common::AbstractModel
        # @param NatinsId: nat实例id
        # @type NatinsId: String
        # @param NatinsName: nat实例名称
        # @type NatinsName: String
        # @param Region: 实例所在地域
        # @type Region: String
        # @param FwMode: 0:新增模式，1:接入模式
        # @type FwMode: Integer
        # @param Status: 0:正常状态， 1: 正在创建
        # @type Status: Integer
        # @param NatIp: nat公网ip
        # @type NatIp: String

        attr_accessor :NatinsId, :NatinsName, :Region, :FwMode, :Status, :NatIp

        def initialize(natinsid=nil, natinsname=nil, region=nil, fwmode=nil, status=nil, natip=nil)
          @NatinsId = natinsid
          @NatinsName = natinsname
          @Region = region
          @FwMode = fwmode
          @Status = status
          @NatIp = natip
        end

        def deserialize(params)
          @NatinsId = params['NatinsId']
          @NatinsName = params['NatinsName']
          @Region = params['Region']
          @FwMode = params['FwMode']
          @Status = params['Status']
          @NatIp = params['NatIp']
        end
      end

      # Nat实例卡片详细信息
      class NatInstanceInfo < TencentCloud::Common::AbstractModel
        # @param NatinsId: nat实例id
        # @type NatinsId: String
        # @param NatinsName: nat实例名称
        # @type NatinsName: String
        # @param Region: 实例所在地域
        # @type Region: String
        # @param FwMode: 0: 新增模式，1:接入模式
        # @type FwMode: Integer
        # @param BandWidth: 实例带宽大小 Mbps
        # @type BandWidth: Integer
        # @param InFlowMax: 入向带宽峰值 bps
        # @type InFlowMax: Integer
        # @param OutFlowMax: 出向带宽峰值 bps
        # @type OutFlowMax: Integer
        # @param RegionZh: 地域中文信息
        # @type RegionZh: String
        # @param EipAddress: 公网ip数组
        # @type EipAddress: Array
        # @param VpcIp: 内外使用ip数组
        # @type VpcIp: Array
        # @param Subnets: 实例关联子网数组
        # @type Subnets: Array
        # @param Status: 0 :正常 1：正在初始化
        # @type Status: Integer
        # @param RegionDetail: 地域区域信息
        # @type RegionDetail: String
        # @param ZoneZh: 实例所在可用区
        # @type ZoneZh: String
        # @param ZoneZhBak: 实例所在可用区
        # @type ZoneZhBak: String
        # @param RuleUsed: 已使用规则数
        # @type RuleUsed: Integer
        # @param RuleMax: 实例的规则限制最大规格数
        # @type RuleMax: Integer
        # @param EngineVersion: 实例引擎版本
        # @type EngineVersion: String
        # @param UpdateEnable: 引擎是否可升级：0，不可升级；1，可升级
        # @type UpdateEnable: Integer
        # @param NeedProbeEngineUpdate: 是的需要升级引擎 支持 nat拨测 1需要 0不需要
        # @type NeedProbeEngineUpdate: Integer
        # @param TrafficMode: 引擎运行模式，Normal:正常, OnlyRoute:透明模式
        # @type TrafficMode: String
        # @param Zone: 实例主所在可用区
        # @type Zone: String
        # @param ZoneBak: 实例备所在可用区
        # @type ZoneBak: String
        # @param ReserveTime: 引擎预约升级时间
        # @type ReserveTime: String
        # @param ReserveVersion: 引擎预约升级版本
        # @type ReserveVersion: String
        # @param ReserveVersionState: 引擎预约升级版本状态 stable:稳定版；previewed:预览版
        # @type ReserveVersionState: String
        # @param ElasticSwitch: 弹性开关
        # 1 打开
        # 0 关闭
        # @type ElasticSwitch: Integer
        # @param ElasticBandwidth: 弹性带宽，单位Mbps
        # @type ElasticBandwidth: Integer
        # @param IsFirstAfterPay: 是否首次开通按量付费
        # 1 是
        # 0 不是
        # @type IsFirstAfterPay: Integer

        attr_accessor :NatinsId, :NatinsName, :Region, :FwMode, :BandWidth, :InFlowMax, :OutFlowMax, :RegionZh, :EipAddress, :VpcIp, :Subnets, :Status, :RegionDetail, :ZoneZh, :ZoneZhBak, :RuleUsed, :RuleMax, :EngineVersion, :UpdateEnable, :NeedProbeEngineUpdate, :TrafficMode, :Zone, :ZoneBak, :ReserveTime, :ReserveVersion, :ReserveVersionState, :ElasticSwitch, :ElasticBandwidth, :IsFirstAfterPay

        def initialize(natinsid=nil, natinsname=nil, region=nil, fwmode=nil, bandwidth=nil, inflowmax=nil, outflowmax=nil, regionzh=nil, eipaddress=nil, vpcip=nil, subnets=nil, status=nil, regiondetail=nil, zonezh=nil, zonezhbak=nil, ruleused=nil, rulemax=nil, engineversion=nil, updateenable=nil, needprobeengineupdate=nil, trafficmode=nil, zone=nil, zonebak=nil, reservetime=nil, reserveversion=nil, reserveversionstate=nil, elasticswitch=nil, elasticbandwidth=nil, isfirstafterpay=nil)
          @NatinsId = natinsid
          @NatinsName = natinsname
          @Region = region
          @FwMode = fwmode
          @BandWidth = bandwidth
          @InFlowMax = inflowmax
          @OutFlowMax = outflowmax
          @RegionZh = regionzh
          @EipAddress = eipaddress
          @VpcIp = vpcip
          @Subnets = subnets
          @Status = status
          @RegionDetail = regiondetail
          @ZoneZh = zonezh
          @ZoneZhBak = zonezhbak
          @RuleUsed = ruleused
          @RuleMax = rulemax
          @EngineVersion = engineversion
          @UpdateEnable = updateenable
          @NeedProbeEngineUpdate = needprobeengineupdate
          @TrafficMode = trafficmode
          @Zone = zone
          @ZoneBak = zonebak
          @ReserveTime = reservetime
          @ReserveVersion = reserveversion
          @ReserveVersionState = reserveversionstate
          @ElasticSwitch = elasticswitch
          @ElasticBandwidth = elasticbandwidth
          @IsFirstAfterPay = isfirstafterpay
        end

        def deserialize(params)
          @NatinsId = params['NatinsId']
          @NatinsName = params['NatinsName']
          @Region = params['Region']
          @FwMode = params['FwMode']
          @BandWidth = params['BandWidth']
          @InFlowMax = params['InFlowMax']
          @OutFlowMax = params['OutFlowMax']
          @RegionZh = params['RegionZh']
          @EipAddress = params['EipAddress']
          @VpcIp = params['VpcIp']
          @Subnets = params['Subnets']
          @Status = params['Status']
          @RegionDetail = params['RegionDetail']
          @ZoneZh = params['ZoneZh']
          @ZoneZhBak = params['ZoneZhBak']
          @RuleUsed = params['RuleUsed']
          @RuleMax = params['RuleMax']
          @EngineVersion = params['EngineVersion']
          @UpdateEnable = params['UpdateEnable']
          @NeedProbeEngineUpdate = params['NeedProbeEngineUpdate']
          @TrafficMode = params['TrafficMode']
          @Zone = params['Zone']
          @ZoneBak = params['ZoneBak']
          @ReserveTime = params['ReserveTime']
          @ReserveVersion = params['ReserveVersion']
          @ReserveVersionState = params['ReserveVersionState']
          @ElasticSwitch = params['ElasticSwitch']
          @ElasticBandwidth = params['ElasticBandwidth']
          @IsFirstAfterPay = params['IsFirstAfterPay']
        end
      end

      # 网络实例信息
      class NetInstancesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 网络实例ID
        # @type InstanceId: String
        # @param InstanceName: 网络实例名称
        # @type InstanceName: String
        # @param InstanceCidr: 网络cidr (多段以逗号分隔)
        # @type InstanceCidr: String
        # @param Region: 网络实例所在地域
        # @type Region: String

        attr_accessor :InstanceId, :InstanceName, :InstanceCidr, :Region

        def initialize(instanceid=nil, instancename=nil, instancecidr=nil, region=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceCidr = instancecidr
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceCidr = params['InstanceCidr']
          @Region = params['Region']
        end
      end

      # 新增模式传递参数
      class NewModeItems < TencentCloud::Common::AbstractModel
        # @param VpcList: 新增模式下接入的vpc列表
        # @type VpcList: Array
        # @param Eips: 新增模式下绑定的出口弹性公网ip列表，其中Eips和AddCount至少传递一个。
        # @type Eips: Array
        # @param AddCount: 新增模式下新增绑定的出口弹性公网ip个数，其中Eips和AddCount至少传递一个。
        # @type AddCount: Integer

        attr_accessor :VpcList, :Eips, :AddCount

        def initialize(vpclist=nil, eips=nil, addcount=nil)
          @VpcList = vpclist
          @Eips = eips
          @AddCount = addcount
        end

        def deserialize(params)
          @VpcList = params['VpcList']
          @Eips = params['Eips']
          @AddCount = params['AddCount']
        end
      end

      # RemoveAcRule请求参数结构体
      class RemoveAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 规则的uuid，可通过查询规则列表获取
        # @type RuleUuid: Integer

        attr_accessor :RuleUuid

        def initialize(ruleuuid=nil)
          @RuleUuid = ruleuuid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
        end
      end

      # RemoveAcRule返回参数结构体
      class RemoveAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 删除成功后返回被删除策略的uuid
        # @type RuleUuid: Integer
        # @param ReturnCode: 0代表成功，-1代表失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: success代表成功，failed代表失败
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(ruleuuid=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # RemoveAclRule请求参数结构体
      class RemoveAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 规则的uuid列表，可通过查询规则列表获取，注意：如果传入的是[-1]将删除所有规则
        # @type RuleUuid: Array
        # @param Direction: 规则方向：1，入站；0，出站
        # @type Direction: Integer

        attr_accessor :RuleUuid, :Direction

        def initialize(ruleuuid=nil, direction=nil)
          @RuleUuid = ruleuuid
          @Direction = direction
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @Direction = params['Direction']
        end
      end

      # RemoveAclRule返回参数结构体
      class RemoveAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 删除成功后返回被删除策略的uuid列表
        # @type RuleUuid: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :RequestId

        def initialize(ruleuuid=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # RemoveEnterpriseSecurityGroupRule请求参数结构体
      class RemoveEnterpriseSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 规则的uuid，可通过查询规则列表获取
        # @type RuleUuid: Integer
        # @param RemoveType: 删除类型，0是单条删除，RuleUuid填写删除规则id，1为全部删除，RuleUuid填0即可
        # @type RemoveType: Integer

        attr_accessor :RuleUuid, :RemoveType

        def initialize(ruleuuid=nil, removetype=nil)
          @RuleUuid = ruleuuid
          @RemoveType = removetype
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RemoveType = params['RemoveType']
        end
      end

      # RemoveEnterpriseSecurityGroupRule返回参数结构体
      class RemoveEnterpriseSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 删除成功后返回被删除策略的uuid
        # @type RuleUuid: Integer
        # @param Status: 0代表成功，-1代表失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :Status, :RequestId

        def initialize(ruleuuid=nil, status=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # RemoveNatAcRule请求参数结构体
      class RemoveNatAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 规则的uuid列表，可通过查询规则列表获取，注意：如果传入的是[-1]将删除所有规则
        # @type RuleUuid: Array
        # @param Direction: 规则方向：1，入站；0，出站
        # @type Direction: Integer

        attr_accessor :RuleUuid, :Direction

        def initialize(ruleuuid=nil, direction=nil)
          @RuleUuid = ruleuuid
          @Direction = direction
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @Direction = params['Direction']
        end
      end

      # RemoveNatAcRule返回参数结构体
      class RemoveNatAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 删除成功后返回被删除策略的uuid列表
        # @type RuleUuid: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuid, :RequestId

        def initialize(ruleuuid=nil, requestid=nil)
          @RuleUuid = ruleuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuid = params['RuleUuid']
          @RequestId = params['RequestId']
        end
      end

      # RemoveVpcAcRule请求参数结构体
      class RemoveVpcAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleUuids: 规则的uuid列表，可通过查询规则列表获取，注意：如果传入的是[-1]将删除所有规则
        # @type RuleUuids: Array
        # @param IpVersion: 仅当RuleUuids为-1时有效；0：删除Ipv4规则，1：删除Ipv6规则；默认为Ipv4类型规则
        # @type IpVersion: Integer

        attr_accessor :RuleUuids, :IpVersion

        def initialize(ruleuuids=nil, ipversion=nil)
          @RuleUuids = ruleuuids
          @IpVersion = ipversion
        end

        def deserialize(params)
          @RuleUuids = params['RuleUuids']
          @IpVersion = params['IpVersion']
        end
      end

      # RemoveVpcAcRule返回参数结构体
      class RemoveVpcAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuids: 删除成功后返回被删除策略的uuid列表
        # @type RuleUuids: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleUuids, :RequestId

        def initialize(ruleuuids=nil, requestid=nil)
          @RuleUuids = ruleuuids
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleUuids = params['RuleUuids']
          @RequestId = params['RequestId']
        end
      end

      # 规则顺序变更项，由原始id值变为新的id值。
      class RuleChangeItem < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 原始sequence 值
        # @type OrderIndex: Integer
        # @param NewOrderIndex: 新的sequence 值
        # @type NewOrderIndex: Integer
        # @param IpVersion: Ip版本，0：IPv4，1：IPv6，默认为IPv4
        # @type IpVersion: Integer

        attr_accessor :OrderIndex, :NewOrderIndex, :IpVersion

        def initialize(orderindex=nil, neworderindex=nil, ipversion=nil)
          @OrderIndex = orderindex
          @NewOrderIndex = neworderindex
          @IpVersion = ipversion
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @NewOrderIndex = params['NewOrderIndex']
          @IpVersion = params['IpVersion']
        end
      end

      # 规则输入对象
      class RuleInfoData < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param SourceIp: 访问源
        # @type SourceIp: String
        # @param TargetIp: 访问目的
        # @type TargetIp: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Strategy: 策略, 0：观察，1：阻断，2：放行
        # @type Strategy: String
        # @param SourceType: 访问源类型，1是IP，3是域名，4是IP地址模板，5是域名地址模板
        # @type SourceType: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param TargetType: 访问目的类型，1是IP，3是域名，4是IP地址模板，5是域名地址模板
        # @type TargetType: Integer
        # @param Port: 端口
        # @type Port: String
        # @param Id: id值
        # @type Id: Integer
        # @param LogId: 日志id，从告警处创建必传，其它为空
        # @type LogId: String
        # @param City: 城市Code
        # @type City: Integer
        # @param Country: 国家Code
        # @type Country: Integer
        # @param CloudCode: 云厂商，支持多个，以逗号分隔， 1:腾讯云（仅中国香港及海外）,2:阿里云,3:亚马逊云,4:华为云,5:微软云
        # @type CloudCode: String
        # @param IsRegion: 是否为地域
        # @type IsRegion: Integer
        # @param CityName: 城市名
        # @type CityName: String
        # @param CountryName: 国家名
        # @type CountryName: String
        # @param RegionIso: 国家二位iso代码或者省份缩写代码
        # @type RegionIso: String

        attr_accessor :OrderIndex, :SourceIp, :TargetIp, :Protocol, :Strategy, :SourceType, :Direction, :Detail, :TargetType, :Port, :Id, :LogId, :City, :Country, :CloudCode, :IsRegion, :CityName, :CountryName, :RegionIso

        def initialize(orderindex=nil, sourceip=nil, targetip=nil, protocol=nil, strategy=nil, sourcetype=nil, direction=nil, detail=nil, targettype=nil, port=nil, id=nil, logid=nil, city=nil, country=nil, cloudcode=nil, isregion=nil, cityname=nil, countryname=nil, regioniso=nil)
          @OrderIndex = orderindex
          @SourceIp = sourceip
          @TargetIp = targetip
          @Protocol = protocol
          @Strategy = strategy
          @SourceType = sourcetype
          @Direction = direction
          @Detail = detail
          @TargetType = targettype
          @Port = port
          @Id = id
          @LogId = logid
          @City = city
          @Country = country
          @CloudCode = cloudcode
          @IsRegion = isregion
          @CityName = cityname
          @CountryName = countryname
          @RegionIso = regioniso
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @SourceIp = params['SourceIp']
          @TargetIp = params['TargetIp']
          @Protocol = params['Protocol']
          @Strategy = params['Strategy']
          @SourceType = params['SourceType']
          @Direction = params['Direction']
          @Detail = params['Detail']
          @TargetType = params['TargetType']
          @Port = params['Port']
          @Id = params['Id']
          @LogId = params['LogId']
          @City = params['City']
          @Country = params['Country']
          @CloudCode = params['CloudCode']
          @IsRegion = params['IsRegion']
          @CityName = params['CityName']
          @CountryName = params['CountryName']
          @RegionIso = params['RegionIso']
        end
      end

      # 新手引导扫描信息
      class ScanInfo < TencentCloud::Common::AbstractModel
        # @param ScanPercent: 进度
        # @type ScanPercent: Float
        # @param ScanResultInfo: 扫描结果信息
        # @type ScanResultInfo: :class:`Tencentcloud::Cfw.v20190904.models.ScanResultInfo`
        # @param ScanStatus: 扫描状态 0扫描中 1完成  2未勾选自动扫描
        # @type ScanStatus: Integer
        # @param ScanTime: 预计完成时间
        # @type ScanTime: String

        attr_accessor :ScanPercent, :ScanResultInfo, :ScanStatus, :ScanTime

        def initialize(scanpercent=nil, scanresultinfo=nil, scanstatus=nil, scantime=nil)
          @ScanPercent = scanpercent
          @ScanResultInfo = scanresultinfo
          @ScanStatus = scanstatus
          @ScanTime = scantime
        end

        def deserialize(params)
          @ScanPercent = params['ScanPercent']
          unless params['ScanResultInfo'].nil?
            @ScanResultInfo = ScanResultInfo.new
            @ScanResultInfo.deserialize(params['ScanResultInfo'])
          end
          @ScanStatus = params['ScanStatus']
          @ScanTime = params['ScanTime']
        end
      end

      # 新手引导扫描结果信息
      class ScanResultInfo < TencentCloud::Common::AbstractModel
        # @param BanStatus: 是否禁封端口
        # @type BanStatus: Boolean
        # @param IPNum: 防护ip数量
        # @type IPNum: Integer
        # @param IPStatus: 是否开启防护
        # @type IPStatus: Boolean
        # @param IdpStatus: 是否拦截攻击
        # @type IdpStatus: Boolean
        # @param LeakNum: 暴露漏洞数量
        # @type LeakNum: Integer
        # @param PortNum: 暴露端口数量
        # @type PortNum: Integer

        attr_accessor :BanStatus, :IPNum, :IPStatus, :IdpStatus, :LeakNum, :PortNum

        def initialize(banstatus=nil, ipnum=nil, ipstatus=nil, idpstatus=nil, leaknum=nil, portnum=nil)
          @BanStatus = banstatus
          @IPNum = ipnum
          @IPStatus = ipstatus
          @IdpStatus = idpstatus
          @LeakNum = leaknum
          @PortNum = portnum
        end

        def deserialize(params)
          @BanStatus = params['BanStatus']
          @IPNum = params['IPNum']
          @IPStatus = params['IPStatus']
          @IdpStatus = params['IdpStatus']
          @LeakNum = params['LeakNum']
          @PortNum = params['PortNum']
        end
      end

      # 双向下发的企业安全组规则
      class SecurityGroupBothWayInfo < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param SourceId: 访问源
        # @type SourceId: String
        # @param SourceType: 访问源类型，默认为0，0: IP, 1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB, 7: 参数模板, 100: 资产分组
        # @type SourceType: Integer
        # @param TargetId: 访问目的
        # @type TargetId: String
        # @param TargetType: 访问目的类型，默认为0，0: IP, 1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB, 7: 参数模板, 100: 资产分组
        # @type TargetType: Integer
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Port: 目的端口
        # @type Port: String
        # @param Strategy: 策略, 1：阻断，2：放行
        # @type Strategy: Integer
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Detail: 描述
        # @type Detail: String
        # @param Status: 是否开关开启，0：未开启，1：开启
        # @type Status: Integer
        # @param IsNew: 是否是正常规则，0：正常，1：异常
        # @type IsNew: Integer
        # @param BothWay: 单/双向下发，0:单向下发，1：双向下发
        # @type BothWay: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param PublicIp: 公网IP，多个以英文逗号分隔
        # @type PublicIp: String
        # @param PrivateIp: 内网IP，多个以英文逗号分隔
        # @type PrivateIp: String
        # @param Cidr: 掩码地址，多个以英文逗号分隔
        # @type Cidr: String
        # @param ServiceTemplateId: 端口协议类型参数模板id
        # @type ServiceTemplateId: String
        # @param ProtocolPortType: 是否使用端口协议模板，0：否，1：是
        # @type ProtocolPortType: Integer

        attr_accessor :OrderIndex, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Direction, :Region, :Detail, :Status, :IsNew, :BothWay, :VpcId, :SubnetId, :InstanceName, :PublicIp, :PrivateIp, :Cidr, :ServiceTemplateId, :ProtocolPortType

        def initialize(orderindex=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, direction=nil, region=nil, detail=nil, status=nil, isnew=nil, bothway=nil, vpcid=nil, subnetid=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil, servicetemplateid=nil, protocolporttype=nil)
          @OrderIndex = orderindex
          @SourceId = sourceid
          @SourceType = sourcetype
          @TargetId = targetid
          @TargetType = targettype
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Direction = direction
          @Region = region
          @Detail = detail
          @Status = status
          @IsNew = isnew
          @BothWay = bothway
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceName = instancename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Cidr = cidr
          @ServiceTemplateId = servicetemplateid
          @ProtocolPortType = protocolporttype
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @SourceId = params['SourceId']
          @SourceType = params['SourceType']
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Direction = params['Direction']
          @Region = params['Region']
          @Detail = params['Detail']
          @Status = params['Status']
          @IsNew = params['IsNew']
          @BothWay = params['BothWay']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceName = params['InstanceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Cidr = params['Cidr']
          @ServiceTemplateId = params['ServiceTemplateId']
          @ProtocolPortType = params['ProtocolPortType']
        end
      end

      # 安全组列表数据
      class SecurityGroupListData < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param SourceId: 访问源
        # @type SourceId: String
        # @param SourceType: 访问源类型，默认为0，1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB, 7: 参数模板, 100: 资源组
        # @type SourceType: Integer
        # @param TargetId: 访问目的
        # @type TargetId: String
        # @param TargetType: 访问目的类型，默认为0，1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB, 7: 参数模板, 100:资源组
        # @type TargetType: Integer
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Port: 目的端口
        # @type Port: String
        # @param Strategy: 策略, 1：阻断，2：放行
        # @type Strategy: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param BothWay: 单/双向下发，0:单向下发，1：双向下发
        # @type BothWay: Integer
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Status: 是否开关开启，0：未开启，1：开启
        # @type Status: Integer
        # @param IsNew: 是否是正常规则，0：正常，1：异常
        # @type IsNew: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param PublicIp: 公网IP，多个以英文逗号分隔
        # @type PublicIp: String
        # @param PrivateIp: 内网IP，多个以英文逗号分隔
        # @type PrivateIp: String
        # @param Cidr: 掩码地址，多个以英文逗号分隔
        # @type Cidr: String
        # @param ServiceTemplateId: 端口协议类型参数模板id
        # @type ServiceTemplateId: String
        # @param BothWayInfo: 生成双向下发规则
        # @type BothWayInfo: Array
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param ProtocolPortType: 是否使用端口协议模板，0：否，1：是
        # @type ProtocolPortType: Integer
        # @param Uuid: Uuid
        # @type Uuid: String
        # @param Region: 地域
        # @type Region: String
        # @param AssetGroupNameIn: 资产分组名称
        # @type AssetGroupNameIn: String
        # @param AssetGroupNameOut: 资产分组名称
        # @type AssetGroupNameOut: String
        # @param ParameterName: 模板名称
        # @type ParameterName: String
        # @param ProtocolPortName: 端口协议类型参数模板名称
        # @type ProtocolPortName: String

        attr_accessor :OrderIndex, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Detail, :BothWay, :Id, :Status, :IsNew, :VpcId, :SubnetId, :InstanceName, :PublicIp, :PrivateIp, :Cidr, :ServiceTemplateId, :BothWayInfo, :Direction, :ProtocolPortType, :Uuid, :Region, :AssetGroupNameIn, :AssetGroupNameOut, :ParameterName, :ProtocolPortName

        def initialize(orderindex=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, detail=nil, bothway=nil, id=nil, status=nil, isnew=nil, vpcid=nil, subnetid=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil, servicetemplateid=nil, bothwayinfo=nil, direction=nil, protocolporttype=nil, uuid=nil, region=nil, assetgroupnamein=nil, assetgroupnameout=nil, parametername=nil, protocolportname=nil)
          @OrderIndex = orderindex
          @SourceId = sourceid
          @SourceType = sourcetype
          @TargetId = targetid
          @TargetType = targettype
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @BothWay = bothway
          @Id = id
          @Status = status
          @IsNew = isnew
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceName = instancename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Cidr = cidr
          @ServiceTemplateId = servicetemplateid
          @BothWayInfo = bothwayinfo
          @Direction = direction
          @ProtocolPortType = protocolporttype
          @Uuid = uuid
          @Region = region
          @AssetGroupNameIn = assetgroupnamein
          @AssetGroupNameOut = assetgroupnameout
          @ParameterName = parametername
          @ProtocolPortName = protocolportname
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @SourceId = params['SourceId']
          @SourceType = params['SourceType']
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @BothWay = params['BothWay']
          @Id = params['Id']
          @Status = params['Status']
          @IsNew = params['IsNew']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceName = params['InstanceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Cidr = params['Cidr']
          @ServiceTemplateId = params['ServiceTemplateId']
          unless params['BothWayInfo'].nil?
            @BothWayInfo = []
            params['BothWayInfo'].each do |i|
              securitygroupbothwayinfo_tmp = SecurityGroupBothWayInfo.new
              securitygroupbothwayinfo_tmp.deserialize(i)
              @BothWayInfo << securitygroupbothwayinfo_tmp
            end
          end
          @Direction = params['Direction']
          @ProtocolPortType = params['ProtocolPortType']
          @Uuid = params['Uuid']
          @Region = params['Region']
          @AssetGroupNameIn = params['AssetGroupNameIn']
          @AssetGroupNameOut = params['AssetGroupNameOut']
          @ParameterName = params['ParameterName']
          @ProtocolPortName = params['ProtocolPortName']
        end
      end

      # 企业安全组规则执行顺序修改对象
      class SecurityGroupOrderIndexData < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 企业安全组规则当前执行顺序
        # @type OrderIndex: Integer
        # @param NewOrderIndex: 企业安全组规则更新目标执行顺序
        # @type NewOrderIndex: Integer

        attr_accessor :OrderIndex, :NewOrderIndex

        def initialize(orderindex=nil, neworderindex=nil)
          @OrderIndex = orderindex
          @NewOrderIndex = neworderindex
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @NewOrderIndex = params['NewOrderIndex']
        end
      end

      # 安全组规则
      class SecurityGroupRule < TencentCloud::Common::AbstractModel
        # @param SourceContent: 访问源示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板id(ipm-dyodhpby)
        # instance：资产实例id(ins-123456)
        # resourcegroup：资产分组id(cfwrg-xxxx)
        # tag：资源标签({\"Key\":\"标签key值\",\"Value\":\"标签Value值\"})
        # region：地域(ap-gaungzhou)
        # @type SourceContent: String
        # @param SourceType: 访问源类型，类型可以为以下6种：net|template|instance|resourcegroup|tag|region
        # @type SourceType: String
        # @param DestContent: 访问目的示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板id(ipm-dyodhpby)
        # instance：资产实例id(ins-123456)
        # resourcegroup：资产分组id(cfwrg-xxxx)
        # tag：资源标签({\"Key\":\"标签key值\",\"Value\":\"标签Value值\"})
        # region：地域(ap-gaungzhou)
        # @type DestContent: String
        # @param DestType: 访问目的类型，类型可以为以下6种：net|template|instance|resourcegroup|tag|region
        # @type DestType: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值：
        # accept：放行
        # drop：拒绝
        # @type RuleAction: String
        # @param Description: 描述
        # @type Description: String
        # @param OrderIndex: 规则顺序，-1表示最低，1表示最高，请勿和外层Type冲突（和外层的Type配合使用，当中间插入时，指定添加位置）
        # @type OrderIndex: String
        # @param Protocol: 协议；TCP/UDP/ICMP/ANY
        # @type Protocol: String
        # @param Port: 访问控制策略的端口。取值：
        # -1/-1：全部端口
        # 80：80端口
        # @type Port: String
        # @param ServiceTemplateId: 端口协议类型参数模板id；协议端口模板id；与Protocol,Port互斥
        # @type ServiceTemplateId: String
        # @param Id: （入参时无需填写，自动生成）规则对应的唯一id
        # @type Id: String
        # @param Enable: （入参时、Enable已弃用；由通用配置中新增规则启用状态控制）
        # 规则状态，true表示启用，false表示禁用
        # @type Enable: String
        # @param Uid: 规则对应的唯一内部id
        # @type Uid: String

        attr_accessor :SourceContent, :SourceType, :DestContent, :DestType, :RuleAction, :Description, :OrderIndex, :Protocol, :Port, :ServiceTemplateId, :Id, :Enable, :Uid

        def initialize(sourcecontent=nil, sourcetype=nil, destcontent=nil, desttype=nil, ruleaction=nil, description=nil, orderindex=nil, protocol=nil, port=nil, servicetemplateid=nil, id=nil, enable=nil, uid=nil)
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @DestContent = destcontent
          @DestType = desttype
          @RuleAction = ruleaction
          @Description = description
          @OrderIndex = orderindex
          @Protocol = protocol
          @Port = port
          @ServiceTemplateId = servicetemplateid
          @Id = id
          @Enable = enable
          @Uid = uid
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @DestContent = params['DestContent']
          @DestType = params['DestType']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @OrderIndex = params['OrderIndex']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @ServiceTemplateId = params['ServiceTemplateId']
          @Id = params['Id']
          @Enable = params['Enable']
          @Uid = params['Uid']
        end
      end

      # 安全组规则
      class SecurityGroupSimplifyRule < TencentCloud::Common::AbstractModel
        # @param SourceContent: 访问源示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板(ipm-dyodhpby)
        # instance：资产实例(ins-123456)
        # resourcegroup：资产分组(/全部分组/分组1/子分组1)
        # tag：资源标签({"Key":"标签key值","Value":"标签Value值"})
        # region：地域(ap-gaungzhou)
        # @type SourceContent: String
        # @param DestContent: 访问目的示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板(ipm-dyodhpby)
        # instance：资产实例(ins-123456)
        # resourcegroup：资产分组(/全部分组/分组1/子分组1)
        # tag：资源标签({"Key":"标签key值","Value":"标签Value值"})
        # region：地域(ap-gaungzhou)
        # @type DestContent: String
        # @param Protocol: 协议；TCP/UDP/ICMP/ANY
        # @type Protocol: String
        # @param Description: 描述
        # @type Description: String
        # @param RuleUuid: 规则对应的唯一id
        # @type RuleUuid: Integer
        # @param Sequence: 规则序号
        # @type Sequence: Integer

        attr_accessor :SourceContent, :DestContent, :Protocol, :Description, :RuleUuid, :Sequence

        def initialize(sourcecontent=nil, destcontent=nil, protocol=nil, description=nil, ruleuuid=nil, sequence=nil)
          @SourceContent = sourcecontent
          @DestContent = destcontent
          @Protocol = protocol
          @Description = description
          @RuleUuid = ruleuuid
          @Sequence = sequence
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @DestContent = params['DestContent']
          @Protocol = params['Protocol']
          @Description = params['Description']
          @RuleUuid = params['RuleUuid']
          @Sequence = params['Sequence']
        end
      end

      # 执行顺序对象
      class SequenceData < TencentCloud::Common::AbstractModel
        # @param Id: 规则Id值
        # @type Id: Integer
        # @param OrderIndex: 修改前执行顺序
        # @type OrderIndex: Integer
        # @param NewOrderIndex: 修改后执行顺序
        # @type NewOrderIndex: Integer

        attr_accessor :Id, :OrderIndex, :NewOrderIndex

        def initialize(id=nil, orderindex=nil, neworderindex=nil)
          @Id = id
          @OrderIndex = orderindex
          @NewOrderIndex = neworderindex
        end

        def deserialize(params)
          @Id = params['Id']
          @OrderIndex = params['OrderIndex']
          @NewOrderIndex = params['NewOrderIndex']
        end
      end

      # SetNatFwDnatRule请求参数结构体
      class SetNatFwDnatRuleRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 0：cfw新增模式，1：cfw接入模式。
        # @type Mode: Integer
        # @param OperationType: 操作类型，可选值：add，del，modify。
        # @type OperationType: String
        # @param CfwInstance: 防火墙实例id，该字段必须传递。
        # @type CfwInstance: String
        # @param AddOrDelDnatRules: 添加或删除操作的Dnat规则列表。
        # @type AddOrDelDnatRules: Array
        # @param OriginDnat: 修改操作的原始Dnat规则
        # @type OriginDnat: :class:`Tencentcloud::Cfw.v20190904.models.CfwNatDnatRule`
        # @param NewDnat: 修改操作的新的Dnat规则
        # @type NewDnat: :class:`Tencentcloud::Cfw.v20190904.models.CfwNatDnatRule`

        attr_accessor :Mode, :OperationType, :CfwInstance, :AddOrDelDnatRules, :OriginDnat, :NewDnat

        def initialize(mode=nil, operationtype=nil, cfwinstance=nil, addordeldnatrules=nil, origindnat=nil, newdnat=nil)
          @Mode = mode
          @OperationType = operationtype
          @CfwInstance = cfwinstance
          @AddOrDelDnatRules = addordeldnatrules
          @OriginDnat = origindnat
          @NewDnat = newdnat
        end

        def deserialize(params)
          @Mode = params['Mode']
          @OperationType = params['OperationType']
          @CfwInstance = params['CfwInstance']
          unless params['AddOrDelDnatRules'].nil?
            @AddOrDelDnatRules = []
            params['AddOrDelDnatRules'].each do |i|
              cfwnatdnatrule_tmp = CfwNatDnatRule.new
              cfwnatdnatrule_tmp.deserialize(i)
              @AddOrDelDnatRules << cfwnatdnatrule_tmp
            end
          end
          unless params['OriginDnat'].nil?
            @OriginDnat = CfwNatDnatRule.new
            @OriginDnat.deserialize(params['OriginDnat'])
          end
          unless params['NewDnat'].nil?
            @NewDnat = CfwNatDnatRule.new
            @NewDnat.deserialize(params['NewDnat'])
          end
        end
      end

      # SetNatFwDnatRule返回参数结构体
      class SetNatFwDnatRuleResponse < TencentCloud::Common::AbstractModel
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

      # SetNatFwEip请求参数结构体
      class SetNatFwEipRequest < TencentCloud::Common::AbstractModel
        # @param OperationType: bind：绑定eip；unbind：解绑eip；newAdd：新增防火墙弹性公网ip
        # @type OperationType: String
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String
        # @param EipList: 当OperationType 为bind或unbind操作时，使用该字段。
        # @type EipList: Array

        attr_accessor :OperationType, :CfwInstance, :EipList

        def initialize(operationtype=nil, cfwinstance=nil, eiplist=nil)
          @OperationType = operationtype
          @CfwInstance = cfwinstance
          @EipList = eiplist
        end

        def deserialize(params)
          @OperationType = params['OperationType']
          @CfwInstance = params['CfwInstance']
          @EipList = params['EipList']
        end
      end

      # SetNatFwEip返回参数结构体
      class SetNatFwEipResponse < TencentCloud::Common::AbstractModel
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

      # StaticInfo 告警柱形图统计信息
      class StaticInfo < TencentCloud::Common::AbstractModel
        # @param Address: 地址
        # @type Address: String
        # @param InsID: 资产id
        # @type InsID: String
        # @param InsName: 资产名称
        # @type InsName: String
        # @param Ip: ip信息
        # @type Ip: String
        # @param Num: 数
        # @type Num: Integer
        # @param Port: 端口
        # @type Port: String

        attr_accessor :Address, :InsID, :InsName, :Ip, :Num, :Port

        def initialize(address=nil, insid=nil, insname=nil, ip=nil, num=nil, port=nil)
          @Address = address
          @InsID = insid
          @InsName = insname
          @Ip = ip
          @Num = num
          @Port = port
        end

        def deserialize(params)
          @Address = params['Address']
          @InsID = params['InsID']
          @InsName = params['InsName']
          @Ip = params['Ip']
          @Num = params['Num']
          @Port = params['Port']
        end
      end

      # StopSecurityGroupRuleDispatch请求参数结构体
      class StopSecurityGroupRuleDispatchRequest < TencentCloud::Common::AbstractModel
        # @param StopType: 值为1，中止全部
        # @type StopType: Integer

        attr_accessor :StopType

        def initialize(stoptype=nil)
          @StopType = stoptype
        end

        def deserialize(params)
          @StopType = params['StopType']
        end
      end

      # StopSecurityGroupRuleDispatch返回参数结构体
      class StopSecurityGroupRuleDispatchResponse < TencentCloud::Common::AbstractModel
        # @param Status: true代表成功，false代表错误
        # @type Status: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 防火墙开关列表对象
      class SwitchListsData < TencentCloud::Common::AbstractModel
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param IntranetIp: 内网IP
        # @type IntranetIp: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Area: 地域
        # @type Area: String
        # @param Switch: 防火墙开关
        # @type Switch: Integer
        # @param Id: id值
        # @type Id: Integer
        # @param PublicIpType: 公网 IP 类型
        # @type PublicIpType: Integer
        # @param PortTimes: 风险端口数
        # @type PortTimes: Integer
        # @param LastTime: 最近扫描时间
        # @type LastTime: String
        # @param ScanMode: 扫描深度
        # @type ScanMode: String
        # @param ScanStatus: 扫描状态
        # @type ScanStatus: Integer

        attr_accessor :PublicIp, :IntranetIp, :InstanceName, :InstanceId, :AssetType, :Area, :Switch, :Id, :PublicIpType, :PortTimes, :LastTime, :ScanMode, :ScanStatus

        def initialize(publicip=nil, intranetip=nil, instancename=nil, instanceid=nil, assettype=nil, area=nil, switch=nil, id=nil, publiciptype=nil, porttimes=nil, lasttime=nil, scanmode=nil, scanstatus=nil)
          @PublicIp = publicip
          @IntranetIp = intranetip
          @InstanceName = instancename
          @InstanceId = instanceid
          @AssetType = assettype
          @Area = area
          @Switch = switch
          @Id = id
          @PublicIpType = publiciptype
          @PortTimes = porttimes
          @LastTime = lasttime
          @ScanMode = scanmode
          @ScanStatus = scanstatus
        end

        def deserialize(params)
          @PublicIp = params['PublicIp']
          @IntranetIp = params['IntranetIp']
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @AssetType = params['AssetType']
          @Area = params['Area']
          @Switch = params['Switch']
          @Id = params['Id']
          @PublicIpType = params['PublicIpType']
          @PortTimes = params['PortTimes']
          @LastTime = params['LastTime']
          @ScanMode = params['ScanMode']
          @ScanStatus = params['ScanStatus']
        end
      end

      # SyncFwOperate请求参数结构体
      class SyncFwOperateRequest < TencentCloud::Common::AbstractModel
        # @param SyncType: 同步操作类型：Route，同步防火墙路由
        # @type SyncType: String
        # @param FwType: 防火墙类型；nat,nat防火墙;ew,vpc间防火墙
        # @type FwType: String

        attr_accessor :SyncType, :FwType

        def initialize(synctype=nil, fwtype=nil)
          @SyncType = synctype
          @FwType = fwtype
        end

        def deserialize(params)
          @SyncType = params['SyncType']
          @FwType = params['FwType']
        end
      end

      # SyncFwOperate返回参数结构体
      class SyncFwOperateResponse < TencentCloud::Common::AbstractModel
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

      # 告警中心概览数据
      class TLogInfo < TencentCloud::Common::AbstractModel
        # @param BanNum: 封禁列表
        # @type BanNum: Integer
        # @param BruteForceNum: 暴力破解
        # @type BruteForceNum: Integer
        # @param HandleNum: 待处置告警
        # @type HandleNum: Integer
        # @param NetworkNum: 网络探测
        # @type NetworkNum: Integer
        # @param OutNum: 失陷主机
        # @type OutNum: Integer
        # @param VulNum: 漏洞攻击
        # @type VulNum: Integer

        attr_accessor :BanNum, :BruteForceNum, :HandleNum, :NetworkNum, :OutNum, :VulNum

        def initialize(bannum=nil, bruteforcenum=nil, handlenum=nil, networknum=nil, outnum=nil, vulnum=nil)
          @BanNum = bannum
          @BruteForceNum = bruteforcenum
          @HandleNum = handlenum
          @NetworkNum = networknum
          @OutNum = outnum
          @VulNum = vulnum
        end

        def deserialize(params)
          @BanNum = params['BanNum']
          @BruteForceNum = params['BruteForceNum']
          @HandleNum = params['HandleNum']
          @NetworkNum = params['NetworkNum']
          @OutNum = params['OutNum']
          @VulNum = params['VulNum']
        end
      end

      # 标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 目标key
        # @type TagKey: String
        # @param TagValue: 目标值
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

      # 地址模板列表数据
      class TemplateListInfo < TencentCloud::Common::AbstractModel
        # @param Uuid: 模板ID
        # @type Uuid: String
        # @param Name: 模板名称
        # @type Name: String
        # @param Detail: 描述
        # @type Detail: String
        # @param IpString: IP模板
        # @type IpString: String
        # @param InsertTime: 插入时间
        # @type InsertTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param Type: 模板类型
        # @type Type: Integer
        # @param RulesNum: 关联规则条数
        # @type RulesNum: Integer
        # @param TemplateId: 模板Id
        # @type TemplateId: String
        # @param ProtocolType: 协议端口模板，协议类型，4:4层协议，7:7层协议
        # @type ProtocolType: String
        # @param IPNum: 模板包含地址数量
        # @type IPNum: Integer
        # @param IpVersion: IP版本,0,IPv4;1,IPv6
        # @type IpVersion: Integer

        attr_accessor :Uuid, :Name, :Detail, :IpString, :InsertTime, :UpdateTime, :Type, :RulesNum, :TemplateId, :ProtocolType, :IPNum, :IpVersion

        def initialize(uuid=nil, name=nil, detail=nil, ipstring=nil, inserttime=nil, updatetime=nil, type=nil, rulesnum=nil, templateid=nil, protocoltype=nil, ipnum=nil, ipversion=nil)
          @Uuid = uuid
          @Name = name
          @Detail = detail
          @IpString = ipstring
          @InsertTime = inserttime
          @UpdateTime = updatetime
          @Type = type
          @RulesNum = rulesnum
          @TemplateId = templateid
          @ProtocolType = protocoltype
          @IPNum = ipnum
          @IpVersion = ipversion
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Name = params['Name']
          @Detail = params['Detail']
          @IpString = params['IpString']
          @InsertTime = params['InsertTime']
          @UpdateTime = params['UpdateTime']
          @Type = params['Type']
          @RulesNum = params['RulesNum']
          @TemplateId = params['TemplateId']
          @ProtocolType = params['ProtocolType']
          @IPNum = params['IPNum']
          @IpVersion = params['IpVersion']
        end
      end

      # 未处置事件详情
      class UnHandleEvent < TencentCloud::Common::AbstractModel
        # @param EventTableListStruct: 伪攻击链类型
        # @type EventTableListStruct: Array
        # @param BaseLineUser: 1 是  0否
        # @type BaseLineUser: Integer
        # @param BaseLineInSwitch: 1 打开 0 关闭
        # @type BaseLineInSwitch: Integer
        # @param BaseLineOutSwitch: 1 打开 0 关闭
        # @type BaseLineOutSwitch: Integer
        # @param VpcFwCount: vpc间防火墙实例数量
        # @type VpcFwCount: Integer

        attr_accessor :EventTableListStruct, :BaseLineUser, :BaseLineInSwitch, :BaseLineOutSwitch, :VpcFwCount

        def initialize(eventtableliststruct=nil, baselineuser=nil, baselineinswitch=nil, baselineoutswitch=nil, vpcfwcount=nil)
          @EventTableListStruct = eventtableliststruct
          @BaseLineUser = baselineuser
          @BaseLineInSwitch = baselineinswitch
          @BaseLineOutSwitch = baselineoutswitch
          @VpcFwCount = vpcfwcount
        end

        def deserialize(params)
          unless params['EventTableListStruct'].nil?
            @EventTableListStruct = []
            params['EventTableListStruct'].each do |i|
              unhandleeventdetail_tmp = UnHandleEventDetail.new
              unhandleeventdetail_tmp.deserialize(i)
              @EventTableListStruct << unhandleeventdetail_tmp
            end
          end
          @BaseLineUser = params['BaseLineUser']
          @BaseLineInSwitch = params['BaseLineInSwitch']
          @BaseLineOutSwitch = params['BaseLineOutSwitch']
          @VpcFwCount = params['VpcFwCount']
        end
      end

      # 未处置事件信息汇总
      class UnHandleEventDetail < TencentCloud::Common::AbstractModel
        # @param EventName: 安全事件名称
        # @type EventName: String
        # @param Total: 未处置事件数量
        # @type Total: Integer

        attr_accessor :EventName, :Total

        def initialize(eventname=nil, total=nil)
          @EventName = eventname
          @Total = total
        end

        def deserialize(params)
          @EventName = params['EventName']
          @Total = params['Total']
        end
      end

      # nat防火墙 vpc dns 开关信息
      class VpcDnsInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param VpcName: vpc 名称
        # @type VpcName: String
        # @param FwMode: nat 防火墙模式 0：新增模式， 1: 接入模式
        # @type FwMode: Integer
        # @param VpcIpv4Cidr: vpc ipv4网段范围 CIDR（Classless Inter-Domain Routing，无类域间路由选择）
        # @type VpcIpv4Cidr: String
        # @param DNSEip: 外网弹性ip，防火墙 dns解析地址
        # @type DNSEip: String
        # @param NatInsId: nat网关id
        # @type NatInsId: String
        # @param NatInsName: nat网关名称
        # @type NatInsName: String
        # @param SwitchStatus: 0：开关关闭 ， 1: 开关打开
        # @type SwitchStatus: Integer
        # @param ProtectedStatus: 0：未防护， 1: 已防护，2：忽略此字段
        # @type ProtectedStatus: Integer
        # @param SupportDNSFW: 是否支持DNS FW，0-不支持、1-支持
        # @type SupportDNSFW: Integer

        attr_accessor :VpcId, :VpcName, :FwMode, :VpcIpv4Cidr, :DNSEip, :NatInsId, :NatInsName, :SwitchStatus, :ProtectedStatus, :SupportDNSFW

        def initialize(vpcid=nil, vpcname=nil, fwmode=nil, vpcipv4cidr=nil, dnseip=nil, natinsid=nil, natinsname=nil, switchstatus=nil, protectedstatus=nil, supportdnsfw=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @FwMode = fwmode
          @VpcIpv4Cidr = vpcipv4cidr
          @DNSEip = dnseip
          @NatInsId = natinsid
          @NatInsName = natinsname
          @SwitchStatus = switchstatus
          @ProtectedStatus = protectedstatus
          @SupportDNSFW = supportdnsfw
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @FwMode = params['FwMode']
          @VpcIpv4Cidr = params['VpcIpv4Cidr']
          @DNSEip = params['DNSEip']
          @NatInsId = params['NatInsId']
          @NatInsName = params['NatInsName']
          @SwitchStatus = params['SwitchStatus']
          @ProtectedStatus = params['ProtectedStatus']
          @SupportDNSFW = params['SupportDNSFW']
        end
      end

      # VPC防火墙实例的CVM信息
      class VpcFwCvmInsInfo < TencentCloud::Common::AbstractModel
        # @param FwInsId: VPC防火墙实例ID
        # @type FwInsId: String
        # @param Region: CVM所在地域
        # @type Region: String
        # @param RegionZh: CVM所在地域中文
        # @type RegionZh: String
        # @param RegionDetail: CVM所在地域详情
        # @type RegionDetail: String
        # @param ZoneZh: 主机所在可用区
        # @type ZoneZh: String
        # @param ZoneZhBack: 备机所在可用区
        # @type ZoneZhBack: String
        # @param BandWidth: 防火墙CVM带宽值
        # @type BandWidth: Integer
        # @param Zone: 实例主机所在可用区
        # @type Zone: String
        # @param ZoneBak: 实例备机所在可用区
        # @type ZoneBak: String

        attr_accessor :FwInsId, :Region, :RegionZh, :RegionDetail, :ZoneZh, :ZoneZhBack, :BandWidth, :Zone, :ZoneBak

        def initialize(fwinsid=nil, region=nil, regionzh=nil, regiondetail=nil, zonezh=nil, zonezhback=nil, bandwidth=nil, zone=nil, zonebak=nil)
          @FwInsId = fwinsid
          @Region = region
          @RegionZh = regionzh
          @RegionDetail = regiondetail
          @ZoneZh = zonezh
          @ZoneZhBack = zonezhback
          @BandWidth = bandwidth
          @Zone = zone
          @ZoneBak = zonebak
        end

        def deserialize(params)
          @FwInsId = params['FwInsId']
          @Region = params['Region']
          @RegionZh = params['RegionZh']
          @RegionDetail = params['RegionDetail']
          @ZoneZh = params['ZoneZh']
          @ZoneZhBack = params['ZoneZhBack']
          @BandWidth = params['BandWidth']
          @Zone = params['Zone']
          @ZoneBak = params['ZoneBak']
        end
      end

      # VPC防火墙(组)及防火墙实例详情信息
      class VpcFwGroupInfo < TencentCloud::Common::AbstractModel
        # @param FwGroupId: 防火墙(组)ID
        # @type FwGroupId: String
        # @param FwGroupName: 防火墙(组)名称
        # @type FwGroupName: String
        # @param FwSwitchNum: 防火墙组涉及到的开关个数
        # @type FwSwitchNum: Integer
        # @param RegionLst: 防火墙(组)部署的地域
        # @type RegionLst: Array
        # @param Mode: 模式 1：CCN云联网模式；0：私有网络模式 2: sase 模式 3：ccn 高级模式 4: 私有网络(跨租户单边模式)
        # @type Mode: Integer
        # @param SwitchMode: 防火墙实例的开关模式 1: 单点互通 2: 多点互通 3: 全互通 4: 自定义路由
        # @type SwitchMode: Integer
        # @param FwInstanceLst: VPC防火墙实例卡片信息数组
        # @type FwInstanceLst: Array
        # @param Status: 防火墙(状态) 0：正常 1: 初始化或操作中
        # @type Status: Integer
        # @param FwVpcCidr: auto :自动选择
        # 如果为网段，则为用户自定义 192.168.0.0/20
        # @type FwVpcCidr: String
        # @param CdcId: cdc专用集群场景时表示部署所属的cdc
        # @type CdcId: String
        # @param CdcName: cdc专用集群场景时表示cdc名称
        # @type CdcName: String
        # @param CrossUserMode: 跨租户模式 1管理员 2单边 0 非跨租户
        # @type CrossUserMode: String
        # @param NeedSwitchCcnOverlap: 云联网模式下，当前实例是否需要开启重叠路由开关，1：需要开启，0：不需要开启
        # @type NeedSwitchCcnOverlap: Integer
        # @param CcnId: 云联网模式下，实例关联的云联网id
        # @type CcnId: String

        attr_accessor :FwGroupId, :FwGroupName, :FwSwitchNum, :RegionLst, :Mode, :SwitchMode, :FwInstanceLst, :Status, :FwVpcCidr, :CdcId, :CdcName, :CrossUserMode, :NeedSwitchCcnOverlap, :CcnId

        def initialize(fwgroupid=nil, fwgroupname=nil, fwswitchnum=nil, regionlst=nil, mode=nil, switchmode=nil, fwinstancelst=nil, status=nil, fwvpccidr=nil, cdcid=nil, cdcname=nil, crossusermode=nil, needswitchccnoverlap=nil, ccnid=nil)
          @FwGroupId = fwgroupid
          @FwGroupName = fwgroupname
          @FwSwitchNum = fwswitchnum
          @RegionLst = regionlst
          @Mode = mode
          @SwitchMode = switchmode
          @FwInstanceLst = fwinstancelst
          @Status = status
          @FwVpcCidr = fwvpccidr
          @CdcId = cdcid
          @CdcName = cdcname
          @CrossUserMode = crossusermode
          @NeedSwitchCcnOverlap = needswitchccnoverlap
          @CcnId = ccnid
        end

        def deserialize(params)
          @FwGroupId = params['FwGroupId']
          @FwGroupName = params['FwGroupName']
          @FwSwitchNum = params['FwSwitchNum']
          @RegionLst = params['RegionLst']
          @Mode = params['Mode']
          @SwitchMode = params['SwitchMode']
          unless params['FwInstanceLst'].nil?
            @FwInstanceLst = []
            params['FwInstanceLst'].each do |i|
              vpcfwinstanceinfo_tmp = VpcFwInstanceInfo.new
              vpcfwinstanceinfo_tmp.deserialize(i)
              @FwInstanceLst << vpcfwinstanceinfo_tmp
            end
          end
          @Status = params['Status']
          @FwVpcCidr = params['FwVpcCidr']
          @CdcId = params['CdcId']
          @CdcName = params['CdcName']
          @CrossUserMode = params['CrossUserMode']
          @NeedSwitchCcnOverlap = params['NeedSwitchCcnOverlap']
          @CcnId = params['CcnId']
        end
      end

      # vpc 防火墙下单防火墙实例结构体
      class VpcFwInstance < TencentCloud::Common::AbstractModel
        # @param Name: 防火墙实例名称
        # @type Name: String
        # @param VpcIds: 私有网络模式下接入的VpcId列表；仅私有网络模式使用
        # @type VpcIds: Array
        # @param FwDeploy: 部署地域信息
        # @type FwDeploy: :class:`Tencentcloud::Cfw.v20190904.models.FwDeploy`
        # @param FwInsId: 防火墙实例ID (编辑场景传)
        # @type FwInsId: String

        attr_accessor :Name, :VpcIds, :FwDeploy, :FwInsId

        def initialize(name=nil, vpcids=nil, fwdeploy=nil, fwinsid=nil)
          @Name = name
          @VpcIds = vpcids
          @FwDeploy = fwdeploy
          @FwInsId = fwinsid
        end

        def deserialize(params)
          @Name = params['Name']
          @VpcIds = params['VpcIds']
          unless params['FwDeploy'].nil?
            @FwDeploy = FwDeploy.new
            @FwDeploy.deserialize(params['FwDeploy'])
          end
          @FwInsId = params['FwInsId']
        end
      end

      # VPC防火墙实例卡片信息
      class VpcFwInstanceInfo < TencentCloud::Common::AbstractModel
        # @param FwInsName: VPC防火墙实例名称
        # @type FwInsName: String
        # @param FwInsId: VPC防火墙实例ID
        # @type FwInsId: String
        # @param FwMode: VPC防火墙实例模式 0: 旧VPC模式防火墙 1: CCN模式防火墙
        # @type FwMode: Integer
        # @param JoinInsNum: VPC防火墙接入网络实例个数
        # @type JoinInsNum: Integer
        # @param FwSwitchNum: VPC防火墙开关个数
        # @type FwSwitchNum: Integer
        # @param Status: VPC防火墙状态 0:正常 ， 1：创建中 2: 变更中
        # @type Status: Integer
        # @param Time: VPC防火墙创建时间
        # @type Time: String
        # @param CcnId: VPC 相关云联网ID列表
        # @type CcnId: Array
        # @param CcnName: VPC 相关云联网名称列表
        # @type CcnName: Array
        # @param PeerConnectionId: VPC 相关对等连接ID列表
        # @type PeerConnectionId: Array
        # @param PeerConnectionName: VPC 相关对等连接名称列表
        # @type PeerConnectionName: Array
        # @param FwCvmLst: VPC防火墙CVM的列表
        # @type FwCvmLst: Array
        # @param JoinInsLst: VPC防火墙接入网络实例类型列表
        # @type JoinInsLst: Array
        # @param FwGateway: 防火墙网关信息
        # @type FwGateway: Array
        # @param FwGroupId: 防火墙(组)ID
        # @type FwGroupId: String
        # @param RuleUsed: 已使用规则数
        # @type RuleUsed: Integer
        # @param RuleMax: 最大规则数
        # @type RuleMax: Integer
        # @param Width: 防火墙实例带宽
        # @type Width: Integer
        # @param UserVpcWidth: 用户VPC墙总带宽
        # @type UserVpcWidth: Integer
        # @param JoinInsIdLst: 接入的vpc列表
        # @type JoinInsIdLst: Array
        # @param FlowMax: 内网间峰值带宽 (单位 bps )
        # @type FlowMax: Integer
        # @param EngineVersion: 实例引擎版本
        # @type EngineVersion: String
        # @param UpdateEnable: 引擎是否可升级：0，不可升级；1，可升级
        # @type UpdateEnable: Integer
        # @param TrafficMode: 引擎运行模式，Normal:正常, OnlyRoute:透明模式
        # @type TrafficMode: String
        # @param ReserveTime: 引擎预约升级时间
        # @type ReserveTime: String
        # @param ReserveVersion: 预约引擎升级版本
        # @type ReserveVersion: String
        # @param ReserveVersionState: 引擎预约升级版本状态
        # @type ReserveVersionState: String
        # @param ElasticSwitch: 弹性开关 1打开 0关闭
        # @type ElasticSwitch: Integer
        # @param ElasticBandwidth: 弹性带宽，单位Mbps
        # @type ElasticBandwidth: Integer
        # @param IsFirstAfterPay: 是否首次开通按量付费
        # 1 是
        # 0 不是
        # @type IsFirstAfterPay: Integer

        attr_accessor :FwInsName, :FwInsId, :FwMode, :JoinInsNum, :FwSwitchNum, :Status, :Time, :CcnId, :CcnName, :PeerConnectionId, :PeerConnectionName, :FwCvmLst, :JoinInsLst, :FwGateway, :FwGroupId, :RuleUsed, :RuleMax, :Width, :UserVpcWidth, :JoinInsIdLst, :FlowMax, :EngineVersion, :UpdateEnable, :TrafficMode, :ReserveTime, :ReserveVersion, :ReserveVersionState, :ElasticSwitch, :ElasticBandwidth, :IsFirstAfterPay

        def initialize(fwinsname=nil, fwinsid=nil, fwmode=nil, joininsnum=nil, fwswitchnum=nil, status=nil, time=nil, ccnid=nil, ccnname=nil, peerconnectionid=nil, peerconnectionname=nil, fwcvmlst=nil, joininslst=nil, fwgateway=nil, fwgroupid=nil, ruleused=nil, rulemax=nil, width=nil, uservpcwidth=nil, joininsidlst=nil, flowmax=nil, engineversion=nil, updateenable=nil, trafficmode=nil, reservetime=nil, reserveversion=nil, reserveversionstate=nil, elasticswitch=nil, elasticbandwidth=nil, isfirstafterpay=nil)
          @FwInsName = fwinsname
          @FwInsId = fwinsid
          @FwMode = fwmode
          @JoinInsNum = joininsnum
          @FwSwitchNum = fwswitchnum
          @Status = status
          @Time = time
          @CcnId = ccnid
          @CcnName = ccnname
          @PeerConnectionId = peerconnectionid
          @PeerConnectionName = peerconnectionname
          @FwCvmLst = fwcvmlst
          @JoinInsLst = joininslst
          @FwGateway = fwgateway
          @FwGroupId = fwgroupid
          @RuleUsed = ruleused
          @RuleMax = rulemax
          @Width = width
          @UserVpcWidth = uservpcwidth
          @JoinInsIdLst = joininsidlst
          @FlowMax = flowmax
          @EngineVersion = engineversion
          @UpdateEnable = updateenable
          @TrafficMode = trafficmode
          @ReserveTime = reservetime
          @ReserveVersion = reserveversion
          @ReserveVersionState = reserveversionstate
          @ElasticSwitch = elasticswitch
          @ElasticBandwidth = elasticbandwidth
          @IsFirstAfterPay = isfirstafterpay
        end

        def deserialize(params)
          @FwInsName = params['FwInsName']
          @FwInsId = params['FwInsId']
          @FwMode = params['FwMode']
          @JoinInsNum = params['JoinInsNum']
          @FwSwitchNum = params['FwSwitchNum']
          @Status = params['Status']
          @Time = params['Time']
          @CcnId = params['CcnId']
          @CcnName = params['CcnName']
          @PeerConnectionId = params['PeerConnectionId']
          @PeerConnectionName = params['PeerConnectionName']
          unless params['FwCvmLst'].nil?
            @FwCvmLst = []
            params['FwCvmLst'].each do |i|
              vpcfwcvminsinfo_tmp = VpcFwCvmInsInfo.new
              vpcfwcvminsinfo_tmp.deserialize(i)
              @FwCvmLst << vpcfwcvminsinfo_tmp
            end
          end
          unless params['JoinInsLst'].nil?
            @JoinInsLst = []
            params['JoinInsLst'].each do |i|
              vpcfwjoininstancetype_tmp = VpcFwJoinInstanceType.new
              vpcfwjoininstancetype_tmp.deserialize(i)
              @JoinInsLst << vpcfwjoininstancetype_tmp
            end
          end
          unless params['FwGateway'].nil?
            @FwGateway = []
            params['FwGateway'].each do |i|
              fwgateway_tmp = FwGateway.new
              fwgateway_tmp.deserialize(i)
              @FwGateway << fwgateway_tmp
            end
          end
          @FwGroupId = params['FwGroupId']
          @RuleUsed = params['RuleUsed']
          @RuleMax = params['RuleMax']
          @Width = params['Width']
          @UserVpcWidth = params['UserVpcWidth']
          @JoinInsIdLst = params['JoinInsIdLst']
          @FlowMax = params['FlowMax']
          @EngineVersion = params['EngineVersion']
          @UpdateEnable = params['UpdateEnable']
          @TrafficMode = params['TrafficMode']
          @ReserveTime = params['ReserveTime']
          @ReserveVersion = params['ReserveVersion']
          @ReserveVersionState = params['ReserveVersionState']
          @ElasticSwitch = params['ElasticSwitch']
          @ElasticBandwidth = params['ElasticBandwidth']
          @IsFirstAfterPay = params['IsFirstAfterPay']
        end
      end

      # VPC防火墙实例信息
      class VpcFwInstanceShow < TencentCloud::Common::AbstractModel
        # @param FwInsId: VPC防火墙实例ID
        # @type FwInsId: String
        # @param FwInsName: VPC防火墙实例名称
        # @type FwInsName: String
        # @param FwInsRegion: 网络经过VPC防火墙CVM所在地域
        # @type FwInsRegion: String

        attr_accessor :FwInsId, :FwInsName, :FwInsRegion

        def initialize(fwinsid=nil, fwinsname=nil, fwinsregion=nil)
          @FwInsId = fwinsid
          @FwInsName = fwinsname
          @FwInsRegion = fwinsregion
        end

        def deserialize(params)
          @FwInsId = params['FwInsId']
          @FwInsName = params['FwInsName']
          @FwInsRegion = params['FwInsRegion']
        end
      end

      # VPC防火墙接入的网络实例类型及数量
      class VpcFwJoinInstanceType < TencentCloud::Common::AbstractModel
        # @param JoinType: 接入实例类型，VPC、DIRECTCONNECT、 VPNGW 等
        # @type JoinType: String
        # @param Num: 接入的对应网络实例类型的数量
        # @type Num: Integer

        attr_accessor :JoinType, :Num

        def initialize(jointype=nil, num=nil)
          @JoinType = jointype
          @Num = num
        end

        def deserialize(params)
          @JoinType = params['JoinType']
          @Num = params['Num']
        end
      end

      # VPC内网间规则
      class VpcRuleItem < TencentCloud::Common::AbstractModel
        # @param SourceContent: 访问源示例：
        # net：IP/CIDR(192.168.0.2)
        # @type SourceContent: String
        # @param SourceType: 访问源类型，类型可以为：net
        # @type SourceType: String
        # @param DestContent: 访问目的示例：
        # net：IP/CIDR(192.168.0.2)
        # domain：域名规则，例如*.qq.com
        # @type DestContent: String
        # @param DestType: 访问目的类型，类型可以为：net，domain，dnsparse
        # @type DestType: String
        # @param Protocol: 协议，可选的值：
        # TCP
        # UDP
        # ICMP
        # ANY
        # HTTP
        # HTTPS
        # HTTP/HTTPS
        # SMTP
        # SMTPS
        # SMTP/SMTPS
        # FTP
        # DNS
        # TLS/SSL
        # @type Protocol: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值：
        # accept：放行
        # drop：拒绝
        # log：观察
        # @type RuleAction: String
        # @param Port: 访问控制策略的端口。取值：
        # -1/-1：全部端口
        # 80：80端口
        # @type Port: String
        # @param Description: 描述
        # @type Description: String
        # @param OrderIndex: 规则顺序，-1表示最低，1表示最高
        # @type OrderIndex: Integer
        # @param Enable: 规则状态，true表示启用，false表示禁用
        # @type Enable: String
        # @param EdgeId: 规则生效的范围，是在哪对vpc之间还是针对所有vpc间生效
        # @type EdgeId: String
        # @param Uuid: 规则对应的唯一id，添加规则时忽略该字段，修改该规则时需要填写Uuid;查询返回时会返回该参数
        # @type Uuid: Integer
        # @param DetectedTimes: 规则的命中次数，增删改查规则时无需传入此参数，主要用于返回查询结果数据
        # @type DetectedTimes: Integer
        # @param EdgeName: EdgeId对应的这对VPC间防火墙的描述
        # @type EdgeName: String
        # @param InternalUuid: 内部使用的uuid，一般情况下不会使用到该字段
        # @type InternalUuid: Integer
        # @param Deleted: 规则被删除：1，已删除；0，未删除
        # @type Deleted: Integer
        # @param FwGroupId: 规则生效的防火墙实例ID
        # @type FwGroupId: String
        # @param FwGroupName: 防火墙名称
        # @type FwGroupName: String
        # @param BetaList: beta任务详情
        # @type BetaList: Array
        # @param ParamTemplateId: 端口协议组ID
        # @type ParamTemplateId: String
        # @param ParamTemplateName: 端口协议组名称
        # @type ParamTemplateName: String
        # @param TargetName: 访问目的名称
        # @type TargetName: String
        # @param SourceName: 访问源名称
        # @type SourceName: String
        # @param IpVersion: Ip版本，0：IPv4，1：IPv6，默认为IPv4
        # @type IpVersion: Integer
        # @param Invalid: 是否是无效规则，0 表示有效规则，1 表示无效规则，出参场景返回使用
        # @type Invalid: Integer

        attr_accessor :SourceContent, :SourceType, :DestContent, :DestType, :Protocol, :RuleAction, :Port, :Description, :OrderIndex, :Enable, :EdgeId, :Uuid, :DetectedTimes, :EdgeName, :InternalUuid, :Deleted, :FwGroupId, :FwGroupName, :BetaList, :ParamTemplateId, :ParamTemplateName, :TargetName, :SourceName, :IpVersion, :Invalid

        def initialize(sourcecontent=nil, sourcetype=nil, destcontent=nil, desttype=nil, protocol=nil, ruleaction=nil, port=nil, description=nil, orderindex=nil, enable=nil, edgeid=nil, uuid=nil, detectedtimes=nil, edgename=nil, internaluuid=nil, deleted=nil, fwgroupid=nil, fwgroupname=nil, betalist=nil, paramtemplateid=nil, paramtemplatename=nil, targetname=nil, sourcename=nil, ipversion=nil, invalid=nil)
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @DestContent = destcontent
          @DestType = desttype
          @Protocol = protocol
          @RuleAction = ruleaction
          @Port = port
          @Description = description
          @OrderIndex = orderindex
          @Enable = enable
          @EdgeId = edgeid
          @Uuid = uuid
          @DetectedTimes = detectedtimes
          @EdgeName = edgename
          @InternalUuid = internaluuid
          @Deleted = deleted
          @FwGroupId = fwgroupid
          @FwGroupName = fwgroupname
          @BetaList = betalist
          @ParamTemplateId = paramtemplateid
          @ParamTemplateName = paramtemplatename
          @TargetName = targetname
          @SourceName = sourcename
          @IpVersion = ipversion
          @Invalid = invalid
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @DestContent = params['DestContent']
          @DestType = params['DestType']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @Port = params['Port']
          @Description = params['Description']
          @OrderIndex = params['OrderIndex']
          @Enable = params['Enable']
          @EdgeId = params['EdgeId']
          @Uuid = params['Uuid']
          @DetectedTimes = params['DetectedTimes']
          @EdgeName = params['EdgeName']
          @InternalUuid = params['InternalUuid']
          @Deleted = params['Deleted']
          @FwGroupId = params['FwGroupId']
          @FwGroupName = params['FwGroupName']
          unless params['BetaList'].nil?
            @BetaList = []
            params['BetaList'].each do |i|
              betainfobyacl_tmp = BetaInfoByACL.new
              betainfobyacl_tmp.deserialize(i)
              @BetaList << betainfobyacl_tmp
            end
          end
          @ParamTemplateId = params['ParamTemplateId']
          @ParamTemplateName = params['ParamTemplateName']
          @TargetName = params['TargetName']
          @SourceName = params['SourceName']
          @IpVersion = params['IpVersion']
          @Invalid = params['Invalid']
        end
      end

      # vpc区域数据详情
      class VpcZoneData < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param Region: vpc节点地域
        # @type Region: String

        attr_accessor :Zone, :Region

        def initialize(zone=nil, region=nil)
          @Zone = zone
          @Region = region
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Region = params['Region']
        end
      end

    end
  end
end

