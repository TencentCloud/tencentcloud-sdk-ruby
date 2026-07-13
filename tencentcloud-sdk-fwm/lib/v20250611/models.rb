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
  module Fwm
    module V20250611
      # 账号基本信息，主要有 Uin 和 AppId
      class Account < TencentCloud::Common::AbstractModel
        # @param AppId: 租户appid
        # @type AppId: String
        # @param Uin: 租户uin
        # @type Uin: String
        # @param RemainQuota: 剩余可用额度
        # @type RemainQuota: Integer
        # @param Nickname: 租户名称
        # @type Nickname: String
        # @param DispatchRuleNum: 下发规则数
        # @type DispatchRuleNum: Integer
        # @param OriginRuleNum: 产品已有规则数
        # @type OriginRuleNum: Integer
        # @param TotalQuota: 总额度
        # @type TotalQuota: Integer
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :AppId, :Uin, :RemainQuota, :Nickname, :DispatchRuleNum, :OriginRuleNum, :TotalQuota, :MemberId

        def initialize(appid=nil, uin=nil, remainquota=nil, nickname=nil, dispatchrulenum=nil, originrulenum=nil, totalquota=nil, memberid=nil)
          @AppId = appid
          @Uin = uin
          @RemainQuota = remainquota
          @Nickname = nickname
          @DispatchRuleNum = dispatchrulenum
          @OriginRuleNum = originrulenum
          @TotalQuota = totalquota
          @MemberId = memberid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @RemainQuota = params['RemainQuota']
          @Nickname = params['Nickname']
          @DispatchRuleNum = params['DispatchRuleNum']
          @OriginRuleNum = params['OriginRuleNum']
          @TotalQuota = params['TotalQuota']
          @MemberId = params['MemberId']
        end
      end

      # 账户组信息
      class AccountGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 账户组ID
        # @type GroupId: String
        # @param GroupName: 账户组名称
        # @type GroupName: String

        attr_accessor :GroupId, :GroupName

        def initialize(groupid=nil, groupname=nil)
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # 账号组配额详情
      class AccountGroupQuotaDetail < TencentCloud::Common::AbstractModel
        # @param GroupId: 账号组Id
        # @type GroupId: String
        # @param GroupName: 账号组名称
        # @type GroupName: String
        # @param MemberCount: 账号组成员数
        # @type MemberCount: Integer
        # @param RemainQuota: 取组内 RemainQuota 最小成员的值
        # @type RemainQuota: Integer
        # @param TotalQuota: 同上成员的 TotalQuota
        # @type TotalQuota: Integer
        # @param DispatchRuleNum: 同上成员的 DispatchRuleNum
        # @type DispatchRuleNum: Integer
        # @param OriginRuleNum: 同上成员的 OriginRuleNum
        # @type OriginRuleNum: Integer
        # @param BottleneckUin: 配额最少的成员 Uin
        # @type BottleneckUin: String
        # @param Members: 成员列表
        # @type Members: Array

        attr_accessor :GroupId, :GroupName, :MemberCount, :RemainQuota, :TotalQuota, :DispatchRuleNum, :OriginRuleNum, :BottleneckUin, :Members

        def initialize(groupid=nil, groupname=nil, membercount=nil, remainquota=nil, totalquota=nil, dispatchrulenum=nil, originrulenum=nil, bottleneckuin=nil, members=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MemberCount = membercount
          @RemainQuota = remainquota
          @TotalQuota = totalquota
          @DispatchRuleNum = dispatchrulenum
          @OriginRuleNum = originrulenum
          @BottleneckUin = bottleneckuin
          @Members = members
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @MemberCount = params['MemberCount']
          @RemainQuota = params['RemainQuota']
          @TotalQuota = params['TotalQuota']
          @DispatchRuleNum = params['DispatchRuleNum']
          @OriginRuleNum = params['OriginRuleNum']
          @BottleneckUin = params['BottleneckUin']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Members << account_tmp
            end
          end
        end
      end

      # 单个产品的风险统计详情
      class AccountProductDetailStats < TencentCloud::Common::AbstractModel
        # @param Product: 产品类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: String
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param PolicyCount: 体检策略数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyCount: Integer
        # @param UntreatedRiskCount: 待整改风险数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UntreatedRiskCount: Integer
        # @param TotalRiskCount: 总风险数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRiskCount: Integer
        # @param TreatedRiskCount: 已处置数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreatedRiskCount: Integer
        # @param IgnoredRiskCount: 已忽略数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoredRiskCount: Integer
        # @param RectifyRate: 整改率，如 50%，无需整改时为 无需整改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RectifyRate: String
        # @param LastCheckTime: 最近一次体检时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param SubcategoryIds: 子类 ID 列表
        # @type SubcategoryIds: Array
        # @param IsOverdue: 是否超时未体检
        # @type IsOverdue: Boolean

        attr_accessor :Product, :ProductName, :PolicyCount, :UntreatedRiskCount, :TotalRiskCount, :TreatedRiskCount, :IgnoredRiskCount, :RectifyRate, :LastCheckTime, :SubcategoryIds, :IsOverdue

        def initialize(product=nil, productname=nil, policycount=nil, untreatedriskcount=nil, totalriskcount=nil, treatedriskcount=nil, ignoredriskcount=nil, rectifyrate=nil, lastchecktime=nil, subcategoryids=nil, isoverdue=nil)
          @Product = product
          @ProductName = productname
          @PolicyCount = policycount
          @UntreatedRiskCount = untreatedriskcount
          @TotalRiskCount = totalriskcount
          @TreatedRiskCount = treatedriskcount
          @IgnoredRiskCount = ignoredriskcount
          @RectifyRate = rectifyrate
          @LastCheckTime = lastchecktime
          @SubcategoryIds = subcategoryids
          @IsOverdue = isoverdue
        end

        def deserialize(params)
          @Product = params['Product']
          @ProductName = params['ProductName']
          @PolicyCount = params['PolicyCount']
          @UntreatedRiskCount = params['UntreatedRiskCount']
          @TotalRiskCount = params['TotalRiskCount']
          @TreatedRiskCount = params['TreatedRiskCount']
          @IgnoredRiskCount = params['IgnoredRiskCount']
          @RectifyRate = params['RectifyRate']
          @LastCheckTime = params['LastCheckTime']
          @SubcategoryIds = params['SubcategoryIds']
          @IsOverdue = params['IsOverdue']
        end
      end

      # 按账号分组的风险统计数据
      class AccountStatsGroup < TencentCloud::Common::AbstractModel
        # @param Member: 成员账号信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Member: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`
        # @param UntreatedRiskCount: 该账号下所有产品待整改风险数汇总
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UntreatedRiskCount: Integer
        # @param ProductStats: 该账号下各产品维度的风险统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductStats: Array
        # @param RectifyRate: 整改率
        # @type RectifyRate: String

        attr_accessor :Member, :UntreatedRiskCount, :ProductStats, :RectifyRate

        def initialize(member=nil, untreatedriskcount=nil, productstats=nil, rectifyrate=nil)
          @Member = member
          @UntreatedRiskCount = untreatedriskcount
          @ProductStats = productstats
          @RectifyRate = rectifyrate
        end

        def deserialize(params)
          unless params['Member'].nil?
            @Member = MemberInfo.new
            @Member.deserialize(params['Member'])
          end
          @UntreatedRiskCount = params['UntreatedRiskCount']
          unless params['ProductStats'].nil?
            @ProductStats = []
            params['ProductStats'].each do |i|
              accountproductdetailstats_tmp = AccountProductDetailStats.new
              accountproductdetailstats_tmp.deserialize(i)
              @ProductStats << accountproductdetailstats_tmp
            end
          end
          @RectifyRate = params['RectifyRate']
        end
      end

      # 安全组地址模板
      class AddressTemplateSpecification < TencentCloud::Common::AbstractModel
        # @param AddressId: IP地址ID，例如：ipm-2uw6ujo6。
        # @type AddressId: String
        # @param AddressGroupId:  IP地址组ID，例如：ipmg-2uw6ujo6。
        # @type AddressGroupId: String

        attr_accessor :AddressId, :AddressGroupId

        def initialize(addressid=nil, addressgroupid=nil)
          @AddressId = addressid
          @AddressGroupId = addressgroupid
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @AddressGroupId = params['AddressGroupId']
        end
      end

      # 企业安全组规则列表信息
      class AnalysisSgRuleInfoResp < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则id  等同RuleUuid</p>
        # @type Id: Integer
        # @param RuleId: <p>规则Id</p>
        # @type RuleId: String
        # @param OrderIndex: <p>排序</p>
        # @type OrderIndex: Integer
        # @param CfwOrderIndex: <p>云防排序</p>
        # @type CfwOrderIndex: Integer
        # @param SourceId: <p>源规则内容</p>
        # @type SourceId: String
        # @param SourceType: <p>源规则类型<br>取值范围 0/1/2/3/4/5/6/7/8/9<br>0表示ip(net),<br>1表示VPC实例(instance)<br>2表示子网实例(instance)<br>3表示CVM实例(instance)<br>4表示CLB实例(instance)<br>5表示ENI实例(instance)<br>6表示数据库实例(instance)<br>7表示模板(template)<br>8表示标签(tag)<br>9表示地域(region)</p><p>枚举值：</p><ul><li>0： IP / CIDR</li><li>1： VPC 实例</li><li>2： 子网 </li><li>3： CVM 实例</li><li>4： CLB 实例</li><li>5： ENI（弹性网卡）实例</li><li>6： CDB（云数据库）实例</li><li>7： 参数模板</li><li>8： 标签</li><li>9： 地域</li></ul>
        # @type SourceType: Integer
        # @param TargetId: <p>目的规则内容</p>
        # @type TargetId: String
        # @param TargetType: <p>目的规则类型<br>取值范围 0/1/2/3/4/5/6/7/8/9/100<br>0表示ip(net),<br>1表示VPC实例(instance)<br>2表示子网实例(instance)<br>3表示CVM实例(instance)<br>4表示CLB实例(instance)<br>5表示ENI实例(instance)<br>6表示数据库实例(instance)<br>7表示模板(template)<br>8表示标签(tag)<br>9表示地域(region)<br>100表示资产分组(resourcegroup)</p><p>枚举值：</p><ul><li>0： IP / CIDR</li><li>1： VPC 实例</li><li>2： 子网 </li><li>3： CVM 实例</li><li>4： CLB 实例</li><li>5： ENI（弹性网卡）实例</li><li>6： CDB（云数据库）实例</li><li>7： 参数模板</li><li>8： 标签</li><li>9： 地域</li></ul>
        # @type TargetType: Integer
        # @param Protocol: <p>协议名称<br>取值范围:TCP/ANY/ICMP/UDP<br>ANY:表示所有</p>
        # @type Protocol: String
        # @param Port: <p>端口</p>
        # @type Port: String
        # @param Strategy: <p>规则策略<br>取值范围:1/2<br>1:阻断<br>2:放行</p>
        # @type Strategy: Integer
        # @param Detail: <p>描述</p>
        # @type Detail: String
        # @param Region: <p>地域</p>
        # @type Region: String
        # @param ServiceTemplateId: <p>服务模板id</p>
        # @type ServiceTemplateId: String
        # @param SouInstanceName: <p>源资产名称</p>
        # @type SouInstanceName: String
        # @param SouPublicIp: <p>源资产公网ip</p>
        # @type SouPublicIp: String
        # @param SouPrivateIp: <p>源资产内网ip</p>
        # @type SouPrivateIp: String
        # @param SouCidr: <p>源资产网段信息</p>
        # @type SouCidr: String
        # @param SouParameterName: <p>源模板名称</p>
        # @type SouParameterName: String
        # @param InstanceName: <p>目的资产名称</p>
        # @type InstanceName: String
        # @param PublicIp: <p>目的资产公网ip</p>
        # @type PublicIp: String
        # @param PrivateIp: <p>目的资产内网ip</p>
        # @type PrivateIp: String
        # @param Cidr: <p>目的资产网段信息</p>
        # @type Cidr: String
        # @param ParameterName: <p>目的模板名称</p>
        # @type ParameterName: String
        # @param ProtocolPortName: <p>端口模板名称</p>
        # @type ProtocolPortName: String
        # @param DnsParseCount: <p>域名解析的IP统计</p>
        # @type DnsParseCount: :class:`Tencentcloud::Fwm.v20250611.models.SgDnsParseCount`
        # @param Scope: <p>规则生效范围</p>
        # @type Scope: String
        # @param RulePartition: <p>分区：<br>1防火墙管理最前分区<br>2是云防规则<br>3防火墙管理最后分区</p>
        # @type RulePartition: Integer
        # @param GroupId: <p>规则组Id</p>
        # @type GroupId: String
        # @param GroupName: <p>规则组名称</p>
        # @type GroupName: String
        # @param GroupRuleId: <p>规则组内规则id</p>
        # @type GroupRuleId: String
        # @param StrategyId: <p>策略Id</p>
        # @type StrategyId: String
        # @param IpVersion: <p>ip类型</p>
        # @type IpVersion: String
        # @param BelongMember: <p>成员信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongMember: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`

        attr_accessor :Id, :RuleId, :OrderIndex, :CfwOrderIndex, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Detail, :Region, :ServiceTemplateId, :SouInstanceName, :SouPublicIp, :SouPrivateIp, :SouCidr, :SouParameterName, :InstanceName, :PublicIp, :PrivateIp, :Cidr, :ParameterName, :ProtocolPortName, :DnsParseCount, :Scope, :RulePartition, :GroupId, :GroupName, :GroupRuleId, :StrategyId, :IpVersion, :BelongMember

        def initialize(id=nil, ruleid=nil, orderindex=nil, cfworderindex=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, detail=nil, region=nil, servicetemplateid=nil, souinstancename=nil, soupublicip=nil, souprivateip=nil, soucidr=nil, souparametername=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil, parametername=nil, protocolportname=nil, dnsparsecount=nil, scope=nil, rulepartition=nil, groupid=nil, groupname=nil, groupruleid=nil, strategyid=nil, ipversion=nil, belongmember=nil)
          @Id = id
          @RuleId = ruleid
          @OrderIndex = orderindex
          @CfwOrderIndex = cfworderindex
          @SourceId = sourceid
          @SourceType = sourcetype
          @TargetId = targetid
          @TargetType = targettype
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @Region = region
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
          @DnsParseCount = dnsparsecount
          @Scope = scope
          @RulePartition = rulepartition
          @GroupId = groupid
          @GroupName = groupname
          @GroupRuleId = groupruleid
          @StrategyId = strategyid
          @IpVersion = ipversion
          @BelongMember = belongmember
        end

        def deserialize(params)
          @Id = params['Id']
          @RuleId = params['RuleId']
          @OrderIndex = params['OrderIndex']
          @CfwOrderIndex = params['CfwOrderIndex']
          @SourceId = params['SourceId']
          @SourceType = params['SourceType']
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @Region = params['Region']
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
          unless params['DnsParseCount'].nil?
            @DnsParseCount = SgDnsParseCount.new
            @DnsParseCount.deserialize(params['DnsParseCount'])
          end
          @Scope = params['Scope']
          @RulePartition = params['RulePartition']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupRuleId = params['GroupRuleId']
          @StrategyId = params['StrategyId']
          @IpVersion = params['IpVersion']
          unless params['BelongMember'].nil?
            @BelongMember = MemberInfo.new
            @BelongMember.deserialize(params['BelongMember'])
          end
        end
      end

      # CancelIgnorePolicyRisk请求参数结构体
      class CancelIgnorePolicyRiskRequest < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :RiskId, :MemberId

        def initialize(riskid=nil, memberid=nil)
          @RiskId = riskid
          @MemberId = memberid
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @MemberId = params['MemberId']
        end
      end

      # CancelIgnorePolicyRisk返回参数结构体
      class CancelIgnorePolicyRiskResponse < TencentCloud::Common::AbstractModel
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

      # 通用筛选条件
      class CommonFilter < TencentCloud::Common::AbstractModel
        # @param Name: <p>筛选字段名。支持：SecurityGroupId、FwGroupId、IP（IP地址模糊搜索）、InstanceName（实例名称模糊搜索）、VpcId（VPC ID精确搜索）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Values: <p>筛选值列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param OperatorType: <p>操作类型。1=等于，7=in，9=模糊匹配</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorType: Integer

        attr_accessor :Name, :Values, :OperatorType

        def initialize(name=nil, values=nil, operatortype=nil)
          @Name = name
          @Values = values
          @OperatorType = operatortype
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @OperatorType = params['OperatorType']
        end
      end

      # CreateAnalyzePolicyTask请求参数结构体
      class CreateAnalyzePolicyTaskRequest < TencentCloud::Common::AbstractModel
        # @param Products: 产品类型
        # @type Products: Array
        # @param MemberIdSet: 成员Id 列表
        # @type MemberIdSet: Array

        attr_accessor :Products, :MemberIdSet

        def initialize(products=nil, memberidset=nil)
          @Products = products
          @MemberIdSet = memberidset
        end

        def deserialize(params)
          @Products = params['Products']
          @MemberIdSet = params['MemberIdSet']
        end
      end

      # CreateAnalyzePolicyTask返回参数结构体
      class CreateAnalyzePolicyTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态 ，1 表示执行中
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

      # CreateEdgeAclRuleGroup请求参数结构体
      class CreateEdgeAclRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 规则组名称，长度1-50字符
        # @type GroupName: String
        # @param Product: 产品类型，固定为 cfw_edge_acl
        # @type Product: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupName, :Product, :Rules

        def initialize(groupname=nil, product=nil, rules=nil)
          @GroupName = groupname
          @Product = product
          @Rules = rules
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Product = params['Product']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              edgeaclruleinfo_tmp = EdgeAclRuleInfo.new
              edgeaclruleinfo_tmp.deserialize(i)
              @Rules << edgeaclruleinfo_tmp
            end
          end
        end
      end

      # CreateEdgeAclRuleGroup返回参数结构体
      class CreateEdgeAclRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建的规则组ID
        # @type GroupId: String
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

      # CreateEdgeAclRule请求参数结构体
      class CreateEdgeAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupId, :Rules

        def initialize(groupid=nil, rules=nil)
          @GroupId = groupid
          @Rules = rules
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              edgeaclruleinfo_tmp = EdgeAclRuleInfo.new
              edgeaclruleinfo_tmp.deserialize(i)
              @Rules << edgeaclruleinfo_tmp
            end
          end
        end
      end

      # CreateEdgeAclRule返回参数结构体
      class CreateEdgeAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateNatAclRuleGroup请求参数结构体
      class CreateNatAclRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 规则组名称
        # @type GroupName: String
        # @param Product: 产品类型，固定为 cfw_nat_acl
        # @type Product: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupName, :Product, :Rules

        def initialize(groupname=nil, product=nil, rules=nil)
          @GroupName = groupname
          @Product = product
          @Rules = rules
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Product = params['Product']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              nataclrule_tmp = NatAclRule.new
              nataclrule_tmp.deserialize(i)
              @Rules << nataclrule_tmp
            end
          end
        end
      end

      # CreateNatAclRuleGroup返回参数结构体
      class CreateNatAclRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建的规则组ID
        # @type GroupId: String
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

      # CreateNatAclRule请求参数结构体
      class CreateNatAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupId, :Rules

        def initialize(groupid=nil, rules=nil)
          @GroupId = groupid
          @Rules = rules
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              nataclrule_tmp = NatAclRule.new
              nataclrule_tmp.deserialize(i)
              @Rules << nataclrule_tmp
            end
          end
        end
      end

      # CreateNatAclRule返回参数结构体
      class CreateNatAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateSecurityGroupRuleGroup请求参数结构体
      class CreateSecurityGroupRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 规则组ID
        # @type GroupName: String
        # @param Product: 产品类型
        # @type Product: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupName, :Product, :Rules

        def initialize(groupname=nil, product=nil, rules=nil)
          @GroupName = groupname
          @Product = product
          @Rules = rules
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Product = params['Product']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              securitygrouprule_tmp = SecurityGroupRule.new
              securitygrouprule_tmp.deserialize(i)
              @Rules << securitygrouprule_tmp
            end
          end
        end
      end

      # CreateSecurityGroupRuleGroup返回参数结构体
      class CreateSecurityGroupRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建的规则组ID
        # @type GroupId: String
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

      # CreateSecurityGroupRule请求参数结构体
      class CreateSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupId, :Rules

        def initialize(groupid=nil, rules=nil)
          @GroupId = groupid
          @Rules = rules
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              securitygrouprule_tmp = SecurityGroupRule.new
              securitygrouprule_tmp.deserialize(i)
              @Rules << securitygrouprule_tmp
            end
          end
        end
      end

      # CreateSecurityGroupRule返回参数结构体
      class CreateSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateStrategy请求参数结构体
      class CreateStrategyRequest < TencentCloud::Common::AbstractModel
        # @param Product: 产品类型
        # @type Product: String
        # @param ReceiveAccount: 下发账号
        # @type ReceiveAccount: Array
        # @param PreStrategy: 前区规则组
        # @type PreStrategy: Array
        # @param PostStrategy: 后区规则组
        # @type PostStrategy: Array
        # @param ReceiveGroup: 下发账号组
        # @type ReceiveGroup: Array

        attr_accessor :Product, :ReceiveAccount, :PreStrategy, :PostStrategy, :ReceiveGroup

        def initialize(product=nil, receiveaccount=nil, prestrategy=nil, poststrategy=nil, receivegroup=nil)
          @Product = product
          @ReceiveAccount = receiveaccount
          @PreStrategy = prestrategy
          @PostStrategy = poststrategy
          @ReceiveGroup = receivegroup
        end

        def deserialize(params)
          @Product = params['Product']
          @ReceiveAccount = params['ReceiveAccount']
          unless params['PreStrategy'].nil?
            @PreStrategy = []
            params['PreStrategy'].each do |i|
              strategyreq_tmp = StrategyReq.new
              strategyreq_tmp.deserialize(i)
              @PreStrategy << strategyreq_tmp
            end
          end
          unless params['PostStrategy'].nil?
            @PostStrategy = []
            params['PostStrategy'].each do |i|
              strategyreq_tmp = StrategyReq.new
              strategyreq_tmp.deserialize(i)
              @PostStrategy << strategyreq_tmp
            end
          end
          @ReceiveGroup = params['ReceiveGroup']
        end
      end

      # CreateStrategy返回参数结构体
      class CreateStrategyResponse < TencentCloud::Common::AbstractModel
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

      # CreateVpcAclRuleGroup请求参数结构体
      class CreateVpcAclRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 规则组名称
        # @type GroupName: String
        # @param Product: 产品类型，固定为 cfw_vpc_acl
        # @type Product: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupName, :Product, :Rules

        def initialize(groupname=nil, product=nil, rules=nil)
          @GroupName = groupname
          @Product = product
          @Rules = rules
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Product = params['Product']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              vpcaclrule_tmp = VpcAclRule.new
              vpcaclrule_tmp.deserialize(i)
              @Rules << vpcaclrule_tmp
            end
          end
        end
      end

      # CreateVpcAclRuleGroup返回参数结构体
      class CreateVpcAclRuleGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建的规则组ID
        # @type GroupId: String
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

      # CreateVpcAclRule请求参数结构体
      class CreateVpcAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :GroupId, :Rules

        def initialize(groupid=nil, rules=nil)
          @GroupId = groupid
          @Rules = rules
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              vpcaclrule_tmp = VpcAclRule.new
              vpcaclrule_tmp.deserialize(i)
              @Rules << vpcaclrule_tmp
            end
          end
        end
      end

      # CreateVpcAclRule返回参数结构体
      class CreateVpcAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeAclRule请求参数结构体
      class DeleteEdgeAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param RuleIds: 要删除的规则ID列表
        # @type RuleIds: Array

        attr_accessor :GroupId, :RuleIds

        def initialize(groupid=nil, ruleids=nil)
          @GroupId = groupid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteEdgeAclRule返回参数结构体
      class DeleteEdgeAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNatAclRule请求参数结构体
      class DeleteNatAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param RuleIds: 规则ID列表
        # @type RuleIds: Array

        attr_accessor :GroupId, :RuleIds

        def initialize(groupid=nil, ruleids=nil)
          @GroupId = groupid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteNatAclRule返回参数结构体
      class DeleteNatAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRuleGroup请求参数结构体
      class DeleteRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 规则组Id列表
        # @type GroupIds: Array

        attr_accessor :GroupIds

        def initialize(groupids=nil)
          @GroupIds = groupids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
        end
      end

      # DeleteRuleGroup返回参数结构体
      class DeleteRuleGroupResponse < TencentCloud::Common::AbstractModel
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
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param RuleIds: 规则列表
        # @type RuleIds: Array

        attr_accessor :GroupId, :RuleIds

        def initialize(groupid=nil, ruleids=nil)
          @GroupId = groupid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteSecurityGroupRule返回参数结构体
      class DeleteSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteStrategy请求参数结构体
      class DeleteStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyIds: 策略Id列表
        # @type StrategyIds: Array

        attr_accessor :StrategyIds

        def initialize(strategyids=nil)
          @StrategyIds = strategyids
        end

        def deserialize(params)
          @StrategyIds = params['StrategyIds']
        end
      end

      # DeleteStrategy返回参数结构体
      class DeleteStrategyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpcAclRule请求参数结构体
      class DeleteVpcAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param RuleIds: 规则ID列表
        # @type RuleIds: Array

        attr_accessor :GroupId, :RuleIds

        def initialize(groupid=nil, ruleids=nil)
          @GroupId = groupid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteVpcAclRule返回参数结构体
      class DeleteVpcAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # DescribeEdgeAclRules请求参数结构体
      class DescribeEdgeAclRulesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Direction: 规则方向：0-出向，1-入向
        # @type Direction: Integer
        # @param Filters: 过滤条件列表，支持按 RuleId、Direction、Protocol、RuleAction 等字段过滤
        # @type Filters: Array
        # @param Limit: 分页大小，默认100，最大1000
        # @type Limit: Integer
        # @param Offset: 分页偏移，默认0
        # @type Offset: Integer
        # @param Order: 排序顺序，asc:升序 desc:降序
        # @type Order: String
        # @param By: 排序字段，支持 Sequence、RuleId 等
        # @type By: String

        attr_accessor :GroupId, :Direction, :Filters, :Limit, :Offset, :Order, :By

        def initialize(groupid=nil, direction=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @GroupId = groupid
          @Direction = direction
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Direction = params['Direction']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeEdgeAclRules返回参数结构体
      class DescribeEdgeAclRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 规则总数
        # @type TotalCount: Integer
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param AllTotalCount: 不过滤的总数
        # @type AllTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rules, :AllTotalCount, :RequestId

        def initialize(totalcount=nil, rules=nil, alltotalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @Rules = rules
          @AllTotalCount = alltotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              edgeaclruleresp_tmp = EdgeAclRuleResp.new
              edgeaclruleresp_tmp.deserialize(i)
              @Rules << edgeaclruleresp_tmp
            end
          end
          @AllTotalCount = params['AllTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatAclRules请求参数结构体
      class DescribeNatAclRulesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Direction: 规则方向：0-出向，1-入向
        # @type Direction: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量
        # @type Limit: Integer
        # @param Order: 排序顺序，asc:升序 desc:降序
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :GroupId, :Direction, :Filters, :Offset, :Limit, :Order, :By

        def initialize(groupid=nil, direction=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @GroupId = groupid
          @Direction = direction
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Direction = params['Direction']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeNatAclRules返回参数结构体
      class DescribeNatAclRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param AllTotalCount: 不过滤的总数
        # @type AllTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :TotalCount, :AllTotalCount, :RequestId

        def initialize(rules=nil, totalcount=nil, alltotalcount=nil, requestid=nil)
          @Rules = rules
          @TotalCount = totalcount
          @AllTotalCount = alltotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              nataclruleresp_tmp = NatAclRuleResp.new
              nataclruleresp_tmp.deserialize(i)
              @Rules << nataclruleresp_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @AllTotalCount = params['AllTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganMembers请求参数结构体
      class DescribeOrganMembersRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 搜索过滤条件列表，支持按成员 ID、账号名称、身份、纳管状态等字段筛选
        # @type Filters: Array
        # @param Limit: 分页大小，默认 20
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认 0
        # @type Offset: Integer
        # @param By: 排序字段，如 MemberCreateTime
        # @type By: String
        # @param Order: 排序方式：asc 升序，desc 降序
        # @type Order: String

        attr_accessor :Filters, :Limit, :Offset, :By, :Order

        def initialize(filters=nil, limit=nil, offset=nil, by=nil, order=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @By = by
          @Order = order
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
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeOrganMembers返回参数结构体
      class DescribeOrganMembersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集团成员总数
        # @type TotalCount: Integer
        # @param Members: 集团成员列表
        # @type Members: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Members, :RequestId

        def initialize(totalcount=nil, members=nil, requestid=nil)
          @TotalCount = totalcount
          @Members = members
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              organmemberitem_tmp = OrganMemberItem.new
              organmemberitem_tmp.deserialize(i)
              @Members << organmemberitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganSummary请求参数结构体
      class DescribeOrganSummaryRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOrganSummary返回参数结构体
      class DescribeOrganSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Summary: 集团概览
        # @type Summary: :class:`Tencentcloud::Fwm.v20250611.models.OrganSummary`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Summary, :RequestId

        def initialize(summary=nil, requestid=nil)
          @Summary = summary
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Summary'].nil?
            @Summary = OrganSummary.new
            @Summary.deserialize(params['Summary'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyRiskAccountProductStats请求参数结构体
      class DescribePolicyRiskAccountProductStatsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小，按账号分页，默认20，最大100
        # @type Limit: Integer
        # @param Offset: 分页偏移，默认0
        # @type Offset: Integer
        # @param Filters: 筛选条件列表。支持的筛选字段：AccountName（账号名称模糊搜索）、AccountId（账号Uin精确搜索）、OnlyUntreated（仅看待整改，值为1时生效）、OnlyOverdue（仅超时未体检，值为1时生效）
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
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
        end
      end

      # DescribePolicyRiskAccountProductStats返回参数结构体
      class DescribePolicyRiskAccountProductStatsResponse < TencentCloud::Common::AbstractModel
        # @param AccountStats: 按账号分组的风险统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountStats: Array
        # @param TotalCount: 满足条件的账号总数
        # @type TotalCount: Integer
        # @param OverdueAccountCount: 超时未体检的账号数
        # @type OverdueAccountCount: Integer
        # @param OverdueProductCount: 超时未体检的产品数
        # @type OverdueProductCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountStats, :TotalCount, :OverdueAccountCount, :OverdueProductCount, :RequestId

        def initialize(accountstats=nil, totalcount=nil, overdueaccountcount=nil, overdueproductcount=nil, requestid=nil)
          @AccountStats = accountstats
          @TotalCount = totalcount
          @OverdueAccountCount = overdueaccountcount
          @OverdueProductCount = overdueproductcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountStats'].nil?
            @AccountStats = []
            params['AccountStats'].each do |i|
              accountstatsgroup_tmp = AccountStatsGroup.new
              accountstatsgroup_tmp.deserialize(i)
              @AccountStats << accountstatsgroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @OverdueAccountCount = params['OverdueAccountCount']
          @OverdueProductCount = params['OverdueProductCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskAnalysisDetails请求参数结构体
      class DescribeRiskAnalysisDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Id: 风险ID
        # @type Id: String
        # @param SearchType: 查询类型，analyze实时数据分析，task定时分析结果
        # @type SearchType: String
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :Id, :SearchType, :MemberId

        def initialize(id=nil, searchtype=nil, memberid=nil)
          @Id = id
          @SearchType = searchtype
          @MemberId = memberid
        end

        def deserialize(params)
          @Id = params['Id']
          @SearchType = params['SearchType']
          @MemberId = params['MemberId']
        end
      end

      # DescribeRiskAnalysisDetails返回参数结构体
      class DescribeRiskAnalysisDetailsResponse < TencentCloud::Common::AbstractModel
        # @param EnterpriseSecurityGroupRule: 风险企业安全组规则列表
        # @type EnterpriseSecurityGroupRule: Array
        # @param SecurityGroupPolicy: 风险安全组规则列表
        # @type SecurityGroupPolicy: Array
        # @param Status: 实时分析状态，1分析执行中请轮询，0分析已结束
        # @type Status: Integer
        # @param EnterpriseSecurityGroupRuleIPV6: 风险企业安全组IPV6规则列表
        # @type EnterpriseSecurityGroupRuleIPV6: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnterpriseSecurityGroupRule, :SecurityGroupPolicy, :Status, :EnterpriseSecurityGroupRuleIPV6, :RequestId

        def initialize(enterprisesecuritygrouprule=nil, securitygrouppolicy=nil, status=nil, enterprisesecuritygroupruleipv6=nil, requestid=nil)
          @EnterpriseSecurityGroupRule = enterprisesecuritygrouprule
          @SecurityGroupPolicy = securitygrouppolicy
          @Status = status
          @EnterpriseSecurityGroupRuleIPV6 = enterprisesecuritygroupruleipv6
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnterpriseSecurityGroupRule'].nil?
            @EnterpriseSecurityGroupRule = []
            params['EnterpriseSecurityGroupRule'].each do |i|
              analysissgruleinforesp_tmp = AnalysisSgRuleInfoResp.new
              analysissgruleinforesp_tmp.deserialize(i)
              @EnterpriseSecurityGroupRule << analysissgruleinforesp_tmp
            end
          end
          unless params['SecurityGroupPolicy'].nil?
            @SecurityGroupPolicy = []
            params['SecurityGroupPolicy'].each do |i|
              securitygroupriskpolicy_tmp = SecurityGroupRiskPolicy.new
              securitygroupriskpolicy_tmp.deserialize(i)
              @SecurityGroupPolicy << securitygroupriskpolicy_tmp
            end
          end
          @Status = params['Status']
          unless params['EnterpriseSecurityGroupRuleIPV6'].nil?
            @EnterpriseSecurityGroupRuleIPV6 = []
            params['EnterpriseSecurityGroupRuleIPV6'].each do |i|
              analysissgruleinforesp_tmp = AnalysisSgRuleInfoResp.new
              analysissgruleinforesp_tmp.deserialize(i)
              @EnterpriseSecurityGroupRuleIPV6 << analysissgruleinforesp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCategoryStats请求参数结构体
      class DescribeRiskCategoryStatsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小,默认20
        # @type Limit: Integer
        # @param Offset: 分页偏移量,默认0
        # @type Offset: Integer
        # @param Product: 产品类型
        # @type Product: String
        # @param Filters: 筛选器
        # @type Filters: Array
        # @param By: 排序字段："RuleCount", "TreatedCount", "IgnoredCount", "UntreatedCount", "DisposalRate"
        # @type By: String
        # @param Order: 顺序
        # @type Order: String
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :Limit, :Offset, :Product, :Filters, :By, :Order, :MemberId

        def initialize(limit=nil, offset=nil, product=nil, filters=nil, by=nil, order=nil, memberid=nil)
          @Limit = limit
          @Offset = offset
          @Product = product
          @Filters = filters
          @By = by
          @Order = order
          @MemberId = memberid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Product = params['Product']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
          @MemberId = params['MemberId']
        end
      end

      # DescribeRiskCategoryStats返回参数结构体
      class DescribeRiskCategoryStatsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 风险分类总数
        # @type Total: Integer
        # @param Data: 风险分类统计列表
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
              riskcategoryitem_tmp = RiskCategoryItem.new
              riskcategoryitem_tmp.deserialize(i)
              @Data << riskcategoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskList请求参数结构体
      class DescribeRiskListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 条数限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Product: 产品类型
        # @type Product: String
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Order: 排序方式
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :Limit, :Offset, :Product, :Filters, :Order, :By, :MemberId

        def initialize(limit=nil, offset=nil, product=nil, filters=nil, order=nil, by=nil, memberid=nil)
          @Limit = limit
          @Offset = offset
          @Product = product
          @Filters = filters
          @Order = order
          @By = by
          @MemberId = memberid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Product = params['Product']
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
          @MemberId = params['MemberId']
        end
      end

      # DescribeRiskList返回参数结构体
      class DescribeRiskListResponse < TencentCloud::Common::AbstractModel
        # @param PolicyRiskLst: 策略问题列表
        # @type PolicyRiskLst: Array
        # @param Total: 策略问题数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyRiskLst, :Total, :RequestId

        def initialize(policyrisklst=nil, total=nil, requestid=nil)
          @PolicyRiskLst = policyrisklst
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyRiskLst'].nil?
            @PolicyRiskLst = []
            params['PolicyRiskLst'].each do |i|
              policyrisk_tmp = PolicyRisk.new
              policyrisk_tmp.deserialize(i)
              @PolicyRiskLst << policyrisk_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupRule请求参数结构体
      class DescribeSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param RuleId: 规则Id
        # @type RuleId: String

        attr_accessor :GroupId, :RuleId

        def initialize(groupid=nil, ruleid=nil)
          @GroupId = groupid
          @RuleId = ruleid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RuleId = params['RuleId']
        end
      end

      # DescribeSecurityGroupRule返回参数结构体
      class DescribeSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则详情
        # @type Rule: :class:`Tencentcloud::Fwm.v20250611.models.SgRuleResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = SgRuleResp.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupRules请求参数结构体
      class DescribeSecurityGroupRulesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param Filters: 模糊搜索关键词
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量
        # @type Limit: Integer

        attr_accessor :GroupId, :Filters, :Offset, :Limit

        def initialize(groupid=nil, filters=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSecurityGroupRules返回参数结构体
      class DescribeSecurityGroupRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param AllTotalCount: 不过滤的规则总数
        # @type AllTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :TotalCount, :AllTotalCount, :RequestId

        def initialize(rules=nil, totalcount=nil, alltotalcount=nil, requestid=nil)
          @Rules = rules
          @TotalCount = totalcount
          @AllTotalCount = alltotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              secgroupruleresp_tmp = SecGroupRuleResp.new
              secgroupruleresp_tmp.deserialize(i)
              @Rules << secgroupruleresp_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @AllTotalCount = params['AllTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategies请求参数结构体
      class DescribeStrategiesRequest < TencentCloud::Common::AbstractModel
        # @param Product: 产品类型
        # @type Product: String
        # @param ExecArea: 执行区域：pre是前区，post 是后区
        # @type ExecArea: String
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Limit: 条数限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :Product, :ExecArea, :Filters, :Limit, :Offset

        def initialize(product=nil, execarea=nil, filters=nil, limit=nil, offset=nil)
          @Product = product
          @ExecArea = execarea
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Product = params['Product']
          @ExecArea = params['ExecArea']
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
        end
      end

      # DescribeStrategies返回参数结构体
      class DescribeStrategiesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Strategies: 策略列表
        # @type Strategies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Strategies, :RequestId

        def initialize(totalcount=nil, strategies=nil, requestid=nil)
          @TotalCount = totalcount
          @Strategies = strategies
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategyresp_tmp = StrategyResp.new
              strategyresp_tmp.deserialize(i)
              @Strategies << strategyresp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategyAccounts请求参数结构体
      class DescribeStrategyAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 下发产品 secgroup // 企业安全组
        # @type Product: String
        # @param Filters: 筛选器
        # @type Filters: Array

        attr_accessor :Product, :Filters

        def initialize(product=nil, filters=nil)
          @Product = product
          @Filters = filters
        end

        def deserialize(params)
          @Product = params['Product']
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

      # DescribeStrategyAccounts返回参数结构体
      class DescribeStrategyAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Accounts: 账号列表
        # @type Accounts: Array
        # @param AccountGroups: 账号组列表
        # @type AccountGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Accounts, :AccountGroups, :RequestId

        def initialize(accounts=nil, accountgroups=nil, requestid=nil)
          @Accounts = accounts
          @AccountGroups = accountgroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          unless params['AccountGroups'].nil?
            @AccountGroups = []
            params['AccountGroups'].each do |i|
              accountgroupquotadetail_tmp = AccountGroupQuotaDetail.new
              accountgroupquotadetail_tmp.deserialize(i)
              @AccountGroups << accountgroupquotadetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategyDispatchStatus请求参数结构体
      class DescribeStrategyDispatchStatusRequest < TencentCloud::Common::AbstractModel
        # @param Product: 产品
        # @type Product: String

        attr_accessor :Product

        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeStrategyDispatchStatus返回参数结构体
      class DescribeStrategyDispatchStatusResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 进度
        # @type Progress: Float
        # @param StartTime: 下发开始时间
        # @type StartTime: String
        # @param EndTime: 下发结束时间
        # @type EndTime: String
        # @param Status: 下发状态，0无变动，1下发中，2下发成功，3下发失败，4更新待下发
        # @type Status: Integer
        # @param RuleGroupNum: 下发规则组数量
        # @type RuleGroupNum: Integer
        # @param ErrorMsg: 下发失败错误信息
        # @type ErrorMsg: String
        # @param DispatchStrategyList: 下发关联策略id列表
        # @type DispatchStrategyList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :StartTime, :EndTime, :Status, :RuleGroupNum, :ErrorMsg, :DispatchStrategyList, :RequestId

        def initialize(progress=nil, starttime=nil, endtime=nil, status=nil, rulegroupnum=nil, errormsg=nil, dispatchstrategylist=nil, requestid=nil)
          @Progress = progress
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @RuleGroupNum = rulegroupnum
          @ErrorMsg = errormsg
          @DispatchStrategyList = dispatchstrategylist
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @RuleGroupNum = params['RuleGroupNum']
          @ErrorMsg = params['ErrorMsg']
          @DispatchStrategyList = params['DispatchStrategyList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategy请求参数结构体
      class DescribeStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略Id
        # @type StrategyId: String

        attr_accessor :StrategyId

        def initialize(strategyid=nil)
          @StrategyId = strategyid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeStrategy返回参数结构体
      class DescribeStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Strategy: 策略详情
        # @type Strategy: :class:`Tencentcloud::Fwm.v20250611.models.StrategyResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Strategy, :RequestId

        def initialize(strategy=nil, requestid=nil)
          @Strategy = strategy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Strategy'].nil?
            @Strategy = StrategyResp.new
            @Strategy.deserialize(params['Strategy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcAclRules请求参数结构体
      class DescribeVpcAclRulesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量
        # @type Limit: Integer

        attr_accessor :GroupId, :Filters, :Offset, :Limit

        def initialize(groupid=nil, filters=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              commonfilter_tmp = CommonFilter.new
              commonfilter_tmp.deserialize(i)
              @Filters << commonfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVpcAclRules返回参数结构体
      class DescribeVpcAclRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param AllTotalCount: 不过滤的总数
        # @type AllTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :TotalCount, :AllTotalCount, :RequestId

        def initialize(rules=nil, totalcount=nil, alltotalcount=nil, requestid=nil)
          @Rules = rules
          @TotalCount = totalcount
          @AllTotalCount = alltotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              vpcaclruleresp_tmp = VpcAclRuleResp.new
              vpcaclruleresp_tmp.deserialize(i)
              @Rules << vpcaclruleresp_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @AllTotalCount = params['AllTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DispatchStrategy请求参数结构体
      class DispatchStrategyRequest < TencentCloud::Common::AbstractModel
        # @param Status: 1:下发，2:中止
        # @type Status: Integer
        # @param Product: 产品
        # @type Product: String

        attr_accessor :Status, :Product

        def initialize(status=nil, product=nil)
          @Status = status
          @Product = product
        end

        def deserialize(params)
          @Status = params['Status']
          @Product = params['Product']
        end
      end

      # DispatchStrategy返回参数结构体
      class DispatchStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回状态
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

      # 互联网边界规则
      class EdgeAclRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID，修改规则时必填
        # @type RuleId: String
        # @param OrderIndex: 规则执行顺序，数字越小优先级越高，创建规则组时必须从1开始严格递增
        # @type OrderIndex: Integer
        # @param Direction: 规则方向：0-出站，1-入站
        # @type Direction: Integer
        # @param SourceContent: 源地址内容，根据 SourceType 不同有不同的格式：ip 时为 IP/CIDR，domain 时为域名，template 时为模板ID，instance 时为实例ID列表（逗号分隔），tag 时为标签键值对（格式：key:value）
        # @type SourceContent: String
        # @param SourceType: 源地址类型：ip-IP地址，domain-域名，template-参数模板，instance-实例，tag-标签
        # @type SourceType: String
        # @param TargetContent: 目标地址内容，格式同 SourceContent
        # @type TargetContent: String
        # @param TargetType: 目标地址类型：ip-IP地址，domain-域名，template-参数模板，instance-实例，tag-标签
        # @type TargetType: String
        # @param Port: 端口，支持单端口、端口范围和逗号分隔的多端口，如：80、1-65535、80,443,8080
        # @type Port: String
        # @param Protocol: 协议类型：TCP、UDP、ICMP、ANY
        # @type Protocol: String
        # @param RuleAction: 规则动作：accept-放行，drop-阻断，log-观察
        # @type RuleAction: String
        # @param Description: 规则描述，长度0-256字符
        # @type Description: String
        # @param Scope: 生效范围：serial，串行；side，旁路；all，全局
        # @type Scope: String
        # @param BelongMemberId: 规则归属的成员账号ID（多账号场景下使用）。当 SourceType 或 TargetType 为 instance 或 tag 时，此参数必填，用于指定实例/标签所属的成员账号
        # @type BelongMemberId: String
        # @param ParamTemplateId: 参数模板
        # @type ParamTemplateId: String

        attr_accessor :RuleId, :OrderIndex, :Direction, :SourceContent, :SourceType, :TargetContent, :TargetType, :Port, :Protocol, :RuleAction, :Description, :Scope, :BelongMemberId, :ParamTemplateId

        def initialize(ruleid=nil, orderindex=nil, direction=nil, sourcecontent=nil, sourcetype=nil, targetcontent=nil, targettype=nil, port=nil, protocol=nil, ruleaction=nil, description=nil, scope=nil, belongmemberid=nil, paramtemplateid=nil)
          @RuleId = ruleid
          @OrderIndex = orderindex
          @Direction = direction
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @TargetContent = targetcontent
          @TargetType = targettype
          @Port = port
          @Protocol = protocol
          @RuleAction = ruleaction
          @Description = description
          @Scope = scope
          @BelongMemberId = belongmemberid
          @ParamTemplateId = paramtemplateid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @OrderIndex = params['OrderIndex']
          @Direction = params['Direction']
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @TargetContent = params['TargetContent']
          @TargetType = params['TargetType']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @Scope = params['Scope']
          @BelongMemberId = params['BelongMemberId']
          @ParamTemplateId = params['ParamTemplateId']
        end
      end

      # 互联网边界规则响应结构
      class EdgeAclRuleResp < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Sequence: 规则执行顺序
        # @type Sequence: Integer
        # @param Direction: 规则方向：0-出站，1-入站
        # @type Direction: Integer
        # @param SourceContent: 源地址内容
        # @type SourceContent: String
        # @param SourceType: 源地址类型
        # @type SourceType: String
        # @param SourceName: 源地址名称（当类型为模板/实例/标签时返回对应名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceName: String
        # @param TargetContent: 目标地址内容
        # @type TargetContent: String
        # @param TargetType: 目标地址类型
        # @type TargetType: String
        # @param TargetName: 目标地址名称（当类型为模板/实例/标签时返回对应名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetName: String
        # @param Port: 目标端口
        # @type Port: String
        # @param Protocol: 协议类型
        # @type Protocol: String
        # @param RuleAction: 规则动作：accept-放行，drop-阻断，log-观察
        # @type RuleAction: String
        # @param Description: 规则描述
        # @type Description: String
        # @param Scope: 规则生效范围
        # @type Scope: String
        # @param CountryName: 地域名称1（正则匹配时使用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountryName: String
        # @param CityName: 地域名称2（正则匹配时使用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityName: String
        # @param ParamTemplateId: 参数模板ID（当类型为模板时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateId: String
        # @param ParamTemplateName: 参数模板名称（当类型为模板时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateName: String
        # @param Invalid: 规则是否失效：0-有效，1-失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Invalid: Integer
        # @param BelongMember: 规则归属的成员账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongMember: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`
        # @param CountryCode: 国家Id
        # @type CountryCode: Integer
        # @param CityCode: 城市Id
        # @type CityCode: Integer
        # @param IsRegion: 0为正常规则,1为地域规则
        # @type IsRegion: Integer
        # @param CloudCode: 云厂商code
        # @type CloudCode: String
        # @param IsCloud: 0为正常规则,1为云厂商规则
        # @type IsCloud: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param CountryKey: 地区简称
        # @type CountryKey: String
        # @param CityKey: 省份、城市简称
        # @type CityKey: String
        # @param CreateTime: 规则创建时间
        # @type CreateTime: String
        # @param UpdateTime: 规则最近更新时间
        # @type UpdateTime: String
        # @param DnsParseCnt: 域名数
        # @type DnsParseCnt: Integer

        attr_accessor :RuleId, :Sequence, :Direction, :SourceContent, :SourceType, :SourceName, :TargetContent, :TargetType, :TargetName, :Port, :Protocol, :RuleAction, :Description, :Scope, :CountryName, :CityName, :ParamTemplateId, :ParamTemplateName, :Invalid, :BelongMember, :CountryCode, :CityCode, :IsRegion, :CloudCode, :IsCloud, :InstanceName, :CountryKey, :CityKey, :CreateTime, :UpdateTime, :DnsParseCnt

        def initialize(ruleid=nil, sequence=nil, direction=nil, sourcecontent=nil, sourcetype=nil, sourcename=nil, targetcontent=nil, targettype=nil, targetname=nil, port=nil, protocol=nil, ruleaction=nil, description=nil, scope=nil, countryname=nil, cityname=nil, paramtemplateid=nil, paramtemplatename=nil, invalid=nil, belongmember=nil, countrycode=nil, citycode=nil, isregion=nil, cloudcode=nil, iscloud=nil, instancename=nil, countrykey=nil, citykey=nil, createtime=nil, updatetime=nil, dnsparsecnt=nil)
          @RuleId = ruleid
          @Sequence = sequence
          @Direction = direction
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @SourceName = sourcename
          @TargetContent = targetcontent
          @TargetType = targettype
          @TargetName = targetname
          @Port = port
          @Protocol = protocol
          @RuleAction = ruleaction
          @Description = description
          @Scope = scope
          @CountryName = countryname
          @CityName = cityname
          @ParamTemplateId = paramtemplateid
          @ParamTemplateName = paramtemplatename
          @Invalid = invalid
          @BelongMember = belongmember
          @CountryCode = countrycode
          @CityCode = citycode
          @IsRegion = isregion
          @CloudCode = cloudcode
          @IsCloud = iscloud
          @InstanceName = instancename
          @CountryKey = countrykey
          @CityKey = citykey
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DnsParseCnt = dnsparsecnt
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Sequence = params['Sequence']
          @Direction = params['Direction']
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @SourceName = params['SourceName']
          @TargetContent = params['TargetContent']
          @TargetType = params['TargetType']
          @TargetName = params['TargetName']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @Scope = params['Scope']
          @CountryName = params['CountryName']
          @CityName = params['CityName']
          @ParamTemplateId = params['ParamTemplateId']
          @ParamTemplateName = params['ParamTemplateName']
          @Invalid = params['Invalid']
          unless params['BelongMember'].nil?
            @BelongMember = MemberInfo.new
            @BelongMember.deserialize(params['BelongMember'])
          end
          @CountryCode = params['CountryCode']
          @CityCode = params['CityCode']
          @IsRegion = params['IsRegion']
          @CloudCode = params['CloudCode']
          @IsCloud = params['IsCloud']
          @InstanceName = params['InstanceName']
          @CountryKey = params['CountryKey']
          @CityKey = params['CityKey']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DnsParseCnt = params['DnsParseCnt']
        end
      end

      # IgnorePolicyRisk请求参数结构体
      class IgnorePolicyRiskRequest < TencentCloud::Common::AbstractModel
        # @param RiskId: 策略问题ID
        # @type RiskId: String
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :RiskId, :MemberId

        def initialize(riskid=nil, memberid=nil)
          @RiskId = riskid
          @MemberId = memberid
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @MemberId = params['MemberId']
        end
      end

      # IgnorePolicyRisk返回参数结构体
      class IgnorePolicyRiskResponse < TencentCloud::Common::AbstractModel
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

      # 成员信息
      class MemberInfo < TencentCloud::Common::AbstractModel
        # @param AppId: 成员AppId
        # @type AppId: String
        # @param Uin: 成员Uin
        # @type Uin: String
        # @param Nickname: 成员昵称
        # @type Nickname: String
        # @param MemberId: 成员Id
        # @type MemberId: String

        attr_accessor :AppId, :Uin, :Nickname, :MemberId

        def initialize(appid=nil, uin=nil, nickname=nil, memberid=nil)
          @AppId = appid
          @Uin = uin
          @Nickname = nickname
          @MemberId = memberid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @MemberId = params['MemberId']
        end
      end

      # ModifyEdgeAclRule请求参数结构体
      class ModifyEdgeAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rule: 要修改的规则，必须包含RuleId
        # @type Rule: :class:`Tencentcloud::Fwm.v20250611.models.EdgeAclRuleInfo`

        attr_accessor :GroupId, :Rule

        def initialize(groupid=nil, rule=nil)
          @GroupId = groupid
          @Rule = rule
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rule'].nil?
            @Rule = EdgeAclRuleInfo.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyEdgeAclRule返回参数结构体
      class ModifyEdgeAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeAclRuleSequence请求参数结构体
      class ModifyEdgeAclRuleSequenceRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 出入站方向 0=出向，1=入向
        # @type Direction: Integer
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Sequences: 规则序号调整列表，必须包含所有受影响的规则
        # @type Sequences: Array

        attr_accessor :Direction, :GroupId, :Sequences

        def initialize(direction=nil, groupid=nil, sequences=nil)
          @Direction = direction
          @GroupId = groupid
          @Sequences = sequences
        end

        def deserialize(params)
          @Direction = params['Direction']
          @GroupId = params['GroupId']
          unless params['Sequences'].nil?
            @Sequences = []
            params['Sequences'].each do |i|
              sequenceindex_tmp = SequenceIndex.new
              sequenceindex_tmp.deserialize(i)
              @Sequences << sequenceindex_tmp
            end
          end
        end
      end

      # ModifyEdgeAclRuleSequence返回参数结构体
      class ModifyEdgeAclRuleSequenceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatAclRule请求参数结构体
      class ModifyNatAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Fwm.v20250611.models.NatAclRule`

        attr_accessor :GroupId, :Rule

        def initialize(groupid=nil, rule=nil)
          @GroupId = groupid
          @Rule = rule
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rule'].nil?
            @Rule = NatAclRule.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyNatAclRule返回参数结构体
      class ModifyNatAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatAclRuleSequence请求参数结构体
      class ModifyNatAclRuleSequenceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Sequences: 序号调整列表
        # @type Sequences: Array
        # @param Direction: 规则方向：1-入站规则，0-出站规则
        # @type Direction: Integer

        attr_accessor :GroupId, :Sequences, :Direction

        def initialize(groupid=nil, sequences=nil, direction=nil)
          @GroupId = groupid
          @Sequences = sequences
          @Direction = direction
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Sequences'].nil?
            @Sequences = []
            params['Sequences'].each do |i|
              sequenceindex_tmp = SequenceIndex.new
              sequenceindex_tmp.deserialize(i)
              @Sequences << sequenceindex_tmp
            end
          end
          @Direction = params['Direction']
        end
      end

      # ModifyNatAclRuleSequence返回参数结构体
      class ModifyNatAclRuleSequenceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRuleGroup请求参数结构体
      class ModifyRuleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组名称
        # @type GroupId: String
        # @param GroupName: 规则组名称
        # @type GroupName: String

        attr_accessor :GroupId, :GroupName

        def initialize(groupid=nil, groupname=nil)
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # ModifyRuleGroup返回参数结构体
      class ModifyRuleGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityGroupRule请求参数结构体
      class ModifySecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Fwm.v20250611.models.SecurityGroupRule`

        attr_accessor :GroupId, :Rule

        def initialize(groupid=nil, rule=nil)
          @GroupId = groupid
          @Rule = rule
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rule'].nil?
            @Rule = SecurityGroupRule.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifySecurityGroupRule返回参数结构体
      class ModifySecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyStrategy请求参数结构体
      class ModifyStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略Id
        # @type StrategyId: String
        # @param ReceiveAccount: 下发规则接收账号
        # @type ReceiveAccount: Array
        # @param Sequence: 优先级
        # @type Sequence: Integer
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param ReceiveGroup: 下发规则接收账号组
        # @type ReceiveGroup: Array

        attr_accessor :StrategyId, :ReceiveAccount, :Sequence, :GroupId, :ReceiveGroup

        def initialize(strategyid=nil, receiveaccount=nil, sequence=nil, groupid=nil, receivegroup=nil)
          @StrategyId = strategyid
          @ReceiveAccount = receiveaccount
          @Sequence = sequence
          @GroupId = groupid
          @ReceiveGroup = receivegroup
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @ReceiveAccount = params['ReceiveAccount']
          @Sequence = params['Sequence']
          @GroupId = params['GroupId']
          @ReceiveGroup = params['ReceiveGroup']
        end
      end

      # ModifyStrategy返回参数结构体
      class ModifyStrategyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyStrategySequence请求参数结构体
      class ModifyStrategySequenceRequest < TencentCloud::Common::AbstractModel
        # @param Sequences: 优先级列表
        # @type Sequences: Array
        # @param ExecArea: 执行区域
        # @type ExecArea: String
        # @param Product: 产品类型
        # @type Product: String

        attr_accessor :Sequences, :ExecArea, :Product

        def initialize(sequences=nil, execarea=nil, product=nil)
          @Sequences = sequences
          @ExecArea = execarea
          @Product = product
        end

        def deserialize(params)
          unless params['Sequences'].nil?
            @Sequences = []
            params['Sequences'].each do |i|
              sequenceindex_tmp = SequenceIndex.new
              sequenceindex_tmp.deserialize(i)
              @Sequences << sequenceindex_tmp
            end
          end
          @ExecArea = params['ExecArea']
          @Product = params['Product']
        end
      end

      # ModifyStrategySequence返回参数结构体
      class ModifyStrategySequenceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcAclRule请求参数结构体
      class ModifyVpcAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Fwm.v20250611.models.VpcAclRule`

        attr_accessor :GroupId, :Rule

        def initialize(groupid=nil, rule=nil)
          @GroupId = groupid
          @Rule = rule
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Rule'].nil?
            @Rule = VpcAclRule.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyVpcAclRule返回参数结构体
      class ModifyVpcAclRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcAclRuleSequence请求参数结构体
      class ModifyVpcAclRuleSequenceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组ID
        # @type GroupId: String
        # @param Sequences: 序号调整列表
        # @type Sequences: Array

        attr_accessor :GroupId, :Sequences

        def initialize(groupid=nil, sequences=nil)
          @GroupId = groupid
          @Sequences = sequences
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Sequences'].nil?
            @Sequences = []
            params['Sequences'].each do |i|
              sequenceindex_tmp = SequenceIndex.new
              sequenceindex_tmp.deserialize(i)
              @Sequences << sequenceindex_tmp
            end
          end
        end
      end

      # ModifyVpcAclRuleSequence返回参数结构体
      class ModifyVpcAclRuleSequenceResponse < TencentCloud::Common::AbstractModel
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

      # NAT边界规则
      class NatAclRule < TencentCloud::Common::AbstractModel
        # @param SourceContent: <p>源地址内容</p>
        # @type SourceContent: String
        # @param SourceType: <p>源类型：ip/url/template/instance/tag</p>
        # @type SourceType: String
        # @param TargetContent: <p>目的地址内容</p>
        # @type TargetContent: String
        # @param TargetType: <p>目的类型：ip/url/template/instance/tag</p>
        # @type TargetType: String
        # @param Protocol: <p>协议：TCP/UDP/ICMP/ANY/HTTP/HTTPS/DNS/FTP等</p>
        # @type Protocol: String
        # @param RuleAction: <p>动作：accept/drop/log</p>
        # @type RuleAction: String
        # @param OrderIndex: <p>优先级（从1开始）</p>
        # @type OrderIndex: Integer
        # @param Scope: <p>规则生效范围：ALL-全局生效，ap-xxx-地域生效，cfwnat-xxx-NAT防火墙实例生效</p>
        # @type Scope: String
        # @param Direction: <p>规则方向：1-入站规则，0-出站规则</p>
        # @type Direction: Integer
        # @param RuleId: <p>规则ID（修改时必填）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param Port: <p>端口（ICMP协议时为空）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Description: <p>规则描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ParamTemplateId: <p>端口模板ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateId: String
        # @param BelongMemberId: <p>规则归属的成员账号ID(当Scope为cfwnat-xxx或SourceType/DestType为instance/tag时必填)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongMemberId: String

        attr_accessor :SourceContent, :SourceType, :TargetContent, :TargetType, :Protocol, :RuleAction, :OrderIndex, :Scope, :Direction, :RuleId, :Port, :Description, :ParamTemplateId, :BelongMemberId

        def initialize(sourcecontent=nil, sourcetype=nil, targetcontent=nil, targettype=nil, protocol=nil, ruleaction=nil, orderindex=nil, scope=nil, direction=nil, ruleid=nil, port=nil, description=nil, paramtemplateid=nil, belongmemberid=nil)
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @TargetContent = targetcontent
          @TargetType = targettype
          @Protocol = protocol
          @RuleAction = ruleaction
          @OrderIndex = orderindex
          @Scope = scope
          @Direction = direction
          @RuleId = ruleid
          @Port = port
          @Description = description
          @ParamTemplateId = paramtemplateid
          @BelongMemberId = belongmemberid
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @TargetContent = params['TargetContent']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @OrderIndex = params['OrderIndex']
          @Scope = params['Scope']
          @Direction = params['Direction']
          @RuleId = params['RuleId']
          @Port = params['Port']
          @Description = params['Description']
          @ParamTemplateId = params['ParamTemplateId']
          @BelongMemberId = params['BelongMemberId']
        end
      end

      # NAT边界规则响应结构
      class NatAclRuleResp < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Sequence: 优先级
        # @type Sequence: Integer
        # @param Direction: 规则方向：0-出向，1-入向
        # @type Direction: Integer
        # @param SourceContent: 源地址内容
        # @type SourceContent: String
        # @param SourceType: 源类型
        # @type SourceType: String
        # @param SourceName: 源资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceName: String
        # @param TargetContent: 目的地址内容
        # @type TargetContent: String
        # @param TargetType: 目的类型
        # @type TargetType: String
        # @param TargetName: 目的资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetName: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param RuleAction: 动作：accept/drop/log
        # @type RuleAction: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Scope: 规则生效范围
        # @type Scope: String
        # @param ScopeDesc: 规则生效范围描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScopeDesc: String
        # @param FwInsId: 防火墙实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FwInsId: String
        # @param CountryName: 国家名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountryName: String
        # @param CityName: 城市名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityName: String
        # @param CountryCode: 国家代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountryCode: Integer
        # @param CityCode: 城市代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityCode: Integer
        # @param CountryKey: 国家键值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountryKey: String
        # @param CityKey: 城市键值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityKey: String
        # @param IsRegion: 是否地域规则：0-否，1-是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRegion: Integer
        # @param CloudCode: 云厂商代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudCode: String
        # @param IsCloud: 是否云厂商规则：0-否，1-是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCloud: Integer
        # @param ParamTemplateId: 端口模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateId: String
        # @param ParamTemplateName: 端口模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateName: String
        # @param Invalid: 规则是否失效：0-有效，1-失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Invalid: Integer
        # @param BelongMember: 规则归属的成员账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongMember: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DnsParseCnt: 域名数
        # @type DnsParseCnt: Integer

        attr_accessor :RuleId, :Sequence, :Direction, :SourceContent, :SourceType, :SourceName, :TargetContent, :TargetType, :TargetName, :Port, :Protocol, :RuleAction, :Description, :Scope, :ScopeDesc, :FwInsId, :CountryName, :CityName, :CountryCode, :CityCode, :CountryKey, :CityKey, :IsRegion, :CloudCode, :IsCloud, :ParamTemplateId, :ParamTemplateName, :Invalid, :BelongMember, :CreateTime, :UpdateTime, :DnsParseCnt

        def initialize(ruleid=nil, sequence=nil, direction=nil, sourcecontent=nil, sourcetype=nil, sourcename=nil, targetcontent=nil, targettype=nil, targetname=nil, port=nil, protocol=nil, ruleaction=nil, description=nil, scope=nil, scopedesc=nil, fwinsid=nil, countryname=nil, cityname=nil, countrycode=nil, citycode=nil, countrykey=nil, citykey=nil, isregion=nil, cloudcode=nil, iscloud=nil, paramtemplateid=nil, paramtemplatename=nil, invalid=nil, belongmember=nil, createtime=nil, updatetime=nil, dnsparsecnt=nil)
          @RuleId = ruleid
          @Sequence = sequence
          @Direction = direction
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @SourceName = sourcename
          @TargetContent = targetcontent
          @TargetType = targettype
          @TargetName = targetname
          @Port = port
          @Protocol = protocol
          @RuleAction = ruleaction
          @Description = description
          @Scope = scope
          @ScopeDesc = scopedesc
          @FwInsId = fwinsid
          @CountryName = countryname
          @CityName = cityname
          @CountryCode = countrycode
          @CityCode = citycode
          @CountryKey = countrykey
          @CityKey = citykey
          @IsRegion = isregion
          @CloudCode = cloudcode
          @IsCloud = iscloud
          @ParamTemplateId = paramtemplateid
          @ParamTemplateName = paramtemplatename
          @Invalid = invalid
          @BelongMember = belongmember
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DnsParseCnt = dnsparsecnt
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Sequence = params['Sequence']
          @Direction = params['Direction']
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @SourceName = params['SourceName']
          @TargetContent = params['TargetContent']
          @TargetType = params['TargetType']
          @TargetName = params['TargetName']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @Scope = params['Scope']
          @ScopeDesc = params['ScopeDesc']
          @FwInsId = params['FwInsId']
          @CountryName = params['CountryName']
          @CityName = params['CityName']
          @CountryCode = params['CountryCode']
          @CityCode = params['CityCode']
          @CountryKey = params['CountryKey']
          @CityKey = params['CityKey']
          @IsRegion = params['IsRegion']
          @CloudCode = params['CloudCode']
          @IsCloud = params['IsCloud']
          @ParamTemplateId = params['ParamTemplateId']
          @ParamTemplateName = params['ParamTemplateName']
          @Invalid = params['Invalid']
          unless params['BelongMember'].nil?
            @BelongMember = MemberInfo.new
            @BelongMember.deserialize(params['BelongMember'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DnsParseCnt = params['DnsParseCnt']
        end
      end

      # 集团成员信息
      class OrganMemberItem < TencentCloud::Common::AbstractModel
        # @param MemberId: 成员 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param AppId: 成员账号 AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param Uin: 账号Uin
        # @type Uin: String
        # @param Nickname: 账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nickname: String
        # @param SubAccountCount: 子账号数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountCount: Integer
        # @param NodeName: 所属组织架构节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Role: 成员身份：admin-管理员，delegatedAdmin-委派管理员，member-普通成员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param RoleDisplay: 成员身份显示名称（前端展示用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleDisplay: String
        # @param AccountGroup: 所属账户组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroup: :class:`Tencentcloud::Fwm.v20250611.models.AccountGroupInfo`
        # @param CfwManaged: 云防火墙纳管状态：0-未纳管，1-已纳管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfwManaged: Integer
        # @param CfwShareRole: 云防火墙共享角色：sharer-共享者，user-使用者，none-未设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfwShareRole: String
        # @param CfwShareRoleDisplay: 云防火墙共享角色显示名称（前端展示用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfwShareRoleDisplay: String
        # @param CfwSharerAppId: 云防火墙共享者 AppId，成员角色为使用者时有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfwSharerAppId: String
        # @param CfwInstanceId: 云防火墙计费实例 ID，非空表示已购买云防火墙
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfwInstanceId: String
        # @param PolicyAnalysisEnabled: 策略分析权限：0-关闭，1-开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyAnalysisEnabled: Integer
        # @param MemberCreateTime: 成员加入集团时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberCreateTime: String
        # @param JoinType: 账号加入方式
        # @type JoinType: String

        attr_accessor :MemberId, :AppId, :Uin, :Nickname, :SubAccountCount, :NodeName, :Role, :RoleDisplay, :AccountGroup, :CfwManaged, :CfwShareRole, :CfwShareRoleDisplay, :CfwSharerAppId, :CfwInstanceId, :PolicyAnalysisEnabled, :MemberCreateTime, :JoinType

        def initialize(memberid=nil, appid=nil, uin=nil, nickname=nil, subaccountcount=nil, nodename=nil, role=nil, roledisplay=nil, accountgroup=nil, cfwmanaged=nil, cfwsharerole=nil, cfwshareroledisplay=nil, cfwsharerappid=nil, cfwinstanceid=nil, policyanalysisenabled=nil, membercreatetime=nil, jointype=nil)
          @MemberId = memberid
          @AppId = appid
          @Uin = uin
          @Nickname = nickname
          @SubAccountCount = subaccountcount
          @NodeName = nodename
          @Role = role
          @RoleDisplay = roledisplay
          @AccountGroup = accountgroup
          @CfwManaged = cfwmanaged
          @CfwShareRole = cfwsharerole
          @CfwShareRoleDisplay = cfwshareroledisplay
          @CfwSharerAppId = cfwsharerappid
          @CfwInstanceId = cfwinstanceid
          @PolicyAnalysisEnabled = policyanalysisenabled
          @MemberCreateTime = membercreatetime
          @JoinType = jointype
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @SubAccountCount = params['SubAccountCount']
          @NodeName = params['NodeName']
          @Role = params['Role']
          @RoleDisplay = params['RoleDisplay']
          unless params['AccountGroup'].nil?
            @AccountGroup = AccountGroupInfo.new
            @AccountGroup.deserialize(params['AccountGroup'])
          end
          @CfwManaged = params['CfwManaged']
          @CfwShareRole = params['CfwShareRole']
          @CfwShareRoleDisplay = params['CfwShareRoleDisplay']
          @CfwSharerAppId = params['CfwSharerAppId']
          @CfwInstanceId = params['CfwInstanceId']
          @PolicyAnalysisEnabled = params['PolicyAnalysisEnabled']
          @MemberCreateTime = params['MemberCreateTime']
          @JoinType = params['JoinType']
        end
      end

      # 集团概览
      class OrganSummary < TencentCloud::Common::AbstractModel
        # @param GroupName: 集团名称
        # @type GroupName: String
        # @param AdminInfo: 管理员账号信息
        # @type AdminInfo: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`
        # @param AdminCount: 管理员/委派管理员数量
        # @type AdminCount: Integer
        # @param JoinedMemberCount: 已接入成员数
        # @type JoinedMemberCount: Integer
        # @param MemberLimit: 接入成员上限（-1表示无上限）
        # @type MemberLimit: Integer
        # @param MemberLimitDisplay: 接入成员上限显示
        # @type MemberLimitDisplay: String
        # @param CfwSharerCount: 规格共享者数量
        # @type CfwSharerCount: Integer
        # @param CfwUserCount: 规格使用者数量
        # @type CfwUserCount: Integer
        # @param Departments: 部门名称列表
        # @type Departments: Array
        # @param ManagedMemberCount: 纳管账号数
        # @type ManagedMemberCount: Integer
        # @param ManagedProductCount: 纳管产品数
        # @type ManagedProductCount: Integer
        # @param CfwManageCount: 纳管账号数
        # @type CfwManageCount: Integer

        attr_accessor :GroupName, :AdminInfo, :AdminCount, :JoinedMemberCount, :MemberLimit, :MemberLimitDisplay, :CfwSharerCount, :CfwUserCount, :Departments, :ManagedMemberCount, :ManagedProductCount, :CfwManageCount

        def initialize(groupname=nil, admininfo=nil, admincount=nil, joinedmembercount=nil, memberlimit=nil, memberlimitdisplay=nil, cfwsharercount=nil, cfwusercount=nil, departments=nil, managedmembercount=nil, managedproductcount=nil, cfwmanagecount=nil)
          @GroupName = groupname
          @AdminInfo = admininfo
          @AdminCount = admincount
          @JoinedMemberCount = joinedmembercount
          @MemberLimit = memberlimit
          @MemberLimitDisplay = memberlimitdisplay
          @CfwSharerCount = cfwsharercount
          @CfwUserCount = cfwusercount
          @Departments = departments
          @ManagedMemberCount = managedmembercount
          @ManagedProductCount = managedproductcount
          @CfwManageCount = cfwmanagecount
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          unless params['AdminInfo'].nil?
            @AdminInfo = MemberInfo.new
            @AdminInfo.deserialize(params['AdminInfo'])
          end
          @AdminCount = params['AdminCount']
          @JoinedMemberCount = params['JoinedMemberCount']
          @MemberLimit = params['MemberLimit']
          @MemberLimitDisplay = params['MemberLimitDisplay']
          @CfwSharerCount = params['CfwSharerCount']
          @CfwUserCount = params['CfwUserCount']
          @Departments = params['Departments']
          @ManagedMemberCount = params['ManagedMemberCount']
          @ManagedProductCount = params['ManagedProductCount']
          @CfwManageCount = params['CfwManageCount']
        end
      end

      # 策略风险
      class PolicyRisk < TencentCloud::Common::AbstractModel
        # @param Id: 问题对应的唯一uuid
        # @type Id: String
        # @param RiskCategory: 风险大类
        # @type RiskCategory: String
        # @param RiskSubCategory: 风险子类
        # @type RiskSubCategory: String
        # @param RuleType: 规则分类
        # @type RuleType: String
        # @param RiskLevel: 风险等级，0：低风险
        # 1：中风险
        # 2：高风险
        # @type RiskLevel: Integer
        # @param Product: 安全组
        # @type Product: String
        # @param SgRuleId: 风险包含的企业安全组规则ID
        # @type SgRuleId: Array
        # @param RuleCount: 风险包含安全组ID内的问题规则数
        # @type RuleCount: Integer
        # @param SgId: 风险包含的安全组ID
        # @type SgId: Array
        # @param RiskFeature: 风险特征
        # @type RiskFeature: String
        # @param Suggestion: 处置建议
        # @type Suggestion: String
        # @param Status: 处置状态，0：未处理，1：已处理，2：忽略
        # @type Status: Integer
        # @param FoundTime: 发现时间
        # @type FoundTime: String
        # @param DisposalTime: 处置时间
        # @type DisposalTime: String
        # @param Region: 安全组地域
        # @type Region: String
        # @param Direction: Ingress入站，Egress出站
        # @type Direction: String
        # @param RiskReason: 风险原因
        # @type RiskReason: String

        attr_accessor :Id, :RiskCategory, :RiskSubCategory, :RuleType, :RiskLevel, :Product, :SgRuleId, :RuleCount, :SgId, :RiskFeature, :Suggestion, :Status, :FoundTime, :DisposalTime, :Region, :Direction, :RiskReason

        def initialize(id=nil, riskcategory=nil, risksubcategory=nil, ruletype=nil, risklevel=nil, product=nil, sgruleid=nil, rulecount=nil, sgid=nil, riskfeature=nil, suggestion=nil, status=nil, foundtime=nil, disposaltime=nil, region=nil, direction=nil, riskreason=nil)
          @Id = id
          @RiskCategory = riskcategory
          @RiskSubCategory = risksubcategory
          @RuleType = ruletype
          @RiskLevel = risklevel
          @Product = product
          @SgRuleId = sgruleid
          @RuleCount = rulecount
          @SgId = sgid
          @RiskFeature = riskfeature
          @Suggestion = suggestion
          @Status = status
          @FoundTime = foundtime
          @DisposalTime = disposaltime
          @Region = region
          @Direction = direction
          @RiskReason = riskreason
        end

        def deserialize(params)
          @Id = params['Id']
          @RiskCategory = params['RiskCategory']
          @RiskSubCategory = params['RiskSubCategory']
          @RuleType = params['RuleType']
          @RiskLevel = params['RiskLevel']
          @Product = params['Product']
          @SgRuleId = params['SgRuleId']
          @RuleCount = params['RuleCount']
          @SgId = params['SgId']
          @RiskFeature = params['RiskFeature']
          @Suggestion = params['Suggestion']
          @Status = params['Status']
          @FoundTime = params['FoundTime']
          @DisposalTime = params['DisposalTime']
          @Region = params['Region']
          @Direction = params['Direction']
          @RiskReason = params['RiskReason']
        end
      end

      # 账号信息
      class ReceiveAccount < TencentCloud::Common::AbstractModel
        # @param Uin: 租户 uin
        # @type Uin: String
        # @param Nickname: 租户名称
        # @type Nickname: String
        # @param ReceiverType: 0=账号uin，1=账号组
        # @type ReceiverType: Integer
        # @param Members: 只有ReceiverType 是 1 时 才返回账号列表
        # @type Members: Array

        attr_accessor :Uin, :Nickname, :ReceiverType, :Members

        def initialize(uin=nil, nickname=nil, receivertype=nil, members=nil)
          @Uin = uin
          @Nickname = nickname
          @ReceiverType = receivertype
          @Members = members
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @ReceiverType = params['ReceiverType']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              memberinfo_tmp = MemberInfo.new
              memberinfo_tmp.deserialize(i)
              @Members << memberinfo_tmp
            end
          end
        end
      end

      # 风险分类统计项
      class RiskCategoryItem < TencentCloud::Common::AbstractModel
        # @param CategoryId: 风险大类ID
        # @type CategoryId: String
        # @param CategoryName: 风险大类名称
        # @type CategoryName: String
        # @param SubcategoryId: 风险子类ID
        # @type SubcategoryId: String
        # @param SubcategoryName: 风险子类名称
        # @type SubcategoryName: String
        # @param RiskLevel: 风险等级(0-低危,1-中危,2-高危)
        # @type RiskLevel: Integer
        # @param RiskLevelName: 风险等级名称(低/中/高)
        # @type RiskLevelName: String
        # @param Description: 风险描述
        # @type Description: String
        # @param Suggestion: 处置建议
        # @type Suggestion: String
        # @param RuleCount: 该类风险的规则数量
        # @type RuleCount: Integer
        # @param TreatedCount: 已处置数量
        # @type TreatedCount: Integer
        # @param IgnoredCount: 已忽略数量
        # @type IgnoredCount: Integer
        # @param UntreatedCount: 待整改数量
        # @type UntreatedCount: Integer
        # @param DisposalRate: 整改率(百分比字符串)
        # @type DisposalRate: Integer
        # @param HasRisk: 是否有未处理风险
        # -1: 未体检
        # 0: 无风险
        # 1: 有风险
        # @type HasRisk: Integer
        # @param RemediationStatus: 整改状态：
        # Completed： 已整改完成（整改率 100%）
        # Incomplete： 未整改完成（整改率 < 100%）
        # -：未体检/无数据
        # @type RemediationStatus: String

        attr_accessor :CategoryId, :CategoryName, :SubcategoryId, :SubcategoryName, :RiskLevel, :RiskLevelName, :Description, :Suggestion, :RuleCount, :TreatedCount, :IgnoredCount, :UntreatedCount, :DisposalRate, :HasRisk, :RemediationStatus

        def initialize(categoryid=nil, categoryname=nil, subcategoryid=nil, subcategoryname=nil, risklevel=nil, risklevelname=nil, description=nil, suggestion=nil, rulecount=nil, treatedcount=nil, ignoredcount=nil, untreatedcount=nil, disposalrate=nil, hasrisk=nil, remediationstatus=nil)
          @CategoryId = categoryid
          @CategoryName = categoryname
          @SubcategoryId = subcategoryid
          @SubcategoryName = subcategoryname
          @RiskLevel = risklevel
          @RiskLevelName = risklevelname
          @Description = description
          @Suggestion = suggestion
          @RuleCount = rulecount
          @TreatedCount = treatedcount
          @IgnoredCount = ignoredcount
          @UntreatedCount = untreatedcount
          @DisposalRate = disposalrate
          @HasRisk = hasrisk
          @RemediationStatus = remediationstatus
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          @SubcategoryId = params['SubcategoryId']
          @SubcategoryName = params['SubcategoryName']
          @RiskLevel = params['RiskLevel']
          @RiskLevelName = params['RiskLevelName']
          @Description = params['Description']
          @Suggestion = params['Suggestion']
          @RuleCount = params['RuleCount']
          @TreatedCount = params['TreatedCount']
          @IgnoredCount = params['IgnoredCount']
          @UntreatedCount = params['UntreatedCount']
          @DisposalRate = params['DisposalRate']
          @HasRisk = params['HasRisk']
          @RemediationStatus = params['RemediationStatus']
        end
      end

      # 企业安全组规则列表信息
      class SecGroupRuleResp < TencentCloud::Common::AbstractModel
        # @param OrderIndex: <p>排序</p>
        # @type OrderIndex: Integer
        # @param RuleId: <p>主键id</p>
        # @type RuleId: String
        # @param IpVersion: <p>ip类型</p>
        # @type IpVersion: String
        # @param SourceId: <p>源规则内容</p>
        # @type SourceId: String
        # @param SourceType: <p>源规则类型<br>取值范围 0/1/2/3/4/5/6/7/8/9/100<br>0表示ip(net),<br>1表示VPC实例(instance)<br>2表示子网实例(instance)<br>3表示CVM实例(instance)<br>4表示CLB实例(instance)<br>5表示ENI实例(instance)<br>6表示数据库实例(instance)<br>7表示模板(template)<br>8表示标签(tag)<br>9表示地域(region)<br>100表示资产分组(resourcegroup)</p>
        # @type SourceType: Integer
        # @param TargetId: <p>目的规则内容</p>
        # @type TargetId: String
        # @param TargetType: <p>目的规则类型<br>取值范围 0/1/2/3/4/5/6/7/8/9/100<br>0表示ip(net),<br>1表示VPC实例(instance)<br>2表示子网实例(instance)<br>3表示CVM实例(instance)<br>4表示CLB实例(instance)<br>5表示ENI实例(instance)<br>6表示数据库实例(instance)<br>7表示模板(template)<br>8表示标签(tag)<br>9表示地域(region)<br>100表示资产分组(resourcegroup)</p>
        # @type TargetType: Integer
        # @param Protocol: <p>协议名称<br>取值范围:TCP/ANY/ICMP/UDP<br>ANY:表示所有</p>
        # @type Protocol: String
        # @param Port: <p>端口</p>
        # @type Port: String
        # @param Strategy: <p>策略</p>
        # @type Strategy: Integer
        # @param Detail: <p>描述</p>
        # @type Detail: String
        # @param Region: <p>地域</p>
        # @type Region: String
        # @param ServiceTemplateId: <p>服务模板id</p>
        # @type ServiceTemplateId: String
        # @param SouInstanceName: <p>源资产名称</p>
        # @type SouInstanceName: String
        # @param SouPublicIp: <p>源资产公网ip</p>
        # @type SouPublicIp: String
        # @param SouPrivateIp: <p>源资产内网ip</p>
        # @type SouPrivateIp: String
        # @param SouCidr: <p>源资产网段信息</p>
        # @type SouCidr: String
        # @param SouParameterName: <p>源模板名称</p>
        # @type SouParameterName: String
        # @param InstanceName: <p>目的资产名称</p>
        # @type InstanceName: String
        # @param PublicIp: <p>目的资产公网ip</p>
        # @type PublicIp: String
        # @param PrivateIp: <p>目的资产内网ip</p>
        # @type PrivateIp: String
        # @param Cidr: <p>目的资产网段信息</p>
        # @type Cidr: String
        # @param ParameterName: <p>目的模板名称</p>
        # @type ParameterName: String
        # @param ProtocolPortName: <p>端口模板名称</p>
        # @type ProtocolPortName: String
        # @param Id: <p>规则id  等同RuleUuid</p>
        # @type Id: Integer
        # @param DnsParseCount: <p>域名解析的IP统计</p>
        # @type DnsParseCount: :class:`Tencentcloud::Fwm.v20250611.models.SgDnsParseCount`
        # @param Scope: <p>规则生效范围</p>
        # @type Scope: String
        # @param IsNew: <p>规则最近一次是否有改动 取值范围：0/1 0:否 1:是</p>
        # @type IsNew: Integer
        # @param BelongMember: <p>规则归属的成员账号（当FwGroupId为cfwg-xxx或SourceType/DestType为instance/tag时必填)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongMember: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`

        attr_accessor :OrderIndex, :RuleId, :IpVersion, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Detail, :Region, :ServiceTemplateId, :SouInstanceName, :SouPublicIp, :SouPrivateIp, :SouCidr, :SouParameterName, :InstanceName, :PublicIp, :PrivateIp, :Cidr, :ParameterName, :ProtocolPortName, :Id, :DnsParseCount, :Scope, :IsNew, :BelongMember

        def initialize(orderindex=nil, ruleid=nil, ipversion=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, detail=nil, region=nil, servicetemplateid=nil, souinstancename=nil, soupublicip=nil, souprivateip=nil, soucidr=nil, souparametername=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil, parametername=nil, protocolportname=nil, id=nil, dnsparsecount=nil, scope=nil, isnew=nil, belongmember=nil)
          @OrderIndex = orderindex
          @RuleId = ruleid
          @IpVersion = ipversion
          @SourceId = sourceid
          @SourceType = sourcetype
          @TargetId = targetid
          @TargetType = targettype
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @Region = region
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
          @Id = id
          @DnsParseCount = dnsparsecount
          @Scope = scope
          @IsNew = isnew
          @BelongMember = belongmember
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @RuleId = params['RuleId']
          @IpVersion = params['IpVersion']
          @SourceId = params['SourceId']
          @SourceType = params['SourceType']
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @Region = params['Region']
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
          @Id = params['Id']
          unless params['DnsParseCount'].nil?
            @DnsParseCount = SgDnsParseCount.new
            @DnsParseCount.deserialize(params['DnsParseCount'])
          end
          @Scope = params['Scope']
          @IsNew = params['IsNew']
          unless params['BelongMember'].nil?
            @BelongMember = MemberInfo.new
            @BelongMember.deserialize(params['BelongMember'])
          end
        end
      end

      # 安全组风险规则详情
      class SecurityGroupRiskPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyIndex: 安全组规则索引号
        # @type PolicyIndex: Integer
        # @param Protocol:  协议, 取值: TCP,UDP,ICMP,ICMPv6,ALL。
        # @type Protocol: String
        # @param Port: 端口(all, 离散port,  range)。
        # @type Port: String
        # @param ServiceTemplate: 端口ID或者协议端口组ID。ServiceTemplate和Protocol+Port互斥。
        # @type ServiceTemplate: :class:`Tencentcloud::Fwm.v20250611.models.ServiceTemplateSpecification`
        # @param CidrBlock: 网段或IP(互斥)。
        # @type CidrBlock: String
        # @param Ipv6CidrBlock: 网段或IPv6(互斥)。
        # @type Ipv6CidrBlock: String
        # @param SecurityGroupId: 安全组实例ID，例如：sg-ohuuioma。
        # @type SecurityGroupId: String
        # @param AddressTemplate: IP地址ID或者ID地址组ID。
        # @type AddressTemplate: :class:`Tencentcloud::Fwm.v20250611.models.AddressTemplateSpecification`
        # @param Action: 动作：ACCEPT 或 DROP。
        # @type Action: String
        # @param PolicyDescription: 安全组规则描述。
        # @type PolicyDescription: String
        # @param Version: 安全组规则当前版本
        # @type Version: String
        # @param Direction: 规则方向，Egress出站规则，Ingress入站规则
        # @type Direction: String
        # @param ModifyTime: 安全组最近修改时间。
        # @type ModifyTime: String
        # @param Region: 安全组所在地域
        # @type Region: String

        attr_accessor :PolicyIndex, :Protocol, :Port, :ServiceTemplate, :CidrBlock, :Ipv6CidrBlock, :SecurityGroupId, :AddressTemplate, :Action, :PolicyDescription, :Version, :Direction, :ModifyTime, :Region

        def initialize(policyindex=nil, protocol=nil, port=nil, servicetemplate=nil, cidrblock=nil, ipv6cidrblock=nil, securitygroupid=nil, addresstemplate=nil, action=nil, policydescription=nil, version=nil, direction=nil, modifytime=nil, region=nil)
          @PolicyIndex = policyindex
          @Protocol = protocol
          @Port = port
          @ServiceTemplate = servicetemplate
          @CidrBlock = cidrblock
          @Ipv6CidrBlock = ipv6cidrblock
          @SecurityGroupId = securitygroupid
          @AddressTemplate = addresstemplate
          @Action = action
          @PolicyDescription = policydescription
          @Version = version
          @Direction = direction
          @ModifyTime = modifytime
          @Region = region
        end

        def deserialize(params)
          @PolicyIndex = params['PolicyIndex']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['ServiceTemplate'].nil?
            @ServiceTemplate = ServiceTemplateSpecification.new
            @ServiceTemplate.deserialize(params['ServiceTemplate'])
          end
          @CidrBlock = params['CidrBlock']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @SecurityGroupId = params['SecurityGroupId']
          unless params['AddressTemplate'].nil?
            @AddressTemplate = AddressTemplateSpecification.new
            @AddressTemplate.deserialize(params['AddressTemplate'])
          end
          @Action = params['Action']
          @PolicyDescription = params['PolicyDescription']
          @Version = params['Version']
          @Direction = params['Direction']
          @ModifyTime = params['ModifyTime']
          @Region = params['Region']
        end
      end

      # 规则数据结构描述
      class SecurityGroupRule < TencentCloud::Common::AbstractModel
        # @param IpVersion: ip类型
        # @type IpVersion: String
        # @param SourceContent: 源地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceContent: String
        # @param SourceType: 源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: String
        # @param DestContent: 目的地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestContent: String
        # @param DestType: 目的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestType: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param ServiceTemplateId: 模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTemplateId: String
        # @param RuleAction: 动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleAction: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param OrderIndex: 优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderIndex: Integer
        # @param RuleId: rule id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param Scope: 生效范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: String
        # @param ProtocolPortType: 端口类型
        # @type ProtocolPortType: Integer
        # @param BelongMemberId: 规则归属的成员账号ID（当FwGroupId为cfwg-xxx或SourceType/DestType为instance/tag时必填）
        # @type BelongMemberId: String

        attr_accessor :IpVersion, :SourceContent, :SourceType, :DestContent, :DestType, :Protocol, :Port, :ServiceTemplateId, :RuleAction, :Description, :OrderIndex, :RuleId, :Scope, :ProtocolPortType, :BelongMemberId

        def initialize(ipversion=nil, sourcecontent=nil, sourcetype=nil, destcontent=nil, desttype=nil, protocol=nil, port=nil, servicetemplateid=nil, ruleaction=nil, description=nil, orderindex=nil, ruleid=nil, scope=nil, protocolporttype=nil, belongmemberid=nil)
          @IpVersion = ipversion
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @DestContent = destcontent
          @DestType = desttype
          @Protocol = protocol
          @Port = port
          @ServiceTemplateId = servicetemplateid
          @RuleAction = ruleaction
          @Description = description
          @OrderIndex = orderindex
          @RuleId = ruleid
          @Scope = scope
          @ProtocolPortType = protocolporttype
          @BelongMemberId = belongmemberid
        end

        def deserialize(params)
          @IpVersion = params['IpVersion']
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @DestContent = params['DestContent']
          @DestType = params['DestType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @ServiceTemplateId = params['ServiceTemplateId']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @OrderIndex = params['OrderIndex']
          @RuleId = params['RuleId']
          @Scope = params['Scope']
          @ProtocolPortType = params['ProtocolPortType']
          @BelongMemberId = params['BelongMemberId']
        end
      end

      # 规则序号调整结构
      class SequenceIndex < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 原规则序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderIndex: Integer
        # @param NewOrderIndex: 新规则序号
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 安全组服务模板
      class ServiceTemplateSpecification < TencentCloud::Common::AbstractModel
        # @param ServiceId:  协议端口ID，例如：ppm-f5n1f8da。
        # @type ServiceId: String
        # @param ServiceGroupId: 协议端口组ID，例如：ppmg-f5n1f8da
        # @type ServiceGroupId: String

        attr_accessor :ServiceId, :ServiceGroupId

        def initialize(serviceid=nil, servicegroupid=nil)
          @ServiceId = serviceid
          @ServiceGroupId = servicegroupid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceGroupId = params['ServiceGroupId']
        end
      end

      # 企业安全组域名解析的IP统计
      class SgDnsParseCount < TencentCloud::Common::AbstractModel
        # @param ValidCount: 有效下发的IP个数，离散数据
        # @type ValidCount: Integer
        # @param InvalidCount: 未下发的IP个数，离散数据
        # @type InvalidCount: Integer

        attr_accessor :ValidCount, :InvalidCount

        def initialize(validcount=nil, invalidcount=nil)
          @ValidCount = validcount
          @InvalidCount = invalidcount
        end

        def deserialize(params)
          @ValidCount = params['ValidCount']
          @InvalidCount = params['InvalidCount']
        end
      end

      # 规则列表响应数据结构
      class SgRuleResp < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: String
        # @param Sequence: 优先级
        # @type Sequence: Integer
        # @param Region: 区域
        # @type Region: String
        # @param IpVersion: ip类型
        # @type IpVersion: String
        # @param SrcContent: 源内容
        # @type SrcContent: String
        # @param SrcType: 源类型
        # @type SrcType: String
        # @param DstContent: 目的内容
        # @type DstContent: String
        # @param DstType: 目的类型
        # @type DstType: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param ProtocolPortType: 协议端口参数模板
        # @type ProtocolPortType: Integer
        # @param ServiceTemplateId: 协议端口参数模板id
        # @type ServiceTemplateId: String
        # @param DstPort: 端口段,支持单端口,多端口和端口段
        # @type DstPort: String
        # @param RuleAction: 策略，1阻断，2放行
        # @type RuleAction: String
        # @param Detail: 描述
        # @type Detail: String
        # @param RuleSource: 规则来源，0为用户控制台添加
        # @type RuleSource: String
        # @param Scope: 生效范围,字节位,1:SG 企业安全组,2:LH 轻量服务器
        # @type Scope: String

        attr_accessor :RuleId, :Sequence, :Region, :IpVersion, :SrcContent, :SrcType, :DstContent, :DstType, :Protocol, :ProtocolPortType, :ServiceTemplateId, :DstPort, :RuleAction, :Detail, :RuleSource, :Scope

        def initialize(ruleid=nil, sequence=nil, region=nil, ipversion=nil, srccontent=nil, srctype=nil, dstcontent=nil, dsttype=nil, protocol=nil, protocolporttype=nil, servicetemplateid=nil, dstport=nil, ruleaction=nil, detail=nil, rulesource=nil, scope=nil)
          @RuleId = ruleid
          @Sequence = sequence
          @Region = region
          @IpVersion = ipversion
          @SrcContent = srccontent
          @SrcType = srctype
          @DstContent = dstcontent
          @DstType = dsttype
          @Protocol = protocol
          @ProtocolPortType = protocolporttype
          @ServiceTemplateId = servicetemplateid
          @DstPort = dstport
          @RuleAction = ruleaction
          @Detail = detail
          @RuleSource = rulesource
          @Scope = scope
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Sequence = params['Sequence']
          @Region = params['Region']
          @IpVersion = params['IpVersion']
          @SrcContent = params['SrcContent']
          @SrcType = params['SrcType']
          @DstContent = params['DstContent']
          @DstType = params['DstType']
          @Protocol = params['Protocol']
          @ProtocolPortType = params['ProtocolPortType']
          @ServiceTemplateId = params['ServiceTemplateId']
          @DstPort = params['DstPort']
          @RuleAction = params['RuleAction']
          @Detail = params['Detail']
          @RuleSource = params['RuleSource']
          @Scope = params['Scope']
        end
      end

      # 创建策略的策略数据结构
      class StrategyReq < TencentCloud::Common::AbstractModel
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param Sequence: 优先级
        # @type Sequence: Integer

        attr_accessor :GroupId, :Sequence

        def initialize(groupid=nil, sequence=nil)
          @GroupId = groupid
          @Sequence = sequence
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Sequence = params['Sequence']
        end
      end

      # 查询策略时策略列表参数
      class StrategyResp < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略Id
        # @type StrategyId: String
        # @param GroupId: 规则组Id
        # @type GroupId: String
        # @param GroupName: 规则组名称
        # @type GroupName: String
        # @param RuleCount: 规则数
        # @type RuleCount: Integer
        # @param RuleStatus: 策略状态
        # @type RuleStatus: Integer
        # @param ReceiveAccount: 下发账号
        # @type ReceiveAccount: Array
        # @param Sequence: 优先级
        # @type Sequence: Integer
        # @param ErrMsg: 下发失败原因
        # @type ErrMsg: String
        # @param ErrorType: 下发失败原因类型
        # @type ErrorType: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateBy: 创建人
        # @type CreateBy: String
        # @param UpdateBy: 更新人
        # @type UpdateBy: String
        # @param ExecArea: 执行区域
        # @type ExecArea: String
        # @param CreateName: 创建人名称
        # @type CreateName: String
        # @param UpdateName: 更新人名称
        # @type UpdateName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :StrategyId, :GroupId, :GroupName, :RuleCount, :RuleStatus, :ReceiveAccount, :Sequence, :ErrMsg, :ErrorType, :UpdateTime, :CreateBy, :UpdateBy, :ExecArea, :CreateName, :UpdateName, :CreateTime

        def initialize(strategyid=nil, groupid=nil, groupname=nil, rulecount=nil, rulestatus=nil, receiveaccount=nil, sequence=nil, errmsg=nil, errortype=nil, updatetime=nil, createby=nil, updateby=nil, execarea=nil, createname=nil, updatename=nil, createtime=nil)
          @StrategyId = strategyid
          @GroupId = groupid
          @GroupName = groupname
          @RuleCount = rulecount
          @RuleStatus = rulestatus
          @ReceiveAccount = receiveaccount
          @Sequence = sequence
          @ErrMsg = errmsg
          @ErrorType = errortype
          @UpdateTime = updatetime
          @CreateBy = createby
          @UpdateBy = updateby
          @ExecArea = execarea
          @CreateName = createname
          @UpdateName = updatename
          @CreateTime = createtime
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @RuleCount = params['RuleCount']
          @RuleStatus = params['RuleStatus']
          unless params['ReceiveAccount'].nil?
            @ReceiveAccount = []
            params['ReceiveAccount'].each do |i|
              receiveaccount_tmp = ReceiveAccount.new
              receiveaccount_tmp.deserialize(i)
              @ReceiveAccount << receiveaccount_tmp
            end
          end
          @Sequence = params['Sequence']
          @ErrMsg = params['ErrMsg']
          @ErrorType = params['ErrorType']
          @UpdateTime = params['UpdateTime']
          @CreateBy = params['CreateBy']
          @UpdateBy = params['UpdateBy']
          @ExecArea = params['ExecArea']
          @CreateName = params['CreateName']
          @UpdateName = params['UpdateName']
          @CreateTime = params['CreateTime']
        end
      end

      # VPC边界规则
      class VpcAclRule < TencentCloud::Common::AbstractModel
        # @param SourceContent: 源地址内容
        # @type SourceContent: String
        # @param SourceType: 源类型：ip/url/template/instance/tag
        # @type SourceType: String
        # @param DestContent: 目的地址内容
        # @type DestContent: String
        # @param DestType: 目的类型：ip/url/template/instance/tag
        # @type DestType: String
        # @param Protocol: 协议：TCP/UDP/ICMP/ANY/HTTP/HTTPS/DNS/FTP等
        # @type Protocol: String
        # @param RuleAction: 动作：accept/drop/log
        # @type RuleAction: String
        # @param OrderIndex: 优先级（从1开始）
        # @type OrderIndex: Integer
        # @param EdgeId: 边界防火墙ID：ALL表示全局，CFWS-xxx表示指定边界
        # @type EdgeId: String
        # @param FwGroupId: 防火墙实例ID（规则生效范围）：ALL-全局生效，ccn-xxx-云联网实例，cfwg-xxx-防火墙组实例
        # @type FwGroupId: String
        # @param RuleId: 规则ID（修改时必填）
        # @type RuleId: String
        # @param Port: 端口（ICMP协议时为空）
        # @type Port: String
        # @param Description: 规则描述
        # @type Description: String
        # @param ParamTemplateId: 端口模板ID
        # @type ParamTemplateId: String
        # @param BelongMemberId: 规则归属的成员账号ID（当FwGroupId为cfwg-xxx或SourceType/DestType为instance/tag时必填）
        # @type BelongMemberId: String

        attr_accessor :SourceContent, :SourceType, :DestContent, :DestType, :Protocol, :RuleAction, :OrderIndex, :EdgeId, :FwGroupId, :RuleId, :Port, :Description, :ParamTemplateId, :BelongMemberId

        def initialize(sourcecontent=nil, sourcetype=nil, destcontent=nil, desttype=nil, protocol=nil, ruleaction=nil, orderindex=nil, edgeid=nil, fwgroupid=nil, ruleid=nil, port=nil, description=nil, paramtemplateid=nil, belongmemberid=nil)
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @DestContent = destcontent
          @DestType = desttype
          @Protocol = protocol
          @RuleAction = ruleaction
          @OrderIndex = orderindex
          @EdgeId = edgeid
          @FwGroupId = fwgroupid
          @RuleId = ruleid
          @Port = port
          @Description = description
          @ParamTemplateId = paramtemplateid
          @BelongMemberId = belongmemberid
        end

        def deserialize(params)
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @DestContent = params['DestContent']
          @DestType = params['DestType']
          @Protocol = params['Protocol']
          @RuleAction = params['RuleAction']
          @OrderIndex = params['OrderIndex']
          @EdgeId = params['EdgeId']
          @FwGroupId = params['FwGroupId']
          @RuleId = params['RuleId']
          @Port = params['Port']
          @Description = params['Description']
          @ParamTemplateId = params['ParamTemplateId']
          @BelongMemberId = params['BelongMemberId']
        end
      end

      # VPC边界规则响应结构
      class VpcAclRuleResp < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Sequence: 优先级
        # @type Sequence: Integer
        # @param IpVersion: IP版本：ipv4或ipv6
        # @type IpVersion: String
        # @param SourceContent: 源地址内容
        # @type SourceContent: String
        # @param SourceType: 源类型
        # @type SourceType: String
        # @param SourceName: 源资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceName: String
        # @param DestContent: 目的地址内容
        # @type DestContent: String
        # @param DestType: 目的类型
        # @type DestType: String
        # @param DestName: 目的资产名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestName: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param ParamTemplateId: 端口模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateId: String
        # @param ParamTemplateName: 端口模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamTemplateName: String
        # @param RuleAction: 动作：accept/drop/log
        # @type RuleAction: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param EdgeId: 边界防火墙ID
        # @type EdgeId: String
        # @param FwGroupId: 防火墙实例ID
        # @type FwGroupId: String
        # @param Invalid: 规则是否失效：0-有效，1-失效
        # @type Invalid: Integer
        # @param BelongMember: 规则归属的成员账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongMember: :class:`Tencentcloud::Fwm.v20250611.models.MemberInfo`
        # @param CreateTime: 规则创建时间
        # @type CreateTime: String
        # @param UpdateTime: 规则修改时间
        # @type UpdateTime: String
        # @param DnsParseCnt: 域名数
        # @type DnsParseCnt: Integer
        # @param FwGroupName: 防火墙组名称
        # @type FwGroupName: String

        attr_accessor :RuleId, :Sequence, :IpVersion, :SourceContent, :SourceType, :SourceName, :DestContent, :DestType, :DestName, :Protocol, :Port, :ParamTemplateId, :ParamTemplateName, :RuleAction, :Description, :EdgeId, :FwGroupId, :Invalid, :BelongMember, :CreateTime, :UpdateTime, :DnsParseCnt, :FwGroupName

        def initialize(ruleid=nil, sequence=nil, ipversion=nil, sourcecontent=nil, sourcetype=nil, sourcename=nil, destcontent=nil, desttype=nil, destname=nil, protocol=nil, port=nil, paramtemplateid=nil, paramtemplatename=nil, ruleaction=nil, description=nil, edgeid=nil, fwgroupid=nil, invalid=nil, belongmember=nil, createtime=nil, updatetime=nil, dnsparsecnt=nil, fwgroupname=nil)
          @RuleId = ruleid
          @Sequence = sequence
          @IpVersion = ipversion
          @SourceContent = sourcecontent
          @SourceType = sourcetype
          @SourceName = sourcename
          @DestContent = destcontent
          @DestType = desttype
          @DestName = destname
          @Protocol = protocol
          @Port = port
          @ParamTemplateId = paramtemplateid
          @ParamTemplateName = paramtemplatename
          @RuleAction = ruleaction
          @Description = description
          @EdgeId = edgeid
          @FwGroupId = fwgroupid
          @Invalid = invalid
          @BelongMember = belongmember
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DnsParseCnt = dnsparsecnt
          @FwGroupName = fwgroupname
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Sequence = params['Sequence']
          @IpVersion = params['IpVersion']
          @SourceContent = params['SourceContent']
          @SourceType = params['SourceType']
          @SourceName = params['SourceName']
          @DestContent = params['DestContent']
          @DestType = params['DestType']
          @DestName = params['DestName']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @ParamTemplateId = params['ParamTemplateId']
          @ParamTemplateName = params['ParamTemplateName']
          @RuleAction = params['RuleAction']
          @Description = params['Description']
          @EdgeId = params['EdgeId']
          @FwGroupId = params['FwGroupId']
          @Invalid = params['Invalid']
          unless params['BelongMember'].nil?
            @BelongMember = MemberInfo.new
            @BelongMember.deserialize(params['BelongMember'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DnsParseCnt = params['DnsParseCnt']
          @FwGroupName = params['FwGroupName']
        end
      end

    end
  end
end

