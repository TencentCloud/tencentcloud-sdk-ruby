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
  module Antiddos
    module V20200309
      # 基于端口的acl策略
      class AclConfig < TencentCloud::Common::AbstractModel
        # @param ForwardProtocol: 协议类型, 可取值tcp, udp, all
        # @type ForwardProtocol: String
        # @param DPortStart: 目的端口起始，可取值范围0~65535
        # @type DPortStart: Integer
        # @param DPortEnd: 目的端口结束，可取值范围0~65535
        # @type DPortEnd: Integer
        # @param SPortStart: 来源端口起始，可取值范围0~65535
        # @type SPortStart: Integer
        # @param SPortEnd: 来源端口结束，可取值范围0~65535
        # @type SPortEnd: Integer
        # @param Action: 动作，可取值：drop， transmit， forward
        # @type Action: String
        # @param Priority: 策略优先级，数字越小，级别越高，该规则越靠前匹配，取值1-1000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer

        attr_accessor :ForwardProtocol, :DPortStart, :DPortEnd, :SPortStart, :SPortEnd, :Action, :Priority
        
        def initialize(forwardprotocol=nil, dportstart=nil, dportend=nil, sportstart=nil, sportend=nil, action=nil, priority=nil)
          @ForwardProtocol = forwardprotocol
          @DPortStart = dportstart
          @DPortEnd = dportend
          @SPortStart = sportstart
          @SPortEnd = sportend
          @Action = action
          @Priority = priority
        end

        def deserialize(params)
          @ForwardProtocol = params['ForwardProtocol']
          @DPortStart = params['DPortStart']
          @DPortEnd = params['DPortEnd']
          @SPortStart = params['SPortStart']
          @SPortEnd = params['SPortEnd']
          @Action = params['Action']
          @Priority = params['Priority']
        end
      end

      # 端口acl策略配置与高防资源关联
      class AclConfigRelation < TencentCloud::Common::AbstractModel
        # @param AclConfig: acl策略
        # @type AclConfig: :class:`Tencentcloud::Antiddos.v20200309.models.AclConfig`
        # @param InstanceDetailList: 实例列表
        # @type InstanceDetailList: Array

        attr_accessor :AclConfig, :InstanceDetailList
        
        def initialize(aclconfig=nil, instancedetaillist=nil)
          @AclConfig = aclconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['AclConfig'].nil?
            @AclConfig = AclConfig.new
            @AclConfig.deserialize(params['AclConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # AssociateDDoSEipAddress请求参数结构体
      class AssociateDDoSEipAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID，实例ID形如：bgpip-0000011x。只能填写高防IP实例。
        # @type InstanceId: String
        # @param Eip: 资源实例ID对应的高防弹性公网IP。
        # @type Eip: String
        # @param CvmInstanceID: 要绑定的实例 ID。实例 ID 形如：ins-11112222。可通过登录控制台查询，也可通过 DescribeInstances 接口返回值中的InstanceId获取。
        # @type CvmInstanceID: String
        # @param CvmRegion: cvm实例所在地域，例如：ap-hongkong。
        # @type CvmRegion: String

        attr_accessor :InstanceId, :Eip, :CvmInstanceID, :CvmRegion
        
        def initialize(instanceid=nil, eip=nil, cvminstanceid=nil, cvmregion=nil)
          @InstanceId = instanceid
          @Eip = eip
          @CvmInstanceID = cvminstanceid
          @CvmRegion = cvmregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Eip = params['Eip']
          @CvmInstanceID = params['CvmInstanceID']
          @CvmRegion = params['CvmRegion']
        end
      end

      # AssociateDDoSEipAddress返回参数结构体
      class AssociateDDoSEipAddressResponse < TencentCloud::Common::AbstractModel
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

      # AssociateDDoSEipLoadBalancer请求参数结构体
      class AssociateDDoSEipLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID，实例ID形如：bgpip-0000011x。只能填写高防IP实例。
        # @type InstanceId: String
        # @param Eip: 资源实例ID对应的高防弹性公网IP。
        # @type Eip: String
        # @param LoadBalancerID: 要绑定的负载均衡ID。负载均衡 ID 形如：lb-0000002i。可通过登录控制台查询，也可通过 DescribeLoadBalancers 接口返回值中的LoadBalancerId获取。
        # @type LoadBalancerID: String
        # @param LoadBalancerRegion: CLB所在地域，例如：ap-hongkong。
        # @type LoadBalancerRegion: String
        # @param Vip: CLB内网IP
        # @type Vip: String

        attr_accessor :InstanceId, :Eip, :LoadBalancerID, :LoadBalancerRegion, :Vip
        
        def initialize(instanceid=nil, eip=nil, loadbalancerid=nil, loadbalancerregion=nil, vip=nil)
          @InstanceId = instanceid
          @Eip = eip
          @LoadBalancerID = loadbalancerid
          @LoadBalancerRegion = loadbalancerregion
          @Vip = vip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Eip = params['Eip']
          @LoadBalancerID = params['LoadBalancerID']
          @LoadBalancerRegion = params['LoadBalancerRegion']
          @Vip = params['Vip']
        end
      end

      # AssociateDDoSEipLoadBalancer返回参数结构体
      class AssociateDDoSEipLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # 高防IP资产实例信息
      class BGPIPInstance < TencentCloud::Common::AbstractModel
        # @param InstanceDetail: 资产实例的详细信息
        # @type InstanceDetail: :class:`Tencentcloud::Antiddos.v20200309.models.InstanceRelation`
        # @param SpecificationLimit: 资产实例的规格信息
        # @type SpecificationLimit: :class:`Tencentcloud::Antiddos.v20200309.models.BGPIPInstanceSpecification`
        # @param Usage: 资产实例的使用统计信息
        # @type Usage: :class:`Tencentcloud::Antiddos.v20200309.models.BGPIPInstanceUsages`
        # @param Region: 资产实例所在的地域
        # @type Region: :class:`Tencentcloud::Antiddos.v20200309.models.RegionInfo`
        # @param Status: 资产实例的防护状态，状态码如下：
        # "idle"：正常状态(无攻击)
        # "attacking"：攻击中
        # "blocking"：封堵中
        # "creating"：创建中
        # "deblocking"：解封中
        # "isolate"：回收隔离中
        # @type Status: String
        # @param ExpiredTime: 购买时间
        # @type ExpiredTime: String
        # @param CreatedTime: 到期时间
        # @type CreatedTime: String
        # @param Name: 资产实例的名称
        # @type Name: String
        # @param PackInfo: 资产实例所属的套餐包信息，
        # 注意：当资产实例不是套餐包的实例时，此字段为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackInfo: :class:`Tencentcloud::Antiddos.v20200309.models.PackInfo`
        # @param StaticPackRelation: 资产实例所属的三网套餐包详情，
        # 注意：当资产实例不是三网套餐包的实例时，此字段为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticPackRelation: :class:`Tencentcloud::Antiddos.v20200309.models.StaticPackRelation`
        # @param ZoneId: 区分高防IP境外线路
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param Tgw: 区分集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tgw: Integer
        # @param EipAddressStatus: 高防弹性公网IP状态，包含'CREATING'(创建中),'BINDING'(绑定中),'BIND'(已绑定),'UNBINDING'(解绑中),'UNBIND'(已解绑),'OFFLINING'(释放中),'BIND_ENI'(绑定悬空弹性网卡)。只对高防弹性公网IP实例有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipAddressStatus: String
        # @param EipFlag: 是否高防弹性公网IP实例，是为1，否为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipFlag: Integer
        # @param EipAddressPackRelation: 资产实例所属的高防弹性公网IP套餐包详情，
        # 注意：当资产实例不是高防弹性公网IP套餐包的实例时，此字段为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipAddressPackRelation: :class:`Tencentcloud::Antiddos.v20200309.models.EipAddressPackRelation`
        # @param EipAddressInfo: 高防弹性公网IP关联的实例信息。
        # 注意：当资产实例不是高防弹性公网IP实例时，此字段为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipAddressInfo: :class:`Tencentcloud::Antiddos.v20200309.models.EipAddressRelation`
        # @param Domain: 建议客户接入的域名，客户可使用域名接入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DamDDoSStatus: 是否开启安全加速，是为1，否为0。
        # @type DamDDoSStatus: Integer
        # @param V6Flag: 是否Ipv6版本的IP, 是为1，否为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type V6Flag: Integer

        attr_accessor :InstanceDetail, :SpecificationLimit, :Usage, :Region, :Status, :ExpiredTime, :CreatedTime, :Name, :PackInfo, :StaticPackRelation, :ZoneId, :Tgw, :EipAddressStatus, :EipFlag, :EipAddressPackRelation, :EipAddressInfo, :Domain, :DamDDoSStatus, :V6Flag
        
        def initialize(instancedetail=nil, specificationlimit=nil, usage=nil, region=nil, status=nil, expiredtime=nil, createdtime=nil, name=nil, packinfo=nil, staticpackrelation=nil, zoneid=nil, tgw=nil, eipaddressstatus=nil, eipflag=nil, eipaddresspackrelation=nil, eipaddressinfo=nil, domain=nil, damddosstatus=nil, v6flag=nil)
          @InstanceDetail = instancedetail
          @SpecificationLimit = specificationlimit
          @Usage = usage
          @Region = region
          @Status = status
          @ExpiredTime = expiredtime
          @CreatedTime = createdtime
          @Name = name
          @PackInfo = packinfo
          @StaticPackRelation = staticpackrelation
          @ZoneId = zoneid
          @Tgw = tgw
          @EipAddressStatus = eipaddressstatus
          @EipFlag = eipflag
          @EipAddressPackRelation = eipaddresspackrelation
          @EipAddressInfo = eipaddressinfo
          @Domain = domain
          @DamDDoSStatus = damddosstatus
          @V6Flag = v6flag
        end

        def deserialize(params)
          unless params['InstanceDetail'].nil?
            @InstanceDetail = InstanceRelation.new
            @InstanceDetail.deserialize(params['InstanceDetail'])
          end
          unless params['SpecificationLimit'].nil?
            @SpecificationLimit = BGPIPInstanceSpecification.new
            @SpecificationLimit.deserialize(params['SpecificationLimit'])
          end
          unless params['Usage'].nil?
            @Usage = BGPIPInstanceUsages.new
            @Usage.deserialize(params['Usage'])
          end
          unless params['Region'].nil?
            @Region = RegionInfo.new
            @Region.deserialize(params['Region'])
          end
          @Status = params['Status']
          @ExpiredTime = params['ExpiredTime']
          @CreatedTime = params['CreatedTime']
          @Name = params['Name']
          unless params['PackInfo'].nil?
            @PackInfo = PackInfo.new
            @PackInfo.deserialize(params['PackInfo'])
          end
          unless params['StaticPackRelation'].nil?
            @StaticPackRelation = StaticPackRelation.new
            @StaticPackRelation.deserialize(params['StaticPackRelation'])
          end
          @ZoneId = params['ZoneId']
          @Tgw = params['Tgw']
          @EipAddressStatus = params['EipAddressStatus']
          @EipFlag = params['EipFlag']
          unless params['EipAddressPackRelation'].nil?
            @EipAddressPackRelation = EipAddressPackRelation.new
            @EipAddressPackRelation.deserialize(params['EipAddressPackRelation'])
          end
          unless params['EipAddressInfo'].nil?
            @EipAddressInfo = EipAddressRelation.new
            @EipAddressInfo.deserialize(params['EipAddressInfo'])
          end
          @Domain = params['Domain']
          @DamDDoSStatus = params['DamDDoSStatus']
          @V6Flag = params['V6Flag']
        end
      end

      # 高防IP资产实例的规格信息
      class BGPIPInstanceSpecification < TencentCloud::Common::AbstractModel
        # @param ProtectBandwidth: 保底防护峰值，单位Mbps
        # @type ProtectBandwidth: Integer
        # @param ProtectCCQPS: CC防护峰值，单位qps
        # @type ProtectCCQPS: Integer
        # @param NormalBandwidth: 正常业务带宽，单位Mbps
        # @type NormalBandwidth: Integer
        # @param ForwardRulesLimit: 转发规则数，单位条
        # @type ForwardRulesLimit: Integer
        # @param AutoRenewFlag: 自动续费状态，取值[
        # 0：没有开启自动续费
        # 1：开启了自动续费
        # ]
        # @type AutoRenewFlag: Integer
        # @param Line: 高防IP线路，取值为[
        # 1：BGP线路
        # 2：电信
        # 3：联通
        # 4：移动
        # 99：第三方合作线路
        # ]
        # @type Line: Integer
        # @param ElasticBandwidth: 弹性防护峰值，单位Mbps
        # @type ElasticBandwidth: Integer

        attr_accessor :ProtectBandwidth, :ProtectCCQPS, :NormalBandwidth, :ForwardRulesLimit, :AutoRenewFlag, :Line, :ElasticBandwidth
        
        def initialize(protectbandwidth=nil, protectccqps=nil, normalbandwidth=nil, forwardruleslimit=nil, autorenewflag=nil, line=nil, elasticbandwidth=nil)
          @ProtectBandwidth = protectbandwidth
          @ProtectCCQPS = protectccqps
          @NormalBandwidth = normalbandwidth
          @ForwardRulesLimit = forwardruleslimit
          @AutoRenewFlag = autorenewflag
          @Line = line
          @ElasticBandwidth = elasticbandwidth
        end

        def deserialize(params)
          @ProtectBandwidth = params['ProtectBandwidth']
          @ProtectCCQPS = params['ProtectCCQPS']
          @NormalBandwidth = params['NormalBandwidth']
          @ForwardRulesLimit = params['ForwardRulesLimit']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Line = params['Line']
          @ElasticBandwidth = params['ElasticBandwidth']
        end
      end

      # 高防IP资产实例的使用信息统计
      class BGPIPInstanceUsages < TencentCloud::Common::AbstractModel
        # @param PortRulesUsage: 已使用的端口规则数，单位条
        # @type PortRulesUsage: Integer
        # @param DomainRulesUsage: 已使用的域名规则数，单位条
        # @type DomainRulesUsage: Integer
        # @param Last7DayAttackCount: 最近7天的攻击次数，单位次
        # @type Last7DayAttackCount: Integer

        attr_accessor :PortRulesUsage, :DomainRulesUsage, :Last7DayAttackCount
        
        def initialize(portrulesusage=nil, domainrulesusage=nil, last7dayattackcount=nil)
          @PortRulesUsage = portrulesusage
          @DomainRulesUsage = domainrulesusage
          @Last7DayAttackCount = last7dayattackcount
        end

        def deserialize(params)
          @PortRulesUsage = params['PortRulesUsage']
          @DomainRulesUsage = params['DomainRulesUsage']
          @Last7DayAttackCount = params['Last7DayAttackCount']
        end
      end

      # 高防包资产实例信息
      class BGPInstance < TencentCloud::Common::AbstractModel
        # @param InstanceDetail: 资产实例的详细信息
        # @type InstanceDetail: :class:`Tencentcloud::Antiddos.v20200309.models.InstanceRelation`
        # @param SpecificationLimit: 资产实例的规格信息
        # @type SpecificationLimit: :class:`Tencentcloud::Antiddos.v20200309.models.BGPInstanceSpecification`
        # @param Usage: 资产实例的使用统计信息
        # @type Usage: :class:`Tencentcloud::Antiddos.v20200309.models.BGPInstanceUsages`
        # @param Region: 资产实例所在的地域
        # @type Region: :class:`Tencentcloud::Antiddos.v20200309.models.RegionInfo`
        # @param Status: 资产实例的防护状态，状态码如下：
        # "idle"：正常状态(无攻击)
        # "attacking"：攻击中
        # "blocking"：封堵中
        # "creating"：创建中
        # "deblocking"：解封中
        # "isolate"：回收隔离中
        # @type Status: String
        # @param CreatedTime: 购买时间
        # @type CreatedTime: String
        # @param ExpiredTime: 到期时间
        # @type ExpiredTime: String
        # @param Name: 资产实例的名称
        # @type Name: String
        # @param PackInfo: 资产实例所属的套餐包信息，
        # 注意：当资产实例不是套餐包的实例时，此字段为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackInfo: :class:`Tencentcloud::Antiddos.v20200309.models.PackInfo`
        # @param EipProductInfos: 高防包绑定的EIP属于的云产品信息
        # @type EipProductInfos: Array
        # @param BoundStatus: 高防包绑定状态，取值[
        # "idle"：绑定已完成
        #  "bounding"：正在绑定中
        # "failed"：绑定失败
        # ]
        # @type BoundStatus: String
        # @param DDoSLevel: 四层防护严格级别
        # @type DDoSLevel: String
        # @param CCEnable: CC防护开关
        # @type CCEnable: Integer

        attr_accessor :InstanceDetail, :SpecificationLimit, :Usage, :Region, :Status, :CreatedTime, :ExpiredTime, :Name, :PackInfo, :EipProductInfos, :BoundStatus, :DDoSLevel, :CCEnable
        
        def initialize(instancedetail=nil, specificationlimit=nil, usage=nil, region=nil, status=nil, createdtime=nil, expiredtime=nil, name=nil, packinfo=nil, eipproductinfos=nil, boundstatus=nil, ddoslevel=nil, ccenable=nil)
          @InstanceDetail = instancedetail
          @SpecificationLimit = specificationlimit
          @Usage = usage
          @Region = region
          @Status = status
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @Name = name
          @PackInfo = packinfo
          @EipProductInfos = eipproductinfos
          @BoundStatus = boundstatus
          @DDoSLevel = ddoslevel
          @CCEnable = ccenable
        end

        def deserialize(params)
          unless params['InstanceDetail'].nil?
            @InstanceDetail = InstanceRelation.new
            @InstanceDetail.deserialize(params['InstanceDetail'])
          end
          unless params['SpecificationLimit'].nil?
            @SpecificationLimit = BGPInstanceSpecification.new
            @SpecificationLimit.deserialize(params['SpecificationLimit'])
          end
          unless params['Usage'].nil?
            @Usage = BGPInstanceUsages.new
            @Usage.deserialize(params['Usage'])
          end
          unless params['Region'].nil?
            @Region = RegionInfo.new
            @Region.deserialize(params['Region'])
          end
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @Name = params['Name']
          unless params['PackInfo'].nil?
            @PackInfo = PackInfo.new
            @PackInfo.deserialize(params['PackInfo'])
          end
          unless params['EipProductInfos'].nil?
            @EipProductInfos = []
            params['EipProductInfos'].each do |i|
              eipproductinfo_tmp = EipProductInfo.new
              eipproductinfo_tmp.deserialize(i)
              @EipProductInfos << eipproductinfo_tmp
            end
          end
          @BoundStatus = params['BoundStatus']
          @DDoSLevel = params['DDoSLevel']
          @CCEnable = params['CCEnable']
        end
      end

      # 高防包资产实例的规格信息
      class BGPInstanceSpecification < TencentCloud::Common::AbstractModel
        # @param ProtectBandwidth: 保底防护峰值，单位Gbps
        # @type ProtectBandwidth: Integer
        # @param ProtectCountLimit: 防护次数，单位次
        # @type ProtectCountLimit: Integer
        # @param ProtectIPNumberLimit: 防护IP数，单位个
        # @type ProtectIPNumberLimit: Integer
        # @param AutoRenewFlag: 自动续费状态，取值[
        # 0：没有开启自动续费
        # 1：开启了自动续费
        # ]
        # @type AutoRenewFlag: Integer
        # @param UnionPackFlag: 联合产品标记，0代表普通高防包，1代表联合高防包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnionPackFlag: Integer

        attr_accessor :ProtectBandwidth, :ProtectCountLimit, :ProtectIPNumberLimit, :AutoRenewFlag, :UnionPackFlag
        
        def initialize(protectbandwidth=nil, protectcountlimit=nil, protectipnumberlimit=nil, autorenewflag=nil, unionpackflag=nil)
          @ProtectBandwidth = protectbandwidth
          @ProtectCountLimit = protectcountlimit
          @ProtectIPNumberLimit = protectipnumberlimit
          @AutoRenewFlag = autorenewflag
          @UnionPackFlag = unionpackflag
        end

        def deserialize(params)
          @ProtectBandwidth = params['ProtectBandwidth']
          @ProtectCountLimit = params['ProtectCountLimit']
          @ProtectIPNumberLimit = params['ProtectIPNumberLimit']
          @AutoRenewFlag = params['AutoRenewFlag']
          @UnionPackFlag = params['UnionPackFlag']
        end
      end

      # 高防包资产实例的使用信息统计
      class BGPInstanceUsages < TencentCloud::Common::AbstractModel
        # @param ProtectCountUsage: 已使用的防护次数，单位次
        # @type ProtectCountUsage: Integer
        # @param ProtectIPNumberUsage: 已防护的IP数，单位个
        # @type ProtectIPNumberUsage: Integer
        # @param Last7DayAttackCount: 最近7天的攻击次数，单位次
        # @type Last7DayAttackCount: Integer

        attr_accessor :ProtectCountUsage, :ProtectIPNumberUsage, :Last7DayAttackCount
        
        def initialize(protectcountusage=nil, protectipnumberusage=nil, last7dayattackcount=nil)
          @ProtectCountUsage = protectcountusage
          @ProtectIPNumberUsage = protectipnumberusage
          @Last7DayAttackCount = last7dayattackcount
        end

        def deserialize(params)
          @ProtectCountUsage = params['ProtectCountUsage']
          @ProtectIPNumberUsage = params['ProtectIPNumberUsage']
          @Last7DayAttackCount = params['Last7DayAttackCount']
        end
      end

      # 黑白名单IP
      class BlackWhiteIpRelation < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Type: IP类型，取值[black(黑IP)，white(白IP)]
        # @type Type: String
        # @param InstanceDetailList: 黑白IP所属的实例
        # @type InstanceDetailList: Array
        # @param Mask: ip掩码，0表示32位完整ip
        # @type Mask: Integer

        attr_accessor :Ip, :Type, :InstanceDetailList, :Mask
        
        def initialize(ip=nil, type=nil, instancedetaillist=nil, mask=nil)
          @Ip = ip
          @Type = type
          @InstanceDetailList = instancedetaillist
          @Mask = mask
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Type = params['Type']
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
          @Mask = params['Mask']
        end
      end

      # 高防包绑定IP对象
      class BoundIpInfo < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param BizType: 绑定的产品分类，绑定操作为必填项，解绑操作可不填。取值[public（CVM、CLB产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        # @type BizType: String
        # @param InstanceId: IP所属的资源实例ID，绑定操作为必填项，解绑操作可不填。例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*); 如果绑定的是托管IP没有对应的资源实例ID，请填写"none";
        # @type InstanceId: String
        # @param DeviceType: 产品分类下的子类型，绑定操作为必填项，解绑操作可不填。取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param IspCode: 运营商，绑定操作为必填项，解绑操作可不填。0：电信；1：联通；2：移动；5：BGP
        # @type IspCode: Integer

        attr_accessor :Ip, :BizType, :InstanceId, :DeviceType, :IspCode
        
        def initialize(ip=nil, biztype=nil, instanceid=nil, devicetype=nil, ispcode=nil)
          @Ip = ip
          @BizType = biztype
          @InstanceId = instanceid
          @DeviceType = devicetype
          @IspCode = ispcode
        end

        def deserialize(params)
          @Ip = params['Ip']
          @BizType = params['BizType']
          @InstanceId = params['InstanceId']
          @DeviceType = params['DeviceType']
          @IspCode = params['IspCode']
        end
      end

      # CC分级策略
      class CCLevelPolicy < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: Ip
        # @type Ip: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Level: 防护等级，可取值default表示默认策略，loose表示宽松，strict表示严格
        # @type Level: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :InstanceId, :Ip, :Protocol, :Domain, :Level, :CreateTime, :ModifyTime
        
        def initialize(instanceid=nil, ip=nil, protocol=nil, domain=nil, level=nil, createtime=nil, modifytime=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Protocol = protocol
          @Domain = domain
          @Level = level
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @Level = params['Level']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # CC精准防护配置项
      class CCPrecisionPlyRecord < TencentCloud::Common::AbstractModel
        # @param FieldType: 配置项类型，当前仅支持value
        # @type FieldType: String
        # @param FieldName: 配置字段，可取值cgi， ua， cookie， referer， accept,  srcip
        # @type FieldName: String
        # @param Value: 配置取值
        # @type Value: String
        # @param ValueOperator: 配置项值比对方式，可取值equal ，not_equal， include
        # @type ValueOperator: String

        attr_accessor :FieldType, :FieldName, :Value, :ValueOperator
        
        def initialize(fieldtype=nil, fieldname=nil, value=nil, valueoperator=nil)
          @FieldType = fieldtype
          @FieldName = fieldname
          @Value = value
          @ValueOperator = valueoperator
        end

        def deserialize(params)
          @FieldType = params['FieldType']
          @FieldName = params['FieldName']
          @Value = params['Value']
          @ValueOperator = params['ValueOperator']
        end
      end

      # CC精准防护策略信息
      class CCPrecisionPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id
        # @type PolicyId: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址
        # @type Ip: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Domain: 域名
        # @type Domain: String
        # @param PolicyAction: 策略方式（丢弃或验证码）
        # @type PolicyAction: String
        # @param PolicyList: 策略列表
        # @type PolicyList: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :PolicyId, :InstanceId, :Ip, :Protocol, :Domain, :PolicyAction, :PolicyList, :CreateTime, :ModifyTime
        
        def initialize(policyid=nil, instanceid=nil, ip=nil, protocol=nil, domain=nil, policyaction=nil, policylist=nil, createtime=nil, modifytime=nil)
          @PolicyId = policyid
          @InstanceId = instanceid
          @Ip = ip
          @Protocol = protocol
          @Domain = domain
          @PolicyAction = policyaction
          @PolicyList = policylist
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @PolicyAction = params['PolicyAction']
          unless params['PolicyList'].nil?
            @PolicyList = []
            params['PolicyList'].each do |i|
              ccprecisionplyrecord_tmp = CCPrecisionPlyRecord.new
              ccprecisionplyrecord_tmp.deserialize(i)
              @PolicyList << ccprecisionplyrecord_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # CC频率限制策略
      class CCReqLimitPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id
        # @type PolicyId: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址
        # @type Ip: String
        # @param Protocol: 协议，可取值HTTP，HTTPS
        # @type Protocol: String
        # @param Domain: 域名
        # @type Domain: String
        # @param PolicyRecord: 策略项
        # @type PolicyRecord: :class:`Tencentcloud::Antiddos.v20200309.models.CCReqLimitPolicyRecord`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :PolicyId, :InstanceId, :Ip, :Protocol, :Domain, :PolicyRecord, :CreateTime, :ModifyTime
        
        def initialize(policyid=nil, instanceid=nil, ip=nil, protocol=nil, domain=nil, policyrecord=nil, createtime=nil, modifytime=nil)
          @PolicyId = policyid
          @InstanceId = instanceid
          @Ip = ip
          @Protocol = protocol
          @Domain = domain
          @PolicyRecord = policyrecord
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          unless params['PolicyRecord'].nil?
            @PolicyRecord = CCReqLimitPolicyRecord.new
            @PolicyRecord.deserialize(params['PolicyRecord'])
          end
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # CC频率限制策略项字段
      class CCReqLimitPolicyRecord < TencentCloud::Common::AbstractModel
        # @param Period: 统计周期，可取值1，10，30，60，单位秒
        # @type Period: Integer
        # @param RequestNum: 请求数，取值1~20000
        # @type RequestNum: Integer
        # @param Action: 频率限制策略方式，可取值alg表示验证码，drop表示丢弃
        # @type Action: String
        # @param ExecuteDuration: 频率限制策略时长，可取值1~86400，单位秒
        # @type ExecuteDuration: Integer
        # @param Mode: 策略项比对方式，可取值include表示包含，equal表示等于
        # @type Mode: String
        # @param Uri: Uri，三个策略项仅可填其中之一
        # @type Uri: String
        # @param UserAgent: User-Agent，三个策略项仅可填其中之一
        # @type UserAgent: String
        # @param Cookie: Cookie，三个策略项仅可填其中之一
        # @type Cookie: String

        attr_accessor :Period, :RequestNum, :Action, :ExecuteDuration, :Mode, :Uri, :UserAgent, :Cookie
        
        def initialize(period=nil, requestnum=nil, action=nil, executeduration=nil, mode=nil, uri=nil, useragent=nil, cookie=nil)
          @Period = period
          @RequestNum = requestnum
          @Action = action
          @ExecuteDuration = executeduration
          @Mode = mode
          @Uri = uri
          @UserAgent = useragent
          @Cookie = cookie
        end

        def deserialize(params)
          @Period = params['Period']
          @RequestNum = params['RequestNum']
          @Action = params['Action']
          @ExecuteDuration = params['ExecuteDuration']
          @Mode = params['Mode']
          @Uri = params['Uri']
          @UserAgent = params['UserAgent']
          @Cookie = params['Cookie']
        end
      end

      # CC清洗阈值策略
      class CCThresholdPolicy < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址
        # @type Ip: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Threshold: 清洗阈值
        # @type Threshold: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :InstanceId, :Ip, :Protocol, :Domain, :Threshold, :CreateTime, :ModifyTime
        
        def initialize(instanceid=nil, ip=nil, protocol=nil, domain=nil, threshold=nil, createtime=nil, modifytime=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Protocol = protocol
          @Domain = domain
          @Threshold = threshold
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @Threshold = params['Threshold']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # CC四层黑白名单列表
      class CcBlackWhiteIpPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id
        # @type PolicyId: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String
        # @param BlackWhiteIp: 黑白名单IP地址
        # @type BlackWhiteIp: String
        # @param Mask: 掩码
        # @type Mask: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :PolicyId, :InstanceId, :Ip, :Domain, :Protocol, :Type, :BlackWhiteIp, :Mask, :CreateTime, :ModifyTime
        
        def initialize(policyid=nil, instanceid=nil, ip=nil, domain=nil, protocol=nil, type=nil, blackwhiteip=nil, mask=nil, createtime=nil, modifytime=nil)
          @PolicyId = policyid
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
          @Type = type
          @BlackWhiteIp = blackwhiteip
          @Mask = mask
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @Type = params['Type']
          @BlackWhiteIp = params['BlackWhiteIp']
          @Mask = params['Mask']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # DDoS防护的区域封禁配置
      class CcGeoIPBlockConfig < TencentCloud::Common::AbstractModel
        # @param RegionType: 区域类型，取值[
        # oversea(海外)
        # china(国内)
        # customized(自定义地区)
        # ]
        # @type RegionType: String
        # @param Action: 封禁动作，取值[
        # drop(拦截)
        # alg(人机校验)
        # ]
        # @type Action: String
        # @param Id: 配置ID，配置添加成功后生成；添加新配置时不用填写此字段，修改或删除配置时需要填写配置ID
        # @type Id: String
        # @param AreaList: 当RegionType为customized时，必须填写AreaList；当RegionType为china或oversea时，AreaList为空
        # @type AreaList: Array

        attr_accessor :RegionType, :Action, :Id, :AreaList
        
        def initialize(regiontype=nil, action=nil, id=nil, arealist=nil)
          @RegionType = regiontype
          @Action = action
          @Id = id
          @AreaList = arealist
        end

        def deserialize(params)
          @RegionType = params['RegionType']
          @Action = params['Action']
          @Id = params['Id']
          @AreaList = params['AreaList']
        end
      end

      # CC地域封禁列表详情
      class CcGeoIpPolicyNew < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id
        # @type PolicyId: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议，可取值HTTP，HTTPS
        # @type Protocol: String
        # @param Action: 用户动作，drop或alg
        # @type Action: String
        # @param RegionType: 地域类型，分为china, oversea与customized
        # @type RegionType: String
        # @param AreaList: 用户选择封禁的地域ID列表
        # @type AreaList: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :PolicyId, :InstanceId, :Ip, :Domain, :Protocol, :Action, :RegionType, :AreaList, :CreateTime, :ModifyTime
        
        def initialize(policyid=nil, instanceid=nil, ip=nil, domain=nil, protocol=nil, action=nil, regiontype=nil, arealist=nil, createtime=nil, modifytime=nil)
          @PolicyId = policyid
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
          @Action = action
          @RegionType = regiontype
          @AreaList = arealist
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @Action = params['Action']
          @RegionType = params['RegionType']
          @AreaList = params['AreaList']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 使用证书的规则集合
      class CertIdInsL7Rules < TencentCloud::Common::AbstractModel
        # @param L7Rules: 使用证书的规则列表
        # @type L7Rules: Array
        # @param CertId: 证书ID
        # @type CertId: String

        attr_accessor :L7Rules, :CertId
        
        def initialize(l7rules=nil, certid=nil)
          @L7Rules = l7rules
          @CertId = certid
        end

        def deserialize(params)
          unless params['L7Rules'].nil?
            @L7Rules = []
            params['L7Rules'].each do |i|
              insl7rules_tmp = InsL7Rules.new
              insl7rules_tmp.deserialize(i)
              @L7Rules << insl7rules_tmp
            end
          end
          @CertId = params['CertId']
        end
      end

      # 连接抑制相关配置
      class ConnectLimitConfig < TencentCloud::Common::AbstractModel
        # @param SdNewLimit: 基于源IP+目的IP的每秒新建数限制
        # @type SdNewLimit: Integer
        # @param DstNewLimit: 基于目的IP的每秒新建数限制
        # @type DstNewLimit: Integer
        # @param SdConnLimit: 基于源IP+目的IP的并发连接控制
        # @type SdConnLimit: Integer
        # @param DstConnLimit: 基于目的IP+目的端口的并发连接控制
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

        attr_accessor :SdNewLimit, :DstNewLimit, :SdConnLimit, :DstConnLimit, :BadConnThreshold, :NullConnEnable, :ConnTimeout, :SynRate, :SynLimit
        
        def initialize(sdnewlimit=nil, dstnewlimit=nil, sdconnlimit=nil, dstconnlimit=nil, badconnthreshold=nil, nullconnenable=nil, conntimeout=nil, synrate=nil, synlimit=nil)
          @SdNewLimit = sdnewlimit
          @DstNewLimit = dstnewlimit
          @SdConnLimit = sdconnlimit
          @DstConnLimit = dstconnlimit
          @BadConnThreshold = badconnthreshold
          @NullConnEnable = nullconnenable
          @ConnTimeout = conntimeout
          @SynRate = synrate
          @SynLimit = synlimit
        end

        def deserialize(params)
          @SdNewLimit = params['SdNewLimit']
          @DstNewLimit = params['DstNewLimit']
          @SdConnLimit = params['SdConnLimit']
          @DstConnLimit = params['DstConnLimit']
          @BadConnThreshold = params['BadConnThreshold']
          @NullConnEnable = params['NullConnEnable']
          @ConnTimeout = params['ConnTimeout']
          @SynRate = params['SynRate']
          @SynLimit = params['SynLimit']
        end
      end

      # 连接抑制列表
      class ConnectLimitRelation < TencentCloud::Common::AbstractModel
        # @param ConnectLimitConfig: 连接抑制配置
        # @type ConnectLimitConfig: :class:`Tencentcloud::Antiddos.v20200309.models.ConnectLimitConfig`
        # @param InstanceDetailList: 连接抑制关联的实例信息
        # @type InstanceDetailList: Array

        attr_accessor :ConnectLimitConfig, :InstanceDetailList
        
        def initialize(connectlimitconfig=nil, instancedetaillist=nil)
          @ConnectLimitConfig = connectlimitconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['ConnectLimitConfig'].nil?
            @ConnectLimitConfig = ConnectLimitConfig.new
            @ConnectLimitConfig.deserialize(params['ConnectLimitConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # CreateBlackWhiteIpList请求参数结构体
      class CreateBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param IpList: IP列表
        # @type IpList: Array
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String

        attr_accessor :InstanceId, :IpList, :Type
        
        def initialize(instanceid=nil, iplist=nil, type=nil)
          @InstanceId = instanceid
          @IpList = iplist
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IpList = params['IpList']
          @Type = params['Type']
        end
      end

      # CreateBlackWhiteIpList返回参数结构体
      class CreateBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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
        # @type Success: :class:`Tencentcloud::Antiddos.v20200309.models.SuccessCode`
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

      # CreateCCPrecisionPolicy请求参数结构体
      class CreateCCPrecisionPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: IP值
        # @type Ip: String
        # @param Protocol: 协议， 可取值HTTP，HTTPS
        # @type Protocol: String
        # @param Domain: 域名
        # @type Domain: String
        # @param PolicyAction: 策略方式，可取值alg表示验证码，drop表示丢弃
        # @type PolicyAction: String
        # @param PolicyList: 策略记录
        # @type PolicyList: Array

        attr_accessor :InstanceId, :Ip, :Protocol, :Domain, :PolicyAction, :PolicyList
        
        def initialize(instanceid=nil, ip=nil, protocol=nil, domain=nil, policyaction=nil, policylist=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Protocol = protocol
          @Domain = domain
          @PolicyAction = policyaction
          @PolicyList = policylist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @PolicyAction = params['PolicyAction']
          unless params['PolicyList'].nil?
            @PolicyList = []
            params['PolicyList'].each do |i|
              ccprecisionplyrecord_tmp = CCPrecisionPlyRecord.new
              ccprecisionplyrecord_tmp.deserialize(i)
              @PolicyList << ccprecisionplyrecord_tmp
            end
          end
        end
      end

      # CreateCCPrecisionPolicy返回参数结构体
      class CreateCCPrecisionPolicyResponse < TencentCloud::Common::AbstractModel
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

      # CreateCCReqLimitPolicy请求参数结构体
      class CreateCCReqLimitPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: IP值
        # @type Ip: String
        # @param Protocol: 协议，可取值HTTP，HTTPS
        # @type Protocol: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Policy: 策略项
        # @type Policy: :class:`Tencentcloud::Antiddos.v20200309.models.CCReqLimitPolicyRecord`

        attr_accessor :InstanceId, :Ip, :Protocol, :Domain, :Policy
        
        def initialize(instanceid=nil, ip=nil, protocol=nil, domain=nil, policy=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Protocol = protocol
          @Domain = domain
          @Policy = policy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          unless params['Policy'].nil?
            @Policy = CCReqLimitPolicyRecord.new
            @Policy.deserialize(params['Policy'])
          end
        end
      end

      # CreateCCReqLimitPolicy返回参数结构体
      class CreateCCReqLimitPolicyResponse < TencentCloud::Common::AbstractModel
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

      # CreateCcBlackWhiteIpList请求参数结构体
      class CreateCcBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param IpList: IP列表
        # @type IpList: Array
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String
        # @param Ip: Ip地址
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议
        # @type Protocol: String

        attr_accessor :InstanceId, :IpList, :Type, :Ip, :Domain, :Protocol
        
        def initialize(instanceid=nil, iplist=nil, type=nil, ip=nil, domain=nil, protocol=nil)
          @InstanceId = instanceid
          @IpList = iplist
          @Type = type
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['IpList'].nil?
            @IpList = []
            params['IpList'].each do |i|
              ipsegment_tmp = IpSegment.new
              ipsegment_tmp.deserialize(i)
              @IpList << ipsegment_tmp
            end
          end
          @Type = params['Type']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # CreateCcBlackWhiteIpList返回参数结构体
      class CreateCcBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # CreateCcGeoIPBlockConfig请求参数结构体
      class CreateCcGeoIPBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param IP: ip地址
        # @type IP: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议类型
        # @type Protocol: String
        # @param CcGeoIPBlockConfig: CC区域封禁配置，填写参数时配置ID请为空
        # @type CcGeoIPBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.CcGeoIPBlockConfig`

        attr_accessor :InstanceId, :IP, :Domain, :Protocol, :CcGeoIPBlockConfig
        
        def initialize(instanceid=nil, ip=nil, domain=nil, protocol=nil, ccgeoipblockconfig=nil)
          @InstanceId = instanceid
          @IP = ip
          @Domain = domain
          @Protocol = protocol
          @CcGeoIPBlockConfig = ccgeoipblockconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IP = params['IP']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          unless params['CcGeoIPBlockConfig'].nil?
            @CcGeoIPBlockConfig = CcGeoIPBlockConfig.new
            @CcGeoIPBlockConfig.deserialize(params['CcGeoIPBlockConfig'])
          end
        end
      end

      # CreateCcGeoIPBlockConfig返回参数结构体
      class CreateCcGeoIPBlockConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateDDoSAI请求参数结构体
      class CreateDDoSAIRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdList: 资源实例ID列表
        # @type InstanceIdList: Array
        # @param DDoSAI: AI防护开关，取值[
        # on(开启)
        # off(关闭)
        # ]
        # @type DDoSAI: String

        attr_accessor :InstanceIdList, :DDoSAI
        
        def initialize(instanceidlist=nil, ddosai=nil)
          @InstanceIdList = instanceidlist
          @DDoSAI = ddosai
        end

        def deserialize(params)
          @InstanceIdList = params['InstanceIdList']
          @DDoSAI = params['DDoSAI']
        end
      end

      # CreateDDoSAI返回参数结构体
      class CreateDDoSAIResponse < TencentCloud::Common::AbstractModel
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

      # CreateDDoSBlackWhiteIpList请求参数结构体
      class CreateDDoSBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param IpList: IP列表
        # @type IpList: Array
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String

        attr_accessor :InstanceId, :IpList, :Type
        
        def initialize(instanceid=nil, iplist=nil, type=nil)
          @InstanceId = instanceid
          @IpList = iplist
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['IpList'].nil?
            @IpList = []
            params['IpList'].each do |i|
              ipsegment_tmp = IpSegment.new
              ipsegment_tmp.deserialize(i)
              @IpList << ipsegment_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # CreateDDoSBlackWhiteIpList返回参数结构体
      class CreateDDoSBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # CreateDDoSConnectLimit请求参数结构体
      class CreateDDoSConnectLimitRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例Id
        # @type InstanceId: String
        # @param ConnectLimitConfig: 连接抑制配置
        # @type ConnectLimitConfig: :class:`Tencentcloud::Antiddos.v20200309.models.ConnectLimitConfig`

        attr_accessor :InstanceId, :ConnectLimitConfig
        
        def initialize(instanceid=nil, connectlimitconfig=nil)
          @InstanceId = instanceid
          @ConnectLimitConfig = connectlimitconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ConnectLimitConfig'].nil?
            @ConnectLimitConfig = ConnectLimitConfig.new
            @ConnectLimitConfig.deserialize(params['ConnectLimitConfig'])
          end
        end
      end

      # CreateDDoSConnectLimit返回参数结构体
      class CreateDDoSConnectLimitResponse < TencentCloud::Common::AbstractModel
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

      # CreateDDoSGeoIPBlockConfig请求参数结构体
      class CreateDDoSGeoIPBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param DDoSGeoIPBlockConfig: DDoS区域封禁配置，填写参数时配置ID请为空
        # @type DDoSGeoIPBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSGeoIPBlockConfig`

        attr_accessor :InstanceId, :DDoSGeoIPBlockConfig
        
        def initialize(instanceid=nil, ddosgeoipblockconfig=nil)
          @InstanceId = instanceid
          @DDoSGeoIPBlockConfig = ddosgeoipblockconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DDoSGeoIPBlockConfig'].nil?
            @DDoSGeoIPBlockConfig = DDoSGeoIPBlockConfig.new
            @DDoSGeoIPBlockConfig.deserialize(params['DDoSGeoIPBlockConfig'])
          end
        end
      end

      # CreateDDoSGeoIPBlockConfig返回参数结构体
      class CreateDDoSGeoIPBlockConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateDDoSSpeedLimitConfig请求参数结构体
      class CreateDDoSSpeedLimitConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param DDoSSpeedLimitConfig: 访问限速配置，填写参数时配置ID请为空
        # @type DDoSSpeedLimitConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSSpeedLimitConfig`

        attr_accessor :InstanceId, :DDoSSpeedLimitConfig
        
        def initialize(instanceid=nil, ddosspeedlimitconfig=nil)
          @InstanceId = instanceid
          @DDoSSpeedLimitConfig = ddosspeedlimitconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DDoSSpeedLimitConfig'].nil?
            @DDoSSpeedLimitConfig = DDoSSpeedLimitConfig.new
            @DDoSSpeedLimitConfig.deserialize(params['DDoSSpeedLimitConfig'])
          end
        end
      end

      # CreateDDoSSpeedLimitConfig返回参数结构体
      class CreateDDoSSpeedLimitConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateDefaultAlarmThreshold请求参数结构体
      class CreateDefaultAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param DefaultAlarmConfig: 默认告警阈值配置
        # @type DefaultAlarmConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DefaultAlarmThreshold`
        # @param InstanceType: 产品类型，取值[
        # bgp(表示高防包产品)
        # bgpip(表示高防IP产品)
        # ]
        # @type InstanceType: String

        attr_accessor :DefaultAlarmConfig, :InstanceType
        
        def initialize(defaultalarmconfig=nil, instancetype=nil)
          @DefaultAlarmConfig = defaultalarmconfig
          @InstanceType = instancetype
        end

        def deserialize(params)
          unless params['DefaultAlarmConfig'].nil?
            @DefaultAlarmConfig = DefaultAlarmThreshold.new
            @DefaultAlarmConfig.deserialize(params['DefaultAlarmConfig'])
          end
          @InstanceType = params['InstanceType']
        end
      end

      # CreateDefaultAlarmThreshold返回参数结构体
      class CreateDefaultAlarmThresholdResponse < TencentCloud::Common::AbstractModel
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

      # CreateIPAlarmThresholdConfig请求参数结构体
      class CreateIPAlarmThresholdConfigRequest < TencentCloud::Common::AbstractModel
        # @param IpAlarmThresholdConfigList: IP告警阈值配置列表
        # @type IpAlarmThresholdConfigList: Array

        attr_accessor :IpAlarmThresholdConfigList
        
        def initialize(ipalarmthresholdconfiglist=nil)
          @IpAlarmThresholdConfigList = ipalarmthresholdconfiglist
        end

        def deserialize(params)
          unless params['IpAlarmThresholdConfigList'].nil?
            @IpAlarmThresholdConfigList = []
            params['IpAlarmThresholdConfigList'].each do |i|
              ipalarmthresholdrelation_tmp = IPAlarmThresholdRelation.new
              ipalarmthresholdrelation_tmp.deserialize(i)
              @IpAlarmThresholdConfigList << ipalarmthresholdrelation_tmp
            end
          end
        end
      end

      # CreateIPAlarmThresholdConfig返回参数结构体
      class CreateIPAlarmThresholdConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateL7RuleCerts请求参数结构体
      class CreateL7RuleCertsRequest < TencentCloud::Common::AbstractModel
        # @param CertId: SSL证书ID
        # @type CertId: String
        # @param L7Rules: L7域名转发规则列表
        # @type L7Rules: Array

        attr_accessor :CertId, :L7Rules
        
        def initialize(certid=nil, l7rules=nil)
          @CertId = certid
          @L7Rules = l7rules
        end

        def deserialize(params)
          @CertId = params['CertId']
          unless params['L7Rules'].nil?
            @L7Rules = []
            params['L7Rules'].each do |i|
              insl7rules_tmp = InsL7Rules.new
              insl7rules_tmp.deserialize(i)
              @L7Rules << insl7rules_tmp
            end
          end
        end
      end

      # CreateL7RuleCerts返回参数结构体
      class CreateL7RuleCertsResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Antiddos.v20200309.models.SuccessCode`
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

      # CreatePacketFilterConfig请求参数结构体
      class CreatePacketFilterConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param PacketFilterConfig: 特征过滤规则
        # @type PacketFilterConfig: :class:`Tencentcloud::Antiddos.v20200309.models.PacketFilterConfig`

        attr_accessor :InstanceId, :PacketFilterConfig
        
        def initialize(instanceid=nil, packetfilterconfig=nil)
          @InstanceId = instanceid
          @PacketFilterConfig = packetfilterconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['PacketFilterConfig'].nil?
            @PacketFilterConfig = PacketFilterConfig.new
            @PacketFilterConfig.deserialize(params['PacketFilterConfig'])
          end
        end
      end

      # CreatePacketFilterConfig返回参数结构体
      class CreatePacketFilterConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreatePortAclConfigList请求参数结构体
      class CreatePortAclConfigListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdList: 资源实例ID列表
        # @type InstanceIdList: Array
        # @param AclConfig: 端口acl策略
        # @type AclConfig: :class:`Tencentcloud::Antiddos.v20200309.models.AclConfig`

        attr_accessor :InstanceIdList, :AclConfig
        
        def initialize(instanceidlist=nil, aclconfig=nil)
          @InstanceIdList = instanceidlist
          @AclConfig = aclconfig
        end

        def deserialize(params)
          @InstanceIdList = params['InstanceIdList']
          unless params['AclConfig'].nil?
            @AclConfig = AclConfig.new
            @AclConfig.deserialize(params['AclConfig'])
          end
        end
      end

      # CreatePortAclConfigList返回参数结构体
      class CreatePortAclConfigListResponse < TencentCloud::Common::AbstractModel
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

      # CreatePortAclConfig请求参数结构体
      class CreatePortAclConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param AclConfig: 端口acl策略
        # @type AclConfig: :class:`Tencentcloud::Antiddos.v20200309.models.AclConfig`

        attr_accessor :InstanceId, :AclConfig
        
        def initialize(instanceid=nil, aclconfig=nil)
          @InstanceId = instanceid
          @AclConfig = aclconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AclConfig'].nil?
            @AclConfig = AclConfig.new
            @AclConfig.deserialize(params['AclConfig'])
          end
        end
      end

      # CreatePortAclConfig返回参数结构体
      class CreatePortAclConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateProtocolBlockConfig请求参数结构体
      class CreateProtocolBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param ProtocolBlockConfig: 协议封禁配置
        # @type ProtocolBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.ProtocolBlockConfig`

        attr_accessor :InstanceId, :ProtocolBlockConfig
        
        def initialize(instanceid=nil, protocolblockconfig=nil)
          @InstanceId = instanceid
          @ProtocolBlockConfig = protocolblockconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ProtocolBlockConfig'].nil?
            @ProtocolBlockConfig = ProtocolBlockConfig.new
            @ProtocolBlockConfig.deserialize(params['ProtocolBlockConfig'])
          end
        end
      end

      # CreateProtocolBlockConfig返回参数结构体
      class CreateProtocolBlockConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateSchedulingDomain请求参数结构体
      class CreateSchedulingDomainRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateSchedulingDomain返回参数结构体
      class CreateSchedulingDomainResponse < TencentCloud::Common::AbstractModel
        # @param Domain: 新创建的域名
        # @type Domain: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domain, :RequestId
        
        def initialize(domain=nil, requestid=nil)
          @Domain = domain
          @RequestId = requestid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RequestId = params['RequestId']
        end
      end

      # CreateWaterPrintConfig请求参数结构体
      class CreateWaterPrintConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param WaterPrintConfig: 水印防护配置
        # @type WaterPrintConfig: :class:`Tencentcloud::Antiddos.v20200309.models.WaterPrintConfig`

        attr_accessor :InstanceId, :WaterPrintConfig
        
        def initialize(instanceid=nil, waterprintconfig=nil)
          @InstanceId = instanceid
          @WaterPrintConfig = waterprintconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['WaterPrintConfig'].nil?
            @WaterPrintConfig = WaterPrintConfig.new
            @WaterPrintConfig.deserialize(params['WaterPrintConfig'])
          end
        end
      end

      # CreateWaterPrintConfig返回参数结构体
      class CreateWaterPrintConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateWaterPrintKey请求参数结构体
      class CreateWaterPrintKeyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CreateWaterPrintKey返回参数结构体
      class CreateWaterPrintKeyResponse < TencentCloud::Common::AbstractModel
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

      # DDoS防护的AI防护开关
      class DDoSAIRelation < TencentCloud::Common::AbstractModel
        # @param DDoSAI: AI防护开关，取值[
        # on(开启)
        # off(关闭)
        # ]
        # @type DDoSAI: String
        # @param InstanceDetailList: AI防护开关所属的资源实例
        # @type InstanceDetailList: Array

        attr_accessor :DDoSAI, :InstanceDetailList
        
        def initialize(ddosai=nil, instancedetaillist=nil)
          @DDoSAI = ddosai
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          @DDoSAI = params['DDoSAI']
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # DDoS防护的区域封禁配置
      class DDoSGeoIPBlockConfig < TencentCloud::Common::AbstractModel
        # @param RegionType: 区域类型，取值[
        # oversea(海外)
        # china(国内)
        # customized(自定义地区)
        # ]
        # @type RegionType: String
        # @param Action: 封禁动作，取值[
        # drop(拦截)
        # trans(放行)
        # ]
        # @type Action: String
        # @param Id: 配置ID，配置添加成功后生成；添加新配置时不用填写此字段，修改或删除配置时需要填写配置ID
        # @type Id: String
        # @param AreaList: 当RegionType为customized时，必须填写AreaList，且最多填写128个；
        # @type AreaList: Array

        attr_accessor :RegionType, :Action, :Id, :AreaList
        
        def initialize(regiontype=nil, action=nil, id=nil, arealist=nil)
          @RegionType = regiontype
          @Action = action
          @Id = id
          @AreaList = arealist
        end

        def deserialize(params)
          @RegionType = params['RegionType']
          @Action = params['Action']
          @Id = params['Id']
          @AreaList = params['AreaList']
        end
      end

      # DDoS区域封禁配置相关信息
      class DDoSGeoIPBlockConfigRelation < TencentCloud::Common::AbstractModel
        # @param GeoIPBlockConfig: DDoS区域封禁配置
        # @type GeoIPBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSGeoIPBlockConfig`
        # @param InstanceDetailList: 配置所属的资源实例
        # @type InstanceDetailList: Array

        attr_accessor :GeoIPBlockConfig, :InstanceDetailList
        
        def initialize(geoipblockconfig=nil, instancedetaillist=nil)
          @GeoIPBlockConfig = geoipblockconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['GeoIPBlockConfig'].nil?
            @GeoIPBlockConfig = DDoSGeoIPBlockConfig.new
            @GeoIPBlockConfig.deserialize(params['GeoIPBlockConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # DDoS访问限速配置
      class DDoSSpeedLimitConfig < TencentCloud::Common::AbstractModel
        # @param Mode: 限速模式，取值[
        # 1(基于源IP限速)
        # 2(基于目的端口限速)
        # ]
        # @type Mode: Integer
        # @param SpeedValues: 限速值，每种类型的限速值最多支持1个；该字段数组至少有一种限速值
        # @type SpeedValues: Array
        # @param DstPortScopes: 此字段已弃用，请填写新字段DstPortList。
        # @type DstPortScopes: Array
        # @param Id: 配置ID，配置添加成功后生成；添加新限制配置时不用填写此字段，修改或删除限速配置时需要填写配置ID
        # @type Id: String
        # @param ProtocolList: IP protocol numbers, 取值[
        # ALL(所有协议)
        # TCP(tcp协议)
        # UDP(udp协议)
        # SMP(smp协议)
        # 1;2-100(自定义协议号范围,最多8个)
        # ]
        # 注意：当自定义协议号范围时，只能填写协议号，多个范围;分隔；当填写ALL时不能再填写其他协议或协议号。
        # @type ProtocolList: String
        # @param DstPortList: 端口范围列表，最多8个，多个;分隔，范围表示用-；此端口范围必须填写；填写样式1:0-65535，样式2:80;443;1000-2000
        # @type DstPortList: String

        attr_accessor :Mode, :SpeedValues, :DstPortScopes, :Id, :ProtocolList, :DstPortList
        
        def initialize(mode=nil, speedvalues=nil, dstportscopes=nil, id=nil, protocollist=nil, dstportlist=nil)
          @Mode = mode
          @SpeedValues = speedvalues
          @DstPortScopes = dstportscopes
          @Id = id
          @ProtocolList = protocollist
          @DstPortList = dstportlist
        end

        def deserialize(params)
          @Mode = params['Mode']
          unless params['SpeedValues'].nil?
            @SpeedValues = []
            params['SpeedValues'].each do |i|
              speedvalue_tmp = SpeedValue.new
              speedvalue_tmp.deserialize(i)
              @SpeedValues << speedvalue_tmp
            end
          end
          unless params['DstPortScopes'].nil?
            @DstPortScopes = []
            params['DstPortScopes'].each do |i|
              portsegment_tmp = PortSegment.new
              portsegment_tmp.deserialize(i)
              @DstPortScopes << portsegment_tmp
            end
          end
          @Id = params['Id']
          @ProtocolList = params['ProtocolList']
          @DstPortList = params['DstPortList']
        end
      end

      # DDoS访问限速配置相关信息
      class DDoSSpeedLimitConfigRelation < TencentCloud::Common::AbstractModel
        # @param SpeedLimitConfig: DDoS访问限速配置
        # @type SpeedLimitConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSSpeedLimitConfig`
        # @param InstanceDetailList: 配置所属的资源实例
        # @type InstanceDetailList: Array

        attr_accessor :SpeedLimitConfig, :InstanceDetailList
        
        def initialize(speedlimitconfig=nil, instancedetaillist=nil)
          @SpeedLimitConfig = speedlimitconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['SpeedLimitConfig'].nil?
            @SpeedLimitConfig = DDoSSpeedLimitConfig.new
            @SpeedLimitConfig.deserialize(params['SpeedLimitConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # 单IP默认告警阈值配置
      class DefaultAlarmThreshold < TencentCloud::Common::AbstractModel
        # @param AlarmType: 告警阈值类型，取值[
        # 1(入流量告警阈值)
        # 2(攻击清洗流量告警阈值)
        # ]
        # @type AlarmType: Integer
        # @param AlarmThreshold: 告警阈值，单位Mbps，取值>=0；当作为输入参数时，设置0会删除告警阈值配置；
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

      # DeleteBlackWhiteIpList请求参数结构体
      class DeleteBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param IpList: IP列表
        # @type IpList: Array
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String

        attr_accessor :InstanceId, :IpList, :Type
        
        def initialize(instanceid=nil, iplist=nil, type=nil)
          @InstanceId = instanceid
          @IpList = iplist
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IpList = params['IpList']
          @Type = params['Type']
        end
      end

      # DeleteBlackWhiteIpList返回参数结构体
      class DeleteBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCCLevelPolicy请求参数结构体
      class DeleteCCLevelPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: 配置策略的IP
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议，可取值http
        # @type Protocol: String

        attr_accessor :InstanceId, :Ip, :Domain, :Protocol
        
        def initialize(instanceid=nil, ip=nil, domain=nil, protocol=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # DeleteCCLevelPolicy返回参数结构体
      class DeleteCCLevelPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCCPrecisionPolicy请求参数结构体
      class DeleteCCPrecisionPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param PolicyId: 策略Id
        # @type PolicyId: String

        attr_accessor :InstanceId, :PolicyId
        
        def initialize(instanceid=nil, policyid=nil)
          @InstanceId = instanceid
          @PolicyId = policyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteCCPrecisionPolicy返回参数结构体
      class DeleteCCPrecisionPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCCRequestLimitPolicy请求参数结构体
      class DeleteCCRequestLimitPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param PolicyId: 策略Id
        # @type PolicyId: String

        attr_accessor :InstanceId, :PolicyId
        
        def initialize(instanceid=nil, policyid=nil)
          @InstanceId = instanceid
          @PolicyId = policyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteCCRequestLimitPolicy返回参数结构体
      class DeleteCCRequestLimitPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCCThresholdPolicy请求参数结构体
      class DeleteCCThresholdPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: 配置策略的IP
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议，可取值http
        # @type Protocol: String

        attr_accessor :InstanceId, :Ip, :Domain, :Protocol
        
        def initialize(instanceid=nil, ip=nil, domain=nil, protocol=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # DeleteCCThresholdPolicy返回参数结构体
      class DeleteCCThresholdPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCcBlackWhiteIpList请求参数结构体
      class DeleteCcBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param PolicyId: 策略Id
        # @type PolicyId: String

        attr_accessor :InstanceId, :PolicyId
        
        def initialize(instanceid=nil, policyid=nil)
          @InstanceId = instanceid
          @PolicyId = policyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteCcBlackWhiteIpList返回参数结构体
      class DeleteCcBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCcGeoIPBlockConfig请求参数结构体
      class DeleteCcGeoIPBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param CcGeoIPBlockConfig: CC区域封禁配置，填写参数时配置ID不能为空
        # @type CcGeoIPBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.CcGeoIPBlockConfig`

        attr_accessor :InstanceId, :CcGeoIPBlockConfig
        
        def initialize(instanceid=nil, ccgeoipblockconfig=nil)
          @InstanceId = instanceid
          @CcGeoIPBlockConfig = ccgeoipblockconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['CcGeoIPBlockConfig'].nil?
            @CcGeoIPBlockConfig = CcGeoIPBlockConfig.new
            @CcGeoIPBlockConfig.deserialize(params['CcGeoIPBlockConfig'])
          end
        end
      end

      # DeleteCcGeoIPBlockConfig返回参数结构体
      class DeleteCcGeoIPBlockConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDDoSBlackWhiteIpList请求参数结构体
      class DeleteDDoSBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param IpList: IP列表
        # @type IpList: Array
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String

        attr_accessor :InstanceId, :IpList, :Type
        
        def initialize(instanceid=nil, iplist=nil, type=nil)
          @InstanceId = instanceid
          @IpList = iplist
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['IpList'].nil?
            @IpList = []
            params['IpList'].each do |i|
              ipsegment_tmp = IpSegment.new
              ipsegment_tmp.deserialize(i)
              @IpList << ipsegment_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # DeleteDDoSBlackWhiteIpList返回参数结构体
      class DeleteDDoSBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDDoSGeoIPBlockConfig请求参数结构体
      class DeleteDDoSGeoIPBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param DDoSGeoIPBlockConfig: DDoS区域封禁配置，填写参数时配置ID不能为空
        # @type DDoSGeoIPBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSGeoIPBlockConfig`

        attr_accessor :InstanceId, :DDoSGeoIPBlockConfig
        
        def initialize(instanceid=nil, ddosgeoipblockconfig=nil)
          @InstanceId = instanceid
          @DDoSGeoIPBlockConfig = ddosgeoipblockconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DDoSGeoIPBlockConfig'].nil?
            @DDoSGeoIPBlockConfig = DDoSGeoIPBlockConfig.new
            @DDoSGeoIPBlockConfig.deserialize(params['DDoSGeoIPBlockConfig'])
          end
        end
      end

      # DeleteDDoSGeoIPBlockConfig返回参数结构体
      class DeleteDDoSGeoIPBlockConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDDoSSpeedLimitConfig请求参数结构体
      class DeleteDDoSSpeedLimitConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param DDoSSpeedLimitConfig: 访问限速配置，填写参数时配置ID不能为空
        # @type DDoSSpeedLimitConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSSpeedLimitConfig`

        attr_accessor :InstanceId, :DDoSSpeedLimitConfig
        
        def initialize(instanceid=nil, ddosspeedlimitconfig=nil)
          @InstanceId = instanceid
          @DDoSSpeedLimitConfig = ddosspeedlimitconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DDoSSpeedLimitConfig'].nil?
            @DDoSSpeedLimitConfig = DDoSSpeedLimitConfig.new
            @DDoSSpeedLimitConfig.deserialize(params['DDoSSpeedLimitConfig'])
          end
        end
      end

      # DeleteDDoSSpeedLimitConfig返回参数结构体
      class DeleteDDoSSpeedLimitConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeletePacketFilterConfig请求参数结构体
      class DeletePacketFilterConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param PacketFilterConfig: 特征过滤配置
        # @type PacketFilterConfig: :class:`Tencentcloud::Antiddos.v20200309.models.PacketFilterConfig`

        attr_accessor :InstanceId, :PacketFilterConfig
        
        def initialize(instanceid=nil, packetfilterconfig=nil)
          @InstanceId = instanceid
          @PacketFilterConfig = packetfilterconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['PacketFilterConfig'].nil?
            @PacketFilterConfig = PacketFilterConfig.new
            @PacketFilterConfig.deserialize(params['PacketFilterConfig'])
          end
        end
      end

      # DeletePacketFilterConfig返回参数结构体
      class DeletePacketFilterConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeletePortAclConfig请求参数结构体
      class DeletePortAclConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param AclConfig: 端口acl策略
        # @type AclConfig: :class:`Tencentcloud::Antiddos.v20200309.models.AclConfig`

        attr_accessor :InstanceId, :AclConfig
        
        def initialize(instanceid=nil, aclconfig=nil)
          @InstanceId = instanceid
          @AclConfig = aclconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AclConfig'].nil?
            @AclConfig = AclConfig.new
            @AclConfig.deserialize(params['AclConfig'])
          end
        end
      end

      # DeletePortAclConfig返回参数结构体
      class DeletePortAclConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWaterPrintConfig请求参数结构体
      class DeleteWaterPrintConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteWaterPrintConfig返回参数结构体
      class DeleteWaterPrintConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWaterPrintKey请求参数结构体
      class DeleteWaterPrintKeyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param KeyId: 水印密钥ID
        # @type KeyId: String

        attr_accessor :InstanceId, :KeyId
        
        def initialize(instanceid=nil, keyid=nil)
          @InstanceId = instanceid
          @KeyId = keyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KeyId = params['KeyId']
        end
      end

      # DeleteWaterPrintKey返回参数结构体
      class DeleteWaterPrintKeyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBasicDeviceStatus请求参数结构体
      class DescribeBasicDeviceStatusRequest < TencentCloud::Common::AbstractModel
        # @param IpList: IP 资源列表
        # @type IpList: Array

        attr_accessor :IpList
        
        def initialize(iplist=nil)
          @IpList = iplist
        end

        def deserialize(params)
          @IpList = params['IpList']
        end
      end

      # DescribeBasicDeviceStatus返回参数结构体
      class DescribeBasicDeviceStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回资源及状态，状态码：
        # 1 - 封堵状态
        # 2 - 正常状态
        # 3 - 攻击状态
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

      # DescribeBizTrend请求参数结构体
      class DescribeBizTrendRequest < TencentCloud::Common::AbstractModel
        # @param Statistics: 统计方式，可取值max, min, avg, sum, 如统计纬度是流量速率或包量速率，仅可取值max
        # @type Statistics: String
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Period: 统计周期，可取值300，1800，3600，21600，86400，单位秒
        # @type Period: Integer
        # @param StartTime: 统计开始时间。 例：“2020-09-22 00:00:00”
        # @type StartTime: String
        # @param EndTime: 统计结束时间。 例：“2020-09-22 00:00:00”
        # @type EndTime: String
        # @param Id: 资源实例ID
        # @type Id: String
        # @param MetricName: 统计纬度，可取值connum, new_conn, inactive_conn, intraffic, outtraffic, inpkg, outpkg, qps
        # @type MetricName: String
        # @param Domain: 统计纬度为qps时，可选特定域名查询
        # @type Domain: String
        # @param ProtoInfo: 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        # @type ProtoInfo: Array

        attr_accessor :Statistics, :Business, :Period, :StartTime, :EndTime, :Id, :MetricName, :Domain, :ProtoInfo
        
        def initialize(statistics=nil, business=nil, period=nil, starttime=nil, endtime=nil, id=nil, metricname=nil, domain=nil, protoinfo=nil)
          @Statistics = statistics
          @Business = business
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Id = id
          @MetricName = metricname
          @Domain = domain
          @ProtoInfo = protoinfo
        end

        def deserialize(params)
          @Statistics = params['Statistics']
          @Business = params['Business']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @Domain = params['Domain']
          unless params['ProtoInfo'].nil?
            @ProtoInfo = []
            params['ProtoInfo'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtoInfo << protocolport_tmp
            end
          end
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

      # DescribeBlackWhiteIpList请求参数结构体
      class DescribeBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBlackWhiteIpList返回参数结构体
      class DescribeBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
        # @param BlackIpList: 黑名单IP列表
        # @type BlackIpList: Array
        # @param WhiteIpList: 白名单IP列表
        # @type WhiteIpList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlackIpList, :WhiteIpList, :RequestId
        
        def initialize(blackiplist=nil, whiteiplist=nil, requestid=nil)
          @BlackIpList = blackiplist
          @WhiteIpList = whiteiplist
          @RequestId = requestid
        end

        def deserialize(params)
          @BlackIpList = params['BlackIpList']
          @WhiteIpList = params['WhiteIpList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCLevelList请求参数结构体
      class DescribeCCLevelListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp-multip表示高防包）
        # @type Business: String
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param InstanceId: 指定实例Id
        # @type InstanceId: String

        attr_accessor :Business, :Offset, :Limit, :InstanceId
        
        def initialize(business=nil, offset=nil, limit=nil, instanceid=nil)
          @Business = business
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Business = params['Business']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCCLevelList返回参数结构体
      class DescribeCCLevelListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 分级策略列表总数
        # @type Total: Integer
        # @param LevelList: 分级策略列表详情
        # @type LevelList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :LevelList, :RequestId
        
        def initialize(total=nil, levellist=nil, requestid=nil)
          @Total = total
          @LevelList = levellist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['LevelList'].nil?
            @LevelList = []
            params['LevelList'].each do |i|
              cclevelpolicy_tmp = CCLevelPolicy.new
              cclevelpolicy_tmp.deserialize(i)
              @LevelList << cclevelpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCLevelPolicy请求参数结构体
      class DescribeCCLevelPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: IP值
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议，可取值HTTP，HTTPS
        # @type Protocol: String

        attr_accessor :InstanceId, :Ip, :Domain, :Protocol
        
        def initialize(instanceid=nil, ip=nil, domain=nil, protocol=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # DescribeCCLevelPolicy返回参数结构体
      class DescribeCCLevelPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Level: CC防护等级，可取值loose表示宽松，strict表示严格，normal表示适中， emergency表示攻击紧急， sup_loose表示超级宽松，default表示默认策略（无频控配置下发），customized表示自定义策略
        # @type Level: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Level, :RequestId
        
        def initialize(level=nil, requestid=nil)
          @Level = level
          @RequestId = requestid
        end

        def deserialize(params)
          @Level = params['Level']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCPrecisionPlyList请求参数结构体
      class DescribeCCPrecisionPlyListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip-multip：表示高防包；bgpip：表示高防ip）
        # @type Business: String
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param InstanceId: 指定特定实例Id
        # @type InstanceId: String
        # @param Ip: ip地址，普通高防ip要传该字段
        # @type Ip: String
        # @param Domain: 域名，普通高防ip要传该字段
        # @type Domain: String
        # @param Protocol: 协议，普通高防ip要传该字段
        # @type Protocol: String

        attr_accessor :Business, :Offset, :Limit, :InstanceId, :Ip, :Domain, :Protocol
        
        def initialize(business=nil, offset=nil, limit=nil, instanceid=nil, ip=nil, domain=nil, protocol=nil)
          @Business = business
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @Business = params['Business']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # DescribeCCPrecisionPlyList返回参数结构体
      class DescribeCCPrecisionPlyListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 策略列表总数
        # @type Total: Integer
        # @param PrecisionPolicyList: 策略列表详情
        # @type PrecisionPolicyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :PrecisionPolicyList, :RequestId
        
        def initialize(total=nil, precisionpolicylist=nil, requestid=nil)
          @Total = total
          @PrecisionPolicyList = precisionpolicylist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['PrecisionPolicyList'].nil?
            @PrecisionPolicyList = []
            params['PrecisionPolicyList'].each do |i|
              ccprecisionpolicy_tmp = CCPrecisionPolicy.new
              ccprecisionpolicy_tmp.deserialize(i)
              @PrecisionPolicyList << ccprecisionpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCReqLimitPolicyList请求参数结构体
      class DescribeCCReqLimitPolicyListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp-multip表示高防包，bgpip表示高防ip）
        # @type Business: String
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param InstanceId: 指定实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址，普通高防ip要传该字段
        # @type Ip: String
        # @param Domain: 域名，普通高防ip要传该字段
        # @type Domain: String
        # @param Protocol: 协议，普通高防ip要传该字段
        # @type Protocol: String

        attr_accessor :Business, :Offset, :Limit, :InstanceId, :Ip, :Domain, :Protocol
        
        def initialize(business=nil, offset=nil, limit=nil, instanceid=nil, ip=nil, domain=nil, protocol=nil)
          @Business = business
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @Business = params['Business']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # DescribeCCReqLimitPolicyList返回参数结构体
      class DescribeCCReqLimitPolicyListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 频率限制列表总数
        # @type Total: Integer
        # @param RequestLimitPolicyList: 频率限制列表详情
        # @type RequestLimitPolicyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RequestLimitPolicyList, :RequestId
        
        def initialize(total=nil, requestlimitpolicylist=nil, requestid=nil)
          @Total = total
          @RequestLimitPolicyList = requestlimitpolicylist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RequestLimitPolicyList'].nil?
            @RequestLimitPolicyList = []
            params['RequestLimitPolicyList'].each do |i|
              ccreqlimitpolicy_tmp = CCReqLimitPolicy.new
              ccreqlimitpolicy_tmp.deserialize(i)
              @RequestLimitPolicyList << ccreqlimitpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCThresholdList请求参数结构体
      class DescribeCCThresholdListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp-multip表示高防包）
        # @type Business: String
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param InstanceId: 指定实例Id
        # @type InstanceId: String

        attr_accessor :Business, :Offset, :Limit, :InstanceId
        
        def initialize(business=nil, offset=nil, limit=nil, instanceid=nil)
          @Business = business
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Business = params['Business']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCCThresholdList返回参数结构体
      class DescribeCCThresholdListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 清洗阈值策略列表总数
        # @type Total: Integer
        # @param ThresholdList: 清洗阈值策略列表详情
        # @type ThresholdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ThresholdList, :RequestId
        
        def initialize(total=nil, thresholdlist=nil, requestid=nil)
          @Total = total
          @ThresholdList = thresholdlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ThresholdList'].nil?
            @ThresholdList = []
            params['ThresholdList'].each do |i|
              ccthresholdpolicy_tmp = CCThresholdPolicy.new
              ccthresholdpolicy_tmp.deserialize(i)
              @ThresholdList << ccthresholdpolicy_tmp
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
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param MetricName: 指标，取值[inqps(总请求峰值，dropqps(攻击请求峰值))，incount(请求次数), dropcount(攻击次数)]
        # @type MetricName: String
        # @param Domain: 域名，可选
        # @type Domain: String
        # @param Id: 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        # @type Id: String

        attr_accessor :Business, :Ip, :Period, :StartTime, :EndTime, :MetricName, :Domain, :Id
        
        def initialize(business=nil, ip=nil, period=nil, starttime=nil, endtime=nil, metricname=nil, domain=nil, id=nil)
          @Business = business
          @Ip = ip
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Domain = domain
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Ip = params['Ip']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Domain = params['Domain']
          @Id = params['Id']
        end
      end

      # DescribeCCTrend返回参数结构体
      class DescribeCCTrendResponse < TencentCloud::Common::AbstractModel
        # @param Count: 值个数
        # @type Count: Integer
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Data: 值数组
        # @type Data: Array
        # @param Id: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param MetricName: 指标，取值[inqps(总请求峰值，dropqps(攻击请求峰值))，incount(请求次数), dropcount(攻击次数)]
        # @type MetricName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Business, :Ip, :Period, :StartTime, :EndTime, :Data, :Id, :MetricName, :RequestId
        
        def initialize(count=nil, business=nil, ip=nil, period=nil, starttime=nil, endtime=nil, data=nil, id=nil, metricname=nil, requestid=nil)
          @Count = count
          @Business = business
          @Ip = ip
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Id = id
          @MetricName = metricname
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @Business = params['Business']
          @Ip = params['Ip']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Data = params['Data']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcBlackWhiteIpList请求参数结构体
      class DescribeCcBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgp-multip：表示高防包；bgpip：表示高防ip）
        # @type Business: String
        # @param InstanceId: 指定特定实例Id
        # @type InstanceId: String
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param Ip: Ip地址，普通高防ip要传该字段
        # @type Ip: String
        # @param Domain: 域名，普通高防ip要传该字段
        # @type Domain: String
        # @param Protocol: 协议，普通高防ip要传该字段
        # @type Protocol: String
        # @param FilterIp: 筛选ip，需要筛选黑白名单ip时传该字段
        # @type FilterIp: String
        # @param FilterType: 黑白名单筛选字段，需要筛选黑白名单列表时传该字段
        # @type FilterType: String

        attr_accessor :Business, :InstanceId, :Offset, :Limit, :Ip, :Domain, :Protocol, :FilterIp, :FilterType
        
        def initialize(business=nil, instanceid=nil, offset=nil, limit=nil, ip=nil, domain=nil, protocol=nil, filterip=nil, filtertype=nil)
          @Business = business
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
          @FilterIp = filterip
          @FilterType = filtertype
        end

        def deserialize(params)
          @Business = params['Business']
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @FilterIp = params['FilterIp']
          @FilterType = params['FilterType']
        end
      end

      # DescribeCcBlackWhiteIpList返回参数结构体
      class DescribeCcBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
        # @param Total: CC四层黑白名单策略列表总数
        # @type Total: Integer
        # @param CcBlackWhiteIpList: CC四层黑白名单策略列表详情
        # @type CcBlackWhiteIpList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :CcBlackWhiteIpList, :RequestId
        
        def initialize(total=nil, ccblackwhiteiplist=nil, requestid=nil)
          @Total = total
          @CcBlackWhiteIpList = ccblackwhiteiplist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['CcBlackWhiteIpList'].nil?
            @CcBlackWhiteIpList = []
            params['CcBlackWhiteIpList'].each do |i|
              ccblackwhiteippolicy_tmp = CcBlackWhiteIpPolicy.new
              ccblackwhiteippolicy_tmp.deserialize(i)
              @CcBlackWhiteIpList << ccblackwhiteippolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcGeoIPBlockConfigList请求参数结构体
      class DescribeCcGeoIPBlockConfigListRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip-multip：表示高防包；bgpip：表示高防ip）
        # @type Business: String
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param InstanceId: 指定特定实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址，普通高防ip要传该字段
        # @type Ip: String
        # @param Domain: 域名，普通高防ip要传该字段
        # @type Domain: String
        # @param Protocol: 协议，普通高防ip要传该字段
        # @type Protocol: String

        attr_accessor :Business, :Offset, :Limit, :InstanceId, :Ip, :Domain, :Protocol
        
        def initialize(business=nil, offset=nil, limit=nil, instanceid=nil, ip=nil, domain=nil, protocol=nil)
          @Business = business
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
        end

        def deserialize(params)
          @Business = params['Business']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
        end
      end

      # DescribeCcGeoIPBlockConfigList返回参数结构体
      class DescribeCcGeoIPBlockConfigListResponse < TencentCloud::Common::AbstractModel
        # @param Total: CC地域封禁策略列表总数
        # @type Total: Integer
        # @param CcGeoIpPolicyList: CC地域封禁策略列表详情
        # @type CcGeoIpPolicyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :CcGeoIpPolicyList, :RequestId
        
        def initialize(total=nil, ccgeoippolicylist=nil, requestid=nil)
          @Total = total
          @CcGeoIpPolicyList = ccgeoippolicylist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['CcGeoIpPolicyList'].nil?
            @CcGeoIpPolicyList = []
            params['CcGeoIpPolicyList'].each do |i|
              ccgeoippolicynew_tmp = CcGeoIpPolicyNew.new
              ccgeoippolicynew_tmp.deserialize(i)
              @CcGeoIpPolicyList << ccgeoippolicynew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSBlackWhiteIpList请求参数结构体
      class DescribeDDoSBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDDoSBlackWhiteIpList返回参数结构体
      class DescribeDDoSBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
        # @param BlackIpList: 黑名单IP列表
        # @type BlackIpList: Array
        # @param WhiteIpList: 白名单IP列表
        # @type WhiteIpList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlackIpList, :WhiteIpList, :RequestId
        
        def initialize(blackiplist=nil, whiteiplist=nil, requestid=nil)
          @BlackIpList = blackiplist
          @WhiteIpList = whiteiplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BlackIpList'].nil?
            @BlackIpList = []
            params['BlackIpList'].each do |i|
              ipsegment_tmp = IpSegment.new
              ipsegment_tmp.deserialize(i)
              @BlackIpList << ipsegment_tmp
            end
          end
          unless params['WhiteIpList'].nil?
            @WhiteIpList = []
            params['WhiteIpList'].each do |i|
              ipsegment_tmp = IpSegment.new
              ipsegment_tmp.deserialize(i)
              @WhiteIpList << ipsegment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSConnectLimitList请求参数结构体
      class DescribeDDoSConnectLimitListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数
        # @type Limit: Integer
        # @param FilterIp: 可选参数，按照IP进行过滤
        # @type FilterIp: String
        # @param FilterInstanceId: 可选参数，按照实例id进行过滤
        # @type FilterInstanceId: String

        attr_accessor :Offset, :Limit, :FilterIp, :FilterInstanceId
        
        def initialize(offset=nil, limit=nil, filterip=nil, filterinstanceid=nil)
          @Offset = offset
          @Limit = limit
          @FilterIp = filterip
          @FilterInstanceId = filterinstanceid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterIp = params['FilterIp']
          @FilterInstanceId = params['FilterInstanceId']
        end
      end

      # DescribeDDoSConnectLimitList返回参数结构体
      class DescribeDDoSConnectLimitListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 连接抑制配置总数
        # @type Total: Integer
        # @param ConfigList: 连接抑制配置详情信息
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              connectlimitrelation_tmp = ConnectLimitRelation.new
              connectlimitrelation_tmp.deserialize(i)
              @ConfigList << connectlimitrelation_tmp
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
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param MetricName: 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        # @type MetricName: String
        # @param Id: 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        # @type Id: String

        attr_accessor :Business, :Ip, :Period, :StartTime, :EndTime, :MetricName, :Id
        
        def initialize(business=nil, ip=nil, period=nil, starttime=nil, endtime=nil, metricname=nil, id=nil)
          @Business = business
          @Ip = ip
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Id = id
        end

        def deserialize(params)
          @Business = params['Business']
          @Ip = params['Ip']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Id = params['Id']
        end
      end

      # DescribeDDoSTrend返回参数结构体
      class DescribeDDoSTrendResponse < TencentCloud::Common::AbstractModel
        # @param Count: 值个数
        # @type Count: Integer
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        # @type Business: String
        # @param Ip: 资源的IP
        # @type Ip: String
        # @param Period: 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        # @type Period: Integer
        # @param StartTime: 统计开始时间
        # @type StartTime: String
        # @param EndTime: 统计结束时间
        # @type EndTime: String
        # @param Data: 值数组，攻击流量带宽单位为Mbps，包速率单位为pps
        # @type Data: Array
        # @param Id: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param MetricName: 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        # @type MetricName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Business, :Ip, :Period, :StartTime, :EndTime, :Data, :Id, :MetricName, :RequestId
        
        def initialize(count=nil, business=nil, ip=nil, period=nil, starttime=nil, endtime=nil, data=nil, id=nil, metricname=nil, requestid=nil)
          @Count = count
          @Business = business
          @Ip = ip
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
          @Id = id
          @MetricName = metricname
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @Business = params['Business']
          @Ip = params['Ip']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Data = params['Data']
          @Id = params['Id']
          @MetricName = params['MetricName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultAlarmThreshold请求参数结构体
      class DescribeDefaultAlarmThresholdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 产品类型，取值[
        # bgp(表示高防包产品)
        # bgpip(表示高防IP产品)
        # ]
        # @type InstanceType: String
        # @param FilterAlarmType: 告警阈值类型搜索，取值[
        # 1(入流量告警阈值)
        # 2(攻击清洗流量告警阈值)
        # ]
        # @type FilterAlarmType: Integer

        attr_accessor :InstanceType, :FilterAlarmType
        
        def initialize(instancetype=nil, filteralarmtype=nil)
          @InstanceType = instancetype
          @FilterAlarmType = filteralarmtype
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @FilterAlarmType = params['FilterAlarmType']
        end
      end

      # DescribeDefaultAlarmThreshold返回参数结构体
      class DescribeDefaultAlarmThresholdResponse < TencentCloud::Common::AbstractModel
        # @param DefaultAlarmConfigList: 默认告警阈值配置
        # @type DefaultAlarmConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DefaultAlarmConfigList, :RequestId
        
        def initialize(defaultalarmconfiglist=nil, requestid=nil)
          @DefaultAlarmConfigList = defaultalarmconfiglist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DefaultAlarmConfigList'].nil?
            @DefaultAlarmConfigList = []
            params['DefaultAlarmConfigList'].each do |i|
              defaultalarmthreshold_tmp = DefaultAlarmThreshold.new
              defaultalarmthreshold_tmp.deserialize(i)
              @DefaultAlarmConfigList << defaultalarmthreshold_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7RulesBySSLCertId请求参数结构体
      class DescribeL7RulesBySSLCertIdRequest < TencentCloud::Common::AbstractModel
        # @param Status: 域名状态，可取bindable, binded, opened, closed, all，all表示全部状态
        # @type Status: String
        # @param CertIds: 证书ID列表
        # @type CertIds: Array

        attr_accessor :Status, :CertIds
        
        def initialize(status=nil, certids=nil)
          @Status = status
          @CertIds = certids
        end

        def deserialize(params)
          @Status = params['Status']
          @CertIds = params['CertIds']
        end
      end

      # DescribeL7RulesBySSLCertId返回参数结构体
      class DescribeL7RulesBySSLCertIdResponse < TencentCloud::Common::AbstractModel
        # @param CertSet: 证书规则集合
        # @type CertSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertSet, :RequestId
        
        def initialize(certset=nil, requestid=nil)
          @CertSet = certset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertSet'].nil?
            @CertSet = []
            params['CertSet'].each do |i|
              certidinsl7rules_tmp = CertIdInsL7Rules.new
              certidinsl7rules_tmp.deserialize(i)
              @CertSet << certidinsl7rules_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListBGPIPInstances请求参数结构体
      class DescribeListBGPIPInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为20;最大取值为100
        # @type Limit: Integer
        # @param FilterIp: IP搜索
        # @type FilterIp: String
        # @param FilterInstanceId: 资产实例ID搜索，例如，bgpip-00000001
        # @type FilterInstanceId: String
        # @param FilterLine: 高防IP线路搜索，取值为[
        # 1：BGP线路
        # 2：电信
        # 3：联通
        # 4：移动
        # 99：第三方合作线路
        # ]
        # @type FilterLine: Integer
        # @param FilterRegion: 地域搜索，例如，ap-guangzhou
        # @type FilterRegion: String
        # @param FilterName: 名称搜索
        # @type FilterName: String
        # @param FilterEipType: 是否只获取高防弹性公网IP实例。填写时，只能填写1或者0。当填写1时，表示返回高防弹性公网IP实例。当填写0时，表示返回非高防弹性公网IP实例。
        # @type FilterEipType: Integer
        # @param FilterEipEipAddressStatus: 高防弹性公网IP实例的绑定状态搜索条件，取值范围 [BINDING、 BIND、UNBINDING、UNBIND]。该搜索条件只在FilterEipType=1时才有效。
        # @type FilterEipEipAddressStatus: Array
        # @param FilterDamDDoSStatus: 是否只获取安全加速实例。填写时，只能填写1或者0。当填写1时，表示返回安全加速实例。当填写0时，表示返回非安全加速实例。
        # @type FilterDamDDoSStatus: Integer
        # @param FilterStatus: 获取特定状态的资源，运行中填idle，攻击中填attacking，封堵中填blocking
        # @type FilterStatus: String

        attr_accessor :Offset, :Limit, :FilterIp, :FilterInstanceId, :FilterLine, :FilterRegion, :FilterName, :FilterEipType, :FilterEipEipAddressStatus, :FilterDamDDoSStatus, :FilterStatus
        
        def initialize(offset=nil, limit=nil, filterip=nil, filterinstanceid=nil, filterline=nil, filterregion=nil, filtername=nil, filtereiptype=nil, filtereipeipaddressstatus=nil, filterdamddosstatus=nil, filterstatus=nil)
          @Offset = offset
          @Limit = limit
          @FilterIp = filterip
          @FilterInstanceId = filterinstanceid
          @FilterLine = filterline
          @FilterRegion = filterregion
          @FilterName = filtername
          @FilterEipType = filtereiptype
          @FilterEipEipAddressStatus = filtereipeipaddressstatus
          @FilterDamDDoSStatus = filterdamddosstatus
          @FilterStatus = filterstatus
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterIp = params['FilterIp']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterLine = params['FilterLine']
          @FilterRegion = params['FilterRegion']
          @FilterName = params['FilterName']
          @FilterEipType = params['FilterEipType']
          @FilterEipEipAddressStatus = params['FilterEipEipAddressStatus']
          @FilterDamDDoSStatus = params['FilterDamDDoSStatus']
          @FilterStatus = params['FilterStatus']
        end
      end

      # DescribeListBGPIPInstances返回参数结构体
      class DescribeListBGPIPInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param InstanceList: 高防IP资产实例列表
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :InstanceList, :RequestId
        
        def initialize(total=nil, instancelist=nil, requestid=nil)
          @Total = total
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              bgpipinstance_tmp = BGPIPInstance.new
              bgpipinstance_tmp.deserialize(i)
              @InstanceList << bgpipinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListBGPInstances请求参数结构体
      class DescribeListBGPInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为20;最大取值为100
        # @type Limit: Integer
        # @param FilterIp: IP搜索
        # @type FilterIp: String
        # @param FilterInstanceId: 资产实例ID搜索，例如，bgp-00000001
        # @type FilterInstanceId: String
        # @param FilterRegion: 地域搜索，例如，ap-guangzhou
        # @type FilterRegion: String
        # @param FilterName: 名称搜索
        # @type FilterName: String
        # @param FilterLine: 按照线路搜索, 1: BGP; 2: 三网
        # @type FilterLine: Integer
        # @param FilterStatus: 状态搜索，idle：运行中；attacking：攻击中；blocking：封堵中
        # @type FilterStatus: String
        # @param FilterBoundStatus: 高防包绑定状态搜索，bounding：绑定中； failed：绑定失败
        # @type FilterBoundStatus: String

        attr_accessor :Offset, :Limit, :FilterIp, :FilterInstanceId, :FilterRegion, :FilterName, :FilterLine, :FilterStatus, :FilterBoundStatus
        
        def initialize(offset=nil, limit=nil, filterip=nil, filterinstanceid=nil, filterregion=nil, filtername=nil, filterline=nil, filterstatus=nil, filterboundstatus=nil)
          @Offset = offset
          @Limit = limit
          @FilterIp = filterip
          @FilterInstanceId = filterinstanceid
          @FilterRegion = filterregion
          @FilterName = filtername
          @FilterLine = filterline
          @FilterStatus = filterstatus
          @FilterBoundStatus = filterboundstatus
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterIp = params['FilterIp']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterRegion = params['FilterRegion']
          @FilterName = params['FilterName']
          @FilterLine = params['FilterLine']
          @FilterStatus = params['FilterStatus']
          @FilterBoundStatus = params['FilterBoundStatus']
        end
      end

      # DescribeListBGPInstances返回参数结构体
      class DescribeListBGPInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param InstanceList: 高防包资产实例列表
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :InstanceList, :RequestId
        
        def initialize(total=nil, instancelist=nil, requestid=nil)
          @Total = total
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              bgpinstance_tmp = BGPInstance.new
              bgpinstance_tmp.deserialize(i)
              @InstanceList << bgpinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListBlackWhiteIpList请求参数结构体
      class DescribeListBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListBlackWhiteIpList返回参数结构体
      class DescribeListBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param IpList: 黑白IP列表
        # @type IpList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :IpList, :RequestId
        
        def initialize(total=nil, iplist=nil, requestid=nil)
          @Total = total
          @IpList = iplist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['IpList'].nil?
            @IpList = []
            params['IpList'].each do |i|
              blackwhiteiprelation_tmp = BlackWhiteIpRelation.new
              blackwhiteiprelation_tmp.deserialize(i)
              @IpList << blackwhiteiprelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListDDoSAI请求参数结构体
      class DescribeListDDoSAIRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListDDoSAI返回参数结构体
      class DescribeListDDoSAIResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: AI防护开关列表
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              ddosairelation_tmp = DDoSAIRelation.new
              ddosairelation_tmp.deserialize(i)
              @ConfigList << ddosairelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListDDoSGeoIPBlockConfig请求参数结构体
      class DescribeListDDoSGeoIPBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListDDoSGeoIPBlockConfig返回参数结构体
      class DescribeListDDoSGeoIPBlockConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: DDoS区域封禁配置列表
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              ddosgeoipblockconfigrelation_tmp = DDoSGeoIPBlockConfigRelation.new
              ddosgeoipblockconfigrelation_tmp.deserialize(i)
              @ConfigList << ddosgeoipblockconfigrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListDDoSSpeedLimitConfig请求参数结构体
      class DescribeListDDoSSpeedLimitConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListDDoSSpeedLimitConfig返回参数结构体
      class DescribeListDDoSSpeedLimitConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: 访问限速配置列表
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              ddosspeedlimitconfigrelation_tmp = DDoSSpeedLimitConfigRelation.new
              ddosspeedlimitconfigrelation_tmp.deserialize(i)
              @ConfigList << ddosspeedlimitconfigrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListIPAlarmConfig请求参数结构体
      class DescribeListIPAlarmConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterAlarmType: 告警阈值类型搜索，取值[
        # 1(入流量告警阈值)
        # 2(攻击清洗流量告警阈值)
        # ]
        # @type FilterAlarmType: Integer
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterAlarmType, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filteralarmtype=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterAlarmType = filteralarmtype
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterAlarmType = params['FilterAlarmType']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListIPAlarmConfig返回参数结构体
      class DescribeListIPAlarmConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: IP告警阈值配置列表
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              ipalarmthresholdrelation_tmp = IPAlarmThresholdRelation.new
              ipalarmthresholdrelation_tmp.deserialize(i)
              @ConfigList << ipalarmthresholdrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListListener请求参数结构体
      class DescribeListListenerRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeListListener返回参数结构体
      class DescribeListListenerResponse < TencentCloud::Common::AbstractModel
        # @param Layer4Listeners: 4层转发监听器列表
        # @type Layer4Listeners: Array
        # @param Layer7Listeners: 7层转发监听器列表
        # @type Layer7Listeners: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Layer4Listeners, :Layer7Listeners, :RequestId
        
        def initialize(layer4listeners=nil, layer7listeners=nil, requestid=nil)
          @Layer4Listeners = layer4listeners
          @Layer7Listeners = layer7listeners
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Layer4Listeners'].nil?
            @Layer4Listeners = []
            params['Layer4Listeners'].each do |i|
              layer4rule_tmp = Layer4Rule.new
              layer4rule_tmp.deserialize(i)
              @Layer4Listeners << layer4rule_tmp
            end
          end
          unless params['Layer7Listeners'].nil?
            @Layer7Listeners = []
            params['Layer7Listeners'].each do |i|
              layer7rule_tmp = Layer7Rule.new
              layer7rule_tmp.deserialize(i)
              @Layer7Listeners << layer7rule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListPacketFilterConfig请求参数结构体
      class DescribeListPacketFilterConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListPacketFilterConfig返回参数结构体
      class DescribeListPacketFilterConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: 特征过滤配置
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              packetfilterrelation_tmp = PacketFilterRelation.new
              packetfilterrelation_tmp.deserialize(i)
              @ConfigList << packetfilterrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListPortAclList请求参数结构体
      class DescribeListPortAclListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: ip搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListPortAclList返回参数结构体
      class DescribeListPortAclListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param AclList: 端口acl策略
        # @type AclList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AclList, :RequestId
        
        def initialize(total=nil, acllist=nil, requestid=nil)
          @Total = total
          @AclList = acllist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AclList'].nil?
            @AclList = []
            params['AclList'].each do |i|
              aclconfigrelation_tmp = AclConfigRelation.new
              aclconfigrelation_tmp.deserialize(i)
              @AclList << aclconfigrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListProtectThresholdConfig请求参数结构体
      class DescribeListProtectThresholdConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String
        # @param FilterDomain: 域名搜索(查询域名与协议的CC防护阈值时使用）
        # @type FilterDomain: String
        # @param FilterProtocol: 协议搜索(查询域名与协议的CC防护阈值时使用）
        # @type FilterProtocol: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp, :FilterDomain, :FilterProtocol
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil, filterdomain=nil, filterprotocol=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
          @FilterDomain = filterdomain
          @FilterProtocol = filterprotocol
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
          @FilterDomain = params['FilterDomain']
          @FilterProtocol = params['FilterProtocol']
        end
      end

      # DescribeListProtectThresholdConfig返回参数结构体
      class DescribeListProtectThresholdConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总记录数
        # @type Total: Integer
        # @param ConfigList: 防护阈值配置列表
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              protectthresholdrelation_tmp = ProtectThresholdRelation.new
              protectthresholdrelation_tmp.deserialize(i)
              @ConfigList << protectthresholdrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListProtocolBlockConfig请求参数结构体
      class DescribeListProtocolBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListProtocolBlockConfig返回参数结构体
      class DescribeListProtocolBlockConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: 协议封禁配置
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              protocolblockrelation_tmp = ProtocolBlockRelation.new
              protocolblockrelation_tmp.deserialize(i)
              @ConfigList << protocolblockrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListSchedulingDomain请求参数结构体
      class DescribeListSchedulingDomainRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为20;最大取值为100
        # @type Limit: Integer
        # @param FilterDomain: 调度域名搜索
        # @type FilterDomain: String

        attr_accessor :Offset, :Limit, :FilterDomain
        
        def initialize(offset=nil, limit=nil, filterdomain=nil)
          @Offset = offset
          @Limit = limit
          @FilterDomain = filterdomain
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterDomain = params['FilterDomain']
        end
      end

      # DescribeListSchedulingDomain返回参数结构体
      class DescribeListSchedulingDomainResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param DomainList: 调度域名信息列表
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
              schedulingdomaininfo_tmp = SchedulingDomainInfo.new
              schedulingdomaininfo_tmp.deserialize(i)
              @DomainList << schedulingdomaininfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListWaterPrintConfig请求参数结构体
      class DescribeListWaterPrintConfigRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页起始偏移，取值为(页码-1)*一页条数
        # @type Offset: Integer
        # @param Limit: 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        # @type Limit: Integer
        # @param FilterInstanceId: 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        # @type FilterInstanceId: String
        # @param FilterIp: IP搜索
        # @type FilterIp: String

        attr_accessor :Offset, :Limit, :FilterInstanceId, :FilterIp
        
        def initialize(offset=nil, limit=nil, filterinstanceid=nil, filterip=nil)
          @Offset = offset
          @Limit = limit
          @FilterInstanceId = filterinstanceid
          @FilterIp = filterip
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterIp = params['FilterIp']
        end
      end

      # DescribeListWaterPrintConfig返回参数结构体
      class DescribeListWaterPrintConfigResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param ConfigList: 水印配置列表
        # @type ConfigList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ConfigList, :RequestId
        
        def initialize(total=nil, configlist=nil, requestid=nil)
          @Total = total
          @ConfigList = configlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              waterprintrelation_tmp = WaterPrintRelation.new
              waterprintrelation_tmp.deserialize(i)
              @ConfigList << waterprintrelation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisassociateDDoSEipAddress请求参数结构体
      class DisassociateDDoSEipAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID，实例ID形如：bgpip-0000011x。只能填写高防IP实例。
        # @type InstanceId: String
        # @param Eip: 资源实例ID对应的高防弹性公网IP。
        # @type Eip: String

        attr_accessor :InstanceId, :Eip
        
        def initialize(instanceid=nil, eip=nil)
          @InstanceId = instanceid
          @Eip = eip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Eip = params['Eip']
        end
      end

      # DisassociateDDoSEipAddress返回参数结构体
      class DisassociateDDoSEipAddressResponse < TencentCloud::Common::AbstractModel
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

      # Anycast高防套餐详情
      class EipAddressPackRelation < TencentCloud::Common::AbstractModel
        # @param IpCount: 套餐IP数量
        # @type IpCount: Integer
        # @param AutoRenewFlag: 自动续费标记
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 当前到期时间
        # @type CurDeadline: String

        attr_accessor :IpCount, :AutoRenewFlag, :CurDeadline
        
        def initialize(ipcount=nil, autorenewflag=nil, curdeadline=nil)
          @IpCount = ipcount
          @AutoRenewFlag = autorenewflag
          @CurDeadline = curdeadline
        end

        def deserialize(params)
          @IpCount = params['IpCount']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CurDeadline = params['CurDeadline']
        end
      end

      # 高防弹性公网IP关联信息
      class EipAddressRelation < TencentCloud::Common::AbstractModel
        # @param EipAddressRegion: 高防弹性公网IP绑定的实例地区，例如hk代表香港
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipAddressRegion: String
        # @param EipBoundRscIns: 绑定的资源实例ID。可能是一个CVM。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipBoundRscIns: String
        # @param EipBoundRscEni: 绑定的弹性网卡ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipBoundRscEni: String
        # @param EipBoundRscVip: 绑定的资源内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipBoundRscVip: String
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String

        attr_accessor :EipAddressRegion, :EipBoundRscIns, :EipBoundRscEni, :EipBoundRscVip, :ModifyTime
        
        def initialize(eipaddressregion=nil, eipboundrscins=nil, eipboundrsceni=nil, eipboundrscvip=nil, modifytime=nil)
          @EipAddressRegion = eipaddressregion
          @EipBoundRscIns = eipboundrscins
          @EipBoundRscEni = eipboundrsceni
          @EipBoundRscVip = eipboundrscvip
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @EipAddressRegion = params['EipAddressRegion']
          @EipBoundRscIns = params['EipBoundRscIns']
          @EipBoundRscEni = params['EipBoundRscEni']
          @EipBoundRscVip = params['EipBoundRscVip']
          @ModifyTime = params['ModifyTime']
        end
      end

      # EIP所属的云产品信息
      class EipProductInfo < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param BizType: 云产品类型，取值[
        # public（CVM产品），
        # bm（黑石产品），
        # eni（弹性网卡），
        # vpngw（VPN网关），
        #  natgw（NAT网关），
        # waf（Web应用安全产品），
        # fpc（金融产品），
        # gaap（GAAP产品）,
        # other(托管IP)
        # ]
        # @type BizType: String
        # @param DeviceType: 云产品子类型，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param InstanceId: IP所属的云产品实例ID，例如是弹性网卡的IP，InstanceId为弹性网卡的ID(eni-*); 如果是托管IP没有对应的资源实例ID,InstanceId为""
        # @type InstanceId: String

        attr_accessor :Ip, :BizType, :DeviceType, :InstanceId
        
        def initialize(ip=nil, biztype=nil, devicetype=nil, instanceid=nil)
          @Ip = ip
          @BizType = biztype
          @DeviceType = devicetype
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Ip = params['Ip']
          @BizType = params['BizType']
          @DeviceType = params['DeviceType']
          @InstanceId = params['InstanceId']
        end
      end

      # 转发监听器
      class ForwardListener < TencentCloud::Common::AbstractModel
        # @param FrontendPort: 转发监听端口下限，取值1~65535
        # @type FrontendPort: Integer
        # @param ForwardProtocol: 转发协议，取值[
        # TCP
        # UDP
        # ]
        # @type ForwardProtocol: String
        # @param FrontendPortEnd: 转发监听端口上限，取值1~65535
        # @type FrontendPortEnd: Integer

        attr_accessor :FrontendPort, :ForwardProtocol, :FrontendPortEnd
        
        def initialize(frontendport=nil, forwardprotocol=nil, frontendportend=nil)
          @FrontendPort = frontendport
          @ForwardProtocol = forwardprotocol
          @FrontendPortEnd = frontendportend
        end

        def deserialize(params)
          @FrontendPort = params['FrontendPort']
          @ForwardProtocol = params['ForwardProtocol']
          @FrontendPortEnd = params['FrontendPortEnd']
        end
      end

      # 单IP告警阈值配置
      class IPAlarmThresholdRelation < TencentCloud::Common::AbstractModel
        # @param AlarmType: 告警阈值类型，取值[
        # 1(入流量告警阈值)
        # 2(攻击清洗流量告警阈值)
        # ]
        # @type AlarmType: Integer
        # @param AlarmThreshold: 告警阈值，单位Mbps，取值>=0；当作为输入参数时，设置0会删除告警阈值配置；
        # @type AlarmThreshold: Integer
        # @param InstanceDetailList: 告警阈值所属的资源实例
        # @type InstanceDetailList: Array

        attr_accessor :AlarmType, :AlarmThreshold, :InstanceDetailList
        
        def initialize(alarmtype=nil, alarmthreshold=nil, instancedetaillist=nil)
          @AlarmType = alarmtype
          @AlarmThreshold = alarmthreshold
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          @AlarmType = params['AlarmType']
          @AlarmThreshold = params['AlarmThreshold']
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # IP线路信息
      class IPLineInfo < TencentCloud::Common::AbstractModel
        # @param Type: IP线路类型，取值[
        # "bgp"：BGP线路IP
        # "ctcc"：电信线路IP
        # "cucc"：联通线路IP
        # "cmcc"：移动线路IP
        # "abroad"：境外线路IP
        # ]
        # @type Type: String
        # @param Eip: 线路IP
        # @type Eip: String

        attr_accessor :Type, :Eip
        
        def initialize(type=nil, eip=nil)
          @Type = type
          @Eip = eip
        end

        def deserialize(params)
          @Type = params['Type']
          @Eip = params['Eip']
        end
      end

      # 实例7层规则
      class InsL7Rules < TencentCloud::Common::AbstractModel
        # @param Status: 规则状态，0: 正常运行中, 1: 配置规则中(配置生效中), 2: 配置规则失败（配置生效失败）, 3: 删除规则中(删除生效中), 5: 删除规则失败(删除失败), 6: 等待添加规则, 7: 等待删除规则, 8: 等待上传证书, 9: 规则对应的资源不存在，被隔离, 10:等待修改规则, 11:配置修改中
        # @type Status: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param InsId: 实例ID
        # @type InsId: String
        # @param AppId: 用户AppID
        # @type AppId: String
        # @param VirtualPort: 高防端口
        # @type VirtualPort: String
        # @param SSLId: 证书ID
        # @type SSLId: String

        attr_accessor :Status, :Domain, :Protocol, :InsId, :AppId, :VirtualPort, :SSLId
        
        def initialize(status=nil, domain=nil, protocol=nil, insid=nil, appid=nil, virtualport=nil, sslid=nil)
          @Status = status
          @Domain = domain
          @Protocol = protocol
          @InsId = insid
          @AppId = appid
          @VirtualPort = virtualport
          @SSLId = sslid
        end

        def deserialize(params)
          @Status = params['Status']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @InsId = params['InsId']
          @AppId = params['AppId']
          @VirtualPort = params['VirtualPort']
          @SSLId = params['SSLId']
        end
      end

      # 资源实例IP信息
      class InstanceRelation < TencentCloud::Common::AbstractModel
        # @param EipList: 资源实例的IP
        # @type EipList: Array
        # @param InstanceId: 资源实例的ID
        # @type InstanceId: String

        attr_accessor :EipList, :InstanceId
        
        def initialize(eiplist=nil, instanceid=nil)
          @EipList = eiplist
          @InstanceId = instanceid
        end

        def deserialize(params)
          @EipList = params['EipList']
          @InstanceId = params['InstanceId']
        end
      end

      # ip段数据结构
      class IpSegment < TencentCloud::Common::AbstractModel
        # @param Ip: ip地址
        # @type Ip: String
        # @param Mask: ip掩码，如果为32位ip，填0
        # @type Mask: Integer

        attr_accessor :Ip, :Mask
        
        def initialize(ip=nil, mask=nil)
          @Ip = ip
          @Mask = mask
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Mask = params['Mask']
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

      # L4规则回源列表
      class L4RuleSource < TencentCloud::Common::AbstractModel
        # @param Source: 回源IP或域名
        # @type Source: String
        # @param Weight: 权重值，取值[0,100]
        # @type Weight: Integer
        # @param Port: 8000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer

        attr_accessor :Source, :Weight, :Port
        
        def initialize(source=nil, weight=nil, port=nil)
          @Source = source
          @Weight = weight
          @Port = port
        end

        def deserialize(params)
          @Source = params['Source']
          @Weight = params['Weight']
          @Port = params['Port']
        end
      end

      # L7规则
      class L7RuleEntry < TencentCloud::Common::AbstractModel
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer
        # @param Domain: 转发域名
        # @type Domain: String
        # @param Protocol: 转发协议，取值[http, https]
        # @type Protocol: String
        # @param SourceType: 回源方式，取值[1(域名回源)，2(IP回源)]
        # @type SourceType: Integer
        # @param LbType: 负载均衡方式，取值[1(加权轮询)]
        # @type LbType: Integer
        # @param SourceList: 回源列表
        # @type SourceList: Array
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]
        # @type KeepEnable: Integer
        # @param Status: 规则状态，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        # @type Status: Integer
        # @param RuleId: 规则ID，当添加新规则时可以不用填写此字段；当修改或者删除规则时需要填写此字段；
        # @type RuleId: String
        # @param CCThreshold: HTTPS协议的CC防护阈值
        # @type CCThreshold: Integer
        # @param PrivateKey: 当证书来源为自有证书时，此字段必须填写证书密钥；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type PrivateKey: String
        # @param CCEnable: HTTPS协议的CC防护状态，取值[0(关闭), 1(开启)]
        # @type CCEnable: Integer
        # @param HttpsToHttpEnable: 是否开启Https协议使用Http回源，取值[0(关闭), 1(开启)]，不填写默认是关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpsToHttpEnable: Integer
        # @param CertType: 证书来源，当转发协议为https时必须填，取值[2(腾讯云托管证书)]，当转发协议为http时也可以填0
        # @type CertType: Integer
        # @param Cert: 当证书来源为自有证书时，此字段必须填写证书内容；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type Cert: String
        # @param CCLevel: HTTPS协议的CC防护等级
        # @type CCLevel: String
        # @param RuleName: 规则描述
        # @type RuleName: String
        # @param CCStatus: cc防护状态，取值[0(关闭), 1(开启)]
        # @type CCStatus: Integer
        # @param VirtualPort: 接入端口值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPort: Integer
        # @param SSLId: 当证书来源为腾讯云托管证书时，此字段必须填写托管证书ID
        # @type SSLId: String
        # @param Id: 同ruleId
        # @type Id: String

        attr_accessor :KeepTime, :Domain, :Protocol, :SourceType, :LbType, :SourceList, :KeepEnable, :Status, :RuleId, :CCThreshold, :PrivateKey, :CCEnable, :HttpsToHttpEnable, :CertType, :Cert, :CCLevel, :RuleName, :CCStatus, :VirtualPort, :SSLId, :Id
        
        def initialize(keeptime=nil, domain=nil, protocol=nil, sourcetype=nil, lbtype=nil, sourcelist=nil, keepenable=nil, status=nil, ruleid=nil, ccthreshold=nil, privatekey=nil, ccenable=nil, httpstohttpenable=nil, certtype=nil, cert=nil, cclevel=nil, rulename=nil, ccstatus=nil, virtualport=nil, sslid=nil, id=nil)
          @KeepTime = keeptime
          @Domain = domain
          @Protocol = protocol
          @SourceType = sourcetype
          @LbType = lbtype
          @SourceList = sourcelist
          @KeepEnable = keepenable
          @Status = status
          @RuleId = ruleid
          @CCThreshold = ccthreshold
          @PrivateKey = privatekey
          @CCEnable = ccenable
          @HttpsToHttpEnable = httpstohttpenable
          @CertType = certtype
          @Cert = cert
          @CCLevel = cclevel
          @RuleName = rulename
          @CCStatus = ccstatus
          @VirtualPort = virtualport
          @SSLId = sslid
          @Id = id
        end

        def deserialize(params)
          @KeepTime = params['KeepTime']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @SourceType = params['SourceType']
          @LbType = params['LbType']
          unless params['SourceList'].nil?
            @SourceList = []
            params['SourceList'].each do |i|
              l4rulesource_tmp = L4RuleSource.new
              l4rulesource_tmp.deserialize(i)
              @SourceList << l4rulesource_tmp
            end
          end
          @KeepEnable = params['KeepEnable']
          @Status = params['Status']
          @RuleId = params['RuleId']
          @CCThreshold = params['CCThreshold']
          @PrivateKey = params['PrivateKey']
          @CCEnable = params['CCEnable']
          @HttpsToHttpEnable = params['HttpsToHttpEnable']
          @CertType = params['CertType']
          @Cert = params['Cert']
          @CCLevel = params['CCLevel']
          @RuleName = params['RuleName']
          @CCStatus = params['CCStatus']
          @VirtualPort = params['VirtualPort']
          @SSLId = params['SSLId']
          @Id = params['Id']
        end
      end

      # 4层转发规则
      class Layer4Rule < TencentCloud::Common::AbstractModel
        # @param BackendPort: 源站端口，取值1~65535
        # @type BackendPort: Integer
        # @param FrontendPort: 转发端口，取值1~65535
        # @type FrontendPort: Integer
        # @param Protocol: 转发协议，取值[
        # TCP(TCP协议)
        # UDP(UDP协议)
        # ]
        # @type Protocol: String
        # @param RealServers: 源站列表
        # @type RealServers: Array
        # @param InstanceDetails: 规则所属的资源实例
        # @type InstanceDetails: Array

        attr_accessor :BackendPort, :FrontendPort, :Protocol, :RealServers, :InstanceDetails
        
        def initialize(backendport=nil, frontendport=nil, protocol=nil, realservers=nil, instancedetails=nil)
          @BackendPort = backendport
          @FrontendPort = frontendport
          @Protocol = protocol
          @RealServers = realservers
          @InstanceDetails = instancedetails
        end

        def deserialize(params)
          @BackendPort = params['BackendPort']
          @FrontendPort = params['FrontendPort']
          @Protocol = params['Protocol']
          unless params['RealServers'].nil?
            @RealServers = []
            params['RealServers'].each do |i|
              sourceserver_tmp = SourceServer.new
              sourceserver_tmp.deserialize(i)
              @RealServers << sourceserver_tmp
            end
          end
          unless params['InstanceDetails'].nil?
            @InstanceDetails = []
            params['InstanceDetails'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetails << instancerelation_tmp
            end
          end
        end
      end

      # 7层转发规则
      class Layer7Rule < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param ProxyTypeList: 转发类型列表
        # @type ProxyTypeList: Array
        # @param RealServers: 源站列表
        # @type RealServers: Array
        # @param InstanceDetails: 规则所属的资源实例
        # @type InstanceDetails: Array

        attr_accessor :Domain, :ProxyTypeList, :RealServers, :InstanceDetails
        
        def initialize(domain=nil, proxytypelist=nil, realservers=nil, instancedetails=nil)
          @Domain = domain
          @ProxyTypeList = proxytypelist
          @RealServers = realservers
          @InstanceDetails = instancedetails
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['ProxyTypeList'].nil?
            @ProxyTypeList = []
            params['ProxyTypeList'].each do |i|
              proxytypeinfo_tmp = ProxyTypeInfo.new
              proxytypeinfo_tmp.deserialize(i)
              @ProxyTypeList << proxytypeinfo_tmp
            end
          end
          unless params['RealServers'].nil?
            @RealServers = []
            params['RealServers'].each do |i|
              sourceserver_tmp = SourceServer.new
              sourceserver_tmp.deserialize(i)
              @RealServers << sourceserver_tmp
            end
          end
          unless params['InstanceDetails'].nil?
            @InstanceDetails = []
            params['InstanceDetails'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetails << instancerelation_tmp
            end
          end
        end
      end

      # 域名与协议纬度的CC防护阈值
      class ListenerCcThreholdConfig < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议（可取值htttps）
        # @type Protocol: String
        # @param CCEnable: 开关状态（0：关闭，1：开启）
        # @type CCEnable: Integer
        # @param CCThreshold: cc防护阈值
        # @type CCThreshold: Integer

        attr_accessor :Domain, :Protocol, :CCEnable, :CCThreshold
        
        def initialize(domain=nil, protocol=nil, ccenable=nil, ccthreshold=nil)
          @Domain = domain
          @Protocol = protocol
          @CCEnable = ccenable
          @CCThreshold = ccthreshold
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @CCEnable = params['CCEnable']
          @CCThreshold = params['CCThreshold']
        end
      end

      # ModifyCCLevelPolicy请求参数结构体
      class ModifyCCLevelPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议，可取值HTTP，HTTPS
        # @type Protocol: String
        # @param Level: CC防护等级，可取值loose表示宽松，strict表示严格，normal表示适中， emergency表示攻击紧急， sup_loose表示超级宽松，default表示默认策略（无频控配置下发），customized表示自定义策略
        # @type Level: String

        attr_accessor :InstanceId, :Ip, :Domain, :Protocol, :Level
        
        def initialize(instanceid=nil, ip=nil, domain=nil, protocol=nil, level=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
          @Level = level
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @Level = params['Level']
        end
      end

      # ModifyCCLevelPolicy返回参数结构体
      class ModifyCCLevelPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCCPrecisionPolicy请求参数结构体
      class ModifyCCPrecisionPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param PolicyId: 策略Id
        # @type PolicyId: String
        # @param PolicyAction: 策略方式，可取值alg表示验证码，drop表示丢弃
        # @type PolicyAction: String
        # @param PolicyList: 策略记录
        # @type PolicyList: Array

        attr_accessor :InstanceId, :PolicyId, :PolicyAction, :PolicyList
        
        def initialize(instanceid=nil, policyid=nil, policyaction=nil, policylist=nil)
          @InstanceId = instanceid
          @PolicyId = policyid
          @PolicyAction = policyaction
          @PolicyList = policylist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyId = params['PolicyId']
          @PolicyAction = params['PolicyAction']
          unless params['PolicyList'].nil?
            @PolicyList = []
            params['PolicyList'].each do |i|
              ccprecisionplyrecord_tmp = CCPrecisionPlyRecord.new
              ccprecisionplyrecord_tmp.deserialize(i)
              @PolicyList << ccprecisionplyrecord_tmp
            end
          end
        end
      end

      # ModifyCCPrecisionPolicy返回参数结构体
      class ModifyCCPrecisionPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCCReqLimitPolicy请求参数结构体
      class ModifyCCReqLimitPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param PolicyId: 策略Id
        # @type PolicyId: String
        # @param Policy: 策略项
        # @type Policy: :class:`Tencentcloud::Antiddos.v20200309.models.CCReqLimitPolicyRecord`

        attr_accessor :InstanceId, :PolicyId, :Policy
        
        def initialize(instanceid=nil, policyid=nil, policy=nil)
          @InstanceId = instanceid
          @PolicyId = policyid
          @Policy = policy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyId = params['PolicyId']
          unless params['Policy'].nil?
            @Policy = CCReqLimitPolicyRecord.new
            @Policy.deserialize(params['Policy'])
          end
        end
      end

      # ModifyCCReqLimitPolicy返回参数结构体
      class ModifyCCReqLimitPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCCThresholdPolicy请求参数结构体
      class ModifyCCThresholdPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Ip: Ip地址
        # @type Ip: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议，可取值HTTP，HTTPS
        # @type Protocol: String
        # @param Threshold: 清洗阈值，-1表示开启“默认”模式
        # @type Threshold: Integer

        attr_accessor :InstanceId, :Ip, :Domain, :Protocol, :Threshold
        
        def initialize(instanceid=nil, ip=nil, domain=nil, protocol=nil, threshold=nil)
          @InstanceId = instanceid
          @Ip = ip
          @Domain = domain
          @Protocol = protocol
          @Threshold = threshold
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @Threshold = params['Threshold']
        end
      end

      # ModifyCCThresholdPolicy返回参数结构体
      class ModifyCCThresholdPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCcBlackWhiteIpList请求参数结构体
      class ModifyCcBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param IpList: IP列表
        # @type IpList: Array
        # @param Type: IP类型，取值[black(黑名单IP), white(白名单IP)]
        # @type Type: String
        # @param PolicyId: 策略Id
        # @type PolicyId: String

        attr_accessor :InstanceId, :IpList, :Type, :PolicyId
        
        def initialize(instanceid=nil, iplist=nil, type=nil, policyid=nil)
          @InstanceId = instanceid
          @IpList = iplist
          @Type = type
          @PolicyId = policyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['IpList'].nil?
            @IpList = []
            params['IpList'].each do |i|
              ipsegment_tmp = IpSegment.new
              ipsegment_tmp.deserialize(i)
              @IpList << ipsegment_tmp
            end
          end
          @Type = params['Type']
          @PolicyId = params['PolicyId']
        end
      end

      # ModifyCcBlackWhiteIpList返回参数结构体
      class ModifyCcBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDDoSBlackWhiteIpList请求参数结构体
      class ModifyDDoSBlackWhiteIpListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源Id
        # @type InstanceId: String
        # @param OldIpType: 当前黑名单类型，取值black时黑名单；取值white时白名单
        # @type OldIpType: String
        # @param OldIp: 当前配置的Ip段，包含ip与掩码
        # @type OldIp: :class:`Tencentcloud::Antiddos.v20200309.models.IpSegment`
        # @param NewIpType: 修改后黑白名单类型，取值black时黑名单，取值white时白名单
        # @type NewIpType: String
        # @param NewIp: 当前配置的Ip段，包含ip与掩码
        # @type NewIp: :class:`Tencentcloud::Antiddos.v20200309.models.IpSegment`

        attr_accessor :InstanceId, :OldIpType, :OldIp, :NewIpType, :NewIp
        
        def initialize(instanceid=nil, oldiptype=nil, oldip=nil, newiptype=nil, newip=nil)
          @InstanceId = instanceid
          @OldIpType = oldiptype
          @OldIp = oldip
          @NewIpType = newiptype
          @NewIp = newip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldIpType = params['OldIpType']
          unless params['OldIp'].nil?
            @OldIp = IpSegment.new
            @OldIp.deserialize(params['OldIp'])
          end
          @NewIpType = params['NewIpType']
          unless params['NewIp'].nil?
            @NewIp = IpSegment.new
            @NewIp.deserialize(params['NewIp'])
          end
        end
      end

      # ModifyDDoSBlackWhiteIpList返回参数结构体
      class ModifyDDoSBlackWhiteIpListResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDDoSGeoIPBlockConfig请求参数结构体
      class ModifyDDoSGeoIPBlockConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param DDoSGeoIPBlockConfig: DDoS区域封禁配置，填写参数时配置ID不能为空
        # @type DDoSGeoIPBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSGeoIPBlockConfig`

        attr_accessor :InstanceId, :DDoSGeoIPBlockConfig
        
        def initialize(instanceid=nil, ddosgeoipblockconfig=nil)
          @InstanceId = instanceid
          @DDoSGeoIPBlockConfig = ddosgeoipblockconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DDoSGeoIPBlockConfig'].nil?
            @DDoSGeoIPBlockConfig = DDoSGeoIPBlockConfig.new
            @DDoSGeoIPBlockConfig.deserialize(params['DDoSGeoIPBlockConfig'])
          end
        end
      end

      # ModifyDDoSGeoIPBlockConfig返回参数结构体
      class ModifyDDoSGeoIPBlockConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDDoSLevel请求参数结构体
      class ModifyDDoSLevelRequest < TencentCloud::Common::AbstractModel
        # @param Id: 资源ID
        # @type Id: String
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String
        # @param Method: =get表示读取防护等级；=set表示修改防护等级
        # @type Method: String
        # @param DDoSLevel: 防护等级，取值[low,middle,high]；当Method=set时必填
        # @type DDoSLevel: String

        attr_accessor :Id, :Business, :Method, :DDoSLevel
        
        def initialize(id=nil, business=nil, method=nil, ddoslevel=nil)
          @Id = id
          @Business = business
          @Method = method
          @DDoSLevel = ddoslevel
        end

        def deserialize(params)
          @Id = params['Id']
          @Business = params['Business']
          @Method = params['Method']
          @DDoSLevel = params['DDoSLevel']
        end
      end

      # ModifyDDoSLevel返回参数结构体
      class ModifyDDoSLevelResponse < TencentCloud::Common::AbstractModel
        # @param DDoSLevel: 防护等级，取值[low,middle,high]
        # @type DDoSLevel: String
        # @param Id: 资源ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DDoSLevel, :Id, :RequestId
        
        def initialize(ddoslevel=nil, id=nil, requestid=nil)
          @DDoSLevel = ddoslevel
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @DDoSLevel = params['DDoSLevel']
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDDoSSpeedLimitConfig请求参数结构体
      class ModifyDDoSSpeedLimitConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param DDoSSpeedLimitConfig: 访问限速配置，填写参数时配置ID不能为空
        # @type DDoSSpeedLimitConfig: :class:`Tencentcloud::Antiddos.v20200309.models.DDoSSpeedLimitConfig`

        attr_accessor :InstanceId, :DDoSSpeedLimitConfig
        
        def initialize(instanceid=nil, ddosspeedlimitconfig=nil)
          @InstanceId = instanceid
          @DDoSSpeedLimitConfig = ddosspeedlimitconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DDoSSpeedLimitConfig'].nil?
            @DDoSSpeedLimitConfig = DDoSSpeedLimitConfig.new
            @DDoSSpeedLimitConfig.deserialize(params['DDoSSpeedLimitConfig'])
          end
        end
      end

      # ModifyDDoSSpeedLimitConfig返回参数结构体
      class ModifyDDoSSpeedLimitConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDDoSThreshold请求参数结构体
      class ModifyDDoSThresholdRequest < TencentCloud::Common::AbstractModel
        # @param Threshold: DDoS清洗阈值，取值[0, 60, 80, 100, 150, 200, 250, 300, 400, 500, 700, 1000];
        # 当设置值为0时，表示采用默认值；
        # @type Threshold: Integer
        # @param Id: 资源ID
        # @type Id: String
        # @param Business: 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        # @type Business: String

        attr_accessor :Threshold, :Id, :Business
        
        def initialize(threshold=nil, id=nil, business=nil)
          @Threshold = threshold
          @Id = id
          @Business = business
        end

        def deserialize(params)
          @Threshold = params['Threshold']
          @Id = params['Id']
          @Business = params['Business']
        end
      end

      # ModifyDDoSThreshold返回参数结构体
      class ModifyDDoSThresholdResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Antiddos.v20200309.models.SuccessCode`
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

      # ModifyDomainUsrName请求参数结构体
      class ModifyDomainUsrNameRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 用户CNAME
        # @type DomainName: String
        # @param DomainUserName: 域名名称
        # @type DomainUserName: String

        attr_accessor :DomainName, :DomainUserName
        
        def initialize(domainname=nil, domainusername=nil)
          @DomainName = domainname
          @DomainUserName = domainusername
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @DomainUserName = params['DomainUserName']
        end
      end

      # ModifyDomainUsrName返回参数结构体
      class ModifyDomainUsrNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL7RulesEdge请求参数结构体
      class ModifyL7RulesEdgeRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（edge表示边界防护产品）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Antiddos.v20200309.models.L7RuleEntry`

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

      # ModifyL7RulesEdge返回参数结构体
      class ModifyL7RulesEdgeResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功码
        # @type Success: :class:`Tencentcloud::Antiddos.v20200309.models.SuccessCode`
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

      # ModifyNewDomainRules请求参数结构体
      class ModifyNewDomainRulesRequest < TencentCloud::Common::AbstractModel
        # @param Business: 大禹子产品代号（bgpip表示高防IP）
        # @type Business: String
        # @param Id: 资源ID
        # @type Id: String
        # @param Rule: 域名转发规则
        # @type Rule: :class:`Tencentcloud::Antiddos.v20200309.models.NewL7RuleEntry`

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
        # @type Success: :class:`Tencentcloud::Antiddos.v20200309.models.SuccessCode`
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

      # ModifyPacketFilterConfig请求参数结构体
      class ModifyPacketFilterConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param PacketFilterConfig: 特征过滤配置
        # @type PacketFilterConfig: :class:`Tencentcloud::Antiddos.v20200309.models.PacketFilterConfig`

        attr_accessor :InstanceId, :PacketFilterConfig
        
        def initialize(instanceid=nil, packetfilterconfig=nil)
          @InstanceId = instanceid
          @PacketFilterConfig = packetfilterconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['PacketFilterConfig'].nil?
            @PacketFilterConfig = PacketFilterConfig.new
            @PacketFilterConfig.deserialize(params['PacketFilterConfig'])
          end
        end
      end

      # ModifyPacketFilterConfig返回参数结构体
      class ModifyPacketFilterConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPortAclConfig请求参数结构体
      class ModifyPortAclConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param OldAclConfig: 旧端口acl策略
        # @type OldAclConfig: :class:`Tencentcloud::Antiddos.v20200309.models.AclConfig`
        # @param NewAclConfig: 新端口acl策略
        # @type NewAclConfig: :class:`Tencentcloud::Antiddos.v20200309.models.AclConfig`

        attr_accessor :InstanceId, :OldAclConfig, :NewAclConfig
        
        def initialize(instanceid=nil, oldaclconfig=nil, newaclconfig=nil)
          @InstanceId = instanceid
          @OldAclConfig = oldaclconfig
          @NewAclConfig = newaclconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['OldAclConfig'].nil?
            @OldAclConfig = AclConfig.new
            @OldAclConfig.deserialize(params['OldAclConfig'])
          end
          unless params['NewAclConfig'].nil?
            @NewAclConfig = AclConfig.new
            @NewAclConfig.deserialize(params['NewAclConfig'])
          end
        end
      end

      # ModifyPortAclConfig返回参数结构体
      class ModifyPortAclConfigResponse < TencentCloud::Common::AbstractModel
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

      # L7规则
      class NewL7RuleEntry < TencentCloud::Common::AbstractModel
        # @param KeepTime: 会话保持时间，单位秒
        # @type KeepTime: Integer
        # @param LbType: 负载均衡方式，取值[1(加权轮询)]
        # @type LbType: Integer
        # @param SourceList: 回源列表
        # @type SourceList: Array
        # @param KeepEnable: 会话保持开关，取值[0(会话保持关闭)，1(会话保持开启)]
        # @type KeepEnable: Integer
        # @param Domain: 转发域名
        # @type Domain: String
        # @param Protocol: 转发协议，取值[http, https]
        # @type Protocol: String
        # @param SourceType: 回源方式，取值[1(域名回源)，2(IP回源)]
        # @type SourceType: Integer
        # @param HttpsToHttpEnable: 是否开启Https协议使用Http回源，取值[0(关闭), 1(开启)]，不填写默认是关闭
        # @type HttpsToHttpEnable: Integer
        # @param Status: 规则状态，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        # @type Status: Integer
        # @param CCLevel: HTTPS协议的CC防护等级
        # @type CCLevel: String
        # @param CCEnable: HTTPS协议的CC防护状态，取值[0(关闭), 1(开启)]
        # @type CCEnable: Integer
        # @param CCThreshold: HTTPS协议的CC防护阈值
        # @type CCThreshold: Integer
        # @param Region: 区域码
        # @type Region: Integer
        # @param RuleName: 规则描述
        # @type RuleName: String
        # @param Cert: 当证书来源为自有证书时，此字段必须填写证书内容；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type Cert: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param RuleId: 规则ID，当添加新规则时可以不用填写此字段；当修改或者删除规则时需要填写此字段；
        # @type RuleId: String
        # @param Ip: 资源Ip
        # @type Ip: String
        # @param PrivateKey: 当证书来源为自有证书时，此字段必须填写证书密钥；(因已不再支持自有证书，此字段已弃用，请不用填写此字段)
        # @type PrivateKey: String
        # @param CertType: 证书来源，当转发协议为https时必须填，取值[2(腾讯云托管证书)]，当转发协议为http时也可以填0
        # @type CertType: Integer
        # @param VirtualPort: 接入端口值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPort: Integer
        # @param CCStatus: cc防护状态，取值[0(关闭), 1(开启)]
        # @type CCStatus: Integer
        # @param SSLId: 当证书来源为腾讯云托管证书时，此字段必须填写托管证书ID
        # @type SSLId: String
        # @param Id: 资源Id
        # @type Id: String

        attr_accessor :KeepTime, :LbType, :SourceList, :KeepEnable, :Domain, :Protocol, :SourceType, :HttpsToHttpEnable, :Status, :CCLevel, :CCEnable, :CCThreshold, :Region, :RuleName, :Cert, :ModifyTime, :RuleId, :Ip, :PrivateKey, :CertType, :VirtualPort, :CCStatus, :SSLId, :Id
        
        def initialize(keeptime=nil, lbtype=nil, sourcelist=nil, keepenable=nil, domain=nil, protocol=nil, sourcetype=nil, httpstohttpenable=nil, status=nil, cclevel=nil, ccenable=nil, ccthreshold=nil, region=nil, rulename=nil, cert=nil, modifytime=nil, ruleid=nil, ip=nil, privatekey=nil, certtype=nil, virtualport=nil, ccstatus=nil, sslid=nil, id=nil)
          @KeepTime = keeptime
          @LbType = lbtype
          @SourceList = sourcelist
          @KeepEnable = keepenable
          @Domain = domain
          @Protocol = protocol
          @SourceType = sourcetype
          @HttpsToHttpEnable = httpstohttpenable
          @Status = status
          @CCLevel = cclevel
          @CCEnable = ccenable
          @CCThreshold = ccthreshold
          @Region = region
          @RuleName = rulename
          @Cert = cert
          @ModifyTime = modifytime
          @RuleId = ruleid
          @Ip = ip
          @PrivateKey = privatekey
          @CertType = certtype
          @VirtualPort = virtualport
          @CCStatus = ccstatus
          @SSLId = sslid
          @Id = id
        end

        def deserialize(params)
          @KeepTime = params['KeepTime']
          @LbType = params['LbType']
          unless params['SourceList'].nil?
            @SourceList = []
            params['SourceList'].each do |i|
              l4rulesource_tmp = L4RuleSource.new
              l4rulesource_tmp.deserialize(i)
              @SourceList << l4rulesource_tmp
            end
          end
          @KeepEnable = params['KeepEnable']
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          @SourceType = params['SourceType']
          @HttpsToHttpEnable = params['HttpsToHttpEnable']
          @Status = params['Status']
          @CCLevel = params['CCLevel']
          @CCEnable = params['CCEnable']
          @CCThreshold = params['CCThreshold']
          @Region = params['Region']
          @RuleName = params['RuleName']
          @Cert = params['Cert']
          @ModifyTime = params['ModifyTime']
          @RuleId = params['RuleId']
          @Ip = params['Ip']
          @PrivateKey = params['PrivateKey']
          @CertType = params['CertType']
          @VirtualPort = params['VirtualPort']
          @CCStatus = params['CCStatus']
          @SSLId = params['SSLId']
          @Id = params['Id']
        end
      end

      # 套餐包信息
      class PackInfo < TencentCloud::Common::AbstractModel
        # @param PackType: 套餐包的类型，取值[
        # staticpack：高防IP三网套餐包
        # insurance：保险套餐包
        # ]
        # @type PackType: String
        # @param PackId: 套餐包的ID
        # @type PackId: String

        attr_accessor :PackType, :PackId
        
        def initialize(packtype=nil, packid=nil)
          @PackType = packtype
          @PackId = packid
        end

        def deserialize(params)
          @PackType = params['PackType']
          @PackId = params['PackId']
        end
      end

      # 特征过滤配置
      class PacketFilterConfig < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议，取值[tcp udp icmp all]
        # @type Protocol: String
        # @param SportStart: 起始源端口，取值0~65535
        # @type SportStart: Integer
        # @param SportEnd: 结束源端口，取值1~65535，必须大于等于起始源端口
        # @type SportEnd: Integer
        # @param DportStart: 起始目的端口，取值0~65535
        # @type DportStart: Integer
        # @param DportEnd: 结束目的端口，取值1~65535，必须大于等于起始目的端口
        # @type DportEnd: Integer
        # @param PktlenMin: 最小报文长度，取值1-1500
        # @type PktlenMin: Integer
        # @param PktlenMax: 最大报文长度，取值1-1500，必须大于等于最小报文长度
        # @type PktlenMax: Integer
        # @param Action: 动作，取值[
        # drop(丢弃)
        # transmit(放行)
        # drop_black(丢弃并拉黑)
        # drop_rst(拦截)
        # drop_black_rst(拦截并拉黑)
        # forward(继续防护)
        # ]
        # @type Action: String
        # @param MatchBegin: 检测位置，取值[
        # begin_l3(IP头)
        # begin_l4(TCP/UDP头)
        # begin_l5(T载荷)
        # no_match(不匹配)
        # ]
        # @type MatchBegin: String
        # @param MatchType: 检测类型，取值[
        # sunday(关键字)
        # pcre(正则表达式)
        # ]
        # @type MatchType: String
        # @param Str: 检测值，关键字符串或正则表达式,取值[
        # 当检测类型为sunday时，请填写字符串或者16进制字节码，例如\x313233对应的是字符串"123"的16进制字节码;
        # 当检测类型为pcre时, 请填写正则表达式字符串;
        # ]
        # @type Str: String
        # @param Depth: 从检测位置开始的检测深度，取值[0,1500]
        # @type Depth: Integer
        # @param Offset: 从检测位置开始的偏移量，取值范围[0,Depth]
        # @type Offset: Integer
        # @param IsNot: 是否包含检测值，取值[
        # 0(包含)
        # 1(不包含)
        # ]
        # @type IsNot: Integer
        # @param MatchLogic: 当有第二个检测条件时，与第一检测条件的且或关系，取值[
        # and(且的关系)
        # none(当没有第二个检测条件时填写此值)
        # ]
        # @type MatchLogic: String
        # @param MatchBegin2: 第二个检测位置，取值[
        # begin_l5(载荷)
        # no_match(不匹配)
        # ]
        # @type MatchBegin2: String
        # @param MatchType2: 第二个检测类型，取值[
        # sunday(关键字)
        # pcre(正则表达式)
        # ]
        # @type MatchType2: String
        # @param Str2: 第二个检测值，关键字符串或正则表达式,取值[
        # 当检测类型为sunday时，请填写字符串或者16进制字节码，例如\x313233对应的是字符串"123"的16进制字节码;
        # 当检测类型为pcre时, 请填写正则表达式字符串;
        # ]
        # @type Str2: String
        # @param Depth2: 从第二个检测位置开始的第二个检测深度，取值[0,1500]
        # @type Depth2: Integer
        # @param Offset2: 从第二个检测位置开始的偏移量，取值范围[0,Depth2]
        # @type Offset2: Integer
        # @param IsNot2: 第二个检测是否包含检测值，取值[
        # 0(包含)
        # 1(不包含)
        # ]
        # @type IsNot2: Integer
        # @param Id: 特征过滤配置添加成功后自动生成的规则ID，当添加新特征过滤配置时，此字段不用填写；
        # @type Id: String

        attr_accessor :Protocol, :SportStart, :SportEnd, :DportStart, :DportEnd, :PktlenMin, :PktlenMax, :Action, :MatchBegin, :MatchType, :Str, :Depth, :Offset, :IsNot, :MatchLogic, :MatchBegin2, :MatchType2, :Str2, :Depth2, :Offset2, :IsNot2, :Id
        
        def initialize(protocol=nil, sportstart=nil, sportend=nil, dportstart=nil, dportend=nil, pktlenmin=nil, pktlenmax=nil, action=nil, matchbegin=nil, matchtype=nil, str=nil, depth=nil, offset=nil, isnot=nil, matchlogic=nil, matchbegin2=nil, matchtype2=nil, str2=nil, depth2=nil, offset2=nil, isnot2=nil, id=nil)
          @Protocol = protocol
          @SportStart = sportstart
          @SportEnd = sportend
          @DportStart = dportstart
          @DportEnd = dportend
          @PktlenMin = pktlenmin
          @PktlenMax = pktlenmax
          @Action = action
          @MatchBegin = matchbegin
          @MatchType = matchtype
          @Str = str
          @Depth = depth
          @Offset = offset
          @IsNot = isnot
          @MatchLogic = matchlogic
          @MatchBegin2 = matchbegin2
          @MatchType2 = matchtype2
          @Str2 = str2
          @Depth2 = depth2
          @Offset2 = offset2
          @IsNot2 = isnot2
          @Id = id
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @SportStart = params['SportStart']
          @SportEnd = params['SportEnd']
          @DportStart = params['DportStart']
          @DportEnd = params['DportEnd']
          @PktlenMin = params['PktlenMin']
          @PktlenMax = params['PktlenMax']
          @Action = params['Action']
          @MatchBegin = params['MatchBegin']
          @MatchType = params['MatchType']
          @Str = params['Str']
          @Depth = params['Depth']
          @Offset = params['Offset']
          @IsNot = params['IsNot']
          @MatchLogic = params['MatchLogic']
          @MatchBegin2 = params['MatchBegin2']
          @MatchType2 = params['MatchType2']
          @Str2 = params['Str2']
          @Depth2 = params['Depth2']
          @Offset2 = params['Offset2']
          @IsNot2 = params['IsNot2']
          @Id = params['Id']
        end
      end

      # 特征过滤相关信息
      class PacketFilterRelation < TencentCloud::Common::AbstractModel
        # @param PacketFilterConfig: 特征过滤配置
        # @type PacketFilterConfig: :class:`Tencentcloud::Antiddos.v20200309.models.PacketFilterConfig`
        # @param InstanceDetailList: 特征过滤配置所属的实例
        # @type InstanceDetailList: Array

        attr_accessor :PacketFilterConfig, :InstanceDetailList
        
        def initialize(packetfilterconfig=nil, instancedetaillist=nil)
          @PacketFilterConfig = packetfilterconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['PacketFilterConfig'].nil?
            @PacketFilterConfig = PacketFilterConfig.new
            @PacketFilterConfig.deserialize(params['PacketFilterConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

      # 端口段信息
      class PortSegment < TencentCloud::Common::AbstractModel
        # @param BeginPort: 起始端口，取值1~65535
        # @type BeginPort: Integer
        # @param EndPort: 结束端口，取值1~65535，必须不小于起始端口
        # @type EndPort: Integer

        attr_accessor :BeginPort, :EndPort
        
        def initialize(beginport=nil, endport=nil)
          @BeginPort = beginport
          @EndPort = endport
        end

        def deserialize(params)
          @BeginPort = params['BeginPort']
          @EndPort = params['EndPort']
        end
      end

      # 防护阈值配置相关信息
      class ProtectThresholdRelation < TencentCloud::Common::AbstractModel
        # @param DDoSLevel: DDoS防护等级，取值[
        # low(宽松)
        # middle(适中)
        # high(严格)
        # ]
        # @type DDoSLevel: String
        # @param DDoSThreshold: DDoS清洗阈值，单位Mbps
        # @type DDoSThreshold: Integer
        # @param DDoSAI: DDoS的AI防护开关，取值[
        # on(开启)
        # off(关闭)
        # ]
        # @type DDoSAI: String
        # @param CCEnable: CC清洗开关，取值[
        # 0(关闭)
        # 1(开启)
        # ]
        # @type CCEnable: Integer
        # @param CCThreshold: CC清洗阈值，单位QPS
        # @type CCThreshold: Integer
        # @param InstanceDetailList: 所属的资源实例
        # @type InstanceDetailList: Array
        # @param ListenerCcThresholdList: 域名与协议纬度的防护阈值
        # @type ListenerCcThresholdList: Array

        attr_accessor :DDoSLevel, :DDoSThreshold, :DDoSAI, :CCEnable, :CCThreshold, :InstanceDetailList, :ListenerCcThresholdList
        
        def initialize(ddoslevel=nil, ddosthreshold=nil, ddosai=nil, ccenable=nil, ccthreshold=nil, instancedetaillist=nil, listenerccthresholdlist=nil)
          @DDoSLevel = ddoslevel
          @DDoSThreshold = ddosthreshold
          @DDoSAI = ddosai
          @CCEnable = ccenable
          @CCThreshold = ccthreshold
          @InstanceDetailList = instancedetaillist
          @ListenerCcThresholdList = listenerccthresholdlist
        end

        def deserialize(params)
          @DDoSLevel = params['DDoSLevel']
          @DDoSThreshold = params['DDoSThreshold']
          @DDoSAI = params['DDoSAI']
          @CCEnable = params['CCEnable']
          @CCThreshold = params['CCThreshold']
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
          unless params['ListenerCcThresholdList'].nil?
            @ListenerCcThresholdList = []
            params['ListenerCcThresholdList'].each do |i|
              listenerccthreholdconfig_tmp = ListenerCcThreholdConfig.new
              listenerccthreholdconfig_tmp.deserialize(i)
              @ListenerCcThresholdList << listenerccthreholdconfig_tmp
            end
          end
        end
      end

      # 协议封禁配置
      class ProtocolBlockConfig < TencentCloud::Common::AbstractModel
        # @param DropTcp: TCP封禁，取值[0(封禁关)，1(封禁开)]
        # @type DropTcp: Integer
        # @param DropUdp: UDP封禁，取值[0(封禁关)，1(封禁开)]
        # @type DropUdp: Integer
        # @param DropIcmp: ICMP封禁，取值[0(封禁关)，1(封禁开)]
        # @type DropIcmp: Integer
        # @param DropOther: 其他协议封禁，取值[0(封禁关)，1(封禁开)]
        # @type DropOther: Integer
        # @param CheckExceptNullConnect: 异常空连接防护，取值[0(防护关)，1(防护开)]
        # @type CheckExceptNullConnect: Integer

        attr_accessor :DropTcp, :DropUdp, :DropIcmp, :DropOther, :CheckExceptNullConnect
        
        def initialize(droptcp=nil, dropudp=nil, dropicmp=nil, dropother=nil, checkexceptnullconnect=nil)
          @DropTcp = droptcp
          @DropUdp = dropudp
          @DropIcmp = dropicmp
          @DropOther = dropother
          @CheckExceptNullConnect = checkexceptnullconnect
        end

        def deserialize(params)
          @DropTcp = params['DropTcp']
          @DropUdp = params['DropUdp']
          @DropIcmp = params['DropIcmp']
          @DropOther = params['DropOther']
          @CheckExceptNullConnect = params['CheckExceptNullConnect']
        end
      end

      # 协议封禁相关信息
      class ProtocolBlockRelation < TencentCloud::Common::AbstractModel
        # @param ProtocolBlockConfig: 协议封禁配置
        # @type ProtocolBlockConfig: :class:`Tencentcloud::Antiddos.v20200309.models.ProtocolBlockConfig`
        # @param InstanceDetailList: 协议封禁配置所属的实例
        # @type InstanceDetailList: Array

        attr_accessor :ProtocolBlockConfig, :InstanceDetailList
        
        def initialize(protocolblockconfig=nil, instancedetaillist=nil)
          @ProtocolBlockConfig = protocolblockconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['ProtocolBlockConfig'].nil?
            @ProtocolBlockConfig = ProtocolBlockConfig.new
            @ProtocolBlockConfig.deserialize(params['ProtocolBlockConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
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

      # 转发类型
      class ProxyTypeInfo < TencentCloud::Common::AbstractModel
        # @param ProxyPorts: 转发监听端口列表，端口取值1~65535
        # @type ProxyPorts: Array
        # @param ProxyType: 转发协议，取值[
        # http(HTTP协议)
        # https(HTTPS协议)
        # ]
        # @type ProxyType: String

        attr_accessor :ProxyPorts, :ProxyType
        
        def initialize(proxyports=nil, proxytype=nil)
          @ProxyPorts = proxyports
          @ProxyType = proxytype
        end

        def deserialize(params)
          @ProxyPorts = params['ProxyPorts']
          @ProxyType = params['ProxyType']
        end
      end

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域名称，例如，ap-guangzhou
        # @type Region: String

        attr_accessor :Region
        
        def initialize(region=nil)
          @Region = region
        end

        def deserialize(params)
          @Region = params['Region']
        end
      end

      # 调度域名信息
      class SchedulingDomainInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 调度域名
        # @type Domain: String
        # @param LineIPList: 线路IP列表
        # @type LineIPList: Array
        # @param Method: 调度方式，当前仅支持优先级的方式，取值[priority]
        # @type Method: String
        # @param TTL: 调度域名解析记录的TTL值
        # @type TTL: Integer
        # @param Status: 运行状态，取值[
        # 0：未运行
        # 1：运行中
        # 2：运行异常
        # ]
        # @type Status: Integer
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param ModifyTime: 最后修改时间
        # @type ModifyTime: String
        # @param UsrDomainName: 域名名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsrDomainName: String

        attr_accessor :Domain, :LineIPList, :Method, :TTL, :Status, :CreatedTime, :ModifyTime, :UsrDomainName
        
        def initialize(domain=nil, lineiplist=nil, method=nil, ttl=nil, status=nil, createdtime=nil, modifytime=nil, usrdomainname=nil)
          @Domain = domain
          @LineIPList = lineiplist
          @Method = method
          @TTL = ttl
          @Status = status
          @CreatedTime = createdtime
          @ModifyTime = modifytime
          @UsrDomainName = usrdomainname
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['LineIPList'].nil?
            @LineIPList = []
            params['LineIPList'].each do |i|
              iplineinfo_tmp = IPLineInfo.new
              iplineinfo_tmp.deserialize(i)
              @LineIPList << iplineinfo_tmp
            end
          end
          @Method = params['Method']
          @TTL = params['TTL']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @ModifyTime = params['ModifyTime']
          @UsrDomainName = params['UsrDomainName']
        end
      end

      # 源站信息
      class SourceServer < TencentCloud::Common::AbstractModel
        # @param RealServer: 源站的地址（IP或者域名）
        # @type RealServer: String
        # @param RsType: 源站的地址类型，取值[
        # 1(域名地址)
        # 2(IP地址)
        # ]
        # @type RsType: Integer
        # @param Weight: 源站的回源权重，取值1~100
        # @type Weight: Integer

        attr_accessor :RealServer, :RsType, :Weight
        
        def initialize(realserver=nil, rstype=nil, weight=nil)
          @RealServer = realserver
          @RsType = rstype
          @Weight = weight
        end

        def deserialize(params)
          @RealServer = params['RealServer']
          @RsType = params['RsType']
          @Weight = params['Weight']
        end
      end

      # 限速值类型，例如：包速率pps、带宽bps
      class SpeedValue < TencentCloud::Common::AbstractModel
        # @param Type: 限速值类型，取值[
        # 1(包速率pps)
        # 2(带宽bps)
        # ]
        # @type Type: Integer
        # @param Value: 值大小
        # @type Value: Integer

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

      # 三网高防套餐详情
      class StaticPackRelation < TencentCloud::Common::AbstractModel
        # @param ProtectBandwidth: 保底带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectBandwidth: Integer
        # @param NormalBandwidth: 业务带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalBandwidth: Integer
        # @param ForwardRulesLimit: 转发规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardRulesLimit: Integer
        # @param AutoRenewFlag: 自动续费标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurDeadline: String

        attr_accessor :ProtectBandwidth, :NormalBandwidth, :ForwardRulesLimit, :AutoRenewFlag, :CurDeadline
        
        def initialize(protectbandwidth=nil, normalbandwidth=nil, forwardruleslimit=nil, autorenewflag=nil, curdeadline=nil)
          @ProtectBandwidth = protectbandwidth
          @NormalBandwidth = normalbandwidth
          @ForwardRulesLimit = forwardruleslimit
          @AutoRenewFlag = autorenewflag
          @CurDeadline = curdeadline
        end

        def deserialize(params)
          @ProtectBandwidth = params['ProtectBandwidth']
          @NormalBandwidth = params['NormalBandwidth']
          @ForwardRulesLimit = params['ForwardRulesLimit']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CurDeadline = params['CurDeadline']
        end
      end

      # 操作返回码，只用于返回成功的情况
      class SuccessCode < TencentCloud::Common::AbstractModel
        # @param Message: 描述
        # @type Message: String
        # @param Code: 成功/错误码
        # @type Code: String

        attr_accessor :Message, :Code
        
        def initialize(message=nil, code=nil)
          @Message = message
          @Code = code
        end

        def deserialize(params)
          @Message = params['Message']
          @Code = params['Code']
        end
      end

      # SwitchWaterPrintConfig请求参数结构体
      class SwitchWaterPrintConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源实例ID
        # @type InstanceId: String
        # @param OpenStatus: 水印开启/关闭状态，1表示开启；0表示关闭
        # @type OpenStatus: Integer

        attr_accessor :InstanceId, :OpenStatus
        
        def initialize(instanceid=nil, openstatus=nil)
          @InstanceId = instanceid
          @OpenStatus = openstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OpenStatus = params['OpenStatus']
        end
      end

      # SwitchWaterPrintConfig返回参数结构体
      class SwitchWaterPrintConfigResponse < TencentCloud::Common::AbstractModel
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

      # 水印防护配置
      class WaterPrintConfig < TencentCloud::Common::AbstractModel
        # @param Offset: 水印偏移量，取值范围[0, 100)
        # @type Offset: Integer
        # @param OpenStatus: 是否开启，取值[
        # 0（手动开启）
        # 1（立即运行）
        # ]
        # @type OpenStatus: Integer
        # @param Listeners: 水印所属的转发监听器列表
        # @type Listeners: Array
        # @param Keys: 水印添加成功后生成的水印密钥列表，一条水印最少1个密钥，最多2个密钥
        # @type Keys: Array
        # @param Verify: 水印检查模式, 取值[
        # checkall（普通模式）
        # shortfpcheckall（精简模式）
        # ]
        # @type Verify: String

        attr_accessor :Offset, :OpenStatus, :Listeners, :Keys, :Verify
        
        def initialize(offset=nil, openstatus=nil, listeners=nil, keys=nil, verify=nil)
          @Offset = offset
          @OpenStatus = openstatus
          @Listeners = listeners
          @Keys = keys
          @Verify = verify
        end

        def deserialize(params)
          @Offset = params['Offset']
          @OpenStatus = params['OpenStatus']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              forwardlistener_tmp = ForwardListener.new
              forwardlistener_tmp.deserialize(i)
              @Listeners << forwardlistener_tmp
            end
          end
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              waterprintkey_tmp = WaterPrintKey.new
              waterprintkey_tmp.deserialize(i)
              @Keys << waterprintkey_tmp
            end
          end
          @Verify = params['Verify']
        end
      end

      # 生成的水印密钥
      class WaterPrintKey < TencentCloud::Common::AbstractModel
        # @param KeyVersion: 密钥版本号
        # @type KeyVersion: String
        # @param KeyContent: 密钥内容
        # @type KeyContent: String
        # @param KeyId: 密钥ID
        # @type KeyId: String
        # @param KeyOpenStatus: 密钥启用状态，只有一个取值1(启用)
        # @type KeyOpenStatus: Integer
        # @param CreateTime: 密钥生成时间
        # @type CreateTime: String

        attr_accessor :KeyVersion, :KeyContent, :KeyId, :KeyOpenStatus, :CreateTime
        
        def initialize(keyversion=nil, keycontent=nil, keyid=nil, keyopenstatus=nil, createtime=nil)
          @KeyVersion = keyversion
          @KeyContent = keycontent
          @KeyId = keyid
          @KeyOpenStatus = keyopenstatus
          @CreateTime = createtime
        end

        def deserialize(params)
          @KeyVersion = params['KeyVersion']
          @KeyContent = params['KeyContent']
          @KeyId = params['KeyId']
          @KeyOpenStatus = params['KeyOpenStatus']
          @CreateTime = params['CreateTime']
        end
      end

      # 水印配置相关信息
      class WaterPrintRelation < TencentCloud::Common::AbstractModel
        # @param WaterPrintConfig: 水印配置
        # @type WaterPrintConfig: :class:`Tencentcloud::Antiddos.v20200309.models.WaterPrintConfig`
        # @param InstanceDetailList: 水印配置所属的资源实例
        # @type InstanceDetailList: Array

        attr_accessor :WaterPrintConfig, :InstanceDetailList
        
        def initialize(waterprintconfig=nil, instancedetaillist=nil)
          @WaterPrintConfig = waterprintconfig
          @InstanceDetailList = instancedetaillist
        end

        def deserialize(params)
          unless params['WaterPrintConfig'].nil?
            @WaterPrintConfig = WaterPrintConfig.new
            @WaterPrintConfig.deserialize(params['WaterPrintConfig'])
          end
          unless params['InstanceDetailList'].nil?
            @InstanceDetailList = []
            params['InstanceDetailList'].each do |i|
              instancerelation_tmp = InstanceRelation.new
              instancerelation_tmp.deserialize(i)
              @InstanceDetailList << instancerelation_tmp
            end
          end
        end
      end

    end
  end
end

