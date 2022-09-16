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
  module Vpc
    module V20170312
      # AcceptAttachCcnInstances请求参数结构体
      class AcceptAttachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param Instances: 接受关联实例列表。
        # @type Instances: Array

        attr_accessor :CcnId, :Instances
        
        def initialize(ccnid=nil, instances=nil)
          @CcnId = ccnid
          @Instances = instances
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              ccninstance_tmp = CcnInstance.new
              ccninstance_tmp.deserialize(i)
              @Instances << ccninstance_tmp
            end
          end
        end
      end

      # AcceptAttachCcnInstances返回参数结构体
      class AcceptAttachCcnInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 策略信息
      class AccessPolicy < TencentCloud::Common::AbstractModel
        # @param TargetCidr: 目的CIDR
        # @type TargetCidr: String
        # @param VpnGatewayIdSslAccessPolicyId: 策略ID
        # @type VpnGatewayIdSslAccessPolicyId: String
        # @param ForAllClient: 是否对所有用户都生效。1 生效 0不生效
        # @type ForAllClient: Integer
        # @param UserGroupIds: 用户组ID
        # @type UserGroupIds: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :TargetCidr, :VpnGatewayIdSslAccessPolicyId, :ForAllClient, :UserGroupIds, :UpdateTime
        
        def initialize(targetcidr=nil, vpngatewayidsslaccesspolicyid=nil, forallclient=nil, usergroupids=nil, updatetime=nil)
          @TargetCidr = targetcidr
          @VpnGatewayIdSslAccessPolicyId = vpngatewayidsslaccesspolicyid
          @ForAllClient = forallclient
          @UserGroupIds = usergroupids
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TargetCidr = params['TargetCidr']
          @VpnGatewayIdSslAccessPolicyId = params['VpnGatewayIdSslAccessPolicyId']
          @ForAllClient = params['ForAllClient']
          @UserGroupIds = params['UserGroupIds']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 账户属性对象
      class AccountAttribute < TencentCloud::Common::AbstractModel
        # @param AttributeName: 属性名
        # @type AttributeName: String
        # @param AttributeValues: 属性值
        # @type AttributeValues: Array

        attr_accessor :AttributeName, :AttributeValues
        
        def initialize(attributename=nil, attributevalues=nil)
          @AttributeName = attributename
          @AttributeValues = attributevalues
        end

        def deserialize(params)
          @AttributeName = params['AttributeName']
          @AttributeValues = params['AttributeValues']
        end
      end

      # AddBandwidthPackageResources请求参数结构体
      class AddBandwidthPackageResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 资源唯一ID，当前支持EIP资源和LB资源，形如'eip-xxxx', 'lb-xxxx'
        # @type ResourceIds: Array
        # @param BandwidthPackageId: 带宽包唯一标识ID，形如'bwp-xxxx'
        # @type BandwidthPackageId: String
        # @param NetworkType: 带宽包类型，当前支持'BGP'类型，表示内部资源是BGP IP。
        # @type NetworkType: String
        # @param ResourceType: 资源类型，包括'Address', 'LoadBalance'
        # @type ResourceType: String
        # @param Protocol: 带宽包协议类型。当前支持'ipv4'和'ipv6'协议类型。
        # @type Protocol: String

        attr_accessor :ResourceIds, :BandwidthPackageId, :NetworkType, :ResourceType, :Protocol
        
        def initialize(resourceids=nil, bandwidthpackageid=nil, networktype=nil, resourcetype=nil, protocol=nil)
          @ResourceIds = resourceids
          @BandwidthPackageId = bandwidthpackageid
          @NetworkType = networktype
          @ResourceType = resourcetype
          @Protocol = protocol
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @BandwidthPackageId = params['BandwidthPackageId']
          @NetworkType = params['NetworkType']
          @ResourceType = params['ResourceType']
          @Protocol = params['Protocol']
        end
      end

      # AddBandwidthPackageResources返回参数结构体
      class AddBandwidthPackageResourcesResponse < TencentCloud::Common::AbstractModel
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

      # AddIp6Rules请求参数结构体
      class AddIp6RulesRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorId: IPV6转换实例唯一ID，形如ip6-xxxxxxxx
        # @type Ip6TranslatorId: String
        # @param Ip6RuleInfos: IPV6转换规则信息
        # @type Ip6RuleInfos: Array
        # @param Ip6RuleName: IPV6转换规则名称
        # @type Ip6RuleName: String

        attr_accessor :Ip6TranslatorId, :Ip6RuleInfos, :Ip6RuleName
        
        def initialize(ip6translatorid=nil, ip6ruleinfos=nil, ip6rulename=nil)
          @Ip6TranslatorId = ip6translatorid
          @Ip6RuleInfos = ip6ruleinfos
          @Ip6RuleName = ip6rulename
        end

        def deserialize(params)
          @Ip6TranslatorId = params['Ip6TranslatorId']
          unless params['Ip6RuleInfos'].nil?
            @Ip6RuleInfos = []
            params['Ip6RuleInfos'].each do |i|
              ip6ruleinfo_tmp = Ip6RuleInfo.new
              ip6ruleinfo_tmp.deserialize(i)
              @Ip6RuleInfos << ip6ruleinfo_tmp
            end
          end
          @Ip6RuleName = params['Ip6RuleName']
        end
      end

      # AddIp6Rules返回参数结构体
      class AddIp6RulesResponse < TencentCloud::Common::AbstractModel
        # @param Ip6RuleSet: IPV6转换规则唯一ID数组，形如rule6-xxxxxxxx
        # @type Ip6RuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ip6RuleSet, :RequestId
        
        def initialize(ip6ruleset=nil, requestid=nil)
          @Ip6RuleSet = ip6ruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @Ip6RuleSet = params['Ip6RuleSet']
          @RequestId = params['RequestId']
        end
      end

      # AddTemplateMember请求参数结构体
      class AddTemplateMemberRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板实例ID，支持IP地址、协议端口、IP地址组、协议端口组四种参数模板的实例ID。
        # @type TemplateId: String
        # @param TemplateMember: 需要添加的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致。
        # @type TemplateMember: Array

        attr_accessor :TemplateId, :TemplateMember
        
        def initialize(templateid=nil, templatemember=nil)
          @TemplateId = templateid
          @TemplateMember = templatemember
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['TemplateMember'].nil?
            @TemplateMember = []
            params['TemplateMember'].each do |i|
              memberinfo_tmp = MemberInfo.new
              memberinfo_tmp.deserialize(i)
              @TemplateMember << memberinfo_tmp
            end
          end
        end
      end

      # AddTemplateMember返回参数结构体
      class AddTemplateMemberResponse < TencentCloud::Common::AbstractModel
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

      # 描述 EIP 信息
      class Address < TencentCloud::Common::AbstractModel
        # @param AddressId: `EIP`的`ID`，是`EIP`的唯一标识。
        # @type AddressId: String
        # @param AddressName: `EIP`名称。
        # @type AddressName: String
        # @param AddressStatus: `EIP`状态，包含'CREATING'(创建中),'BINDING'(绑定中),'BIND'(已绑定),'UNBINDING'(解绑中),'UNBIND'(已解绑),'OFFLINING'(释放中),'BIND_ENI'(绑定悬空弹性网卡)
        # @type AddressStatus: String
        # @param AddressIp: 外网IP地址
        # @type AddressIp: String
        # @param InstanceId: 绑定的资源实例`ID`。可能是一个`CVM`，`NAT`。
        # @type InstanceId: String
        # @param CreatedTime: 创建时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type CreatedTime: String
        # @param NetworkInterfaceId: 绑定的弹性网卡ID
        # @type NetworkInterfaceId: String
        # @param PrivateAddressIp: 绑定的资源内网ip
        # @type PrivateAddressIp: String
        # @param IsArrears: 资源隔离状态。true表示eip处于隔离状态，false表示资源处于未隔离状态
        # @type IsArrears: Boolean
        # @param IsBlocked: 资源封堵状态。true表示eip处于封堵状态，false表示eip处于未封堵状态
        # @type IsBlocked: Boolean
        # @param IsEipDirectConnection: eip是否支持直通模式。true表示eip支持直通模式，false表示资源不支持直通模式
        # @type IsEipDirectConnection: Boolean
        # @param AddressType: EIP 资源类型，包括CalcIP、WanIP、EIP和AnycastEIP。其中：CalcIP 表示设备 IP，WanIP 表示普通公网 IP，EIP 表示弹性公网 IP，AnycastEip 表示加速 EIP。
        # @type AddressType: String
        # @param CascadeRelease: eip是否在解绑后自动释放。true表示eip将会在解绑后自动释放，false表示eip在解绑后不会自动释放
        # @type CascadeRelease: Boolean
        # @param EipAlgType: EIP ALG开启的协议类型。
        # @type EipAlgType: :class:`Tencentcloud::Vpc.v20170312.models.AlgType`
        # @param InternetServiceProvider: 弹性公网IP的运营商信息，当前可能返回值包括"CMCC","CTCC","CUCC","BGP"
        # @type InternetServiceProvider: String
        # @param LocalBgp: 是否本地带宽EIP
        # @type LocalBgp: Boolean
        # @param Bandwidth: 弹性公网IP的带宽值。注意，传统账户类型账户的弹性公网IP没有带宽属性，值为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param InternetChargeType: 弹性公网IP的网络计费模式。注意，传统账户类型账户的弹性公网IP没有网络计费模式属性，值为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 包括：
        # <li><strong>BANDWIDTH_PREPAID_BY_MONTH</strong></li>
        # <p style="padding-left: 30px;">表示包月带宽预付费。</p>
        # <li><strong>TRAFFIC_POSTPAID_BY_HOUR</strong></li>
        # <p style="padding-left: 30px;">表示按小时流量后付费。</p>
        # <li><strong>BANDWIDTH_POSTPAID_BY_HOUR</strong></li>
        # <p style="padding-left: 30px;">表示按小时带宽后付费。</p>
        # <li><strong>BANDWIDTH_PACKAGE</strong></li>
        # <p style="padding-left: 30px;">表示共享带宽包。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetChargeType: String
        # @param TagSet: 弹性公网IP关联的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array

        attr_accessor :AddressId, :AddressName, :AddressStatus, :AddressIp, :InstanceId, :CreatedTime, :NetworkInterfaceId, :PrivateAddressIp, :IsArrears, :IsBlocked, :IsEipDirectConnection, :AddressType, :CascadeRelease, :EipAlgType, :InternetServiceProvider, :LocalBgp, :Bandwidth, :InternetChargeType, :TagSet
        
        def initialize(addressid=nil, addressname=nil, addressstatus=nil, addressip=nil, instanceid=nil, createdtime=nil, networkinterfaceid=nil, privateaddressip=nil, isarrears=nil, isblocked=nil, iseipdirectconnection=nil, addresstype=nil, cascaderelease=nil, eipalgtype=nil, internetserviceprovider=nil, localbgp=nil, bandwidth=nil, internetchargetype=nil, tagset=nil)
          @AddressId = addressid
          @AddressName = addressname
          @AddressStatus = addressstatus
          @AddressIp = addressip
          @InstanceId = instanceid
          @CreatedTime = createdtime
          @NetworkInterfaceId = networkinterfaceid
          @PrivateAddressIp = privateaddressip
          @IsArrears = isarrears
          @IsBlocked = isblocked
          @IsEipDirectConnection = iseipdirectconnection
          @AddressType = addresstype
          @CascadeRelease = cascaderelease
          @EipAlgType = eipalgtype
          @InternetServiceProvider = internetserviceprovider
          @LocalBgp = localbgp
          @Bandwidth = bandwidth
          @InternetChargeType = internetchargetype
          @TagSet = tagset
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @AddressName = params['AddressName']
          @AddressStatus = params['AddressStatus']
          @AddressIp = params['AddressIp']
          @InstanceId = params['InstanceId']
          @CreatedTime = params['CreatedTime']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @PrivateAddressIp = params['PrivateAddressIp']
          @IsArrears = params['IsArrears']
          @IsBlocked = params['IsBlocked']
          @IsEipDirectConnection = params['IsEipDirectConnection']
          @AddressType = params['AddressType']
          @CascadeRelease = params['CascadeRelease']
          unless params['EipAlgType'].nil?
            @EipAlgType = AlgType.new
            @EipAlgType.deserialize(params['EipAlgType'])
          end
          @InternetServiceProvider = params['InternetServiceProvider']
          @LocalBgp = params['LocalBgp']
          @Bandwidth = params['Bandwidth']
          @InternetChargeType = params['InternetChargeType']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
        end
      end

      # 用于描述弹性公网IP的费用对象
      class AddressChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位是月。可支持时长：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36
        # @type Period: Integer
        # @param AutoRenewFlag: 自动续费标志。0表示手动续费，1表示自动续费，2表示到期不续费。默认缺省为0即手动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :Period, :AutoRenewFlag
        
        def initialize(period=nil, autorenewflag=nil)
          @Period = period
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # IP地址模板信息
      class AddressInfo < TencentCloud::Common::AbstractModel
        # @param Address: ip地址。
        # @type Address: String
        # @param Description: 备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Address, :Description
        
        def initialize(address=nil, description=nil)
          @Address = address
          @Description = description
        end

        def deserialize(params)
          @Address = params['Address']
          @Description = params['Description']
        end
      end

      # IP地址模板
      class AddressTemplate < TencentCloud::Common::AbstractModel
        # @param AddressTemplateName: IP地址模板名称。
        # @type AddressTemplateName: String
        # @param AddressTemplateId: IP地址模板实例唯一ID。
        # @type AddressTemplateId: String
        # @param AddressSet: IP地址信息。
        # @type AddressSet: Array
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param AddressExtraSet: 带备注的IP地址信息。
        # @type AddressExtraSet: Array

        attr_accessor :AddressTemplateName, :AddressTemplateId, :AddressSet, :CreatedTime, :AddressExtraSet
        
        def initialize(addresstemplatename=nil, addresstemplateid=nil, addressset=nil, createdtime=nil, addressextraset=nil)
          @AddressTemplateName = addresstemplatename
          @AddressTemplateId = addresstemplateid
          @AddressSet = addressset
          @CreatedTime = createdtime
          @AddressExtraSet = addressextraset
        end

        def deserialize(params)
          @AddressTemplateName = params['AddressTemplateName']
          @AddressTemplateId = params['AddressTemplateId']
          @AddressSet = params['AddressSet']
          @CreatedTime = params['CreatedTime']
          unless params['AddressExtraSet'].nil?
            @AddressExtraSet = []
            params['AddressExtraSet'].each do |i|
              addressinfo_tmp = AddressInfo.new
              addressinfo_tmp.deserialize(i)
              @AddressExtraSet << addressinfo_tmp
            end
          end
        end
      end

      # IP地址模板集合
      class AddressTemplateGroup < TencentCloud::Common::AbstractModel
        # @param AddressTemplateGroupName: IP地址模板集合名称。
        # @type AddressTemplateGroupName: String
        # @param AddressTemplateGroupId: IP地址模板集合实例ID，例如：ipmg-dih8xdbq。
        # @type AddressTemplateGroupId: String
        # @param AddressTemplateIdSet: IP地址模板ID。
        # @type AddressTemplateIdSet: Array
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param AddressTemplateSet: IP地址模板实例。
        # @type AddressTemplateSet: Array

        attr_accessor :AddressTemplateGroupName, :AddressTemplateGroupId, :AddressTemplateIdSet, :CreatedTime, :AddressTemplateSet
        
        def initialize(addresstemplategroupname=nil, addresstemplategroupid=nil, addresstemplateidset=nil, createdtime=nil, addresstemplateset=nil)
          @AddressTemplateGroupName = addresstemplategroupname
          @AddressTemplateGroupId = addresstemplategroupid
          @AddressTemplateIdSet = addresstemplateidset
          @CreatedTime = createdtime
          @AddressTemplateSet = addresstemplateset
        end

        def deserialize(params)
          @AddressTemplateGroupName = params['AddressTemplateGroupName']
          @AddressTemplateGroupId = params['AddressTemplateGroupId']
          @AddressTemplateIdSet = params['AddressTemplateIdSet']
          @CreatedTime = params['CreatedTime']
          unless params['AddressTemplateSet'].nil?
            @AddressTemplateSet = []
            params['AddressTemplateSet'].each do |i|
              addresstemplateitem_tmp = AddressTemplateItem.new
              addresstemplateitem_tmp.deserialize(i)
              @AddressTemplateSet << addresstemplateitem_tmp
            end
          end
        end
      end

      # 地址信息
      class AddressTemplateItem < TencentCloud::Common::AbstractModel
        # @param From: 起始地址。
        # @type From: String
        # @param To: 结束地址。
        # @type To: String

        attr_accessor :From, :To
        
        def initialize(from=nil, to=nil)
          @From = from
          @To = to
        end

        def deserialize(params)
          @From = params['From']
          @To = params['To']
        end
      end

      # IP地址模板
      class AddressTemplateSpecification < TencentCloud::Common::AbstractModel
        # @param AddressId: IP地址ID，例如：ipm-2uw6ujo6。
        # @type AddressId: String
        # @param AddressGroupId: IP地址组ID，例如：ipmg-2uw6ujo6。
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

      # AdjustPublicAddress请求参数结构体
      class AdjustPublicAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 标识CVM实例的唯一 ID。CVM 唯一 ID 形如：`ins-11112222`。
        # @type InstanceId: String
        # @param AddressId: 标识EIP实例的唯一 ID。EIP 唯一 ID 形如：`eip-11112222`。
        # @type AddressId: String

        attr_accessor :InstanceId, :AddressId
        
        def initialize(instanceid=nil, addressid=nil)
          @InstanceId = instanceid
          @AddressId = addressid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AddressId = params['AddressId']
        end
      end

      # AdjustPublicAddress返回参数结构体
      class AdjustPublicAddressResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ALG协议类型
      class AlgType < TencentCloud::Common::AbstractModel
        # @param Ftp: Ftp协议Alg功能是否开启
        # @type Ftp: Boolean
        # @param Sip: Sip协议Alg功能是否开启
        # @type Sip: Boolean

        attr_accessor :Ftp, :Sip
        
        def initialize(ftp=nil, sip=nil)
          @Ftp = ftp
          @Sip = sip
        end

        def deserialize(params)
          @Ftp = params['Ftp']
          @Sip = params['Sip']
        end
      end

      # AllocateAddresses请求参数结构体
      class AllocateAddressesRequest < TencentCloud::Common::AbstractModel
        # @param AddressCount: EIP数量。默认值：1。
        # @type AddressCount: Integer
        # @param InternetServiceProvider: EIP线路类型。默认值：BGP。
        # <ul style="margin:0"><li>已开通静态单线IP白名单的用户，可选值：<ul><li>CMCC：中国移动</li>
        # <li>CTCC：中国电信</li>
        # <li>CUCC：中国联通</li></ul>注意：仅部分地域支持静态单线IP。</li></ul>
        # @type InternetServiceProvider: String
        # @param InternetChargeType: EIP计费方式。
        # <ul style="margin:0"><li>已开通标准账户类型白名单的用户，可选值：<ul><li>BANDWIDTH_PACKAGE：[共享带宽包](https://cloud.tencent.com/document/product/684/15255)付费（需额外开通共享带宽包白名单）</li>
        # <li>BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费</li>
        # <li>BANDWIDTH_PREPAID_BY_MONTH：包月按带宽预付费</li>
        # <li>TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费</li></ul>默认值：TRAFFIC_POSTPAID_BY_HOUR。</li>
        # <li>未开通标准账户类型白名单的用户，EIP计费方式与其绑定的实例的计费方式一致，无需传递此参数。</li></ul>
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: EIP出带宽上限，单位：Mbps。
        # <ul style="margin:0"><li>已开通标准账户类型白名单的用户，可选值范围取决于EIP计费方式：<ul><li>BANDWIDTH_PACKAGE：1 Mbps 至 1000 Mbps</li>
        # <li>BANDWIDTH_POSTPAID_BY_HOUR：1 Mbps 至 100 Mbps</li>
        # <li>BANDWIDTH_PREPAID_BY_MONTH：1 Mbps 至 200 Mbps</li>
        # <li>TRAFFIC_POSTPAID_BY_HOUR：1 Mbps 至 100 Mbps</li></ul>默认值：1 Mbps。</li>
        # <li>未开通标准账户类型白名单的用户，EIP出带宽上限取决于与其绑定的实例的公网出带宽上限，无需传递此参数。</li></ul>
        # @type InternetMaxBandwidthOut: Integer
        # @param AddressChargePrepaid: 包月按带宽预付费EIP的计费参数。EIP为包月按带宽预付费时，该参数必传，其余场景不需传递
        # @type AddressChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.AddressChargePrepaid`
        # @param AddressType: EIP类型。默认值：EIP。
        # <ul style="margin:0"><li>已开通Anycast公网加速白名单的用户，可选值：<ul><li>AnycastEIP：加速IP，可参见 [Anycast 公网加速](https://cloud.tencent.com/document/product/644)</li></ul>注意：仅部分地域支持加速IP。</li></ul>
        # <ul style="margin:0"><li>已开通精品IP白名单的用户，可选值：<ul><li>HighQualityEIP：精品IP</li></ul>注意：仅部分地域支持精品IP。</li></ul>
        # @type AddressType: String
        # @param AnycastZone: Anycast发布域。
        # <ul style="margin:0"><li>已开通Anycast公网加速白名单的用户，可选值：<ul><li>ANYCAST_ZONE_GLOBAL：全球发布域（需要额外开通Anycast全球加速白名单）</li><li>ANYCAST_ZONE_OVERSEAS：境外发布域</li><li><b>[已废弃]</b> ANYCAST_ZONE_A：发布域A（已更新为全球发布域）</li><li><b>[已废弃]</b> ANYCAST_ZONE_B：发布域B（已更新为全球发布域）</li></ul>默认值：ANYCAST_ZONE_OVERSEAS。</li></ul>
        # @type AnycastZone: String
        # @param ApplicableForCLB: <b>[已废弃]</b> AnycastEIP不再区分是否负载均衡。原参数说明如下：
        # AnycastEIP是否用于绑定负载均衡。
        # <ul style="margin:0"><li>已开通Anycast公网加速白名单的用户，可选值：<ul><li>TRUE：AnycastEIP可绑定对象为负载均衡</li>
        # <li>FALSE：AnycastEIP可绑定对象为云服务器、NAT网关、高可用虚拟IP等</li></ul>默认值：FALSE。</li></ul>
        # @type ApplicableForCLB: Boolean
        # @param Tags: 需要关联的标签列表。
        # @type Tags: Array
        # @param BandwidthPackageId: BGP带宽包唯一ID参数。设定该参数且InternetChargeType为BANDWIDTH_PACKAGE，则表示创建的EIP加入该BGP带宽包并采用带宽包计费
        # @type BandwidthPackageId: String
        # @param AddressName: EIP名称，用于申请EIP时用户自定义该EIP的个性化名称，默认值：未命名
        # @type AddressName: String

        attr_accessor :AddressCount, :InternetServiceProvider, :InternetChargeType, :InternetMaxBandwidthOut, :AddressChargePrepaid, :AddressType, :AnycastZone, :ApplicableForCLB, :Tags, :BandwidthPackageId, :AddressName
        
        def initialize(addresscount=nil, internetserviceprovider=nil, internetchargetype=nil, internetmaxbandwidthout=nil, addresschargeprepaid=nil, addresstype=nil, anycastzone=nil, applicableforclb=nil, tags=nil, bandwidthpackageid=nil, addressname=nil)
          @AddressCount = addresscount
          @InternetServiceProvider = internetserviceprovider
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @AddressChargePrepaid = addresschargeprepaid
          @AddressType = addresstype
          @AnycastZone = anycastzone
          @ApplicableForCLB = applicableforclb
          @Tags = tags
          @BandwidthPackageId = bandwidthpackageid
          @AddressName = addressname
        end

        def deserialize(params)
          @AddressCount = params['AddressCount']
          @InternetServiceProvider = params['InternetServiceProvider']
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          unless params['AddressChargePrepaid'].nil?
            @AddressChargePrepaid = AddressChargePrepaid.new
            @AddressChargePrepaid.deserialize(params['AddressChargePrepaid'])
          end
          @AddressType = params['AddressType']
          @AnycastZone = params['AnycastZone']
          @ApplicableForCLB = params['ApplicableForCLB']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @BandwidthPackageId = params['BandwidthPackageId']
          @AddressName = params['AddressName']
        end
      end

      # AllocateAddresses返回参数结构体
      class AllocateAddressesResponse < TencentCloud::Common::AbstractModel
        # @param AddressSet: 申请到的 EIP 的唯一 ID 列表。
        # @type AddressSet: Array
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressSet, :TaskId, :RequestId
        
        def initialize(addressset=nil, taskid=nil, requestid=nil)
          @AddressSet = addressset
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @AddressSet = params['AddressSet']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # AllocateIp6AddressesBandwidth请求参数结构体
      class AllocateIp6AddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param Ip6Addresses: 需要开通公网访问能力的IPV6地址
        # @type Ip6Addresses: Array
        # @param InternetMaxBandwidthOut: 带宽，单位Mbps。默认是1Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param InternetChargeType: 网络计费模式。IPV6当前对标准账户类型支持"TRAFFIC_POSTPAID_BY_HOUR"，对传统账户类型支持"BANDWIDTH_PACKAGE"。默认网络计费模式是"TRAFFIC_POSTPAID_BY_HOUR"。
        # @type InternetChargeType: String
        # @param BandwidthPackageId: 带宽包id，上移账号，申请带宽包计费模式的ipv6地址需要传入.
        # @type BandwidthPackageId: String

        attr_accessor :Ip6Addresses, :InternetMaxBandwidthOut, :InternetChargeType, :BandwidthPackageId
        
        def initialize(ip6addresses=nil, internetmaxbandwidthout=nil, internetchargetype=nil, bandwidthpackageid=nil)
          @Ip6Addresses = ip6addresses
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @InternetChargeType = internetchargetype
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @Ip6Addresses = params['Ip6Addresses']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @InternetChargeType = params['InternetChargeType']
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # AllocateIp6AddressesBandwidth返回参数结构体
      class AllocateIp6AddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param AddressSet: 弹性公网 IPV6 的唯一 ID 列表。
        # @type AddressSet: Array
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressSet, :TaskId, :RequestId
        
        def initialize(addressset=nil, taskid=nil, requestid=nil)
          @AddressSet = addressset
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @AddressSet = params['AddressSet']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # AssignIpv6Addresses请求参数结构体
      class AssignIpv6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例`ID`，形如：`eni-m6dyj72l`。
        # @type NetworkInterfaceId: String
        # @param Ipv6Addresses: 指定的`IPv6`地址列表，单次最多指定10个。与入参`Ipv6AddressCount`合并计算配额。与Ipv6AddressCount必填一个。
        # @type Ipv6Addresses: Array
        # @param Ipv6AddressCount: 自动分配`IPv6`地址个数，内网IP地址个数总和不能超过配数。与入参`Ipv6Addresses`合并计算配额。与Ipv6Addresses必填一个。
        # @type Ipv6AddressCount: Integer

        attr_accessor :NetworkInterfaceId, :Ipv6Addresses, :Ipv6AddressCount
        
        def initialize(networkinterfaceid=nil, ipv6addresses=nil, ipv6addresscount=nil)
          @NetworkInterfaceId = networkinterfaceid
          @Ipv6Addresses = ipv6addresses
          @Ipv6AddressCount = ipv6addresscount
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
          @Ipv6AddressCount = params['Ipv6AddressCount']
        end
      end

      # AssignIpv6Addresses返回参数结构体
      class AssignIpv6AddressesResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6AddressSet: 分配给弹性网卡的`IPv6`地址列表。
        # @type Ipv6AddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6AddressSet, :RequestId
        
        def initialize(ipv6addressset=nil, requestid=nil)
          @Ipv6AddressSet = ipv6addressset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ipv6AddressSet'].nil?
            @Ipv6AddressSet = []
            params['Ipv6AddressSet'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6AddressSet << ipv6address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AssignIpv6CidrBlock请求参数结构体
      class AssignIpv6CidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        # @type VpcId: String

        attr_accessor :VpcId
        
        def initialize(vpcid=nil)
          @VpcId = vpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
        end
      end

      # AssignIpv6CidrBlock返回参数结构体
      class AssignIpv6CidrBlockResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6CidrBlock: 分配的 `IPv6` 网段。形如：`3402:4e00:20:1000::/56`
        # @type Ipv6CidrBlock: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6CidrBlock, :RequestId
        
        def initialize(ipv6cidrblock=nil, requestid=nil)
          @Ipv6CidrBlock = ipv6cidrblock
          @RequestId = requestid
        end

        def deserialize(params)
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @RequestId = params['RequestId']
        end
      end

      # AssignIpv6SubnetCidrBlock请求参数结构体
      class AssignIpv6SubnetCidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 子网所在私有网络`ID`。形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param Ipv6SubnetCidrBlocks: 分配 `IPv6` 子网段列表。
        # @type Ipv6SubnetCidrBlocks: Array

        attr_accessor :VpcId, :Ipv6SubnetCidrBlocks
        
        def initialize(vpcid=nil, ipv6subnetcidrblocks=nil)
          @VpcId = vpcid
          @Ipv6SubnetCidrBlocks = ipv6subnetcidrblocks
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          unless params['Ipv6SubnetCidrBlocks'].nil?
            @Ipv6SubnetCidrBlocks = []
            params['Ipv6SubnetCidrBlocks'].each do |i|
              ipv6subnetcidrblock_tmp = Ipv6SubnetCidrBlock.new
              ipv6subnetcidrblock_tmp.deserialize(i)
              @Ipv6SubnetCidrBlocks << ipv6subnetcidrblock_tmp
            end
          end
        end
      end

      # AssignIpv6SubnetCidrBlock返回参数结构体
      class AssignIpv6SubnetCidrBlockResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6SubnetCidrBlockSet: 分配 `IPv6` 子网段列表。
        # @type Ipv6SubnetCidrBlockSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6SubnetCidrBlockSet, :RequestId
        
        def initialize(ipv6subnetcidrblockset=nil, requestid=nil)
          @Ipv6SubnetCidrBlockSet = ipv6subnetcidrblockset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ipv6SubnetCidrBlockSet'].nil?
            @Ipv6SubnetCidrBlockSet = []
            params['Ipv6SubnetCidrBlockSet'].each do |i|
              ipv6subnetcidrblock_tmp = Ipv6SubnetCidrBlock.new
              ipv6subnetcidrblock_tmp.deserialize(i)
              @Ipv6SubnetCidrBlockSet << ipv6subnetcidrblock_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AssignPrivateIpAddresses请求参数结构体
      class AssignPrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。与SecondaryPrivateIpAddressCount至少提供一个。
        # @type PrivateIpAddresses: Array
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数，与PrivateIpAddresses至少提供一个。内网IP地址个数总和不能超过配额数，详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
        # @type SecondaryPrivateIpAddressCount: Integer

        attr_accessor :NetworkInterfaceId, :PrivateIpAddresses, :SecondaryPrivateIpAddressCount
        
        def initialize(networkinterfaceid=nil, privateipaddresses=nil, secondaryprivateipaddresscount=nil)
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddresses = privateipaddresses
          @SecondaryPrivateIpAddressCount = secondaryprivateipaddresscount
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
          @SecondaryPrivateIpAddressCount = params['SecondaryPrivateIpAddressCount']
        end
      end

      # AssignPrivateIpAddresses返回参数结构体
      class AssignPrivateIpAddressesResponse < TencentCloud::Common::AbstractModel
        # @param PrivateIpAddressSet: 内网IP详细信息。
        # @type PrivateIpAddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivateIpAddressSet, :RequestId
        
        def initialize(privateipaddressset=nil, requestid=nil)
          @PrivateIpAddressSet = privateipaddressset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PrivateIpAddressSet'].nil?
            @PrivateIpAddressSet = []
            params['PrivateIpAddressSet'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddressSet << privateipaddressspecification_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # VPC辅助CIDR信息。
      class AssistantCidr < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        # @type VpcId: String
        # @param CidrBlock: 辅助CIDR。形如：`172.16.0.0/16`
        # @type CidrBlock: String
        # @param AssistantType: 辅助CIDR类型（0：普通辅助CIDR，1：容器辅助CIDR），默认都是0。
        # @type AssistantType: Integer
        # @param SubnetSet: 辅助CIDR拆分的子网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetSet: Array

        attr_accessor :VpcId, :CidrBlock, :AssistantType, :SubnetSet
        
        def initialize(vpcid=nil, cidrblock=nil, assistanttype=nil, subnetset=nil)
          @VpcId = vpcid
          @CidrBlock = cidrblock
          @AssistantType = assistanttype
          @SubnetSet = subnetset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @CidrBlock = params['CidrBlock']
          @AssistantType = params['AssistantType']
          unless params['SubnetSet'].nil?
            @SubnetSet = []
            params['SubnetSet'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetSet << subnet_tmp
            end
          end
        end
      end

      # AssociateAddress请求参数结构体
      class AssociateAddressRequest < TencentCloud::Common::AbstractModel
        # @param AddressId: 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：`eip-11112222`。
        # @type AddressId: String
        # @param InstanceId: 要绑定的实例 ID。实例 ID 形如：`ins-11112222`。可通过登录[控制台](https://console.cloud.tencent.com/cvm)查询，也可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param NetworkInterfaceId: 要绑定的弹性网卡 ID。 弹性网卡 ID 形如：`eni-11112222`。`NetworkInterfaceId` 与 `InstanceId` 不可同时指定。弹性网卡 ID 可通过登录[控制台](https://console.cloud.tencent.com/vpc/eni)查询，也可通过[DescribeNetworkInterfaces](https://cloud.tencent.com/document/api/215/15817)接口返回值中的`networkInterfaceId`获取。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddress: 要绑定的内网 IP。如果指定了 `NetworkInterfaceId` 则也必须指定 `PrivateIpAddress` ，表示将 EIP 绑定到指定弹性网卡的指定内网 IP 上。同时要确保指定的 `PrivateIpAddress` 是指定的 `NetworkInterfaceId` 上的一个内网 IP。指定弹性网卡的内网 IP 可通过登录[控制台](https://console.cloud.tencent.com/vpc/eni)查询，也可通过[DescribeNetworkInterfaces](https://cloud.tencent.com/document/api/215/15817)接口返回值中的`privateIpAddress`获取。
        # @type PrivateIpAddress: String
        # @param EipDirectConnection: 指定绑定时是否设置直通。弹性公网 IP 直通请参见 [EIP 直通](https://cloud.tencent.com/document/product/1199/41709)。取值：True、False，默认值为 False。当绑定 CVM 实例、EKS 弹性集群时，可设定此参数为 True。此参数目前处于内测中，如需使用，请提交 [工单申请](https://console.cloud.tencent.com/workorder/category?level1_id=6&level2_id=163&source=0&data_title=%E8%B4%9F%E8%BD%BD%E5%9D%87%E8%A1%A1%20CLB&level3_id=1071&queue=96&scene_code=34639&step=2)。
        # @type EipDirectConnection: Boolean

        attr_accessor :AddressId, :InstanceId, :NetworkInterfaceId, :PrivateIpAddress, :EipDirectConnection
        
        def initialize(addressid=nil, instanceid=nil, networkinterfaceid=nil, privateipaddress=nil, eipdirectconnection=nil)
          @AddressId = addressid
          @InstanceId = instanceid
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddress = privateipaddress
          @EipDirectConnection = eipdirectconnection
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @InstanceId = params['InstanceId']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @PrivateIpAddress = params['PrivateIpAddress']
          @EipDirectConnection = params['EipDirectConnection']
        end
      end

      # AssociateAddress返回参数结构体
      class AssociateAddressResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # AssociateDhcpIpWithAddressIp请求参数结构体
      class AssociateDhcpIpWithAddressIpRequest < TencentCloud::Common::AbstractModel
        # @param DhcpIpId: `DhcpIp`唯一`ID`，形如：`dhcpip-9o233uri`。必须是没有绑定`EIP`的`DhcpIp`
        # @type DhcpIpId: String
        # @param AddressIp: 弹性公网`IP`。必须是没有绑定`DhcpIp`的`EIP`
        # @type AddressIp: String

        attr_accessor :DhcpIpId, :AddressIp
        
        def initialize(dhcpipid=nil, addressip=nil)
          @DhcpIpId = dhcpipid
          @AddressIp = addressip
        end

        def deserialize(params)
          @DhcpIpId = params['DhcpIpId']
          @AddressIp = params['AddressIp']
        end
      end

      # AssociateDhcpIpWithAddressIp返回参数结构体
      class AssociateDhcpIpWithAddressIpResponse < TencentCloud::Common::AbstractModel
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

      # AssociateDirectConnectGatewayNatGateway请求参数结构体
      class AssociateDirectConnectGatewayNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 专线网关ID。
        # @type VpcId: String
        # @param NatGatewayId: NAT网关ID。
        # @type NatGatewayId: String
        # @param DirectConnectGatewayId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type DirectConnectGatewayId: String

        attr_accessor :VpcId, :NatGatewayId, :DirectConnectGatewayId
        
        def initialize(vpcid=nil, natgatewayid=nil, directconnectgatewayid=nil)
          @VpcId = vpcid
          @NatGatewayId = natgatewayid
          @DirectConnectGatewayId = directconnectgatewayid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NatGatewayId = params['NatGatewayId']
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
        end
      end

      # AssociateDirectConnectGatewayNatGateway返回参数结构体
      class AssociateDirectConnectGatewayNatGatewayResponse < TencentCloud::Common::AbstractModel
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

      # AssociateNatGatewayAddress请求参数结构体
      class AssociateNatGatewayAddressRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param AddressCount: 需要申请的弹性IP个数，系统会按您的要求生产N个弹性IP, 其中AddressCount和PublicAddresses至少传递一个。
        # @type AddressCount: Integer
        # @param PublicIpAddresses: 绑定NAT网关的弹性IP数组，其中AddressCount和PublicAddresses至少传递一个。
        # @type PublicIpAddresses: Array
        # @param Zone: 弹性IP可用区，自动分配弹性IP时传递。
        # @type Zone: String
        # @param StockPublicIpAddressesBandwidthOut: 绑定NAT网关的弹性IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        # @type StockPublicIpAddressesBandwidthOut: Integer
        # @param PublicIpAddressesBandwidthOut: 需要申请公网IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        # @type PublicIpAddressesBandwidthOut: Integer
        # @param PublicIpFromSameZone: 公网IP是否强制与NAT网关来自同可用区，true表示需要与NAT网关同可用区；false表示可与NAT网关不是同一个可用区。此参数只有当参数Zone存在时才能生效。
        # @type PublicIpFromSameZone: Boolean

        attr_accessor :NatGatewayId, :AddressCount, :PublicIpAddresses, :Zone, :StockPublicIpAddressesBandwidthOut, :PublicIpAddressesBandwidthOut, :PublicIpFromSameZone
        
        def initialize(natgatewayid=nil, addresscount=nil, publicipaddresses=nil, zone=nil, stockpublicipaddressesbandwidthout=nil, publicipaddressesbandwidthout=nil, publicipfromsamezone=nil)
          @NatGatewayId = natgatewayid
          @AddressCount = addresscount
          @PublicIpAddresses = publicipaddresses
          @Zone = zone
          @StockPublicIpAddressesBandwidthOut = stockpublicipaddressesbandwidthout
          @PublicIpAddressesBandwidthOut = publicipaddressesbandwidthout
          @PublicIpFromSameZone = publicipfromsamezone
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @AddressCount = params['AddressCount']
          @PublicIpAddresses = params['PublicIpAddresses']
          @Zone = params['Zone']
          @StockPublicIpAddressesBandwidthOut = params['StockPublicIpAddressesBandwidthOut']
          @PublicIpAddressesBandwidthOut = params['PublicIpAddressesBandwidthOut']
          @PublicIpFromSameZone = params['PublicIpFromSameZone']
        end
      end

      # AssociateNatGatewayAddress返回参数结构体
      class AssociateNatGatewayAddressResponse < TencentCloud::Common::AbstractModel
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

      # AssociateNetworkAclSubnets请求参数结构体
      class AssociateNetworkAclSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param SubnetIds: 子网实例ID数组。例如：[subnet-12345678]
        # @type SubnetIds: Array

        attr_accessor :NetworkAclId, :SubnetIds
        
        def initialize(networkaclid=nil, subnetids=nil)
          @NetworkAclId = networkaclid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # AssociateNetworkAclSubnets返回参数结构体
      class AssociateNetworkAclSubnetsResponse < TencentCloud::Common::AbstractModel
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

      # AssociateNetworkInterfaceSecurityGroups请求参数结构体
      class AssociateNetworkInterfaceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceIds: 弹性网卡实例ID。形如：eni-pxir56ns。每次请求的实例的上限为100。
        # @type NetworkInterfaceIds: Array
        # @param SecurityGroupIds: 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。每次请求的实例的上限为100。
        # @type SecurityGroupIds: Array

        attr_accessor :NetworkInterfaceIds, :SecurityGroupIds
        
        def initialize(networkinterfaceids=nil, securitygroupids=nil)
          @NetworkInterfaceIds = networkinterfaceids
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @NetworkInterfaceIds = params['NetworkInterfaceIds']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # AssociateNetworkInterfaceSecurityGroups返回参数结构体
      class AssociateNetworkInterfaceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # AttachCcnInstances请求参数结构体
      class AttachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param Instances: 关联网络实例列表
        # @type Instances: Array
        # @param CcnUin: CCN所属UIN（根账号），默认当前账号所属UIN
        # @type CcnUin: String

        attr_accessor :CcnId, :Instances, :CcnUin
        
        def initialize(ccnid=nil, instances=nil, ccnuin=nil)
          @CcnId = ccnid
          @Instances = instances
          @CcnUin = ccnuin
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              ccninstance_tmp = CcnInstance.new
              ccninstance_tmp.deserialize(i)
              @Instances << ccninstance_tmp
            end
          end
          @CcnUin = params['CcnUin']
        end
      end

      # AttachCcnInstances返回参数结构体
      class AttachCcnInstancesResponse < TencentCloud::Common::AbstractModel
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

      # AttachClassicLinkVpc请求参数结构体
      class AttachClassicLinkVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param InstanceIds: CVM实例ID
        # @type InstanceIds: Array

        attr_accessor :VpcId, :InstanceIds
        
        def initialize(vpcid=nil, instanceids=nil)
          @VpcId = vpcid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AttachClassicLinkVpc返回参数结构体
      class AttachClassicLinkVpcResponse < TencentCloud::Common::AbstractModel
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

      # AttachNetworkInterface请求参数结构体
      class AttachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param InstanceId: CVM实例ID。形如：ins-r8hr2upy。
        # @type InstanceId: String
        # @param AttachType: 网卡的挂载类型：0 标准型，1扩展型，默认值0。
        # @type AttachType: Integer

        attr_accessor :NetworkInterfaceId, :InstanceId, :AttachType
        
        def initialize(networkinterfaceid=nil, instanceid=nil, attachtype=nil)
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
          @AttachType = attachtype
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
          @AttachType = params['AttachType']
        end
      end

      # AttachNetworkInterface返回参数结构体
      class AttachNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # AuditCrossBorderCompliance请求参数结构体
      class AuditCrossBorderComplianceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProvider: 服务商, 可选值：`UNICOM`。
        # @type ServiceProvider: String
        # @param ComplianceId: 表单唯一`ID`。
        # @type ComplianceId: Integer
        # @param AuditBehavior: 通过：`APPROVED `，拒绝：`DENY`。
        # @type AuditBehavior: String

        attr_accessor :ServiceProvider, :ComplianceId, :AuditBehavior
        
        def initialize(serviceprovider=nil, complianceid=nil, auditbehavior=nil)
          @ServiceProvider = serviceprovider
          @ComplianceId = complianceid
          @AuditBehavior = auditbehavior
        end

        def deserialize(params)
          @ServiceProvider = params['ServiceProvider']
          @ComplianceId = params['ComplianceId']
          @AuditBehavior = params['AuditBehavior']
        end
      end

      # AuditCrossBorderCompliance返回参数结构体
      class AuditCrossBorderComplianceResponse < TencentCloud::Common::AbstractModel
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

      # 描述带宽包信息的结构
      class BandwidthPackage < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 带宽包唯一标识Id
        # @type BandwidthPackageId: String
        # @param NetworkType: 带宽包类型，包括'BGP','SINGLEISP','ANYCAST'
        # @type NetworkType: String
        # @param ChargeType: 带宽包计费类型，包括'TOP5_POSTPAID_BY_MONTH'和'PERCENT95_POSTPAID_BY_MONTH'
        # @type ChargeType: String
        # @param BandwidthPackageName: 带宽包名称
        # @type BandwidthPackageName: String
        # @param CreatedTime: 带宽包创建时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type CreatedTime: String
        # @param Status: 带宽包状态，包括'CREATING','CREATED','DELETING','DELETED'
        # @type Status: String
        # @param ResourceSet: 带宽包资源信息
        # @type ResourceSet: Array
        # @param Bandwidth: 带宽包限速大小。单位：Mbps，-1表示不限速。
        # @type Bandwidth: Integer

        attr_accessor :BandwidthPackageId, :NetworkType, :ChargeType, :BandwidthPackageName, :CreatedTime, :Status, :ResourceSet, :Bandwidth
        
        def initialize(bandwidthpackageid=nil, networktype=nil, chargetype=nil, bandwidthpackagename=nil, createdtime=nil, status=nil, resourceset=nil, bandwidth=nil)
          @BandwidthPackageId = bandwidthpackageid
          @NetworkType = networktype
          @ChargeType = chargetype
          @BandwidthPackageName = bandwidthpackagename
          @CreatedTime = createdtime
          @Status = status
          @ResourceSet = resourceset
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
          @NetworkType = params['NetworkType']
          @ChargeType = params['ChargeType']
          @BandwidthPackageName = params['BandwidthPackageName']
          @CreatedTime = params['CreatedTime']
          @Status = params['Status']
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @ResourceSet << resource_tmp
            end
          end
          @Bandwidth = params['Bandwidth']
        end
      end

      # 后付费共享带宽包的当前计费用量
      class BandwidthPackageBillBandwidth < TencentCloud::Common::AbstractModel
        # @param BandwidthUsage: 当前计费用量，单位为 Mbps
        # @type BandwidthUsage: Integer

        attr_accessor :BandwidthUsage
        
        def initialize(bandwidthusage=nil)
          @BandwidthUsage = bandwidthusage
        end

        def deserialize(params)
          @BandwidthUsage = params['BandwidthUsage']
        end
      end

      # 云联网（CCN）对象
      class CCN < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网唯一ID
        # @type CcnId: String
        # @param CcnName: 云联网名称
        # @type CcnName: String
        # @param CcnDescription: 云联网描述信息
        # @type CcnDescription: String
        # @param InstanceCount: 关联实例数量
        # @type InstanceCount: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param State: 实例状态， 'ISOLATED': 隔离中（欠费停服），'AVAILABLE'：运行中。
        # @type State: String
        # @param QosLevel: 实例服务质量，’PT’：白金，'AU'：金，'AG'：银。
        # @type QosLevel: String
        # @param InstanceChargeType: 付费类型，PREPAID为预付费，POSTPAID为后付费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargeType: String
        # @param BandwidthLimitType: 限速类型，INTER_REGION_LIMIT为地域间限速；OUTER_REGION_LIMIT为地域出口限速。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthLimitType: String
        # @param TagSet: 标签键值对。
        # @type TagSet: Array
        # @param RoutePriorityFlag: 是否支持云联网路由优先级的功能。False：不支持，True：支持。
        # @type RoutePriorityFlag: Boolean
        # @param RouteTableCount: 实例关联的路由表个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableCount: Integer
        # @param RouteTableFlag: 是否开启云联网多路由表特性。False：未开启，True：开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableFlag: Boolean

        attr_accessor :CcnId, :CcnName, :CcnDescription, :InstanceCount, :CreateTime, :State, :QosLevel, :InstanceChargeType, :BandwidthLimitType, :TagSet, :RoutePriorityFlag, :RouteTableCount, :RouteTableFlag
        
        def initialize(ccnid=nil, ccnname=nil, ccndescription=nil, instancecount=nil, createtime=nil, state=nil, qoslevel=nil, instancechargetype=nil, bandwidthlimittype=nil, tagset=nil, routepriorityflag=nil, routetablecount=nil, routetableflag=nil)
          @CcnId = ccnid
          @CcnName = ccnname
          @CcnDescription = ccndescription
          @InstanceCount = instancecount
          @CreateTime = createtime
          @State = state
          @QosLevel = qoslevel
          @InstanceChargeType = instancechargetype
          @BandwidthLimitType = bandwidthlimittype
          @TagSet = tagset
          @RoutePriorityFlag = routepriorityflag
          @RouteTableCount = routetablecount
          @RouteTableFlag = routetableflag
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @CcnName = params['CcnName']
          @CcnDescription = params['CcnDescription']
          @InstanceCount = params['InstanceCount']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @QosLevel = params['QosLevel']
          @InstanceChargeType = params['InstanceChargeType']
          @BandwidthLimitType = params['BandwidthLimitType']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @RoutePriorityFlag = params['RoutePriorityFlag']
          @RouteTableCount = params['RouteTableCount']
          @RouteTableFlag = params['RouteTableFlag']
        end
      end

      # 云联网（CCN）关联实例（Instance）对象
      class CcnAttachedInstance < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。
        # @type CcnId: String
        # @param InstanceType: 关联实例类型：
        # <li>`VPC`：私有网络</li>
        # <li>`DIRECTCONNECT`：专线网关</li>
        # <li>`BMVPC`：黑石私有网络</li>
        # @type InstanceType: String
        # @param InstanceId: 关联实例ID。
        # @type InstanceId: String
        # @param InstanceName: 关联实例名称。
        # @type InstanceName: String
        # @param InstanceRegion: 关联实例所属大区，例如：ap-guangzhou。
        # @type InstanceRegion: String
        # @param InstanceUin: 关联实例所属UIN（根账号）。
        # @type InstanceUin: String
        # @param CidrBlock: 关联实例CIDR。
        # @type CidrBlock: Array
        # @param State: 关联实例状态：
        # <li>`PENDING`：申请中</li>
        # <li>`ACTIVE`：已连接</li>
        # <li>`EXPIRED`：已过期</li>
        # <li>`REJECTED`：已拒绝</li>
        # <li>`DELETED`：已删除</li>
        # <li>`FAILED`：失败的（2小时后将异步强制解关联）</li>
        # <li>`ATTACHING`：关联中</li>
        # <li>`DETACHING`：解关联中</li>
        # <li>`DETACHFAILED`：解关联失败（2小时后将异步强制解关联）</li>
        # @type State: String
        # @param AttachedTime: 关联时间。
        # @type AttachedTime: String
        # @param CcnUin: 云联网所属UIN（根账号）。
        # @type CcnUin: String
        # @param InstanceArea: 关联实例所属的大地域，如: CHINA_MAINLAND
        # @type InstanceArea: String
        # @param Description: 备注
        # @type Description: String
        # @param RouteTableId: 路由表ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableName: String

        attr_accessor :CcnId, :InstanceType, :InstanceId, :InstanceName, :InstanceRegion, :InstanceUin, :CidrBlock, :State, :AttachedTime, :CcnUin, :InstanceArea, :Description, :RouteTableId, :RouteTableName
        
        def initialize(ccnid=nil, instancetype=nil, instanceid=nil, instancename=nil, instanceregion=nil, instanceuin=nil, cidrblock=nil, state=nil, attachedtime=nil, ccnuin=nil, instancearea=nil, description=nil, routetableid=nil, routetablename=nil)
          @CcnId = ccnid
          @InstanceType = instancetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceRegion = instanceregion
          @InstanceUin = instanceuin
          @CidrBlock = cidrblock
          @State = state
          @AttachedTime = attachedtime
          @CcnUin = ccnuin
          @InstanceArea = instancearea
          @Description = description
          @RouteTableId = routetableid
          @RouteTableName = routetablename
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceRegion = params['InstanceRegion']
          @InstanceUin = params['InstanceUin']
          @CidrBlock = params['CidrBlock']
          @State = params['State']
          @AttachedTime = params['AttachedTime']
          @CcnUin = params['CcnUin']
          @InstanceArea = params['InstanceArea']
          @Description = params['Description']
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
        end
      end

      # 用于描述云联网地域间限速带宽实例的信息。
      class CcnBandwidthInfo < TencentCloud::Common::AbstractModel
        # @param CcnId: 带宽所属的云联网ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnId: String
        # @param CreatedTime: 实例的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ExpiredTime: 实例的过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param RegionFlowControlId: 带宽实例的唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionFlowControlId: String
        # @param RenewFlag: 带宽是否自动续费的标记。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: String
        # @param CcnRegionBandwidthLimit: 描述带宽的地域和限速上限信息。在地域间限速的情况下才会返回参数，出口限速模式不返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnRegionBandwidthLimit: :class:`Tencentcloud::Vpc.v20170312.models.CcnRegionBandwidthLimit`
        # @param MarketId: 云市场实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarketId: String

        attr_accessor :CcnId, :CreatedTime, :ExpiredTime, :RegionFlowControlId, :RenewFlag, :CcnRegionBandwidthLimit, :MarketId
        
        def initialize(ccnid=nil, createdtime=nil, expiredtime=nil, regionflowcontrolid=nil, renewflag=nil, ccnregionbandwidthlimit=nil, marketid=nil)
          @CcnId = ccnid
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @RegionFlowControlId = regionflowcontrolid
          @RenewFlag = renewflag
          @CcnRegionBandwidthLimit = ccnregionbandwidthlimit
          @MarketId = marketid
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @RegionFlowControlId = params['RegionFlowControlId']
          @RenewFlag = params['RenewFlag']
          unless params['CcnRegionBandwidthLimit'].nil?
            @CcnRegionBandwidthLimit = CcnRegionBandwidthLimit.new
            @CcnRegionBandwidthLimit.deserialize(params['CcnRegionBandwidthLimit'])
          end
          @MarketId = params['MarketId']
        end
      end

      # 云联网（CCN）关联实例（Instance）对象。
      class CcnInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 关联实例ID。
        # @type InstanceId: String
        # @param InstanceRegion: 关联实例ID所属大区，例如：ap-guangzhou。
        # @type InstanceRegion: String
        # @param InstanceType: 关联实例类型，可选值：
        # <li>`VPC`：私有网络</li>
        # <li>`DIRECTCONNECT`：专线网关</li>
        # <li>`BMVPC`：黑石私有网络</li>
        # <li>`VPNGW`：VPNGW类型</li>
        # @type InstanceType: String
        # @param Description: 备注
        # @type Description: String
        # @param RouteTableId: 实例关联的路由表ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableId: String

        attr_accessor :InstanceId, :InstanceRegion, :InstanceType, :Description, :RouteTableId
        
        def initialize(instanceid=nil, instanceregion=nil, instancetype=nil, description=nil, routetableid=nil)
          @InstanceId = instanceid
          @InstanceRegion = instanceregion
          @InstanceType = instancetype
          @Description = description
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceRegion = params['InstanceRegion']
          @InstanceType = params['InstanceType']
          @Description = params['Description']
          @RouteTableId = params['RouteTableId']
        end
      end

      # 云联网（CCN）地域出带宽上限
      class CcnRegionBandwidthLimit < TencentCloud::Common::AbstractModel
        # @param Region: 地域，例如：ap-guangzhou
        # @type Region: String
        # @param BandwidthLimit: 出带宽上限，单位：Mbps
        # @type BandwidthLimit: Integer
        # @param IsBm: 是否黑石地域，默认`false`。
        # @type IsBm: Boolean
        # @param DstRegion: 目的地域，例如：ap-shanghai
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstRegion: String
        # @param DstIsBm: 目的地域是否为黑石地域，默认`false`。
        # @type DstIsBm: Boolean

        attr_accessor :Region, :BandwidthLimit, :IsBm, :DstRegion, :DstIsBm
        
        def initialize(region=nil, bandwidthlimit=nil, isbm=nil, dstregion=nil, dstisbm=nil)
          @Region = region
          @BandwidthLimit = bandwidthlimit
          @IsBm = isbm
          @DstRegion = dstregion
          @DstIsBm = dstisbm
        end

        def deserialize(params)
          @Region = params['Region']
          @BandwidthLimit = params['BandwidthLimit']
          @IsBm = params['IsBm']
          @DstRegion = params['DstRegion']
          @DstIsBm = params['DstIsBm']
        end
      end

      # CCN路由策略对象
      class CcnRoute < TencentCloud::Common::AbstractModel
        # @param RouteId: 路由策略ID
        # @type RouteId: String
        # @param DestinationCidrBlock: 目的端
        # @type DestinationCidrBlock: String
        # @param InstanceType: 下一跳类型（关联实例类型），所有类型：VPC、DIRECTCONNECT
        # @type InstanceType: String
        # @param InstanceId: 下一跳（关联实例）
        # @type InstanceId: String
        # @param InstanceName: 下一跳名称（关联实例名称）
        # @type InstanceName: String
        # @param InstanceRegion: 下一跳所属地域（关联实例所属地域）
        # @type InstanceRegion: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Enabled: 路由是否启用
        # @type Enabled: Boolean
        # @param InstanceUin: 关联实例所属UIN（根账号）
        # @type InstanceUin: String
        # @param ExtraState: 路由的扩展状态
        # @type ExtraState: String
        # @param IsBgp: 是否动态路由
        # @type IsBgp: Boolean
        # @param RoutePriority: 路由优先级
        # @type RoutePriority: Integer
        # @param InstanceExtraName: 下一跳扩展名称（关联实例的扩展名称）
        # @type InstanceExtraName: String

        attr_accessor :RouteId, :DestinationCidrBlock, :InstanceType, :InstanceId, :InstanceName, :InstanceRegion, :UpdateTime, :Enabled, :InstanceUin, :ExtraState, :IsBgp, :RoutePriority, :InstanceExtraName
        
        def initialize(routeid=nil, destinationcidrblock=nil, instancetype=nil, instanceid=nil, instancename=nil, instanceregion=nil, updatetime=nil, enabled=nil, instanceuin=nil, extrastate=nil, isbgp=nil, routepriority=nil, instanceextraname=nil)
          @RouteId = routeid
          @DestinationCidrBlock = destinationcidrblock
          @InstanceType = instancetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceRegion = instanceregion
          @UpdateTime = updatetime
          @Enabled = enabled
          @InstanceUin = instanceuin
          @ExtraState = extrastate
          @IsBgp = isbgp
          @RoutePriority = routepriority
          @InstanceExtraName = instanceextraname
        end

        def deserialize(params)
          @RouteId = params['RouteId']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceRegion = params['InstanceRegion']
          @UpdateTime = params['UpdateTime']
          @Enabled = params['Enabled']
          @InstanceUin = params['InstanceUin']
          @ExtraState = params['ExtraState']
          @IsBgp = params['IsBgp']
          @RoutePriority = params['RoutePriority']
          @InstanceExtraName = params['InstanceExtraName']
        end
      end

      # CheckAssistantCidr请求参数结构体
      class CheckAssistantCidrRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        # @type VpcId: String
        # @param NewCidrBlocks: 待添加的负载CIDR。CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]。入参NewCidrBlocks和OldCidrBlocks至少需要其一。
        # @type NewCidrBlocks: Array
        # @param OldCidrBlocks: 待删除的负载CIDR。CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]。入参NewCidrBlocks和OldCidrBlocks至少需要其一。
        # @type OldCidrBlocks: Array

        attr_accessor :VpcId, :NewCidrBlocks, :OldCidrBlocks
        
        def initialize(vpcid=nil, newcidrblocks=nil, oldcidrblocks=nil)
          @VpcId = vpcid
          @NewCidrBlocks = newcidrblocks
          @OldCidrBlocks = oldcidrblocks
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NewCidrBlocks = params['NewCidrBlocks']
          @OldCidrBlocks = params['OldCidrBlocks']
        end
      end

      # CheckAssistantCidr返回参数结构体
      class CheckAssistantCidrResponse < TencentCloud::Common::AbstractModel
        # @param ConflictSourceSet: 冲突资源信息数组。
        # @type ConflictSourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConflictSourceSet, :RequestId
        
        def initialize(conflictsourceset=nil, requestid=nil)
          @ConflictSourceSet = conflictsourceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConflictSourceSet'].nil?
            @ConflictSourceSet = []
            params['ConflictSourceSet'].each do |i|
              conflictsource_tmp = ConflictSource.new
              conflictsource_tmp.deserialize(i)
              @ConflictSourceSet << conflictsource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CheckDefaultSubnet请求参数结构体
      class CheckDefaultSubnetRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 子网所在的可用区ID，不同子网选择不同可用区可以做跨可用区灾备。
        # @type Zone: String

        attr_accessor :Zone
        
        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # CheckDefaultSubnet返回参数结构体
      class CheckDefaultSubnetResponse < TencentCloud::Common::AbstractModel
        # @param Result: 检查结果。true为可以创建默认子网，false为不可以创建默认子网。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CheckNetDetectState请求参数结构体
      class CheckNetDetectStateRequest < TencentCloud::Common::AbstractModel
        # @param DetectDestinationIp: 探测目的IPv4地址数组，最多两个。
        # @type DetectDestinationIp: Array
        # @param NextHopType: 下一跳类型，目前我们支持的类型有：
        # VPN：VPN网关；
        # DIRECTCONNECT：专线网关；
        # PEERCONNECTION：对等连接；
        # NAT：NAT网关；
        # NORMAL_CVM：普通云服务器；
        # @type NextHopType: String
        # @param NextHopDestination: 下一跳目的网关，取值与“下一跳类型”相关：
        # 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        # 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        # 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        # 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        # 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        # @type NextHopDestination: String
        # @param NetDetectId: 网络探测实例ID。形如：netd-12345678。该参数与（VpcId，SubnetId，NetDetectName），至少要有一个。当NetDetectId存在时，使用NetDetectId。
        # @type NetDetectId: String
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-12345678`。该参数与（SubnetId，NetDetectName）配合使用，与NetDetectId至少要有一个。当NetDetectId存在时，使用NetDetectId。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID。形如：subnet-12345678。该参数与（VpcId，NetDetectName）配合使用，与NetDetectId至少要有一个。当NetDetectId存在时，使用NetDetectId。
        # @type SubnetId: String
        # @param NetDetectName: 网络探测名称，最大长度不能超过60个字节。该参数与（VpcId，SubnetId）配合使用，与NetDetectId至少要有一个。当NetDetectId存在时，使用NetDetectId。
        # @type NetDetectName: String

        attr_accessor :DetectDestinationIp, :NextHopType, :NextHopDestination, :NetDetectId, :VpcId, :SubnetId, :NetDetectName
        
        def initialize(detectdestinationip=nil, nexthoptype=nil, nexthopdestination=nil, netdetectid=nil, vpcid=nil, subnetid=nil, netdetectname=nil)
          @DetectDestinationIp = detectdestinationip
          @NextHopType = nexthoptype
          @NextHopDestination = nexthopdestination
          @NetDetectId = netdetectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @NetDetectName = netdetectname
        end

        def deserialize(params)
          @DetectDestinationIp = params['DetectDestinationIp']
          @NextHopType = params['NextHopType']
          @NextHopDestination = params['NextHopDestination']
          @NetDetectId = params['NetDetectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @NetDetectName = params['NetDetectName']
        end
      end

      # CheckNetDetectState返回参数结构体
      class CheckNetDetectStateResponse < TencentCloud::Common::AbstractModel
        # @param NetDetectIpStateSet: 网络探测验证结果对象数组。
        # @type NetDetectIpStateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetectIpStateSet, :RequestId
        
        def initialize(netdetectipstateset=nil, requestid=nil)
          @NetDetectIpStateSet = netdetectipstateset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetectIpStateSet'].nil?
            @NetDetectIpStateSet = []
            params['NetDetectIpStateSet'].each do |i|
              netdetectipstate_tmp = NetDetectIpState.new
              netdetectipstate_tmp.deserialize(i)
              @NetDetectIpStateSet << netdetectipstate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 用于发布云联网的cidr信息
      class CidrForCcn < TencentCloud::Common::AbstractModel
        # @param Cidr: local cidr值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cidr: String
        # @param PublishedToVbc: 是否发布到了云联网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishedToVbc: Boolean

        attr_accessor :Cidr, :PublishedToVbc
        
        def initialize(cidr=nil, publishedtovbc=nil)
          @Cidr = cidr
          @PublishedToVbc = publishedtovbc
        end

        def deserialize(params)
          @Cidr = params['Cidr']
          @PublishedToVbc = params['PublishedToVbc']
        end
      end

      # 私有网络和基础网络互通设备
      class ClassicLinkInstance < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param InstanceId: 云服务器实例唯一ID
        # @type InstanceId: String

        attr_accessor :VpcId, :InstanceId
        
        def initialize(vpcid=nil, instanceid=nil)
          @VpcId = vpcid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @InstanceId = params['InstanceId']
        end
      end

      # CloneSecurityGroup请求参数结构体
      class CloneSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param GroupName: 安全组名称，可任意命名，但不得超过60个字符。未提供参数时，克隆后的安全组名称和SecurityGroupId对应的安全组名称相同。
        # @type GroupName: String
        # @param GroupDescription: 安全组备注，最多100个字符。未提供参数时，克隆后的安全组备注和SecurityGroupId对应的安全组备注相同。
        # @type GroupDescription: String
        # @param ProjectId: 项目ID，默认0。可在qcloud控制台项目管理页面查询到。
        # @type ProjectId: String
        # @param RemoteRegion: 源Region,跨地域克隆安全组时，需要传入源安全组所属地域信息，例如：克隆广州的安全组到上海，则这里需要传入广州安全的地域信息：ap-guangzhou。
        # @type RemoteRegion: String

        attr_accessor :SecurityGroupId, :GroupName, :GroupDescription, :ProjectId, :RemoteRegion
        
        def initialize(securitygroupid=nil, groupname=nil, groupdescription=nil, projectid=nil, remoteregion=nil)
          @SecurityGroupId = securitygroupid
          @GroupName = groupname
          @GroupDescription = groupdescription
          @ProjectId = projectid
          @RemoteRegion = remoteregion
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @GroupName = params['GroupName']
          @GroupDescription = params['GroupDescription']
          @ProjectId = params['ProjectId']
          @RemoteRegion = params['RemoteRegion']
        end
      end

      # CloneSecurityGroup返回参数结构体
      class CloneSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroup: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroup, :RequestId
        
        def initialize(securitygroup=nil, requestid=nil)
          @SecurityGroup = securitygroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroup'].nil?
            @SecurityGroup = SecurityGroup.new
            @SecurityGroup.deserialize(params['SecurityGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 冲突资源条目信息。
      class ConflictItem < TencentCloud::Common::AbstractModel
        # @param ConfilctId: 冲突资源的ID
        # @type ConfilctId: String
        # @param DestinationItem: 冲突目的资源
        # @type DestinationItem: String

        attr_accessor :ConfilctId, :DestinationItem
        
        def initialize(confilctid=nil, destinationitem=nil)
          @ConfilctId = confilctid
          @DestinationItem = destinationitem
        end

        def deserialize(params)
          @ConfilctId = params['ConfilctId']
          @DestinationItem = params['DestinationItem']
        end
      end

      # 冲突资源信息。
      class ConflictSource < TencentCloud::Common::AbstractModel
        # @param ConflictSourceId: 冲突资源ID
        # @type ConflictSourceId: String
        # @param SourceItem: 冲突资源
        # @type SourceItem: String
        # @param ConflictItemSet: 冲突资源条目信息
        # @type ConflictItemSet: Array

        attr_accessor :ConflictSourceId, :SourceItem, :ConflictItemSet
        
        def initialize(conflictsourceid=nil, sourceitem=nil, conflictitemset=nil)
          @ConflictSourceId = conflictsourceid
          @SourceItem = sourceitem
          @ConflictItemSet = conflictitemset
        end

        def deserialize(params)
          @ConflictSourceId = params['ConflictSourceId']
          @SourceItem = params['SourceItem']
          unless params['ConflictItemSet'].nil?
            @ConflictItemSet = []
            params['ConflictItemSet'].each do |i|
              conflictitem_tmp = ConflictItem.new
              conflictitem_tmp.deserialize(i)
              @ConflictItemSet << conflictitem_tmp
            end
          end
        end
      end

      # CreateAddressTemplateGroup请求参数结构体
      class CreateAddressTemplateGroupRequest < TencentCloud::Common::AbstractModel
        # @param AddressTemplateGroupName: IP地址模板集合名称。
        # @type AddressTemplateGroupName: String
        # @param AddressTemplateIds: IP地址模板实例ID，例如：ipm-mdunqeb6。
        # @type AddressTemplateIds: Array

        attr_accessor :AddressTemplateGroupName, :AddressTemplateIds
        
        def initialize(addresstemplategroupname=nil, addresstemplateids=nil)
          @AddressTemplateGroupName = addresstemplategroupname
          @AddressTemplateIds = addresstemplateids
        end

        def deserialize(params)
          @AddressTemplateGroupName = params['AddressTemplateGroupName']
          @AddressTemplateIds = params['AddressTemplateIds']
        end
      end

      # CreateAddressTemplateGroup返回参数结构体
      class CreateAddressTemplateGroupResponse < TencentCloud::Common::AbstractModel
        # @param AddressTemplateGroup: IP地址模板集合对象。
        # @type AddressTemplateGroup: :class:`Tencentcloud::Vpc.v20170312.models.AddressTemplateGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressTemplateGroup, :RequestId
        
        def initialize(addresstemplategroup=nil, requestid=nil)
          @AddressTemplateGroup = addresstemplategroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressTemplateGroup'].nil?
            @AddressTemplateGroup = AddressTemplateGroup.new
            @AddressTemplateGroup.deserialize(params['AddressTemplateGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAddressTemplate请求参数结构体
      class CreateAddressTemplateRequest < TencentCloud::Common::AbstractModel
        # @param AddressTemplateName: IP地址模板名称。
        # @type AddressTemplateName: String
        # @param Addresses: 地址信息，支持 IP、CIDR、IP 范围。Addresses与AddressesExtra必填其一。
        # @type Addresses: Array
        # @param AddressesExtra: 地址信息，支持携带备注，支持 IP、CIDR、IP 范围。Addresses与AddressesExtra必填其一。
        # @type AddressesExtra: Array

        attr_accessor :AddressTemplateName, :Addresses, :AddressesExtra
        
        def initialize(addresstemplatename=nil, addresses=nil, addressesextra=nil)
          @AddressTemplateName = addresstemplatename
          @Addresses = addresses
          @AddressesExtra = addressesextra
        end

        def deserialize(params)
          @AddressTemplateName = params['AddressTemplateName']
          @Addresses = params['Addresses']
          unless params['AddressesExtra'].nil?
            @AddressesExtra = []
            params['AddressesExtra'].each do |i|
              addressinfo_tmp = AddressInfo.new
              addressinfo_tmp.deserialize(i)
              @AddressesExtra << addressinfo_tmp
            end
          end
        end
      end

      # CreateAddressTemplate返回参数结构体
      class CreateAddressTemplateResponse < TencentCloud::Common::AbstractModel
        # @param AddressTemplate: IP地址模板对象。
        # @type AddressTemplate: :class:`Tencentcloud::Vpc.v20170312.models.AddressTemplate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressTemplate, :RequestId
        
        def initialize(addresstemplate=nil, requestid=nil)
          @AddressTemplate = addresstemplate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressTemplate'].nil?
            @AddressTemplate = AddressTemplate.new
            @AddressTemplate.deserialize(params['AddressTemplate'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAndAttachNetworkInterface请求参数结构体
      class CreateAndAttachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param NetworkInterfaceName: 弹性网卡名称，最大长度不能超过60个字节。
        # @type NetworkInterfaceName: String
        # @param SubnetId: 弹性网卡所在的子网实例ID，例如：subnet-0ap8nwca。
        # @type SubnetId: String
        # @param InstanceId: 云服务器实例ID。
        # @type InstanceId: String
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。
        # @type PrivateIpAddresses: Array
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数，内网IP地址个数总和不能超过配数。
        # @type SecondaryPrivateIpAddressCount: Integer
        # @param SecurityGroupIds: 指定绑定的安全组，例如：['sg-1dd51d']。
        # @type SecurityGroupIds: Array
        # @param NetworkInterfaceDescription: 弹性网卡描述，可任意命名，但不得超过60个字符。
        # @type NetworkInterfaceDescription: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param AttachType: 绑定类型：0 标准型 1 扩展型。
        # @type AttachType: Integer

        attr_accessor :VpcId, :NetworkInterfaceName, :SubnetId, :InstanceId, :PrivateIpAddresses, :SecondaryPrivateIpAddressCount, :SecurityGroupIds, :NetworkInterfaceDescription, :Tags, :AttachType
        
        def initialize(vpcid=nil, networkinterfacename=nil, subnetid=nil, instanceid=nil, privateipaddresses=nil, secondaryprivateipaddresscount=nil, securitygroupids=nil, networkinterfacedescription=nil, tags=nil, attachtype=nil)
          @VpcId = vpcid
          @NetworkInterfaceName = networkinterfacename
          @SubnetId = subnetid
          @InstanceId = instanceid
          @PrivateIpAddresses = privateipaddresses
          @SecondaryPrivateIpAddressCount = secondaryprivateipaddresscount
          @SecurityGroupIds = securitygroupids
          @NetworkInterfaceDescription = networkinterfacedescription
          @Tags = tags
          @AttachType = attachtype
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @SubnetId = params['SubnetId']
          @InstanceId = params['InstanceId']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
          @SecondaryPrivateIpAddressCount = params['SecondaryPrivateIpAddressCount']
          @SecurityGroupIds = params['SecurityGroupIds']
          @NetworkInterfaceDescription = params['NetworkInterfaceDescription']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AttachType = params['AttachType']
        end
      end

      # CreateAndAttachNetworkInterface返回参数结构体
      class CreateAndAttachNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
        # @param NetworkInterface: 弹性网卡实例。
        # @type NetworkInterface: :class:`Tencentcloud::Vpc.v20170312.models.NetworkInterface`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkInterface, :RequestId
        
        def initialize(networkinterface=nil, requestid=nil)
          @NetworkInterface = networkinterface
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkInterface'].nil?
            @NetworkInterface = NetworkInterface.new
            @NetworkInterface.deserialize(params['NetworkInterface'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAssistantCidr请求参数结构体
      class CreateAssistantCidrRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        # @type VpcId: String
        # @param CidrBlocks: CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]
        # @type CidrBlocks: Array

        attr_accessor :VpcId, :CidrBlocks
        
        def initialize(vpcid=nil, cidrblocks=nil)
          @VpcId = vpcid
          @CidrBlocks = cidrblocks
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @CidrBlocks = params['CidrBlocks']
        end
      end

      # CreateAssistantCidr返回参数结构体
      class CreateAssistantCidrResponse < TencentCloud::Common::AbstractModel
        # @param AssistantCidrSet: 辅助CIDR数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantCidrSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssistantCidrSet, :RequestId
        
        def initialize(assistantcidrset=nil, requestid=nil)
          @AssistantCidrSet = assistantcidrset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssistantCidrSet'].nil?
            @AssistantCidrSet = []
            params['AssistantCidrSet'].each do |i|
              assistantcidr_tmp = AssistantCidr.new
              assistantcidr_tmp.deserialize(i)
              @AssistantCidrSet << assistantcidr_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateBandwidthPackage请求参数结构体
      class CreateBandwidthPackageRequest < TencentCloud::Common::AbstractModel
        # @param NetworkType: 带宽包类型, 默认值: BGP, 可选值:
        # <li>BGP: 普通BGP共享带宽包</li>
        # <li>HIGH_QUALITY_BGP: 精品BGP共享带宽包</li>
        # @type NetworkType: String
        # @param ChargeType: 带宽包计费类型, 默认为: TOP5_POSTPAID_BY_MONTH, 可选值:
        # <li>TOP5_POSTPAID_BY_MONTH: 按月后付费TOP5计费</li>
        # <li>PERCENT95_POSTPAID_BY_MONTH: 按月后付费月95计费</li>
        # <li>FIXED_PREPAID_BY_MONTH: 包月预付费计费</li>
        # @type ChargeType: String
        # @param BandwidthPackageName: 带宽包名称。
        # @type BandwidthPackageName: String
        # @param BandwidthPackageCount: 带宽包数量(传统账户类型只能填1), 标准账户类型取值范围为1~20。
        # @type BandwidthPackageCount: Integer
        # @param InternetMaxBandwidth: 带宽包限速大小。单位：Mbps，-1表示不限速。该功能当前内测中，暂不对外开放。
        # @type InternetMaxBandwidth: Integer
        # @param Tags: 需要关联的标签列表。
        # @type Tags: Array
        # @param Protocol: 带宽包协议类型。当前支持'ipv4'和'ipv6'协议带宽包，默认值是'ipv4'。
        # @type Protocol: String

        attr_accessor :NetworkType, :ChargeType, :BandwidthPackageName, :BandwidthPackageCount, :InternetMaxBandwidth, :Tags, :Protocol
        
        def initialize(networktype=nil, chargetype=nil, bandwidthpackagename=nil, bandwidthpackagecount=nil, internetmaxbandwidth=nil, tags=nil, protocol=nil)
          @NetworkType = networktype
          @ChargeType = chargetype
          @BandwidthPackageName = bandwidthpackagename
          @BandwidthPackageCount = bandwidthpackagecount
          @InternetMaxBandwidth = internetmaxbandwidth
          @Tags = tags
          @Protocol = protocol
        end

        def deserialize(params)
          @NetworkType = params['NetworkType']
          @ChargeType = params['ChargeType']
          @BandwidthPackageName = params['BandwidthPackageName']
          @BandwidthPackageCount = params['BandwidthPackageCount']
          @InternetMaxBandwidth = params['InternetMaxBandwidth']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Protocol = params['Protocol']
        end
      end

      # CreateBandwidthPackage返回参数结构体
      class CreateBandwidthPackageResponse < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 带宽包唯一ID。
        # @type BandwidthPackageId: String
        # @param BandwidthPackageIds: 带宽包唯一ID列表(申请数量大于1时有效)。
        # @type BandwidthPackageIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BandwidthPackageId, :BandwidthPackageIds, :RequestId
        
        def initialize(bandwidthpackageid=nil, bandwidthpackageids=nil, requestid=nil)
          @BandwidthPackageId = bandwidthpackageid
          @BandwidthPackageIds = bandwidthpackageids
          @RequestId = requestid
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
          @BandwidthPackageIds = params['BandwidthPackageIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateCcn请求参数结构体
      class CreateCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnName: CCN名称，最大长度不能超过60个字节。
        # @type CcnName: String
        # @param CcnDescription: CCN描述信息，最大长度不能超过100个字节。
        # @type CcnDescription: String
        # @param QosLevel: CCN服务质量，'PT'：白金，'AU'：金，'AG'：银，默认为‘AU’。
        # @type QosLevel: String
        # @param InstanceChargeType: 计费模式，PREPAID：表示预付费，即包年包月，POSTPAID：表示后付费，即按量计费。默认：POSTPAID。
        # @type InstanceChargeType: String
        # @param BandwidthLimitType: 限速类型，OUTER_REGION_LIMIT表示地域出口限速，INTER_REGION_LIMIT为地域间限速，默认为OUTER_REGION_LIMIT。预付费模式仅支持地域间限速，后付费模式支持地域间限速和地域出口限速。
        # @type BandwidthLimitType: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :CcnName, :CcnDescription, :QosLevel, :InstanceChargeType, :BandwidthLimitType, :Tags
        
        def initialize(ccnname=nil, ccndescription=nil, qoslevel=nil, instancechargetype=nil, bandwidthlimittype=nil, tags=nil)
          @CcnName = ccnname
          @CcnDescription = ccndescription
          @QosLevel = qoslevel
          @InstanceChargeType = instancechargetype
          @BandwidthLimitType = bandwidthlimittype
          @Tags = tags
        end

        def deserialize(params)
          @CcnName = params['CcnName']
          @CcnDescription = params['CcnDescription']
          @QosLevel = params['QosLevel']
          @InstanceChargeType = params['InstanceChargeType']
          @BandwidthLimitType = params['BandwidthLimitType']
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

      # CreateCcn返回参数结构体
      class CreateCcnResponse < TencentCloud::Common::AbstractModel
        # @param Ccn: 云联网（CCN）对象。
        # @type Ccn: :class:`Tencentcloud::Vpc.v20170312.models.CCN`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ccn, :RequestId
        
        def initialize(ccn=nil, requestid=nil)
          @Ccn = ccn
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ccn'].nil?
            @Ccn = CCN.new
            @Ccn.deserialize(params['Ccn'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomerGateway请求参数结构体
      class CreateCustomerGatewayRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayName: 对端网关名称，可任意命名，但不得超过60个字符。
        # @type CustomerGatewayName: String
        # @param IpAddress: 对端网关公网IP。
        # @type IpAddress: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :CustomerGatewayName, :IpAddress, :Tags
        
        def initialize(customergatewayname=nil, ipaddress=nil, tags=nil)
          @CustomerGatewayName = customergatewayname
          @IpAddress = ipaddress
          @Tags = tags
        end

        def deserialize(params)
          @CustomerGatewayName = params['CustomerGatewayName']
          @IpAddress = params['IpAddress']
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

      # CreateCustomerGateway返回参数结构体
      class CreateCustomerGatewayResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGateway: 对端网关对象
        # @type CustomerGateway: :class:`Tencentcloud::Vpc.v20170312.models.CustomerGateway`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGateway, :RequestId
        
        def initialize(customergateway=nil, requestid=nil)
          @CustomerGateway = customergateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomerGateway'].nil?
            @CustomerGateway = CustomerGateway.new
            @CustomerGateway.deserialize(params['CustomerGateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDefaultSecurityGroup请求参数结构体
      class CreateDefaultSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID，默认0。可在qcloud控制台项目管理页面查询到。
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # CreateDefaultSecurityGroup返回参数结构体
      class CreateDefaultSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组对象。
        # @type SecurityGroup: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroup, :RequestId
        
        def initialize(securitygroup=nil, requestid=nil)
          @SecurityGroup = securitygroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroup'].nil?
            @SecurityGroup = SecurityGroup.new
            @SecurityGroup.deserialize(params['SecurityGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDefaultVpc请求参数结构体
      class CreateDefaultVpcRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 子网所在的可用区，该参数可通过[DescribeZones](https://cloud.tencent.com/document/product/213/15707)接口获取，例如ap-guangzhou-1，不指定时将随机选择可用区。
        # @type Zone: String
        # @param Force: 是否强制返回默认VPC。
        # @type Force: Boolean

        attr_accessor :Zone, :Force
        
        def initialize(zone=nil, force=nil)
          @Zone = zone
          @Force = force
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Force = params['Force']
        end
      end

      # CreateDefaultVpc返回参数结构体
      class CreateDefaultVpcResponse < TencentCloud::Common::AbstractModel
        # @param Vpc: 默认VPC和子网ID
        # @type Vpc: :class:`Tencentcloud::Vpc.v20170312.models.DefaultVpcSubnet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Vpc, :RequestId
        
        def initialize(vpc=nil, requestid=nil)
          @Vpc = vpc
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Vpc'].nil?
            @Vpc = DefaultVpcSubnet.new
            @Vpc.deserialize(params['Vpc'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDhcpIp请求参数结构体
      class CreateDhcpIpRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络`ID`。
        # @type VpcId: String
        # @param SubnetId: 子网`ID`。
        # @type SubnetId: String
        # @param DhcpIpName: `DhcpIp`名称。
        # @type DhcpIpName: String
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数。总数不能超过64个。
        # @type SecondaryPrivateIpAddressCount: Integer

        attr_accessor :VpcId, :SubnetId, :DhcpIpName, :SecondaryPrivateIpAddressCount
        
        def initialize(vpcid=nil, subnetid=nil, dhcpipname=nil, secondaryprivateipaddresscount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @DhcpIpName = dhcpipname
          @SecondaryPrivateIpAddressCount = secondaryprivateipaddresscount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DhcpIpName = params['DhcpIpName']
          @SecondaryPrivateIpAddressCount = params['SecondaryPrivateIpAddressCount']
        end
      end

      # CreateDhcpIp返回参数结构体
      class CreateDhcpIpResponse < TencentCloud::Common::AbstractModel
        # @param DhcpIpSet: 新创建的`DhcpIp`信息
        # @type DhcpIpSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DhcpIpSet, :RequestId
        
        def initialize(dhcpipset=nil, requestid=nil)
          @DhcpIpSet = dhcpipset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DhcpIpSet'].nil?
            @DhcpIpSet = []
            params['DhcpIpSet'].each do |i|
              dhcpip_tmp = DhcpIp.new
              dhcpip_tmp.deserialize(i)
              @DhcpIpSet << dhcpip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDirectConnectGatewayCcnRoutes请求参数结构体
      class CreateDirectConnectGatewayCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关ID，形如：dcg-prpqlmg1
        # @type DirectConnectGatewayId: String
        # @param Routes: 需要连通的IDC网段列表
        # @type Routes: Array

        attr_accessor :DirectConnectGatewayId, :Routes
        
        def initialize(directconnectgatewayid=nil, routes=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @Routes = routes
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              directconnectgatewayccnroute_tmp = DirectConnectGatewayCcnRoute.new
              directconnectgatewayccnroute_tmp.deserialize(i)
              @Routes << directconnectgatewayccnroute_tmp
            end
          end
        end
      end

      # CreateDirectConnectGatewayCcnRoutes返回参数结构体
      class CreateDirectConnectGatewayCcnRoutesResponse < TencentCloud::Common::AbstractModel
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

      # CreateDirectConnectGateway请求参数结构体
      class CreateDirectConnectGatewayRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayName: 专线网关名称
        # @type DirectConnectGatewayName: String
        # @param NetworkType: 关联网络类型，可选值：
        # <li>VPC - 私有网络</li>
        # <li>CCN - 云联网</li>
        # @type NetworkType: String
        # @param NetworkInstanceId: <li>NetworkType 为 VPC 时，这里传值为私有网络实例ID</li>
        # <li>NetworkType 为 CCN 时，这里传值为云联网实例ID</li>
        # @type NetworkInstanceId: String
        # @param GatewayType: 网关类型，可选值：
        # <li>NORMAL - （默认）标准型，注：云联网只支持标准型</li>
        # <li>NAT - NAT型</li>NAT类型支持网络地址转换配置，类型确定后不能修改；一个私有网络可以创建一个NAT类型的专线网关和一个非NAT类型的专线网关
        # @type GatewayType: String
        # @param ModeType: 云联网路由发布模式，可选值：`standard`（标准模式）、`exquisite`（精细模式）。只有云联网类型专线网关才支持`ModeType`。
        # @type ModeType: String
        # @param Zone: 专线网关可用区
        # @type Zone: String
        # @param HaZoneGroupId: 专线网关高可用区容灾组ID
        # @type HaZoneGroupId: String

        attr_accessor :DirectConnectGatewayName, :NetworkType, :NetworkInstanceId, :GatewayType, :ModeType, :Zone, :HaZoneGroupId
        
        def initialize(directconnectgatewayname=nil, networktype=nil, networkinstanceid=nil, gatewaytype=nil, modetype=nil, zone=nil, hazonegroupid=nil)
          @DirectConnectGatewayName = directconnectgatewayname
          @NetworkType = networktype
          @NetworkInstanceId = networkinstanceid
          @GatewayType = gatewaytype
          @ModeType = modetype
          @Zone = zone
          @HaZoneGroupId = hazonegroupid
        end

        def deserialize(params)
          @DirectConnectGatewayName = params['DirectConnectGatewayName']
          @NetworkType = params['NetworkType']
          @NetworkInstanceId = params['NetworkInstanceId']
          @GatewayType = params['GatewayType']
          @ModeType = params['ModeType']
          @Zone = params['Zone']
          @HaZoneGroupId = params['HaZoneGroupId']
        end
      end

      # CreateDirectConnectGateway返回参数结构体
      class CreateDirectConnectGatewayResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectGateway: 专线网关对象。
        # @type DirectConnectGateway: :class:`Tencentcloud::Vpc.v20170312.models.DirectConnectGateway`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectGateway, :RequestId
        
        def initialize(directconnectgateway=nil, requestid=nil)
          @DirectConnectGateway = directconnectgateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DirectConnectGateway'].nil?
            @DirectConnectGateway = DirectConnectGateway.new
            @DirectConnectGateway.deserialize(params['DirectConnectGateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFlowLog请求参数结构体
      class CreateFlowLogRequest < TencentCloud::Common::AbstractModel
        # @param FlowLogName: 流日志实例名字
        # @type FlowLogName: String
        # @param ResourceType: 流日志所属资源类型，VPC|SUBNET|NETWORKINTERFACE|CCN|NAT|DCG
        # @type ResourceType: String
        # @param ResourceId: 资源唯一ID
        # @type ResourceId: String
        # @param TrafficType: 流日志采集类型，ACCEPT|REJECT|ALL
        # @type TrafficType: String
        # @param VpcId: 私用网络ID或者统一ID，建议使用统一ID，当ResourceType为CCN时不填，其他类型必填。
        # @type VpcId: String
        # @param FlowLogDescription: 流日志实例描述
        # @type FlowLogDescription: String
        # @param CloudLogId: 流日志存储ID
        # @type CloudLogId: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param StorageType: 消费端类型：cls、ckafka
        # @type StorageType: String
        # @param FlowLogStorage: 流日志消费端信息，当消费端类型为ckafka时，必填。
        # @type FlowLogStorage: :class:`Tencentcloud::Vpc.v20170312.models.FlowLogStorage`
        # @param CloudLogRegion: 流日志存储ID对应的地域，不传递默认为本地域。
        # @type CloudLogRegion: String

        attr_accessor :FlowLogName, :ResourceType, :ResourceId, :TrafficType, :VpcId, :FlowLogDescription, :CloudLogId, :Tags, :StorageType, :FlowLogStorage, :CloudLogRegion
        
        def initialize(flowlogname=nil, resourcetype=nil, resourceid=nil, traffictype=nil, vpcid=nil, flowlogdescription=nil, cloudlogid=nil, tags=nil, storagetype=nil, flowlogstorage=nil, cloudlogregion=nil)
          @FlowLogName = flowlogname
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @TrafficType = traffictype
          @VpcId = vpcid
          @FlowLogDescription = flowlogdescription
          @CloudLogId = cloudlogid
          @Tags = tags
          @StorageType = storagetype
          @FlowLogStorage = flowlogstorage
          @CloudLogRegion = cloudlogregion
        end

        def deserialize(params)
          @FlowLogName = params['FlowLogName']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @TrafficType = params['TrafficType']
          @VpcId = params['VpcId']
          @FlowLogDescription = params['FlowLogDescription']
          @CloudLogId = params['CloudLogId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @StorageType = params['StorageType']
          unless params['FlowLogStorage'].nil?
            @FlowLogStorage = FlowLogStorage.new
            @FlowLogStorage.deserialize(params['FlowLogStorage'])
          end
          @CloudLogRegion = params['CloudLogRegion']
        end
      end

      # CreateFlowLog返回参数结构体
      class CreateFlowLogResponse < TencentCloud::Common::AbstractModel
        # @param FlowLog: 创建的流日志信息
        # @type FlowLog: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowLog, :RequestId
        
        def initialize(flowlog=nil, requestid=nil)
          @FlowLog = flowlog
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowLog'].nil?
            @FlowLog = []
            params['FlowLog'].each do |i|
              flowlog_tmp = FlowLog.new
              flowlog_tmp.deserialize(i)
              @FlowLog << flowlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateHaVip请求参数结构体
      class CreateHaVipRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `HAVIP`所在私有网络`ID`。
        # @type VpcId: String
        # @param SubnetId: `HAVIP`所在子网`ID`。
        # @type SubnetId: String
        # @param HaVipName: `HAVIP`名称。
        # @type HaVipName: String
        # @param Vip: 指定虚拟IP地址，必须在`VPC`网段内且未被占用。不指定则自动分配。
        # @type Vip: String

        attr_accessor :VpcId, :SubnetId, :HaVipName, :Vip
        
        def initialize(vpcid=nil, subnetid=nil, havipname=nil, vip=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @HaVipName = havipname
          @Vip = vip
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @HaVipName = params['HaVipName']
          @Vip = params['Vip']
        end
      end

      # CreateHaVip返回参数结构体
      class CreateHaVipResponse < TencentCloud::Common::AbstractModel
        # @param HaVip: `HAVIP`对象。
        # @type HaVip: :class:`Tencentcloud::Vpc.v20170312.models.HaVip`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HaVip, :RequestId
        
        def initialize(havip=nil, requestid=nil)
          @HaVip = havip
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HaVip'].nil?
            @HaVip = HaVip.new
            @HaVip.deserialize(params['HaVip'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateIp6Translators请求参数结构体
      class CreateIp6TranslatorsRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorName: 转换实例名称
        # @type Ip6TranslatorName: String
        # @param Ip6TranslatorCount: 创建转换实例数量，默认是1个
        # @type Ip6TranslatorCount: Integer
        # @param Ip6InternetServiceProvider: 转换实例运营商属性，可取"CMCC","CTCC","CUCC","BGP"
        # @type Ip6InternetServiceProvider: String

        attr_accessor :Ip6TranslatorName, :Ip6TranslatorCount, :Ip6InternetServiceProvider
        
        def initialize(ip6translatorname=nil, ip6translatorcount=nil, ip6internetserviceprovider=nil)
          @Ip6TranslatorName = ip6translatorname
          @Ip6TranslatorCount = ip6translatorcount
          @Ip6InternetServiceProvider = ip6internetserviceprovider
        end

        def deserialize(params)
          @Ip6TranslatorName = params['Ip6TranslatorName']
          @Ip6TranslatorCount = params['Ip6TranslatorCount']
          @Ip6InternetServiceProvider = params['Ip6InternetServiceProvider']
        end
      end

      # CreateIp6Translators返回参数结构体
      class CreateIp6TranslatorsResponse < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorSet: 转换实例的唯一ID数组，形如"ip6-xxxxxxxx"
        # @type Ip6TranslatorSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ip6TranslatorSet, :RequestId
        
        def initialize(ip6translatorset=nil, requestid=nil)
          @Ip6TranslatorSet = ip6translatorset
          @RequestId = requestid
        end

        def deserialize(params)
          @Ip6TranslatorSet = params['Ip6TranslatorSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateLocalGateway请求参数结构体
      class CreateLocalGatewayRequest < TencentCloud::Common::AbstractModel
        # @param LocalGatewayName: 本地网关名称
        # @type LocalGatewayName: String
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param CdcId: CDC实例ID
        # @type CdcId: String

        attr_accessor :LocalGatewayName, :VpcId, :CdcId
        
        def initialize(localgatewayname=nil, vpcid=nil, cdcid=nil)
          @LocalGatewayName = localgatewayname
          @VpcId = vpcid
          @CdcId = cdcid
        end

        def deserialize(params)
          @LocalGatewayName = params['LocalGatewayName']
          @VpcId = params['VpcId']
          @CdcId = params['CdcId']
        end
      end

      # CreateLocalGateway返回参数结构体
      class CreateLocalGatewayResponse < TencentCloud::Common::AbstractModel
        # @param LocalGateway: 本地网关信息
        # @type LocalGateway: :class:`Tencentcloud::Vpc.v20170312.models.LocalGateway`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LocalGateway, :RequestId
        
        def initialize(localgateway=nil, requestid=nil)
          @LocalGateway = localgateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LocalGateway'].nil?
            @LocalGateway = LocalGateway.new
            @LocalGateway.deserialize(params['LocalGateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNatGatewayDestinationIpPortTranslationNatRule请求参数结构体
      class CreateNatGatewayDestinationIpPortTranslationNatRuleRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param DestinationIpPortTranslationNatRules: NAT网关的端口转换规则。
        # @type DestinationIpPortTranslationNatRules: Array

        attr_accessor :NatGatewayId, :DestinationIpPortTranslationNatRules
        
        def initialize(natgatewayid=nil, destinationipporttranslationnatrules=nil)
          @NatGatewayId = natgatewayid
          @DestinationIpPortTranslationNatRules = destinationipporttranslationnatrules
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          unless params['DestinationIpPortTranslationNatRules'].nil?
            @DestinationIpPortTranslationNatRules = []
            params['DestinationIpPortTranslationNatRules'].each do |i|
              destinationipporttranslationnatrule_tmp = DestinationIpPortTranslationNatRule.new
              destinationipporttranslationnatrule_tmp.deserialize(i)
              @DestinationIpPortTranslationNatRules << destinationipporttranslationnatrule_tmp
            end
          end
        end
      end

      # CreateNatGatewayDestinationIpPortTranslationNatRule返回参数结构体
      class CreateNatGatewayDestinationIpPortTranslationNatRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateNatGateway请求参数结构体
      class CreateNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayName: NAT网关名称
        # @type NatGatewayName: String
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param InternetMaxBandwidthOut: NAT网关最大外网出带宽(单位:Mbps)，支持的参数值：`20, 50, 100, 200, 500, 1000, 2000, 5000`，默认: `100Mbps`。
        # @type InternetMaxBandwidthOut: Integer
        # @param MaxConcurrentConnection: NAT网关并发连接上限，支持参数值：`1000000、3000000、10000000`，默认值为`100000`。
        # @type MaxConcurrentConnection: Integer
        # @param AddressCount: 需要申请的弹性IP个数，系统会按您的要求生产N个弹性IP，其中AddressCount和PublicAddresses至少传递一个。
        # @type AddressCount: Integer
        # @param PublicIpAddresses: 绑定NAT网关的弹性IP数组，其中AddressCount和PublicAddresses至少传递一个。
        # @type PublicIpAddresses: Array
        # @param Zone: 可用区，形如：`ap-guangzhou-1`。
        # @type Zone: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param SubnetId: NAT网关所属子网
        # @type SubnetId: String
        # @param StockPublicIpAddressesBandwidthOut: 绑定NAT网关的弹性IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        # @type StockPublicIpAddressesBandwidthOut: Integer
        # @param PublicIpAddressesBandwidthOut: 需要申请公网IP带宽大小（单位Mbps），默认为当前用户类型所能使用的最大值。
        # @type PublicIpAddressesBandwidthOut: Integer
        # @param PublicIpFromSameZone: 公网IP是否强制与NAT网关来自同可用区，true表示需要与NAT网关同可用区；false表示可与NAT网关不是同一个可用区。此参数只有当参数Zone存在时才能生效。
        # @type PublicIpFromSameZone: Boolean

        attr_accessor :NatGatewayName, :VpcId, :InternetMaxBandwidthOut, :MaxConcurrentConnection, :AddressCount, :PublicIpAddresses, :Zone, :Tags, :SubnetId, :StockPublicIpAddressesBandwidthOut, :PublicIpAddressesBandwidthOut, :PublicIpFromSameZone
        
        def initialize(natgatewayname=nil, vpcid=nil, internetmaxbandwidthout=nil, maxconcurrentconnection=nil, addresscount=nil, publicipaddresses=nil, zone=nil, tags=nil, subnetid=nil, stockpublicipaddressesbandwidthout=nil, publicipaddressesbandwidthout=nil, publicipfromsamezone=nil)
          @NatGatewayName = natgatewayname
          @VpcId = vpcid
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @MaxConcurrentConnection = maxconcurrentconnection
          @AddressCount = addresscount
          @PublicIpAddresses = publicipaddresses
          @Zone = zone
          @Tags = tags
          @SubnetId = subnetid
          @StockPublicIpAddressesBandwidthOut = stockpublicipaddressesbandwidthout
          @PublicIpAddressesBandwidthOut = publicipaddressesbandwidthout
          @PublicIpFromSameZone = publicipfromsamezone
        end

        def deserialize(params)
          @NatGatewayName = params['NatGatewayName']
          @VpcId = params['VpcId']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @MaxConcurrentConnection = params['MaxConcurrentConnection']
          @AddressCount = params['AddressCount']
          @PublicIpAddresses = params['PublicIpAddresses']
          @Zone = params['Zone']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @SubnetId = params['SubnetId']
          @StockPublicIpAddressesBandwidthOut = params['StockPublicIpAddressesBandwidthOut']
          @PublicIpAddressesBandwidthOut = params['PublicIpAddressesBandwidthOut']
          @PublicIpFromSameZone = params['PublicIpFromSameZone']
        end
      end

      # CreateNatGateway返回参数结构体
      class CreateNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param NatGatewaySet: NAT网关对象数组。
        # @type NatGatewaySet: Array
        # @param TotalCount: 符合条件的 NAT网关对象数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatGatewaySet, :TotalCount, :RequestId
        
        def initialize(natgatewayset=nil, totalcount=nil, requestid=nil)
          @NatGatewaySet = natgatewayset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatGatewaySet'].nil?
            @NatGatewaySet = []
            params['NatGatewaySet'].each do |i|
              natgateway_tmp = NatGateway.new
              natgateway_tmp.deserialize(i)
              @NatGatewaySet << natgateway_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # CreateNatGatewaySourceIpTranslationNatRule请求参数结构体
      class CreateNatGatewaySourceIpTranslationNatRuleRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如："nat-df45454"
        # @type NatGatewayId: String
        # @param SourceIpTranslationNatRules: NAT网关的SNAT转换规则
        # @type SourceIpTranslationNatRules: Array

        attr_accessor :NatGatewayId, :SourceIpTranslationNatRules
        
        def initialize(natgatewayid=nil, sourceiptranslationnatrules=nil)
          @NatGatewayId = natgatewayid
          @SourceIpTranslationNatRules = sourceiptranslationnatrules
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          unless params['SourceIpTranslationNatRules'].nil?
            @SourceIpTranslationNatRules = []
            params['SourceIpTranslationNatRules'].each do |i|
              sourceiptranslationnatrule_tmp = SourceIpTranslationNatRule.new
              sourceiptranslationnatrule_tmp.deserialize(i)
              @SourceIpTranslationNatRules << sourceiptranslationnatrule_tmp
            end
          end
        end
      end

      # CreateNatGatewaySourceIpTranslationNatRule返回参数结构体
      class CreateNatGatewaySourceIpTranslationNatRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateNetDetect请求参数结构体
      class CreateNetDetectRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-12345678`
        # @type VpcId: String
        # @param SubnetId: 子网实例ID。形如：subnet-12345678。
        # @type SubnetId: String
        # @param NetDetectName: 网络探测名称，最大长度不能超过60个字节。
        # @type NetDetectName: String
        # @param DetectDestinationIp: 探测目的IPv4地址数组。最多两个。
        # @type DetectDestinationIp: Array
        # @param NextHopType: 下一跳类型，目前我们支持的类型有：
        # VPN：VPN网关；
        # DIRECTCONNECT：专线网关；
        # PEERCONNECTION：对等连接；
        # NAT：NAT网关；
        # NORMAL_CVM：普通云服务器；
        # CCN：云联网网关；
        # @type NextHopType: String
        # @param NextHopDestination: 下一跳目的网关，取值与“下一跳类型”相关：
        # 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        # 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        # 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        # 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        # 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        # 下一跳类型为CCN，取值云联网ID，形如：ccn-12345678；
        # @type NextHopDestination: String
        # @param NetDetectDescription: 网络探测描述。
        # @type NetDetectDescription: String

        attr_accessor :VpcId, :SubnetId, :NetDetectName, :DetectDestinationIp, :NextHopType, :NextHopDestination, :NetDetectDescription
        
        def initialize(vpcid=nil, subnetid=nil, netdetectname=nil, detectdestinationip=nil, nexthoptype=nil, nexthopdestination=nil, netdetectdescription=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @NetDetectName = netdetectname
          @DetectDestinationIp = detectdestinationip
          @NextHopType = nexthoptype
          @NextHopDestination = nexthopdestination
          @NetDetectDescription = netdetectdescription
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @NetDetectName = params['NetDetectName']
          @DetectDestinationIp = params['DetectDestinationIp']
          @NextHopType = params['NextHopType']
          @NextHopDestination = params['NextHopDestination']
          @NetDetectDescription = params['NetDetectDescription']
        end
      end

      # CreateNetDetect返回参数结构体
      class CreateNetDetectResponse < TencentCloud::Common::AbstractModel
        # @param NetDetect: 网络探测（NetDetect）对象。
        # @type NetDetect: :class:`Tencentcloud::Vpc.v20170312.models.NetDetect`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetect, :RequestId
        
        def initialize(netdetect=nil, requestid=nil)
          @NetDetect = netdetect
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetect'].nil?
            @NetDetect = NetDetect.new
            @NetDetect.deserialize(params['NetDetect'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNetworkAclQuintupleEntries请求参数结构体
      class CreateNetworkAclQuintupleEntriesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param NetworkAclQuintupleSet: 网络五元组ACL规则集。
        # @type NetworkAclQuintupleSet: :class:`Tencentcloud::Vpc.v20170312.models.NetworkAclQuintupleEntries`

        attr_accessor :NetworkAclId, :NetworkAclQuintupleSet
        
        def initialize(networkaclid=nil, networkaclquintupleset=nil)
          @NetworkAclId = networkaclid
          @NetworkAclQuintupleSet = networkaclquintupleset
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          unless params['NetworkAclQuintupleSet'].nil?
            @NetworkAclQuintupleSet = NetworkAclQuintupleEntries.new
            @NetworkAclQuintupleSet.deserialize(params['NetworkAclQuintupleSet'])
          end
        end
      end

      # CreateNetworkAclQuintupleEntries返回参数结构体
      class CreateNetworkAclQuintupleEntriesResponse < TencentCloud::Common::AbstractModel
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

      # CreateNetworkAcl请求参数结构体
      class CreateNetworkAclRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param NetworkAclName: 网络ACL名称，最大长度不能超过60个字节。
        # @type NetworkAclName: String
        # @param NetworkAclType: 网络ACL类型，三元组(TRIPLE)或五元组(QUINTUPLE)
        # @type NetworkAclType: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]。
        # @type Tags: Array

        attr_accessor :VpcId, :NetworkAclName, :NetworkAclType, :Tags
        
        def initialize(vpcid=nil, networkaclname=nil, networkacltype=nil, tags=nil)
          @VpcId = vpcid
          @NetworkAclName = networkaclname
          @NetworkAclType = networkacltype
          @Tags = tags
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NetworkAclName = params['NetworkAclName']
          @NetworkAclType = params['NetworkAclType']
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

      # CreateNetworkAcl返回参数结构体
      class CreateNetworkAclResponse < TencentCloud::Common::AbstractModel
        # @param NetworkAcl: 网络ACL实例。
        # @type NetworkAcl: :class:`Tencentcloud::Vpc.v20170312.models.NetworkAcl`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkAcl, :RequestId
        
        def initialize(networkacl=nil, requestid=nil)
          @NetworkAcl = networkacl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkAcl'].nil?
            @NetworkAcl = NetworkAcl.new
            @NetworkAcl.deserialize(params['NetworkAcl'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNetworkInterface请求参数结构体
      class CreateNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param NetworkInterfaceName: 弹性网卡名称，最大长度不能超过60个字节。
        # @type NetworkInterfaceName: String
        # @param SubnetId: 弹性网卡所在的子网实例ID，例如：subnet-0ap8nwca。
        # @type SubnetId: String
        # @param NetworkInterfaceDescription: 弹性网卡描述，可任意命名，但不得超过60个字符。
        # @type NetworkInterfaceDescription: String
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数，内网IP地址个数总和不能超过配数。
        # @type SecondaryPrivateIpAddressCount: Integer
        # @param SecurityGroupIds: 指定绑定的安全组，例如：['sg-1dd51d']。
        # @type SecurityGroupIds: Array
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。
        # @type PrivateIpAddresses: Array
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param TrunkingFlag: 网卡trunking模式设置，Enable-开启，Disable--关闭，默认关闭。
        # @type TrunkingFlag: String

        attr_accessor :VpcId, :NetworkInterfaceName, :SubnetId, :NetworkInterfaceDescription, :SecondaryPrivateIpAddressCount, :SecurityGroupIds, :PrivateIpAddresses, :Tags, :TrunkingFlag
        
        def initialize(vpcid=nil, networkinterfacename=nil, subnetid=nil, networkinterfacedescription=nil, secondaryprivateipaddresscount=nil, securitygroupids=nil, privateipaddresses=nil, tags=nil, trunkingflag=nil)
          @VpcId = vpcid
          @NetworkInterfaceName = networkinterfacename
          @SubnetId = subnetid
          @NetworkInterfaceDescription = networkinterfacedescription
          @SecondaryPrivateIpAddressCount = secondaryprivateipaddresscount
          @SecurityGroupIds = securitygroupids
          @PrivateIpAddresses = privateipaddresses
          @Tags = tags
          @TrunkingFlag = trunkingflag
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @SubnetId = params['SubnetId']
          @NetworkInterfaceDescription = params['NetworkInterfaceDescription']
          @SecondaryPrivateIpAddressCount = params['SecondaryPrivateIpAddressCount']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @TrunkingFlag = params['TrunkingFlag']
        end
      end

      # CreateNetworkInterface返回参数结构体
      class CreateNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
        # @param NetworkInterface: 弹性网卡实例。
        # @type NetworkInterface: :class:`Tencentcloud::Vpc.v20170312.models.NetworkInterface`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkInterface, :RequestId
        
        def initialize(networkinterface=nil, requestid=nil)
          @NetworkInterface = networkinterface
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkInterface'].nil?
            @NetworkInterface = NetworkInterface.new
            @NetworkInterface.deserialize(params['NetworkInterface'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRouteTable请求参数结构体
      class CreateRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param RouteTableName: 路由表名称，最大长度不能超过60个字节。
        # @type RouteTableName: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :VpcId, :RouteTableName, :Tags
        
        def initialize(vpcid=nil, routetablename=nil, tags=nil)
          @VpcId = vpcid
          @RouteTableName = routetablename
          @Tags = tags
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @RouteTableName = params['RouteTableName']
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

      # CreateRouteTable返回参数结构体
      class CreateRouteTableResponse < TencentCloud::Common::AbstractModel
        # @param RouteTable: 路由表对象。
        # @type RouteTable: :class:`Tencentcloud::Vpc.v20170312.models.RouteTable`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteTable, :RequestId
        
        def initialize(routetable=nil, requestid=nil)
          @RouteTable = routetable
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RouteTable'].nil?
            @RouteTable = RouteTable.new
            @RouteTable.deserialize(params['RouteTable'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRoutes请求参数结构体
      class CreateRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID。
        # @type RouteTableId: String
        # @param Routes: 路由策略对象。
        # @type Routes: Array

        attr_accessor :RouteTableId, :Routes
        
        def initialize(routetableid=nil, routes=nil)
          @RouteTableId = routetableid
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # CreateRoutes返回参数结构体
      class CreateRoutesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 新增的实例个数。
        # @type TotalCount: Integer
        # @param RouteTableSet: 路由表对象。
        # @type RouteTableSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteTableSet, :RequestId
        
        def initialize(totalcount=nil, routetableset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteTableSet = routetableset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteTableSet'].nil?
            @RouteTableSet = []
            params['RouteTableSet'].each do |i|
              routetable_tmp = RouteTable.new
              routetable_tmp.deserialize(i)
              @RouteTableSet << routetable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityGroupPolicies请求参数结构体
      class CreateSecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet
        
        def initialize(securitygroupid=nil, securitygrouppolicyset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
        end
      end

      # CreateSecurityGroupPolicies返回参数结构体
      class CreateSecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # CreateSecurityGroup请求参数结构体
      class CreateSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type GroupName: String
        # @param GroupDescription: 安全组备注，最多100个字符。
        # @type GroupDescription: String
        # @param ProjectId: 项目ID，默认0。可在qcloud控制台项目管理页面查询到。
        # @type ProjectId: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :GroupName, :GroupDescription, :ProjectId, :Tags
        
        def initialize(groupname=nil, groupdescription=nil, projectid=nil, tags=nil)
          @GroupName = groupname
          @GroupDescription = groupdescription
          @ProjectId = projectid
          @Tags = tags
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupDescription = params['GroupDescription']
          @ProjectId = params['ProjectId']
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

      # CreateSecurityGroup返回参数结构体
      class CreateSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组对象。
        # @type SecurityGroup: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroup, :RequestId
        
        def initialize(securitygroup=nil, requestid=nil)
          @SecurityGroup = securitygroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroup'].nil?
            @SecurityGroup = SecurityGroup.new
            @SecurityGroup.deserialize(params['SecurityGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityGroupWithPolicies请求参数结构体
      class CreateSecurityGroupWithPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type GroupName: String
        # @param GroupDescription: 安全组备注，最多100个字符。
        # @type GroupDescription: String
        # @param ProjectId: 项目ID，默认0。可在qcloud控制台项目管理页面查询到。
        # @type ProjectId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`

        attr_accessor :GroupName, :GroupDescription, :ProjectId, :SecurityGroupPolicySet
        
        def initialize(groupname=nil, groupdescription=nil, projectid=nil, securitygrouppolicyset=nil)
          @GroupName = groupname
          @GroupDescription = groupdescription
          @ProjectId = projectid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupDescription = params['GroupDescription']
          @ProjectId = params['ProjectId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
        end
      end

      # CreateSecurityGroupWithPolicies返回参数结构体
      class CreateSecurityGroupWithPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组对象。
        # @type SecurityGroup: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroup, :RequestId
        
        def initialize(securitygroup=nil, requestid=nil)
          @SecurityGroup = securitygroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroup'].nil?
            @SecurityGroup = SecurityGroup.new
            @SecurityGroup.deserialize(params['SecurityGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceTemplateGroup请求参数结构体
      class CreateServiceTemplateGroupRequest < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateGroupName: 协议端口模板集合名称
        # @type ServiceTemplateGroupName: String
        # @param ServiceTemplateIds: 协议端口模板实例ID，例如：ppm-4dw6agho。
        # @type ServiceTemplateIds: Array

        attr_accessor :ServiceTemplateGroupName, :ServiceTemplateIds
        
        def initialize(servicetemplategroupname=nil, servicetemplateids=nil)
          @ServiceTemplateGroupName = servicetemplategroupname
          @ServiceTemplateIds = servicetemplateids
        end

        def deserialize(params)
          @ServiceTemplateGroupName = params['ServiceTemplateGroupName']
          @ServiceTemplateIds = params['ServiceTemplateIds']
        end
      end

      # CreateServiceTemplateGroup返回参数结构体
      class CreateServiceTemplateGroupResponse < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateGroup: 协议端口模板集合对象。
        # @type ServiceTemplateGroup: :class:`Tencentcloud::Vpc.v20170312.models.ServiceTemplateGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceTemplateGroup, :RequestId
        
        def initialize(servicetemplategroup=nil, requestid=nil)
          @ServiceTemplateGroup = servicetemplategroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceTemplateGroup'].nil?
            @ServiceTemplateGroup = ServiceTemplateGroup.new
            @ServiceTemplateGroup.deserialize(params['ServiceTemplateGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceTemplate请求参数结构体
      class CreateServiceTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateName: 协议端口模板名称
        # @type ServiceTemplateName: String
        # @param Services: 支持单个端口、多个端口、连续端口及所有端口，协议支持：TCP、UDP、ICMP、GRE 协议。Services与ServicesExtra必填其一。
        # @type Services: Array
        # @param ServicesExtra: 支持添加备注，单个端口、多个端口、连续端口及所有端口，协议支持：TCP、UDP、ICMP、GRE 协议。Services与ServicesExtra必填其一。
        # @type ServicesExtra: Array

        attr_accessor :ServiceTemplateName, :Services, :ServicesExtra
        
        def initialize(servicetemplatename=nil, services=nil, servicesextra=nil)
          @ServiceTemplateName = servicetemplatename
          @Services = services
          @ServicesExtra = servicesextra
        end

        def deserialize(params)
          @ServiceTemplateName = params['ServiceTemplateName']
          @Services = params['Services']
          unless params['ServicesExtra'].nil?
            @ServicesExtra = []
            params['ServicesExtra'].each do |i|
              servicesinfo_tmp = ServicesInfo.new
              servicesinfo_tmp.deserialize(i)
              @ServicesExtra << servicesinfo_tmp
            end
          end
        end
      end

      # CreateServiceTemplate返回参数结构体
      class CreateServiceTemplateResponse < TencentCloud::Common::AbstractModel
        # @param ServiceTemplate: 协议端口模板对象。
        # @type ServiceTemplate: :class:`Tencentcloud::Vpc.v20170312.models.ServiceTemplate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceTemplate, :RequestId
        
        def initialize(servicetemplate=nil, requestid=nil)
          @ServiceTemplate = servicetemplate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceTemplate'].nil?
            @ServiceTemplate = ServiceTemplate.new
            @ServiceTemplate.deserialize(params['ServiceTemplate'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSubnet请求参数结构体
      class CreateSubnetRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param SubnetName: 子网名称，最大长度不能超过60个字节。
        # @type SubnetName: String
        # @param CidrBlock: 子网网段，子网网段必须在VPC网段内，相同VPC内子网网段不能重叠。
        # @type CidrBlock: String
        # @param Zone: 子网所在的可用区ID，不同子网选择不同可用区可以做跨可用区灾备。
        # @type Zone: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param CdcId: CDC实例ID。
        # @type CdcId: String

        attr_accessor :VpcId, :SubnetName, :CidrBlock, :Zone, :Tags, :CdcId
        
        def initialize(vpcid=nil, subnetname=nil, cidrblock=nil, zone=nil, tags=nil, cdcid=nil)
          @VpcId = vpcid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @Zone = zone
          @Tags = tags
          @CdcId = cdcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CdcId = params['CdcId']
        end
      end

      # CreateSubnet返回参数结构体
      class CreateSubnetResponse < TencentCloud::Common::AbstractModel
        # @param Subnet: 子网对象。
        # @type Subnet: :class:`Tencentcloud::Vpc.v20170312.models.Subnet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Subnet, :RequestId
        
        def initialize(subnet=nil, requestid=nil)
          @Subnet = subnet
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Subnet'].nil?
            @Subnet = Subnet.new
            @Subnet.deserialize(params['Subnet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSubnets请求参数结构体
      class CreateSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        # @type VpcId: String
        # @param Subnets: 子网对象列表。
        # @type Subnets: Array
        # @param Tags: 指定绑定的标签列表，注意这里的标签集合为列表中所有子网对象所共享，不能为每个子网对象单独指定标签，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param CdcId: 需要增加到的CDC实例ID。
        # @type CdcId: String

        attr_accessor :VpcId, :Subnets, :Tags, :CdcId
        
        def initialize(vpcid=nil, subnets=nil, tags=nil, cdcid=nil)
          @VpcId = vpcid
          @Subnets = subnets
          @Tags = tags
          @CdcId = cdcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          unless params['Subnets'].nil?
            @Subnets = []
            params['Subnets'].each do |i|
              subnetinput_tmp = SubnetInput.new
              subnetinput_tmp.deserialize(i)
              @Subnets << subnetinput_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CdcId = params['CdcId']
        end
      end

      # CreateSubnets返回参数结构体
      class CreateSubnetsResponse < TencentCloud::Common::AbstractModel
        # @param SubnetSet: 新创建的子网列表。
        # @type SubnetSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubnetSet, :RequestId
        
        def initialize(subnetset=nil, requestid=nil)
          @SubnetSet = subnetset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubnetSet'].nil?
            @SubnetSet = []
            params['SubnetSet'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetSet << subnet_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpcEndPoint请求参数结构体
      class CreateVpcEndPointRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID。
        # @type SubnetId: String
        # @param EndPointName: 终端节点名称。
        # @type EndPointName: String
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String
        # @param EndPointVip: 终端节点VIP，可以指定IP申请。
        # @type EndPointVip: String
        # @param SecurityGroupId: 安全组ID。
        # @type SecurityGroupId: String

        attr_accessor :VpcId, :SubnetId, :EndPointName, :EndPointServiceId, :EndPointVip, :SecurityGroupId
        
        def initialize(vpcid=nil, subnetid=nil, endpointname=nil, endpointserviceid=nil, endpointvip=nil, securitygroupid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @EndPointName = endpointname
          @EndPointServiceId = endpointserviceid
          @EndPointVip = endpointvip
          @SecurityGroupId = securitygroupid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @EndPointName = params['EndPointName']
          @EndPointServiceId = params['EndPointServiceId']
          @EndPointVip = params['EndPointVip']
          @SecurityGroupId = params['SecurityGroupId']
        end
      end

      # CreateVpcEndPoint返回参数结构体
      class CreateVpcEndPointResponse < TencentCloud::Common::AbstractModel
        # @param EndPoint: 终端节点对象详细信息。
        # @type EndPoint: :class:`Tencentcloud::Vpc.v20170312.models.EndPoint`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndPoint, :RequestId
        
        def initialize(endpoint=nil, requestid=nil)
          @EndPoint = endpoint
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EndPoint'].nil?
            @EndPoint = EndPoint.new
            @EndPoint.deserialize(params['EndPoint'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpcEndPointService请求参数结构体
      class CreateVpcEndPointServiceRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param EndPointServiceName: 终端节点服务名称。
        # @type EndPointServiceName: String
        # @param AutoAcceptFlag: 是否自动接受。
        # @type AutoAcceptFlag: Boolean
        # @param ServiceInstanceId: 后端服务ID，比如lb-xxx。
        # @type ServiceInstanceId: String
        # @param IsPassService: 是否是PassService类型。
        # @type IsPassService: Boolean

        attr_accessor :VpcId, :EndPointServiceName, :AutoAcceptFlag, :ServiceInstanceId, :IsPassService
        
        def initialize(vpcid=nil, endpointservicename=nil, autoacceptflag=nil, serviceinstanceid=nil, ispassservice=nil)
          @VpcId = vpcid
          @EndPointServiceName = endpointservicename
          @AutoAcceptFlag = autoacceptflag
          @ServiceInstanceId = serviceinstanceid
          @IsPassService = ispassservice
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @EndPointServiceName = params['EndPointServiceName']
          @AutoAcceptFlag = params['AutoAcceptFlag']
          @ServiceInstanceId = params['ServiceInstanceId']
          @IsPassService = params['IsPassService']
        end
      end

      # CreateVpcEndPointService返回参数结构体
      class CreateVpcEndPointServiceResponse < TencentCloud::Common::AbstractModel
        # @param EndPointService: 终端节点服务对象详细信息。
        # @type EndPointService: :class:`Tencentcloud::Vpc.v20170312.models.EndPointService`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndPointService, :RequestId
        
        def initialize(endpointservice=nil, requestid=nil)
          @EndPointService = endpointservice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EndPointService'].nil?
            @EndPointService = EndPointService.new
            @EndPointService.deserialize(params['EndPointService'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpcEndPointServiceWhiteList请求参数结构体
      class CreateVpcEndPointServiceWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param UserUin: UIN。
        # @type UserUin: String
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String
        # @param Description: 白名单描述。
        # @type Description: String

        attr_accessor :UserUin, :EndPointServiceId, :Description
        
        def initialize(useruin=nil, endpointserviceid=nil, description=nil)
          @UserUin = useruin
          @EndPointServiceId = endpointserviceid
          @Description = description
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @EndPointServiceId = params['EndPointServiceId']
          @Description = params['Description']
        end
      end

      # CreateVpcEndPointServiceWhiteList返回参数结构体
      class CreateVpcEndPointServiceWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # CreateVpc请求参数结构体
      class CreateVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcName: vpc名称，最大长度不能超过60个字节。
        # @type VpcName: String
        # @param CidrBlock: vpc的cidr，仅能在10.0.0.0/12，172.16.0.0/12，192.168.0.0/16这三个内网网段内。
        # @type CidrBlock: String
        # @param EnableMulticast: 是否开启组播。true: 开启, false: 不开启。
        # @type EnableMulticast: String
        # @param DnsServers: DNS地址，最多支持4个。
        # @type DnsServers: Array
        # @param DomainName: DHCP使用的域名。
        # @type DomainName: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]。
        # @type Tags: Array

        attr_accessor :VpcName, :CidrBlock, :EnableMulticast, :DnsServers, :DomainName, :Tags
        
        def initialize(vpcname=nil, cidrblock=nil, enablemulticast=nil, dnsservers=nil, domainname=nil, tags=nil)
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @EnableMulticast = enablemulticast
          @DnsServers = dnsservers
          @DomainName = domainname
          @Tags = tags
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @EnableMulticast = params['EnableMulticast']
          @DnsServers = params['DnsServers']
          @DomainName = params['DomainName']
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

      # CreateVpc返回参数结构体
      class CreateVpcResponse < TencentCloud::Common::AbstractModel
        # @param Vpc: Vpc对象。
        # @type Vpc: :class:`Tencentcloud::Vpc.v20170312.models.Vpc`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Vpc, :RequestId
        
        def initialize(vpc=nil, requestid=nil)
          @Vpc = vpc
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Vpc'].nil?
            @Vpc = Vpc.new
            @Vpc.deserialize(params['Vpc'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpnConnection请求参数结构体
      class CreateVpnConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param CustomerGatewayId: 对端网关ID，例如：cgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        # @type CustomerGatewayId: String
        # @param VpnConnectionName: 通道名称，可任意命名，但不得超过60个字符。
        # @type VpnConnectionName: String
        # @param PreShareKey: 预共享密钥。
        # @type PreShareKey: String
        # @param VpcId: VPC实例ID。可通过[DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)接口返回值中的VpcId获取。
        # CCN VPN 形的通道 可以不传VPCID
        # @type VpcId: String
        # @param SecurityPolicyDatabases: SPD策略组，例如：{"10.0.0.5/24":["172.123.10.5/16"]}，10.0.0.5/24是vpc内网段172.123.10.5/16是IDC网段。用户指定VPC内哪些网段可以和您IDC中哪些网段通信。
        # @type SecurityPolicyDatabases: Array
        # @param IKEOptionsSpecification: IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议
        # @type IKEOptionsSpecification: :class:`Tencentcloud::Vpc.v20170312.models.IKEOptionsSpecification`
        # @param IPSECOptionsSpecification: IPSec配置，腾讯云提供IPSec安全会话设置
        # @type IPSECOptionsSpecification: :class:`Tencentcloud::Vpc.v20170312.models.IPSECOptionsSpecification`
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param EnableHealthCheck: 是否支持隧道内健康检查
        # @type EnableHealthCheck: Boolean
        # @param HealthCheckLocalIp: 健康检查本端地址
        # @type HealthCheckLocalIp: String
        # @param HealthCheckRemoteIp: 健康检查对端地址
        # @type HealthCheckRemoteIp: String
        # @param RouteType: 通道类型, 例如:["STATIC", "StaticRoute", "Policy"]
        # @type RouteType: String
        # @param NegotiationType: 协商类型，默认为active（主动协商）。可选值：active（主动协商），passive（被动协商），flowTrigger（流量协商）
        # @type NegotiationType: String
        # @param DpdEnable: DPD探测开关。默认为0，表示关闭DPD探测。可选值：0（关闭），1（开启）
        # @type DpdEnable: Integer
        # @param DpdTimeout: DPD超时时间。即探测确认对端不存在需要的时间。dpdEnable为1（开启）时有效。默认30，单位为秒
        # @type DpdTimeout: String
        # @param DpdAction: DPD超时后的动作。默认为clear。dpdEnable为1（开启）时有效。可取值为clear（断开）和restart（重试）
        # @type DpdAction: String

        attr_accessor :VpnGatewayId, :CustomerGatewayId, :VpnConnectionName, :PreShareKey, :VpcId, :SecurityPolicyDatabases, :IKEOptionsSpecification, :IPSECOptionsSpecification, :Tags, :EnableHealthCheck, :HealthCheckLocalIp, :HealthCheckRemoteIp, :RouteType, :NegotiationType, :DpdEnable, :DpdTimeout, :DpdAction
        
        def initialize(vpngatewayid=nil, customergatewayid=nil, vpnconnectionname=nil, presharekey=nil, vpcid=nil, securitypolicydatabases=nil, ikeoptionsspecification=nil, ipsecoptionsspecification=nil, tags=nil, enablehealthcheck=nil, healthchecklocalip=nil, healthcheckremoteip=nil, routetype=nil, negotiationtype=nil, dpdenable=nil, dpdtimeout=nil, dpdaction=nil)
          @VpnGatewayId = vpngatewayid
          @CustomerGatewayId = customergatewayid
          @VpnConnectionName = vpnconnectionname
          @PreShareKey = presharekey
          @VpcId = vpcid
          @SecurityPolicyDatabases = securitypolicydatabases
          @IKEOptionsSpecification = ikeoptionsspecification
          @IPSECOptionsSpecification = ipsecoptionsspecification
          @Tags = tags
          @EnableHealthCheck = enablehealthcheck
          @HealthCheckLocalIp = healthchecklocalip
          @HealthCheckRemoteIp = healthcheckremoteip
          @RouteType = routetype
          @NegotiationType = negotiationtype
          @DpdEnable = dpdenable
          @DpdTimeout = dpdtimeout
          @DpdAction = dpdaction
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @CustomerGatewayId = params['CustomerGatewayId']
          @VpnConnectionName = params['VpnConnectionName']
          @PreShareKey = params['PreShareKey']
          @VpcId = params['VpcId']
          unless params['SecurityPolicyDatabases'].nil?
            @SecurityPolicyDatabases = []
            params['SecurityPolicyDatabases'].each do |i|
              securitypolicydatabase_tmp = SecurityPolicyDatabase.new
              securitypolicydatabase_tmp.deserialize(i)
              @SecurityPolicyDatabases << securitypolicydatabase_tmp
            end
          end
          unless params['IKEOptionsSpecification'].nil?
            @IKEOptionsSpecification = IKEOptionsSpecification.new
            @IKEOptionsSpecification.deserialize(params['IKEOptionsSpecification'])
          end
          unless params['IPSECOptionsSpecification'].nil?
            @IPSECOptionsSpecification = IPSECOptionsSpecification.new
            @IPSECOptionsSpecification.deserialize(params['IPSECOptionsSpecification'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @EnableHealthCheck = params['EnableHealthCheck']
          @HealthCheckLocalIp = params['HealthCheckLocalIp']
          @HealthCheckRemoteIp = params['HealthCheckRemoteIp']
          @RouteType = params['RouteType']
          @NegotiationType = params['NegotiationType']
          @DpdEnable = params['DpdEnable']
          @DpdTimeout = params['DpdTimeout']
          @DpdAction = params['DpdAction']
        end
      end

      # CreateVpnConnection返回参数结构体
      class CreateVpnConnectionResponse < TencentCloud::Common::AbstractModel
        # @param VpnConnection: 通道实例对象。
        # @type VpnConnection: :class:`Tencentcloud::Vpc.v20170312.models.VpnConnection`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpnConnection, :RequestId
        
        def initialize(vpnconnection=nil, requestid=nil)
          @VpnConnection = vpnconnection
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpnConnection'].nil?
            @VpnConnection = VpnConnection.new
            @VpnConnection.deserialize(params['VpnConnection'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpnGateway请求参数结构体
      class CreateVpnGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过[DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param VpnGatewayName: VPN网关名称，最大长度不能超过60个字节。
        # @type VpnGatewayName: String
        # @param InternetMaxBandwidthOut: 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param InstanceChargeType: VPN网关计费模式，PREPAID：表示预付费，即包年包月，POSTPAID_BY_HOUR：表示后付费，即按量计费。默认：POSTPAID_BY_HOUR，如果指定预付费模式，参数InstanceChargePrepaid必填。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.InstanceChargePrepaid`
        # @param Zone: 可用区，如：ap-guangzhou-2。
        # @type Zone: String
        # @param Type: VPN网关类型。值“CCN”云联网类型VPN网关，值SSL为SSL-VPN
        # @type Type: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param CdcId: CDC实例ID
        # @type CdcId: String
        # @param MaxConnection: SSL-VPN 最大CLIENT 连接数。可选 [5, 10, 20, 50, 100]。仅SSL-VPN 需要选这个参数。
        # @type MaxConnection: Integer

        attr_accessor :VpcId, :VpnGatewayName, :InternetMaxBandwidthOut, :InstanceChargeType, :InstanceChargePrepaid, :Zone, :Type, :Tags, :CdcId, :MaxConnection
        
        def initialize(vpcid=nil, vpngatewayname=nil, internetmaxbandwidthout=nil, instancechargetype=nil, instancechargeprepaid=nil, zone=nil, type=nil, tags=nil, cdcid=nil, maxconnection=nil)
          @VpcId = vpcid
          @VpnGatewayName = vpngatewayname
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @Zone = zone
          @Type = type
          @Tags = tags
          @CdcId = cdcid
          @MaxConnection = maxconnection
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpnGatewayName = params['VpnGatewayName']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @Zone = params['Zone']
          @Type = params['Type']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CdcId = params['CdcId']
          @MaxConnection = params['MaxConnection']
        end
      end

      # CreateVpnGateway返回参数结构体
      class CreateVpnGatewayResponse < TencentCloud::Common::AbstractModel
        # @param VpnGateway: VPN网关对象
        # @type VpnGateway: :class:`Tencentcloud::Vpc.v20170312.models.VpnGateway`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpnGateway, :RequestId
        
        def initialize(vpngateway=nil, requestid=nil)
          @VpnGateway = vpngateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpnGateway'].nil?
            @VpnGateway = VpnGateway.new
            @VpnGateway.deserialize(params['VpnGateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpnGatewayRoutes请求参数结构体
      class CreateVpnGatewayRoutesRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关的ID
        # @type VpnGatewayId: String
        # @param Routes: VPN网关目的路由列表
        # @type Routes: Array

        attr_accessor :VpnGatewayId, :Routes
        
        def initialize(vpngatewayid=nil, routes=nil)
          @VpnGatewayId = vpngatewayid
          @Routes = routes
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              vpngatewayroute_tmp = VpnGatewayRoute.new
              vpngatewayroute_tmp.deserialize(i)
              @Routes << vpngatewayroute_tmp
            end
          end
        end
      end

      # CreateVpnGatewayRoutes返回参数结构体
      class CreateVpnGatewayRoutesResponse < TencentCloud::Common::AbstractModel
        # @param Routes: VPN网关目的路由
        # @type Routes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Routes, :RequestId
        
        def initialize(routes=nil, requestid=nil)
          @Routes = routes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              vpngatewayroute_tmp = VpnGatewayRoute.new
              vpngatewayroute_tmp.deserialize(i)
              @Routes << vpngatewayroute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpnGatewaySslClient请求参数结构体
      class CreateVpnGatewaySslClientRequest < TencentCloud::Common::AbstractModel
        # @param SslVpnServerId: SSL-VPN-SERVER 实例ID。
        # @type SslVpnServerId: String
        # @param SslVpnClientName: name
        # @type SslVpnClientName: String

        attr_accessor :SslVpnServerId, :SslVpnClientName
        
        def initialize(sslvpnserverid=nil, sslvpnclientname=nil)
          @SslVpnServerId = sslvpnserverid
          @SslVpnClientName = sslvpnclientname
        end

        def deserialize(params)
          @SslVpnServerId = params['SslVpnServerId']
          @SslVpnClientName = params['SslVpnClientName']
        end
      end

      # CreateVpnGatewaySslClient返回参数结构体
      class CreateVpnGatewaySslClientResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: Integer
        # @param SslVpnClientId: SSL-VPN client 唯一ID
        # @type SslVpnClientId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :SslVpnClientId, :RequestId
        
        def initialize(taskid=nil, sslvpnclientid=nil, requestid=nil)
          @TaskId = taskid
          @SslVpnClientId = sslvpnclientid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SslVpnClientId = params['SslVpnClientId']
          @RequestId = params['RequestId']
        end
      end

      # CreateVpnGatewaySslServer请求参数结构体
      class CreateVpnGatewaySslServerRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN实例ID
        # @type VpnGatewayId: String
        # @param SslVpnServerName: SSL_VPN_SERVER 实例名
        # @type SslVpnServerName: String
        # @param LocalAddress: 本端地址网段
        # @type LocalAddress: Array
        # @param RemoteAddress: 客户端地址网段
        # @type RemoteAddress: String
        # @param SslVpnProtocol: SSL VPN服务端监听协议。当前仅支持 UDP。默认UDP
        # @type SslVpnProtocol: String
        # @param SslVpnPort: SSL VPN服务端监听协议端口。默认1194。
        # @type SslVpnPort: Integer
        # @param IntegrityAlgorithm: 认证算法。可选 'SHA1', 'MD5', 'NONE'。默认NONE
        # @type IntegrityAlgorithm: String
        # @param EncryptAlgorithm: 加密算法。可选 'AES-128-CBC', 'AES-192-CBC', 'AES-256-CBC', 'NONE'。默认NONE
        # @type EncryptAlgorithm: String
        # @param Compress: 是否支持压缩。当前仅支持不支持压缩。默认False
        # @type Compress: Boolean
        # @param SsoEnabled: 是否开启SSO认证
        # @type SsoEnabled: Boolean
        # @param AccessPolicyEnabled: 是否开启策略访问控制
        # @type AccessPolicyEnabled: Boolean
        # @param SamlData: SAML-DATA
        # @type SamlData: String

        attr_accessor :VpnGatewayId, :SslVpnServerName, :LocalAddress, :RemoteAddress, :SslVpnProtocol, :SslVpnPort, :IntegrityAlgorithm, :EncryptAlgorithm, :Compress, :SsoEnabled, :AccessPolicyEnabled, :SamlData
        
        def initialize(vpngatewayid=nil, sslvpnservername=nil, localaddress=nil, remoteaddress=nil, sslvpnprotocol=nil, sslvpnport=nil, integrityalgorithm=nil, encryptalgorithm=nil, compress=nil, ssoenabled=nil, accesspolicyenabled=nil, samldata=nil)
          @VpnGatewayId = vpngatewayid
          @SslVpnServerName = sslvpnservername
          @LocalAddress = localaddress
          @RemoteAddress = remoteaddress
          @SslVpnProtocol = sslvpnprotocol
          @SslVpnPort = sslvpnport
          @IntegrityAlgorithm = integrityalgorithm
          @EncryptAlgorithm = encryptalgorithm
          @Compress = compress
          @SsoEnabled = ssoenabled
          @AccessPolicyEnabled = accesspolicyenabled
          @SamlData = samldata
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @SslVpnServerName = params['SslVpnServerName']
          @LocalAddress = params['LocalAddress']
          @RemoteAddress = params['RemoteAddress']
          @SslVpnProtocol = params['SslVpnProtocol']
          @SslVpnPort = params['SslVpnPort']
          @IntegrityAlgorithm = params['IntegrityAlgorithm']
          @EncryptAlgorithm = params['EncryptAlgorithm']
          @Compress = params['Compress']
          @SsoEnabled = params['SsoEnabled']
          @AccessPolicyEnabled = params['AccessPolicyEnabled']
          @SamlData = params['SamlData']
        end
      end

      # CreateVpnGatewaySslServer返回参数结构体
      class CreateVpnGatewaySslServerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 创建SSL-VPN server 异步任务ID
        # @type TaskId: Integer
        # @param SslVpnServerId: SSL-VPN server 唯一ID
        # @type SslVpnServerId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :SslVpnServerId, :RequestId
        
        def initialize(taskid=nil, sslvpnserverid=nil, requestid=nil)
          @TaskId = taskid
          @SslVpnServerId = sslvpnserverid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SslVpnServerId = params['SslVpnServerId']
          @RequestId = params['RequestId']
        end
      end

      # 合规化审批单
      class CrossBorderCompliance < TencentCloud::Common::AbstractModel
        # @param ServiceProvider: 服务商，可选值：`UNICOM`。
        # @type ServiceProvider: String
        # @param ComplianceId: 合规化审批单`ID`。
        # @type ComplianceId: Integer
        # @param Company: 公司全称。
        # @type Company: String
        # @param UniformSocialCreditCode: 统一社会信用代码。
        # @type UniformSocialCreditCode: String
        # @param LegalPerson: 法定代表人。
        # @type LegalPerson: String
        # @param IssuingAuthority: 发证机关。
        # @type IssuingAuthority: String
        # @param BusinessLicense: 营业执照。
        # @type BusinessLicense: String
        # @param BusinessAddress: 营业执照住所。
        # @type BusinessAddress: String
        # @param PostCode: 邮编。
        # @type PostCode: Integer
        # @param Manager: 经办人。
        # @type Manager: String
        # @param ManagerId: 经办人身份证号。
        # @type ManagerId: String
        # @param ManagerIdCard: 经办人身份证。
        # @type ManagerIdCard: String
        # @param ManagerAddress: 经办人身份证地址。
        # @type ManagerAddress: String
        # @param ManagerTelephone: 经办人联系电话。
        # @type ManagerTelephone: String
        # @param Email: 电子邮箱。
        # @type Email: String
        # @param ServiceHandlingForm: 服务受理单。
        # @type ServiceHandlingForm: String
        # @param AuthorizationLetter: 授权函。
        # @type AuthorizationLetter: String
        # @param SafetyCommitment: 信息安全承诺书。
        # @type SafetyCommitment: String
        # @param ServiceStartDate: 服务开始时间。
        # @type ServiceStartDate: String
        # @param ServiceEndDate: 服务截止时间。
        # @type ServiceEndDate: String
        # @param State: 状态。待审批：`PENDING`，已通过：`APPROVED`，已拒绝：`DENY`。
        # @type State: String
        # @param CreatedTime: 审批单创建时间。
        # @type CreatedTime: String

        attr_accessor :ServiceProvider, :ComplianceId, :Company, :UniformSocialCreditCode, :LegalPerson, :IssuingAuthority, :BusinessLicense, :BusinessAddress, :PostCode, :Manager, :ManagerId, :ManagerIdCard, :ManagerAddress, :ManagerTelephone, :Email, :ServiceHandlingForm, :AuthorizationLetter, :SafetyCommitment, :ServiceStartDate, :ServiceEndDate, :State, :CreatedTime
        
        def initialize(serviceprovider=nil, complianceid=nil, company=nil, uniformsocialcreditcode=nil, legalperson=nil, issuingauthority=nil, businesslicense=nil, businessaddress=nil, postcode=nil, manager=nil, managerid=nil, manageridcard=nil, manageraddress=nil, managertelephone=nil, email=nil, servicehandlingform=nil, authorizationletter=nil, safetycommitment=nil, servicestartdate=nil, serviceenddate=nil, state=nil, createdtime=nil)
          @ServiceProvider = serviceprovider
          @ComplianceId = complianceid
          @Company = company
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalPerson = legalperson
          @IssuingAuthority = issuingauthority
          @BusinessLicense = businesslicense
          @BusinessAddress = businessaddress
          @PostCode = postcode
          @Manager = manager
          @ManagerId = managerid
          @ManagerIdCard = manageridcard
          @ManagerAddress = manageraddress
          @ManagerTelephone = managertelephone
          @Email = email
          @ServiceHandlingForm = servicehandlingform
          @AuthorizationLetter = authorizationletter
          @SafetyCommitment = safetycommitment
          @ServiceStartDate = servicestartdate
          @ServiceEndDate = serviceenddate
          @State = state
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @ServiceProvider = params['ServiceProvider']
          @ComplianceId = params['ComplianceId']
          @Company = params['Company']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalPerson = params['LegalPerson']
          @IssuingAuthority = params['IssuingAuthority']
          @BusinessLicense = params['BusinessLicense']
          @BusinessAddress = params['BusinessAddress']
          @PostCode = params['PostCode']
          @Manager = params['Manager']
          @ManagerId = params['ManagerId']
          @ManagerIdCard = params['ManagerIdCard']
          @ManagerAddress = params['ManagerAddress']
          @ManagerTelephone = params['ManagerTelephone']
          @Email = params['Email']
          @ServiceHandlingForm = params['ServiceHandlingForm']
          @AuthorizationLetter = params['AuthorizationLetter']
          @SafetyCommitment = params['SafetyCommitment']
          @ServiceStartDate = params['ServiceStartDate']
          @ServiceEndDate = params['ServiceEndDate']
          @State = params['State']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 跨境带宽监控数据
      class CrossBorderFlowMonitorData < TencentCloud::Common::AbstractModel
        # @param InBandwidth: 入带宽
        # @type InBandwidth: Array
        # @param OutBandwidth: 出带宽
        # @type OutBandwidth: Array
        # @param InPkg: 入包
        # @type InPkg: Array
        # @param OutPkg: 出包
        # @type OutPkg: Array

        attr_accessor :InBandwidth, :OutBandwidth, :InPkg, :OutPkg
        
        def initialize(inbandwidth=nil, outbandwidth=nil, inpkg=nil, outpkg=nil)
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InPkg = inpkg
          @OutPkg = outpkg
        end

        def deserialize(params)
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InPkg = params['InPkg']
          @OutPkg = params['OutPkg']
        end
      end

      # 对端网关
      class CustomerGateway < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayId: 用户网关唯一ID
        # @type CustomerGatewayId: String
        # @param CustomerGatewayName: 网关名称
        # @type CustomerGatewayName: String
        # @param IpAddress: 公网地址
        # @type IpAddress: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String

        attr_accessor :CustomerGatewayId, :CustomerGatewayName, :IpAddress, :CreatedTime
        
        def initialize(customergatewayid=nil, customergatewayname=nil, ipaddress=nil, createdtime=nil)
          @CustomerGatewayId = customergatewayid
          @CustomerGatewayName = customergatewayname
          @IpAddress = ipaddress
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @CustomerGatewayId = params['CustomerGatewayId']
          @CustomerGatewayName = params['CustomerGatewayName']
          @IpAddress = params['IpAddress']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 对端网关厂商信息对象。
      class CustomerGatewayVendor < TencentCloud::Common::AbstractModel
        # @param Platform: 平台。
        # @type Platform: String
        # @param SoftwareVersion: 软件版本。
        # @type SoftwareVersion: String
        # @param VendorName: 供应商名称。
        # @type VendorName: String

        attr_accessor :Platform, :SoftwareVersion, :VendorName
        
        def initialize(platform=nil, softwareversion=nil, vendorname=nil)
          @Platform = platform
          @SoftwareVersion = softwareversion
          @VendorName = vendorname
        end

        def deserialize(params)
          @Platform = params['Platform']
          @SoftwareVersion = params['SoftwareVersion']
          @VendorName = params['VendorName']
        end
      end

      # 云主机实例信息。
      class CvmInstance < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID。
        # @type SubnetId: String
        # @param InstanceId: 云主机实例ID
        # @type InstanceId: String
        # @param InstanceName: 云主机名称。
        # @type InstanceName: String
        # @param InstanceState: 云主机状态。
        # @type InstanceState: String
        # @param CPU: 实例的CPU核数，单位：核。
        # @type CPU: Integer
        # @param Memory: 实例内存容量，单位：GB。
        # @type Memory: Integer
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param EniLimit: 实例弹性网卡配额（包含主网卡）。
        # @type EniLimit: Integer
        # @param EniIpLimit: 实例弹性网卡内网IP配额（包含主网卡）。
        # @type EniIpLimit: Integer
        # @param InstanceEniCount: 实例已绑定弹性网卡的个数（包含主网卡）。
        # @type InstanceEniCount: Integer

        attr_accessor :VpcId, :SubnetId, :InstanceId, :InstanceName, :InstanceState, :CPU, :Memory, :CreatedTime, :InstanceType, :EniLimit, :EniIpLimit, :InstanceEniCount
        
        def initialize(vpcid=nil, subnetid=nil, instanceid=nil, instancename=nil, instancestate=nil, cpu=nil, memory=nil, createdtime=nil, instancetype=nil, enilimit=nil, eniiplimit=nil, instanceenicount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceState = instancestate
          @CPU = cpu
          @Memory = memory
          @CreatedTime = createdtime
          @InstanceType = instancetype
          @EniLimit = enilimit
          @EniIpLimit = eniiplimit
          @InstanceEniCount = instanceenicount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceState = params['InstanceState']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @CreatedTime = params['CreatedTime']
          @InstanceType = params['InstanceType']
          @EniLimit = params['EniLimit']
          @EniIpLimit = params['EniIpLimit']
          @InstanceEniCount = params['InstanceEniCount']
        end
      end

      # 默认VPC和子网
      class DefaultVpcSubnet < TencentCloud::Common::AbstractModel
        # @param VpcId: 默认VpcId
        # @type VpcId: String
        # @param SubnetId: 默认SubnetId
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId
        
        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DeleteAddressTemplateGroup请求参数结构体
      class DeleteAddressTemplateGroupRequest < TencentCloud::Common::AbstractModel
        # @param AddressTemplateGroupId: IP地址模板集合实例ID，例如：ipmg-90cex8mq。
        # @type AddressTemplateGroupId: String

        attr_accessor :AddressTemplateGroupId
        
        def initialize(addresstemplategroupid=nil)
          @AddressTemplateGroupId = addresstemplategroupid
        end

        def deserialize(params)
          @AddressTemplateGroupId = params['AddressTemplateGroupId']
        end
      end

      # DeleteAddressTemplateGroup返回参数结构体
      class DeleteAddressTemplateGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAddressTemplate请求参数结构体
      class DeleteAddressTemplateRequest < TencentCloud::Common::AbstractModel
        # @param AddressTemplateId: IP地址模板实例ID，例如：ipm-09o5m8kc。
        # @type AddressTemplateId: String

        attr_accessor :AddressTemplateId
        
        def initialize(addresstemplateid=nil)
          @AddressTemplateId = addresstemplateid
        end

        def deserialize(params)
          @AddressTemplateId = params['AddressTemplateId']
        end
      end

      # DeleteAddressTemplate返回参数结构体
      class DeleteAddressTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAssistantCidr请求参数结构体
      class DeleteAssistantCidrRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        # @type VpcId: String
        # @param CidrBlocks: CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]
        # @type CidrBlocks: Array

        attr_accessor :VpcId, :CidrBlocks
        
        def initialize(vpcid=nil, cidrblocks=nil)
          @VpcId = vpcid
          @CidrBlocks = cidrblocks
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @CidrBlocks = params['CidrBlocks']
        end
      end

      # DeleteAssistantCidr返回参数结构体
      class DeleteAssistantCidrResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBandwidthPackage请求参数结构体
      class DeleteBandwidthPackageRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 待删除带宽包唯一ID
        # @type BandwidthPackageId: String

        attr_accessor :BandwidthPackageId
        
        def initialize(bandwidthpackageid=nil)
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # DeleteBandwidthPackage返回参数结构体
      class DeleteBandwidthPackageResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCcn请求参数结构体
      class DeleteCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String

        attr_accessor :CcnId
        
        def initialize(ccnid=nil)
          @CcnId = ccnid
        end

        def deserialize(params)
          @CcnId = params['CcnId']
        end
      end

      # DeleteCcn返回参数结构体
      class DeleteCcnResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCustomerGateway请求参数结构体
      class DeleteCustomerGatewayRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayId: 对端网关ID，例如：cgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        # @type CustomerGatewayId: String

        attr_accessor :CustomerGatewayId
        
        def initialize(customergatewayid=nil)
          @CustomerGatewayId = customergatewayid
        end

        def deserialize(params)
          @CustomerGatewayId = params['CustomerGatewayId']
        end
      end

      # DeleteCustomerGateway返回参数结构体
      class DeleteCustomerGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDhcpIp请求参数结构体
      class DeleteDhcpIpRequest < TencentCloud::Common::AbstractModel
        # @param DhcpIpId: `DhcpIp`的`ID`，是`DhcpIp`的唯一标识。
        # @type DhcpIpId: String

        attr_accessor :DhcpIpId
        
        def initialize(dhcpipid=nil)
          @DhcpIpId = dhcpipid
        end

        def deserialize(params)
          @DhcpIpId = params['DhcpIpId']
        end
      end

      # DeleteDhcpIp返回参数结构体
      class DeleteDhcpIpResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDirectConnectGatewayCcnRoutes请求参数结构体
      class DeleteDirectConnectGatewayCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关ID，形如：dcg-prpqlmg1
        # @type DirectConnectGatewayId: String
        # @param RouteIds: 路由ID。形如：ccnr-f49l6u0z。
        # @type RouteIds: Array

        attr_accessor :DirectConnectGatewayId, :RouteIds
        
        def initialize(directconnectgatewayid=nil, routeids=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @RouteIds = routeids
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @RouteIds = params['RouteIds']
        end
      end

      # DeleteDirectConnectGatewayCcnRoutes返回参数结构体
      class DeleteDirectConnectGatewayCcnRoutesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDirectConnectGateway请求参数结构体
      class DeleteDirectConnectGatewayRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        # @type DirectConnectGatewayId: String

        attr_accessor :DirectConnectGatewayId
        
        def initialize(directconnectgatewayid=nil)
          @DirectConnectGatewayId = directconnectgatewayid
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
        end
      end

      # DeleteDirectConnectGateway返回参数结构体
      class DeleteDirectConnectGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFlowLog请求参数结构体
      class DeleteFlowLogRequest < TencentCloud::Common::AbstractModel
        # @param FlowLogId: 流日志唯一ID
        # @type FlowLogId: String
        # @param VpcId: 私用网络ID或者统一ID，建议使用统一ID，删除云联网流日志时，可不填，其他流日志类型必填。
        # @type VpcId: String

        attr_accessor :FlowLogId, :VpcId
        
        def initialize(flowlogid=nil, vpcid=nil)
          @FlowLogId = flowlogid
          @VpcId = vpcid
        end

        def deserialize(params)
          @FlowLogId = params['FlowLogId']
          @VpcId = params['VpcId']
        end
      end

      # DeleteFlowLog返回参数结构体
      class DeleteFlowLogResponse < TencentCloud::Common::AbstractModel
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

      # DeleteHaVip请求参数结构体
      class DeleteHaVipRequest < TencentCloud::Common::AbstractModel
        # @param HaVipId: `HAVIP`唯一`ID`，形如：`havip-9o233uri`。
        # @type HaVipId: String

        attr_accessor :HaVipId
        
        def initialize(havipid=nil)
          @HaVipId = havipid
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
        end
      end

      # DeleteHaVip返回参数结构体
      class DeleteHaVipResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIp6Translators请求参数结构体
      class DeleteIp6TranslatorsRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorIds: 待释放的IPV6转换实例的唯一ID，形如‘ip6-xxxxxxxx’
        # @type Ip6TranslatorIds: Array

        attr_accessor :Ip6TranslatorIds
        
        def initialize(ip6translatorids=nil)
          @Ip6TranslatorIds = ip6translatorids
        end

        def deserialize(params)
          @Ip6TranslatorIds = params['Ip6TranslatorIds']
        end
      end

      # DeleteIp6Translators返回参数结构体
      class DeleteIp6TranslatorsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLocalGateway请求参数结构体
      class DeleteLocalGatewayRequest < TencentCloud::Common::AbstractModel
        # @param LocalGatewayId: 本地网关实例ID
        # @type LocalGatewayId: String
        # @param CdcId: CDC实例ID
        # @type CdcId: String
        # @param VpcId: VPC实例ID
        # @type VpcId: String

        attr_accessor :LocalGatewayId, :CdcId, :VpcId
        
        def initialize(localgatewayid=nil, cdcid=nil, vpcid=nil)
          @LocalGatewayId = localgatewayid
          @CdcId = cdcid
          @VpcId = vpcid
        end

        def deserialize(params)
          @LocalGatewayId = params['LocalGatewayId']
          @CdcId = params['CdcId']
          @VpcId = params['VpcId']
        end
      end

      # DeleteLocalGateway返回参数结构体
      class DeleteLocalGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNatGatewayDestinationIpPortTranslationNatRule请求参数结构体
      class DeleteNatGatewayDestinationIpPortTranslationNatRuleRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param DestinationIpPortTranslationNatRules: NAT网关的端口转换规则。
        # @type DestinationIpPortTranslationNatRules: Array

        attr_accessor :NatGatewayId, :DestinationIpPortTranslationNatRules
        
        def initialize(natgatewayid=nil, destinationipporttranslationnatrules=nil)
          @NatGatewayId = natgatewayid
          @DestinationIpPortTranslationNatRules = destinationipporttranslationnatrules
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          unless params['DestinationIpPortTranslationNatRules'].nil?
            @DestinationIpPortTranslationNatRules = []
            params['DestinationIpPortTranslationNatRules'].each do |i|
              destinationipporttranslationnatrule_tmp = DestinationIpPortTranslationNatRule.new
              destinationipporttranslationnatrule_tmp.deserialize(i)
              @DestinationIpPortTranslationNatRules << destinationipporttranslationnatrule_tmp
            end
          end
        end
      end

      # DeleteNatGatewayDestinationIpPortTranslationNatRule返回参数结构体
      class DeleteNatGatewayDestinationIpPortTranslationNatRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNatGateway请求参数结构体
      class DeleteNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String

        attr_accessor :NatGatewayId
        
        def initialize(natgatewayid=nil)
          @NatGatewayId = natgatewayid
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
        end
      end

      # DeleteNatGateway返回参数结构体
      class DeleteNatGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNatGatewaySourceIpTranslationNatRule请求参数结构体
      class DeleteNatGatewaySourceIpTranslationNatRuleRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param NatGatewaySnatIds: NAT网关的SNAT ID列表，形如：`snat-df43254`。
        # @type NatGatewaySnatIds: Array

        attr_accessor :NatGatewayId, :NatGatewaySnatIds
        
        def initialize(natgatewayid=nil, natgatewaysnatids=nil)
          @NatGatewayId = natgatewayid
          @NatGatewaySnatIds = natgatewaysnatids
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @NatGatewaySnatIds = params['NatGatewaySnatIds']
        end
      end

      # DeleteNatGatewaySourceIpTranslationNatRule返回参数结构体
      class DeleteNatGatewaySourceIpTranslationNatRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNetDetect请求参数结构体
      class DeleteNetDetectRequest < TencentCloud::Common::AbstractModel
        # @param NetDetectId: 网络探测实例`ID`。形如：`netd-12345678`
        # @type NetDetectId: String

        attr_accessor :NetDetectId
        
        def initialize(netdetectid=nil)
          @NetDetectId = netdetectid
        end

        def deserialize(params)
          @NetDetectId = params['NetDetectId']
        end
      end

      # DeleteNetDetect返回参数结构体
      class DeleteNetDetectResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNetworkAclQuintupleEntries请求参数结构体
      class DeleteNetworkAclQuintupleEntriesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param NetworkAclQuintupleSet: 网络五元组ACL规则集。
        # @type NetworkAclQuintupleSet: :class:`Tencentcloud::Vpc.v20170312.models.NetworkAclQuintupleEntries`

        attr_accessor :NetworkAclId, :NetworkAclQuintupleSet
        
        def initialize(networkaclid=nil, networkaclquintupleset=nil)
          @NetworkAclId = networkaclid
          @NetworkAclQuintupleSet = networkaclquintupleset
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          unless params['NetworkAclQuintupleSet'].nil?
            @NetworkAclQuintupleSet = NetworkAclQuintupleEntries.new
            @NetworkAclQuintupleSet.deserialize(params['NetworkAclQuintupleSet'])
          end
        end
      end

      # DeleteNetworkAclQuintupleEntries返回参数结构体
      class DeleteNetworkAclQuintupleEntriesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNetworkAcl请求参数结构体
      class DeleteNetworkAclRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String

        attr_accessor :NetworkAclId
        
        def initialize(networkaclid=nil)
          @NetworkAclId = networkaclid
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
        end
      end

      # DeleteNetworkAcl返回参数结构体
      class DeleteNetworkAclResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNetworkInterface请求参数结构体
      class DeleteNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String

        attr_accessor :NetworkInterfaceId
        
        def initialize(networkinterfaceid=nil)
          @NetworkInterfaceId = networkinterfaceid
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
        end
      end

      # DeleteNetworkInterface返回参数结构体
      class DeleteNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRouteTable请求参数结构体
      class DeleteRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String

        attr_accessor :RouteTableId
        
        def initialize(routetableid=nil)
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
        end
      end

      # DeleteRouteTable返回参数结构体
      class DeleteRouteTableResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRoutes请求参数结构体
      class DeleteRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID。
        # @type RouteTableId: String
        # @param Routes: 路由策略对象，删除路由策略时，仅需使用Route的RouteId字段。
        # @type Routes: Array

        attr_accessor :RouteTableId, :Routes
        
        def initialize(routetableid=nil, routes=nil)
          @RouteTableId = routetableid
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # DeleteRoutes返回参数结构体
      class DeleteRoutesResponse < TencentCloud::Common::AbstractModel
        # @param RouteSet: 已删除的路由策略详情。
        # @type RouteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteSet, :RequestId
        
        def initialize(routeset=nil, requestid=nil)
          @RouteSet = routeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @RouteSet << route_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecurityGroupPolicies请求参数结构体
      class DeleteSecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。一个请求中只能删除单个方向的一条或多条规则。支持指定索引（PolicyIndex） 匹配删除和安全组规则匹配删除两种方式，一个请求中只能使用一种匹配方式。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet
        
        def initialize(securitygroupid=nil, securitygrouppolicyset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
        end
      end

      # DeleteSecurityGroupPolicies返回参数结构体
      class DeleteSecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityGroup请求参数结构体
      class DeleteSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String

        attr_accessor :SecurityGroupId
        
        def initialize(securitygroupid=nil)
          @SecurityGroupId = securitygroupid
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
        end
      end

      # DeleteSecurityGroup返回参数结构体
      class DeleteSecurityGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteServiceTemplateGroup请求参数结构体
      class DeleteServiceTemplateGroupRequest < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateGroupId: 协议端口模板集合实例ID，例如：ppmg-n17uxvve。
        # @type ServiceTemplateGroupId: String

        attr_accessor :ServiceTemplateGroupId
        
        def initialize(servicetemplategroupid=nil)
          @ServiceTemplateGroupId = servicetemplategroupid
        end

        def deserialize(params)
          @ServiceTemplateGroupId = params['ServiceTemplateGroupId']
        end
      end

      # DeleteServiceTemplateGroup返回参数结构体
      class DeleteServiceTemplateGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteServiceTemplate请求参数结构体
      class DeleteServiceTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateId: 协议端口模板实例ID，例如：ppm-e6dy460g。
        # @type ServiceTemplateId: String

        attr_accessor :ServiceTemplateId
        
        def initialize(servicetemplateid=nil)
          @ServiceTemplateId = servicetemplateid
        end

        def deserialize(params)
          @ServiceTemplateId = params['ServiceTemplateId']
        end
      end

      # DeleteServiceTemplate返回参数结构体
      class DeleteServiceTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSubnet请求参数结构体
      class DeleteSubnetRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID。可通过DescribeSubnets接口返回值中的SubnetId获取。
        # @type SubnetId: String

        attr_accessor :SubnetId
        
        def initialize(subnetid=nil)
          @SubnetId = subnetid
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
        end
      end

      # DeleteSubnet返回参数结构体
      class DeleteSubnetResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTemplateMember请求参数结构体
      class DeleteTemplateMemberRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板实例ID，支持IP地址、协议端口、IP地址组、协议端口组四种参数模板的实例ID。
        # @type TemplateId: String
        # @param TemplateMember: 需要添加的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致。
        # @type TemplateMember: Array

        attr_accessor :TemplateId, :TemplateMember
        
        def initialize(templateid=nil, templatemember=nil)
          @TemplateId = templateid
          @TemplateMember = templatemember
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['TemplateMember'].nil?
            @TemplateMember = []
            params['TemplateMember'].each do |i|
              memberinfo_tmp = MemberInfo.new
              memberinfo_tmp.deserialize(i)
              @TemplateMember << memberinfo_tmp
            end
          end
        end
      end

      # DeleteTemplateMember返回参数结构体
      class DeleteTemplateMemberResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpcEndPoint请求参数结构体
      class DeleteVpcEndPointRequest < TencentCloud::Common::AbstractModel
        # @param EndPointId: 终端节点ID。
        # @type EndPointId: String

        attr_accessor :EndPointId
        
        def initialize(endpointid=nil)
          @EndPointId = endpointid
        end

        def deserialize(params)
          @EndPointId = params['EndPointId']
        end
      end

      # DeleteVpcEndPoint返回参数结构体
      class DeleteVpcEndPointResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpcEndPointService请求参数结构体
      class DeleteVpcEndPointServiceRequest < TencentCloud::Common::AbstractModel
        # @param EndPointServiceId: 终端节点ID。
        # @type EndPointServiceId: String

        attr_accessor :EndPointServiceId
        
        def initialize(endpointserviceid=nil)
          @EndPointServiceId = endpointserviceid
        end

        def deserialize(params)
          @EndPointServiceId = params['EndPointServiceId']
        end
      end

      # DeleteVpcEndPointService返回参数结构体
      class DeleteVpcEndPointServiceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpcEndPointServiceWhiteList请求参数结构体
      class DeleteVpcEndPointServiceWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param UserUin: 用户UIN数组。
        # @type UserUin: Array
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String

        attr_accessor :UserUin, :EndPointServiceId
        
        def initialize(useruin=nil, endpointserviceid=nil)
          @UserUin = useruin
          @EndPointServiceId = endpointserviceid
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @EndPointServiceId = params['EndPointServiceId']
        end
      end

      # DeleteVpcEndPointServiceWhiteList返回参数结构体
      class DeleteVpcEndPointServiceWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpc请求参数结构体
      class DeleteVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String

        attr_accessor :VpcId
        
        def initialize(vpcid=nil)
          @VpcId = vpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
        end
      end

      # DeleteVpc返回参数结构体
      class DeleteVpcResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpnConnection请求参数结构体
      class DeleteVpnConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param VpnConnectionId: VPN通道实例ID。形如：vpnx-f49l6u0z。
        # @type VpnConnectionId: String

        attr_accessor :VpnGatewayId, :VpnConnectionId
        
        def initialize(vpngatewayid=nil, vpnconnectionid=nil)
          @VpnGatewayId = vpngatewayid
          @VpnConnectionId = vpnconnectionid
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpnConnectionId = params['VpnConnectionId']
        end
      end

      # DeleteVpnConnection返回参数结构体
      class DeleteVpnConnectionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpnGateway请求参数结构体
      class DeleteVpnGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String

        attr_accessor :VpnGatewayId
        
        def initialize(vpngatewayid=nil)
          @VpnGatewayId = vpngatewayid
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
        end
      end

      # DeleteVpnGateway返回参数结构体
      class DeleteVpnGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpnGatewayRoutes请求参数结构体
      class DeleteVpnGatewayRoutesRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID
        # @type VpnGatewayId: String
        # @param RouteIds: 路由ID信息列表
        # @type RouteIds: Array

        attr_accessor :VpnGatewayId, :RouteIds
        
        def initialize(vpngatewayid=nil, routeids=nil)
          @VpnGatewayId = vpngatewayid
          @RouteIds = routeids
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @RouteIds = params['RouteIds']
        end
      end

      # DeleteVpnGatewayRoutes返回参数结构体
      class DeleteVpnGatewayRoutesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpnGatewaySslClient请求参数结构体
      class DeleteVpnGatewaySslClientRequest < TencentCloud::Common::AbstractModel
        # @param SslVpnClientId: SSL-VPN-CLIENT 实例ID。
        # @type SslVpnClientId: String

        attr_accessor :SslVpnClientId
        
        def initialize(sslvpnclientid=nil)
          @SslVpnClientId = sslvpnclientid
        end

        def deserialize(params)
          @SslVpnClientId = params['SslVpnClientId']
        end
      end

      # DeleteVpnGatewaySslClient返回参数结构体
      class DeleteVpnGatewaySslClientResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteVpnGatewaySslServer请求参数结构体
      class DeleteVpnGatewaySslServerRequest < TencentCloud::Common::AbstractModel
        # @param SslVpnServerId: SSL-VPN-SERVER 实例ID。
        # @type SslVpnServerId: String

        attr_accessor :SslVpnServerId
        
        def initialize(sslvpnserverid=nil)
          @SslVpnServerId = sslvpnserverid
        end

        def deserialize(params)
          @SslVpnServerId = params['SslVpnServerId']
        end
      end

      # DeleteVpnGatewaySslServer返回参数结构体
      class DeleteVpnGatewaySslServerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAccountAttributes请求参数结构体
      class DescribeAccountAttributesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccountAttributes返回参数结构体
      class DescribeAccountAttributesResponse < TencentCloud::Common::AbstractModel
        # @param AccountAttributeSet: 用户账号属性对象
        # @type AccountAttributeSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountAttributeSet, :RequestId
        
        def initialize(accountattributeset=nil, requestid=nil)
          @AccountAttributeSet = accountattributeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountAttributeSet'].nil?
            @AccountAttributeSet = []
            params['AccountAttributeSet'].each do |i|
              accountattribute_tmp = AccountAttribute.new
              accountattribute_tmp.deserialize(i)
              @AccountAttributeSet << accountattribute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressQuota请求参数结构体
      class DescribeAddressQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAddressQuota返回参数结构体
      class DescribeAddressQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaSet: 账户 EIP 配额信息。
        # @type QuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaSet, :RequestId
        
        def initialize(quotaset=nil, requestid=nil)
          @QuotaSet = quotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @QuotaSet << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressTemplateGroups请求参数结构体
      class DescribeAddressTemplateGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>address-template-group-name - String - （过滤条件）IP地址模板集合名称。</li>
        # <li>address-template-group-id - String - （过滤条件）IP地址模板实集合例ID，例如：ipmg-mdunqeb6。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

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

      # DescribeAddressTemplateGroups返回参数结构体
      class DescribeAddressTemplateGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param AddressTemplateGroupSet: IP地址模板。
        # @type AddressTemplateGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AddressTemplateGroupSet, :RequestId
        
        def initialize(totalcount=nil, addresstemplategroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @AddressTemplateGroupSet = addresstemplategroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AddressTemplateGroupSet'].nil?
            @AddressTemplateGroupSet = []
            params['AddressTemplateGroupSet'].each do |i|
              addresstemplategroup_tmp = AddressTemplateGroup.new
              addresstemplategroup_tmp.deserialize(i)
              @AddressTemplateGroupSet << addresstemplategroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddressTemplates请求参数结构体
      class DescribeAddressTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>address-template-name - IP地址模板名称。</li>
        # <li>address-template-id - IP地址模板实例ID，例如：ipm-mdunqeb6。</li>
        # <li>address-ip - IP地址。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

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

      # DescribeAddressTemplates返回参数结构体
      class DescribeAddressTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param AddressTemplateSet: IP地址模板。
        # @type AddressTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AddressTemplateSet, :RequestId
        
        def initialize(totalcount=nil, addresstemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AddressTemplateSet = addresstemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AddressTemplateSet'].nil?
            @AddressTemplateSet = []
            params['AddressTemplateSet'].each do |i|
              addresstemplate_tmp = AddressTemplate.new
              addresstemplate_tmp.deserialize(i)
              @AddressTemplateSet << addresstemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddresses请求参数结构体
      class DescribeAddressesRequest < TencentCloud::Common::AbstractModel
        # @param AddressIds: 标识 EIP 的唯一 ID 列表。EIP 唯一 ID 形如：`eip-11112222`。参数不支持同时指定`AddressIds`和`Filters.address-id`。
        # @type AddressIds: Array
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。详细的过滤条件如下：
        # <li> address-id - String - 是否必填：否 - （过滤条件）按照 EIP 的唯一 ID 过滤。EIP 唯一 ID 形如：eip-11112222。</li>
        # <li> address-name - String - 是否必填：否 - （过滤条件）按照 EIP 名称过滤。不支持模糊过滤。</li>
        # <li> address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。</li>
        # <li> address-status - String - 是否必填：否 - （过滤条件）按照 EIP 的状态过滤。状态包含：'CREATING'，'BINDING'，'BIND'，'UNBINDING'，'UNBIND'，'OFFLINING'，'BIND_ENI'。</li>
        # <li> instance-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的实例 ID 过滤。实例 ID 形如：ins-11112222。</li>
        # <li> private-ip-address - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的内网 IP 过滤。</li>
        # <li> network-interface-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的弹性网卡 ID 过滤。弹性网卡 ID 形如：eni-11112222。</li>
        # <li> is-arrears - String - 是否必填：否 - （过滤条件）按照 EIP 是否欠费进行过滤。（TRUE：EIP 处于欠费状态|FALSE：EIP 费用状态正常）</li>
        # <li> address-type - String - 是否必填：否 - （过滤条件）按照 IP类型 进行过滤。可选值：'WanIP', 'EIP'，'AnycastEIP'，'HighQualityEIP'。默认值是'EIP'。</li>
        # <li> address-isp - String - 是否必填：否 - （过滤条件）按照 运营商类型 进行过滤。可选值：'BGP'，'CMCC'，'CUCC', 'CTCC'</li>
        # <li> dedicated-cluster-id - String - 是否必填：否 - （过滤条件）按照 CDC 的唯一 ID 过滤。CDC 唯一 ID 形如：cluster-11112222。</li>
        # <li> tag-key - String - 是否必填：否 - （过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 - （过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。tag-key使用具体的标签键进行替换。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API 中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API 中的相关小节。
        # @type Limit: Integer

        attr_accessor :AddressIds, :Filters, :Offset, :Limit
        
        def initialize(addressids=nil, filters=nil, offset=nil, limit=nil)
          @AddressIds = addressids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AddressIds = params['AddressIds']
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

      # DescribeAddresses返回参数结构体
      class DescribeAddressesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 EIP 数量。
        # @type TotalCount: Integer
        # @param AddressSet: EIP 详细信息列表。
        # @type AddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AddressSet, :RequestId
        
        def initialize(totalcount=nil, addressset=nil, requestid=nil)
          @TotalCount = totalcount
          @AddressSet = addressset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssistantCidr请求参数结构体
      class DescribeAssistantCidrRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: `VPC`实例`ID`数组。形如：[`vpc-6v2ht8q5`]
        # @type VpcIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定VpcIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :VpcIds, :Filters, :Offset, :Limit
        
        def initialize(vpcids=nil, filters=nil, offset=nil, limit=nil)
          @VpcIds = vpcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
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

      # DescribeAssistantCidr返回参数结构体
      class DescribeAssistantCidrResponse < TencentCloud::Common::AbstractModel
        # @param AssistantCidrSet: 符合条件的辅助CIDR数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantCidrSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssistantCidrSet, :TotalCount, :RequestId
        
        def initialize(assistantcidrset=nil, totalcount=nil, requestid=nil)
          @AssistantCidrSet = assistantcidrset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssistantCidrSet'].nil?
            @AssistantCidrSet = []
            params['AssistantCidrSet'].each do |i|
              assistantcidr_tmp = AssistantCidr.new
              assistantcidr_tmp.deserialize(i)
              @AssistantCidrSet << assistantcidr_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBandwidthPackageBillUsage请求参数结构体
      class DescribeBandwidthPackageBillUsageRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 后付费共享带宽包的唯一ID
        # @type BandwidthPackageId: String

        attr_accessor :BandwidthPackageId
        
        def initialize(bandwidthpackageid=nil)
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # DescribeBandwidthPackageBillUsage返回参数结构体
      class DescribeBandwidthPackageBillUsageResponse < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageBillBandwidthSet: 当前计费用量
        # @type BandwidthPackageBillBandwidthSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BandwidthPackageBillBandwidthSet, :RequestId
        
        def initialize(bandwidthpackagebillbandwidthset=nil, requestid=nil)
          @BandwidthPackageBillBandwidthSet = bandwidthpackagebillbandwidthset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BandwidthPackageBillBandwidthSet'].nil?
            @BandwidthPackageBillBandwidthSet = []
            params['BandwidthPackageBillBandwidthSet'].each do |i|
              bandwidthpackagebillbandwidth_tmp = BandwidthPackageBillBandwidth.new
              bandwidthpackagebillbandwidth_tmp.deserialize(i)
              @BandwidthPackageBillBandwidthSet << bandwidthpackagebillbandwidth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBandwidthPackageQuota请求参数结构体
      class DescribeBandwidthPackageQuotaRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBandwidthPackageQuota返回参数结构体
      class DescribeBandwidthPackageQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaSet: 带宽包配额详细信息
        # @type QuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaSet, :RequestId
        
        def initialize(quotaset=nil, requestid=nil)
          @QuotaSet = quotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @QuotaSet << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBandwidthPackageResources请求参数结构体
      class DescribeBandwidthPackageResourcesRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 标识 共享带宽包 的唯一 ID 列表。共享带宽包 唯一 ID 形如：`bwp-11112222`。
        # @type BandwidthPackageId: String
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AddressIds`和`Filters`。详细的过滤条件如下：
        # <li> resource-id - String - 是否必填：否 - （过滤条件）按照 共享带宽包内资源 的唯一 ID 过滤。共享带宽包内资源 唯一 ID 形如：eip-11112222。</li>
        # <li> resource-type - String - 是否必填：否 - （过滤条件）按照 共享带宽包内资源 类型过滤，目前仅支持 弹性IP 和 负载均衡 两种类型，可选值为 Address 和 LoadBalance。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Limit: Integer

        attr_accessor :BandwidthPackageId, :Filters, :Offset, :Limit
        
        def initialize(bandwidthpackageid=nil, filters=nil, offset=nil, limit=nil)
          @BandwidthPackageId = bandwidthpackageid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
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

      # DescribeBandwidthPackageResources返回参数结构体
      class DescribeBandwidthPackageResourcesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 共享带宽包内资源 数量。
        # @type TotalCount: Integer
        # @param ResourceSet: 共享带宽包内资源 详细信息列表。
        # @type ResourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceSet, :RequestId
        
        def initialize(totalcount=nil, resourceset=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceSet = resourceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @ResourceSet << resource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBandwidthPackages请求参数结构体
      class DescribeBandwidthPackagesRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageIds: 带宽包唯一ID列表
        # @type BandwidthPackageIds: Array
        # @param Filters: 每次请求的`Filters`的上限为10。参数不支持同时指定`BandwidthPackageIds`和`Filters`。详细的过滤条件如下：
        # <li> bandwidth-package_id - String - 是否必填：否 - （过滤条件）按照带宽包的唯一标识ID过滤。</li>
        # <li> bandwidth-package-name - String - 是否必填：否 - （过滤条件）按照 带宽包名称过滤。不支持模糊过滤。</li>
        # <li> network-type - String - 是否必填：否 - （过滤条件）按照带宽包的类型过滤。类型包括'HIGH_QUALITY_BGP','BGP','SINGLEISP'和'ANYCAST'。</li>
        # <li> charge-type - String - 是否必填：否 - （过滤条件）按照带宽包的计费类型过滤。计费类型包括'TOP5_POSTPAID_BY_MONTH'和'PERCENT95_POSTPAID_BY_MONTH'。</li>
        # <li> resource.resource-type - String - 是否必填：否 - （过滤条件）按照带宽包资源类型过滤。资源类型包括'Address'和'LoadBalance'</li>
        # <li> resource.resource-id - String - 是否必填：否 - （过滤条件）按照带宽包资源Id过滤。资源Id形如'eip-xxxx','lb-xxxx'</li>
        # <li> resource.address-ip - String - 是否必填：否 - （过滤条件）按照带宽包资源Ip过滤。</li>
        # <li> tag-key - String - 是否必填：否 - （过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 - （过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。tag-key使用具体的标签键进行替换。</li>
        # @type Filters: Array
        # @param Offset: 查询带宽包偏移量
        # @type Offset: Integer
        # @param Limit: 查询带宽包数量限制
        # @type Limit: Integer

        attr_accessor :BandwidthPackageIds, :Filters, :Offset, :Limit
        
        def initialize(bandwidthpackageids=nil, filters=nil, offset=nil, limit=nil)
          @BandwidthPackageIds = bandwidthpackageids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @BandwidthPackageIds = params['BandwidthPackageIds']
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

      # DescribeBandwidthPackages返回参数结构体
      class DescribeBandwidthPackagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的带宽包数量
        # @type TotalCount: Integer
        # @param BandwidthPackageSet: 描述带宽包详细信息
        # @type BandwidthPackageSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BandwidthPackageSet, :RequestId
        
        def initialize(totalcount=nil, bandwidthpackageset=nil, requestid=nil)
          @TotalCount = totalcount
          @BandwidthPackageSet = bandwidthpackageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BandwidthPackageSet'].nil?
            @BandwidthPackageSet = []
            params['BandwidthPackageSet'].each do |i|
              bandwidthpackage_tmp = BandwidthPackage.new
              bandwidthpackage_tmp.deserialize(i)
              @BandwidthPackageSet << bandwidthpackage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcnAttachedInstances请求参数结构体
      class DescribeCcnAttachedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param Filters: 过滤条件：
        # <li>ccn-id - String -（过滤条件）CCN实例ID。</li>
        # <li>instance-type - String -（过滤条件）关联实例类型。</li>
        # <li>instance-region - String -（过滤条件）关联实例所属地域。</li>
        # <li>instance-id - String -（过滤条件）关联实例实例ID。</li>
        # @type Filters: Array
        # @param CcnId: 云联网实例ID
        # @type CcnId: String
        # @param OrderField: 排序字段。支持：`CcnId` `InstanceType` `InstanceId` `InstanceName` `InstanceRegion` `AttachedTime` `State`。
        # @type OrderField: String
        # @param OrderDirection: 排序方法。顺序：`ASC`，倒序：`DESC`。
        # @type OrderDirection: String

        attr_accessor :Offset, :Limit, :Filters, :CcnId, :OrderField, :OrderDirection
        
        def initialize(offset=nil, limit=nil, filters=nil, ccnid=nil, orderfield=nil, orderdirection=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @CcnId = ccnid
          @OrderField = orderfield
          @OrderDirection = orderdirection
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
          @CcnId = params['CcnId']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeCcnAttachedInstances返回参数结构体
      class DescribeCcnAttachedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param InstanceSet: 关联实例列表。
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId
        
        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              ccnattachedinstance_tmp = CcnAttachedInstance.new
              ccnattachedinstance_tmp.deserialize(i)
              @InstanceSet << ccnattachedinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcnRegionBandwidthLimits请求参数结构体
      class DescribeCcnRegionBandwidthLimitsRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String

        attr_accessor :CcnId
        
        def initialize(ccnid=nil)
          @CcnId = ccnid
        end

        def deserialize(params)
          @CcnId = params['CcnId']
        end
      end

      # DescribeCcnRegionBandwidthLimits返回参数结构体
      class DescribeCcnRegionBandwidthLimitsResponse < TencentCloud::Common::AbstractModel
        # @param CcnRegionBandwidthLimitSet: 云联网（CCN）各地域出带宽上限
        # @type CcnRegionBandwidthLimitSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CcnRegionBandwidthLimitSet, :RequestId
        
        def initialize(ccnregionbandwidthlimitset=nil, requestid=nil)
          @CcnRegionBandwidthLimitSet = ccnregionbandwidthlimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CcnRegionBandwidthLimitSet'].nil?
            @CcnRegionBandwidthLimitSet = []
            params['CcnRegionBandwidthLimitSet'].each do |i|
              ccnregionbandwidthlimit_tmp = CcnRegionBandwidthLimit.new
              ccnregionbandwidthlimit_tmp.deserialize(i)
              @CcnRegionBandwidthLimitSet << ccnregionbandwidthlimit_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcnRoutes请求参数结构体
      class DescribeCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID，形如：ccn-gree226l。
        # @type CcnId: String
        # @param RouteIds: CCN路由策略唯一ID。形如：ccnr-f49l6u0z。
        # @type RouteIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定RouteIds和Filters。
        # <li>route-id - String -（过滤条件）路由策略ID。</li>
        # <li>cidr-block - String -（过滤条件）目的端。</li>
        # <li>instance-type - String -（过滤条件）下一跳类型。</li>
        # <li>instance-region - String -（过滤条件）下一跳所属地域。</li>
        # <li>instance-id - String -（过滤条件）下一跳实例ID。</li>
        # <li>route-table-id - String -（过滤条件）路由表ID列表，形如ccntr-1234edfr，可以根据路由表ID 过滤。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :CcnId, :RouteIds, :Filters, :Offset, :Limit
        
        def initialize(ccnid=nil, routeids=nil, filters=nil, offset=nil, limit=nil)
          @CcnId = ccnid
          @RouteIds = routeids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @RouteIds = params['RouteIds']
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

      # DescribeCcnRoutes返回参数结构体
      class DescribeCcnRoutesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param RouteSet: CCN路由策略对象。
        # @type RouteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteSet, :RequestId
        
        def initialize(totalcount=nil, routeset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteSet = routeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              ccnroute_tmp = CcnRoute.new
              ccnroute_tmp.deserialize(i)
              @RouteSet << ccnroute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcns请求参数结构体
      class DescribeCcnsRequest < TencentCloud::Common::AbstractModel
        # @param CcnIds: CCN实例ID。形如：ccn-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定CcnIds和Filters。
        # @type CcnIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定CcnIds和Filters。
        # <li>ccn-id - String - （过滤条件）CCN唯一ID，形如：vpc-f49l6u0z。</li>
        # <li>ccn-name - String - （过滤条件）CCN名称。</li>
        # <li>ccn-description - String - （过滤条件）CCN描述。</li>
        # <li>state - String - （过滤条件）实例状态， 'ISOLATED': 隔离中（欠费停服），'AVAILABLE'：运行中。</li>
        # <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        # <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例：查询绑定了标签的CCN列表。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param OrderField: 排序字段。支持：`CcnId` `CcnName` `CreateTime` `State` `QosLevel`
        # @type OrderField: String
        # @param OrderDirection: 排序方法。顺序：`ASC`，倒序：`DESC`。
        # @type OrderDirection: String

        attr_accessor :CcnIds, :Filters, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(ccnids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @CcnIds = ccnids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @CcnIds = params['CcnIds']
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
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeCcns返回参数结构体
      class DescribeCcnsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param CcnSet: CCN对象。
        # @type CcnSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CcnSet, :RequestId
        
        def initialize(totalcount=nil, ccnset=nil, requestid=nil)
          @TotalCount = totalcount
          @CcnSet = ccnset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CcnSet'].nil?
            @CcnSet = []
            params['CcnSet'].each do |i|
              ccn_tmp = CCN.new
              ccn_tmp.deserialize(i)
              @CcnSet << ccn_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicLinkInstances请求参数结构体
      class DescribeClassicLinkInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>vpc-id - String - （过滤条件）VPC实例ID。</li>
        # <li>vm-ip - String - （过滤条件）基础网络云服务器IP。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: String
        # @param Limit: 返回数量
        # @type Limit: String

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
              filterobject_tmp = FilterObject.new
              filterobject_tmp.deserialize(i)
              @Filters << filterobject_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClassicLinkInstances返回参数结构体
      class DescribeClassicLinkInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param ClassicLinkInstanceSet: 私有网络和基础网络互通设备。
        # @type ClassicLinkInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClassicLinkInstanceSet, :RequestId
        
        def initialize(totalcount=nil, classiclinkinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClassicLinkInstanceSet = classiclinkinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClassicLinkInstanceSet'].nil?
            @ClassicLinkInstanceSet = []
            params['ClassicLinkInstanceSet'].each do |i|
              classiclinkinstance_tmp = ClassicLinkInstance.new
              classiclinkinstance_tmp.deserialize(i)
              @ClassicLinkInstanceSet << classiclinkinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossBorderCcnRegionBandwidthLimits请求参数结构体
      class DescribeCrossBorderCcnRegionBandwidthLimitsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCrossBorderCcnRegionBandwidthLimits返回参数结构体
      class DescribeCrossBorderCcnRegionBandwidthLimitsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCrossBorderCompliance请求参数结构体
      class DescribeCrossBorderComplianceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceProvider: （精确匹配）服务商，可选值：`UNICOM`。
        # @type ServiceProvider: String
        # @param ComplianceId: （精确匹配）合规化审批单`ID`。
        # @type ComplianceId: Integer
        # @param Company: （模糊查询）公司名称。
        # @type Company: String
        # @param UniformSocialCreditCode: （精确匹配）统一社会信用代码。
        # @type UniformSocialCreditCode: String
        # @param LegalPerson: （模糊查询）法定代表人。
        # @type LegalPerson: String
        # @param IssuingAuthority: （模糊查询）发证机关。
        # @type IssuingAuthority: String
        # @param BusinessAddress: （模糊查询）营业执照住所。
        # @type BusinessAddress: String
        # @param PostCode: （精确匹配）邮编。
        # @type PostCode: Integer
        # @param Manager: （模糊查询）经办人。
        # @type Manager: String
        # @param ManagerId: （精确查询）经办人身份证号。
        # @type ManagerId: String
        # @param ManagerAddress: （模糊查询）经办人身份证地址。
        # @type ManagerAddress: String
        # @param ManagerTelephone: （精确匹配）经办人联系电话。
        # @type ManagerTelephone: String
        # @param Email: （精确匹配）电子邮箱。
        # @type Email: String
        # @param ServiceStartDate: （精确匹配）服务开始日期，如：`2020-07-28`。
        # @type ServiceStartDate: String
        # @param ServiceEndDate: （精确匹配）服务结束日期，如：`2021-07-28`。
        # @type ServiceEndDate: String
        # @param State: （精确匹配）状态。待审批：`PENDING`，通过：`APPROVED `，拒绝：`DENY`。
        # @type State: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :ServiceProvider, :ComplianceId, :Company, :UniformSocialCreditCode, :LegalPerson, :IssuingAuthority, :BusinessAddress, :PostCode, :Manager, :ManagerId, :ManagerAddress, :ManagerTelephone, :Email, :ServiceStartDate, :ServiceEndDate, :State, :Offset, :Limit
        
        def initialize(serviceprovider=nil, complianceid=nil, company=nil, uniformsocialcreditcode=nil, legalperson=nil, issuingauthority=nil, businessaddress=nil, postcode=nil, manager=nil, managerid=nil, manageraddress=nil, managertelephone=nil, email=nil, servicestartdate=nil, serviceenddate=nil, state=nil, offset=nil, limit=nil)
          @ServiceProvider = serviceprovider
          @ComplianceId = complianceid
          @Company = company
          @UniformSocialCreditCode = uniformsocialcreditcode
          @LegalPerson = legalperson
          @IssuingAuthority = issuingauthority
          @BusinessAddress = businessaddress
          @PostCode = postcode
          @Manager = manager
          @ManagerId = managerid
          @ManagerAddress = manageraddress
          @ManagerTelephone = managertelephone
          @Email = email
          @ServiceStartDate = servicestartdate
          @ServiceEndDate = serviceenddate
          @State = state
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ServiceProvider = params['ServiceProvider']
          @ComplianceId = params['ComplianceId']
          @Company = params['Company']
          @UniformSocialCreditCode = params['UniformSocialCreditCode']
          @LegalPerson = params['LegalPerson']
          @IssuingAuthority = params['IssuingAuthority']
          @BusinessAddress = params['BusinessAddress']
          @PostCode = params['PostCode']
          @Manager = params['Manager']
          @ManagerId = params['ManagerId']
          @ManagerAddress = params['ManagerAddress']
          @ManagerTelephone = params['ManagerTelephone']
          @Email = params['Email']
          @ServiceStartDate = params['ServiceStartDate']
          @ServiceEndDate = params['ServiceEndDate']
          @State = params['State']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCrossBorderCompliance返回参数结构体
      class DescribeCrossBorderComplianceResponse < TencentCloud::Common::AbstractModel
        # @param CrossBorderComplianceSet: 合规化审批单列表。
        # @type CrossBorderComplianceSet: Array
        # @param TotalCount: 合规化审批单总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CrossBorderComplianceSet, :TotalCount, :RequestId
        
        def initialize(crossbordercomplianceset=nil, totalcount=nil, requestid=nil)
          @CrossBorderComplianceSet = crossbordercomplianceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CrossBorderComplianceSet'].nil?
            @CrossBorderComplianceSet = []
            params['CrossBorderComplianceSet'].each do |i|
              crossbordercompliance_tmp = CrossBorderCompliance.new
              crossbordercompliance_tmp.deserialize(i)
              @CrossBorderComplianceSet << crossbordercompliance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossBorderFlowMonitor请求参数结构体
      class DescribeCrossBorderFlowMonitorRequest < TencentCloud::Common::AbstractModel
        # @param SourceRegion: 源地域
        # @type SourceRegion: String
        # @param DestinationRegion: 目的地域
        # @type DestinationRegion: String
        # @param CcnId: 云联网Id
        # @type CcnId: String
        # @param CcnUin: 云联网所属账号
        # @type CcnUin: String
        # @param Period: 时间粒度
        # @type Period: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :SourceRegion, :DestinationRegion, :CcnId, :CcnUin, :Period, :StartTime, :EndTime
        
        def initialize(sourceregion=nil, destinationregion=nil, ccnid=nil, ccnuin=nil, period=nil, starttime=nil, endtime=nil)
          @SourceRegion = sourceregion
          @DestinationRegion = destinationregion
          @CcnId = ccnid
          @CcnUin = ccnuin
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SourceRegion = params['SourceRegion']
          @DestinationRegion = params['DestinationRegion']
          @CcnId = params['CcnId']
          @CcnUin = params['CcnUin']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeCrossBorderFlowMonitor返回参数结构体
      class DescribeCrossBorderFlowMonitorResponse < TencentCloud::Common::AbstractModel
        # @param CrossBorderFlowMonitorData: 云联网跨境带宽监控数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrossBorderFlowMonitorData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CrossBorderFlowMonitorData, :RequestId
        
        def initialize(crossborderflowmonitordata=nil, requestid=nil)
          @CrossBorderFlowMonitorData = crossborderflowmonitordata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CrossBorderFlowMonitorData'].nil?
            @CrossBorderFlowMonitorData = []
            params['CrossBorderFlowMonitorData'].each do |i|
              crossborderflowmonitordata_tmp = CrossBorderFlowMonitorData.new
              crossborderflowmonitordata_tmp.deserialize(i)
              @CrossBorderFlowMonitorData << crossborderflowmonitordata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomerGatewayVendors请求参数结构体
      class DescribeCustomerGatewayVendorsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCustomerGatewayVendors返回参数结构体
      class DescribeCustomerGatewayVendorsResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayVendorSet: 对端网关厂商信息对象。
        # @type CustomerGatewayVendorSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGatewayVendorSet, :RequestId
        
        def initialize(customergatewayvendorset=nil, requestid=nil)
          @CustomerGatewayVendorSet = customergatewayvendorset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomerGatewayVendorSet'].nil?
            @CustomerGatewayVendorSet = []
            params['CustomerGatewayVendorSet'].each do |i|
              customergatewayvendor_tmp = CustomerGatewayVendor.new
              customergatewayvendor_tmp.deserialize(i)
              @CustomerGatewayVendorSet << customergatewayvendor_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomerGateways请求参数结构体
      class DescribeCustomerGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayIds: 对端网关ID，例如：cgw-2wqq41m9。每次请求的实例的上限为100。参数不支持同时指定CustomerGatewayIds和Filters。
        # @type CustomerGatewayIds: Array
        # @param Filters: 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定CustomerGatewayIds和Filters。
        # <li>customer-gateway-id - String - （过滤条件）用户网关唯一ID形如：`cgw-mgp33pll`。</li>
        # <li>customer-gateway-name - String - （过滤条件）用户网关名称形如：`test-cgw`。</li>
        # <li>ip-address - String - （过滤条件）公网地址形如：`58.211.1.12`。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :CustomerGatewayIds, :Filters, :Offset, :Limit
        
        def initialize(customergatewayids=nil, filters=nil, offset=nil, limit=nil)
          @CustomerGatewayIds = customergatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CustomerGatewayIds = params['CustomerGatewayIds']
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

      # DescribeCustomerGateways返回参数结构体
      class DescribeCustomerGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGatewaySet: 对端网关对象列表
        # @type CustomerGatewaySet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGatewaySet, :TotalCount, :RequestId
        
        def initialize(customergatewayset=nil, totalcount=nil, requestid=nil)
          @CustomerGatewaySet = customergatewayset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomerGatewaySet'].nil?
            @CustomerGatewaySet = []
            params['CustomerGatewaySet'].each do |i|
              customergateway_tmp = CustomerGateway.new
              customergateway_tmp.deserialize(i)
              @CustomerGatewaySet << customergateway_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDhcpIps请求参数结构体
      class DescribeDhcpIpsRequest < TencentCloud::Common::AbstractModel
        # @param DhcpIpIds: DhcpIp实例ID。形如：dhcpip-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定DhcpIpIds和Filters。
        # @type DhcpIpIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定DhcpIpIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        # <li>subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。</li>
        # <li>dhcpip-id - String - （过滤条件）DhcpIp实例ID，形如：dhcpip-pxir56ns。</li>
        # <li>dhcpip-name - String - （过滤条件）DhcpIp实例名称。</li>
        # <li>address-ip - String - （过滤条件）DhcpIp实例的IP，根据IP精确查找。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :DhcpIpIds, :Filters, :Offset, :Limit
        
        def initialize(dhcpipids=nil, filters=nil, offset=nil, limit=nil)
          @DhcpIpIds = dhcpipids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DhcpIpIds = params['DhcpIpIds']
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

      # DescribeDhcpIps返回参数结构体
      class DescribeDhcpIpsResponse < TencentCloud::Common::AbstractModel
        # @param DhcpIpSet: 实例详细信息列表。
        # @type DhcpIpSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DhcpIpSet, :TotalCount, :RequestId
        
        def initialize(dhcpipset=nil, totalcount=nil, requestid=nil)
          @DhcpIpSet = dhcpipset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DhcpIpSet'].nil?
            @DhcpIpSet = []
            params['DhcpIpSet'].each do |i|
              dhcpip_tmp = DhcpIp.new
              dhcpip_tmp.deserialize(i)
              @DhcpIpSet << dhcpip_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDirectConnectGatewayCcnRoutes请求参数结构体
      class DescribeDirectConnectGatewayCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关ID，形如：`dcg-prpqlmg1`。
        # @type DirectConnectGatewayId: String
        # @param CcnRouteType: 云联网路由学习类型，可选值：
        # <li>`BGP` - 自动学习。</li>
        # <li>`STATIC` - 静态，即用户配置，默认值。</li>
        # @type CcnRouteType: String
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 返回数量。
        # @type Limit: Integer

        attr_accessor :DirectConnectGatewayId, :CcnRouteType, :Offset, :Limit
        
        def initialize(directconnectgatewayid=nil, ccnroutetype=nil, offset=nil, limit=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @CcnRouteType = ccnroutetype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @CcnRouteType = params['CcnRouteType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDirectConnectGatewayCcnRoutes返回参数结构体
      class DescribeDirectConnectGatewayCcnRoutesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param RouteSet: 云联网路由（IDC网段）列表。
        # @type RouteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteSet, :RequestId
        
        def initialize(totalcount=nil, routeset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteSet = routeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              directconnectgatewayccnroute_tmp = DirectConnectGatewayCcnRoute.new
              directconnectgatewayccnroute_tmp.deserialize(i)
              @RouteSet << directconnectgatewayccnroute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDirectConnectGateways请求参数结构体
      class DescribeDirectConnectGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayIds: 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        # @type DirectConnectGatewayIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定`DirectConnectGatewayIds`和`Filters`。
        # <li>direct-connect-gateway-id - String - 专线网关唯一`ID`，形如：`dcg-9o233uri`。</li>
        # <li>direct-connect-gateway-name - String - 专线网关名称，默认模糊查询。</li>
        # <li>direct-connect-gateway-ip - String - 专线网关`IP`。</li>
        # <li>gateway-type - String - 网关类型，可选值：`NORMAL`（普通型）、`NAT`（NAT型）。</li>
        # <li>network-type- String - 网络类型，可选值：`VPC`（私有网络类型）、`CCN`（云联网类型）。</li>
        # <li>ccn-id - String - 专线网关所在云联网`ID`。</li>
        # <li>vpc-id - String - 专线网关所在私有网络`ID`。</li>
        # @type Filters: Array
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 返回数量。
        # @type Limit: Integer

        attr_accessor :DirectConnectGatewayIds, :Filters, :Offset, :Limit
        
        def initialize(directconnectgatewayids=nil, filters=nil, offset=nil, limit=nil)
          @DirectConnectGatewayIds = directconnectgatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DirectConnectGatewayIds = params['DirectConnectGatewayIds']
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

      # DescribeDirectConnectGateways返回参数结构体
      class DescribeDirectConnectGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param DirectConnectGatewaySet: 专线网关对象数组。
        # @type DirectConnectGatewaySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DirectConnectGatewaySet, :RequestId
        
        def initialize(totalcount=nil, directconnectgatewayset=nil, requestid=nil)
          @TotalCount = totalcount
          @DirectConnectGatewaySet = directconnectgatewayset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DirectConnectGatewaySet'].nil?
            @DirectConnectGatewaySet = []
            params['DirectConnectGatewaySet'].each do |i|
              directconnectgateway_tmp = DirectConnectGateway.new
              directconnectgateway_tmp.deserialize(i)
              @DirectConnectGatewaySet << directconnectgateway_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowLog请求参数结构体
      class DescribeFlowLogRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私用网络ID或者统一ID，建议使用统一ID
        # @type VpcId: String
        # @param FlowLogId: 流日志唯一ID
        # @type FlowLogId: String

        attr_accessor :VpcId, :FlowLogId
        
        def initialize(vpcid=nil, flowlogid=nil)
          @VpcId = vpcid
          @FlowLogId = flowlogid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @FlowLogId = params['FlowLogId']
        end
      end

      # DescribeFlowLog返回参数结构体
      class DescribeFlowLogResponse < TencentCloud::Common::AbstractModel
        # @param FlowLog: 流日志信息
        # @type FlowLog: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowLog, :RequestId
        
        def initialize(flowlog=nil, requestid=nil)
          @FlowLog = flowlog
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowLog'].nil?
            @FlowLog = []
            params['FlowLog'].each do |i|
              flowlog_tmp = FlowLog.new
              flowlog_tmp.deserialize(i)
              @FlowLog << flowlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowLogs请求参数结构体
      class DescribeFlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私用网络ID或者统一ID，建议使用统一ID
        # @type VpcId: String
        # @param FlowLogId: 流日志唯一ID
        # @type FlowLogId: String
        # @param FlowLogName: 流日志实例名字
        # @type FlowLogName: String
        # @param ResourceType: 流日志所属资源类型，VPC|SUBNET|NETWORKINTERFACE
        # @type ResourceType: String
        # @param ResourceId: 资源唯一ID
        # @type ResourceId: String
        # @param TrafficType: 流日志采集类型，ACCEPT|REJECT|ALL
        # @type TrafficType: String
        # @param CloudLogId: 流日志存储ID
        # @type CloudLogId: String
        # @param CloudLogState: 流日志存储ID状态
        # @type CloudLogState: String
        # @param OrderField: 按某个字段排序,支持字段：flowLogName,createTime，默认按createTime
        # @type OrderField: String
        # @param OrderDirection: 升序（asc）还是降序（desc）,默认：desc
        # @type OrderDirection: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 每页行数，默认为10
        # @type Limit: Integer
        # @param Filters: 过滤条件，参数不支持同时指定FlowLogIds和Filters。
        # <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        # <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        # @type Filters: :class:`Tencentcloud::Vpc.v20170312.models.Filter`
        # @param CloudLogRegion: 流日志存储ID对应的地域信息
        # @type CloudLogRegion: String

        attr_accessor :VpcId, :FlowLogId, :FlowLogName, :ResourceType, :ResourceId, :TrafficType, :CloudLogId, :CloudLogState, :OrderField, :OrderDirection, :Offset, :Limit, :Filters, :CloudLogRegion
        
        def initialize(vpcid=nil, flowlogid=nil, flowlogname=nil, resourcetype=nil, resourceid=nil, traffictype=nil, cloudlogid=nil, cloudlogstate=nil, orderfield=nil, orderdirection=nil, offset=nil, limit=nil, filters=nil, cloudlogregion=nil)
          @VpcId = vpcid
          @FlowLogId = flowlogid
          @FlowLogName = flowlogname
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @TrafficType = traffictype
          @CloudLogId = cloudlogid
          @CloudLogState = cloudlogstate
          @OrderField = orderfield
          @OrderDirection = orderdirection
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @CloudLogRegion = cloudlogregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @FlowLogId = params['FlowLogId']
          @FlowLogName = params['FlowLogName']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @TrafficType = params['TrafficType']
          @CloudLogId = params['CloudLogId']
          @CloudLogState = params['CloudLogState']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
          @CloudLogRegion = params['CloudLogRegion']
        end
      end

      # DescribeFlowLogs返回参数结构体
      class DescribeFlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param FlowLog: 流日志实例集合
        # @type FlowLog: Array
        # @param TotalNum: 流日志总数目
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowLog, :TotalNum, :RequestId
        
        def initialize(flowlog=nil, totalnum=nil, requestid=nil)
          @FlowLog = flowlog
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowLog'].nil?
            @FlowLog = []
            params['FlowLog'].each do |i|
              flowlog_tmp = FlowLog.new
              flowlog_tmp.deserialize(i)
              @FlowLog << flowlog_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayFlowMonitorDetail请求参数结构体
      class DescribeGatewayFlowMonitorDetailRequest < TencentCloud::Common::AbstractModel
        # @param TimePoint: 时间点。表示要查询这分钟内的明细。如：`2019-02-28 18:15:20`，将查询 `18:15` 这一分钟内的明细。
        # @type TimePoint: String
        # @param VpnId: VPN网关实例ID，形如：`vpn-ltjahce6`。
        # @type VpnId: String
        # @param DirectConnectGatewayId: 专线网关实例ID，形如：`dcg-ltjahce6`。
        # @type DirectConnectGatewayId: String
        # @param PeeringConnectionId: 对等连接实例ID，形如：`pcx-ltjahce6`。
        # @type PeeringConnectionId: String
        # @param NatId: NAT网关实例ID，形如：`nat-ltjahce6`。
        # @type NatId: String
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 返回数量。
        # @type Limit: Integer
        # @param OrderField: 排序字段。支持 `InPkg` `OutPkg` `InTraffic` `OutTraffic`。
        # @type OrderField: String
        # @param OrderDirection: 排序方法。顺序：`ASC`，倒序：`DESC`。
        # @type OrderDirection: String

        attr_accessor :TimePoint, :VpnId, :DirectConnectGatewayId, :PeeringConnectionId, :NatId, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(timepoint=nil, vpnid=nil, directconnectgatewayid=nil, peeringconnectionid=nil, natid=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @TimePoint = timepoint
          @VpnId = vpnid
          @DirectConnectGatewayId = directconnectgatewayid
          @PeeringConnectionId = peeringconnectionid
          @NatId = natid
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @TimePoint = params['TimePoint']
          @VpnId = params['VpnId']
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @PeeringConnectionId = params['PeeringConnectionId']
          @NatId = params['NatId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeGatewayFlowMonitorDetail返回参数结构体
      class DescribeGatewayFlowMonitorDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param GatewayFlowMonitorDetailSet: 网关流量监控明细。
        # @type GatewayFlowMonitorDetailSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :GatewayFlowMonitorDetailSet, :RequestId
        
        def initialize(totalcount=nil, gatewayflowmonitordetailset=nil, requestid=nil)
          @TotalCount = totalcount
          @GatewayFlowMonitorDetailSet = gatewayflowmonitordetailset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GatewayFlowMonitorDetailSet'].nil?
            @GatewayFlowMonitorDetailSet = []
            params['GatewayFlowMonitorDetailSet'].each do |i|
              gatewayflowmonitordetail_tmp = GatewayFlowMonitorDetail.new
              gatewayflowmonitordetail_tmp.deserialize(i)
              @GatewayFlowMonitorDetailSet << gatewayflowmonitordetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayFlowQos请求参数结构体
      class DescribeGatewayFlowQosRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID，目前我们支持的网关实例类型有，
        # 专线网关实例ID，形如，`dcg-ltjahce6`；
        # Nat网关实例ID，形如，`nat-ltjahce6`；
        # VPN网关实例ID，形如，`vpn-ltjahce6`。
        # @type GatewayId: String
        # @param IpAddresses: 限流的云服务器内网IP。
        # @type IpAddresses: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :GatewayId, :IpAddresses, :Offset, :Limit
        
        def initialize(gatewayid=nil, ipaddresses=nil, offset=nil, limit=nil)
          @GatewayId = gatewayid
          @IpAddresses = ipaddresses
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @IpAddresses = params['IpAddresses']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGatewayFlowQos返回参数结构体
      class DescribeGatewayFlowQosResponse < TencentCloud::Common::AbstractModel
        # @param GatewayQosSet: 实例详细信息列表。
        # @type GatewayQosSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayQosSet, :TotalCount, :RequestId
        
        def initialize(gatewayqosset=nil, totalcount=nil, requestid=nil)
          @GatewayQosSet = gatewayqosset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GatewayQosSet'].nil?
            @GatewayQosSet = []
            params['GatewayQosSet'].each do |i|
              gatewayqos_tmp = GatewayQos.new
              gatewayqos_tmp.deserialize(i)
              @GatewayQosSet << gatewayqos_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHaVips请求参数结构体
      class DescribeHaVipsRequest < TencentCloud::Common::AbstractModel
        # @param HaVipIds: `HAVIP`唯一`ID`，形如：`havip-9o233uri`。
        # @type HaVipIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定`HaVipIds`和`Filters`。
        # <li>havip-id - String - `HAVIP`唯一`ID`，形如：`havip-9o233uri`。</li>
        # <li>havip-name - String - `HAVIP`名称。</li>
        # <li>vpc-id - String - `HAVIP`所在私有网络`ID`。</li>
        # <li>subnet-id - String - `HAVIP`所在子网`ID`。</li>
        # <li>vip - String - `HAVIP`的地址`VIP`。</li>
        # <li>address-ip - String - `HAVIP`绑定的弹性公网`IP`。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :HaVipIds, :Filters, :Offset, :Limit
        
        def initialize(havipids=nil, filters=nil, offset=nil, limit=nil)
          @HaVipIds = havipids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @HaVipIds = params['HaVipIds']
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

      # DescribeHaVips返回参数结构体
      class DescribeHaVipsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param HaVipSet: `HAVIP`对象数组。
        # @type HaVipSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HaVipSet, :RequestId
        
        def initialize(totalcount=nil, havipset=nil, requestid=nil)
          @TotalCount = totalcount
          @HaVipSet = havipset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HaVipSet'].nil?
            @HaVipSet = []
            params['HaVipSet'].each do |i|
              havip_tmp = HaVip.new
              havip_tmp.deserialize(i)
              @HaVipSet << havip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIp6Addresses请求参数结构体
      class DescribeIp6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param Ip6AddressIds: 标识 IPV6 的唯一 ID 列表。IPV6 唯一 ID 形如：`eip-11112222`。参数不支持同时指定`Ip6AddressIds`和`Filters`。
        # @type Ip6AddressIds: Array
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AddressIds`和`Filters`。详细的过滤条件如下：
        # <li> address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。</li>
        # <li> network-interface-id - String - 是否必填：否 - （过滤条件）按照弹性网卡的唯一ID过滤。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Limit: Integer

        attr_accessor :Ip6AddressIds, :Filters, :Offset, :Limit
        
        def initialize(ip6addressids=nil, filters=nil, offset=nil, limit=nil)
          @Ip6AddressIds = ip6addressids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Ip6AddressIds = params['Ip6AddressIds']
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

      # DescribeIp6Addresses返回参数结构体
      class DescribeIp6AddressesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 IPV6 数量。
        # @type TotalCount: Integer
        # @param AddressSet: IPV6 详细信息列表。
        # @type AddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AddressSet, :RequestId
        
        def initialize(totalcount=nil, addressset=nil, requestid=nil)
          @TotalCount = totalcount
          @AddressSet = addressset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIp6TranslatorQuota请求参数结构体
      class DescribeIp6TranslatorQuotaRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorIds: 待查询IPV6转换实例的唯一ID列表，形如ip6-xxxxxxxx
        # @type Ip6TranslatorIds: Array

        attr_accessor :Ip6TranslatorIds
        
        def initialize(ip6translatorids=nil)
          @Ip6TranslatorIds = ip6translatorids
        end

        def deserialize(params)
          @Ip6TranslatorIds = params['Ip6TranslatorIds']
        end
      end

      # DescribeIp6TranslatorQuota返回参数结构体
      class DescribeIp6TranslatorQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaSet: 账户在指定地域的IPV6转换实例及规则配额信息
        # QUOTAID属性是TOTAL_TRANSLATOR_QUOTA，表示账户在指定地域的IPV6转换实例配额信息；QUOTAID属性是IPV6转换实例唯一ID（形如ip6-xxxxxxxx），表示账户在该转换实例允许创建的转换规则配额
        # @type QuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaSet, :RequestId
        
        def initialize(quotaset=nil, requestid=nil)
          @QuotaSet = quotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @QuotaSet << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIp6Translators请求参数结构体
      class DescribeIp6TranslatorsRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorIds: IPV6转换实例唯一ID数组，形如ip6-xxxxxxxx
        # @type Ip6TranslatorIds: Array
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`Ip6TranslatorIds`和`Filters`。详细的过滤条件如下：
        # <li> ip6-translator-id - String - 是否必填：否 - （过滤条件）按照IPV6转换实例的唯一ID过滤,形如ip6-xxxxxxx。</li>
        # <li> ip6-translator-vip6 - String - 是否必填：否 - （过滤条件）按照IPV6地址过滤。不支持模糊过滤。</li>
        # <li> ip6-translator-name - String - 是否必填：否 - （过滤条件）按照IPV6转换实例名称过滤。不支持模糊过滤。</li>
        # <li> ip6-translator-status - String - 是否必填：否 - （过滤条件）按照IPV6转换实例的状态过滤。状态取值范围为"CREATING","RUNNING","DELETING","MODIFYING"
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Limit: Integer

        attr_accessor :Ip6TranslatorIds, :Filters, :Offset, :Limit
        
        def initialize(ip6translatorids=nil, filters=nil, offset=nil, limit=nil)
          @Ip6TranslatorIds = ip6translatorids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Ip6TranslatorIds = params['Ip6TranslatorIds']
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

      # DescribeIp6Translators返回参数结构体
      class DescribeIp6TranslatorsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的IPV6转换实例数量。
        # @type TotalCount: Integer
        # @param Ip6TranslatorSet: 符合过滤条件的IPV6转换实例详细信息
        # @type Ip6TranslatorSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Ip6TranslatorSet, :RequestId
        
        def initialize(totalcount=nil, ip6translatorset=nil, requestid=nil)
          @TotalCount = totalcount
          @Ip6TranslatorSet = ip6translatorset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Ip6TranslatorSet'].nil?
            @Ip6TranslatorSet = []
            params['Ip6TranslatorSet'].each do |i|
              ip6translator_tmp = Ip6Translator.new
              ip6translator_tmp.deserialize(i)
              @Ip6TranslatorSet << ip6translator_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpGeolocationDatabaseUrl请求参数结构体
      class DescribeIpGeolocationDatabaseUrlRequest < TencentCloud::Common::AbstractModel
        # @param Type: IP地理位置库协议类型，目前仅支持"ipv4"。
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # DescribeIpGeolocationDatabaseUrl返回参数结构体
      class DescribeIpGeolocationDatabaseUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownLoadUrl: IP地理位置库下载链接地址。
        # @type DownLoadUrl: String
        # @param ExpiredAt: 链接到期时间。按照`ISO8601`标准表示，并且使用`UTC`时间。
        # @type ExpiredAt: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownLoadUrl, :ExpiredAt, :RequestId
        
        def initialize(downloadurl=nil, expiredat=nil, requestid=nil)
          @DownLoadUrl = downloadurl
          @ExpiredAt = expiredat
          @RequestId = requestid
        end

        def deserialize(params)
          @DownLoadUrl = params['DownLoadUrl']
          @ExpiredAt = params['ExpiredAt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpGeolocationInfos请求参数结构体
      class DescribeIpGeolocationInfosRequest < TencentCloud::Common::AbstractModel
        # @param AddressIps: 需查询的IP地址列表，目前仅支持IPv4地址。查询的IP地址数量上限为100个。
        # @type AddressIps: Array
        # @param Fields: 需查询的IP地址的字段信息。
        # @type Fields: :class:`Tencentcloud::Vpc.v20170312.models.IpField`

        attr_accessor :AddressIps, :Fields
        
        def initialize(addressips=nil, fields=nil)
          @AddressIps = addressips
          @Fields = fields
        end

        def deserialize(params)
          @AddressIps = params['AddressIps']
          unless params['Fields'].nil?
            @Fields = IpField.new
            @Fields.deserialize(params['Fields'])
          end
        end
      end

      # DescribeIpGeolocationInfos返回参数结构体
      class DescribeIpGeolocationInfosResponse < TencentCloud::Common::AbstractModel
        # @param AddressInfo: IP地址信息列表。
        # @type AddressInfo: Array
        # @param Total: IP地址信息个数。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressInfo, :Total, :RequestId
        
        def initialize(addressinfo=nil, total=nil, requestid=nil)
          @AddressInfo = addressinfo
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AddressInfo'].nil?
            @AddressInfo = []
            params['AddressInfo'].each do |i|
              ipgeolocationinfo_tmp = IpGeolocationInfo.new
              ipgeolocationinfo_tmp.deserialize(i)
              @AddressInfo << ipgeolocationinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLocalGateway请求参数结构体
      class DescribeLocalGatewayRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询条件：
        # vpc-id：按照VPCID过滤，local-gateway-name：按照本地网关名称过滤，名称支持模糊搜索，local-gateway-id：按照本地网关实例ID过滤，cdc-id：按照cdc实例ID过滤查询。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
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

      # DescribeLocalGateway返回参数结构体
      class DescribeLocalGatewayResponse < TencentCloud::Common::AbstractModel
        # @param LocalGatewaySet: 本地网关信息集合
        # @type LocalGatewaySet: Array
        # @param TotalCount: 本地网关总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LocalGatewaySet, :TotalCount, :RequestId
        
        def initialize(localgatewayset=nil, totalcount=nil, requestid=nil)
          @LocalGatewaySet = localgatewayset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LocalGatewaySet'].nil?
            @LocalGatewaySet = []
            params['LocalGatewaySet'].each do |i|
              localgateway_tmp = LocalGateway.new
              localgateway_tmp.deserialize(i)
              @LocalGatewaySet << localgateway_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatGatewayDestinationIpPortTranslationNatRules请求参数结构体
      class DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayIds: NAT网关ID。
        # @type NatGatewayIds: Array
        # @param Filters: 过滤条件:
        # 参数不支持同时指定NatGatewayIds和Filters。
        # <li> nat-gateway-id，NAT网关的ID，如`nat-0yi4hekt`</li>
        # <li> vpc-id，私有网络VPC的ID，如`vpc-0yi4hekt`</li>
        # <li> public-ip-address， 弹性IP，如`139.199.232.238`。</li>
        # <li>public-port， 公网端口。</li>
        # <li>private-ip-address， 内网IP，如`10.0.0.1`。</li>
        # <li>private-port， 内网端口。</li>
        # <li>description，规则描述。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :NatGatewayIds, :Filters, :Offset, :Limit
        
        def initialize(natgatewayids=nil, filters=nil, offset=nil, limit=nil)
          @NatGatewayIds = natgatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NatGatewayIds = params['NatGatewayIds']
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

      # DescribeNatGatewayDestinationIpPortTranslationNatRules返回参数结构体
      class DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse < TencentCloud::Common::AbstractModel
        # @param NatGatewayDestinationIpPortTranslationNatRuleSet: NAT网关端口转发规则对象数组。
        # @type NatGatewayDestinationIpPortTranslationNatRuleSet: Array
        # @param TotalCount: 符合条件的NAT网关端口转发规则对象数目。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatGatewayDestinationIpPortTranslationNatRuleSet, :TotalCount, :RequestId
        
        def initialize(natgatewaydestinationipporttranslationnatruleset=nil, totalcount=nil, requestid=nil)
          @NatGatewayDestinationIpPortTranslationNatRuleSet = natgatewaydestinationipporttranslationnatruleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatGatewayDestinationIpPortTranslationNatRuleSet'].nil?
            @NatGatewayDestinationIpPortTranslationNatRuleSet = []
            params['NatGatewayDestinationIpPortTranslationNatRuleSet'].each do |i|
              natgatewaydestinationipporttranslationnatrule_tmp = NatGatewayDestinationIpPortTranslationNatRule.new
              natgatewaydestinationipporttranslationnatrule_tmp.deserialize(i)
              @NatGatewayDestinationIpPortTranslationNatRuleSet << natgatewaydestinationipporttranslationnatrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatGatewayDirectConnectGatewayRoute请求参数结构体
      class DescribeNatGatewayDirectConnectGatewayRouteRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: nat的唯一标识
        # @type NatGatewayId: String
        # @param VpcId: vpc的唯一标识
        # @type VpcId: String
        # @param Limit: 0到200之间
        # @type Limit: Integer
        # @param Offset: 大于0
        # @type Offset: Integer

        attr_accessor :NatGatewayId, :VpcId, :Limit, :Offset
        
        def initialize(natgatewayid=nil, vpcid=nil, limit=nil, offset=nil)
          @NatGatewayId = natgatewayid
          @VpcId = vpcid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @VpcId = params['VpcId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNatGatewayDirectConnectGatewayRoute返回参数结构体
      class DescribeNatGatewayDirectConnectGatewayRouteResponse < TencentCloud::Common::AbstractModel
        # @param NatDirectConnectGatewayRouteSet: 路由数据
        # @type NatDirectConnectGatewayRouteSet: Array
        # @param Total: 路由总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatDirectConnectGatewayRouteSet, :Total, :RequestId
        
        def initialize(natdirectconnectgatewayrouteset=nil, total=nil, requestid=nil)
          @NatDirectConnectGatewayRouteSet = natdirectconnectgatewayrouteset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatDirectConnectGatewayRouteSet'].nil?
            @NatDirectConnectGatewayRouteSet = []
            params['NatDirectConnectGatewayRouteSet'].each do |i|
              natdirectconnectgatewayroute_tmp = NatDirectConnectGatewayRoute.new
              natdirectconnectgatewayroute_tmp.deserialize(i)
              @NatDirectConnectGatewayRouteSet << natdirectconnectgatewayroute_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatGatewaySourceIpTranslationNatRules请求参数结构体
      class DescribeNatGatewaySourceIpTranslationNatRulesRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关统一 ID，形如：`nat-123xx454`。
        # @type NatGatewayId: String
        # @param Filters: 过滤条件:
        # <li> resource-id，Subnet的ID或者Cvm ID，如`subnet-0yi4hekt`</li>
        # <li> public-ip-address，弹性IP，如`139.199.232.238`</li>
        # <li>description，规则描述。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :NatGatewayId, :Filters, :Offset, :Limit
        
        def initialize(natgatewayid=nil, filters=nil, offset=nil, limit=nil)
          @NatGatewayId = natgatewayid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
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

      # DescribeNatGatewaySourceIpTranslationNatRules返回参数结构体
      class DescribeNatGatewaySourceIpTranslationNatRulesResponse < TencentCloud::Common::AbstractModel
        # @param SourceIpTranslationNatRuleSet: NAT网关SNAT规则对象数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceIpTranslationNatRuleSet: Array
        # @param TotalCount: 符合条件的NAT网关端口转发规则对象数目。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SourceIpTranslationNatRuleSet, :TotalCount, :RequestId
        
        def initialize(sourceiptranslationnatruleset=nil, totalcount=nil, requestid=nil)
          @SourceIpTranslationNatRuleSet = sourceiptranslationnatruleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SourceIpTranslationNatRuleSet'].nil?
            @SourceIpTranslationNatRuleSet = []
            params['SourceIpTranslationNatRuleSet'].each do |i|
              sourceiptranslationnatrule_tmp = SourceIpTranslationNatRule.new
              sourceiptranslationnatrule_tmp.deserialize(i)
              @SourceIpTranslationNatRuleSet << sourceiptranslationnatrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatGateways请求参数结构体
      class DescribeNatGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayIds: NAT网关统一 ID，形如：`nat-123xx454`。
        # @type NatGatewayIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定NatGatewayIds和Filters。
        # <li>nat-gateway-id - String - （过滤条件）协议端口模板实例ID，形如：`nat-123xx454`。</li>
        # <li>vpc-id - String - （过滤条件）私有网络 唯一ID，形如：`vpc-123xx454`。</li>
        # <li>nat-gateway-name - String - （过滤条件）协议端口模板实例ID，形如：`test_nat`。</li>
        # <li>tag-key - String - （过滤条件）标签键，形如：`test-key`。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :NatGatewayIds, :Filters, :Offset, :Limit
        
        def initialize(natgatewayids=nil, filters=nil, offset=nil, limit=nil)
          @NatGatewayIds = natgatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NatGatewayIds = params['NatGatewayIds']
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

      # DescribeNatGateways返回参数结构体
      class DescribeNatGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param NatGatewaySet: NAT网关对象数组。
        # @type NatGatewaySet: Array
        # @param TotalCount: 符合条件的NAT网关对象个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatGatewaySet, :TotalCount, :RequestId
        
        def initialize(natgatewayset=nil, totalcount=nil, requestid=nil)
          @NatGatewaySet = natgatewayset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatGatewaySet'].nil?
            @NatGatewaySet = []
            params['NatGatewaySet'].each do |i|
              natgateway_tmp = NatGateway.new
              natgateway_tmp.deserialize(i)
              @NatGatewaySet << natgateway_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetDetectStates请求参数结构体
      class DescribeNetDetectStatesRequest < TencentCloud::Common::AbstractModel
        # @param NetDetectIds: 网络探测实例`ID`数组。形如：[`netd-12345678`]
        # @type NetDetectIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定NetDetectIds和Filters。
        # <li>net-detect-id - String - （过滤条件）网络探测实例ID，形如：netd-12345678</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :NetDetectIds, :Filters, :Offset, :Limit
        
        def initialize(netdetectids=nil, filters=nil, offset=nil, limit=nil)
          @NetDetectIds = netdetectids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NetDetectIds = params['NetDetectIds']
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

      # DescribeNetDetectStates返回参数结构体
      class DescribeNetDetectStatesResponse < TencentCloud::Common::AbstractModel
        # @param NetDetectStateSet: 符合条件的网络探测验证结果对象数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetDetectStateSet: Array
        # @param TotalCount: 符合条件的网络探测验证结果对象数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetectStateSet, :TotalCount, :RequestId
        
        def initialize(netdetectstateset=nil, totalcount=nil, requestid=nil)
          @NetDetectStateSet = netdetectstateset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetectStateSet'].nil?
            @NetDetectStateSet = []
            params['NetDetectStateSet'].each do |i|
              netdetectstate_tmp = NetDetectState.new
              netdetectstate_tmp.deserialize(i)
              @NetDetectStateSet << netdetectstate_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetDetects请求参数结构体
      class DescribeNetDetectsRequest < TencentCloud::Common::AbstractModel
        # @param NetDetectIds: 网络探测实例`ID`数组。形如：[`netd-12345678`]
        # @type NetDetectIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定NetDetectIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-12345678</li>
        # <li>net-detect-id - String - （过滤条件）网络探测实例ID，形如：netd-12345678</li>
        # <li>subnet-id - String - （过滤条件）子网实例ID，形如：subnet-12345678</li>
        # <li>net-detect-name - String - （过滤条件）网络探测名称</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :NetDetectIds, :Filters, :Offset, :Limit
        
        def initialize(netdetectids=nil, filters=nil, offset=nil, limit=nil)
          @NetDetectIds = netdetectids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NetDetectIds = params['NetDetectIds']
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

      # DescribeNetDetects返回参数结构体
      class DescribeNetDetectsResponse < TencentCloud::Common::AbstractModel
        # @param NetDetectSet: 符合条件的网络探测对象数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetDetectSet: Array
        # @param TotalCount: 符合条件的网络探测对象数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetectSet, :TotalCount, :RequestId
        
        def initialize(netdetectset=nil, totalcount=nil, requestid=nil)
          @NetDetectSet = netdetectset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetectSet'].nil?
            @NetDetectSet = []
            params['NetDetectSet'].each do |i|
              netdetect_tmp = NetDetect.new
              netdetect_tmp.deserialize(i)
              @NetDetectSet << netdetect_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkAclQuintupleEntries请求参数结构体
      class DescribeNetworkAclQuintupleEntriesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。形如：acl-12345678。
        # @type NetworkAclId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最小值为1，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件，参数不支持同时指定`HaVipIds`和`Filters`。
        # <li>protocol - String - 协议，形如：`TCP`。</li>
        # <li>description - String - 描述。</li>
        # <li>destination-cidr - String - 目的CIDR， 形如：'192.168.0.0/24'。</li>
        # <li>source-cidr- String - 源CIDR， 形如：'192.168.0.0/24'。</li>
        # <li>action - String - 动作，形如ACCEPT或DROP。</li>
        # <li>network-acl-quintuple-entry-id - String - 五元组唯一ID，形如：'acli45-ahnu4rv5'。</li>
        # <li>network-acl-direction - String - 方向，形如：'INGRESS'或'EGRESS'。</li>
        # @type Filters: Array

        attr_accessor :NetworkAclId, :Offset, :Limit, :Filters
        
        def initialize(networkaclid=nil, offset=nil, limit=nil, filters=nil)
          @NetworkAclId = networkaclid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
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

      # DescribeNetworkAclQuintupleEntries返回参数结构体
      class DescribeNetworkAclQuintupleEntriesResponse < TencentCloud::Common::AbstractModel
        # @param NetworkAclQuintupleSet: 网络ACL条目列表（NetworkAclTuple5Entry）
        # @type NetworkAclQuintupleSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkAclQuintupleSet, :TotalCount, :RequestId
        
        def initialize(networkaclquintupleset=nil, totalcount=nil, requestid=nil)
          @NetworkAclQuintupleSet = networkaclquintupleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkAclQuintupleSet'].nil?
            @NetworkAclQuintupleSet = []
            params['NetworkAclQuintupleSet'].each do |i|
              networkaclquintupleentry_tmp = NetworkAclQuintupleEntry.new
              networkaclquintupleentry_tmp.deserialize(i)
              @NetworkAclQuintupleSet << networkaclquintupleentry_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkAcls请求参数结构体
      class DescribeNetworkAclsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，参数不支持同时指定NetworkAclIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-12345678。</li>
        # <li>network-acl-id - String - （过滤条件）网络ACL实例ID，形如：acl-12345678。</li>
        # <li>network-acl-name - String - （过滤条件）网络ACL实例名称。</li>
        # @type Filters: Array
        # @param NetworkAclIds: 网络ACL实例ID数组。形如：[acl-12345678]。每次请求的实例的上限为100。参数不支持同时指定NetworkAclIds和Filters。
        # @type NetworkAclIds: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最小值为1，最大值为100。
        # @type Limit: Integer

        attr_accessor :Filters, :NetworkAclIds, :Offset, :Limit
        
        def initialize(filters=nil, networkaclids=nil, offset=nil, limit=nil)
          @Filters = filters
          @NetworkAclIds = networkaclids
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
          @NetworkAclIds = params['NetworkAclIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeNetworkAcls返回参数结构体
      class DescribeNetworkAclsResponse < TencentCloud::Common::AbstractModel
        # @param NetworkAclSet: 实例详细信息列表。
        # @type NetworkAclSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkAclSet, :TotalCount, :RequestId
        
        def initialize(networkaclset=nil, totalcount=nil, requestid=nil)
          @NetworkAclSet = networkaclset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkAclSet'].nil?
            @NetworkAclSet = []
            params['NetworkAclSet'].each do |i|
              networkacl_tmp = NetworkAcl.new
              networkacl_tmp.deserialize(i)
              @NetworkAclSet << networkacl_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkInterfaceLimit请求参数结构体
      class DescribeNetworkInterfaceLimitRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 要查询的CVM实例ID或弹性网卡ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeNetworkInterfaceLimit返回参数结构体
      class DescribeNetworkInterfaceLimitResponse < TencentCloud::Common::AbstractModel
        # @param EniQuantity: 标准型弹性网卡配额
        # @type EniQuantity: Integer
        # @param EniPrivateIpAddressQuantity: 每个标准型弹性网卡可以分配的IP配额
        # @type EniPrivateIpAddressQuantity: Integer
        # @param ExtendEniQuantity: 扩展型网卡配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendEniQuantity: Integer
        # @param ExtendEniPrivateIpAddressQuantity: 每个扩展型弹性网卡可以分配的IP配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendEniPrivateIpAddressQuantity: Integer
        # @param SubEniQuantity: 中继网卡配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubEniQuantity: Integer
        # @param SubEniPrivateIpAddressQuantity: 每个中继网卡可以分配的IP配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubEniPrivateIpAddressQuantity: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EniQuantity, :EniPrivateIpAddressQuantity, :ExtendEniQuantity, :ExtendEniPrivateIpAddressQuantity, :SubEniQuantity, :SubEniPrivateIpAddressQuantity, :RequestId
        
        def initialize(eniquantity=nil, eniprivateipaddressquantity=nil, extendeniquantity=nil, extendeniprivateipaddressquantity=nil, subeniquantity=nil, subeniprivateipaddressquantity=nil, requestid=nil)
          @EniQuantity = eniquantity
          @EniPrivateIpAddressQuantity = eniprivateipaddressquantity
          @ExtendEniQuantity = extendeniquantity
          @ExtendEniPrivateIpAddressQuantity = extendeniprivateipaddressquantity
          @SubEniQuantity = subeniquantity
          @SubEniPrivateIpAddressQuantity = subeniprivateipaddressquantity
          @RequestId = requestid
        end

        def deserialize(params)
          @EniQuantity = params['EniQuantity']
          @EniPrivateIpAddressQuantity = params['EniPrivateIpAddressQuantity']
          @ExtendEniQuantity = params['ExtendEniQuantity']
          @ExtendEniPrivateIpAddressQuantity = params['ExtendEniPrivateIpAddressQuantity']
          @SubEniQuantity = params['SubEniQuantity']
          @SubEniPrivateIpAddressQuantity = params['SubEniPrivateIpAddressQuantity']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkInterfaces请求参数结构体
      class DescribeNetworkInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceIds: 弹性网卡实例ID查询。形如：eni-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定NetworkInterfaceIds和Filters。
        # @type NetworkInterfaceIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定NetworkInterfaceIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        # <li>subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。</li>
        # <li>network-interface-id - String - （过滤条件）弹性网卡实例ID，形如：eni-5k56k7k7。</li>
        # <li>attachment.instance-id - String - （过滤条件）绑定的云服务器实例ID，形如：ins-3nqpdn3i。</li>
        # <li>groups.security-group-id - String - （过滤条件）绑定的安全组实例ID，例如：sg-f9ekbxeq。</li>
        # <li>network-interface-name - String - （过滤条件）网卡实例名称。</li>
        # <li>network-interface-description - String - （过滤条件）网卡实例描述。</li>
        # <li>address-ip - String - （过滤条件）内网IPv4地址，单IP后缀模糊匹配，多IP精确匹配。可以与`ip-exact-match`配合做单IP的精确匹配查询。</li>
        # <li>ip-exact-match - Boolean - （过滤条件）内网IPv4精确匹配查询，存在多值情况，只取第一个。</li>
        # <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。使用请参考示例2</li>
        # <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。</li>
        # <li>is-primary - Boolean - 是否必填：否 - （过滤条件）按照是否主网卡进行过滤。值为true时，仅过滤主网卡；值为false时，仅过滤辅助网卡；此过滤参数未提供时，同时过滤主网卡和辅助网卡。</li>
        # <li>eni-type - String -是否必填：否- （过滤条件）按照网卡类型进行过滤。“0”-辅助网卡，“1”-主网卡，“2”：中继网卡</li>
        # <li>eni-qos - String -是否必填：否- （过滤条件）按照网卡服务质量进行过滤。“AG”-服务质量云铜，“AU”-服务质量为银</li>
        # <li>address-ipv6 - String - 是否必填：否 -（过滤条件）内网IPv6地址过滤，支持多ipv6地址查询，如果和address-ip一起使用取交集。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :NetworkInterfaceIds, :Filters, :Offset, :Limit
        
        def initialize(networkinterfaceids=nil, filters=nil, offset=nil, limit=nil)
          @NetworkInterfaceIds = networkinterfaceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NetworkInterfaceIds = params['NetworkInterfaceIds']
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

      # DescribeNetworkInterfaces返回参数结构体
      class DescribeNetworkInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceSet: 实例详细信息列表。
        # @type NetworkInterfaceSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkInterfaceSet, :TotalCount, :RequestId
        
        def initialize(networkinterfaceset=nil, totalcount=nil, requestid=nil)
          @NetworkInterfaceSet = networkinterfaceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkInterfaceSet'].nil?
            @NetworkInterfaceSet = []
            params['NetworkInterfaceSet'].each do |i|
              networkinterface_tmp = NetworkInterface.new
              networkinterface_tmp.deserialize(i)
              @NetworkInterfaceSet << networkinterface_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductQuota请求参数结构体
      class DescribeProductQuotaRequest < TencentCloud::Common::AbstractModel
        # @param Product: 查询的网络产品名称，可查询的产品有：vpc、ccn、vpn、dc、dfw、clb、eip。
        # @type Product: String

        attr_accessor :Product
        
        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeProductQuota返回参数结构体
      class DescribeProductQuotaResponse < TencentCloud::Common::AbstractModel
        # @param ProductQuotaSet: ProductQuota对象数组
        # @type ProductQuotaSet: Array
        # @param TotalCount: 符合条件的产品类型个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductQuotaSet, :TotalCount, :RequestId
        
        def initialize(productquotaset=nil, totalcount=nil, requestid=nil)
          @ProductQuotaSet = productquotaset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProductQuotaSet'].nil?
            @ProductQuotaSet = []
            params['ProductQuotaSet'].each do |i|
              productquota_tmp = ProductQuota.new
              productquota_tmp.deserialize(i)
              @ProductQuotaSet << productquota_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRouteConflicts请求参数结构体
      class DescribeRouteConflictsRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param DestinationCidrBlocks: 要检查的与之冲突的目的端列表
        # @type DestinationCidrBlocks: Array

        attr_accessor :RouteTableId, :DestinationCidrBlocks
        
        def initialize(routetableid=nil, destinationcidrblocks=nil)
          @RouteTableId = routetableid
          @DestinationCidrBlocks = destinationcidrblocks
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @DestinationCidrBlocks = params['DestinationCidrBlocks']
        end
      end

      # DescribeRouteConflicts返回参数结构体
      class DescribeRouteConflictsResponse < TencentCloud::Common::AbstractModel
        # @param RouteConflictSet: 路由策略冲突列表
        # @type RouteConflictSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteConflictSet, :RequestId
        
        def initialize(routeconflictset=nil, requestid=nil)
          @RouteConflictSet = routeconflictset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RouteConflictSet'].nil?
            @RouteConflictSet = []
            params['RouteConflictSet'].each do |i|
              routeconflict_tmp = RouteConflict.new
              routeconflict_tmp.deserialize(i)
              @RouteConflictSet << routeconflict_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRouteTables请求参数结构体
      class DescribeRouteTablesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        # <li>route-table-id - String - （过滤条件）路由表实例ID。</li>
        # <li>route-table-name - String - （过滤条件）路由表名称。</li>
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        # <li>association.main - String - （过滤条件）是否主路由表。</li>
        # <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        # <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。</li>
        # @type Filters: Array
        # @param RouteTableIds: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableIds: Array
        # @param Offset: 偏移量。
        # @type Offset: String
        # @param Limit: 请求对象个数。
        # @type Limit: String

        attr_accessor :Filters, :RouteTableIds, :Offset, :Limit
        
        def initialize(filters=nil, routetableids=nil, offset=nil, limit=nil)
          @Filters = filters
          @RouteTableIds = routetableids
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
          @RouteTableIds = params['RouteTableIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRouteTables返回参数结构体
      class DescribeRouteTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RouteTableSet: 路由表对象。
        # @type RouteTableSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteTableSet, :RequestId
        
        def initialize(totalcount=nil, routetableset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteTableSet = routetableset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteTableSet'].nil?
            @RouteTableSet = []
            params['RouteTableSet'].each do |i|
              routetable_tmp = RouteTable.new
              routetable_tmp.deserialize(i)
              @RouteTableSet << routetable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupAssociationStatistics请求参数结构体
      class DescribeSecurityGroupAssociationStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupIds: Array

        attr_accessor :SecurityGroupIds
        
        def initialize(securitygroupids=nil)
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # DescribeSecurityGroupAssociationStatistics返回参数结构体
      class DescribeSecurityGroupAssociationStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupAssociationStatisticsSet: 安全组关联实例统计。
        # @type SecurityGroupAssociationStatisticsSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupAssociationStatisticsSet, :RequestId
        
        def initialize(securitygroupassociationstatisticsset=nil, requestid=nil)
          @SecurityGroupAssociationStatisticsSet = securitygroupassociationstatisticsset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupAssociationStatisticsSet'].nil?
            @SecurityGroupAssociationStatisticsSet = []
            params['SecurityGroupAssociationStatisticsSet'].each do |i|
              securitygroupassociationstatistics_tmp = SecurityGroupAssociationStatistics.new
              securitygroupassociationstatistics_tmp.deserialize(i)
              @SecurityGroupAssociationStatisticsSet << securitygroupassociationstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupLimits请求参数结构体
      class DescribeSecurityGroupLimitsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecurityGroupLimits返回参数结构体
      class DescribeSecurityGroupLimitsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupLimitSet: 用户安全组配额限制。
        # @type SecurityGroupLimitSet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupLimitSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupLimitSet, :RequestId
        
        def initialize(securitygrouplimitset=nil, requestid=nil)
          @SecurityGroupLimitSet = securitygrouplimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupLimitSet'].nil?
            @SecurityGroupLimitSet = SecurityGroupLimitSet.new
            @SecurityGroupLimitSet.deserialize(params['SecurityGroupLimitSet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupPolicies请求参数结构体
      class DescribeSecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param Filters: 过滤条件。
        # <li>security-group-id - String - 规则中的安全组ID。</li>
        # <li>ip - String - IP，支持IPV4和IPV6模糊匹配。</li>
        # <li>address-module - String - IP地址模板或IP地址组模板ID。</li>
        # <li>service-module - String - 协议端口模板或协议端口组模板ID。</li>
        # <li>protocol-type - String - 安全组策略支持的协议，可选值：`TCP`, `UDP`, `ICMP`, `ICMPV6`, `GRE`, `ALL`。</li>
        # <li>port - String - 是否必填：否 -协议端口，支持模糊匹配，值为`ALL`时，查询所有的端口。</li>
        # <li>poly - String - 协议策略，可选值：`ALL`，所有策略；`ACCEPT`，允许；`DROP`，拒绝。</li>
        # <li>direction - String - 协议规则，可选值：`ALL`，所有策略；`INBOUND`，入站规则；`OUTBOUND`，出站规则。</li>
        # <li>description - String - 协议描述，该过滤条件支持模糊匹配。</li>
        # @type Filters: Array

        attr_accessor :SecurityGroupId, :Filters
        
        def initialize(securitygroupid=nil, filters=nil)
          @SecurityGroupId = securitygroupid
          @Filters = filters
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
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

      # DescribeSecurityGroupPolicies返回参数结构体
      class DescribeSecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupPolicySet: 安全组规则集合。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupPolicySet, :RequestId
        
        def initialize(securitygrouppolicyset=nil, requestid=nil)
          @SecurityGroupPolicySet = securitygrouppolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupReferences请求参数结构体
      class DescribeSecurityGroupReferencesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全组实例ID数组。格式如：['sg-12345678']
        # @type SecurityGroupIds: Array

        attr_accessor :SecurityGroupIds
        
        def initialize(securitygroupids=nil)
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # DescribeSecurityGroupReferences返回参数结构体
      class DescribeSecurityGroupReferencesResponse < TencentCloud::Common::AbstractModel
        # @param ReferredSecurityGroupSet: 安全组被引用信息。
        # @type ReferredSecurityGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReferredSecurityGroupSet, :RequestId
        
        def initialize(referredsecuritygroupset=nil, requestid=nil)
          @ReferredSecurityGroupSet = referredsecuritygroupset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReferredSecurityGroupSet'].nil?
            @ReferredSecurityGroupSet = []
            params['ReferredSecurityGroupSet'].each do |i|
              referredsecuritygroup_tmp = ReferredSecurityGroup.new
              referredsecuritygroup_tmp.deserialize(i)
              @ReferredSecurityGroupSet << referredsecuritygroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroups请求参数结构体
      class DescribeSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。每次请求的实例的上限为100。参数不支持同时指定SecurityGroupIds和Filters。
        # @type SecurityGroupIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SecurityGroupIds和Filters。
        # <li>security-group-id - String - （过滤条件）安全组ID。</li>
        # <li>project-id - Integer - （过滤条件）项目ID。</li>
        # <li>security-group-name - String - （过滤条件）安全组名称。</li>
        # <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。使用请参考示例2。</li>
        # <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例3。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

        attr_accessor :SecurityGroupIds, :Filters, :Offset, :Limit
        
        def initialize(securitygroupids=nil, filters=nil, offset=nil, limit=nil)
          @SecurityGroupIds = securitygroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
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

      # DescribeSecurityGroups返回参数结构体
      class DescribeSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupSet: 安全组对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupSet, :TotalCount, :RequestId
        
        def initialize(securitygroupset=nil, totalcount=nil, requestid=nil)
          @SecurityGroupSet = securitygroupset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupSet'].nil?
            @SecurityGroupSet = []
            params['SecurityGroupSet'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @SecurityGroupSet << securitygroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceTemplateGroups请求参数结构体
      class DescribeServiceTemplateGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>service-template-group-name - String - （过滤条件）协议端口模板集合名称。</li>
        # <li>service-template-group-id - String - （过滤条件）协议端口模板集合实例ID，例如：ppmg-e6dy460g。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

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

      # DescribeServiceTemplateGroups返回参数结构体
      class DescribeServiceTemplateGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param ServiceTemplateGroupSet: 协议端口模板集合。
        # @type ServiceTemplateGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ServiceTemplateGroupSet, :RequestId
        
        def initialize(totalcount=nil, servicetemplategroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @ServiceTemplateGroupSet = servicetemplategroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceTemplateGroupSet'].nil?
            @ServiceTemplateGroupSet = []
            params['ServiceTemplateGroupSet'].each do |i|
              servicetemplategroup_tmp = ServiceTemplateGroup.new
              servicetemplategroup_tmp.deserialize(i)
              @ServiceTemplateGroupSet << servicetemplategroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceTemplates请求参数结构体
      class DescribeServiceTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>service-template-name - 协议端口模板名称。</li>
        # <li>service-template-id - 协议端口模板实例ID，例如：ppm-e6dy460g。</li>
        # <li>service-port- 协议端口。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

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

      # DescribeServiceTemplates返回参数结构体
      class DescribeServiceTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param ServiceTemplateSet: 协议端口模板对象。
        # @type ServiceTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ServiceTemplateSet, :RequestId
        
        def initialize(totalcount=nil, servicetemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ServiceTemplateSet = servicetemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceTemplateSet'].nil?
            @ServiceTemplateSet = []
            params['ServiceTemplateSet'].each do |i|
              servicetemplate_tmp = ServiceTemplate.new
              servicetemplate_tmp.deserialize(i)
              @ServiceTemplateSet << servicetemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnets请求参数结构体
      class DescribeSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param SubnetIds: 子网实例ID查询。形如：subnet-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定SubnetIds和Filters。
        # @type SubnetIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SubnetIds和Filters。
        # <li>subnet-id - String - （过滤条件）Subnet实例名称。</li>
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        # <li>cidr-block - String - （过滤条件）子网网段，形如: 192.168.1.0 。</li>
        # <li>is-default - Boolean - （过滤条件）是否是默认子网。</li>
        # <li>is-remote-vpc-snat - Boolean - （过滤条件）是否为VPC SNAT地址池子网。</li>
        # <li>subnet-name - String - （过滤条件）子网名称。</li>
        # <li>zone - String - （过滤条件）可用区。</li>
        # <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        # <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。</li>
        # <li>cdc-id - String - 是否必填：否 - （过滤条件）按照cdc信息进行过滤。过滤出来制定cdc下的子网。</li>
        # <li>is-cdc-subnet - String - 是否必填：否 - （过滤条件）按照是否是cdc子网进行过滤。取值：“0”-非cdc子网，“1”--cdc子网</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

        attr_accessor :SubnetIds, :Filters, :Offset, :Limit
        
        def initialize(subnetids=nil, filters=nil, offset=nil, limit=nil)
          @SubnetIds = subnetids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubnetIds = params['SubnetIds']
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

      # DescribeSubnets返回参数结构体
      class DescribeSubnetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param SubnetSet: 子网对象。
        # @type SubnetSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SubnetSet, :RequestId
        
        def initialize(totalcount=nil, subnetset=nil, requestid=nil)
          @TotalCount = totalcount
          @SubnetSet = subnetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SubnetSet'].nil?
            @SubnetSet = []
            params['SubnetSet'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetSet << subnet_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskResult请求参数结构体
      class DescribeTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。TaskId和DealName必填一个参数
        # @type TaskId: Integer
        # @param DealName: 计费订单号。TaskId和DealName必填一个参数
        # @type DealName: String

        attr_accessor :TaskId, :DealName
        
        def initialize(taskid=nil, dealname=nil)
          @TaskId = taskid
          @DealName = dealname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DealName = params['DealName']
        end
      end

      # DescribeTaskResult返回参数结构体
      class DescribeTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Result: 执行结果，包括"SUCCESS", "FAILED", "RUNNING"
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Result, :RequestId
        
        def initialize(taskid=nil, result=nil, requestid=nil)
          @TaskId = taskid
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplateLimits请求参数结构体
      class DescribeTemplateLimitsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTemplateLimits返回参数结构体
      class DescribeTemplateLimitsResponse < TencentCloud::Common::AbstractModel
        # @param TemplateLimit: 参数模板配额对象。
        # @type TemplateLimit: :class:`Tencentcloud::Vpc.v20170312.models.TemplateLimit`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateLimit, :RequestId
        
        def initialize(templatelimit=nil, requestid=nil)
          @TemplateLimit = templatelimit
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplateLimit'].nil?
            @TemplateLimit = TemplateLimit.new
            @TemplateLimit.deserialize(params['TemplateLimit'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTenantCcns请求参数结构体
      class DescribeTenantCcnsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTenantCcns返回参数结构体
      class DescribeTenantCcnsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeTrafficPackages请求参数结构体
      class DescribeTrafficPackagesRequest < TencentCloud::Common::AbstractModel
        # @param TrafficPackageIds: 共享流量包ID，支持批量
        # @type TrafficPackageIds: Array
        # @param Filters: 每次请求的`Filters`的上限为10。参数不支持同时指定`TrafficPackageIds`和`Filters`。详细的过滤条件如下：
        # <li> traffic-package_id - String - 是否必填：否 - （过滤条件）按照共享流量包的唯一标识ID过滤。</li>
        # <li> traffic-package-name - String - 是否必填：否 - （过滤条件）按照共享流量包名称过滤。不支持模糊过滤。</li>
        # <li> status - String - 是否必填：否 - （过滤条件）按照共享流量包状态过滤。可选状态：[AVAILABLE|EXPIRED|EXHAUSTED]</li>
        # @type Filters: Array
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Limit: 分页参数
        # @type Limit: Integer

        attr_accessor :TrafficPackageIds, :Filters, :Offset, :Limit
        
        def initialize(trafficpackageids=nil, filters=nil, offset=nil, limit=nil)
          @TrafficPackageIds = trafficpackageids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TrafficPackageIds = params['TrafficPackageIds']
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

      # DescribeTrafficPackages返回参数结构体
      class DescribeTrafficPackagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 按照条件查询出来的流量包数量
        # @type TotalCount: Integer
        # @param TrafficPackageSet: 流量包信息
        # @type TrafficPackageSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TrafficPackageSet, :RequestId
        
        def initialize(totalcount=nil, trafficpackageset=nil, requestid=nil)
          @TotalCount = totalcount
          @TrafficPackageSet = trafficpackageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TrafficPackageSet'].nil?
            @TrafficPackageSet = []
            params['TrafficPackageSet'].each do |i|
              trafficpackage_tmp = TrafficPackage.new
              trafficpackage_tmp.deserialize(i)
              @TrafficPackageSet << trafficpackage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcEndPoint请求参数结构体
      class DescribeVpcEndPointRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li> end-point-service-id- String - （过滤条件）终端节点服务ID。</li>
        # <li>end-point-name - String - （过滤条件）终端节点实例名称。</li>
        # <li> end-point-id- String - （过滤条件）终端节点实例ID。</li>
        # <li> vpc-id- String - （过滤条件）VPC实例ID。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 单页返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param EndPointId: 终端节点ID列表。
        # @type EndPointId: Array

        attr_accessor :Filters, :Offset, :Limit, :EndPointId
        
        def initialize(filters=nil, offset=nil, limit=nil, endpointid=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EndPointId = endpointid
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
          @EndPointId = params['EndPointId']
        end
      end

      # DescribeVpcEndPoint返回参数结构体
      class DescribeVpcEndPointResponse < TencentCloud::Common::AbstractModel
        # @param EndPointSet: 终端节点对象。
        # @type EndPointSet: Array
        # @param TotalCount: 符合查询条件的终端节点个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndPointSet, :TotalCount, :RequestId
        
        def initialize(endpointset=nil, totalcount=nil, requestid=nil)
          @EndPointSet = endpointset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EndPointSet'].nil?
            @EndPointSet = []
            params['EndPointSet'].each do |i|
              endpoint_tmp = EndPoint.new
              endpoint_tmp.deserialize(i)
              @EndPointSet << endpoint_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcEndPointService请求参数结构体
      class DescribeVpcEndPointServiceRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li> service-id- String - （过滤条件）终端节点服务唯一ID。</li>
        # <li>service-name - String - （过滤条件）终端节点实例名称。</li>
        # <li>service-instance-id - String - （过滤条件）后端服务的唯一ID，比如lb-xxx。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 单页返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param EndPointServiceIds: 终端节点服务ID。
        # @type EndPointServiceIds: Array

        attr_accessor :Filters, :Offset, :Limit, :EndPointServiceIds
        
        def initialize(filters=nil, offset=nil, limit=nil, endpointserviceids=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EndPointServiceIds = endpointserviceids
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
          @EndPointServiceIds = params['EndPointServiceIds']
        end
      end

      # DescribeVpcEndPointService返回参数结构体
      class DescribeVpcEndPointServiceResponse < TencentCloud::Common::AbstractModel
        # @param EndPointServiceSet: 终端节点服务对象数组。
        # @type EndPointServiceSet: Array
        # @param TotalCount: 符合查询条件的个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndPointServiceSet, :TotalCount, :RequestId
        
        def initialize(endpointserviceset=nil, totalcount=nil, requestid=nil)
          @EndPointServiceSet = endpointserviceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EndPointServiceSet'].nil?
            @EndPointServiceSet = []
            params['EndPointServiceSet'].each do |i|
              endpointservice_tmp = EndPointService.new
              endpointservice_tmp.deserialize(i)
              @EndPointServiceSet << endpointservice_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcEndPointServiceWhiteList请求参数结构体
      class DescribeVpcEndPointServiceWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 单页返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # <li> user-uin String - （过滤条件）用户UIN。</li>
        # <li> end-point-service-id String - （过滤条件）终端节点服务ID。</li>
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

      # DescribeVpcEndPointServiceWhiteList返回参数结构体
      class DescribeVpcEndPointServiceWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param VpcEndpointServiceUserSet: 白名单对象数组。
        # @type VpcEndpointServiceUserSet: Array
        # @param TotalCount: 符合条件的白名单个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcEndpointServiceUserSet, :TotalCount, :RequestId
        
        def initialize(vpcendpointserviceuserset=nil, totalcount=nil, requestid=nil)
          @VpcEndpointServiceUserSet = vpcendpointserviceuserset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcEndpointServiceUserSet'].nil?
            @VpcEndpointServiceUserSet = []
            params['VpcEndpointServiceUserSet'].each do |i|
              vpcendpointserviceuser_tmp = VpcEndPointServiceUser.new
              vpcendpointserviceuser_tmp.deserialize(i)
              @VpcEndpointServiceUserSet << vpcendpointserviceuser_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcInstances请求参数结构体
      class DescribeVpcInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        # <li>instance-id - String - （过滤条件）云主机实例ID。</li>
        # <li>instance-name - String - （过滤条件）云主机名称。</li>
        # @type Filters: Array
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 请求对象个数。
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

      # DescribeVpcInstances返回参数结构体
      class DescribeVpcInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 云主机实例列表。
        # @type InstanceSet: Array
        # @param TotalCount: 满足条件的云主机实例个数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :RequestId
        
        def initialize(instanceset=nil, totalcount=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              cvminstance_tmp = CvmInstance.new
              cvminstance_tmp.deserialize(i)
              @InstanceSet << cvminstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcIpv6Addresses请求参数结构体
      class DescribeVpcIpv6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param Ipv6Addresses: `IP`地址列表，批量查询单次请求最多支持`10`个。
        # @type Ipv6Addresses: Array
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 返回数量。
        # @type Limit: Integer

        attr_accessor :VpcId, :Ipv6Addresses, :Offset, :Limit
        
        def initialize(vpcid=nil, ipv6addresses=nil, offset=nil, limit=nil)
          @VpcId = vpcid
          @Ipv6Addresses = ipv6addresses
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @Ipv6Addresses = params['Ipv6Addresses']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVpcIpv6Addresses返回参数结构体
      class DescribeVpcIpv6AddressesResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6AddressSet: `IPv6`地址列表。
        # @type Ipv6AddressSet: Array
        # @param TotalCount: `IPv6`地址总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6AddressSet, :TotalCount, :RequestId
        
        def initialize(ipv6addressset=nil, totalcount=nil, requestid=nil)
          @Ipv6AddressSet = ipv6addressset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ipv6AddressSet'].nil?
            @Ipv6AddressSet = []
            params['Ipv6AddressSet'].each do |i|
              vpcipv6address_tmp = VpcIpv6Address.new
              vpcipv6address_tmp.deserialize(i)
              @Ipv6AddressSet << vpcipv6address_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcLimits请求参数结构体
      class DescribeVpcLimitsRequest < TencentCloud::Common::AbstractModel
        # @param LimitTypes: 配额名称。每次最大查询100个配额类型。
        # @type LimitTypes: Array

        attr_accessor :LimitTypes
        
        def initialize(limittypes=nil)
          @LimitTypes = limittypes
        end

        def deserialize(params)
          @LimitTypes = params['LimitTypes']
        end
      end

      # DescribeVpcLimits返回参数结构体
      class DescribeVpcLimitsResponse < TencentCloud::Common::AbstractModel
        # @param VpcLimitSet: 私有网络配额
        # @type VpcLimitSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcLimitSet, :RequestId
        
        def initialize(vpclimitset=nil, requestid=nil)
          @VpcLimitSet = vpclimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcLimitSet'].nil?
            @VpcLimitSet = []
            params['VpcLimitSet'].each do |i|
              vpclimit_tmp = VpcLimit.new
              vpclimit_tmp.deserialize(i)
              @VpcLimitSet << vpclimit_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcPrivateIpAddresses请求参数结构体
      class DescribeVpcPrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param PrivateIpAddresses: 内网`IP`地址列表，批量查询单次请求最多支持`10`个。
        # @type PrivateIpAddresses: Array

        attr_accessor :VpcId, :PrivateIpAddresses
        
        def initialize(vpcid=nil, privateipaddresses=nil)
          @VpcId = vpcid
          @PrivateIpAddresses = privateipaddresses
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @PrivateIpAddresses = params['PrivateIpAddresses']
        end
      end

      # DescribeVpcPrivateIpAddresses返回参数结构体
      class DescribeVpcPrivateIpAddressesResponse < TencentCloud::Common::AbstractModel
        # @param VpcPrivateIpAddressSet: 内网`IP`地址信息列表。
        # @type VpcPrivateIpAddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcPrivateIpAddressSet, :RequestId
        
        def initialize(vpcprivateipaddressset=nil, requestid=nil)
          @VpcPrivateIpAddressSet = vpcprivateipaddressset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcPrivateIpAddressSet'].nil?
            @VpcPrivateIpAddressSet = []
            params['VpcPrivateIpAddressSet'].each do |i|
              vpcprivateipaddress_tmp = VpcPrivateIpAddress.new
              vpcprivateipaddress_tmp.deserialize(i)
              @VpcPrivateIpAddressSet << vpcprivateipaddress_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcResourceDashboard请求参数结构体
      class DescribeVpcResourceDashboardRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: Vpc实例ID，例如：vpc-f1xjkw1b。
        # @type VpcIds: Array

        attr_accessor :VpcIds
        
        def initialize(vpcids=nil)
          @VpcIds = vpcids
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
        end
      end

      # DescribeVpcResourceDashboard返回参数结构体
      class DescribeVpcResourceDashboardResponse < TencentCloud::Common::AbstractModel
        # @param ResourceDashboardSet: 资源对象列表。
        # @type ResourceDashboardSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceDashboardSet, :RequestId
        
        def initialize(resourcedashboardset=nil, requestid=nil)
          @ResourceDashboardSet = resourcedashboardset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceDashboardSet'].nil?
            @ResourceDashboardSet = []
            params['ResourceDashboardSet'].each do |i|
              resourcedashboard_tmp = ResourceDashboard.new
              resourcedashboard_tmp.deserialize(i)
              @ResourceDashboardSet << resourcedashboard_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcTaskResult请求参数结构体
      class DescribeVpcTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务请求返回的RequestId。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeVpcTaskResult返回参数结构体
      class DescribeVpcTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 异步任务执行结果。结果：SUCCESS、FAILED、RUNNING。3者其中之一。其中SUCCESS表示任务执行成功，FAILED表示任务执行失败，RUNNING表示任务执行中。
        # @type Status: String
        # @param Output: 异步任务执行输出。
        # @type Output: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Output, :RequestId
        
        def initialize(status=nil, output=nil, requestid=nil)
          @Status = status
          @Output = output
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Output = params['Output']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcs请求参数结构体
      class DescribeVpcsRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        # @type VpcIds: Array
        # @param Filters: 过滤条件，不支持同时指定VpcIds和Filters参数。
        # 支持的过滤条件如下：
        # <li>vpc-name：VPC实例名称，支持模糊查询。</li>
        # <li>is-default ：是否默认VPC。</li>
        # <li>vpc-id ：VPC实例ID，例如：vpc-f49l6u0z。</li>
        # <li>cidr-block：VPC的CIDR。</li>
        # <li>tag-key ：按照标签键进行过滤，非必填参数。</li>
        # <li>tag:tag-key：按照标签键值对进行过滤，非必填参数。 其中 tag-key 请使用具体的标签键进行替换，可参考示例2。</li>
        #   **说明：**若同一个过滤条件（Filter）存在多个Values，则同一Filter下Values间的关系为逻辑或（OR）关系；若存在多个过滤条件（Filter），Filter之间的关系为逻辑与（AND）关系。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: String

        attr_accessor :VpcIds, :Filters, :Offset, :Limit
        
        def initialize(vpcids=nil, filters=nil, offset=nil, limit=nil)
          @VpcIds = vpcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
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

      # DescribeVpcs返回参数结构体
      class DescribeVpcsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param VpcSet: VPC对象。
        # @type VpcSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcSet, :RequestId
        
        def initialize(totalcount=nil, vpcset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcSet = vpcset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpc_tmp = Vpc.new
              vpc_tmp.deserialize(i)
              @VpcSet << vpc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnConnections请求参数结构体
      class DescribeVpnConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param VpnConnectionIds: VPN通道实例ID。形如：vpnx-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnConnectionIds和Filters。
        # @type VpnConnectionIds: Array
        # @param Filters: 过滤条件。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定VpnConnectionIds和Filters。
        # <li>vpc-id - String - VPC实例ID，形如：`vpc-0a36uwkr`。</li>
        # <li>vpn-gateway-id - String - VPN网关实例ID，形如：`vpngw-p4lmqawn`。</li>
        # <li>customer-gateway-id - String - 对端网关实例ID，形如：`cgw-l4rblw63`。</li>
        # <li>vpn-connection-name - String - 通道名称，形如：`test-vpn`。</li>
        # <li>vpn-connection-id - String - 通道实例ID，形如：`vpnx-5p7vkch8"`。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :VpnConnectionIds, :Filters, :Offset, :Limit
        
        def initialize(vpnconnectionids=nil, filters=nil, offset=nil, limit=nil)
          @VpnConnectionIds = vpnconnectionids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpnConnectionIds = params['VpnConnectionIds']
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

      # DescribeVpnConnections返回参数结构体
      class DescribeVpnConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param VpnConnectionSet: VPN通道实例。
        # @type VpnConnectionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpnConnectionSet, :RequestId
        
        def initialize(totalcount=nil, vpnconnectionset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpnConnectionSet = vpnconnectionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpnConnectionSet'].nil?
            @VpnConnectionSet = []
            params['VpnConnectionSet'].each do |i|
              vpnconnection_tmp = VpnConnection.new
              vpnconnection_tmp.deserialize(i)
              @VpnConnectionSet << vpnconnection_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnGatewayCcnRoutes请求参数结构体
      class DescribeVpnGatewayCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID
        # @type VpnGatewayId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :VpnGatewayId, :Offset, :Limit
        
        def initialize(vpngatewayid=nil, offset=nil, limit=nil)
          @VpnGatewayId = vpngatewayid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVpnGatewayCcnRoutes返回参数结构体
      class DescribeVpnGatewayCcnRoutesResponse < TencentCloud::Common::AbstractModel
        # @param RouteSet: 云联网路由（IDC网段）列表。
        # @type RouteSet: Array
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteSet, :TotalCount, :RequestId
        
        def initialize(routeset=nil, totalcount=nil, requestid=nil)
          @RouteSet = routeset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              vpngwccnroutes_tmp = VpngwCcnRoutes.new
              vpngwccnroutes_tmp.deserialize(i)
              @RouteSet << vpngwccnroutes_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnGatewayRoutes请求参数结构体
      class DescribeVpnGatewayRoutesRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关的ID
        # @type VpnGatewayId: String
        # @param Filters: 过滤条件,  条件包括(DestinationCidr, InstanceId,InstanceType)
        # @type Filters: Array
        # @param Offset: 偏移量, 默认0
        # @type Offset: Integer
        # @param Limit: 单页个数, 默认20, 最大值100
        # @type Limit: Integer

        attr_accessor :VpnGatewayId, :Filters, :Offset, :Limit
        
        def initialize(vpngatewayid=nil, filters=nil, offset=nil, limit=nil)
          @VpnGatewayId = vpngatewayid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
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

      # DescribeVpnGatewayRoutes返回参数结构体
      class DescribeVpnGatewayRoutesResponse < TencentCloud::Common::AbstractModel
        # @param Routes: VPN网关目的路由
        # @type Routes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Routes, :RequestId
        
        def initialize(routes=nil, requestid=nil)
          @Routes = routes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              vpngatewayroute_tmp = VpnGatewayRoute.new
              vpngatewayroute_tmp.deserialize(i)
              @Routes << vpngatewayroute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnGatewaySslClients请求参数结构体
      class DescribeVpnGatewaySslClientsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，参数不支持同时指定SslVpnClientIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        # <li>vpn-gateway-id - String - （过滤条件）VPN实例ID形如：vpngw-5aluhh9t。</li>
        # <li>ssl-vpn-server-id - String - （过滤条件）SSL-VPN-SERVER实例ID形如：vpngwSslServer-123456。</li>
        # <li>ssl-vpn-client-id - String - （过滤条件）SSL-VPN-CLIENT实例ID形如：vpngwSslClient-123456。</li>
        # <li>ssl-vpn-client-name - String - （过滤条件）SSL-VPN-CLIENT实例名称。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 请求对象个数
        # @type Limit: Integer
        # @param SslVpnClientIds: SSL-VPN-CLIENT实例ID。形如：vpngwSslClient-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定SslVpnClientIds和Filters。
        # @type SslVpnClientIds: Array
        # @param IsVpnPortal: VPN门户网站使用。默认是False。
        # @type IsVpnPortal: Boolean

        attr_accessor :Filters, :Offset, :Limit, :SslVpnClientIds, :IsVpnPortal
        
        def initialize(filters=nil, offset=nil, limit=nil, sslvpnclientids=nil, isvpnportal=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @SslVpnClientIds = sslvpnclientids
          @IsVpnPortal = isvpnportal
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
          @SslVpnClientIds = params['SslVpnClientIds']
          @IsVpnPortal = params['IsVpnPortal']
        end
      end

      # DescribeVpnGatewaySslClients返回参数结构体
      class DescribeVpnGatewaySslClientsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param SslVpnClientSet: 符合条件的实例个数。
        # @type SslVpnClientSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SslVpnClientSet, :RequestId
        
        def initialize(totalcount=nil, sslvpnclientset=nil, requestid=nil)
          @TotalCount = totalcount
          @SslVpnClientSet = sslvpnclientset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SslVpnClientSet'].nil?
            @SslVpnClientSet = []
            params['SslVpnClientSet'].each do |i|
              sslvpnclient_tmp = SslVpnClient.new
              sslvpnclient_tmp.deserialize(i)
              @SslVpnClientSet << sslvpnclient_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnGatewaySslServers请求参数结构体
      class DescribeVpnGatewaySslServersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 请求对象个数
        # @type Limit: Integer
        # @param SslVpnServerIds: SSL-VPN-SERVER实例ID。形如：vpngwSslServer-12345678。每次请求的实例的上限为100。参数不支持同时指定SslVpnServerIds和Filters。
        # @type SslVpnServerIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SslVpnServerIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        # <li>vpn-gateway-id - String - （过滤条件）VPN实例ID形如：vpngw-5aluhh9t。</li>
        # <li>vpn-gateway-name - String - （过滤条件）VPN实例名称。</li>
        # <li>ssl-vpn-server-name - String - （过滤条件）SSL-VPN-SERVER实例名称。</li>
        # <li>ssl-vpn-server-id - String - （过滤条件）SSL-VPN-SERVER实例ID形如：vpngwSslServer-123456。</li>
        # @type Filters: Array
        # @param IsVpnPortal: vpn门户使用。 默认Flase
        # @type IsVpnPortal: Boolean

        attr_accessor :Offset, :Limit, :SslVpnServerIds, :Filters, :IsVpnPortal
        
        def initialize(offset=nil, limit=nil, sslvpnserverids=nil, filters=nil, isvpnportal=nil)
          @Offset = offset
          @Limit = limit
          @SslVpnServerIds = sslvpnserverids
          @Filters = filters
          @IsVpnPortal = isvpnportal
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SslVpnServerIds = params['SslVpnServerIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filterobject_tmp = FilterObject.new
              filterobject_tmp.deserialize(i)
              @Filters << filterobject_tmp
            end
          end
          @IsVpnPortal = params['IsVpnPortal']
        end
      end

      # DescribeVpnGatewaySslServers返回参数结构体
      class DescribeVpnGatewaySslServersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param SslVpnSeverSet: SSL-VPN-SERVER 实例详细信息列表。
        # @type SslVpnSeverSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SslVpnSeverSet, :RequestId
        
        def initialize(totalcount=nil, sslvpnseverset=nil, requestid=nil)
          @TotalCount = totalcount
          @SslVpnSeverSet = sslvpnseverset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SslVpnSeverSet'].nil?
            @SslVpnSeverSet = []
            params['SslVpnSeverSet'].each do |i|
              sslvpnsever_tmp = SslVpnSever.new
              sslvpnsever_tmp.deserialize(i)
              @SslVpnSeverSet << sslvpnsever_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnGateways请求参数结构体
      class DescribeVpnGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayIds: VPN网关实例ID。形如：vpngw-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnGatewayIds和Filters。
        # @type VpnGatewayIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定VpnGatewayIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        # <li>vpn-gateway-id - String - （过滤条件）VPN实例ID形如：vpngw-5aluhh9t。</li>
        # <li>vpn-gateway-name - String - （过滤条件）VPN实例名称。</li>
        # <li>type - String - （过滤条件）VPN网关类型：'IPSEC', 'SSL'。</li>
        # <li>public-ip-address- String - （过滤条件）公网IP。</li>
        # <li>renew-flag - String - （过滤条件）网关续费类型，手动续费：'NOTIFY_AND_MANUAL_RENEW'、自动续费：'NOTIFY_AND_AUTO_RENEW'。</li>
        # <li>zone - String - （过滤条件）VPN所在可用区，形如：ap-guangzhou-2。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 请求对象个数
        # @type Limit: Integer

        attr_accessor :VpnGatewayIds, :Filters, :Offset, :Limit
        
        def initialize(vpngatewayids=nil, filters=nil, offset=nil, limit=nil)
          @VpnGatewayIds = vpngatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpnGatewayIds = params['VpnGatewayIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filterobject_tmp = FilterObject.new
              filterobject_tmp.deserialize(i)
              @Filters << filterobject_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVpnGateways返回参数结构体
      class DescribeVpnGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param VpnGatewaySet: VPN网关实例详细信息列表。
        # @type VpnGatewaySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpnGatewaySet, :RequestId
        
        def initialize(totalcount=nil, vpngatewayset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpnGatewaySet = vpngatewayset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpnGatewaySet'].nil?
            @VpnGatewaySet = []
            params['VpnGatewaySet'].each do |i|
              vpngateway_tmp = VpnGateway.new
              vpngateway_tmp.deserialize(i)
              @VpnGatewaySet << vpngateway_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # NAT网关的端口转发规则
      class DestinationIpPortTranslationNatRule < TencentCloud::Common::AbstractModel
        # @param IpProtocol: 网络协议，可选值：`TCP`、`UDP`。
        # @type IpProtocol: String
        # @param PublicIpAddress: 弹性IP。
        # @type PublicIpAddress: String
        # @param PublicPort: 公网端口。
        # @type PublicPort: Integer
        # @param PrivateIpAddress: 内网地址。
        # @type PrivateIpAddress: String
        # @param PrivatePort: 内网端口。
        # @type PrivatePort: Integer
        # @param Description: NAT网关转发规则描述。
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

      # DetachCcnInstances请求参数结构体
      class DetachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param Instances: 要解关联网络实例列表
        # @type Instances: Array

        attr_accessor :CcnId, :Instances
        
        def initialize(ccnid=nil, instances=nil)
          @CcnId = ccnid
          @Instances = instances
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              ccninstance_tmp = CcnInstance.new
              ccninstance_tmp.deserialize(i)
              @Instances << ccninstance_tmp
            end
          end
        end
      end

      # DetachCcnInstances返回参数结构体
      class DetachCcnInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DetachClassicLinkVpc请求参数结构体
      class DetachClassicLinkVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param InstanceIds: CVM实例ID查询。形如：ins-r8hr2upy。
        # @type InstanceIds: Array

        attr_accessor :VpcId, :InstanceIds
        
        def initialize(vpcid=nil, instanceids=nil)
          @VpcId = vpcid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DetachClassicLinkVpc返回参数结构体
      class DetachClassicLinkVpcResponse < TencentCloud::Common::AbstractModel
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

      # DetachNetworkInterface请求参数结构体
      class DetachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param InstanceId: CVM实例ID。形如：ins-r8hr2upy。
        # @type InstanceId: String

        attr_accessor :NetworkInterfaceId, :InstanceId
        
        def initialize(networkinterfaceid=nil, instanceid=nil)
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
        end
      end

      # DetachNetworkInterface返回参数结构体
      class DetachNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # 描述 DhcpIp 信息
      class DhcpIp < TencentCloud::Common::AbstractModel
        # @param DhcpIpId: `DhcpIp`的`ID`，是`DhcpIp`的唯一标识。
        # @type DhcpIpId: String
        # @param VpcId: `DhcpIp`所在私有网络`ID`。
        # @type VpcId: String
        # @param SubnetId: `DhcpIp`所在子网`ID`。
        # @type SubnetId: String
        # @param DhcpIpName: `DhcpIp`的名称。
        # @type DhcpIpName: String
        # @param PrivateIpAddress: IP地址。
        # @type PrivateIpAddress: String
        # @param AddressIp: 绑定`EIP`。
        # @type AddressIp: String
        # @param NetworkInterfaceId: `DhcpIp`关联弹性网卡`ID`。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 被绑定的实例`ID`。
        # @type InstanceId: String
        # @param State: 状态：
        # <li>`AVAILABLE`：运行中</li>
        # <li>`UNBIND`：未绑定</li>
        # @type State: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String

        attr_accessor :DhcpIpId, :VpcId, :SubnetId, :DhcpIpName, :PrivateIpAddress, :AddressIp, :NetworkInterfaceId, :InstanceId, :State, :CreatedTime
        
        def initialize(dhcpipid=nil, vpcid=nil, subnetid=nil, dhcpipname=nil, privateipaddress=nil, addressip=nil, networkinterfaceid=nil, instanceid=nil, state=nil, createdtime=nil)
          @DhcpIpId = dhcpipid
          @VpcId = vpcid
          @SubnetId = subnetid
          @DhcpIpName = dhcpipname
          @PrivateIpAddress = privateipaddress
          @AddressIp = addressip
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
          @State = state
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @DhcpIpId = params['DhcpIpId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DhcpIpName = params['DhcpIpName']
          @PrivateIpAddress = params['PrivateIpAddress']
          @AddressIp = params['AddressIp']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
          @State = params['State']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 专线网关对象。
      class DirectConnectGateway < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关`ID`。
        # @type DirectConnectGatewayId: String
        # @param DirectConnectGatewayName: 专线网关名称。
        # @type DirectConnectGatewayName: String
        # @param VpcId: 专线网关关联`VPC`实例`ID`。
        # @type VpcId: String
        # @param NetworkType: 关联网络类型：
        # <li>`VPC` - 私有网络</li>
        # <li>`CCN` - 云联网</li>
        # @type NetworkType: String
        # @param NetworkInstanceId: 关联网络实例`ID`：
        # <li>`NetworkType`为`VPC`时，这里为私有网络实例`ID`</li>
        # <li>`NetworkType`为`CCN`时，这里为云联网实例`ID`</li>
        # @type NetworkInstanceId: String
        # @param GatewayType: 网关类型：
        # <li>NORMAL - 标准型，注：云联网只支持标准型</li>
        # <li>NAT - NAT型</li>
        # NAT类型支持网络地址转换配置，类型确定后不能修改；一个私有网络可以创建一个NAT类型的专线网关和一个非NAT类型的专线网关
        # @type GatewayType: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param DirectConnectGatewayIp: 专线网关IP。
        # @type DirectConnectGatewayIp: String
        # @param CcnId: 专线网关关联`CCN`实例`ID`。
        # @type CcnId: String
        # @param CcnRouteType: 云联网路由学习类型：
        # <li>`BGP` - 自动学习。</li>
        # <li>`STATIC` - 静态，即用户配置。</li>
        # @type CcnRouteType: String
        # @param EnableBGP: 是否启用BGP。
        # @type EnableBGP: Boolean
        # @param EnableBGPCommunity: 开启和关闭BGP的community属性。
        # @type EnableBGPCommunity: Boolean
        # @param NatGatewayId: 绑定的NAT网关ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatGatewayId: String
        # @param VXLANSupport: 专线网关是否支持VXLAN架构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VXLANSupport: Array
        # @param ModeType: 云联网路由发布模式：`standard`（标准模式）、`exquisite`（精细模式）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModeType: String
        # @param LocalZone: 是否为localZone专线网关。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalZone: Boolean
        # @param Zone: 专线网关所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param EnableFlowDetails: 网关流控明细启用状态：
        # 0：关闭
        # 1：开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableFlowDetails: Integer
        # @param FlowDetailsUpdateTime: 开启、关闭网关流控明细时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowDetailsUpdateTime: String
        # @param NewAfc: 是否支持开启网关流控明细
        # 0：不支持
        # 1：支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewAfc: Integer
        # @param AccessNetworkType: 专线网关接入网络类型：
        # <li>`VXLAN` - VXLAN类型。</li>
        # <li>`MPLS` - MPLS类型。</li>
        # <li>`Hybrid` - Hybrid类型。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessNetworkType: String
        # @param HaZoneList: 跨可用区容灾专线网关的可用区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HaZoneList: Array

        attr_accessor :DirectConnectGatewayId, :DirectConnectGatewayName, :VpcId, :NetworkType, :NetworkInstanceId, :GatewayType, :CreateTime, :DirectConnectGatewayIp, :CcnId, :CcnRouteType, :EnableBGP, :EnableBGPCommunity, :NatGatewayId, :VXLANSupport, :ModeType, :LocalZone, :Zone, :EnableFlowDetails, :FlowDetailsUpdateTime, :NewAfc, :AccessNetworkType, :HaZoneList
        
        def initialize(directconnectgatewayid=nil, directconnectgatewayname=nil, vpcid=nil, networktype=nil, networkinstanceid=nil, gatewaytype=nil, createtime=nil, directconnectgatewayip=nil, ccnid=nil, ccnroutetype=nil, enablebgp=nil, enablebgpcommunity=nil, natgatewayid=nil, vxlansupport=nil, modetype=nil, localzone=nil, zone=nil, enableflowdetails=nil, flowdetailsupdatetime=nil, newafc=nil, accessnetworktype=nil, hazonelist=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @DirectConnectGatewayName = directconnectgatewayname
          @VpcId = vpcid
          @NetworkType = networktype
          @NetworkInstanceId = networkinstanceid
          @GatewayType = gatewaytype
          @CreateTime = createtime
          @DirectConnectGatewayIp = directconnectgatewayip
          @CcnId = ccnid
          @CcnRouteType = ccnroutetype
          @EnableBGP = enablebgp
          @EnableBGPCommunity = enablebgpcommunity
          @NatGatewayId = natgatewayid
          @VXLANSupport = vxlansupport
          @ModeType = modetype
          @LocalZone = localzone
          @Zone = zone
          @EnableFlowDetails = enableflowdetails
          @FlowDetailsUpdateTime = flowdetailsupdatetime
          @NewAfc = newafc
          @AccessNetworkType = accessnetworktype
          @HaZoneList = hazonelist
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @DirectConnectGatewayName = params['DirectConnectGatewayName']
          @VpcId = params['VpcId']
          @NetworkType = params['NetworkType']
          @NetworkInstanceId = params['NetworkInstanceId']
          @GatewayType = params['GatewayType']
          @CreateTime = params['CreateTime']
          @DirectConnectGatewayIp = params['DirectConnectGatewayIp']
          @CcnId = params['CcnId']
          @CcnRouteType = params['CcnRouteType']
          @EnableBGP = params['EnableBGP']
          @EnableBGPCommunity = params['EnableBGPCommunity']
          @NatGatewayId = params['NatGatewayId']
          @VXLANSupport = params['VXLANSupport']
          @ModeType = params['ModeType']
          @LocalZone = params['LocalZone']
          @Zone = params['Zone']
          @EnableFlowDetails = params['EnableFlowDetails']
          @FlowDetailsUpdateTime = params['FlowDetailsUpdateTime']
          @NewAfc = params['NewAfc']
          @AccessNetworkType = params['AccessNetworkType']
          @HaZoneList = params['HaZoneList']
        end
      end

      # 专线网关云联网路由（IDC网段）对象
      class DirectConnectGatewayCcnRoute < TencentCloud::Common::AbstractModel
        # @param RouteId: 路由ID。
        # @type RouteId: String
        # @param DestinationCidrBlock: IDC网段。
        # @type DestinationCidrBlock: String
        # @param ASPath: `BGP`的`AS-Path`属性。
        # @type ASPath: Array
        # @param Description: 备注
        # @type Description: String
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: String

        attr_accessor :RouteId, :DestinationCidrBlock, :ASPath, :Description, :UpdateTime
        
        def initialize(routeid=nil, destinationcidrblock=nil, aspath=nil, description=nil, updatetime=nil)
          @RouteId = routeid
          @DestinationCidrBlock = destinationcidrblock
          @ASPath = aspath
          @Description = description
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RouteId = params['RouteId']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @ASPath = params['ASPath']
          @Description = params['Description']
          @UpdateTime = params['UpdateTime']
        end
      end

      # IDC子网信息
      class DirectConnectSubnet < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关ID
        # @type DirectConnectGatewayId: String
        # @param CidrBlock: IDC子网网段
        # @type CidrBlock: String

        attr_accessor :DirectConnectGatewayId, :CidrBlock
        
        def initialize(directconnectgatewayid=nil, cidrblock=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @CidrBlock = cidrblock
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @CidrBlock = params['CidrBlock']
        end
      end

      # DisableCcnRoutes请求参数结构体
      class DisableCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param RouteIds: CCN路由策略唯一ID。形如：ccnr-f49l6u0z。
        # @type RouteIds: Array

        attr_accessor :CcnId, :RouteIds
        
        def initialize(ccnid=nil, routeids=nil)
          @CcnId = ccnid
          @RouteIds = routeids
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @RouteIds = params['RouteIds']
        end
      end

      # DisableCcnRoutes返回参数结构体
      class DisableCcnRoutesResponse < TencentCloud::Common::AbstractModel
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

      # DisableFlowLogs请求参数结构体
      class DisableFlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param FlowLogIds: 流日志Id。
        # @type FlowLogIds: Array

        attr_accessor :FlowLogIds
        
        def initialize(flowlogids=nil)
          @FlowLogIds = flowlogids
        end

        def deserialize(params)
          @FlowLogIds = params['FlowLogIds']
        end
      end

      # DisableFlowLogs返回参数结构体
      class DisableFlowLogsResponse < TencentCloud::Common::AbstractModel
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

      # DisableGatewayFlowMonitor请求参数结构体
      class DisableGatewayFlowMonitorRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID，目前我们支持的网关实例类型有，
        # 专线网关实例ID，形如，`dcg-ltjahce6`；
        # Nat网关实例ID，形如，`nat-ltjahce6`；
        # VPN网关实例ID，形如，`vpn-ltjahce6`。
        # @type GatewayId: String

        attr_accessor :GatewayId
        
        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DisableGatewayFlowMonitor返回参数结构体
      class DisableGatewayFlowMonitorResponse < TencentCloud::Common::AbstractModel
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

      # DisableRoutes请求参数结构体
      class DisableRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param RouteIds: 路由策略ID。不能和RouteItemIds同时使用，但至少输入一个。该参数取值可通过查询路由列表（[DescribeRouteTables](https://cloud.tencent.com/document/product/215/15763)）获取。
        # @type RouteIds: Array
        # @param RouteItemIds: 路由策略唯一ID。不能和RouteIds同时使用，但至少输入一个。该参数取值可通过查询路由列表（[DescribeRouteTables](https://cloud.tencent.com/document/product/215/15763)）获取。
        # @type RouteItemIds: Array

        attr_accessor :RouteTableId, :RouteIds, :RouteItemIds
        
        def initialize(routetableid=nil, routeids=nil, routeitemids=nil)
          @RouteTableId = routetableid
          @RouteIds = routeids
          @RouteItemIds = routeitemids
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteIds = params['RouteIds']
          @RouteItemIds = params['RouteItemIds']
        end
      end

      # DisableRoutes返回参数结构体
      class DisableRoutesResponse < TencentCloud::Common::AbstractModel
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

      # DisableVpnGatewaySslClientCert请求参数结构体
      class DisableVpnGatewaySslClientCertRequest < TencentCloud::Common::AbstractModel
        # @param SslVpnClientId: SSL-VPN-CLIENT 实例ID。
        # @type SslVpnClientId: String

        attr_accessor :SslVpnClientId
        
        def initialize(sslvpnclientid=nil)
          @SslVpnClientId = sslvpnclientid
        end

        def deserialize(params)
          @SslVpnClientId = params['SslVpnClientId']
        end
      end

      # DisableVpnGatewaySslClientCert返回参数结构体
      class DisableVpnGatewaySslClientCertResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务实例ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DisassociateAddress请求参数结构体
      class DisassociateAddressRequest < TencentCloud::Common::AbstractModel
        # @param AddressId: 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：`eip-11112222`。
        # @type AddressId: String
        # @param ReallocateNormalPublicIp: 表示解绑 EIP 之后是否分配普通公网 IP。取值范围：<br><li>TRUE：表示解绑 EIP 之后分配普通公网 IP。<br><li>FALSE：表示解绑 EIP 之后不分配普通公网 IP。<br>默认取值：FALSE。<br><br>只有满足以下条件时才能指定该参数：<br><li> 只有在解绑主网卡的主内网 IP 上的 EIP 时才能指定该参数。<br><li>解绑 EIP 后重新分配普通公网 IP 操作一个账号每天最多操作 10 次；详情可通过 [DescribeAddressQuota](https://cloud.tencent.com/document/api/213/1378) 接口获取。
        # @type ReallocateNormalPublicIp: Boolean

        attr_accessor :AddressId, :ReallocateNormalPublicIp
        
        def initialize(addressid=nil, reallocatenormalpublicip=nil)
          @AddressId = addressid
          @ReallocateNormalPublicIp = reallocatenormalpublicip
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @ReallocateNormalPublicIp = params['ReallocateNormalPublicIp']
        end
      end

      # DisassociateAddress返回参数结构体
      class DisassociateAddressResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DisassociateDhcpIpWithAddressIp请求参数结构体
      class DisassociateDhcpIpWithAddressIpRequest < TencentCloud::Common::AbstractModel
        # @param DhcpIpId: `DhcpIp`唯一`ID`，形如：`dhcpip-9o233uri`。必须是已绑定`EIP`的`DhcpIp`。
        # @type DhcpIpId: String

        attr_accessor :DhcpIpId
        
        def initialize(dhcpipid=nil)
          @DhcpIpId = dhcpipid
        end

        def deserialize(params)
          @DhcpIpId = params['DhcpIpId']
        end
      end

      # DisassociateDhcpIpWithAddressIp返回参数结构体
      class DisassociateDhcpIpWithAddressIpResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateDirectConnectGatewayNatGateway请求参数结构体
      class DisassociateDirectConnectGatewayNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 专线网关ID。
        # @type VpcId: String
        # @param NatGatewayId: NAT网关ID。
        # @type NatGatewayId: String
        # @param DirectConnectGatewayId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type DirectConnectGatewayId: String

        attr_accessor :VpcId, :NatGatewayId, :DirectConnectGatewayId
        
        def initialize(vpcid=nil, natgatewayid=nil, directconnectgatewayid=nil)
          @VpcId = vpcid
          @NatGatewayId = natgatewayid
          @DirectConnectGatewayId = directconnectgatewayid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NatGatewayId = params['NatGatewayId']
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
        end
      end

      # DisassociateDirectConnectGatewayNatGateway返回参数结构体
      class DisassociateDirectConnectGatewayNatGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateNatGatewayAddress请求参数结构体
      class DisassociateNatGatewayAddressRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param PublicIpAddresses: 待解绑NAT网关的弹性IP数组。
        # @type PublicIpAddresses: Array

        attr_accessor :NatGatewayId, :PublicIpAddresses
        
        def initialize(natgatewayid=nil, publicipaddresses=nil)
          @NatGatewayId = natgatewayid
          @PublicIpAddresses = publicipaddresses
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @PublicIpAddresses = params['PublicIpAddresses']
        end
      end

      # DisassociateNatGatewayAddress返回参数结构体
      class DisassociateNatGatewayAddressResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateNetworkAclSubnets请求参数结构体
      class DisassociateNetworkAclSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param SubnetIds: 子网实例ID数组。例如：[subnet-12345678]
        # @type SubnetIds: Array

        attr_accessor :NetworkAclId, :SubnetIds
        
        def initialize(networkaclid=nil, subnetids=nil)
          @NetworkAclId = networkaclid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # DisassociateNetworkAclSubnets返回参数结构体
      class DisassociateNetworkAclSubnetsResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateNetworkInterfaceSecurityGroups请求参数结构体
      class DisassociateNetworkInterfaceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceIds: 弹性网卡实例ID。形如：eni-pxir56ns。每次请求的实例的上限为100。
        # @type NetworkInterfaceIds: Array
        # @param SecurityGroupIds: 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。每次请求的实例的上限为100。
        # @type SecurityGroupIds: Array

        attr_accessor :NetworkInterfaceIds, :SecurityGroupIds
        
        def initialize(networkinterfaceids=nil, securitygroupids=nil)
          @NetworkInterfaceIds = networkinterfaceids
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @NetworkInterfaceIds = params['NetworkInterfaceIds']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # DisassociateNetworkInterfaceSecurityGroups返回参数结构体
      class DisassociateNetworkInterfaceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateVpcEndPointSecurityGroups请求参数结构体
      class DisassociateVpcEndPointSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全组ID数组。
        # @type SecurityGroupIds: Array
        # @param EndPointId: 终端节点ID。
        # @type EndPointId: String

        attr_accessor :SecurityGroupIds, :EndPointId
        
        def initialize(securitygroupids=nil, endpointid=nil)
          @SecurityGroupIds = securitygroupids
          @EndPointId = endpointid
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @EndPointId = params['EndPointId']
        end
      end

      # DisassociateVpcEndPointSecurityGroups返回参数结构体
      class DisassociateVpcEndPointSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DownloadCustomerGatewayConfiguration请求参数结构体
      class DownloadCustomerGatewayConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param VpnConnectionId: VPN通道实例ID。形如：vpnx-f49l6u0z。
        # @type VpnConnectionId: String
        # @param CustomerGatewayVendor: 对端网关厂商信息对象，可通过DescribeCustomerGatewayVendors获取。
        # @type CustomerGatewayVendor: :class:`Tencentcloud::Vpc.v20170312.models.CustomerGatewayVendor`
        # @param InterfaceName: 通道接入设备物理接口名称。
        # @type InterfaceName: String

        attr_accessor :VpnGatewayId, :VpnConnectionId, :CustomerGatewayVendor, :InterfaceName
        
        def initialize(vpngatewayid=nil, vpnconnectionid=nil, customergatewayvendor=nil, interfacename=nil)
          @VpnGatewayId = vpngatewayid
          @VpnConnectionId = vpnconnectionid
          @CustomerGatewayVendor = customergatewayvendor
          @InterfaceName = interfacename
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpnConnectionId = params['VpnConnectionId']
          unless params['CustomerGatewayVendor'].nil?
            @CustomerGatewayVendor = CustomerGatewayVendor.new
            @CustomerGatewayVendor.deserialize(params['CustomerGatewayVendor'])
          end
          @InterfaceName = params['InterfaceName']
        end
      end

      # DownloadCustomerGatewayConfiguration返回参数结构体
      class DownloadCustomerGatewayConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayConfiguration: XML格式配置信息。
        # @type CustomerGatewayConfiguration: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGatewayConfiguration, :RequestId
        
        def initialize(customergatewayconfiguration=nil, requestid=nil)
          @CustomerGatewayConfiguration = customergatewayconfiguration
          @RequestId = requestid
        end

        def deserialize(params)
          @CustomerGatewayConfiguration = params['CustomerGatewayConfiguration']
          @RequestId = params['RequestId']
        end
      end

      # DownloadVpnGatewaySslClientCert请求参数结构体
      class DownloadVpnGatewaySslClientCertRequest < TencentCloud::Common::AbstractModel
        # @param SslVpnClientId: SSL-VPN-CLIENT 实例ID。
        # @type SslVpnClientId: String
        # @param SamlToken: SAML-TOKEN
        # @type SamlToken: String
        # @param IsVpnPortal: VPN门户网站使用。默认Flase
        # @type IsVpnPortal: Boolean

        attr_accessor :SslVpnClientId, :SamlToken, :IsVpnPortal
        
        def initialize(sslvpnclientid=nil, samltoken=nil, isvpnportal=nil)
          @SslVpnClientId = sslvpnclientid
          @SamlToken = samltoken
          @IsVpnPortal = isvpnportal
        end

        def deserialize(params)
          @SslVpnClientId = params['SslVpnClientId']
          @SamlToken = params['SamlToken']
          @IsVpnPortal = params['IsVpnPortal']
        end
      end

      # DownloadVpnGatewaySslClientCert返回参数结构体
      class DownloadVpnGatewaySslClientCertResponse < TencentCloud::Common::AbstractModel
        # @param SslClientConfigsSet: 无
        # @type SslClientConfigsSet: String
        # @param SslClientConfig: SSL-VPN client配置
        # @type SslClientConfig: Array
        # @param Authenticated: 是否鉴权成功 只有传入SamlToken 才生效
        # @type Authenticated: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SslClientConfigsSet, :SslClientConfig, :Authenticated, :RequestId
        
        def initialize(sslclientconfigsset=nil, sslclientconfig=nil, authenticated=nil, requestid=nil)
          @SslClientConfigsSet = sslclientconfigsset
          @SslClientConfig = sslclientconfig
          @Authenticated = authenticated
          @RequestId = requestid
        end

        def deserialize(params)
          @SslClientConfigsSet = params['SslClientConfigsSet']
          unless params['SslClientConfig'].nil?
            @SslClientConfig = []
            params['SslClientConfig'].each do |i|
              sslclientconfig_tmp = SslClientConfig.new
              sslclientconfig_tmp.deserialize(i)
              @SslClientConfig << sslclientconfig_tmp
            end
          end
          @Authenticated = params['Authenticated']
          @RequestId = params['RequestId']
        end
      end

      # EnableCcnRoutes请求参数结构体
      class EnableCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param RouteIds: CCN路由策略唯一ID。形如：ccnr-f49l6u0z。
        # @type RouteIds: Array

        attr_accessor :CcnId, :RouteIds
        
        def initialize(ccnid=nil, routeids=nil)
          @CcnId = ccnid
          @RouteIds = routeids
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @RouteIds = params['RouteIds']
        end
      end

      # EnableCcnRoutes返回参数结构体
      class EnableCcnRoutesResponse < TencentCloud::Common::AbstractModel
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

      # EnableFlowLogs请求参数结构体
      class EnableFlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param FlowLogIds: 流日志Id。
        # @type FlowLogIds: Array

        attr_accessor :FlowLogIds
        
        def initialize(flowlogids=nil)
          @FlowLogIds = flowlogids
        end

        def deserialize(params)
          @FlowLogIds = params['FlowLogIds']
        end
      end

      # EnableFlowLogs返回参数结构体
      class EnableFlowLogsResponse < TencentCloud::Common::AbstractModel
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

      # EnableGatewayFlowMonitor请求参数结构体
      class EnableGatewayFlowMonitorRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID，目前我们支持的网关实例有，
        # 专线网关实例ID，形如，`dcg-ltjahce6`；
        # Nat网关实例ID，形如，`nat-ltjahce6`；
        # VPN网关实例ID，形如，`vpn-ltjahce6`。
        # @type GatewayId: String

        attr_accessor :GatewayId
        
        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # EnableGatewayFlowMonitor返回参数结构体
      class EnableGatewayFlowMonitorResponse < TencentCloud::Common::AbstractModel
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

      # EnableRoutes请求参数结构体
      class EnableRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param RouteIds: 路由策略ID。不能和RouteItemIds同时使用，但至少输入一个。该参数取值可通过查询路由列表（[DescribeRouteTables](https://cloud.tencent.com/document/product/215/15763)）获取。
        # @type RouteIds: Array
        # @param RouteItemIds: 路由策略唯一ID。不能和RouteIds同时使用，但至少输入一个。该参数取值可通过查询路由列表（[DescribeRouteTables](https://cloud.tencent.com/document/product/215/15763)）获取。
        # @type RouteItemIds: Array

        attr_accessor :RouteTableId, :RouteIds, :RouteItemIds
        
        def initialize(routetableid=nil, routeids=nil, routeitemids=nil)
          @RouteTableId = routetableid
          @RouteIds = routeids
          @RouteItemIds = routeitemids
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteIds = params['RouteIds']
          @RouteItemIds = params['RouteItemIds']
        end
      end

      # EnableRoutes返回参数结构体
      class EnableRoutesResponse < TencentCloud::Common::AbstractModel
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

      # EnableVpcEndPointConnect请求参数结构体
      class EnableVpcEndPointConnectRequest < TencentCloud::Common::AbstractModel
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String
        # @param EndPointId: 终端节点ID。
        # @type EndPointId: Array
        # @param AcceptFlag: 是否接受终端节点连接请求。
        # @type AcceptFlag: Boolean

        attr_accessor :EndPointServiceId, :EndPointId, :AcceptFlag
        
        def initialize(endpointserviceid=nil, endpointid=nil, acceptflag=nil)
          @EndPointServiceId = endpointserviceid
          @EndPointId = endpointid
          @AcceptFlag = acceptflag
        end

        def deserialize(params)
          @EndPointServiceId = params['EndPointServiceId']
          @EndPointId = params['EndPointId']
          @AcceptFlag = params['AcceptFlag']
        end
      end

      # EnableVpcEndPointConnect返回参数结构体
      class EnableVpcEndPointConnectResponse < TencentCloud::Common::AbstractModel
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

      # EnableVpnGatewaySslClientCert请求参数结构体
      class EnableVpnGatewaySslClientCertRequest < TencentCloud::Common::AbstractModel
        # @param SslVpnClientId: SSL-VPN-CLIENT 实例ID。
        # @type SslVpnClientId: String

        attr_accessor :SslVpnClientId
        
        def initialize(sslvpnclientid=nil)
          @SslVpnClientId = sslvpnclientid
        end

        def deserialize(params)
          @SslVpnClientId = params['SslVpnClientId']
        end
      end

      # EnableVpnGatewaySslClientCert返回参数结构体
      class EnableVpnGatewaySslClientCertResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务实例ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 终端节点详情。
      class EndPoint < TencentCloud::Common::AbstractModel
        # @param EndPointId: 终端节点ID。
        # @type EndPointId: String
        # @param VpcId: VPCID。
        # @type VpcId: String
        # @param SubnetId: 子网ID。
        # @type SubnetId: String
        # @param EndPointOwner: APPID。
        # @type EndPointOwner: String
        # @param EndPointName: 终端节点名称。
        # @type EndPointName: String
        # @param ServiceVpcId: 终端节点服务的VPCID。
        # @type ServiceVpcId: String
        # @param ServiceVip: 终端节点服务的VIP。
        # @type ServiceVip: String
        # @param EndPointServiceId: 终端节点服务的ID。
        # @type EndPointServiceId: String
        # @param EndPointVip: 终端节点的VIP。
        # @type EndPointVip: String
        # @param State: 终端节点状态，ACTIVE：可用，PENDING：待接受，ACCEPTING：接受中，REJECTED：已拒绝，FAILED：失败。
        # @type State: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param GroupSet: 终端节点绑定的安全组实例ID列表。
        # @type GroupSet: Array
        # @param ServiceName: 终端节点服务名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String

        attr_accessor :EndPointId, :VpcId, :SubnetId, :EndPointOwner, :EndPointName, :ServiceVpcId, :ServiceVip, :EndPointServiceId, :EndPointVip, :State, :CreateTime, :GroupSet, :ServiceName
        
        def initialize(endpointid=nil, vpcid=nil, subnetid=nil, endpointowner=nil, endpointname=nil, servicevpcid=nil, servicevip=nil, endpointserviceid=nil, endpointvip=nil, state=nil, createtime=nil, groupset=nil, servicename=nil)
          @EndPointId = endpointid
          @VpcId = vpcid
          @SubnetId = subnetid
          @EndPointOwner = endpointowner
          @EndPointName = endpointname
          @ServiceVpcId = servicevpcid
          @ServiceVip = servicevip
          @EndPointServiceId = endpointserviceid
          @EndPointVip = endpointvip
          @State = state
          @CreateTime = createtime
          @GroupSet = groupset
          @ServiceName = servicename
        end

        def deserialize(params)
          @EndPointId = params['EndPointId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @EndPointOwner = params['EndPointOwner']
          @EndPointName = params['EndPointName']
          @ServiceVpcId = params['ServiceVpcId']
          @ServiceVip = params['ServiceVip']
          @EndPointServiceId = params['EndPointServiceId']
          @EndPointVip = params['EndPointVip']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @GroupSet = params['GroupSet']
          @ServiceName = params['ServiceName']
        end
      end

      # 终端节点服务对象。
      class EndPointService < TencentCloud::Common::AbstractModel
        # @param EndPointServiceId: 终端节点服务ID
        # @type EndPointServiceId: String
        # @param VpcId: VPCID。
        # @type VpcId: String
        # @param ServiceOwner: APPID。
        # @type ServiceOwner: String
        # @param ServiceName: 终端节点服务名称。
        # @type ServiceName: String
        # @param ServiceVip: 后端服务的VIP。
        # @type ServiceVip: String
        # @param ServiceInstanceId: 后端服务的ID，比如lb-xxx。
        # @type ServiceInstanceId: String
        # @param AutoAcceptFlag: 是否自动接受。
        # @type AutoAcceptFlag: Boolean
        # @param EndPointCount: 关联的终端节点个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPointCount: Integer
        # @param EndPointSet: 终端节点对象数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPointSet: Array
        # @param CreateTime: 创建时间。
        # @type CreateTime: String

        attr_accessor :EndPointServiceId, :VpcId, :ServiceOwner, :ServiceName, :ServiceVip, :ServiceInstanceId, :AutoAcceptFlag, :EndPointCount, :EndPointSet, :CreateTime
        
        def initialize(endpointserviceid=nil, vpcid=nil, serviceowner=nil, servicename=nil, servicevip=nil, serviceinstanceid=nil, autoacceptflag=nil, endpointcount=nil, endpointset=nil, createtime=nil)
          @EndPointServiceId = endpointserviceid
          @VpcId = vpcid
          @ServiceOwner = serviceowner
          @ServiceName = servicename
          @ServiceVip = servicevip
          @ServiceInstanceId = serviceinstanceid
          @AutoAcceptFlag = autoacceptflag
          @EndPointCount = endpointcount
          @EndPointSet = endpointset
          @CreateTime = createtime
        end

        def deserialize(params)
          @EndPointServiceId = params['EndPointServiceId']
          @VpcId = params['VpcId']
          @ServiceOwner = params['ServiceOwner']
          @ServiceName = params['ServiceName']
          @ServiceVip = params['ServiceVip']
          @ServiceInstanceId = params['ServiceInstanceId']
          @AutoAcceptFlag = params['AutoAcceptFlag']
          @EndPointCount = params['EndPointCount']
          unless params['EndPointSet'].nil?
            @EndPointSet = []
            params['EndPointSet'].each do |i|
              endpoint_tmp = EndPoint.new
              endpoint_tmp.deserialize(i)
              @EndPointSet << endpoint_tmp
            end
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # 过滤器键值对
      class FilterObject < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # 流日志
      class FlowLog < TencentCloud::Common::AbstractModel
        # @param VpcId: 私用网络ID或者统一ID，建议使用统一ID。
        # @type VpcId: String
        # @param FlowLogId: 流日志唯一ID。
        # @type FlowLogId: String
        # @param FlowLogName: 流日志实例名字。
        # @type FlowLogName: String
        # @param ResourceType: 流日志所属资源类型，VPC|SUBNET|NETWORKINTERFACE|CCN|NAT|DCG。
        # @type ResourceType: String
        # @param ResourceId: 资源唯一ID。
        # @type ResourceId: String
        # @param TrafficType: 流日志采集类型，ACCEPT|REJECT|ALL。
        # @type TrafficType: String
        # @param CloudLogId: 流日志存储ID。
        # @type CloudLogId: String
        # @param CloudLogState: 流日志存储ID状态。
        # @type CloudLogState: String
        # @param FlowLogDescription: 流日志描述信息。
        # @type FlowLogDescription: String
        # @param CreatedTime: 流日志创建时间。
        # @type CreatedTime: String
        # @param TagSet: 标签列表，例如：[{"Key": "city", "Value": "shanghai"}]。
        # @type TagSet: Array
        # @param Enable: 是否启用，true-启用，false-停用。
        # @type Enable: Boolean
        # @param StorageType: 消费端类型：cls、ckafka。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param FlowLogStorage: 消费端信息，当消费端类型为ckafka时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowLogStorage: :class:`Tencentcloud::Vpc.v20170312.models.FlowLogStorage`
        # @param CloudLogRegion: 流日志存储ID对应的地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudLogRegion: String

        attr_accessor :VpcId, :FlowLogId, :FlowLogName, :ResourceType, :ResourceId, :TrafficType, :CloudLogId, :CloudLogState, :FlowLogDescription, :CreatedTime, :TagSet, :Enable, :StorageType, :FlowLogStorage, :CloudLogRegion
        
        def initialize(vpcid=nil, flowlogid=nil, flowlogname=nil, resourcetype=nil, resourceid=nil, traffictype=nil, cloudlogid=nil, cloudlogstate=nil, flowlogdescription=nil, createdtime=nil, tagset=nil, enable=nil, storagetype=nil, flowlogstorage=nil, cloudlogregion=nil)
          @VpcId = vpcid
          @FlowLogId = flowlogid
          @FlowLogName = flowlogname
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @TrafficType = traffictype
          @CloudLogId = cloudlogid
          @CloudLogState = cloudlogstate
          @FlowLogDescription = flowlogdescription
          @CreatedTime = createdtime
          @TagSet = tagset
          @Enable = enable
          @StorageType = storagetype
          @FlowLogStorage = flowlogstorage
          @CloudLogRegion = cloudlogregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @FlowLogId = params['FlowLogId']
          @FlowLogName = params['FlowLogName']
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @TrafficType = params['TrafficType']
          @CloudLogId = params['CloudLogId']
          @CloudLogState = params['CloudLogState']
          @FlowLogDescription = params['FlowLogDescription']
          @CreatedTime = params['CreatedTime']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @Enable = params['Enable']
          @StorageType = params['StorageType']
          unless params['FlowLogStorage'].nil?
            @FlowLogStorage = FlowLogStorage.new
            @FlowLogStorage.deserialize(params['FlowLogStorage'])
          end
          @CloudLogRegion = params['CloudLogRegion']
        end
      end

      # 流日志存储信息
      class FlowLogStorage < TencentCloud::Common::AbstractModel
        # @param StorageId: 存储实例Id，当流日志存储类型为ckafka时，必填。
        # @type StorageId: String
        # @param StorageTopic: 主题Id，当流日志存储类型为ckafka时，必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageTopic: String

        attr_accessor :StorageId, :StorageTopic
        
        def initialize(storageid=nil, storagetopic=nil)
          @StorageId = storageid
          @StorageTopic = storagetopic
        end

        def deserialize(params)
          @StorageId = params['StorageId']
          @StorageTopic = params['StorageTopic']
        end
      end

      # 网关流量监控明细
      class GatewayFlowMonitorDetail < TencentCloud::Common::AbstractModel
        # @param PrivateIpAddress: 来源`IP`。
        # @type PrivateIpAddress: String
        # @param InPkg: 入包量。
        # @type InPkg: Integer
        # @param OutPkg: 出包量。
        # @type OutPkg: Integer
        # @param InTraffic: 入流量，单位：`Byte`。
        # @type InTraffic: Integer
        # @param OutTraffic: 出流量，单位：`Byte`。
        # @type OutTraffic: Integer

        attr_accessor :PrivateIpAddress, :InPkg, :OutPkg, :InTraffic, :OutTraffic
        
        def initialize(privateipaddress=nil, inpkg=nil, outpkg=nil, intraffic=nil, outtraffic=nil)
          @PrivateIpAddress = privateipaddress
          @InPkg = inpkg
          @OutPkg = outpkg
          @InTraffic = intraffic
          @OutTraffic = outtraffic
        end

        def deserialize(params)
          @PrivateIpAddress = params['PrivateIpAddress']
          @InPkg = params['InPkg']
          @OutPkg = params['OutPkg']
          @InTraffic = params['InTraffic']
          @OutTraffic = params['OutTraffic']
        end
      end

      # 网关流控带宽信息
      class GatewayQos < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param IpAddress: 云服务器内网IP。
        # @type IpAddress: String
        # @param Bandwidth: 流控带宽值。
        # @type Bandwidth: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String

        attr_accessor :VpcId, :IpAddress, :Bandwidth, :CreateTime
        
        def initialize(vpcid=nil, ipaddress=nil, bandwidth=nil, createtime=nil)
          @VpcId = vpcid
          @IpAddress = ipaddress
          @Bandwidth = bandwidth
          @CreateTime = createtime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @IpAddress = params['IpAddress']
          @Bandwidth = params['Bandwidth']
          @CreateTime = params['CreateTime']
        end
      end

      # GetCcnRegionBandwidthLimits请求参数结构体
      class GetCcnRegionBandwidthLimitsRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param Filters: 过滤条件。
        # <li>sregion - String - （过滤条件）源地域，形如：ap-guangzhou。</li>
        # <li>dregion - String - （过滤条件）目的地域，形如：ap-shanghai-bm</li>
        # @type Filters: Array
        # @param SortedBy: 排序条件，目前支持带宽（BandwidthLimit）和过期时间（ExpireTime）
        # @type SortedBy: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param OrderBy: 排序方式，'ASC':升序,'DESC':降序。
        # @type OrderBy: String

        attr_accessor :CcnId, :Filters, :SortedBy, :Offset, :Limit, :OrderBy
        
        def initialize(ccnid=nil, filters=nil, sortedby=nil, offset=nil, limit=nil, orderby=nil)
          @CcnId = ccnid
          @Filters = filters
          @SortedBy = sortedby
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortedBy = params['SortedBy']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
        end
      end

      # GetCcnRegionBandwidthLimits返回参数结构体
      class GetCcnRegionBandwidthLimitsResponse < TencentCloud::Common::AbstractModel
        # @param CcnBandwidthSet: 云联网（CCN）各地域出带宽带宽详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnBandwidthSet: Array
        # @param TotalCount: 符合条件的对象数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CcnBandwidthSet, :TotalCount, :RequestId
        
        def initialize(ccnbandwidthset=nil, totalcount=nil, requestid=nil)
          @CcnBandwidthSet = ccnbandwidthset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CcnBandwidthSet'].nil?
            @CcnBandwidthSet = []
            params['CcnBandwidthSet'].each do |i|
              ccnbandwidthinfo_tmp = CcnBandwidthInfo.new
              ccnbandwidthinfo_tmp.deserialize(i)
              @CcnBandwidthSet << ccnbandwidthinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 描述 HAVIP 信息
      class HaVip < TencentCloud::Common::AbstractModel
        # @param HaVipId: `HAVIP`的`ID`，是`HAVIP`的唯一标识。
        # @type HaVipId: String
        # @param HaVipName: `HAVIP`名称。
        # @type HaVipName: String
        # @param Vip: 虚拟IP地址。
        # @type Vip: String
        # @param VpcId: `HAVIP`所在私有网络`ID`。
        # @type VpcId: String
        # @param SubnetId: `HAVIP`所在子网`ID`。
        # @type SubnetId: String
        # @param NetworkInterfaceId: `HAVIP`关联弹性网卡`ID`。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 被绑定的实例`ID`。
        # @type InstanceId: String
        # @param AddressIp: 绑定`EIP`。
        # @type AddressIp: String
        # @param State: 状态：
        # <li>`AVAILABLE`：运行中</li>
        # <li>`UNBIND`：未绑定</li>
        # @type State: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param Business: 使用havip的业务标识。
        # @type Business: String

        attr_accessor :HaVipId, :HaVipName, :Vip, :VpcId, :SubnetId, :NetworkInterfaceId, :InstanceId, :AddressIp, :State, :CreatedTime, :Business
        
        def initialize(havipid=nil, havipname=nil, vip=nil, vpcid=nil, subnetid=nil, networkinterfaceid=nil, instanceid=nil, addressip=nil, state=nil, createdtime=nil, business=nil)
          @HaVipId = havipid
          @HaVipName = havipname
          @Vip = vip
          @VpcId = vpcid
          @SubnetId = subnetid
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
          @AddressIp = addressip
          @State = state
          @CreatedTime = createdtime
          @Business = business
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
          @HaVipName = params['HaVipName']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
          @AddressIp = params['AddressIp']
          @State = params['State']
          @CreatedTime = params['CreatedTime']
          @Business = params['Business']
        end
      end

      # HaVipAssociateAddressIp请求参数结构体
      class HaVipAssociateAddressIpRequest < TencentCloud::Common::AbstractModel
        # @param HaVipId: `HAVIP`唯一`ID`，形如：`havip-9o233uri`。必须是没有绑定`EIP`的`HAVIP`
        # @type HaVipId: String
        # @param AddressIp: 弹性公网`IP`。必须是没有绑定`HAVIP`的`EIP`
        # @type AddressIp: String

        attr_accessor :HaVipId, :AddressIp
        
        def initialize(havipid=nil, addressip=nil)
          @HaVipId = havipid
          @AddressIp = addressip
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
          @AddressIp = params['AddressIp']
        end
      end

      # HaVipAssociateAddressIp返回参数结构体
      class HaVipAssociateAddressIpResponse < TencentCloud::Common::AbstractModel
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

      # HaVipDisassociateAddressIp请求参数结构体
      class HaVipDisassociateAddressIpRequest < TencentCloud::Common::AbstractModel
        # @param HaVipId: `HAVIP`唯一`ID`，形如：`havip-9o233uri`。必须是已绑定`EIP`的`HAVIP`。
        # @type HaVipId: String

        attr_accessor :HaVipId
        
        def initialize(havipid=nil)
          @HaVipId = havipid
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
        end
      end

      # HaVipDisassociateAddressIp返回参数结构体
      class HaVipDisassociateAddressIpResponse < TencentCloud::Common::AbstractModel
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

      # IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议
      class IKEOptionsSpecification < TencentCloud::Common::AbstractModel
        # @param PropoEncryAlgorithm: 加密算法，可选值：'3DES-CBC', 'AES-CBC-128', 'AES-CBS-192', 'AES-CBC-256', 'DES-CBC'，'SM4', 默认为3DES-CBC
        # @type PropoEncryAlgorithm: String
        # @param PropoAuthenAlgorithm: 认证算法：可选值：'MD5', 'SHA1'，'SHA-256' 默认为MD5
        # @type PropoAuthenAlgorithm: String
        # @param ExchangeMode: 协商模式：可选值：'AGGRESSIVE', 'MAIN'，默认为MAIN
        # @type ExchangeMode: String
        # @param LocalIdentity: 本端标识类型：可选值：'ADDRESS', 'FQDN'，默认为ADDRESS
        # @type LocalIdentity: String
        # @param RemoteIdentity: 对端标识类型：可选值：'ADDRESS', 'FQDN'，默认为ADDRESS
        # @type RemoteIdentity: String
        # @param LocalAddress: 本端标识，当LocalIdentity选为ADDRESS时，LocalAddress必填。localAddress默认为vpn网关公网IP
        # @type LocalAddress: String
        # @param RemoteAddress: 对端标识，当RemoteIdentity选为ADDRESS时，RemoteAddress必填
        # @type RemoteAddress: String
        # @param LocalFqdnName: 本端标识，当LocalIdentity选为FQDN时，LocalFqdnName必填
        # @type LocalFqdnName: String
        # @param RemoteFqdnName: 对端标识，当remoteIdentity选为FQDN时，RemoteFqdnName必填
        # @type RemoteFqdnName: String
        # @param DhGroupName: DH group，指定IKE交换密钥时使用的DH组，可选值：'GROUP1', 'GROUP2', 'GROUP5', 'GROUP14', 'GROUP24'，
        # @type DhGroupName: String
        # @param IKESaLifetimeSeconds: IKE SA Lifetime，单位：秒，设置IKE SA的生存周期，取值范围：60-604800
        # @type IKESaLifetimeSeconds: Integer
        # @param IKEVersion: IKE版本
        # @type IKEVersion: String

        attr_accessor :PropoEncryAlgorithm, :PropoAuthenAlgorithm, :ExchangeMode, :LocalIdentity, :RemoteIdentity, :LocalAddress, :RemoteAddress, :LocalFqdnName, :RemoteFqdnName, :DhGroupName, :IKESaLifetimeSeconds, :IKEVersion
        
        def initialize(propoencryalgorithm=nil, propoauthenalgorithm=nil, exchangemode=nil, localidentity=nil, remoteidentity=nil, localaddress=nil, remoteaddress=nil, localfqdnname=nil, remotefqdnname=nil, dhgroupname=nil, ikesalifetimeseconds=nil, ikeversion=nil)
          @PropoEncryAlgorithm = propoencryalgorithm
          @PropoAuthenAlgorithm = propoauthenalgorithm
          @ExchangeMode = exchangemode
          @LocalIdentity = localidentity
          @RemoteIdentity = remoteidentity
          @LocalAddress = localaddress
          @RemoteAddress = remoteaddress
          @LocalFqdnName = localfqdnname
          @RemoteFqdnName = remotefqdnname
          @DhGroupName = dhgroupname
          @IKESaLifetimeSeconds = ikesalifetimeseconds
          @IKEVersion = ikeversion
        end

        def deserialize(params)
          @PropoEncryAlgorithm = params['PropoEncryAlgorithm']
          @PropoAuthenAlgorithm = params['PropoAuthenAlgorithm']
          @ExchangeMode = params['ExchangeMode']
          @LocalIdentity = params['LocalIdentity']
          @RemoteIdentity = params['RemoteIdentity']
          @LocalAddress = params['LocalAddress']
          @RemoteAddress = params['RemoteAddress']
          @LocalFqdnName = params['LocalFqdnName']
          @RemoteFqdnName = params['RemoteFqdnName']
          @DhGroupName = params['DhGroupName']
          @IKESaLifetimeSeconds = params['IKESaLifetimeSeconds']
          @IKEVersion = params['IKEVersion']
        end
      end

      # IPSec配置，腾讯云提供IPSec安全会话设置
      class IPSECOptionsSpecification < TencentCloud::Common::AbstractModel
        # @param EncryptAlgorithm: 加密算法，可选值：'3DES-CBC', 'AES-CBC-128', 'AES-CBC-192', 'AES-CBC-256', 'DES-CBC', 'SM4', 'NULL'， 默认为AES-CBC-128
        # @type EncryptAlgorithm: String
        # @param IntegrityAlgorith: 认证算法：可选值：'MD5', 'SHA1'，'SHA-256' 默认为
        # @type IntegrityAlgorith: String
        # @param IPSECSaLifetimeSeconds: IPsec SA lifetime(s)：单位秒，取值范围：180-604800
        # @type IPSECSaLifetimeSeconds: Integer
        # @param PfsDhGroup: PFS：可选值：'NULL', 'DH-GROUP1', 'DH-GROUP2', 'DH-GROUP5', 'DH-GROUP14', 'DH-GROUP24'，默认为NULL
        # @type PfsDhGroup: String
        # @param IPSECSaLifetimeTraffic: IPsec SA lifetime(KB)：单位KB，取值范围：2560-604800
        # @type IPSECSaLifetimeTraffic: Integer

        attr_accessor :EncryptAlgorithm, :IntegrityAlgorith, :IPSECSaLifetimeSeconds, :PfsDhGroup, :IPSECSaLifetimeTraffic
        
        def initialize(encryptalgorithm=nil, integrityalgorith=nil, ipsecsalifetimeseconds=nil, pfsdhgroup=nil, ipsecsalifetimetraffic=nil)
          @EncryptAlgorithm = encryptalgorithm
          @IntegrityAlgorith = integrityalgorith
          @IPSECSaLifetimeSeconds = ipsecsalifetimeseconds
          @PfsDhGroup = pfsdhgroup
          @IPSECSaLifetimeTraffic = ipsecsalifetimetraffic
        end

        def deserialize(params)
          @EncryptAlgorithm = params['EncryptAlgorithm']
          @IntegrityAlgorith = params['IntegrityAlgorith']
          @IPSECSaLifetimeSeconds = params['IPSECSaLifetimeSeconds']
          @PfsDhGroup = params['PfsDhGroup']
          @IPSECSaLifetimeTraffic = params['IPSECSaLifetimeTraffic']
        end
      end

      # InquirePriceCreateDirectConnectGateway请求参数结构体
      class InquirePriceCreateDirectConnectGatewayRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # InquirePriceCreateDirectConnectGateway返回参数结构体
      class InquirePriceCreateDirectConnectGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TotalCost: 专线网关标准接入费用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Integer
        # @param RealTotalCost: 专线网关真实接入费用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCost, :RealTotalCost, :RequestId
        
        def initialize(totalcost=nil, realtotalcost=nil, requestid=nil)
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceCreateVpnGateway请求参数结构体
      class InquiryPriceCreateVpnGatewayRequest < TencentCloud::Common::AbstractModel
        # @param InternetMaxBandwidthOut: 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps。
        # @type InternetMaxBandwidthOut: Integer
        # @param InstanceChargeType: VPN网关计费模式，PREPAID：表示预付费，即包年包月，POSTPAID_BY_HOUR：表示后付费，即按量计费。默认：POSTPAID_BY_HOUR，如果指定预付费模式，参数InstanceChargePrepaid必填。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.InstanceChargePrepaid`
        # @param MaxConnection: SSL VPN连接数设置，可选规格：5, 10, 20, 50, 100；单位：个。
        # @type MaxConnection: Integer
        # @param Type: 查询的VPN类型，支持IPSEC和SSL两种类型，为SSL类型时，MaxConnection参数必传。
        # @type Type: String

        attr_accessor :InternetMaxBandwidthOut, :InstanceChargeType, :InstanceChargePrepaid, :MaxConnection, :Type
        
        def initialize(internetmaxbandwidthout=nil, instancechargetype=nil, instancechargeprepaid=nil, maxconnection=nil, type=nil)
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @MaxConnection = maxconnection
          @Type = type
        end

        def deserialize(params)
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @MaxConnection = params['MaxConnection']
          @Type = params['Type']
        end
      end

      # InquiryPriceCreateVpnGateway返回参数结构体
      class InquiryPriceCreateVpnGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Price: 商品价格。
        # @type Price: :class:`Tencentcloud::Vpc.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewVpnGateway请求参数结构体
      class InquiryPriceRenewVpnGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.InstanceChargePrepaid`

        attr_accessor :VpnGatewayId, :InstanceChargePrepaid
        
        def initialize(vpngatewayid=nil, instancechargeprepaid=nil)
          @VpnGatewayId = vpngatewayid
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
        end
      end

      # InquiryPriceRenewVpnGateway返回参数结构体
      class InquiryPriceRenewVpnGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Price: 商品价格。
        # @type Price: :class:`Tencentcloud::Vpc.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceResetVpnGatewayInternetMaxBandwidth请求参数结构体
      class InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param InternetMaxBandwidthOut: 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps。
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :VpnGatewayId, :InternetMaxBandwidthOut
        
        def initialize(vpngatewayid=nil, internetmaxbandwidthout=nil)
          @VpnGatewayId = vpngatewayid
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # InquiryPriceResetVpnGatewayInternetMaxBandwidth返回参数结构体
      class InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param Price: 商品价格。
        # @type Price: :class:`Tencentcloud::Vpc.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 预付费（包年包月）计费对象。
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围： NOTIFY_AND_AUTO_RENEW：通知过期且自动续费， NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费。默认：NOTIFY_AND_MANUAL_RENEW
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

      # 用于描述实例的统计信息
      class InstanceStatistic < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例的类型
        # @type InstanceType: String
        # @param InstanceCount: 实例的个数
        # @type InstanceCount: Integer

        attr_accessor :InstanceType, :InstanceCount
        
        def initialize(instancetype=nil, instancecount=nil)
          @InstanceType = instancetype
          @InstanceCount = instancecount
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @InstanceCount = params['InstanceCount']
        end
      end

      # IPV6转换规则
      class Ip6Rule < TencentCloud::Common::AbstractModel
        # @param Ip6RuleId: IPV6转换规则唯一ID，形如rule6-xxxxxxxx
        # @type Ip6RuleId: String
        # @param Ip6RuleName: IPV6转换规则名称
        # @type Ip6RuleName: String
        # @param Vip6: IPV6地址
        # @type Vip6: String
        # @param Vport6: IPV6端口号
        # @type Vport6: Integer
        # @param Protocol: 协议类型，支持TCP/UDP
        # @type Protocol: String
        # @param Vip: IPV4地址
        # @type Vip: String
        # @param Vport: IPV4端口号
        # @type Vport: Integer
        # @param RuleStatus: 转换规则状态，限于CREATING,RUNNING,DELETING,MODIFYING
        # @type RuleStatus: String
        # @param CreatedTime: 转换规则创建时间
        # @type CreatedTime: String

        attr_accessor :Ip6RuleId, :Ip6RuleName, :Vip6, :Vport6, :Protocol, :Vip, :Vport, :RuleStatus, :CreatedTime
        
        def initialize(ip6ruleid=nil, ip6rulename=nil, vip6=nil, vport6=nil, protocol=nil, vip=nil, vport=nil, rulestatus=nil, createdtime=nil)
          @Ip6RuleId = ip6ruleid
          @Ip6RuleName = ip6rulename
          @Vip6 = vip6
          @Vport6 = vport6
          @Protocol = protocol
          @Vip = vip
          @Vport = vport
          @RuleStatus = rulestatus
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @Ip6RuleId = params['Ip6RuleId']
          @Ip6RuleName = params['Ip6RuleName']
          @Vip6 = params['Vip6']
          @Vport6 = params['Vport6']
          @Protocol = params['Protocol']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @RuleStatus = params['RuleStatus']
          @CreatedTime = params['CreatedTime']
        end
      end

      # IPV6转换规则
      class Ip6RuleInfo < TencentCloud::Common::AbstractModel
        # @param Vport6: IPV6端口号，可在0~65535范围取值
        # @type Vport6: Integer
        # @param Protocol: 协议类型，支持TCP/UDP
        # @type Protocol: String
        # @param Vip: IPV4地址
        # @type Vip: String
        # @param Vport: IPV4端口号，可在0~65535范围取值
        # @type Vport: Integer

        attr_accessor :Vport6, :Protocol, :Vip, :Vport
        
        def initialize(vport6=nil, protocol=nil, vip=nil, vport=nil)
          @Vport6 = vport6
          @Protocol = protocol
          @Vip = vip
          @Vport = vport
        end

        def deserialize(params)
          @Vport6 = params['Vport6']
          @Protocol = params['Protocol']
          @Vip = params['Vip']
          @Vport = params['Vport']
        end
      end

      # IPV6转换实例信息
      class Ip6Translator < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorId: IPV6转换实例唯一ID，形如ip6-xxxxxxxx
        # @type Ip6TranslatorId: String
        # @param Ip6TranslatorName: IPV6转换实例名称
        # @type Ip6TranslatorName: String
        # @param Vip6: IPV6地址
        # @type Vip6: String
        # @param IspName: IPV6转换地址所属运营商
        # @type IspName: String
        # @param TranslatorStatus: 转换实例状态，限于CREATING,RUNNING,DELETING,MODIFYING
        # @type TranslatorStatus: String
        # @param CreatedTime: IPV6转换实例创建时间
        # @type CreatedTime: String
        # @param Ip6RuleCount: 绑定的IPV6转换规则数量
        # @type Ip6RuleCount: Integer
        # @param IP6RuleSet: IPV6转换规则信息
        # @type IP6RuleSet: Array

        attr_accessor :Ip6TranslatorId, :Ip6TranslatorName, :Vip6, :IspName, :TranslatorStatus, :CreatedTime, :Ip6RuleCount, :IP6RuleSet
        
        def initialize(ip6translatorid=nil, ip6translatorname=nil, vip6=nil, ispname=nil, translatorstatus=nil, createdtime=nil, ip6rulecount=nil, ip6ruleset=nil)
          @Ip6TranslatorId = ip6translatorid
          @Ip6TranslatorName = ip6translatorname
          @Vip6 = vip6
          @IspName = ispname
          @TranslatorStatus = translatorstatus
          @CreatedTime = createdtime
          @Ip6RuleCount = ip6rulecount
          @IP6RuleSet = ip6ruleset
        end

        def deserialize(params)
          @Ip6TranslatorId = params['Ip6TranslatorId']
          @Ip6TranslatorName = params['Ip6TranslatorName']
          @Vip6 = params['Vip6']
          @IspName = params['IspName']
          @TranslatorStatus = params['TranslatorStatus']
          @CreatedTime = params['CreatedTime']
          @Ip6RuleCount = params['Ip6RuleCount']
          unless params['IP6RuleSet'].nil?
            @IP6RuleSet = []
            params['IP6RuleSet'].each do |i|
              ip6rule_tmp = Ip6Rule.new
              ip6rule_tmp.deserialize(i)
              @IP6RuleSet << ip6rule_tmp
            end
          end
        end
      end

      # IP在线查询的字段信息
      class IpField < TencentCloud::Common::AbstractModel
        # @param Country: 国家字段信息
        # @type Country: Boolean
        # @param Province: 省、州、郡一级行政区域字段信息
        # @type Province: Boolean
        # @param City: 市一级行政区域字段信息
        # @type City: Boolean
        # @param Region: 市内区域字段信息
        # @type Region: Boolean
        # @param Isp: 接入运营商字段信息
        # @type Isp: Boolean
        # @param AsName: 骨干运营商字段信息
        # @type AsName: Boolean
        # @param AsId: 骨干As号
        # @type AsId: Boolean
        # @param Comment: 注释字段
        # @type Comment: Boolean

        attr_accessor :Country, :Province, :City, :Region, :Isp, :AsName, :AsId, :Comment
        
        def initialize(country=nil, province=nil, city=nil, region=nil, isp=nil, asname=nil, asid=nil, comment=nil)
          @Country = country
          @Province = province
          @City = city
          @Region = region
          @Isp = isp
          @AsName = asname
          @AsId = asid
          @Comment = comment
        end

        def deserialize(params)
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @Region = params['Region']
          @Isp = params['Isp']
          @AsName = params['AsName']
          @AsId = params['AsId']
          @Comment = params['Comment']
        end
      end

      # IP地理位置信息
      class IpGeolocationInfo < TencentCloud::Common::AbstractModel
        # @param Country: 国家信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: String
        # @param Province: 省、州、郡一级行政区域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param City: 市一级行政区域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param Region: 市内区域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Isp: 接入运营商信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isp: String
        # @param AsName: 骨干运营商名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsName: String
        # @param AsId: 骨干运营商AS号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsId: String
        # @param Comment: 注释信息。目前的填充值为移动接入用户的APN值，如无APN属性则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param AddressIp: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIp: String

        attr_accessor :Country, :Province, :City, :Region, :Isp, :AsName, :AsId, :Comment, :AddressIp
        
        def initialize(country=nil, province=nil, city=nil, region=nil, isp=nil, asname=nil, asid=nil, comment=nil, addressip=nil)
          @Country = country
          @Province = province
          @City = city
          @Region = region
          @Isp = isp
          @AsName = asname
          @AsId = asid
          @Comment = comment
          @AddressIp = addressip
        end

        def deserialize(params)
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @Region = params['Region']
          @Isp = params['Isp']
          @AsName = params['AsName']
          @AsId = params['AsId']
          @Comment = params['Comment']
          @AddressIp = params['AddressIp']
        end
      end

      # `IPv6`地址信息。
      class Ipv6Address < TencentCloud::Common::AbstractModel
        # @param Address: `IPv6`地址，形如：`3402:4e00:20:100:0:8cd9:2a67:71f3`
        # @type Address: String
        # @param Primary: 是否是主`IP`。
        # @type Primary: Boolean
        # @param AddressId: `EIP`实例`ID`，形如：`eip-hxlqja90`。
        # @type AddressId: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param IsWanIpBlocked: 公网IP是否被封堵。
        # @type IsWanIpBlocked: Boolean
        # @param State: `IPv6`地址状态：
        # <li>`PENDING`：生产中</li>
        # <li>`MIGRATING`：迁移中</li>
        # <li>`DELETING`：删除中</li>
        # <li>`AVAILABLE`：可用的</li>
        # @type State: String

        attr_accessor :Address, :Primary, :AddressId, :Description, :IsWanIpBlocked, :State
        
        def initialize(address=nil, primary=nil, addressid=nil, description=nil, iswanipblocked=nil, state=nil)
          @Address = address
          @Primary = primary
          @AddressId = addressid
          @Description = description
          @IsWanIpBlocked = iswanipblocked
          @State = state
        end

        def deserialize(params)
          @Address = params['Address']
          @Primary = params['Primary']
          @AddressId = params['AddressId']
          @Description = params['Description']
          @IsWanIpBlocked = params['IsWanIpBlocked']
          @State = params['State']
        end
      end

      # IPv6子网段对象。
      class Ipv6SubnetCidrBlock < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例`ID`。形如：`subnet-pxir56ns`。
        # @type SubnetId: String
        # @param Ipv6CidrBlock: `IPv6`子网段。形如：`3402:4e00:20:1001::/64`
        # @type Ipv6CidrBlock: String

        attr_accessor :SubnetId, :Ipv6CidrBlock
        
        def initialize(subnetid=nil, ipv6cidrblock=nil)
          @SubnetId = subnetid
          @Ipv6CidrBlock = ipv6cidrblock
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
        end
      end

      # 单项计费价格信息
      class ItemPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 按量计费后付费单价，单位：元。
        # @type UnitPrice: Float
        # @param ChargeUnit: 按量计费后付费计价单元，可取值范围： HOUR：表示计价单元是按每小时来计算。当前涉及该计价单元的场景有：实例按小时后付费（POSTPAID_BY_HOUR）、带宽按小时后付费（BANDWIDTH_POSTPAID_BY_HOUR）： GB：表示计价单元是按每GB来计算。当前涉及该计价单元的场景有：流量按小时后付费（TRAFFIC_POSTPAID_BY_HOUR）。
        # @type ChargeUnit: String
        # @param OriginalPrice: 预付费商品的原价，单位：元。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 预付费商品的折扣价，单位：元。
        # @type DiscountPrice: Float

        attr_accessor :UnitPrice, :ChargeUnit, :OriginalPrice, :DiscountPrice
        
        def initialize(unitprice=nil, chargeunit=nil, originalprice=nil, discountprice=nil)
          @UnitPrice = unitprice
          @ChargeUnit = chargeunit
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @ChargeUnit = params['ChargeUnit']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # 本地网关信息
      class LocalGateway < TencentCloud::Common::AbstractModel
        # @param CdcId: CDC实例ID
        # @type CdcId: String
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param UniqLocalGwId: 本地网关实例ID
        # @type UniqLocalGwId: String
        # @param LocalGatewayName: 本地网关名称
        # @type LocalGatewayName: String
        # @param LocalGwIp: 本地网关IP地址
        # @type LocalGwIp: String
        # @param CreateTime: 本地网关创建时间
        # @type CreateTime: String

        attr_accessor :CdcId, :VpcId, :UniqLocalGwId, :LocalGatewayName, :LocalGwIp, :CreateTime
        
        def initialize(cdcid=nil, vpcid=nil, uniqlocalgwid=nil, localgatewayname=nil, localgwip=nil, createtime=nil)
          @CdcId = cdcid
          @VpcId = vpcid
          @UniqLocalGwId = uniqlocalgwid
          @LocalGatewayName = localgatewayname
          @LocalGwIp = localgwip
          @CreateTime = createtime
        end

        def deserialize(params)
          @CdcId = params['CdcId']
          @VpcId = params['VpcId']
          @UniqLocalGwId = params['UniqLocalGwId']
          @LocalGatewayName = params['LocalGatewayName']
          @LocalGwIp = params['LocalGwIp']
          @CreateTime = params['CreateTime']
        end
      end

      # LockCcnBandwidths请求参数结构体
      class LockCcnBandwidthsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # LockCcnBandwidths返回参数结构体
      class LockCcnBandwidthsResponse < TencentCloud::Common::AbstractModel
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

      # LockCcns请求参数结构体
      class LockCcnsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # LockCcns返回参数结构体
      class LockCcnsResponse < TencentCloud::Common::AbstractModel
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

      # 模板对象成员信息
      class MemberInfo < TencentCloud::Common::AbstractModel
        # @param Member: 模板对象成员
        # @type Member: String
        # @param Description: 模板对象成员描述信息
        # @type Description: String

        attr_accessor :Member, :Description
        
        def initialize(member=nil, description=nil)
          @Member = member
          @Description = description
        end

        def deserialize(params)
          @Member = params['Member']
          @Description = params['Description']
        end
      end

      # MigrateNetworkInterface请求参数结构体
      class MigrateNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param SourceInstanceId: 弹性网卡当前绑定的CVM实例ID。形如：ins-r8hr2upy。
        # @type SourceInstanceId: String
        # @param DestinationInstanceId: 待迁移的目的CVM实例ID。
        # @type DestinationInstanceId: String
        # @param AttachType: 网卡绑定类型：0 标准型 1 扩展型。
        # @type AttachType: Integer

        attr_accessor :NetworkInterfaceId, :SourceInstanceId, :DestinationInstanceId, :AttachType
        
        def initialize(networkinterfaceid=nil, sourceinstanceid=nil, destinationinstanceid=nil, attachtype=nil)
          @NetworkInterfaceId = networkinterfaceid
          @SourceInstanceId = sourceinstanceid
          @DestinationInstanceId = destinationinstanceid
          @AttachType = attachtype
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @SourceInstanceId = params['SourceInstanceId']
          @DestinationInstanceId = params['DestinationInstanceId']
          @AttachType = params['AttachType']
        end
      end

      # MigrateNetworkInterface返回参数结构体
      class MigrateNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # MigratePrivateIpAddress请求参数结构体
      class MigratePrivateIpAddressRequest < TencentCloud::Common::AbstractModel
        # @param SourceNetworkInterfaceId: 当内网IP绑定的弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type SourceNetworkInterfaceId: String
        # @param DestinationNetworkInterfaceId: 待迁移的目的弹性网卡实例ID。
        # @type DestinationNetworkInterfaceId: String
        # @param PrivateIpAddress: 迁移的内网IP地址，例如：10.0.0.6。
        # @type PrivateIpAddress: String

        attr_accessor :SourceNetworkInterfaceId, :DestinationNetworkInterfaceId, :PrivateIpAddress
        
        def initialize(sourcenetworkinterfaceid=nil, destinationnetworkinterfaceid=nil, privateipaddress=nil)
          @SourceNetworkInterfaceId = sourcenetworkinterfaceid
          @DestinationNetworkInterfaceId = destinationnetworkinterfaceid
          @PrivateIpAddress = privateipaddress
        end

        def deserialize(params)
          @SourceNetworkInterfaceId = params['SourceNetworkInterfaceId']
          @DestinationNetworkInterfaceId = params['DestinationNetworkInterfaceId']
          @PrivateIpAddress = params['PrivateIpAddress']
        end
      end

      # MigratePrivateIpAddress返回参数结构体
      class MigratePrivateIpAddressResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressAttribute请求参数结构体
      class ModifyAddressAttributeRequest < TencentCloud::Common::AbstractModel
        # @param AddressId: 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：`eip-11112222`。
        # @type AddressId: String
        # @param AddressName: 修改后的 EIP 名称。长度上限为20个字符。
        # @type AddressName: String
        # @param EipDirectConnection: 设定EIP是否直通，"TRUE"表示直通，"FALSE"表示非直通。注意该参数仅对EIP直通功能可见的用户可以设定。
        # @type EipDirectConnection: String

        attr_accessor :AddressId, :AddressName, :EipDirectConnection
        
        def initialize(addressid=nil, addressname=nil, eipdirectconnection=nil)
          @AddressId = addressid
          @AddressName = addressname
          @EipDirectConnection = eipdirectconnection
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @AddressName = params['AddressName']
          @EipDirectConnection = params['EipDirectConnection']
        end
      end

      # ModifyAddressAttribute返回参数结构体
      class ModifyAddressAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressInternetChargeType请求参数结构体
      class ModifyAddressInternetChargeTypeRequest < TencentCloud::Common::AbstractModel
        # @param AddressId: 弹性公网IP的唯一ID，形如eip-xxx
        # @type AddressId: String
        # @param InternetChargeType: 弹性公网IP调整目标计费模式，只支持"BANDWIDTH_PREPAID_BY_MONTH"和"TRAFFIC_POSTPAID_BY_HOUR"
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 弹性公网IP调整目标带宽值
        # @type InternetMaxBandwidthOut: Integer
        # @param AddressChargePrepaid: 包月带宽网络计费模式参数。弹性公网IP的调整目标计费模式是"BANDWIDTH_PREPAID_BY_MONTH"时，必传该参数。
        # @type AddressChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.AddressChargePrepaid`

        attr_accessor :AddressId, :InternetChargeType, :InternetMaxBandwidthOut, :AddressChargePrepaid
        
        def initialize(addressid=nil, internetchargetype=nil, internetmaxbandwidthout=nil, addresschargeprepaid=nil)
          @AddressId = addressid
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @AddressChargePrepaid = addresschargeprepaid
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          unless params['AddressChargePrepaid'].nil?
            @AddressChargePrepaid = AddressChargePrepaid.new
            @AddressChargePrepaid.deserialize(params['AddressChargePrepaid'])
          end
        end
      end

      # ModifyAddressInternetChargeType返回参数结构体
      class ModifyAddressInternetChargeTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressTemplateAttribute请求参数结构体
      class ModifyAddressTemplateAttributeRequest < TencentCloud::Common::AbstractModel
        # @param AddressTemplateId: IP地址模板实例ID，例如：ipm-mdunqeb6。
        # @type AddressTemplateId: String
        # @param AddressTemplateName: IP地址模板名称。
        # @type AddressTemplateName: String
        # @param Addresses: 地址信息，支持 IP、CIDR、IP 范围。
        # @type Addresses: Array
        # @param AddressesExtra: 支持添加备注的地址信息，支持 IP、CIDR、IP 范围。
        # @type AddressesExtra: Array

        attr_accessor :AddressTemplateId, :AddressTemplateName, :Addresses, :AddressesExtra
        
        def initialize(addresstemplateid=nil, addresstemplatename=nil, addresses=nil, addressesextra=nil)
          @AddressTemplateId = addresstemplateid
          @AddressTemplateName = addresstemplatename
          @Addresses = addresses
          @AddressesExtra = addressesextra
        end

        def deserialize(params)
          @AddressTemplateId = params['AddressTemplateId']
          @AddressTemplateName = params['AddressTemplateName']
          @Addresses = params['Addresses']
          unless params['AddressesExtra'].nil?
            @AddressesExtra = []
            params['AddressesExtra'].each do |i|
              addressinfo_tmp = AddressInfo.new
              addressinfo_tmp.deserialize(i)
              @AddressesExtra << addressinfo_tmp
            end
          end
        end
      end

      # ModifyAddressTemplateAttribute返回参数结构体
      class ModifyAddressTemplateAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressTemplateGroupAttribute请求参数结构体
      class ModifyAddressTemplateGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param AddressTemplateGroupId: IP地址模板集合实例ID，例如：ipmg-2uw6ujo6。
        # @type AddressTemplateGroupId: String
        # @param AddressTemplateGroupName: IP地址模板集合名称。
        # @type AddressTemplateGroupName: String
        # @param AddressTemplateIds: IP地址模板实例ID， 例如：ipm-mdunqeb6。
        # @type AddressTemplateIds: Array

        attr_accessor :AddressTemplateGroupId, :AddressTemplateGroupName, :AddressTemplateIds
        
        def initialize(addresstemplategroupid=nil, addresstemplategroupname=nil, addresstemplateids=nil)
          @AddressTemplateGroupId = addresstemplategroupid
          @AddressTemplateGroupName = addresstemplategroupname
          @AddressTemplateIds = addresstemplateids
        end

        def deserialize(params)
          @AddressTemplateGroupId = params['AddressTemplateGroupId']
          @AddressTemplateGroupName = params['AddressTemplateGroupName']
          @AddressTemplateIds = params['AddressTemplateIds']
        end
      end

      # ModifyAddressTemplateGroupAttribute返回参数结构体
      class ModifyAddressTemplateGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressesBandwidth请求参数结构体
      class ModifyAddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param AddressIds: EIP唯一标识ID列表，形如'eip-xxxx'
        # @type AddressIds: Array
        # @param InternetMaxBandwidthOut: 调整带宽目标值
        # @type InternetMaxBandwidthOut: Integer
        # @param StartTime: 包月带宽起始时间(已废弃，输入无效)
        # @type StartTime: String
        # @param EndTime: 包月带宽结束时间(已废弃，输入无效)
        # @type EndTime: String

        attr_accessor :AddressIds, :InternetMaxBandwidthOut, :StartTime, :EndTime
        
        def initialize(addressids=nil, internetmaxbandwidthout=nil, starttime=nil, endtime=nil)
          @AddressIds = addressids
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @AddressIds = params['AddressIds']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyAddressesBandwidth返回参数结构体
      class ModifyAddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyAssistantCidr请求参数结构体
      class ModifyAssistantCidrRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        # @type VpcId: String
        # @param NewCidrBlocks: 待添加的辅助CIDR。CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]，入参NewCidrBlocks和OldCidrBlocks至少需要其一。
        # @type NewCidrBlocks: Array
        # @param OldCidrBlocks: 待删除的辅助CIDR。CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]，入参NewCidrBlocks和OldCidrBlocks至少需要其一。
        # @type OldCidrBlocks: Array

        attr_accessor :VpcId, :NewCidrBlocks, :OldCidrBlocks
        
        def initialize(vpcid=nil, newcidrblocks=nil, oldcidrblocks=nil)
          @VpcId = vpcid
          @NewCidrBlocks = newcidrblocks
          @OldCidrBlocks = oldcidrblocks
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NewCidrBlocks = params['NewCidrBlocks']
          @OldCidrBlocks = params['OldCidrBlocks']
        end
      end

      # ModifyAssistantCidr返回参数结构体
      class ModifyAssistantCidrResponse < TencentCloud::Common::AbstractModel
        # @param AssistantCidrSet: 辅助CIDR数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantCidrSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssistantCidrSet, :RequestId
        
        def initialize(assistantcidrset=nil, requestid=nil)
          @AssistantCidrSet = assistantcidrset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssistantCidrSet'].nil?
            @AssistantCidrSet = []
            params['AssistantCidrSet'].each do |i|
              assistantcidr_tmp = AssistantCidr.new
              assistantcidr_tmp.deserialize(i)
              @AssistantCidrSet << assistantcidr_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyBandwidthPackageAttribute请求参数结构体
      class ModifyBandwidthPackageAttributeRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 带宽包唯一标识ID
        # @type BandwidthPackageId: String
        # @param BandwidthPackageName: 带宽包名称
        # @type BandwidthPackageName: String
        # @param ChargeType: 带宽包计费模式
        # @type ChargeType: String
        # @param MigrateOnRefund: 退款时迁移为后付费带宽包。默认值：否
        # @type MigrateOnRefund: Boolean

        attr_accessor :BandwidthPackageId, :BandwidthPackageName, :ChargeType, :MigrateOnRefund
        
        def initialize(bandwidthpackageid=nil, bandwidthpackagename=nil, chargetype=nil, migrateonrefund=nil)
          @BandwidthPackageId = bandwidthpackageid
          @BandwidthPackageName = bandwidthpackagename
          @ChargeType = chargetype
          @MigrateOnRefund = migrateonrefund
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
          @BandwidthPackageName = params['BandwidthPackageName']
          @ChargeType = params['ChargeType']
          @MigrateOnRefund = params['MigrateOnRefund']
        end
      end

      # ModifyBandwidthPackageAttribute返回参数结构体
      class ModifyBandwidthPackageAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCcnAttachedInstancesAttribute请求参数结构体
      class ModifyCcnAttachedInstancesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param Instances: 关联网络实例列表
        # @type Instances: Array

        attr_accessor :CcnId, :Instances
        
        def initialize(ccnid=nil, instances=nil)
          @CcnId = ccnid
          @Instances = instances
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              ccninstance_tmp = CcnInstance.new
              ccninstance_tmp.deserialize(i)
              @Instances << ccninstance_tmp
            end
          end
        end
      end

      # ModifyCcnAttachedInstancesAttribute返回参数结构体
      class ModifyCcnAttachedInstancesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCcnAttribute请求参数结构体
      class ModifyCcnAttributeRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param CcnName: CCN名称，最大长度不能超过60个字节，限制：CcnName和CcnDescription必须至少选择一个参数输入，否则报错。
        # @type CcnName: String
        # @param CcnDescription: CCN描述信息，最大长度不能超过100个字节，限制：CcnName和CcnDescription必须至少选择一个参数输入，否则报错。
        # @type CcnDescription: String

        attr_accessor :CcnId, :CcnName, :CcnDescription
        
        def initialize(ccnid=nil, ccnname=nil, ccndescription=nil)
          @CcnId = ccnid
          @CcnName = ccnname
          @CcnDescription = ccndescription
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @CcnName = params['CcnName']
          @CcnDescription = params['CcnDescription']
        end
      end

      # ModifyCcnAttribute返回参数结构体
      class ModifyCcnAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCcnRegionBandwidthLimitsType请求参数结构体
      class ModifyCcnRegionBandwidthLimitsTypeRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。
        # @type CcnId: String
        # @param BandwidthLimitType: 云联网限速类型，INTER_REGION_LIMIT：地域间限速，OUTER_REGION_LIMIT：地域出口限速。
        # @type BandwidthLimitType: String

        attr_accessor :CcnId, :BandwidthLimitType
        
        def initialize(ccnid=nil, bandwidthlimittype=nil)
          @CcnId = ccnid
          @BandwidthLimitType = bandwidthlimittype
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @BandwidthLimitType = params['BandwidthLimitType']
        end
      end

      # ModifyCcnRegionBandwidthLimitsType返回参数结构体
      class ModifyCcnRegionBandwidthLimitsTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCustomerGatewayAttribute请求参数结构体
      class ModifyCustomerGatewayAttributeRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayId: 对端网关ID，例如：cgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        # @type CustomerGatewayId: String
        # @param CustomerGatewayName: 对端网关名称，可任意命名，但不得超过60个字符。
        # @type CustomerGatewayName: String

        attr_accessor :CustomerGatewayId, :CustomerGatewayName
        
        def initialize(customergatewayid=nil, customergatewayname=nil)
          @CustomerGatewayId = customergatewayid
          @CustomerGatewayName = customergatewayname
        end

        def deserialize(params)
          @CustomerGatewayId = params['CustomerGatewayId']
          @CustomerGatewayName = params['CustomerGatewayName']
        end
      end

      # ModifyCustomerGatewayAttribute返回参数结构体
      class ModifyCustomerGatewayAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDhcpIpAttribute请求参数结构体
      class ModifyDhcpIpAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DhcpIpId: `DhcpIp`唯一`ID`，形如：`dhcpip-9o233uri`。
        # @type DhcpIpId: String
        # @param DhcpIpName: `DhcpIp`名称，可任意命名，但不得超过60个字符。
        # @type DhcpIpName: String

        attr_accessor :DhcpIpId, :DhcpIpName
        
        def initialize(dhcpipid=nil, dhcpipname=nil)
          @DhcpIpId = dhcpipid
          @DhcpIpName = dhcpipname
        end

        def deserialize(params)
          @DhcpIpId = params['DhcpIpId']
          @DhcpIpName = params['DhcpIpName']
        end
      end

      # ModifyDhcpIpAttribute返回参数结构体
      class ModifyDhcpIpAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDirectConnectGatewayAttribute请求参数结构体
      class ModifyDirectConnectGatewayAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        # @type DirectConnectGatewayId: String
        # @param DirectConnectGatewayName: 专线网关名称，可任意命名，但不得超过60个字符。
        # @type DirectConnectGatewayName: String
        # @param CcnRouteType: 云联网路由学习类型，可选值：`BGP`（自动学习）、`STATIC`（静态，即用户配置）。只有云联网类型专线网关且开启了BGP功能才支持修改`CcnRouteType`。
        # @type CcnRouteType: String
        # @param ModeType: 云联网路由发布模式，可选值：`standard`（标准模式）、`exquisite`（精细模式）。只有云联网类型专线网关才支持修改`ModeType`。
        # @type ModeType: String

        attr_accessor :DirectConnectGatewayId, :DirectConnectGatewayName, :CcnRouteType, :ModeType
        
        def initialize(directconnectgatewayid=nil, directconnectgatewayname=nil, ccnroutetype=nil, modetype=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @DirectConnectGatewayName = directconnectgatewayname
          @CcnRouteType = ccnroutetype
          @ModeType = modetype
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          @DirectConnectGatewayName = params['DirectConnectGatewayName']
          @CcnRouteType = params['CcnRouteType']
          @ModeType = params['ModeType']
        end
      end

      # ModifyDirectConnectGatewayAttribute返回参数结构体
      class ModifyDirectConnectGatewayAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFlowLogAttribute请求参数结构体
      class ModifyFlowLogAttributeRequest < TencentCloud::Common::AbstractModel
        # @param FlowLogId: 流日志唯一ID
        # @type FlowLogId: String
        # @param VpcId: 私用网络ID或者统一ID，建议使用统一ID，修改云联网流日志属性时可不填，其他流日志类型必填。
        # @type VpcId: String
        # @param FlowLogName: 流日志实例名字
        # @type FlowLogName: String
        # @param FlowLogDescription: 流日志实例描述
        # @type FlowLogDescription: String

        attr_accessor :FlowLogId, :VpcId, :FlowLogName, :FlowLogDescription
        
        def initialize(flowlogid=nil, vpcid=nil, flowlogname=nil, flowlogdescription=nil)
          @FlowLogId = flowlogid
          @VpcId = vpcid
          @FlowLogName = flowlogname
          @FlowLogDescription = flowlogdescription
        end

        def deserialize(params)
          @FlowLogId = params['FlowLogId']
          @VpcId = params['VpcId']
          @FlowLogName = params['FlowLogName']
          @FlowLogDescription = params['FlowLogDescription']
        end
      end

      # ModifyFlowLogAttribute返回参数结构体
      class ModifyFlowLogAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGatewayFlowQos请求参数结构体
      class ModifyGatewayFlowQosRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关实例ID，目前我们支持的网关实例类型有，
        # 专线网关实例ID，形如，`dcg-ltjahce6`；
        # Nat网关实例ID，形如，`nat-ltjahce6`；
        # VPN网关实例ID，形如，`vpn-ltjahce6`。
        # @type GatewayId: String
        # @param Bandwidth: 流控带宽值。取值大于0，表示限流到指定的Mbps；取值等于0，表示完全限流；取值为-1，不限流。
        # @type Bandwidth: Integer
        # @param IpAddresses: 限流的云服务器内网IP。
        # @type IpAddresses: Array

        attr_accessor :GatewayId, :Bandwidth, :IpAddresses
        
        def initialize(gatewayid=nil, bandwidth=nil, ipaddresses=nil)
          @GatewayId = gatewayid
          @Bandwidth = bandwidth
          @IpAddresses = ipaddresses
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Bandwidth = params['Bandwidth']
          @IpAddresses = params['IpAddresses']
        end
      end

      # ModifyGatewayFlowQos返回参数结构体
      class ModifyGatewayFlowQosResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHaVipAttribute请求参数结构体
      class ModifyHaVipAttributeRequest < TencentCloud::Common::AbstractModel
        # @param HaVipId: `HAVIP`唯一`ID`，形如：`havip-9o233uri`。
        # @type HaVipId: String
        # @param HaVipName: `HAVIP`名称，可任意命名，但不得超过60个字符。
        # @type HaVipName: String

        attr_accessor :HaVipId, :HaVipName
        
        def initialize(havipid=nil, havipname=nil)
          @HaVipId = havipid
          @HaVipName = havipname
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
          @HaVipName = params['HaVipName']
        end
      end

      # ModifyHaVipAttribute返回参数结构体
      class ModifyHaVipAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIp6AddressesBandwidth请求参数结构体
      class ModifyIp6AddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param InternetMaxBandwidthOut: 修改的目标带宽，单位Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param Ip6Addresses: IPV6地址。Ip6Addresses和Ip6AddressId必须且只能传一个
        # @type Ip6Addresses: Array
        # @param Ip6AddressIds: IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ip6Addresses和Ip6AddressId必须且只能传一个
        # @type Ip6AddressIds: Array

        attr_accessor :InternetMaxBandwidthOut, :Ip6Addresses, :Ip6AddressIds
        
        def initialize(internetmaxbandwidthout=nil, ip6addresses=nil, ip6addressids=nil)
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @Ip6Addresses = ip6addresses
          @Ip6AddressIds = ip6addressids
        end

        def deserialize(params)
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @Ip6Addresses = params['Ip6Addresses']
          @Ip6AddressIds = params['Ip6AddressIds']
        end
      end

      # ModifyIp6AddressesBandwidth返回参数结构体
      class ModifyIp6AddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyIp6Rule请求参数结构体
      class ModifyIp6RuleRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorId: IPV6转换实例唯一ID，形如ip6-xxxxxxxx
        # @type Ip6TranslatorId: String
        # @param Ip6RuleId: IPV6转换规则唯一ID，形如rule6-xxxxxxxx
        # @type Ip6RuleId: String
        # @param Ip6RuleName: IPV6转换规则修改后的名称
        # @type Ip6RuleName: String
        # @param Vip: IPV6转换规则修改后的IPV4地址
        # @type Vip: String
        # @param Vport: IPV6转换规则修改后的IPV4端口号
        # @type Vport: Integer

        attr_accessor :Ip6TranslatorId, :Ip6RuleId, :Ip6RuleName, :Vip, :Vport
        
        def initialize(ip6translatorid=nil, ip6ruleid=nil, ip6rulename=nil, vip=nil, vport=nil)
          @Ip6TranslatorId = ip6translatorid
          @Ip6RuleId = ip6ruleid
          @Ip6RuleName = ip6rulename
          @Vip = vip
          @Vport = vport
        end

        def deserialize(params)
          @Ip6TranslatorId = params['Ip6TranslatorId']
          @Ip6RuleId = params['Ip6RuleId']
          @Ip6RuleName = params['Ip6RuleName']
          @Vip = params['Vip']
          @Vport = params['Vport']
        end
      end

      # ModifyIp6Rule返回参数结构体
      class ModifyIp6RuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIp6Translator请求参数结构体
      class ModifyIp6TranslatorRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorId: IPV6转换实例唯一ID，形如ip6-xxxxxxxxx
        # @type Ip6TranslatorId: String
        # @param Ip6TranslatorName: IPV6转换实例修改名称
        # @type Ip6TranslatorName: String

        attr_accessor :Ip6TranslatorId, :Ip6TranslatorName
        
        def initialize(ip6translatorid=nil, ip6translatorname=nil)
          @Ip6TranslatorId = ip6translatorid
          @Ip6TranslatorName = ip6translatorname
        end

        def deserialize(params)
          @Ip6TranslatorId = params['Ip6TranslatorId']
          @Ip6TranslatorName = params['Ip6TranslatorName']
        end
      end

      # ModifyIp6Translator返回参数结构体
      class ModifyIp6TranslatorResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIpv6AddressesAttribute请求参数结构体
      class ModifyIpv6AddressesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例`ID`，形如：`eni-m6dyj72l`。
        # @type NetworkInterfaceId: String
        # @param Ipv6Addresses: 指定的内网IPv6`地址信息。
        # @type Ipv6Addresses: Array

        attr_accessor :NetworkInterfaceId, :Ipv6Addresses
        
        def initialize(networkinterfaceid=nil, ipv6addresses=nil)
          @NetworkInterfaceId = networkinterfaceid
          @Ipv6Addresses = ipv6addresses
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
        end
      end

      # ModifyIpv6AddressesAttribute返回参数结构体
      class ModifyIpv6AddressesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLocalGateway请求参数结构体
      class ModifyLocalGatewayRequest < TencentCloud::Common::AbstractModel
        # @param LocalGatewayName: 本地网关名称
        # @type LocalGatewayName: String
        # @param CdcId: CDC实例ID
        # @type CdcId: String
        # @param LocalGatewayId: 本地网关实例ID
        # @type LocalGatewayId: String
        # @param VpcId: VPC实例ID
        # @type VpcId: String

        attr_accessor :LocalGatewayName, :CdcId, :LocalGatewayId, :VpcId
        
        def initialize(localgatewayname=nil, cdcid=nil, localgatewayid=nil, vpcid=nil)
          @LocalGatewayName = localgatewayname
          @CdcId = cdcid
          @LocalGatewayId = localgatewayid
          @VpcId = vpcid
        end

        def deserialize(params)
          @LocalGatewayName = params['LocalGatewayName']
          @CdcId = params['CdcId']
          @LocalGatewayId = params['LocalGatewayId']
          @VpcId = params['VpcId']
        end
      end

      # ModifyLocalGateway返回参数结构体
      class ModifyLocalGatewayResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatGatewayAttribute请求参数结构体
      class ModifyNatGatewayAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param NatGatewayName: NAT网关的名称，形如：`test_nat`。
        # @type NatGatewayName: String
        # @param InternetMaxBandwidthOut: NAT网关最大外网出带宽(单位:Mbps)。
        # @type InternetMaxBandwidthOut: Integer
        # @param ModifySecurityGroup: 是否修改NAT网关绑定的安全组。
        # @type ModifySecurityGroup: Boolean
        # @param SecurityGroupIds: NAT网关绑定的安全组列表，最终状态，空列表表示删除所有安全组，形如: `['sg-1n232323', 'sg-o4242424']`
        # @type SecurityGroupIds: Array

        attr_accessor :NatGatewayId, :NatGatewayName, :InternetMaxBandwidthOut, :ModifySecurityGroup, :SecurityGroupIds
        
        def initialize(natgatewayid=nil, natgatewayname=nil, internetmaxbandwidthout=nil, modifysecuritygroup=nil, securitygroupids=nil)
          @NatGatewayId = natgatewayid
          @NatGatewayName = natgatewayname
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @ModifySecurityGroup = modifysecuritygroup
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @NatGatewayName = params['NatGatewayName']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @ModifySecurityGroup = params['ModifySecurityGroup']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # ModifyNatGatewayAttribute返回参数结构体
      class ModifyNatGatewayAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatGatewayDestinationIpPortTranslationNatRule请求参数结构体
      class ModifyNatGatewayDestinationIpPortTranslationNatRuleRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df45454`。
        # @type NatGatewayId: String
        # @param SourceNatRule: 源NAT网关的端口转换规则。
        # @type SourceNatRule: :class:`Tencentcloud::Vpc.v20170312.models.DestinationIpPortTranslationNatRule`
        # @param DestinationNatRule: 目的NAT网关的端口转换规则。
        # @type DestinationNatRule: :class:`Tencentcloud::Vpc.v20170312.models.DestinationIpPortTranslationNatRule`

        attr_accessor :NatGatewayId, :SourceNatRule, :DestinationNatRule
        
        def initialize(natgatewayid=nil, sourcenatrule=nil, destinationnatrule=nil)
          @NatGatewayId = natgatewayid
          @SourceNatRule = sourcenatrule
          @DestinationNatRule = destinationnatrule
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          unless params['SourceNatRule'].nil?
            @SourceNatRule = DestinationIpPortTranslationNatRule.new
            @SourceNatRule.deserialize(params['SourceNatRule'])
          end
          unless params['DestinationNatRule'].nil?
            @DestinationNatRule = DestinationIpPortTranslationNatRule.new
            @DestinationNatRule.deserialize(params['DestinationNatRule'])
          end
        end
      end

      # ModifyNatGatewayDestinationIpPortTranslationNatRule返回参数结构体
      class ModifyNatGatewayDestinationIpPortTranslationNatRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNatGatewaySourceIpTranslationNatRule请求参数结构体
      class ModifyNatGatewaySourceIpTranslationNatRuleRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID，形如：`nat-df453454`。
        # @type NatGatewayId: String
        # @param SourceIpTranslationNatRule: NAT网关的SNAT转换规则。
        # @type SourceIpTranslationNatRule: :class:`Tencentcloud::Vpc.v20170312.models.SourceIpTranslationNatRule`

        attr_accessor :NatGatewayId, :SourceIpTranslationNatRule
        
        def initialize(natgatewayid=nil, sourceiptranslationnatrule=nil)
          @NatGatewayId = natgatewayid
          @SourceIpTranslationNatRule = sourceiptranslationnatrule
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          unless params['SourceIpTranslationNatRule'].nil?
            @SourceIpTranslationNatRule = SourceIpTranslationNatRule.new
            @SourceIpTranslationNatRule.deserialize(params['SourceIpTranslationNatRule'])
          end
        end
      end

      # ModifyNatGatewaySourceIpTranslationNatRule返回参数结构体
      class ModifyNatGatewaySourceIpTranslationNatRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetDetect请求参数结构体
      class ModifyNetDetectRequest < TencentCloud::Common::AbstractModel
        # @param NetDetectId: 网络探测实例`ID`。形如：`netd-12345678`
        # @type NetDetectId: String
        # @param NetDetectName: 网络探测名称，最大长度不能超过60个字节。
        # @type NetDetectName: String
        # @param DetectDestinationIp: 探测目的IPv4地址数组，最多两个。
        # @type DetectDestinationIp: Array
        # @param NextHopType: 下一跳类型，目前我们支持的类型有：
        # VPN：VPN网关；
        # DIRECTCONNECT：专线网关；
        # PEERCONNECTION：对等连接；
        # NAT：NAT网关；
        # NORMAL_CVM：普通云服务器；
        # CCN：云联网网关；
        # @type NextHopType: String
        # @param NextHopDestination: 下一跳目的网关，取值与“下一跳类型”相关：
        # 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        # 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        # 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        # 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        # 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        # 下一跳类型为CCN，取值云联网ID，形如：ccn-44csczop；
        # @type NextHopDestination: String
        # @param NetDetectDescription: 网络探测描述。
        # @type NetDetectDescription: String

        attr_accessor :NetDetectId, :NetDetectName, :DetectDestinationIp, :NextHopType, :NextHopDestination, :NetDetectDescription
        
        def initialize(netdetectid=nil, netdetectname=nil, detectdestinationip=nil, nexthoptype=nil, nexthopdestination=nil, netdetectdescription=nil)
          @NetDetectId = netdetectid
          @NetDetectName = netdetectname
          @DetectDestinationIp = detectdestinationip
          @NextHopType = nexthoptype
          @NextHopDestination = nexthopdestination
          @NetDetectDescription = netdetectdescription
        end

        def deserialize(params)
          @NetDetectId = params['NetDetectId']
          @NetDetectName = params['NetDetectName']
          @DetectDestinationIp = params['DetectDestinationIp']
          @NextHopType = params['NextHopType']
          @NextHopDestination = params['NextHopDestination']
          @NetDetectDescription = params['NetDetectDescription']
        end
      end

      # ModifyNetDetect返回参数结构体
      class ModifyNetDetectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkAclAttribute请求参数结构体
      class ModifyNetworkAclAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param NetworkAclName: 网络ACL名称，最大长度不能超过60个字节。
        # @type NetworkAclName: String

        attr_accessor :NetworkAclId, :NetworkAclName
        
        def initialize(networkaclid=nil, networkaclname=nil)
          @NetworkAclId = networkaclid
          @NetworkAclName = networkaclname
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          @NetworkAclName = params['NetworkAclName']
        end
      end

      # ModifyNetworkAclAttribute返回参数结构体
      class ModifyNetworkAclAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkAclEntries请求参数结构体
      class ModifyNetworkAclEntriesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param NetworkAclEntrySet: 网络ACL规则集。NetworkAclEntrySet和NetworkAclQuintupleSet只能输入一个。
        # @type NetworkAclEntrySet: :class:`Tencentcloud::Vpc.v20170312.models.NetworkAclEntrySet`
        # @param NetworkAclQuintupleSet: 网络ACL五元组规则集。NetworkAclEntrySet和NetworkAclQuintupleSet只能输入一个。
        # @type NetworkAclQuintupleSet: :class:`Tencentcloud::Vpc.v20170312.models.NetworkAclQuintupleEntries`

        attr_accessor :NetworkAclId, :NetworkAclEntrySet, :NetworkAclQuintupleSet
        
        def initialize(networkaclid=nil, networkaclentryset=nil, networkaclquintupleset=nil)
          @NetworkAclId = networkaclid
          @NetworkAclEntrySet = networkaclentryset
          @NetworkAclQuintupleSet = networkaclquintupleset
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          unless params['NetworkAclEntrySet'].nil?
            @NetworkAclEntrySet = NetworkAclEntrySet.new
            @NetworkAclEntrySet.deserialize(params['NetworkAclEntrySet'])
          end
          unless params['NetworkAclQuintupleSet'].nil?
            @NetworkAclQuintupleSet = NetworkAclQuintupleEntries.new
            @NetworkAclQuintupleSet.deserialize(params['NetworkAclQuintupleSet'])
          end
        end
      end

      # ModifyNetworkAclEntries返回参数结构体
      class ModifyNetworkAclEntriesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkAclQuintupleEntries请求参数结构体
      class ModifyNetworkAclQuintupleEntriesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkAclId: 网络ACL实例ID。例如：acl-12345678。
        # @type NetworkAclId: String
        # @param NetworkAclQuintupleSet: 网络五元组ACL规则集。
        # @type NetworkAclQuintupleSet: :class:`Tencentcloud::Vpc.v20170312.models.NetworkAclQuintupleEntries`

        attr_accessor :NetworkAclId, :NetworkAclQuintupleSet
        
        def initialize(networkaclid=nil, networkaclquintupleset=nil)
          @NetworkAclId = networkaclid
          @NetworkAclQuintupleSet = networkaclquintupleset
        end

        def deserialize(params)
          @NetworkAclId = params['NetworkAclId']
          unless params['NetworkAclQuintupleSet'].nil?
            @NetworkAclQuintupleSet = NetworkAclQuintupleEntries.new
            @NetworkAclQuintupleSet.deserialize(params['NetworkAclQuintupleSet'])
          end
        end
      end

      # ModifyNetworkAclQuintupleEntries返回参数结构体
      class ModifyNetworkAclQuintupleEntriesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkInterfaceAttribute请求参数结构体
      class ModifyNetworkInterfaceAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-pxir56ns。
        # @type NetworkInterfaceId: String
        # @param NetworkInterfaceName: 弹性网卡名称，最大长度不能超过60个字节。
        # @type NetworkInterfaceName: String
        # @param NetworkInterfaceDescription: 弹性网卡描述，可任意命名，但不得超过60个字符。
        # @type NetworkInterfaceDescription: String
        # @param SecurityGroupIds: 指定绑定的安全组，例如:['sg-1dd51d']。
        # @type SecurityGroupIds: Array
        # @param TrunkingFlag: 网卡trunking模式设置，Enable-开启，Disable--关闭，默认关闭。
        # @type TrunkingFlag: String

        attr_accessor :NetworkInterfaceId, :NetworkInterfaceName, :NetworkInterfaceDescription, :SecurityGroupIds, :TrunkingFlag
        
        def initialize(networkinterfaceid=nil, networkinterfacename=nil, networkinterfacedescription=nil, securitygroupids=nil, trunkingflag=nil)
          @NetworkInterfaceId = networkinterfaceid
          @NetworkInterfaceName = networkinterfacename
          @NetworkInterfaceDescription = networkinterfacedescription
          @SecurityGroupIds = securitygroupids
          @TrunkingFlag = trunkingflag
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @NetworkInterfaceDescription = params['NetworkInterfaceDescription']
          @SecurityGroupIds = params['SecurityGroupIds']
          @TrunkingFlag = params['TrunkingFlag']
        end
      end

      # ModifyNetworkInterfaceAttribute返回参数结构体
      class ModifyNetworkInterfaceAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNetworkInterfaceQos请求参数结构体
      class ModifyNetworkInterfaceQosRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceIds: 弹性网卡ID，支持批量修改。
        # @type NetworkInterfaceIds: Array
        # @param QosLevel: 服务质量，可选值：PT、AU、AG、DEFAULT，分别代表白金、金、银、默认四个等级。
        # @type QosLevel: String

        attr_accessor :NetworkInterfaceIds, :QosLevel
        
        def initialize(networkinterfaceids=nil, qoslevel=nil)
          @NetworkInterfaceIds = networkinterfaceids
          @QosLevel = qoslevel
        end

        def deserialize(params)
          @NetworkInterfaceIds = params['NetworkInterfaceIds']
          @QosLevel = params['QosLevel']
        end
      end

      # ModifyNetworkInterfaceQos返回参数结构体
      class ModifyNetworkInterfaceQosResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrivateIpAddressesAttribute请求参数结构体
      class ModifyPrivateIpAddressesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddresses: 指定的内网IP信息。
        # @type PrivateIpAddresses: Array

        attr_accessor :NetworkInterfaceId, :PrivateIpAddresses
        
        def initialize(networkinterfaceid=nil, privateipaddresses=nil)
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddresses = privateipaddresses
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
        end
      end

      # ModifyPrivateIpAddressesAttribute返回参数结构体
      class ModifyPrivateIpAddressesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRouteTableAttribute请求参数结构体
      class ModifyRouteTableAttributeRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String

        attr_accessor :RouteTableId, :RouteTableName
        
        def initialize(routetableid=nil, routetablename=nil)
          @RouteTableId = routetableid
          @RouteTableName = routetablename
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
        end
      end

      # ModifyRouteTableAttribute返回参数结构体
      class ModifyRouteTableAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityGroupAttribute请求参数结构体
      class ModifySecurityGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param GroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type GroupName: String
        # @param GroupDescription: 安全组备注，最多100个字符。
        # @type GroupDescription: String

        attr_accessor :SecurityGroupId, :GroupName, :GroupDescription
        
        def initialize(securitygroupid=nil, groupname=nil, groupdescription=nil)
          @SecurityGroupId = securitygroupid
          @GroupName = groupname
          @GroupDescription = groupdescription
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @GroupName = params['GroupName']
          @GroupDescription = params['GroupDescription']
        end
      end

      # ModifySecurityGroupAttribute返回参数结构体
      class ModifySecurityGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityGroupPolicies请求参数结构体
      class ModifySecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。 SecurityGroupPolicySet对象必须同时指定新的出（Egress）入（Ingress）站规则。 SecurityGroupPolicy对象不支持自定义索引（PolicyIndex）。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`
        # @param SortPolicys: 排序安全组标识，默认值为False。当SortPolicys为False时，不改变安全组规则排序；当SortPolicys为True时，系统将严格按照SecurityGroupPolicySet参数传入的安全组规则及顺序进行重置，考虑到人为输入参数可能存在遗漏风险，建议通过控制台对安全组规则进行排序。
        # @type SortPolicys: Boolean

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet, :SortPolicys
        
        def initialize(securitygroupid=nil, securitygrouppolicyset=nil, sortpolicys=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
          @SortPolicys = sortpolicys
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
          @SortPolicys = params['SortPolicys']
        end
      end

      # ModifySecurityGroupPolicies返回参数结构体
      class ModifySecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyServiceTemplateAttribute请求参数结构体
      class ModifyServiceTemplateAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateId: 协议端口模板实例ID，例如：ppm-529nwwj8。
        # @type ServiceTemplateId: String
        # @param ServiceTemplateName: 协议端口模板名称。
        # @type ServiceTemplateName: String
        # @param Services: 支持单个端口、多个端口、连续端口及所有端口，协议支持：TCP、UDP、ICMP、GRE 协议。
        # @type Services: Array
        # @param ServicesExtra: 支持添加备注的协议端口信息，支持单个端口、多个端口、连续端口及所有端口，协议支持：TCP、UDP、ICMP、GRE 协议。
        # @type ServicesExtra: Array

        attr_accessor :ServiceTemplateId, :ServiceTemplateName, :Services, :ServicesExtra
        
        def initialize(servicetemplateid=nil, servicetemplatename=nil, services=nil, servicesextra=nil)
          @ServiceTemplateId = servicetemplateid
          @ServiceTemplateName = servicetemplatename
          @Services = services
          @ServicesExtra = servicesextra
        end

        def deserialize(params)
          @ServiceTemplateId = params['ServiceTemplateId']
          @ServiceTemplateName = params['ServiceTemplateName']
          @Services = params['Services']
          unless params['ServicesExtra'].nil?
            @ServicesExtra = []
            params['ServicesExtra'].each do |i|
              servicesinfo_tmp = ServicesInfo.new
              servicesinfo_tmp.deserialize(i)
              @ServicesExtra << servicesinfo_tmp
            end
          end
        end
      end

      # ModifyServiceTemplateAttribute返回参数结构体
      class ModifyServiceTemplateAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyServiceTemplateGroupAttribute请求参数结构体
      class ModifyServiceTemplateGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateGroupId: 协议端口模板集合实例ID，例如：ppmg-ei8hfd9a。
        # @type ServiceTemplateGroupId: String
        # @param ServiceTemplateGroupName: 协议端口模板集合名称。
        # @type ServiceTemplateGroupName: String
        # @param ServiceTemplateIds: 协议端口模板实例ID，例如：ppm-4dw6agho。
        # @type ServiceTemplateIds: Array

        attr_accessor :ServiceTemplateGroupId, :ServiceTemplateGroupName, :ServiceTemplateIds
        
        def initialize(servicetemplategroupid=nil, servicetemplategroupname=nil, servicetemplateids=nil)
          @ServiceTemplateGroupId = servicetemplategroupid
          @ServiceTemplateGroupName = servicetemplategroupname
          @ServiceTemplateIds = servicetemplateids
        end

        def deserialize(params)
          @ServiceTemplateGroupId = params['ServiceTemplateGroupId']
          @ServiceTemplateGroupName = params['ServiceTemplateGroupName']
          @ServiceTemplateIds = params['ServiceTemplateIds']
        end
      end

      # ModifyServiceTemplateGroupAttribute返回参数结构体
      class ModifyServiceTemplateGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubnetAttribute请求参数结构体
      class ModifySubnetAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID。形如：subnet-pxir56ns。
        # @type SubnetId: String
        # @param SubnetName: 子网名称，最大长度不能超过60个字节。
        # @type SubnetName: String
        # @param EnableBroadcast: 子网是否开启广播。
        # @type EnableBroadcast: String

        attr_accessor :SubnetId, :SubnetName, :EnableBroadcast
        
        def initialize(subnetid=nil, subnetname=nil, enablebroadcast=nil)
          @SubnetId = subnetid
          @SubnetName = subnetname
          @EnableBroadcast = enablebroadcast
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @EnableBroadcast = params['EnableBroadcast']
        end
      end

      # ModifySubnetAttribute返回参数结构体
      class ModifySubnetAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTemplateMember请求参数结构体
      class ModifyTemplateMemberRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板实例ID，支持IP地址、协议端口、IP地址组、协议端口组四种参数模板的实例ID。
        # @type TemplateId: String
        # @param OriginalTemplateMember: 需要修改的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致，修改顺序与TemplateMember参数顺序一一对应，入参长度需要与TemplateMember参数保持一致。
        # @type OriginalTemplateMember: Array
        # @param TemplateMember: 新的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致，修改顺序与OriginalTemplateMember参数顺序一一对应，入参长度需要与OriginalTemplateMember参数保持一致。
        # @type TemplateMember: Array

        attr_accessor :TemplateId, :OriginalTemplateMember, :TemplateMember
        
        def initialize(templateid=nil, originaltemplatemember=nil, templatemember=nil)
          @TemplateId = templateid
          @OriginalTemplateMember = originaltemplatemember
          @TemplateMember = templatemember
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['OriginalTemplateMember'].nil?
            @OriginalTemplateMember = []
            params['OriginalTemplateMember'].each do |i|
              memberinfo_tmp = MemberInfo.new
              memberinfo_tmp.deserialize(i)
              @OriginalTemplateMember << memberinfo_tmp
            end
          end
          unless params['TemplateMember'].nil?
            @TemplateMember = []
            params['TemplateMember'].each do |i|
              memberinfo_tmp = MemberInfo.new
              memberinfo_tmp.deserialize(i)
              @TemplateMember << memberinfo_tmp
            end
          end
        end
      end

      # ModifyTemplateMember返回参数结构体
      class ModifyTemplateMemberResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcAttribute请求参数结构体
      class ModifyVpcAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        # @type VpcId: String
        # @param VpcName: 私有网络名称，可任意命名，但不得超过60个字符。
        # @type VpcName: String
        # @param EnableMulticast: 是否开启组播。true: 开启, false: 关闭。
        # @type EnableMulticast: String
        # @param DnsServers: DNS地址，最多支持4个，第1个默认为主，其余为备
        # @type DnsServers: Array
        # @param DomainName: 域名
        # @type DomainName: String

        attr_accessor :VpcId, :VpcName, :EnableMulticast, :DnsServers, :DomainName
        
        def initialize(vpcid=nil, vpcname=nil, enablemulticast=nil, dnsservers=nil, domainname=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @EnableMulticast = enablemulticast
          @DnsServers = dnsservers
          @DomainName = domainname
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @EnableMulticast = params['EnableMulticast']
          @DnsServers = params['DnsServers']
          @DomainName = params['DomainName']
        end
      end

      # ModifyVpcAttribute返回参数结构体
      class ModifyVpcAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcEndPointAttribute请求参数结构体
      class ModifyVpcEndPointAttributeRequest < TencentCloud::Common::AbstractModel
        # @param EndPointId: 终端节点ID。
        # @type EndPointId: String
        # @param EndPointName: 终端节点名称。
        # @type EndPointName: String
        # @param SecurityGroupIds: 安全组ID列表。
        # @type SecurityGroupIds: Array

        attr_accessor :EndPointId, :EndPointName, :SecurityGroupIds
        
        def initialize(endpointid=nil, endpointname=nil, securitygroupids=nil)
          @EndPointId = endpointid
          @EndPointName = endpointname
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @EndPointId = params['EndPointId']
          @EndPointName = params['EndPointName']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # ModifyVpcEndPointAttribute返回参数结构体
      class ModifyVpcEndPointAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcEndPointServiceAttribute请求参数结构体
      class ModifyVpcEndPointServiceAttributeRequest < TencentCloud::Common::AbstractModel
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String
        # @param VpcId: VPCID。
        # @type VpcId: String
        # @param EndPointServiceName: 终端节点服务名称。
        # @type EndPointServiceName: String
        # @param AutoAcceptFlag: 是否自动接受终端节点的连接请求。<ui><li>true：自动接受<li>false：不自动接受</ul>
        # @type AutoAcceptFlag: Boolean
        # @param ServiceInstanceId: 后端服务的ID，比如lb-xxx。
        # @type ServiceInstanceId: String

        attr_accessor :EndPointServiceId, :VpcId, :EndPointServiceName, :AutoAcceptFlag, :ServiceInstanceId
        
        def initialize(endpointserviceid=nil, vpcid=nil, endpointservicename=nil, autoacceptflag=nil, serviceinstanceid=nil)
          @EndPointServiceId = endpointserviceid
          @VpcId = vpcid
          @EndPointServiceName = endpointservicename
          @AutoAcceptFlag = autoacceptflag
          @ServiceInstanceId = serviceinstanceid
        end

        def deserialize(params)
          @EndPointServiceId = params['EndPointServiceId']
          @VpcId = params['VpcId']
          @EndPointServiceName = params['EndPointServiceName']
          @AutoAcceptFlag = params['AutoAcceptFlag']
          @ServiceInstanceId = params['ServiceInstanceId']
        end
      end

      # ModifyVpcEndPointServiceAttribute返回参数结构体
      class ModifyVpcEndPointServiceAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcEndPointServiceWhiteList请求参数结构体
      class ModifyVpcEndPointServiceWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param UserUin: 用户UIN。
        # @type UserUin: String
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String
        # @param Description: 白名单描述信息。
        # @type Description: String

        attr_accessor :UserUin, :EndPointServiceId, :Description
        
        def initialize(useruin=nil, endpointserviceid=nil, description=nil)
          @UserUin = useruin
          @EndPointServiceId = endpointserviceid
          @Description = description
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @EndPointServiceId = params['EndPointServiceId']
          @Description = params['Description']
        end
      end

      # ModifyVpcEndPointServiceWhiteList返回参数结构体
      class ModifyVpcEndPointServiceWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpnConnectionAttribute请求参数结构体
      class ModifyVpnConnectionAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpnConnectionId: VPN通道实例ID。形如：vpnx-f49l6u0z。
        # @type VpnConnectionId: String
        # @param VpnConnectionName: VPN通道名称，可任意命名，但不得超过60个字符。
        # @type VpnConnectionName: String
        # @param PreShareKey: 预共享密钥。
        # @type PreShareKey: String
        # @param SecurityPolicyDatabases: SPD策略组，例如：{"10.0.0.5/24":["172.123.10.5/16"]}，10.0.0.5/24是vpc内网段172.123.10.5/16是IDC网段。用户指定VPC内哪些网段可以和您IDC中哪些网段通信。
        # @type SecurityPolicyDatabases: Array
        # @param IKEOptionsSpecification: IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议。
        # @type IKEOptionsSpecification: :class:`Tencentcloud::Vpc.v20170312.models.IKEOptionsSpecification`
        # @param IPSECOptionsSpecification: IPSec配置，腾讯云提供IPSec安全会话设置。
        # @type IPSECOptionsSpecification: :class:`Tencentcloud::Vpc.v20170312.models.IPSECOptionsSpecification`
        # @param EnableHealthCheck: 是否启用通道健康检查
        # @type EnableHealthCheck: Boolean
        # @param HealthCheckLocalIp: 本端通道探测ip
        # @type HealthCheckLocalIp: String
        # @param HealthCheckRemoteIp: 对端通道探测ip
        # @type HealthCheckRemoteIp: String
        # @param NegotiationType: 协商类型，默认为active（主动协商）。可选值：active（主动协商），passive（被动协商），flowTrigger（流量协商）
        # @type NegotiationType: String
        # @param DpdEnable: DPD探测开关。默认为0，表示关闭DPD探测。可选值：0（关闭），1（开启）
        # @type DpdEnable: Integer
        # @param DpdTimeout: DPD超时时间。即探测确认对端不存在需要的时间。dpdEnable为1（开启）时有效。默认30，单位为秒
        # @type DpdTimeout: String
        # @param DpdAction: DPD超时后的动作。默认为clear。dpdEnable为1（开启）时有效。可取值为clear（断开）和restart（重试）
        # @type DpdAction: String

        attr_accessor :VpnConnectionId, :VpnConnectionName, :PreShareKey, :SecurityPolicyDatabases, :IKEOptionsSpecification, :IPSECOptionsSpecification, :EnableHealthCheck, :HealthCheckLocalIp, :HealthCheckRemoteIp, :NegotiationType, :DpdEnable, :DpdTimeout, :DpdAction
        
        def initialize(vpnconnectionid=nil, vpnconnectionname=nil, presharekey=nil, securitypolicydatabases=nil, ikeoptionsspecification=nil, ipsecoptionsspecification=nil, enablehealthcheck=nil, healthchecklocalip=nil, healthcheckremoteip=nil, negotiationtype=nil, dpdenable=nil, dpdtimeout=nil, dpdaction=nil)
          @VpnConnectionId = vpnconnectionid
          @VpnConnectionName = vpnconnectionname
          @PreShareKey = presharekey
          @SecurityPolicyDatabases = securitypolicydatabases
          @IKEOptionsSpecification = ikeoptionsspecification
          @IPSECOptionsSpecification = ipsecoptionsspecification
          @EnableHealthCheck = enablehealthcheck
          @HealthCheckLocalIp = healthchecklocalip
          @HealthCheckRemoteIp = healthcheckremoteip
          @NegotiationType = negotiationtype
          @DpdEnable = dpdenable
          @DpdTimeout = dpdtimeout
          @DpdAction = dpdaction
        end

        def deserialize(params)
          @VpnConnectionId = params['VpnConnectionId']
          @VpnConnectionName = params['VpnConnectionName']
          @PreShareKey = params['PreShareKey']
          unless params['SecurityPolicyDatabases'].nil?
            @SecurityPolicyDatabases = []
            params['SecurityPolicyDatabases'].each do |i|
              securitypolicydatabase_tmp = SecurityPolicyDatabase.new
              securitypolicydatabase_tmp.deserialize(i)
              @SecurityPolicyDatabases << securitypolicydatabase_tmp
            end
          end
          unless params['IKEOptionsSpecification'].nil?
            @IKEOptionsSpecification = IKEOptionsSpecification.new
            @IKEOptionsSpecification.deserialize(params['IKEOptionsSpecification'])
          end
          unless params['IPSECOptionsSpecification'].nil?
            @IPSECOptionsSpecification = IPSECOptionsSpecification.new
            @IPSECOptionsSpecification.deserialize(params['IPSECOptionsSpecification'])
          end
          @EnableHealthCheck = params['EnableHealthCheck']
          @HealthCheckLocalIp = params['HealthCheckLocalIp']
          @HealthCheckRemoteIp = params['HealthCheckRemoteIp']
          @NegotiationType = params['NegotiationType']
          @DpdEnable = params['DpdEnable']
          @DpdTimeout = params['DpdTimeout']
          @DpdAction = params['DpdAction']
        end
      end

      # ModifyVpnConnectionAttribute返回参数结构体
      class ModifyVpnConnectionAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpnGatewayAttribute请求参数结构体
      class ModifyVpnGatewayAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param VpnGatewayName: VPN网关名称，最大长度不能超过60个字节。
        # @type VpnGatewayName: String
        # @param InstanceChargeType: VPN网关计费模式，目前只支持预付费（即包年包月）到后付费（即按量计费）的转换。即参数只支持：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String

        attr_accessor :VpnGatewayId, :VpnGatewayName, :InstanceChargeType
        
        def initialize(vpngatewayid=nil, vpngatewayname=nil, instancechargetype=nil)
          @VpnGatewayId = vpngatewayid
          @VpnGatewayName = vpngatewayname
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpnGatewayName = params['VpnGatewayName']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # ModifyVpnGatewayAttribute返回参数结构体
      class ModifyVpnGatewayAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpnGatewayCcnRoutes请求参数结构体
      class ModifyVpnGatewayCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID
        # @type VpnGatewayId: String
        # @param Routes: 云联网路由（IDC网段）列表
        # @type Routes: Array

        attr_accessor :VpnGatewayId, :Routes
        
        def initialize(vpngatewayid=nil, routes=nil)
          @VpnGatewayId = vpngatewayid
          @Routes = routes
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              vpngwccnroutes_tmp = VpngwCcnRoutes.new
              vpngwccnroutes_tmp.deserialize(i)
              @Routes << vpngwccnroutes_tmp
            end
          end
        end
      end

      # ModifyVpnGatewayCcnRoutes返回参数结构体
      class ModifyVpnGatewayCcnRoutesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpnGatewayRoutes请求参数结构体
      class ModifyVpnGatewayRoutesRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: Vpn网关id
        # @type VpnGatewayId: String
        # @param Routes: 路由修改参数
        # @type Routes: Array

        attr_accessor :VpnGatewayId, :Routes
        
        def initialize(vpngatewayid=nil, routes=nil)
          @VpnGatewayId = vpngatewayid
          @Routes = routes
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              vpngatewayroutemodify_tmp = VpnGatewayRouteModify.new
              vpngatewayroutemodify_tmp.deserialize(i)
              @Routes << vpngatewayroutemodify_tmp
            end
          end
        end
      end

      # ModifyVpnGatewayRoutes返回参数结构体
      class ModifyVpnGatewayRoutesResponse < TencentCloud::Common::AbstractModel
        # @param Routes: VPN路由信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Routes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Routes, :RequestId
        
        def initialize(routes=nil, requestid=nil)
          @Routes = routes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              vpngatewayroute_tmp = VpnGatewayRoute.new
              vpngatewayroute_tmp.deserialize(i)
              @Routes << vpngatewayroute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询nat路由的返回路由对象
      class NatDirectConnectGatewayRoute < TencentCloud::Common::AbstractModel
        # @param DestinationCidrBlock: 子网的 `IPv4` `CIDR`
        # @type DestinationCidrBlock: String
        # @param GatewayType: 下一跳网关的类型，目前此接口支持的类型有：
        # DIRECTCONNECT：专线网关
        # @type GatewayType: String
        # @param GatewayId: 下一跳网关ID
        # @type GatewayId: String
        # @param CreateTime: 路由的创建时间
        # @type CreateTime: String
        # @param UpdateTime: 路由的更新时间
        # @type UpdateTime: String

        attr_accessor :DestinationCidrBlock, :GatewayType, :GatewayId, :CreateTime, :UpdateTime
        
        def initialize(destinationcidrblock=nil, gatewaytype=nil, gatewayid=nil, createtime=nil, updatetime=nil)
          @DestinationCidrBlock = destinationcidrblock
          @GatewayType = gatewaytype
          @GatewayId = gatewayid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @GatewayType = params['GatewayType']
          @GatewayId = params['GatewayId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # NAT网关对象。
      class NatGateway < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关的ID。
        # @type NatGatewayId: String
        # @param NatGatewayName: NAT网关的名称。
        # @type NatGatewayName: String
        # @param CreatedTime: NAT网关创建的时间。
        # @type CreatedTime: String
        # @param State: NAT网关的状态。
        #  'PENDING'：生产中，'DELETING'：删除中，'AVAILABLE'：运行中，'UPDATING'：升级中，
        # ‘FAILED’：失败。
        # @type State: String
        # @param InternetMaxBandwidthOut: 网关最大外网出带宽(单位:Mbps)。
        # @type InternetMaxBandwidthOut: Integer
        # @param MaxConcurrentConnection: 网关并发连接上限。
        # @type MaxConcurrentConnection: Integer
        # @param PublicIpAddressSet: 绑定NAT网关的公网IP对象数组。
        # @type PublicIpAddressSet: Array
        # @param NetworkState: NAT网关网络状态。“AVAILABLE”:运行中, “UNAVAILABLE”:不可用, “INSUFFICIENT”:欠费停服。
        # @type NetworkState: String
        # @param DestinationIpPortTranslationNatRuleSet: NAT网关的端口转发规则。
        # @type DestinationIpPortTranslationNatRuleSet: Array
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param Zone: NAT网关所在的可用区。
        # @type Zone: String
        # @param DirectConnectGatewayIds: 绑定的专线网关ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DirectConnectGatewayIds: Array
        # @param SubnetId: 所属子网ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param TagSet: 标签键值对。
        # @type TagSet: Array
        # @param SecurityGroupSet: NAT网关绑定的安全组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupSet: Array
        # @param SourceIpTranslationNatRuleSet: NAT网关的SNAT转发规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceIpTranslationNatRuleSet: Array
        # @param IsExclusive: 是否独享型NAT。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExclusive: Boolean
        # @param ExclusiveGatewayBandwidth: 独享型NAT所在的网关集群的带宽(单位:Mbps)，当IsExclusive为false时无此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExclusiveGatewayBandwidth: Integer
        # @param RestrictState: NAT网关是否被封禁。“NORMAL”：未被封禁，“RESTRICTED”：已被封禁。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestrictState: String

        attr_accessor :NatGatewayId, :NatGatewayName, :CreatedTime, :State, :InternetMaxBandwidthOut, :MaxConcurrentConnection, :PublicIpAddressSet, :NetworkState, :DestinationIpPortTranslationNatRuleSet, :VpcId, :Zone, :DirectConnectGatewayIds, :SubnetId, :TagSet, :SecurityGroupSet, :SourceIpTranslationNatRuleSet, :IsExclusive, :ExclusiveGatewayBandwidth, :RestrictState
        
        def initialize(natgatewayid=nil, natgatewayname=nil, createdtime=nil, state=nil, internetmaxbandwidthout=nil, maxconcurrentconnection=nil, publicipaddressset=nil, networkstate=nil, destinationipporttranslationnatruleset=nil, vpcid=nil, zone=nil, directconnectgatewayids=nil, subnetid=nil, tagset=nil, securitygroupset=nil, sourceiptranslationnatruleset=nil, isexclusive=nil, exclusivegatewaybandwidth=nil, restrictstate=nil)
          @NatGatewayId = natgatewayid
          @NatGatewayName = natgatewayname
          @CreatedTime = createdtime
          @State = state
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @MaxConcurrentConnection = maxconcurrentconnection
          @PublicIpAddressSet = publicipaddressset
          @NetworkState = networkstate
          @DestinationIpPortTranslationNatRuleSet = destinationipporttranslationnatruleset
          @VpcId = vpcid
          @Zone = zone
          @DirectConnectGatewayIds = directconnectgatewayids
          @SubnetId = subnetid
          @TagSet = tagset
          @SecurityGroupSet = securitygroupset
          @SourceIpTranslationNatRuleSet = sourceiptranslationnatruleset
          @IsExclusive = isexclusive
          @ExclusiveGatewayBandwidth = exclusivegatewaybandwidth
          @RestrictState = restrictstate
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @NatGatewayName = params['NatGatewayName']
          @CreatedTime = params['CreatedTime']
          @State = params['State']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @MaxConcurrentConnection = params['MaxConcurrentConnection']
          unless params['PublicIpAddressSet'].nil?
            @PublicIpAddressSet = []
            params['PublicIpAddressSet'].each do |i|
              natgatewayaddress_tmp = NatGatewayAddress.new
              natgatewayaddress_tmp.deserialize(i)
              @PublicIpAddressSet << natgatewayaddress_tmp
            end
          end
          @NetworkState = params['NetworkState']
          unless params['DestinationIpPortTranslationNatRuleSet'].nil?
            @DestinationIpPortTranslationNatRuleSet = []
            params['DestinationIpPortTranslationNatRuleSet'].each do |i|
              destinationipporttranslationnatrule_tmp = DestinationIpPortTranslationNatRule.new
              destinationipporttranslationnatrule_tmp.deserialize(i)
              @DestinationIpPortTranslationNatRuleSet << destinationipporttranslationnatrule_tmp
            end
          end
          @VpcId = params['VpcId']
          @Zone = params['Zone']
          @DirectConnectGatewayIds = params['DirectConnectGatewayIds']
          @SubnetId = params['SubnetId']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @SecurityGroupSet = params['SecurityGroupSet']
          unless params['SourceIpTranslationNatRuleSet'].nil?
            @SourceIpTranslationNatRuleSet = []
            params['SourceIpTranslationNatRuleSet'].each do |i|
              sourceiptranslationnatrule_tmp = SourceIpTranslationNatRule.new
              sourceiptranslationnatrule_tmp.deserialize(i)
              @SourceIpTranslationNatRuleSet << sourceiptranslationnatrule_tmp
            end
          end
          @IsExclusive = params['IsExclusive']
          @ExclusiveGatewayBandwidth = params['ExclusiveGatewayBandwidth']
          @RestrictState = params['RestrictState']
        end
      end

      # NAT网关绑定的弹性IP
      class NatGatewayAddress < TencentCloud::Common::AbstractModel
        # @param AddressId: 弹性公网IP（EIP）的唯一 ID，形如：`eip-11112222`。
        # @type AddressId: String
        # @param PublicIpAddress: 外网IP地址，形如：`123.121.34.33`。
        # @type PublicIpAddress: String
        # @param IsBlocked: 资源封堵状态。true表示弹性ip处于封堵状态，false表示弹性ip处于未封堵状态。
        # @type IsBlocked: Boolean

        attr_accessor :AddressId, :PublicIpAddress, :IsBlocked
        
        def initialize(addressid=nil, publicipaddress=nil, isblocked=nil)
          @AddressId = addressid
          @PublicIpAddress = publicipaddress
          @IsBlocked = isblocked
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @PublicIpAddress = params['PublicIpAddress']
          @IsBlocked = params['IsBlocked']
        end
      end

      # NAT网关的端口转发规则
      class NatGatewayDestinationIpPortTranslationNatRule < TencentCloud::Common::AbstractModel
        # @param IpProtocol: 网络协议，可选值：`TCP`、`UDP`。
        # @type IpProtocol: String
        # @param PublicIpAddress: 弹性IP。
        # @type PublicIpAddress: String
        # @param PublicPort: 公网端口。
        # @type PublicPort: Integer
        # @param PrivateIpAddress: 内网地址。
        # @type PrivateIpAddress: String
        # @param PrivatePort: 内网端口。
        # @type PrivatePort: Integer
        # @param Description: NAT网关转发规则描述。
        # @type Description: String
        # @param NatGatewayId: NAT网关的ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatGatewayId: String
        # @param VpcId: 私有网络VPC的ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param CreatedTime: NAT网关转发规则创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String

        attr_accessor :IpProtocol, :PublicIpAddress, :PublicPort, :PrivateIpAddress, :PrivatePort, :Description, :NatGatewayId, :VpcId, :CreatedTime
        
        def initialize(ipprotocol=nil, publicipaddress=nil, publicport=nil, privateipaddress=nil, privateport=nil, description=nil, natgatewayid=nil, vpcid=nil, createdtime=nil)
          @IpProtocol = ipprotocol
          @PublicIpAddress = publicipaddress
          @PublicPort = publicport
          @PrivateIpAddress = privateipaddress
          @PrivatePort = privateport
          @Description = description
          @NatGatewayId = natgatewayid
          @VpcId = vpcid
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @IpProtocol = params['IpProtocol']
          @PublicIpAddress = params['PublicIpAddress']
          @PublicPort = params['PublicPort']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PrivatePort = params['PrivatePort']
          @Description = params['Description']
          @NatGatewayId = params['NatGatewayId']
          @VpcId = params['VpcId']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 网络探测对象。
      class NetDetect < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。形如：`vpc-12345678`
        # @type VpcId: String
        # @param VpcName: `VPC`实例名称。
        # @type VpcName: String
        # @param SubnetId: 子网实例ID。形如：subnet-12345678。
        # @type SubnetId: String
        # @param SubnetName: 子网实例名称。
        # @type SubnetName: String
        # @param NetDetectId: 网络探测实例ID。形如：netd-12345678。
        # @type NetDetectId: String
        # @param NetDetectName: 网络探测名称，最大长度不能超过60个字节。
        # @type NetDetectName: String
        # @param DetectDestinationIp: 探测目的IPv4地址数组，最多两个。
        # @type DetectDestinationIp: Array
        # @param DetectSourceIp: 系统自动分配的探测源IPv4数组。长度为2。
        # @type DetectSourceIp: Array
        # @param NextHopType: 下一跳类型，目前我们支持的类型有：
        # VPN：VPN网关；
        # DIRECTCONNECT：专线网关；
        # PEERCONNECTION：对等连接；
        # NAT：NAT网关；
        # NORMAL_CVM：普通云服务器；
        # CCN：云联网网关；
        # @type NextHopType: String
        # @param NextHopDestination: 下一跳目的网关，取值与“下一跳类型”相关：
        # 下一跳类型为VPN，取值VPN网关ID，形如：vpngw-12345678；
        # 下一跳类型为DIRECTCONNECT，取值专线网关ID，形如：dcg-12345678；
        # 下一跳类型为PEERCONNECTION，取值对等连接ID，形如：pcx-12345678；
        # 下一跳类型为NAT，取值Nat网关，形如：nat-12345678；
        # 下一跳类型为NORMAL_CVM，取值云服务器IPv4地址，形如：10.0.0.12；
        # 下一跳类型为CCN，取值云联网网关，形如：ccn-12345678；
        # @type NextHopDestination: String
        # @param NextHopName: 下一跳网关名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextHopName: String
        # @param NetDetectDescription: 网络探测描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetDetectDescription: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :VpcId, :VpcName, :SubnetId, :SubnetName, :NetDetectId, :NetDetectName, :DetectDestinationIp, :DetectSourceIp, :NextHopType, :NextHopDestination, :NextHopName, :NetDetectDescription, :CreateTime
        
        def initialize(vpcid=nil, vpcname=nil, subnetid=nil, subnetname=nil, netdetectid=nil, netdetectname=nil, detectdestinationip=nil, detectsourceip=nil, nexthoptype=nil, nexthopdestination=nil, nexthopname=nil, netdetectdescription=nil, createtime=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @SubnetId = subnetid
          @SubnetName = subnetname
          @NetDetectId = netdetectid
          @NetDetectName = netdetectname
          @DetectDestinationIp = detectdestinationip
          @DetectSourceIp = detectsourceip
          @NextHopType = nexthoptype
          @NextHopDestination = nexthopdestination
          @NextHopName = nexthopname
          @NetDetectDescription = netdetectdescription
          @CreateTime = createtime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @NetDetectId = params['NetDetectId']
          @NetDetectName = params['NetDetectName']
          @DetectDestinationIp = params['DetectDestinationIp']
          @DetectSourceIp = params['DetectSourceIp']
          @NextHopType = params['NextHopType']
          @NextHopDestination = params['NextHopDestination']
          @NextHopName = params['NextHopName']
          @NetDetectDescription = params['NetDetectDescription']
          @CreateTime = params['CreateTime']
        end
      end

      # 网络探测目的IP的验证结果。
      class NetDetectIpState < TencentCloud::Common::AbstractModel
        # @param DetectDestinationIp: 探测目的IPv4地址。
        # @type DetectDestinationIp: String
        # @param State: 探测结果。
        # 0：成功；
        # -1：查询不到路由丢包；
        # -2：外出ACL丢包；
        # -3：IN ACL丢包；
        # -4：其他错误；
        # @type State: Integer
        # @param Delay: 时延，单位毫秒
        # @type Delay: Integer
        # @param PacketLossRate: 丢包率
        # @type PacketLossRate: Integer

        attr_accessor :DetectDestinationIp, :State, :Delay, :PacketLossRate
        
        def initialize(detectdestinationip=nil, state=nil, delay=nil, packetlossrate=nil)
          @DetectDestinationIp = detectdestinationip
          @State = state
          @Delay = delay
          @PacketLossRate = packetlossrate
        end

        def deserialize(params)
          @DetectDestinationIp = params['DetectDestinationIp']
          @State = params['State']
          @Delay = params['Delay']
          @PacketLossRate = params['PacketLossRate']
        end
      end

      # 网络探测验证结果。
      class NetDetectState < TencentCloud::Common::AbstractModel
        # @param NetDetectId: 网络探测实例ID。形如：netd-12345678。
        # @type NetDetectId: String
        # @param NetDetectIpStateSet: 网络探测目的IP验证结果对象数组。
        # @type NetDetectIpStateSet: Array

        attr_accessor :NetDetectId, :NetDetectIpStateSet
        
        def initialize(netdetectid=nil, netdetectipstateset=nil)
          @NetDetectId = netdetectid
          @NetDetectIpStateSet = netdetectipstateset
        end

        def deserialize(params)
          @NetDetectId = params['NetDetectId']
          unless params['NetDetectIpStateSet'].nil?
            @NetDetectIpStateSet = []
            params['NetDetectIpStateSet'].each do |i|
              netdetectipstate_tmp = NetDetectIpState.new
              netdetectipstate_tmp.deserialize(i)
              @NetDetectIpStateSet << netdetectipstate_tmp
            end
          end
        end
      end

      # 网络ACL
      class NetworkAcl < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。
        # @type VpcId: String
        # @param NetworkAclId: 网络ACL实例`ID`。
        # @type NetworkAclId: String
        # @param NetworkAclName: 网络ACL名称，最大长度为60。
        # @type NetworkAclName: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param SubnetSet: 网络ACL关联的子网数组。
        # @type SubnetSet: Array
        # @param IngressEntries: 网络ACl入站规则。
        # @type IngressEntries: Array
        # @param EgressEntries: 网络ACL出站规则。
        # @type EgressEntries: Array
        # @param NetworkAclType: 网络ACL类型。三元组：'TRIPLE'   五元组：'QUINTUPLE'
        # @type NetworkAclType: String
        # @param TagSet: 标签键值对
        # @type TagSet: Array

        attr_accessor :VpcId, :NetworkAclId, :NetworkAclName, :CreatedTime, :SubnetSet, :IngressEntries, :EgressEntries, :NetworkAclType, :TagSet
        
        def initialize(vpcid=nil, networkaclid=nil, networkaclname=nil, createdtime=nil, subnetset=nil, ingressentries=nil, egressentries=nil, networkacltype=nil, tagset=nil)
          @VpcId = vpcid
          @NetworkAclId = networkaclid
          @NetworkAclName = networkaclname
          @CreatedTime = createdtime
          @SubnetSet = subnetset
          @IngressEntries = ingressentries
          @EgressEntries = egressentries
          @NetworkAclType = networkacltype
          @TagSet = tagset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NetworkAclId = params['NetworkAclId']
          @NetworkAclName = params['NetworkAclName']
          @CreatedTime = params['CreatedTime']
          unless params['SubnetSet'].nil?
            @SubnetSet = []
            params['SubnetSet'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetSet << subnet_tmp
            end
          end
          unless params['IngressEntries'].nil?
            @IngressEntries = []
            params['IngressEntries'].each do |i|
              networkaclentry_tmp = NetworkAclEntry.new
              networkaclentry_tmp.deserialize(i)
              @IngressEntries << networkaclentry_tmp
            end
          end
          unless params['EgressEntries'].nil?
            @EgressEntries = []
            params['EgressEntries'].each do |i|
              networkaclentry_tmp = NetworkAclEntry.new
              networkaclentry_tmp.deserialize(i)
              @EgressEntries << networkaclentry_tmp
            end
          end
          @NetworkAclType = params['NetworkAclType']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
        end
      end

      # 网络ACL规则。
      class NetworkAclEntry < TencentCloud::Common::AbstractModel
        # @param ModifyTime: 修改时间。
        # @type ModifyTime: String
        # @param Protocol: 协议, 取值: TCP,UDP, ICMP, ALL。
        # @type Protocol: String
        # @param Port: 端口(all, 单个port,  range)。当Protocol为ALL或ICMP时，不能指定Port。
        # @type Port: String
        # @param CidrBlock: 网段或IP(互斥)。
        # @type CidrBlock: String
        # @param Ipv6CidrBlock: 网段或IPv6(互斥)。
        # @type Ipv6CidrBlock: String
        # @param Action: ACCEPT 或 DROP。
        # @type Action: String
        # @param Description: 规则描述，最大长度100。
        # @type Description: String

        attr_accessor :ModifyTime, :Protocol, :Port, :CidrBlock, :Ipv6CidrBlock, :Action, :Description
        
        def initialize(modifytime=nil, protocol=nil, port=nil, cidrblock=nil, ipv6cidrblock=nil, action=nil, description=nil)
          @ModifyTime = modifytime
          @Protocol = protocol
          @Port = port
          @CidrBlock = cidrblock
          @Ipv6CidrBlock = ipv6cidrblock
          @Action = action
          @Description = description
        end

        def deserialize(params)
          @ModifyTime = params['ModifyTime']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @CidrBlock = params['CidrBlock']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @Action = params['Action']
          @Description = params['Description']
        end
      end

      # 网络ACL规则集合
      class NetworkAclEntrySet < TencentCloud::Common::AbstractModel
        # @param Ingress: 入站规则。
        # @type Ingress: Array
        # @param Egress: 出站规则。
        # @type Egress: Array

        attr_accessor :Ingress, :Egress
        
        def initialize(ingress=nil, egress=nil)
          @Ingress = ingress
          @Egress = egress
        end

        def deserialize(params)
          unless params['Ingress'].nil?
            @Ingress = []
            params['Ingress'].each do |i|
              networkaclentry_tmp = NetworkAclEntry.new
              networkaclentry_tmp.deserialize(i)
              @Ingress << networkaclentry_tmp
            end
          end
          unless params['Egress'].nil?
            @Egress = []
            params['Egress'].each do |i|
              networkaclentry_tmp = NetworkAclEntry.new
              networkaclentry_tmp.deserialize(i)
              @Egress << networkaclentry_tmp
            end
          end
        end
      end

      # 网络ACL五元组
      class NetworkAclQuintupleEntries < TencentCloud::Common::AbstractModel
        # @param Ingress: 网络ACL五元组入站规则。
        # @type Ingress: Array
        # @param Egress: 网络ACL五元组出站规则
        # @type Egress: Array

        attr_accessor :Ingress, :Egress
        
        def initialize(ingress=nil, egress=nil)
          @Ingress = ingress
          @Egress = egress
        end

        def deserialize(params)
          unless params['Ingress'].nil?
            @Ingress = []
            params['Ingress'].each do |i|
              networkaclquintupleentry_tmp = NetworkAclQuintupleEntry.new
              networkaclquintupleentry_tmp.deserialize(i)
              @Ingress << networkaclquintupleentry_tmp
            end
          end
          unless params['Egress'].nil?
            @Egress = []
            params['Egress'].each do |i|
              networkaclquintupleentry_tmp = NetworkAclQuintupleEntry.new
              networkaclquintupleentry_tmp.deserialize(i)
              @Egress << networkaclquintupleentry_tmp
            end
          end
        end
      end

      # 网络ACL五元组Entry
      class NetworkAclQuintupleEntry < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议, 取值: TCP,UDP, ICMP, ALL。
        # @type Protocol: String
        # @param Description: 描述。
        # @type Description: String
        # @param SourcePort: 源端口(all, 单个port,  range)。当Protocol为ALL或ICMP时，不能指定Port。
        # @type SourcePort: String
        # @param SourceCidr: 源CIDR。
        # @type SourceCidr: String
        # @param DestinationPort: 目的端口(all, 单个port,  range)。当Protocol为ALL或ICMP时，不能指定Port。
        # @type DestinationPort: String
        # @param DestinationCidr: 目的CIDR。
        # @type DestinationCidr: String
        # @param Action: 动作，ACCEPT 或 DROP。
        # @type Action: String
        # @param NetworkAclQuintupleEntryId: 网络ACL条目唯一ID。
        # @type NetworkAclQuintupleEntryId: String
        # @param Priority: 优先级，从1开始。
        # @type Priority: Integer
        # @param CreateTime: 创建时间，用于DescribeNetworkAclQuintupleEntries的出参。
        # @type CreateTime: String
        # @param NetworkAclDirection: 方向，INGRESS或EGRESS，用于DescribeNetworkAclQuintupleEntries的出参。
        # @type NetworkAclDirection: String

        attr_accessor :Protocol, :Description, :SourcePort, :SourceCidr, :DestinationPort, :DestinationCidr, :Action, :NetworkAclQuintupleEntryId, :Priority, :CreateTime, :NetworkAclDirection
        
        def initialize(protocol=nil, description=nil, sourceport=nil, sourcecidr=nil, destinationport=nil, destinationcidr=nil, action=nil, networkaclquintupleentryid=nil, priority=nil, createtime=nil, networkacldirection=nil)
          @Protocol = protocol
          @Description = description
          @SourcePort = sourceport
          @SourceCidr = sourcecidr
          @DestinationPort = destinationport
          @DestinationCidr = destinationcidr
          @Action = action
          @NetworkAclQuintupleEntryId = networkaclquintupleentryid
          @Priority = priority
          @CreateTime = createtime
          @NetworkAclDirection = networkacldirection
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Description = params['Description']
          @SourcePort = params['SourcePort']
          @SourceCidr = params['SourceCidr']
          @DestinationPort = params['DestinationPort']
          @DestinationCidr = params['DestinationCidr']
          @Action = params['Action']
          @NetworkAclQuintupleEntryId = params['NetworkAclQuintupleEntryId']
          @Priority = params['Priority']
          @CreateTime = params['CreateTime']
          @NetworkAclDirection = params['NetworkAclDirection']
        end
      end

      # 弹性网卡
      class NetworkInterface < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-f1xjkw1b。
        # @type NetworkInterfaceId: String
        # @param NetworkInterfaceName: 弹性网卡名称。
        # @type NetworkInterfaceName: String
        # @param NetworkInterfaceDescription: 弹性网卡描述。
        # @type NetworkInterfaceDescription: String
        # @param SubnetId: 子网实例ID。
        # @type SubnetId: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param GroupSet: 绑定的安全组。
        # @type GroupSet: Array
        # @param Primary: 是否是主网卡。
        # @type Primary: Boolean
        # @param MacAddress: MAC地址。
        # @type MacAddress: String
        # @param State: 弹性网卡状态：
        # <li>`PENDING`：创建中</li>
        # <li>`AVAILABLE`：可用的</li>
        # <li>`ATTACHING`：绑定中</li>
        # <li>`DETACHING`：解绑中</li>
        # <li>`DELETING`：删除中</li>
        # @type State: String
        # @param PrivateIpAddressSet: 内网IP信息。
        # @type PrivateIpAddressSet: Array
        # @param Attachment: 绑定的云服务器对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attachment: :class:`Tencentcloud::Vpc.v20170312.models.NetworkInterfaceAttachment`
        # @param Zone: 可用区。
        # @type Zone: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param Ipv6AddressSet: `IPv6`地址列表。
        # @type Ipv6AddressSet: Array
        # @param TagSet: 标签键值对。
        # @type TagSet: Array
        # @param EniType: 网卡类型。0 - 弹性网卡；1 - evm弹性网卡。
        # @type EniType: Integer
        # @param Business: 网卡绑定的子机类型：cvm，eks。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Business: String
        # @param CdcId: 网卡所关联的CDC实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param AttachType: 弹性网卡类型：0:标准型/1:扩展型。默认值为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachType: Integer

        attr_accessor :NetworkInterfaceId, :NetworkInterfaceName, :NetworkInterfaceDescription, :SubnetId, :VpcId, :GroupSet, :Primary, :MacAddress, :State, :PrivateIpAddressSet, :Attachment, :Zone, :CreatedTime, :Ipv6AddressSet, :TagSet, :EniType, :Business, :CdcId, :AttachType
        
        def initialize(networkinterfaceid=nil, networkinterfacename=nil, networkinterfacedescription=nil, subnetid=nil, vpcid=nil, groupset=nil, primary=nil, macaddress=nil, state=nil, privateipaddressset=nil, attachment=nil, zone=nil, createdtime=nil, ipv6addressset=nil, tagset=nil, enitype=nil, business=nil, cdcid=nil, attachtype=nil)
          @NetworkInterfaceId = networkinterfaceid
          @NetworkInterfaceName = networkinterfacename
          @NetworkInterfaceDescription = networkinterfacedescription
          @SubnetId = subnetid
          @VpcId = vpcid
          @GroupSet = groupset
          @Primary = primary
          @MacAddress = macaddress
          @State = state
          @PrivateIpAddressSet = privateipaddressset
          @Attachment = attachment
          @Zone = zone
          @CreatedTime = createdtime
          @Ipv6AddressSet = ipv6addressset
          @TagSet = tagset
          @EniType = enitype
          @Business = business
          @CdcId = cdcid
          @AttachType = attachtype
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @NetworkInterfaceDescription = params['NetworkInterfaceDescription']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @GroupSet = params['GroupSet']
          @Primary = params['Primary']
          @MacAddress = params['MacAddress']
          @State = params['State']
          unless params['PrivateIpAddressSet'].nil?
            @PrivateIpAddressSet = []
            params['PrivateIpAddressSet'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddressSet << privateipaddressspecification_tmp
            end
          end
          unless params['Attachment'].nil?
            @Attachment = NetworkInterfaceAttachment.new
            @Attachment.deserialize(params['Attachment'])
          end
          @Zone = params['Zone']
          @CreatedTime = params['CreatedTime']
          unless params['Ipv6AddressSet'].nil?
            @Ipv6AddressSet = []
            params['Ipv6AddressSet'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6AddressSet << ipv6address_tmp
            end
          end
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @EniType = params['EniType']
          @Business = params['Business']
          @CdcId = params['CdcId']
          @AttachType = params['AttachType']
        end
      end

      # 弹性网卡绑定关系
      class NetworkInterfaceAttachment < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云主机实例ID。
        # @type InstanceId: String
        # @param DeviceIndex: 网卡在云主机实例内的序号。
        # @type DeviceIndex: Integer
        # @param InstanceAccountId: 云主机所有者账户信息。
        # @type InstanceAccountId: String
        # @param AttachTime: 绑定时间。
        # @type AttachTime: String

        attr_accessor :InstanceId, :DeviceIndex, :InstanceAccountId, :AttachTime
        
        def initialize(instanceid=nil, deviceindex=nil, instanceaccountid=nil, attachtime=nil)
          @InstanceId = instanceid
          @DeviceIndex = deviceindex
          @InstanceAccountId = instanceaccountid
          @AttachTime = attachtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceIndex = params['DeviceIndex']
          @InstanceAccountId = params['InstanceAccountId']
          @AttachTime = params['AttachTime']
        end
      end

      # NotifyRoutes请求参数结构体
      class NotifyRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param RouteItemIds: 路由策略唯一ID。
        # @type RouteItemIds: Array

        attr_accessor :RouteTableId, :RouteItemIds
        
        def initialize(routetableid=nil, routeitemids=nil)
          @RouteTableId = routetableid
          @RouteItemIds = routeitemids
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteItemIds = params['RouteItemIds']
        end
      end

      # NotifyRoutes返回参数结构体
      class NotifyRoutesResponse < TencentCloud::Common::AbstractModel
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

      # 价格
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格。
        # @type InstancePrice: :class:`Tencentcloud::Vpc.v20170312.models.ItemPrice`
        # @param BandwidthPrice: 网络价格。
        # @type BandwidthPrice: :class:`Tencentcloud::Vpc.v20170312.models.ItemPrice`

        attr_accessor :InstancePrice, :BandwidthPrice
        
        def initialize(instanceprice=nil, bandwidthprice=nil)
          @InstancePrice = instanceprice
          @BandwidthPrice = bandwidthprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = ItemPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['BandwidthPrice'].nil?
            @BandwidthPrice = ItemPrice.new
            @BandwidthPrice.deserialize(params['BandwidthPrice'])
          end
        end
      end

      # 内网IP信息
      class PrivateIpAddressSpecification < TencentCloud::Common::AbstractModel
        # @param PrivateIpAddress: 内网IP地址。
        # @type PrivateIpAddress: String
        # @param Primary: 是否是主IP。
        # @type Primary: Boolean
        # @param PublicIpAddress: 公网IP地址。
        # @type PublicIpAddress: String
        # @param AddressId: EIP实例ID，例如：eip-11112222。
        # @type AddressId: String
        # @param Description: 内网IP描述信息。
        # @type Description: String
        # @param IsWanIpBlocked: 公网IP是否被封堵。
        # @type IsWanIpBlocked: Boolean
        # @param State: IP状态：
        # PENDING：生产中
        # MIGRATING：迁移中
        # DELETING：删除中
        # AVAILABLE：可用的
        # @type State: String

        attr_accessor :PrivateIpAddress, :Primary, :PublicIpAddress, :AddressId, :Description, :IsWanIpBlocked, :State
        
        def initialize(privateipaddress=nil, primary=nil, publicipaddress=nil, addressid=nil, description=nil, iswanipblocked=nil, state=nil)
          @PrivateIpAddress = privateipaddress
          @Primary = primary
          @PublicIpAddress = publicipaddress
          @AddressId = addressid
          @Description = description
          @IsWanIpBlocked = iswanipblocked
          @State = state
        end

        def deserialize(params)
          @PrivateIpAddress = params['PrivateIpAddress']
          @Primary = params['Primary']
          @PublicIpAddress = params['PublicIpAddress']
          @AddressId = params['AddressId']
          @Description = params['Description']
          @IsWanIpBlocked = params['IsWanIpBlocked']
          @State = params['State']
        end
      end

      # 描述网络中心每个产品的配额信息
      class ProductQuota < TencentCloud::Common::AbstractModel
        # @param QuotaId: 产品配额ID
        # @type QuotaId: String
        # @param QuotaName: 产品配额名称
        # @type QuotaName: String
        # @param QuotaCurrent: 产品当前配额
        # @type QuotaCurrent: Integer
        # @param QuotaLimit: 产品配额上限
        # @type QuotaLimit: Integer
        # @param QuotaRegion: 产品配额是否有地域属性
        # @type QuotaRegion: Boolean

        attr_accessor :QuotaId, :QuotaName, :QuotaCurrent, :QuotaLimit, :QuotaRegion
        
        def initialize(quotaid=nil, quotaname=nil, quotacurrent=nil, quotalimit=nil, quotaregion=nil)
          @QuotaId = quotaid
          @QuotaName = quotaname
          @QuotaCurrent = quotacurrent
          @QuotaLimit = quotalimit
          @QuotaRegion = quotaregion
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @QuotaName = params['QuotaName']
          @QuotaCurrent = params['QuotaCurrent']
          @QuotaLimit = params['QuotaLimit']
          @QuotaRegion = params['QuotaRegion']
        end
      end

      # 描述配额信息
      class Quota < TencentCloud::Common::AbstractModel
        # @param QuotaId: 配额名称，取值范围：<br><li>`TOTAL_EIP_QUOTA`：用户当前地域下EIP的配额数；<br><li>`DAILY_EIP_APPLY`：用户当前地域下今日申购次数；<br><li>`DAILY_PUBLIC_IP_ASSIGN`：用户当前地域下，重新分配公网 IP次数。
        # @type QuotaId: String
        # @param QuotaCurrent: 当前数量
        # @type QuotaCurrent: Integer
        # @param QuotaLimit: 配额数量
        # @type QuotaLimit: Integer

        attr_accessor :QuotaId, :QuotaCurrent, :QuotaLimit
        
        def initialize(quotaid=nil, quotacurrent=nil, quotalimit=nil)
          @QuotaId = quotaid
          @QuotaCurrent = quotacurrent
          @QuotaLimit = quotalimit
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @QuotaCurrent = params['QuotaCurrent']
          @QuotaLimit = params['QuotaLimit']
        end
      end

      # 安全组被引用信息
      class ReferredSecurityGroup < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID。
        # @type SecurityGroupId: String
        # @param ReferredSecurityGroupIds: 引用安全组实例ID（SecurityGroupId）的所有安全组实例ID。
        # @type ReferredSecurityGroupIds: Array

        attr_accessor :SecurityGroupId, :ReferredSecurityGroupIds
        
        def initialize(securitygroupid=nil, referredsecuritygroupids=nil)
          @SecurityGroupId = securitygroupid
          @ReferredSecurityGroupIds = referredsecuritygroupids
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @ReferredSecurityGroupIds = params['ReferredSecurityGroupIds']
        end
      end

      # RefreshDirectConnectGatewayRouteToNatGateway请求参数结构体
      class RefreshDirectConnectGatewayRouteToNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的ID
        # @type VpcId: String
        # @param NatGatewayId: NAT网关ID
        # @type NatGatewayId: String
        # @param DryRun: 是否是预刷新；True:是， False:否
        # @type DryRun: Boolean

        attr_accessor :VpcId, :NatGatewayId, :DryRun
        
        def initialize(vpcid=nil, natgatewayid=nil, dryrun=nil)
          @VpcId = vpcid
          @NatGatewayId = natgatewayid
          @DryRun = dryrun
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NatGatewayId = params['NatGatewayId']
          @DryRun = params['DryRun']
        end
      end

      # RefreshDirectConnectGatewayRouteToNatGateway返回参数结构体
      class RefreshDirectConnectGatewayRouteToNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param DirectConnectSubnetSet: IDC子网信息
        # @type DirectConnectSubnetSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DirectConnectSubnetSet, :RequestId
        
        def initialize(directconnectsubnetset=nil, requestid=nil)
          @DirectConnectSubnetSet = directconnectsubnetset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DirectConnectSubnetSet'].nil?
            @DirectConnectSubnetSet = []
            params['DirectConnectSubnetSet'].each do |i|
              directconnectsubnet_tmp = DirectConnectSubnet.new
              directconnectsubnet_tmp.deserialize(i)
              @DirectConnectSubnetSet << directconnectsubnet_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RejectAttachCcnInstances请求参数结构体
      class RejectAttachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param Instances: 拒绝关联实例列表。
        # @type Instances: Array

        attr_accessor :CcnId, :Instances
        
        def initialize(ccnid=nil, instances=nil)
          @CcnId = ccnid
          @Instances = instances
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              ccninstance_tmp = CcnInstance.new
              ccninstance_tmp.deserialize(i)
              @Instances << ccninstance_tmp
            end
          end
        end
      end

      # RejectAttachCcnInstances返回参数结构体
      class RejectAttachCcnInstancesResponse < TencentCloud::Common::AbstractModel
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

      # ReleaseAddresses请求参数结构体
      class ReleaseAddressesRequest < TencentCloud::Common::AbstractModel
        # @param AddressIds: 标识 EIP 的唯一 ID 列表。EIP 唯一 ID 形如：`eip-11112222`。
        # @type AddressIds: Array

        attr_accessor :AddressIds
        
        def initialize(addressids=nil)
          @AddressIds = addressids
        end

        def deserialize(params)
          @AddressIds = params['AddressIds']
        end
      end

      # ReleaseAddresses返回参数结构体
      class ReleaseAddressesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ReleaseIp6AddressesBandwidth请求参数结构体
      class ReleaseIp6AddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param Ip6Addresses: IPV6地址。Ip6Addresses和Ip6AddressIds必须且只能传一个
        # @type Ip6Addresses: Array
        # @param Ip6AddressIds: IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ip6Addresses和Ip6AddressIds必须且只能传一个。
        # @type Ip6AddressIds: Array

        attr_accessor :Ip6Addresses, :Ip6AddressIds
        
        def initialize(ip6addresses=nil, ip6addressids=nil)
          @Ip6Addresses = ip6addresses
          @Ip6AddressIds = ip6addressids
        end

        def deserialize(params)
          @Ip6Addresses = params['Ip6Addresses']
          @Ip6AddressIds = params['Ip6AddressIds']
        end
      end

      # ReleaseIp6AddressesBandwidth返回参数结构体
      class ReleaseIp6AddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # RemoveBandwidthPackageResources请求参数结构体
      class RemoveBandwidthPackageResourcesRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 带宽包唯一标识ID，形如'bwp-xxxx'
        # @type BandwidthPackageId: String
        # @param ResourceType: 资源类型，包括‘Address’, ‘LoadBalance’
        # @type ResourceType: String
        # @param ResourceIds: 资源ID，可支持资源形如'eip-xxxx', 'lb-xxxx'
        # @type ResourceIds: Array

        attr_accessor :BandwidthPackageId, :ResourceType, :ResourceIds
        
        def initialize(bandwidthpackageid=nil, resourcetype=nil, resourceids=nil)
          @BandwidthPackageId = bandwidthpackageid
          @ResourceType = resourcetype
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
          @ResourceType = params['ResourceType']
          @ResourceIds = params['ResourceIds']
        end
      end

      # RemoveBandwidthPackageResources返回参数结构体
      class RemoveBandwidthPackageResourcesResponse < TencentCloud::Common::AbstractModel
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

      # RemoveIp6Rules请求参数结构体
      class RemoveIp6RulesRequest < TencentCloud::Common::AbstractModel
        # @param Ip6TranslatorId: IPV6转换规则所属的转换实例唯一ID，形如ip6-xxxxxxxx
        # @type Ip6TranslatorId: String
        # @param Ip6RuleIds: 待删除IPV6转换规则，形如rule6-xxxxxxxx
        # @type Ip6RuleIds: Array

        attr_accessor :Ip6TranslatorId, :Ip6RuleIds
        
        def initialize(ip6translatorid=nil, ip6ruleids=nil)
          @Ip6TranslatorId = ip6translatorid
          @Ip6RuleIds = ip6ruleids
        end

        def deserialize(params)
          @Ip6TranslatorId = params['Ip6TranslatorId']
          @Ip6RuleIds = params['Ip6RuleIds']
        end
      end

      # RemoveIp6Rules返回参数结构体
      class RemoveIp6RulesResponse < TencentCloud::Common::AbstractModel
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

      # RenewAddresses请求参数结构体
      class RenewAddressesRequest < TencentCloud::Common::AbstractModel
        # @param AddressIds: EIP唯一标识ID列表，形如'eip-xxxx'
        # @type AddressIds: Array
        # @param AddressChargePrepaid: 续费参数
        # @type AddressChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.AddressChargePrepaid`

        attr_accessor :AddressIds, :AddressChargePrepaid
        
        def initialize(addressids=nil, addresschargeprepaid=nil)
          @AddressIds = addressids
          @AddressChargePrepaid = addresschargeprepaid
        end

        def deserialize(params)
          @AddressIds = params['AddressIds']
          unless params['AddressChargePrepaid'].nil?
            @AddressChargePrepaid = AddressChargePrepaid.new
            @AddressChargePrepaid.deserialize(params['AddressChargePrepaid'])
          end
        end
      end

      # RenewAddresses返回参数结构体
      class RenewAddressesResponse < TencentCloud::Common::AbstractModel
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

      # RenewVpnGateway请求参数结构体
      class RenewVpnGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param InstanceChargePrepaid: 预付费计费模式。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Vpc.v20170312.models.InstanceChargePrepaid`

        attr_accessor :VpnGatewayId, :InstanceChargePrepaid
        
        def initialize(vpngatewayid=nil, instancechargeprepaid=nil)
          @VpnGatewayId = vpngatewayid
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
        end
      end

      # RenewVpnGateway返回参数结构体
      class RenewVpnGatewayResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceDirectConnectGatewayCcnRoutes请求参数结构体
      class ReplaceDirectConnectGatewayCcnRoutesRequest < TencentCloud::Common::AbstractModel
        # @param DirectConnectGatewayId: 专线网关ID，形如：dcg-prpqlmg1
        # @type DirectConnectGatewayId: String
        # @param Routes: 需要连通的IDC网段列表
        # @type Routes: Array

        attr_accessor :DirectConnectGatewayId, :Routes
        
        def initialize(directconnectgatewayid=nil, routes=nil)
          @DirectConnectGatewayId = directconnectgatewayid
          @Routes = routes
        end

        def deserialize(params)
          @DirectConnectGatewayId = params['DirectConnectGatewayId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              directconnectgatewayccnroute_tmp = DirectConnectGatewayCcnRoute.new
              directconnectgatewayccnroute_tmp.deserialize(i)
              @Routes << directconnectgatewayccnroute_tmp
            end
          end
        end
      end

      # ReplaceDirectConnectGatewayCcnRoutes返回参数结构体
      class ReplaceDirectConnectGatewayCcnRoutesResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceRouteTableAssociation请求参数结构体
      class ReplaceRouteTableAssociationRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID，例如：subnet-3x5lf5q0。可通过DescribeSubnets接口查询。
        # @type SubnetId: String
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String

        attr_accessor :SubnetId, :RouteTableId
        
        def initialize(subnetid=nil, routetableid=nil)
          @SubnetId = subnetid
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @RouteTableId = params['RouteTableId']
        end
      end

      # ReplaceRouteTableAssociation返回参数结构体
      class ReplaceRouteTableAssociationResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceRoutes请求参数结构体
      class ReplaceRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param Routes: 路由策略对象。需要指定路由策略ID（RouteId）。
        # @type Routes: Array

        attr_accessor :RouteTableId, :Routes
        
        def initialize(routetableid=nil, routes=nil)
          @RouteTableId = routetableid
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # ReplaceRoutes返回参数结构体
      class ReplaceRoutesResponse < TencentCloud::Common::AbstractModel
        # @param OldRouteSet: 原路由策略信息。
        # @type OldRouteSet: Array
        # @param NewRouteSet: 修改后的路由策略信息。
        # @type NewRouteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OldRouteSet, :NewRouteSet, :RequestId
        
        def initialize(oldrouteset=nil, newrouteset=nil, requestid=nil)
          @OldRouteSet = oldrouteset
          @NewRouteSet = newrouteset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OldRouteSet'].nil?
            @OldRouteSet = []
            params['OldRouteSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @OldRouteSet << route_tmp
            end
          end
          unless params['NewRouteSet'].nil?
            @NewRouteSet = []
            params['NewRouteSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @NewRouteSet << route_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ReplaceSecurityGroupPolicy请求参数结构体
      class ReplaceSecurityGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合对象。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`
        # @param OriginalSecurityGroupPolicySet: 旧的安全组规则集合对象，可选，日志记录用。
        # @type OriginalSecurityGroupPolicySet: :class:`Tencentcloud::Vpc.v20170312.models.SecurityGroupPolicySet`

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet, :OriginalSecurityGroupPolicySet
        
        def initialize(securitygroupid=nil, securitygrouppolicyset=nil, originalsecuritygrouppolicyset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
          @OriginalSecurityGroupPolicySet = originalsecuritygrouppolicyset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
          unless params['OriginalSecurityGroupPolicySet'].nil?
            @OriginalSecurityGroupPolicySet = SecurityGroupPolicySet.new
            @OriginalSecurityGroupPolicySet.deserialize(params['OriginalSecurityGroupPolicySet'])
          end
        end
      end

      # ReplaceSecurityGroupPolicy返回参数结构体
      class ReplaceSecurityGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ResetAttachCcnInstances请求参数结构体
      class ResetAttachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param CcnUin: CCN所属UIN（根账号）。
        # @type CcnUin: String
        # @param Instances: 重新申请关联网络实例列表。
        # @type Instances: Array

        attr_accessor :CcnId, :CcnUin, :Instances
        
        def initialize(ccnid=nil, ccnuin=nil, instances=nil)
          @CcnId = ccnid
          @CcnUin = ccnuin
          @Instances = instances
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @CcnUin = params['CcnUin']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              ccninstance_tmp = CcnInstance.new
              ccninstance_tmp.deserialize(i)
              @Instances << ccninstance_tmp
            end
          end
        end
      end

      # ResetAttachCcnInstances返回参数结构体
      class ResetAttachCcnInstancesResponse < TencentCloud::Common::AbstractModel
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

      # ResetNatGatewayConnection请求参数结构体
      class ResetNatGatewayConnectionRequest < TencentCloud::Common::AbstractModel
        # @param NatGatewayId: NAT网关ID。
        # @type NatGatewayId: String
        # @param MaxConcurrentConnection: NAT网关并发连接上限，形如：1000000、3000000、10000000。
        # @type MaxConcurrentConnection: Integer

        attr_accessor :NatGatewayId, :MaxConcurrentConnection
        
        def initialize(natgatewayid=nil, maxconcurrentconnection=nil)
          @NatGatewayId = natgatewayid
          @MaxConcurrentConnection = maxconcurrentconnection
        end

        def deserialize(params)
          @NatGatewayId = params['NatGatewayId']
          @MaxConcurrentConnection = params['MaxConcurrentConnection']
        end
      end

      # ResetNatGatewayConnection返回参数结构体
      class ResetNatGatewayConnectionResponse < TencentCloud::Common::AbstractModel
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

      # ResetRoutes请求参数结构体
      class ResetRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称，最大长度不能超过60个字节。
        # @type RouteTableName: String
        # @param Routes: 路由策略。
        # @type Routes: Array

        attr_accessor :RouteTableId, :RouteTableName, :Routes
        
        def initialize(routetableid=nil, routetablename=nil, routes=nil)
          @RouteTableId = routetableid
          @RouteTableName = routetablename
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # ResetRoutes返回参数结构体
      class ResetRoutesResponse < TencentCloud::Common::AbstractModel
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

      # ResetVpnConnection请求参数结构体
      class ResetVpnConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param VpnConnectionId: VPN通道实例ID。形如：vpnx-f49l6u0z。
        # @type VpnConnectionId: String

        attr_accessor :VpnGatewayId, :VpnConnectionId
        
        def initialize(vpngatewayid=nil, vpnconnectionid=nil)
          @VpnGatewayId = vpngatewayid
          @VpnConnectionId = vpnconnectionid
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpnConnectionId = params['VpnConnectionId']
        end
      end

      # ResetVpnConnection返回参数结构体
      class ResetVpnConnectionResponse < TencentCloud::Common::AbstractModel
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

      # ResetVpnGatewayInternetMaxBandwidth请求参数结构体
      class ResetVpnGatewayInternetMaxBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param InternetMaxBandwidthOut: 公网带宽设置。可选带宽规格：5, 10, 20, 50, 100；单位：Mbps。
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :VpnGatewayId, :InternetMaxBandwidthOut
        
        def initialize(vpngatewayid=nil, internetmaxbandwidthout=nil)
          @VpnGatewayId = vpngatewayid
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # ResetVpnGatewayInternetMaxBandwidth返回参数结构体
      class ResetVpnGatewayInternetMaxBandwidthResponse < TencentCloud::Common::AbstractModel
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

      # 描述带宽包资源信息的结构
      class Resource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 带宽包资源类型，包括'Address'和'LoadBalance'
        # @type ResourceType: String
        # @param ResourceId: 带宽包资源Id，形如'eip-xxxx', 'lb-xxxx'
        # @type ResourceId: String
        # @param AddressIp: 带宽包资源Ip
        # @type AddressIp: String

        attr_accessor :ResourceType, :ResourceId, :AddressIp
        
        def initialize(resourcetype=nil, resourceid=nil, addressip=nil)
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @AddressIp = addressip
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @AddressIp = params['AddressIp']
        end
      end

      # VPC资源看板（各资源个数）
      class ResourceDashboard < TencentCloud::Common::AbstractModel
        # @param VpcId: Vpc实例ID，例如：vpc-bq4bzxpj。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID，例如：subnet-bthucmmy。
        # @type SubnetId: String
        # @param Classiclink: 基础网络互通。
        # @type Classiclink: Integer
        # @param Dcg: 专线网关。
        # @type Dcg: Integer
        # @param Pcx: 对等连接。
        # @type Pcx: Integer
        # @param Ip: 统计当前除云服务器 IP、弹性网卡IP和网络探测IP以外的所有已使用的IP总数。云服务器 IP、弹性网卡IP和网络探测IP单独计数。
        # @type Ip: Integer
        # @param Nat: NAT网关。
        # @type Nat: Integer
        # @param Vpngw: VPN网关。
        # @type Vpngw: Integer
        # @param FlowLog: 流日志。
        # @type FlowLog: Integer
        # @param NetworkDetect: 网络探测。
        # @type NetworkDetect: Integer
        # @param NetworkACL: 网络ACL。
        # @type NetworkACL: Integer
        # @param CVM: 云主机。
        # @type CVM: Integer
        # @param LB: 负载均衡。
        # @type LB: Integer
        # @param CDB: 关系型数据库。
        # @type CDB: Integer
        # @param Cmem: 云数据库 TencentDB for Memcached。
        # @type Cmem: Integer
        # @param CTSDB: 时序数据库。
        # @type CTSDB: Integer
        # @param MariaDB: 数据库 TencentDB for MariaDB（TDSQL）。
        # @type MariaDB: Integer
        # @param SQLServer: 数据库 TencentDB for SQL Server。
        # @type SQLServer: Integer
        # @param Postgres: 云数据库 TencentDB for PostgreSQL。
        # @type Postgres: Integer
        # @param NAS: 网络附加存储。
        # @type NAS: Integer
        # @param Greenplumn: Snova云数据仓库。
        # @type Greenplumn: Integer
        # @param Ckafka: 消息队列 CKAFKA。
        # @type Ckafka: Integer
        # @param Grocery: Grocery。
        # @type Grocery: Integer
        # @param HSM: 数据加密服务。
        # @type HSM: Integer
        # @param Tcaplus: 游戏存储 Tcaplus。
        # @type Tcaplus: Integer
        # @param Cnas: Cnas。
        # @type Cnas: Integer
        # @param TiDB: HTAP 数据库 TiDB。
        # @type TiDB: Integer
        # @param Emr: EMR 集群。
        # @type Emr: Integer
        # @param SEAL: SEAL。
        # @type SEAL: Integer
        # @param CFS: 文件存储 CFS。
        # @type CFS: Integer
        # @param Oracle: Oracle。
        # @type Oracle: Integer
        # @param ElasticSearch: ElasticSearch服务。
        # @type ElasticSearch: Integer
        # @param TBaaS: 区块链服务。
        # @type TBaaS: Integer
        # @param Itop: Itop。
        # @type Itop: Integer
        # @param DBAudit: 云数据库审计。
        # @type DBAudit: Integer
        # @param CynosDBPostgres: 企业级云数据库 CynosDB for Postgres。
        # @type CynosDBPostgres: Integer
        # @param Redis: 数据库 TencentDB for Redis。
        # @type Redis: Integer
        # @param MongoDB: 数据库 TencentDB for MongoDB。
        # @type MongoDB: Integer
        # @param DCDB: 分布式数据库 TencentDB for TDSQL。
        # @type DCDB: Integer
        # @param CynosDBMySQL: 企业级云数据库 CynosDB for MySQL。
        # @type CynosDBMySQL: Integer
        # @param Subnet: 子网。
        # @type Subnet: Integer
        # @param RouteTable: 路由表。
        # @type RouteTable: Integer

        attr_accessor :VpcId, :SubnetId, :Classiclink, :Dcg, :Pcx, :Ip, :Nat, :Vpngw, :FlowLog, :NetworkDetect, :NetworkACL, :CVM, :LB, :CDB, :Cmem, :CTSDB, :MariaDB, :SQLServer, :Postgres, :NAS, :Greenplumn, :Ckafka, :Grocery, :HSM, :Tcaplus, :Cnas, :TiDB, :Emr, :SEAL, :CFS, :Oracle, :ElasticSearch, :TBaaS, :Itop, :DBAudit, :CynosDBPostgres, :Redis, :MongoDB, :DCDB, :CynosDBMySQL, :Subnet, :RouteTable
        
        def initialize(vpcid=nil, subnetid=nil, classiclink=nil, dcg=nil, pcx=nil, ip=nil, nat=nil, vpngw=nil, flowlog=nil, networkdetect=nil, networkacl=nil, cvm=nil, lb=nil, cdb=nil, cmem=nil, ctsdb=nil, mariadb=nil, sqlserver=nil, postgres=nil, nas=nil, greenplumn=nil, ckafka=nil, grocery=nil, hsm=nil, tcaplus=nil, cnas=nil, tidb=nil, emr=nil, seal=nil, cfs=nil, oracle=nil, elasticsearch=nil, tbaas=nil, itop=nil, dbaudit=nil, cynosdbpostgres=nil, redis=nil, mongodb=nil, dcdb=nil, cynosdbmysql=nil, subnet=nil, routetable=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Classiclink = classiclink
          @Dcg = dcg
          @Pcx = pcx
          @Ip = ip
          @Nat = nat
          @Vpngw = vpngw
          @FlowLog = flowlog
          @NetworkDetect = networkdetect
          @NetworkACL = networkacl
          @CVM = cvm
          @LB = lb
          @CDB = cdb
          @Cmem = cmem
          @CTSDB = ctsdb
          @MariaDB = mariadb
          @SQLServer = sqlserver
          @Postgres = postgres
          @NAS = nas
          @Greenplumn = greenplumn
          @Ckafka = ckafka
          @Grocery = grocery
          @HSM = hsm
          @Tcaplus = tcaplus
          @Cnas = cnas
          @TiDB = tidb
          @Emr = emr
          @SEAL = seal
          @CFS = cfs
          @Oracle = oracle
          @ElasticSearch = elasticsearch
          @TBaaS = tbaas
          @Itop = itop
          @DBAudit = dbaudit
          @CynosDBPostgres = cynosdbpostgres
          @Redis = redis
          @MongoDB = mongodb
          @DCDB = dcdb
          @CynosDBMySQL = cynosdbmysql
          @Subnet = subnet
          @RouteTable = routetable
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Classiclink = params['Classiclink']
          @Dcg = params['Dcg']
          @Pcx = params['Pcx']
          @Ip = params['Ip']
          @Nat = params['Nat']
          @Vpngw = params['Vpngw']
          @FlowLog = params['FlowLog']
          @NetworkDetect = params['NetworkDetect']
          @NetworkACL = params['NetworkACL']
          @CVM = params['CVM']
          @LB = params['LB']
          @CDB = params['CDB']
          @Cmem = params['Cmem']
          @CTSDB = params['CTSDB']
          @MariaDB = params['MariaDB']
          @SQLServer = params['SQLServer']
          @Postgres = params['Postgres']
          @NAS = params['NAS']
          @Greenplumn = params['Greenplumn']
          @Ckafka = params['Ckafka']
          @Grocery = params['Grocery']
          @HSM = params['HSM']
          @Tcaplus = params['Tcaplus']
          @Cnas = params['Cnas']
          @TiDB = params['TiDB']
          @Emr = params['Emr']
          @SEAL = params['SEAL']
          @CFS = params['CFS']
          @Oracle = params['Oracle']
          @ElasticSearch = params['ElasticSearch']
          @TBaaS = params['TBaaS']
          @Itop = params['Itop']
          @DBAudit = params['DBAudit']
          @CynosDBPostgres = params['CynosDBPostgres']
          @Redis = params['Redis']
          @MongoDB = params['MongoDB']
          @DCDB = params['DCDB']
          @CynosDBMySQL = params['CynosDBMySQL']
          @Subnet = params['Subnet']
          @RouteTable = params['RouteTable']
        end
      end

      # 路由策略对象
      class Route < TencentCloud::Common::AbstractModel
        # @param DestinationCidrBlock: 目的网段，取值不能在私有网络网段内，例如：112.20.51.0/24。
        # @type DestinationCidrBlock: String
        # @param GatewayType: 下一跳类型，目前我们支持的类型有：
        # CVM：公网网关类型的云服务器；
        # VPN：VPN网关；
        # DIRECTCONNECT：专线网关；
        # PEERCONNECTION：对等连接；
        # HAVIP：高可用虚拟IP；
        # NAT：NAT网关;
        # NORMAL_CVM：普通云服务器；
        # EIP：云服务器的公网IP；
        # LOCAL_GATEWAY：本地网关。
        # @type GatewayType: String
        # @param GatewayId: 下一跳地址，这里只需要指定不同下一跳类型的网关ID，系统会自动匹配到下一跳地址。
        # @type GatewayId: String
        # @param RouteId: 路由策略ID。IPv4路由策略ID是有意义的值，IPv6路由策略是无意义的值0。后续建议完全使用字符串唯一ID `RouteItemId`操作路由策略。
        # 该字段在删除时必填，其他字段无需填写。
        # @type RouteId: Integer
        # @param RouteDescription: 路由策略描述。
        # @type RouteDescription: String
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param RouteType: 路由类型，目前我们支持的类型有：
        # USER：用户路由；
        # NETD：网络探测路由，创建网络探测实例时，系统默认下发，不可编辑与删除；
        # CCN：云联网路由，系统默认下发，不可编辑与删除。
        # 用户只能添加和操作 USER 类型的路由。
        # @type RouteType: String
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param DestinationIpv6CidrBlock: 目的IPv6网段，取值不能在私有网络网段内，例如：2402:4e00:1000:810b::/64。
        # @type DestinationIpv6CidrBlock: String
        # @param RouteItemId: 路由唯一策略ID。
        # @type RouteItemId: String
        # @param PublishedToVbc: 路由策略是否发布到云联网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishedToVbc: Boolean
        # @param CreatedTime: 路由策略创建时间
        # @type CreatedTime: String

        attr_accessor :DestinationCidrBlock, :GatewayType, :GatewayId, :RouteId, :RouteDescription, :Enabled, :RouteType, :RouteTableId, :DestinationIpv6CidrBlock, :RouteItemId, :PublishedToVbc, :CreatedTime
        
        def initialize(destinationcidrblock=nil, gatewaytype=nil, gatewayid=nil, routeid=nil, routedescription=nil, enabled=nil, routetype=nil, routetableid=nil, destinationipv6cidrblock=nil, routeitemid=nil, publishedtovbc=nil, createdtime=nil)
          @DestinationCidrBlock = destinationcidrblock
          @GatewayType = gatewaytype
          @GatewayId = gatewayid
          @RouteId = routeid
          @RouteDescription = routedescription
          @Enabled = enabled
          @RouteType = routetype
          @RouteTableId = routetableid
          @DestinationIpv6CidrBlock = destinationipv6cidrblock
          @RouteItemId = routeitemid
          @PublishedToVbc = publishedtovbc
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @GatewayType = params['GatewayType']
          @GatewayId = params['GatewayId']
          @RouteId = params['RouteId']
          @RouteDescription = params['RouteDescription']
          @Enabled = params['Enabled']
          @RouteType = params['RouteType']
          @RouteTableId = params['RouteTableId']
          @DestinationIpv6CidrBlock = params['DestinationIpv6CidrBlock']
          @RouteItemId = params['RouteItemId']
          @PublishedToVbc = params['PublishedToVbc']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 路由冲突对象
      class RouteConflict < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param DestinationCidrBlock: 要检查的与之冲突的目的端
        # @type DestinationCidrBlock: String
        # @param ConflictSet: 冲突的路由策略列表
        # @type ConflictSet: Array

        attr_accessor :RouteTableId, :DestinationCidrBlock, :ConflictSet
        
        def initialize(routetableid=nil, destinationcidrblock=nil, conflictset=nil)
          @RouteTableId = routetableid
          @DestinationCidrBlock = destinationcidrblock
          @ConflictSet = conflictset
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          unless params['ConflictSet'].nil?
            @ConflictSet = []
            params['ConflictSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @ConflictSet << route_tmp
            end
          end
        end
      end

      # 路由表对象
      class RouteTable < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param AssociationSet: 路由表关联关系。
        # @type AssociationSet: Array
        # @param RouteSet: IPv4路由策略集合。
        # @type RouteSet: Array
        # @param Main: 是否默认路由表。
        # @type Main: Boolean
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param TagSet: 标签键值对。
        # @type TagSet: Array
        # @param LocalCidrForCcn: local路由是否发布云联网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalCidrForCcn: Array

        attr_accessor :VpcId, :RouteTableId, :RouteTableName, :AssociationSet, :RouteSet, :Main, :CreatedTime, :TagSet, :LocalCidrForCcn
        
        def initialize(vpcid=nil, routetableid=nil, routetablename=nil, associationset=nil, routeset=nil, main=nil, createdtime=nil, tagset=nil, localcidrforccn=nil)
          @VpcId = vpcid
          @RouteTableId = routetableid
          @RouteTableName = routetablename
          @AssociationSet = associationset
          @RouteSet = routeset
          @Main = main
          @CreatedTime = createdtime
          @TagSet = tagset
          @LocalCidrForCcn = localcidrforccn
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
          unless params['AssociationSet'].nil?
            @AssociationSet = []
            params['AssociationSet'].each do |i|
              routetableassociation_tmp = RouteTableAssociation.new
              routetableassociation_tmp.deserialize(i)
              @AssociationSet << routetableassociation_tmp
            end
          end
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @RouteSet << route_tmp
            end
          end
          @Main = params['Main']
          @CreatedTime = params['CreatedTime']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          unless params['LocalCidrForCcn'].nil?
            @LocalCidrForCcn = []
            params['LocalCidrForCcn'].each do |i|
              cidrforccn_tmp = CidrForCcn.new
              cidrforccn_tmp.deserialize(i)
              @LocalCidrForCcn << cidrforccn_tmp
            end
          end
        end
      end

      # 路由表关联关系
      class RouteTableAssociation < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID。
        # @type SubnetId: String
        # @param RouteTableId: 路由表实例ID。
        # @type RouteTableId: String

        attr_accessor :SubnetId, :RouteTableId
        
        def initialize(subnetid=nil, routetableid=nil)
          @SubnetId = subnetid
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @RouteTableId = params['RouteTableId']
        end
      end

      # 安全组对象
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如：sg-ohuuioma。
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type SecurityGroupName: String
        # @param SecurityGroupDesc: 安全组备注，最多100个字符。
        # @type SecurityGroupDesc: String
        # @param ProjectId: 项目id，默认0。可在qcloud控制台项目管理页面查询到。
        # @type ProjectId: String
        # @param IsDefault: 是否是默认安全组，默认安全组不支持删除。
        # @type IsDefault: Boolean
        # @param CreatedTime: 安全组创建时间。
        # @type CreatedTime: String
        # @param TagSet: 标签键值对。
        # @type TagSet: Array
        # @param UpdateTime: 安全组更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :SecurityGroupId, :SecurityGroupName, :SecurityGroupDesc, :ProjectId, :IsDefault, :CreatedTime, :TagSet, :UpdateTime
        
        def initialize(securitygroupid=nil, securitygroupname=nil, securitygroupdesc=nil, projectid=nil, isdefault=nil, createdtime=nil, tagset=nil, updatetime=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupDesc = securitygroupdesc
          @ProjectId = projectid
          @IsDefault = isdefault
          @CreatedTime = createdtime
          @TagSet = tagset
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupDesc = params['SecurityGroupDesc']
          @ProjectId = params['ProjectId']
          @IsDefault = params['IsDefault']
          @CreatedTime = params['CreatedTime']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
        end
      end

      # 安全组关联的实例统计
      class SecurityGroupAssociationStatistics < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID。
        # @type SecurityGroupId: String
        # @param CVM: 云服务器实例数。
        # @type CVM: Integer
        # @param CDB: MySQL数据库实例数。
        # @type CDB: Integer
        # @param ENI: 弹性网卡实例数。
        # @type ENI: Integer
        # @param SG: 被安全组引用数。
        # @type SG: Integer
        # @param CLB: 负载均衡实例数。
        # @type CLB: Integer
        # @param InstanceStatistics: 全量实例的绑定统计。
        # @type InstanceStatistics: Array
        # @param TotalCount: 所有资源的总计数（不包含被安全组引用数）。
        # @type TotalCount: Integer

        attr_accessor :SecurityGroupId, :CVM, :CDB, :ENI, :SG, :CLB, :InstanceStatistics, :TotalCount
        
        def initialize(securitygroupid=nil, cvm=nil, cdb=nil, eni=nil, sg=nil, clb=nil, instancestatistics=nil, totalcount=nil)
          @SecurityGroupId = securitygroupid
          @CVM = cvm
          @CDB = cdb
          @ENI = eni
          @SG = sg
          @CLB = clb
          @InstanceStatistics = instancestatistics
          @TotalCount = totalcount
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @CVM = params['CVM']
          @CDB = params['CDB']
          @ENI = params['ENI']
          @SG = params['SG']
          @CLB = params['CLB']
          unless params['InstanceStatistics'].nil?
            @InstanceStatistics = []
            params['InstanceStatistics'].each do |i|
              instancestatistic_tmp = InstanceStatistic.new
              instancestatistic_tmp.deserialize(i)
              @InstanceStatistics << instancestatistic_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 用户安全组配额限制。
      class SecurityGroupLimitSet < TencentCloud::Common::AbstractModel
        # @param SecurityGroupLimit: 每个项目每个地域可创建安全组数
        # @type SecurityGroupLimit: Integer
        # @param SecurityGroupPolicyLimit: 安全组下的最大规则数
        # @type SecurityGroupPolicyLimit: Integer
        # @param ReferedSecurityGroupLimit: 安全组下嵌套安全组规则数
        # @type ReferedSecurityGroupLimit: Integer
        # @param SecurityGroupInstanceLimit: 单安全组关联实例数
        # @type SecurityGroupInstanceLimit: Integer
        # @param InstanceSecurityGroupLimit: 实例关联安全组数
        # @type InstanceSecurityGroupLimit: Integer

        attr_accessor :SecurityGroupLimit, :SecurityGroupPolicyLimit, :ReferedSecurityGroupLimit, :SecurityGroupInstanceLimit, :InstanceSecurityGroupLimit
        
        def initialize(securitygrouplimit=nil, securitygrouppolicylimit=nil, referedsecuritygrouplimit=nil, securitygroupinstancelimit=nil, instancesecuritygrouplimit=nil)
          @SecurityGroupLimit = securitygrouplimit
          @SecurityGroupPolicyLimit = securitygrouppolicylimit
          @ReferedSecurityGroupLimit = referedsecuritygrouplimit
          @SecurityGroupInstanceLimit = securitygroupinstancelimit
          @InstanceSecurityGroupLimit = instancesecuritygrouplimit
        end

        def deserialize(params)
          @SecurityGroupLimit = params['SecurityGroupLimit']
          @SecurityGroupPolicyLimit = params['SecurityGroupPolicyLimit']
          @ReferedSecurityGroupLimit = params['ReferedSecurityGroupLimit']
          @SecurityGroupInstanceLimit = params['SecurityGroupInstanceLimit']
          @InstanceSecurityGroupLimit = params['InstanceSecurityGroupLimit']
        end
      end

      # 安全组规则对象
      class SecurityGroupPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyIndex: 安全组规则索引号，值会随着安全组规则的变更动态变化。使用PolicyIndex时，请先调用`DescribeSecurityGroupPolicies`获取到规则的PolicyIndex，并且结合返回值中的Version一起使用处理规则。
        # @type PolicyIndex: Integer
        # @param Protocol: 协议, 取值: TCP,UDP,ICMP,ICMPv6,ALL。
        # @type Protocol: String
        # @param Port: 端口(all, 离散port,  range)。
        # 说明：如果Protocol设置为ALL，则Port也需要设置为all。
        # @type Port: String
        # @param ServiceTemplate: 协议端口ID或者协议端口组ID。ServiceTemplate和Protocol+Port互斥。
        # @type ServiceTemplate: :class:`Tencentcloud::Vpc.v20170312.models.ServiceTemplateSpecification`
        # @param CidrBlock: 网段或IP(互斥)。
        # @type CidrBlock: String
        # @param Ipv6CidrBlock: 网段或IPv6(互斥)。
        # @type Ipv6CidrBlock: String
        # @param SecurityGroupId: 安全组实例ID，例如：sg-ohuuioma。
        # @type SecurityGroupId: String
        # @param AddressTemplate: IP地址ID或者ID地址组ID。
        # @type AddressTemplate: :class:`Tencentcloud::Vpc.v20170312.models.AddressTemplateSpecification`
        # @param Action: ACCEPT 或 DROP。
        # @type Action: String
        # @param PolicyDescription: 安全组规则描述。
        # @type PolicyDescription: String
        # @param ModifyTime: 安全组最近修改时间。
        # @type ModifyTime: String

        attr_accessor :PolicyIndex, :Protocol, :Port, :ServiceTemplate, :CidrBlock, :Ipv6CidrBlock, :SecurityGroupId, :AddressTemplate, :Action, :PolicyDescription, :ModifyTime
        
        def initialize(policyindex=nil, protocol=nil, port=nil, servicetemplate=nil, cidrblock=nil, ipv6cidrblock=nil, securitygroupid=nil, addresstemplate=nil, action=nil, policydescription=nil, modifytime=nil)
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
          @ModifyTime = modifytime
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
          @ModifyTime = params['ModifyTime']
        end
      end

      # 安全组规则集合
      class SecurityGroupPolicySet < TencentCloud::Common::AbstractModel
        # @param Version: 安全组规则当前版本。用户每次更新安全规则版本会自动加1，防止更新的路由规则已过期，不填不考虑冲突。
        # @type Version: String
        # @param Egress: 出站规则。
        # @type Egress: Array
        # @param Ingress: 入站规则。
        # @type Ingress: Array

        attr_accessor :Version, :Egress, :Ingress
        
        def initialize(version=nil, egress=nil, ingress=nil)
          @Version = version
          @Egress = egress
          @Ingress = ingress
        end

        def deserialize(params)
          @Version = params['Version']
          unless params['Egress'].nil?
            @Egress = []
            params['Egress'].each do |i|
              securitygrouppolicy_tmp = SecurityGroupPolicy.new
              securitygrouppolicy_tmp.deserialize(i)
              @Egress << securitygrouppolicy_tmp
            end
          end
          unless params['Ingress'].nil?
            @Ingress = []
            params['Ingress'].each do |i|
              securitygrouppolicy_tmp = SecurityGroupPolicy.new
              securitygrouppolicy_tmp.deserialize(i)
              @Ingress << securitygrouppolicy_tmp
            end
          end
        end
      end

      # SecurityPolicyDatabase策略
      class SecurityPolicyDatabase < TencentCloud::Common::AbstractModel
        # @param LocalCidrBlock: 本端网段
        # @type LocalCidrBlock: String
        # @param RemoteCidrBlock: 对端网段
        # @type RemoteCidrBlock: Array

        attr_accessor :LocalCidrBlock, :RemoteCidrBlock
        
        def initialize(localcidrblock=nil, remotecidrblock=nil)
          @LocalCidrBlock = localcidrblock
          @RemoteCidrBlock = remotecidrblock
        end

        def deserialize(params)
          @LocalCidrBlock = params['LocalCidrBlock']
          @RemoteCidrBlock = params['RemoteCidrBlock']
        end
      end

      # 协议端口模板
      class ServiceTemplate < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateId: 协议端口实例ID，例如：ppm-f5n1f8da。
        # @type ServiceTemplateId: String
        # @param ServiceTemplateName: 模板名称。
        # @type ServiceTemplateName: String
        # @param ServiceSet: 协议端口信息。
        # @type ServiceSet: Array
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param ServiceExtraSet: 带备注的协议端口信息。
        # @type ServiceExtraSet: Array

        attr_accessor :ServiceTemplateId, :ServiceTemplateName, :ServiceSet, :CreatedTime, :ServiceExtraSet
        
        def initialize(servicetemplateid=nil, servicetemplatename=nil, serviceset=nil, createdtime=nil, serviceextraset=nil)
          @ServiceTemplateId = servicetemplateid
          @ServiceTemplateName = servicetemplatename
          @ServiceSet = serviceset
          @CreatedTime = createdtime
          @ServiceExtraSet = serviceextraset
        end

        def deserialize(params)
          @ServiceTemplateId = params['ServiceTemplateId']
          @ServiceTemplateName = params['ServiceTemplateName']
          @ServiceSet = params['ServiceSet']
          @CreatedTime = params['CreatedTime']
          unless params['ServiceExtraSet'].nil?
            @ServiceExtraSet = []
            params['ServiceExtraSet'].each do |i|
              servicesinfo_tmp = ServicesInfo.new
              servicesinfo_tmp.deserialize(i)
              @ServiceExtraSet << servicesinfo_tmp
            end
          end
        end
      end

      # 协议端口模板集合
      class ServiceTemplateGroup < TencentCloud::Common::AbstractModel
        # @param ServiceTemplateGroupId: 协议端口模板集合实例ID，例如：ppmg-2klmrefu。
        # @type ServiceTemplateGroupId: String
        # @param ServiceTemplateGroupName: 协议端口模板集合名称。
        # @type ServiceTemplateGroupName: String
        # @param ServiceTemplateIdSet: 协议端口模板实例ID。
        # @type ServiceTemplateIdSet: Array
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param ServiceTemplateSet: 协议端口模板实例信息。
        # @type ServiceTemplateSet: Array

        attr_accessor :ServiceTemplateGroupId, :ServiceTemplateGroupName, :ServiceTemplateIdSet, :CreatedTime, :ServiceTemplateSet
        
        def initialize(servicetemplategroupid=nil, servicetemplategroupname=nil, servicetemplateidset=nil, createdtime=nil, servicetemplateset=nil)
          @ServiceTemplateGroupId = servicetemplategroupid
          @ServiceTemplateGroupName = servicetemplategroupname
          @ServiceTemplateIdSet = servicetemplateidset
          @CreatedTime = createdtime
          @ServiceTemplateSet = servicetemplateset
        end

        def deserialize(params)
          @ServiceTemplateGroupId = params['ServiceTemplateGroupId']
          @ServiceTemplateGroupName = params['ServiceTemplateGroupName']
          @ServiceTemplateIdSet = params['ServiceTemplateIdSet']
          @CreatedTime = params['CreatedTime']
          unless params['ServiceTemplateSet'].nil?
            @ServiceTemplateSet = []
            params['ServiceTemplateSet'].each do |i|
              servicetemplate_tmp = ServiceTemplate.new
              servicetemplate_tmp.deserialize(i)
              @ServiceTemplateSet << servicetemplate_tmp
            end
          end
        end
      end

      # 协议端口模板
      class ServiceTemplateSpecification < TencentCloud::Common::AbstractModel
        # @param ServiceId: 协议端口ID，例如：ppm-f5n1f8da。
        # @type ServiceId: String
        # @param ServiceGroupId: 协议端口组ID，例如：ppmg-f5n1f8da。
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

      # 协议端口模板信息
      class ServicesInfo < TencentCloud::Common::AbstractModel
        # @param Service: 协议端口。
        # @type Service: String
        # @param Description: 备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Service, :Description
        
        def initialize(service=nil, description=nil)
          @Service = service
          @Description = description
        end

        def deserialize(params)
          @Service = params['Service']
          @Description = params['Description']
        end
      end

      # SetCcnRegionBandwidthLimits请求参数结构体
      class SetCcnRegionBandwidthLimitsRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: CCN实例ID。形如：ccn-f49l6u0z。
        # @type CcnId: String
        # @param CcnRegionBandwidthLimits: 云联网（CCN）各地域出带宽上限。
        # @type CcnRegionBandwidthLimits: Array
        # @param SetDefaultLimitFlag: 是否恢复云联网地域出口/地域间带宽限速为默认值（1Gbps）。false表示不恢复；true表示恢复。恢复默认值后，限速实例将不在控制台展示。该参数默认为 false，不恢复。
        # @type SetDefaultLimitFlag: Boolean

        attr_accessor :CcnId, :CcnRegionBandwidthLimits, :SetDefaultLimitFlag
        
        def initialize(ccnid=nil, ccnregionbandwidthlimits=nil, setdefaultlimitflag=nil)
          @CcnId = ccnid
          @CcnRegionBandwidthLimits = ccnregionbandwidthlimits
          @SetDefaultLimitFlag = setdefaultlimitflag
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          unless params['CcnRegionBandwidthLimits'].nil?
            @CcnRegionBandwidthLimits = []
            params['CcnRegionBandwidthLimits'].each do |i|
              ccnregionbandwidthlimit_tmp = CcnRegionBandwidthLimit.new
              ccnregionbandwidthlimit_tmp.deserialize(i)
              @CcnRegionBandwidthLimits << ccnregionbandwidthlimit_tmp
            end
          end
          @SetDefaultLimitFlag = params['SetDefaultLimitFlag']
        end
      end

      # SetCcnRegionBandwidthLimits返回参数结构体
      class SetCcnRegionBandwidthLimitsResponse < TencentCloud::Common::AbstractModel
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

      # NAT的SNAT规则
      class SourceIpTranslationNatRule < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceType: 资源类型，目前包含SUBNET、NETWORKINTERFACE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param PrivateIpAddress: 源IP/网段
        # @type PrivateIpAddress: String
        # @param PublicIpAddresses: 弹性IP地址池
        # @type PublicIpAddresses: Array
        # @param Description: 描述
        # @type Description: String
        # @param NatGatewaySnatId: Snat规则ID
        # @type NatGatewaySnatId: String
        # @param NatGatewayId: NAT网关的ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatGatewayId: String
        # @param VpcId: 私有网络VPC的ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param CreatedTime: NAT网关SNAT规则创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String

        attr_accessor :ResourceId, :ResourceType, :PrivateIpAddress, :PublicIpAddresses, :Description, :NatGatewaySnatId, :NatGatewayId, :VpcId, :CreatedTime
        
        def initialize(resourceid=nil, resourcetype=nil, privateipaddress=nil, publicipaddresses=nil, description=nil, natgatewaysnatid=nil, natgatewayid=nil, vpcid=nil, createdtime=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @PrivateIpAddress = privateipaddress
          @PublicIpAddresses = publicipaddresses
          @Description = description
          @NatGatewaySnatId = natgatewaysnatid
          @NatGatewayId = natgatewayid
          @VpcId = vpcid
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PublicIpAddresses = params['PublicIpAddresses']
          @Description = params['Description']
          @NatGatewaySnatId = params['NatGatewaySnatId']
          @NatGatewayId = params['NatGatewayId']
          @VpcId = params['VpcId']
          @CreatedTime = params['CreatedTime']
        end
      end

      # DownloadVpnGatewaySslClientCert 使用
      class SslClientConfig < TencentCloud::Common::AbstractModel
        # @param SslVpnClientConfiguration: 客户端配置
        # @type SslVpnClientConfiguration: String
        # @param SslVpnRootCert: 更证书
        # @type SslVpnRootCert: String
        # @param SslVpnKey: 客户端密钥
        # @type SslVpnKey: String
        # @param SslVpnCert: 客户端证书
        # @type SslVpnCert: String

        attr_accessor :SslVpnClientConfiguration, :SslVpnRootCert, :SslVpnKey, :SslVpnCert
        
        def initialize(sslvpnclientconfiguration=nil, sslvpnrootcert=nil, sslvpnkey=nil, sslvpncert=nil)
          @SslVpnClientConfiguration = sslvpnclientconfiguration
          @SslVpnRootCert = sslvpnrootcert
          @SslVpnKey = sslvpnkey
          @SslVpnCert = sslvpncert
        end

        def deserialize(params)
          @SslVpnClientConfiguration = params['SslVpnClientConfiguration']
          @SslVpnRootCert = params['SslVpnRootCert']
          @SslVpnKey = params['SslVpnKey']
          @SslVpnCert = params['SslVpnCert']
        end
      end

      # SSL-VPN-CLIENT 出参
      class SslVpnClient < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param SslVpnServerId: SSL-VPN-SERVER 实例ID
        # @type SslVpnServerId: String
        # @param CertStatus: 证书状态.
        # 0:创建中
        # 1:正常
        # 2:已停用
        # 3.已过期
        # 4.创建出错
        # @type CertStatus: Integer
        # @param SslVpnClientId: SSL-VPN-CLIENT 实例ID
        # @type SslVpnClientId: String
        # @param CertBeginTime: 证书开始时间
        # @type CertBeginTime: String
        # @param CertEndTime: 证书到期时间
        # @type CertEndTime: String
        # @param Name: CLIENT NAME
        # @type Name: String
        # @param State: 创建CLIENT 状态。
        # 0 创建中
        # 1 创建出错
        # 2 更新中
        # 3 更新出错
        # 4 销毁中
        # 5 销毁出粗
        # 6 已连通
        # 7 未知
        # @type State: String

        attr_accessor :VpcId, :SslVpnServerId, :CertStatus, :SslVpnClientId, :CertBeginTime, :CertEndTime, :Name, :State
        
        def initialize(vpcid=nil, sslvpnserverid=nil, certstatus=nil, sslvpnclientid=nil, certbegintime=nil, certendtime=nil, name=nil, state=nil)
          @VpcId = vpcid
          @SslVpnServerId = sslvpnserverid
          @CertStatus = certstatus
          @SslVpnClientId = sslvpnclientid
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @Name = name
          @State = state
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SslVpnServerId = params['SslVpnServerId']
          @CertStatus = params['CertStatus']
          @SslVpnClientId = params['SslVpnClientId']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @Name = params['Name']
          @State = params['State']
        end
      end

      # SSL-VPN-SERVER 信息 SET
      class SslVpnSever < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SslVpnServerId: SSL-VPN-SERVER 实例ID。
        # @type SslVpnServerId: String
        # @param VpnGatewayId: VPN 实例ID。
        # @type VpnGatewayId: String
        # @param SslVpnServerName: SSL-VPN-SERVER name。
        # @type SslVpnServerName: String
        # @param LocalAddress: 本端地址段。
        # @type LocalAddress: Array
        # @param RemoteAddress: 客户端地址段。
        # @type RemoteAddress: String
        # @param MaxConnection: 客户端最大连接数。
        # @type MaxConnection: Integer
        # @param WanIp: SSL-VPN 网关公网IP。
        # @type WanIp: String
        # @param SslVpnProtocol: SSL VPN服务端监听协议
        # @type SslVpnProtocol: String
        # @param SslVpnPort: SSL VPN服务端监听协议端口
        # @type SslVpnPort: Integer
        # @param EncryptAlgorithm: 加密算法。
        # @type EncryptAlgorithm: String
        # @param IntegrityAlgorithm: 认证算法。
        # @type IntegrityAlgorithm: String
        # @param Compress: 是否支持压缩。
        # @type Compress: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param State: SSL-VPN-SERVER 创建状态。
        # 0 创建中
        # 1 创建出错
        # 2 更新中
        # 3 更新出错
        # 4 销毁中
        # 5 销毁出粗
        # 6 已连通
        # 7 未知
        # @type State: Integer
        # @param SsoEnabled: 是否开启SSO认证。1：开启  0： 不开启
        # @type SsoEnabled: Integer
        # @param EiamApplicationId: EIAM应用ID
        # @type EiamApplicationId: String
        # @param AccessPolicyEnabled: 是否开启策略控制。0：不开启 1： 开启
        # @type AccessPolicyEnabled: Integer
        # @param AccessPolicy: 策略信息
        # @type AccessPolicy: Array

        attr_accessor :VpcId, :SslVpnServerId, :VpnGatewayId, :SslVpnServerName, :LocalAddress, :RemoteAddress, :MaxConnection, :WanIp, :SslVpnProtocol, :SslVpnPort, :EncryptAlgorithm, :IntegrityAlgorithm, :Compress, :CreateTime, :State, :SsoEnabled, :EiamApplicationId, :AccessPolicyEnabled, :AccessPolicy
        
        def initialize(vpcid=nil, sslvpnserverid=nil, vpngatewayid=nil, sslvpnservername=nil, localaddress=nil, remoteaddress=nil, maxconnection=nil, wanip=nil, sslvpnprotocol=nil, sslvpnport=nil, encryptalgorithm=nil, integrityalgorithm=nil, compress=nil, createtime=nil, state=nil, ssoenabled=nil, eiamapplicationid=nil, accesspolicyenabled=nil, accesspolicy=nil)
          @VpcId = vpcid
          @SslVpnServerId = sslvpnserverid
          @VpnGatewayId = vpngatewayid
          @SslVpnServerName = sslvpnservername
          @LocalAddress = localaddress
          @RemoteAddress = remoteaddress
          @MaxConnection = maxconnection
          @WanIp = wanip
          @SslVpnProtocol = sslvpnprotocol
          @SslVpnPort = sslvpnport
          @EncryptAlgorithm = encryptalgorithm
          @IntegrityAlgorithm = integrityalgorithm
          @Compress = compress
          @CreateTime = createtime
          @State = state
          @SsoEnabled = ssoenabled
          @EiamApplicationId = eiamapplicationid
          @AccessPolicyEnabled = accesspolicyenabled
          @AccessPolicy = accesspolicy
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SslVpnServerId = params['SslVpnServerId']
          @VpnGatewayId = params['VpnGatewayId']
          @SslVpnServerName = params['SslVpnServerName']
          @LocalAddress = params['LocalAddress']
          @RemoteAddress = params['RemoteAddress']
          @MaxConnection = params['MaxConnection']
          @WanIp = params['WanIp']
          @SslVpnProtocol = params['SslVpnProtocol']
          @SslVpnPort = params['SslVpnPort']
          @EncryptAlgorithm = params['EncryptAlgorithm']
          @IntegrityAlgorithm = params['IntegrityAlgorithm']
          @Compress = params['Compress']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @SsoEnabled = params['SsoEnabled']
          @EiamApplicationId = params['EiamApplicationId']
          @AccessPolicyEnabled = params['AccessPolicyEnabled']
          unless params['AccessPolicy'].nil?
            @AccessPolicy = []
            params['AccessPolicy'].each do |i|
              accesspolicy_tmp = AccessPolicy.new
              accesspolicy_tmp.deserialize(i)
              @AccessPolicy << accesspolicy_tmp
            end
          end
        end
      end

      # 子网对象
      class Subnet < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`。
        # @type VpcId: String
        # @param SubnetId: 子网实例`ID`，例如：subnet-bthucmmy。
        # @type SubnetId: String
        # @param SubnetName: 子网名称。
        # @type SubnetName: String
        # @param CidrBlock: 子网的 `IPv4` `CIDR`。
        # @type CidrBlock: String
        # @param IsDefault: 是否默认子网。
        # @type IsDefault: Boolean
        # @param EnableBroadcast: 是否开启广播。
        # @type EnableBroadcast: Boolean
        # @param Zone: 可用区。
        # @type Zone: String
        # @param RouteTableId: 路由表实例ID，例如：rtb-l2h8d7c2。
        # @type RouteTableId: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param AvailableIpAddressCount: 可用`IPv4`数。
        # @type AvailableIpAddressCount: Integer
        # @param Ipv6CidrBlock: 子网的 `IPv6` `CIDR`。
        # @type Ipv6CidrBlock: String
        # @param NetworkAclId: 关联`ACL`ID
        # @type NetworkAclId: String
        # @param IsRemoteVpcSnat: 是否为 `SNAT` 地址池子网。
        # @type IsRemoteVpcSnat: Boolean
        # @param TotalIpAddressCount: 子网`IPv4`总数。
        # @type TotalIpAddressCount: Integer
        # @param TagSet: 标签键值对。
        # @type TagSet: Array
        # @param CdcId: CDC实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param IsCdcSubnet: 是否是CDC所属子网。0:否 1:是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCdcSubnet: Integer

        attr_accessor :VpcId, :SubnetId, :SubnetName, :CidrBlock, :IsDefault, :EnableBroadcast, :Zone, :RouteTableId, :CreatedTime, :AvailableIpAddressCount, :Ipv6CidrBlock, :NetworkAclId, :IsRemoteVpcSnat, :TotalIpAddressCount, :TagSet, :CdcId, :IsCdcSubnet
        
        def initialize(vpcid=nil, subnetid=nil, subnetname=nil, cidrblock=nil, isdefault=nil, enablebroadcast=nil, zone=nil, routetableid=nil, createdtime=nil, availableipaddresscount=nil, ipv6cidrblock=nil, networkaclid=nil, isremotevpcsnat=nil, totalipaddresscount=nil, tagset=nil, cdcid=nil, iscdcsubnet=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @IsDefault = isdefault
          @EnableBroadcast = enablebroadcast
          @Zone = zone
          @RouteTableId = routetableid
          @CreatedTime = createdtime
          @AvailableIpAddressCount = availableipaddresscount
          @Ipv6CidrBlock = ipv6cidrblock
          @NetworkAclId = networkaclid
          @IsRemoteVpcSnat = isremotevpcsnat
          @TotalIpAddressCount = totalipaddresscount
          @TagSet = tagset
          @CdcId = cdcid
          @IsCdcSubnet = iscdcsubnet
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @IsDefault = params['IsDefault']
          @EnableBroadcast = params['EnableBroadcast']
          @Zone = params['Zone']
          @RouteTableId = params['RouteTableId']
          @CreatedTime = params['CreatedTime']
          @AvailableIpAddressCount = params['AvailableIpAddressCount']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @NetworkAclId = params['NetworkAclId']
          @IsRemoteVpcSnat = params['IsRemoteVpcSnat']
          @TotalIpAddressCount = params['TotalIpAddressCount']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @CdcId = params['CdcId']
          @IsCdcSubnet = params['IsCdcSubnet']
        end
      end

      # 子网对象
      class SubnetInput < TencentCloud::Common::AbstractModel
        # @param CidrBlock: 子网的`CIDR`。
        # @type CidrBlock: String
        # @param SubnetName: 子网名称。
        # @type SubnetName: String
        # @param Zone: 可用区。形如：`ap-guangzhou-2`。
        # @type Zone: String
        # @param RouteTableId: 指定关联路由表，形如：`rtb-3ryrwzuu`。
        # @type RouteTableId: String

        attr_accessor :CidrBlock, :SubnetName, :Zone, :RouteTableId
        
        def initialize(cidrblock=nil, subnetname=nil, zone=nil, routetableid=nil)
          @CidrBlock = cidrblock
          @SubnetName = subnetname
          @Zone = zone
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @CidrBlock = params['CidrBlock']
          @SubnetName = params['SubnetName']
          @Zone = params['Zone']
          @RouteTableId = params['RouteTableId']
        end
      end

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 参数模板配额
      class TemplateLimit < TencentCloud::Common::AbstractModel
        # @param AddressTemplateMemberLimit: 参数模板IP地址成员配额。
        # @type AddressTemplateMemberLimit: Integer
        # @param AddressTemplateGroupMemberLimit: 参数模板IP地址组成员配额。
        # @type AddressTemplateGroupMemberLimit: Integer
        # @param ServiceTemplateMemberLimit: 参数模板I协议端口成员配额。
        # @type ServiceTemplateMemberLimit: Integer
        # @param ServiceTemplateGroupMemberLimit: 参数模板协议端口组成员配额。
        # @type ServiceTemplateGroupMemberLimit: Integer

        attr_accessor :AddressTemplateMemberLimit, :AddressTemplateGroupMemberLimit, :ServiceTemplateMemberLimit, :ServiceTemplateGroupMemberLimit
        
        def initialize(addresstemplatememberlimit=nil, addresstemplategroupmemberlimit=nil, servicetemplatememberlimit=nil, servicetemplategroupmemberlimit=nil)
          @AddressTemplateMemberLimit = addresstemplatememberlimit
          @AddressTemplateGroupMemberLimit = addresstemplategroupmemberlimit
          @ServiceTemplateMemberLimit = servicetemplatememberlimit
          @ServiceTemplateGroupMemberLimit = servicetemplategroupmemberlimit
        end

        def deserialize(params)
          @AddressTemplateMemberLimit = params['AddressTemplateMemberLimit']
          @AddressTemplateGroupMemberLimit = params['AddressTemplateGroupMemberLimit']
          @ServiceTemplateMemberLimit = params['ServiceTemplateMemberLimit']
          @ServiceTemplateGroupMemberLimit = params['ServiceTemplateGroupMemberLimit']
        end
      end

      # 流量包信息描述类型
      class TrafficPackage < TencentCloud::Common::AbstractModel
        # @param TrafficPackageId: 流量包唯一ID
        # @type TrafficPackageId: String
        # @param TrafficPackageName: 流量包名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrafficPackageName: String
        # @param TotalAmount: 流量包总量，单位GB
        # @type TotalAmount: Float
        # @param RemainingAmount: 流量包剩余量，单位GB
        # @type RemainingAmount: Float
        # @param Status: 流量包状态，可能的值有: AVAILABLE-可用状态， EXPIRED-已过期， EXHAUSTED-已用完， REFUNDED-已退还， DELETED-已删除
        # @type Status: String
        # @param CreatedTime: 流量包创建时间
        # @type CreatedTime: String
        # @param Deadline: 流量包截止时间
        # @type Deadline: String
        # @param UsedAmount: 已使用的流量，单位GB
        # @type UsedAmount: Float
        # @param TagSet: 流量包标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param DeductType: 区分闲时流量包与全时流量包
        # @type DeductType: String

        attr_accessor :TrafficPackageId, :TrafficPackageName, :TotalAmount, :RemainingAmount, :Status, :CreatedTime, :Deadline, :UsedAmount, :TagSet, :DeductType
        
        def initialize(trafficpackageid=nil, trafficpackagename=nil, totalamount=nil, remainingamount=nil, status=nil, createdtime=nil, deadline=nil, usedamount=nil, tagset=nil, deducttype=nil)
          @TrafficPackageId = trafficpackageid
          @TrafficPackageName = trafficpackagename
          @TotalAmount = totalamount
          @RemainingAmount = remainingamount
          @Status = status
          @CreatedTime = createdtime
          @Deadline = deadline
          @UsedAmount = usedamount
          @TagSet = tagset
          @DeductType = deducttype
        end

        def deserialize(params)
          @TrafficPackageId = params['TrafficPackageId']
          @TrafficPackageName = params['TrafficPackageName']
          @TotalAmount = params['TotalAmount']
          @RemainingAmount = params['RemainingAmount']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @Deadline = params['Deadline']
          @UsedAmount = params['UsedAmount']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @DeductType = params['DeductType']
        end
      end

      # TransformAddress请求参数结构体
      class TransformAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作有普通公网 IP 的实例 ID。实例 ID 形如：`ins-11112222`。可通过登录[控制台](https://console.cloud.tencent.com/cvm)查询，也可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/9389) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TransformAddress返回参数结构体
      class TransformAddressResponse < TencentCloud::Common::AbstractModel
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

      # UnassignIpv6Addresses请求参数结构体
      class UnassignIpv6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例`ID`，形如：`eni-m6dyj72l`。
        # @type NetworkInterfaceId: String
        # @param Ipv6Addresses: 指定的`IPv6`地址列表，单次最多指定10个。
        # @type Ipv6Addresses: Array

        attr_accessor :NetworkInterfaceId, :Ipv6Addresses
        
        def initialize(networkinterfaceid=nil, ipv6addresses=nil)
          @NetworkInterfaceId = networkinterfaceid
          @Ipv6Addresses = ipv6addresses
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
        end
      end

      # UnassignIpv6Addresses返回参数结构体
      class UnassignIpv6AddressesResponse < TencentCloud::Common::AbstractModel
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

      # UnassignIpv6CidrBlock请求参数结构体
      class UnassignIpv6CidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param Ipv6CidrBlock: `IPv6`网段。形如：`3402:4e00:20:1000::/56`
        # @type Ipv6CidrBlock: String

        attr_accessor :VpcId, :Ipv6CidrBlock
        
        def initialize(vpcid=nil, ipv6cidrblock=nil)
          @VpcId = vpcid
          @Ipv6CidrBlock = ipv6cidrblock
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
        end
      end

      # UnassignIpv6CidrBlock返回参数结构体
      class UnassignIpv6CidrBlockResponse < TencentCloud::Common::AbstractModel
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

      # UnassignIpv6SubnetCidrBlock请求参数结构体
      class UnassignIpv6SubnetCidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 子网所在私有网络`ID`。形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param Ipv6SubnetCidrBlocks: `IPv6` 子网段列表。
        # @type Ipv6SubnetCidrBlocks: Array

        attr_accessor :VpcId, :Ipv6SubnetCidrBlocks
        
        def initialize(vpcid=nil, ipv6subnetcidrblocks=nil)
          @VpcId = vpcid
          @Ipv6SubnetCidrBlocks = ipv6subnetcidrblocks
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          unless params['Ipv6SubnetCidrBlocks'].nil?
            @Ipv6SubnetCidrBlocks = []
            params['Ipv6SubnetCidrBlocks'].each do |i|
              ipv6subnetcidrblock_tmp = Ipv6SubnetCidrBlock.new
              ipv6subnetcidrblock_tmp.deserialize(i)
              @Ipv6SubnetCidrBlocks << ipv6subnetcidrblock_tmp
            end
          end
        end
      end

      # UnassignIpv6SubnetCidrBlock返回参数结构体
      class UnassignIpv6SubnetCidrBlockResponse < TencentCloud::Common::AbstractModel
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

      # UnassignPrivateIpAddresses请求参数结构体
      class UnassignPrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。
        # @type PrivateIpAddresses: Array
        # @param InstanceId: 网卡绑定的子机实例ID，该参数仅用于指定网卡退还IP并解绑子机的场景，如果不涉及解绑子机，请勿填写。
        # @type InstanceId: String

        attr_accessor :NetworkInterfaceId, :PrivateIpAddresses, :InstanceId
        
        def initialize(networkinterfaceid=nil, privateipaddresses=nil, instanceid=nil)
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddresses = privateipaddresses
          @InstanceId = instanceid
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
          @InstanceId = params['InstanceId']
        end
      end

      # UnassignPrivateIpAddresses返回参数结构体
      class UnassignPrivateIpAddressesResponse < TencentCloud::Common::AbstractModel
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

      # UnlockCcnBandwidths请求参数结构体
      class UnlockCcnBandwidthsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # UnlockCcnBandwidths返回参数结构体
      class UnlockCcnBandwidthsResponse < TencentCloud::Common::AbstractModel
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

      # UnlockCcns请求参数结构体
      class UnlockCcnsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # UnlockCcns返回参数结构体
      class UnlockCcnsResponse < TencentCloud::Common::AbstractModel
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

      # 私有网络(VPC)对象。
      class Vpc < TencentCloud::Common::AbstractModel
        # @param VpcName: `VPC`名称。
        # @type VpcName: String
        # @param VpcId: `VPC`实例`ID`，例如：vpc-azd4dt1c。
        # @type VpcId: String
        # @param CidrBlock: `VPC`的`IPv4` `CIDR`。
        # @type CidrBlock: String
        # @param IsDefault: 是否默认`VPC`。
        # @type IsDefault: Boolean
        # @param EnableMulticast: 是否开启组播。
        # @type EnableMulticast: Boolean
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param DnsServerSet: `DNS`列表。
        # @type DnsServerSet: Array
        # @param DomainName: `DHCP`域名选项值。
        # @type DomainName: String
        # @param DhcpOptionsId: `DHCP`选项集`ID`。
        # @type DhcpOptionsId: String
        # @param EnableDhcp: 是否开启`DHCP`。
        # @type EnableDhcp: Boolean
        # @param Ipv6CidrBlock: `VPC`的`IPv6` `CIDR`。
        # @type Ipv6CidrBlock: String
        # @param TagSet: 标签键值对
        # @type TagSet: Array
        # @param AssistantCidrSet: 辅助CIDR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantCidrSet: Array

        attr_accessor :VpcName, :VpcId, :CidrBlock, :IsDefault, :EnableMulticast, :CreatedTime, :DnsServerSet, :DomainName, :DhcpOptionsId, :EnableDhcp, :Ipv6CidrBlock, :TagSet, :AssistantCidrSet
        
        def initialize(vpcname=nil, vpcid=nil, cidrblock=nil, isdefault=nil, enablemulticast=nil, createdtime=nil, dnsserverset=nil, domainname=nil, dhcpoptionsid=nil, enabledhcp=nil, ipv6cidrblock=nil, tagset=nil, assistantcidrset=nil)
          @VpcName = vpcname
          @VpcId = vpcid
          @CidrBlock = cidrblock
          @IsDefault = isdefault
          @EnableMulticast = enablemulticast
          @CreatedTime = createdtime
          @DnsServerSet = dnsserverset
          @DomainName = domainname
          @DhcpOptionsId = dhcpoptionsid
          @EnableDhcp = enabledhcp
          @Ipv6CidrBlock = ipv6cidrblock
          @TagSet = tagset
          @AssistantCidrSet = assistantcidrset
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @CidrBlock = params['CidrBlock']
          @IsDefault = params['IsDefault']
          @EnableMulticast = params['EnableMulticast']
          @CreatedTime = params['CreatedTime']
          @DnsServerSet = params['DnsServerSet']
          @DomainName = params['DomainName']
          @DhcpOptionsId = params['DhcpOptionsId']
          @EnableDhcp = params['EnableDhcp']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          unless params['AssistantCidrSet'].nil?
            @AssistantCidrSet = []
            params['AssistantCidrSet'].each do |i|
              assistantcidr_tmp = AssistantCidr.new
              assistantcidr_tmp.deserialize(i)
              @AssistantCidrSet << assistantcidr_tmp
            end
          end
        end
      end

      # 终端节点服务的服务白名单对象详情。
      class VpcEndPointServiceUser < TencentCloud::Common::AbstractModel
        # @param Owner: AppId。
        # @type Owner: Integer
        # @param UserUin: Uin。
        # @type UserUin: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param EndPointServiceId: 终端节点服务ID。
        # @type EndPointServiceId: String

        attr_accessor :Owner, :UserUin, :Description, :CreateTime, :EndPointServiceId
        
        def initialize(owner=nil, useruin=nil, description=nil, createtime=nil, endpointserviceid=nil)
          @Owner = owner
          @UserUin = useruin
          @Description = description
          @CreateTime = createtime
          @EndPointServiceId = endpointserviceid
        end

        def deserialize(params)
          @Owner = params['Owner']
          @UserUin = params['UserUin']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @EndPointServiceId = params['EndPointServiceId']
        end
      end

      # VPC内网IPv6对象。
      class VpcIpv6Address < TencentCloud::Common::AbstractModel
        # @param Ipv6Address: `VPC`内`IPv6`地址。
        # @type Ipv6Address: String
        # @param CidrBlock: 所属子网 `IPv6` `CIDR`。
        # @type CidrBlock: String
        # @param Ipv6AddressType: `IPv6`类型。
        # @type Ipv6AddressType: String
        # @param CreatedTime: `IPv6`申请时间。
        # @type CreatedTime: String

        attr_accessor :Ipv6Address, :CidrBlock, :Ipv6AddressType, :CreatedTime
        
        def initialize(ipv6address=nil, cidrblock=nil, ipv6addresstype=nil, createdtime=nil)
          @Ipv6Address = ipv6address
          @CidrBlock = cidrblock
          @Ipv6AddressType = ipv6addresstype
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @Ipv6Address = params['Ipv6Address']
          @CidrBlock = params['CidrBlock']
          @Ipv6AddressType = params['Ipv6AddressType']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 私有网络配额
      class VpcLimit < TencentCloud::Common::AbstractModel
        # @param LimitType: 私有网络配额描述
        # @type LimitType: String
        # @param LimitValue: 私有网络配额值
        # @type LimitValue: Integer

        attr_accessor :LimitType, :LimitValue
        
        def initialize(limittype=nil, limitvalue=nil)
          @LimitType = limittype
          @LimitValue = limitvalue
        end

        def deserialize(params)
          @LimitType = params['LimitType']
          @LimitValue = params['LimitValue']
        end
      end

      # VPC内网IP对象。
      class VpcPrivateIpAddress < TencentCloud::Common::AbstractModel
        # @param PrivateIpAddress: `VPC`内网`IP`。
        # @type PrivateIpAddress: String
        # @param CidrBlock: 所属子网`CIDR`。
        # @type CidrBlock: String
        # @param PrivateIpAddressType: 内网`IP`类型。
        # @type PrivateIpAddressType: String
        # @param CreatedTime: `IP`申请时间。
        # @type CreatedTime: String

        attr_accessor :PrivateIpAddress, :CidrBlock, :PrivateIpAddressType, :CreatedTime
        
        def initialize(privateipaddress=nil, cidrblock=nil, privateipaddresstype=nil, createdtime=nil)
          @PrivateIpAddress = privateipaddress
          @CidrBlock = cidrblock
          @PrivateIpAddressType = privateipaddresstype
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @PrivateIpAddress = params['PrivateIpAddress']
          @CidrBlock = params['CidrBlock']
          @PrivateIpAddressType = params['PrivateIpAddressType']
          @CreatedTime = params['CreatedTime']
        end
      end

      # VPN通道对象。
      class VpnConnection < TencentCloud::Common::AbstractModel
        # @param VpnConnectionId: 通道实例ID。
        # @type VpnConnectionId: String
        # @param VpnConnectionName: 通道名称。
        # @type VpnConnectionName: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param CustomerGatewayId: 对端网关实例ID。
        # @type CustomerGatewayId: String
        # @param PreShareKey: 预共享密钥。
        # @type PreShareKey: String
        # @param VpnProto: 通道传输协议。
        # @type VpnProto: String
        # @param EncryptProto: 通道加密协议。
        # @type EncryptProto: String
        # @param RouteType: 路由类型。
        # @type RouteType: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param State: 通道的生产状态，PENDING：生产中，AVAILABLE：运行中，DELETING：删除中。
        # @type State: String
        # @param NetStatus: 通道连接状态，AVAILABLE：已连接。
        # @type NetStatus: String
        # @param SecurityPolicyDatabaseSet: SPD。
        # @type SecurityPolicyDatabaseSet: Array
        # @param IKEOptionsSpecification: IKE选项。
        # @type IKEOptionsSpecification: :class:`Tencentcloud::Vpc.v20170312.models.IKEOptionsSpecification`
        # @param IPSECOptionsSpecification: IPSEC选择。
        # @type IPSECOptionsSpecification: :class:`Tencentcloud::Vpc.v20170312.models.IPSECOptionsSpecification`
        # @param EnableHealthCheck: 是否支持健康状态探测
        # @type EnableHealthCheck: Boolean
        # @param HealthCheckLocalIp: 本端探测ip
        # @type HealthCheckLocalIp: String
        # @param HealthCheckRemoteIp: 对端探测ip
        # @type HealthCheckRemoteIp: String
        # @param HealthCheckStatus: 通道健康检查状态，AVAILABLE：正常，UNAVAILABLE：不正常。 未配置健康检查不返回该对象
        # @type HealthCheckStatus: String
        # @param DpdEnable: DPD探测开关。默认为0，表示关闭DPD探测。可选值：0（关闭），1（开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DpdEnable: Integer
        # @param DpdTimeout: DPD超时时间。即探测确认对端不存在需要的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DpdTimeout: String
        # @param DpdAction: DPD超时后的动作。默认为clear。dpdEnable为1（开启）时有效。可取值为clear（断开）和restart（重试）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DpdAction: String
        # @param TagSet: 标签键值对数组
        # @type TagSet: Array
        # @param NegotiationType: 协商类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NegotiationType: String

        attr_accessor :VpnConnectionId, :VpnConnectionName, :VpcId, :VpnGatewayId, :CustomerGatewayId, :PreShareKey, :VpnProto, :EncryptProto, :RouteType, :CreatedTime, :State, :NetStatus, :SecurityPolicyDatabaseSet, :IKEOptionsSpecification, :IPSECOptionsSpecification, :EnableHealthCheck, :HealthCheckLocalIp, :HealthCheckRemoteIp, :HealthCheckStatus, :DpdEnable, :DpdTimeout, :DpdAction, :TagSet, :NegotiationType
        
        def initialize(vpnconnectionid=nil, vpnconnectionname=nil, vpcid=nil, vpngatewayid=nil, customergatewayid=nil, presharekey=nil, vpnproto=nil, encryptproto=nil, routetype=nil, createdtime=nil, state=nil, netstatus=nil, securitypolicydatabaseset=nil, ikeoptionsspecification=nil, ipsecoptionsspecification=nil, enablehealthcheck=nil, healthchecklocalip=nil, healthcheckremoteip=nil, healthcheckstatus=nil, dpdenable=nil, dpdtimeout=nil, dpdaction=nil, tagset=nil, negotiationtype=nil)
          @VpnConnectionId = vpnconnectionid
          @VpnConnectionName = vpnconnectionname
          @VpcId = vpcid
          @VpnGatewayId = vpngatewayid
          @CustomerGatewayId = customergatewayid
          @PreShareKey = presharekey
          @VpnProto = vpnproto
          @EncryptProto = encryptproto
          @RouteType = routetype
          @CreatedTime = createdtime
          @State = state
          @NetStatus = netstatus
          @SecurityPolicyDatabaseSet = securitypolicydatabaseset
          @IKEOptionsSpecification = ikeoptionsspecification
          @IPSECOptionsSpecification = ipsecoptionsspecification
          @EnableHealthCheck = enablehealthcheck
          @HealthCheckLocalIp = healthchecklocalip
          @HealthCheckRemoteIp = healthcheckremoteip
          @HealthCheckStatus = healthcheckstatus
          @DpdEnable = dpdenable
          @DpdTimeout = dpdtimeout
          @DpdAction = dpdaction
          @TagSet = tagset
          @NegotiationType = negotiationtype
        end

        def deserialize(params)
          @VpnConnectionId = params['VpnConnectionId']
          @VpnConnectionName = params['VpnConnectionName']
          @VpcId = params['VpcId']
          @VpnGatewayId = params['VpnGatewayId']
          @CustomerGatewayId = params['CustomerGatewayId']
          @PreShareKey = params['PreShareKey']
          @VpnProto = params['VpnProto']
          @EncryptProto = params['EncryptProto']
          @RouteType = params['RouteType']
          @CreatedTime = params['CreatedTime']
          @State = params['State']
          @NetStatus = params['NetStatus']
          unless params['SecurityPolicyDatabaseSet'].nil?
            @SecurityPolicyDatabaseSet = []
            params['SecurityPolicyDatabaseSet'].each do |i|
              securitypolicydatabase_tmp = SecurityPolicyDatabase.new
              securitypolicydatabase_tmp.deserialize(i)
              @SecurityPolicyDatabaseSet << securitypolicydatabase_tmp
            end
          end
          unless params['IKEOptionsSpecification'].nil?
            @IKEOptionsSpecification = IKEOptionsSpecification.new
            @IKEOptionsSpecification.deserialize(params['IKEOptionsSpecification'])
          end
          unless params['IPSECOptionsSpecification'].nil?
            @IPSECOptionsSpecification = IPSECOptionsSpecification.new
            @IPSECOptionsSpecification.deserialize(params['IPSECOptionsSpecification'])
          end
          @EnableHealthCheck = params['EnableHealthCheck']
          @HealthCheckLocalIp = params['HealthCheckLocalIp']
          @HealthCheckRemoteIp = params['HealthCheckRemoteIp']
          @HealthCheckStatus = params['HealthCheckStatus']
          @DpdEnable = params['DpdEnable']
          @DpdTimeout = params['DpdTimeout']
          @DpdAction = params['DpdAction']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @NegotiationType = params['NegotiationType']
        end
      end

      # VPN网关对象。
      class VpnGateway < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: 网关实例ID。
        # @type VpnGatewayId: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param VpnGatewayName: 网关实例名称。
        # @type VpnGatewayName: String
        # @param Type: 网关实例类型：'IPSEC', 'SSL','CCN'。
        # @type Type: String
        # @param State: 网关实例状态， 'PENDING'：生产中，'DELETING'：删除中，'AVAILABLE'：运行中。
        # @type State: String
        # @param PublicIpAddress: 网关公网IP。
        # @type PublicIpAddress: String
        # @param RenewFlag: 网关续费类型：'NOTIFY_AND_MANUAL_RENEW'：手动续费，'NOTIFY_AND_AUTO_RENEW'：自动续费，'NOT_NOTIFY_AND_NOT_RENEW'：到期不续费。
        # @type RenewFlag: String
        # @param InstanceChargeType: 网关付费类型：POSTPAID_BY_HOUR：按小时后付费，PREPAID：包年包月预付费，
        # @type InstanceChargeType: String
        # @param InternetMaxBandwidthOut: 网关出带宽。
        # @type InternetMaxBandwidthOut: Integer
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param ExpiredTime: 预付费网关过期时间。
        # @type ExpiredTime: String
        # @param IsAddressBlocked: 公网IP是否被封堵。
        # @type IsAddressBlocked: Boolean
        # @param NewPurchasePlan: 计费模式变更，PREPAID_TO_POSTPAID：包年包月预付费到期转按小时后付费。
        # @type NewPurchasePlan: String
        # @param RestrictState: 网关计费装，PROTECTIVELY_ISOLATED：被安全隔离的实例，NORMAL：正常。
        # @type RestrictState: String
        # @param Zone: 可用区，如：ap-guangzhou-2
        # @type Zone: String
        # @param VpnGatewayQuotaSet: 网关带宽配额信息
        # @type VpnGatewayQuotaSet: Array
        # @param Version: 网关实例版本信息
        # @type Version: String
        # @param NetworkInstanceId: Type值为CCN时，该值表示云联网实例ID
        # @type NetworkInstanceId: String
        # @param CdcId: CDC 实例ID
        # @type CdcId: String
        # @param MaxConnection: SSL-VPN 客户端连接数。
        # @type MaxConnection: Integer

        attr_accessor :VpnGatewayId, :VpcId, :VpnGatewayName, :Type, :State, :PublicIpAddress, :RenewFlag, :InstanceChargeType, :InternetMaxBandwidthOut, :CreatedTime, :ExpiredTime, :IsAddressBlocked, :NewPurchasePlan, :RestrictState, :Zone, :VpnGatewayQuotaSet, :Version, :NetworkInstanceId, :CdcId, :MaxConnection
        
        def initialize(vpngatewayid=nil, vpcid=nil, vpngatewayname=nil, type=nil, state=nil, publicipaddress=nil, renewflag=nil, instancechargetype=nil, internetmaxbandwidthout=nil, createdtime=nil, expiredtime=nil, isaddressblocked=nil, newpurchaseplan=nil, restrictstate=nil, zone=nil, vpngatewayquotaset=nil, version=nil, networkinstanceid=nil, cdcid=nil, maxconnection=nil)
          @VpnGatewayId = vpngatewayid
          @VpcId = vpcid
          @VpnGatewayName = vpngatewayname
          @Type = type
          @State = state
          @PublicIpAddress = publicipaddress
          @RenewFlag = renewflag
          @InstanceChargeType = instancechargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @IsAddressBlocked = isaddressblocked
          @NewPurchasePlan = newpurchaseplan
          @RestrictState = restrictstate
          @Zone = zone
          @VpnGatewayQuotaSet = vpngatewayquotaset
          @Version = version
          @NetworkInstanceId = networkinstanceid
          @CdcId = cdcid
          @MaxConnection = maxconnection
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpcId = params['VpcId']
          @VpnGatewayName = params['VpnGatewayName']
          @Type = params['Type']
          @State = params['State']
          @PublicIpAddress = params['PublicIpAddress']
          @RenewFlag = params['RenewFlag']
          @InstanceChargeType = params['InstanceChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @IsAddressBlocked = params['IsAddressBlocked']
          @NewPurchasePlan = params['NewPurchasePlan']
          @RestrictState = params['RestrictState']
          @Zone = params['Zone']
          unless params['VpnGatewayQuotaSet'].nil?
            @VpnGatewayQuotaSet = []
            params['VpnGatewayQuotaSet'].each do |i|
              vpngatewayquota_tmp = VpnGatewayQuota.new
              vpngatewayquota_tmp.deserialize(i)
              @VpnGatewayQuotaSet << vpngatewayquota_tmp
            end
          end
          @Version = params['Version']
          @NetworkInstanceId = params['NetworkInstanceId']
          @CdcId = params['CdcId']
          @MaxConnection = params['MaxConnection']
        end
      end

      # VPN网关配额对象
      class VpnGatewayQuota < TencentCloud::Common::AbstractModel
        # @param Bandwidth: 带宽配额
        # @type Bandwidth: Integer
        # @param Cname: 配额中文名称
        # @type Cname: String
        # @param Name: 配额英文名称
        # @type Name: String

        attr_accessor :Bandwidth, :Cname, :Name
        
        def initialize(bandwidth=nil, cname=nil, name=nil)
          @Bandwidth = bandwidth
          @Cname = cname
          @Name = name
        end

        def deserialize(params)
          @Bandwidth = params['Bandwidth']
          @Cname = params['Cname']
          @Name = params['Name']
        end
      end

      # Vpn网关目的路由
      class VpnGatewayRoute < TencentCloud::Common::AbstractModel
        # @param DestinationCidrBlock: 目的端IDC网段
        # @type DestinationCidrBlock: String
        # @param InstanceType: 下一跳类型（关联实例类型）可选值:"VPNCONN"(VPN通道), "CCN"(CCN实例)
        # @type InstanceType: String
        # @param InstanceId: 下一跳实例ID
        # @type InstanceId: String
        # @param Priority: 优先级, 可选值: 0, 100
        # @type Priority: Integer
        # @param Status: 启用状态, 可选值: "ENABLE"(启用), "DISABLE"(禁用)
        # @type Status: String
        # @param RouteId: 路由条目ID
        # @type RouteId: String
        # @param Type: 路由类型, 可选值: "VPC"(VPC路由), "CCN"(云联网传播路由), "Static"(静态路由), "BGP"(BGP路由)
        # @type Type: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :DestinationCidrBlock, :InstanceType, :InstanceId, :Priority, :Status, :RouteId, :Type, :CreateTime, :UpdateTime
        
        def initialize(destinationcidrblock=nil, instancetype=nil, instanceid=nil, priority=nil, status=nil, routeid=nil, type=nil, createtime=nil, updatetime=nil)
          @DestinationCidrBlock = destinationcidrblock
          @InstanceType = instancetype
          @InstanceId = instanceid
          @Priority = priority
          @Status = status
          @RouteId = routeid
          @Type = type
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @Priority = params['Priority']
          @Status = params['Status']
          @RouteId = params['RouteId']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 修改VPN状态参数
      class VpnGatewayRouteModify < TencentCloud::Common::AbstractModel
        # @param RouteId: Vpn网关路由ID
        # @type RouteId: String
        # @param Status: Vpn网关状态, ENABEL 启用, DISABLE禁用
        # @type Status: String

        attr_accessor :RouteId, :Status
        
        def initialize(routeid=nil, status=nil)
          @RouteId = routeid
          @Status = status
        end

        def deserialize(params)
          @RouteId = params['RouteId']
          @Status = params['Status']
        end
      end

      # VPN网关云联网路由信息
      class VpngwCcnRoutes < TencentCloud::Common::AbstractModel
        # @param RouteId: 路由信息ID
        # @type RouteId: String
        # @param Status: 路由信息是否启用
        # ENABLE：启用该路由
        # DISABLE：不启用该路由
        # @type Status: String

        attr_accessor :RouteId, :Status
        
        def initialize(routeid=nil, status=nil)
          @RouteId = routeid
          @Status = status
        end

        def deserialize(params)
          @RouteId = params['RouteId']
          @Status = params['Status']
        end
      end

      # WithdrawNotifyRoutes请求参数结构体
      class WithdrawNotifyRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param RouteItemIds: 路由策略唯一ID。
        # @type RouteItemIds: Array

        attr_accessor :RouteTableId, :RouteItemIds
        
        def initialize(routetableid=nil, routeitemids=nil)
          @RouteTableId = routetableid
          @RouteItemIds = routeitemids
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteItemIds = params['RouteItemIds']
        end
      end

      # WithdrawNotifyRoutes返回参数结构体
      class WithdrawNotifyRoutesResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

