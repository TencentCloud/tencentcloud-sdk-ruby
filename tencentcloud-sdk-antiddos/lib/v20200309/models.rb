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
        # @param ZoneId: 区分高防IP海外线路
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

        attr_accessor :InstanceDetail, :SpecificationLimit, :Usage, :Region, :Status, :ExpiredTime, :CreatedTime, :Name, :PackInfo, :StaticPackRelation, :ZoneId, :Tgw, :EipAddressStatus, :EipFlag, :EipAddressPackRelation, :EipAddressInfo
        
        def initialize(instancedetail=nil, specificationlimit=nil, usage=nil, region=nil, status=nil, expiredtime=nil, createdtime=nil, name=nil, packinfo=nil, staticpackrelation=nil, zoneid=nil, tgw=nil, eipaddressstatus=nil, eipflag=nil, eipaddresspackrelation=nil, eipaddressinfo=nil)
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
        end
      end

      # 高防IP资产实例的规格信息
      class BGPIPInstanceSpecification < TencentCloud::Common::AbstractModel
        # @param ProtectBandwidth: 保底防护峰值，单位Gbps
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
        # @param ElasticBandwidth: 弹性防护峰值，单位Gbps
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

        attr_accessor :ProtectBandwidth, :ProtectCountLimit, :ProtectIPNumberLimit, :AutoRenewFlag
        
        def initialize(protectbandwidth=nil, protectcountlimit=nil, protectipnumberlimit=nil, autorenewflag=nil)
          @ProtectBandwidth = protectbandwidth
          @ProtectCountLimit = protectcountlimit
          @ProtectIPNumberLimit = protectipnumberlimit
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @ProtectBandwidth = params['ProtectBandwidth']
          @ProtectCountLimit = params['ProtectCountLimit']
          @ProtectIPNumberLimit = params['ProtectIPNumberLimit']
          @AutoRenewFlag = params['AutoRenewFlag']
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
        # @param BizType: 绑定的产品分类，取值[public（CVM、CLB产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        # @type BizType: String
        # @param InstanceId: IP所属的资源实例ID，当绑定新IP时必须填写此字段；例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*); 如果绑定的是托管IP没有对应的资源实例ID，请填写"none";
        # @type InstanceId: String
        # @param DeviceType: 产品分类下的子类型，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        # @type DeviceType: String
        # @param IspCode: 运营商，0：电信；1：联通；2：移动；5：BGP
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

        attr_accessor :Offset, :Limit, :FilterIp, :FilterInstanceId, :FilterLine, :FilterRegion, :FilterName, :FilterEipType, :FilterEipEipAddressStatus
        
        def initialize(offset=nil, limit=nil, filterip=nil, filterinstanceid=nil, filterline=nil, filterregion=nil, filtername=nil, filtereiptype=nil, filtereipeipaddressstatus=nil)
          @Offset = offset
          @Limit = limit
          @FilterIp = filterip
          @FilterInstanceId = filterinstanceid
          @FilterLine = filterline
          @FilterRegion = filterregion
          @FilterName = filtername
          @FilterEipType = filtereiptype
          @FilterEipEipAddressStatus = filtereipeipaddressstatus
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

        attr_accessor :Offset, :Limit, :FilterIp, :FilterInstanceId, :FilterRegion, :FilterName, :FilterLine
        
        def initialize(offset=nil, limit=nil, filterip=nil, filterinstanceid=nil, filterregion=nil, filtername=nil, filterline=nil)
          @Offset = offset
          @Limit = limit
          @FilterIp = filterip
          @FilterInstanceId = filterinstanceid
          @FilterRegion = filterregion
          @FilterName = filtername
          @FilterLine = filterline
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FilterIp = params['FilterIp']
          @FilterInstanceId = params['FilterInstanceId']
          @FilterRegion = params['FilterRegion']
          @FilterName = params['FilterName']
          @FilterLine = params['FilterLine']
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
        # @param FilterDomain: 域名搜索（查询域名与协议的CC防护阈值时使用）
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

