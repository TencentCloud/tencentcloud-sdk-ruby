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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceIp: String
        # @param TargetIp: 访问目的
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetIp: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Strategy: 策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Strategy: Integer
        # @param Detail: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: String
        # @param Count: 命中次数
        # @type Count: Integer
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param LogId: 告警规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: String

        attr_accessor :Id, :SourceIp, :TargetIp, :Protocol, :Port, :Strategy, :Detail, :Count, :OrderIndex, :LogId
        
        def initialize(id=nil, sourceip=nil, targetip=nil, protocol=nil, port=nil, strategy=nil, detail=nil, count=nil, orderindex=nil, logid=nil)
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
        end
      end

      # AddAcRule请求参数结构体
      class AddAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param OrderIndex: -1表示优先级最低，1表示优先级最高
        # @type OrderIndex: String
        # @param RuleAction: 访问控制策略中设置的流量通过云防火墙的方式。取值：
        # accept：放行
        # drop：拒绝
        # log：观察
        # @type RuleAction: String
        # @param Direction: 访问控制策略的流量方向。取值：
        # in：外对内流量访问控制
        # out：内对外流量访问控制
        # @type Direction: String
        # @param Description: 访问控制策略的描述信息
        # @type Description: String
        # @param SourceType: 访问控制策略中的源地址类型。取值：
        # net：源IP或网段（IP或者CIDR）
        # location：源区域
        # template：云防火墙地址模板
        # instance：实例id
        # vendor：云厂商
        # @type SourceType: String
        # @param SourceContent: 访问控制策略中的源地址。取值：
        # 当SourceType为net时，SourceContent为源IP地址或者CIDR地址。
        # 例如：1.1.1.0/24

        # 当SourceType为template时，SourceContent为源地址模板id。

        # 当SourceType为location时，SourceContent为源区域。
        # 例如["BJ11", "ZB"]

        # 当SourceType为instance时，SourceContent为该实例id对应的公网ip。
        # 例如ins-xxxxx

        # 当SourceType为vendor时，SourceContent为所选择厂商的公网ip列表。
        # 例如：aws,huawei,tencent,aliyun,azure,all代表以上五个
        # @type SourceContent: String
        # @param DestType: 访问控制策略中的目的地址类型。取值：
        # net：目的IP或者网段（IP或者CIDR）
        # location：源区域
        # template：云防火墙地址模板
        # instance：实例id
        # vendor：云厂商
        # domain: 域名或者ip
        # @type DestType: String
        # @param DestContent: 访问控制策略中的目的地址。取值：
        # 当DestType为net时，DestContent为源IP地址或者CIDR地址。
        # 例如：1.1.1.0/24

        # 当DestType为template时，DestContent为源地址模板id。

        # 当DestType为location时，DestContent为源区域。
        # 例如["BJ11", "ZB"]

        # 当DestType为instance时，DestContent为该实例id对应的公网ip。
        # 例如ins-xxxxx

        # 当DestType为domain时，DestContent为该实例id对应的域名规则。
        # 例如*.qq.com

        # 当DestType为vendor时，DestContent为所选择厂商的公网ip列表。
        # 例如：aws,huawei,tencent,aliyun,azure,all代表以上五个
        # @type DestContent: String
        # @param Port: 访问控制策略的端口。取值：
        # -1/-1：全部端口
        # 80,443：80或者443
        # @type Port: String
        # @param Protocol: 访问控制策略中流量访问的协议类型。取值：TCP，目前互联网边界规则只能支持TCP，不传参数默认就是TCP
        # @type Protocol: String
        # @param ApplicationName: 七层协议，取值：
        # HTTP/HTTPS
        # TLS/SSL
        # @type ApplicationName: String
        # @param Enable: 是否启用规则，默认为启用，取值：
        # true为启用，false为不启用
        # @type Enable: String

        attr_accessor :OrderIndex, :RuleAction, :Direction, :Description, :SourceType, :SourceContent, :DestType, :DestContent, :Port, :Protocol, :ApplicationName, :Enable
        
        def initialize(orderindex=nil, ruleaction=nil, direction=nil, description=nil, sourcetype=nil, sourcecontent=nil, desttype=nil, destcontent=nil, port=nil, protocol=nil, applicationname=nil, enable=nil)
          @OrderIndex = orderindex
          @RuleAction = ruleaction
          @Direction = direction
          @Description = description
          @SourceType = sourcetype
          @SourceContent = sourcecontent
          @DestType = desttype
          @DestContent = destcontent
          @Port = port
          @Protocol = protocol
          @ApplicationName = applicationname
          @Enable = enable
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @RuleAction = params['RuleAction']
          @Direction = params['Direction']
          @Description = params['Description']
          @SourceType = params['SourceType']
          @SourceContent = params['SourceContent']
          @DestType = params['DestType']
          @DestContent = params['DestContent']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @ApplicationName = params['ApplicationName']
          @Enable = params['Enable']
        end
      end

      # AddAcRule返回参数结构体
      class AddAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleUuid: 创建成功后返回新策略的uuid
        # @type RuleUuid: Integer
        # @param ReturnCode: 0代表成功，-1代表失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: success代表成功，failed代表失败
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # AddEnterpriseSecurityGroupRules请求参数结构体
      class AddEnterpriseSecurityGroupRulesRequest < TencentCloud::Common::AbstractModel
        # @param Data: 创建规则数据
        # @type Data: Array
        # @param Type: 添加类型，0：添加到最后，1：添加到最前；2：中间插入；默认0添加到最后
        # @type Type: Integer
        # @param ClientToken: 保证请求幂等性。从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符，且不能超过64个字符。
        # @type ClientToken: String
        # @param IsDelay: 是否延迟下发，1则延迟下发，否则立即下发
        # @type IsDelay: Integer

        attr_accessor :Data, :Type, :ClientToken, :IsDelay
        
        def initialize(data=nil, type=nil, clienttoken=nil, isdelay=nil)
          @Data = data
          @Type = type
          @ClientToken = clienttoken
          @IsDelay = isdelay
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
        end
      end

      # AddEnterpriseSecurityGroupRules返回参数结构体
      class AddEnterpriseSecurityGroupRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：添加成功，非0：添加失败
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Type: 实例类型，3是cvm实例,4是clb实例,5是eni实例,6是云数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param PublicIp: 公网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param Ip: 内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param SecurityGroupCount: 关联安全组数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupCount: Integer

        attr_accessor :InstanceId, :InstanceName, :Type, :VpcId, :VpcName, :PublicIp, :Ip, :SecurityGroupCount
        
        def initialize(instanceid=nil, instancename=nil, type=nil, vpcid=nil, vpcname=nil, publicip=nil, ip=nil, securitygroupcount=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Type = type
          @VpcId = vpcid
          @VpcName = vpcname
          @PublicIp = publicip
          @Ip = ip
          @SecurityGroupCount = securitygroupcount
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :Name, :Width, :Mode, :NewModeItems, :NatGwList, :Zone, :ZoneBak, :CrossAZone
        
        def initialize(name=nil, width=nil, mode=nil, newmodeitems=nil, natgwlist=nil, zone=nil, zonebak=nil, crossazone=nil)
          @Name = name
          @Width = width
          @Mode = mode
          @NewModeItems = newmodeitems
          @NatGwList = natgwlist
          @Zone = zone
          @ZoneBak = zonebak
          @CrossAZone = crossazone
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
        end
      end

      # CreateNatFwInstance返回参数结构体
      class CreateNatFwInstanceResponse < TencentCloud::Common::AbstractModel
        # @param CfwInsId: 防火墙实例id
        # @type CfwInsId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :Name, :Width, :Mode, :NewModeItems, :NatGwList, :Zone, :ZoneBak, :CrossAZone, :IsCreateDomain, :Domain
        
        def initialize(name=nil, width=nil, mode=nil, newmodeitems=nil, natgwlist=nil, zone=nil, zonebak=nil, crossazone=nil, iscreatedomain=nil, domain=nil)
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
        end
      end

      # CreateNatFwInstanceWithDomain返回参数结构体
      class CreateNatFwInstanceWithDomainResponse < TencentCloud::Common::AbstractModel
        # @param CfwInsId: nat实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfwInsId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Status: 状态值 0: 修改成功, !0: 修改失败
        # @type Status: Integer
        # @param Info: 删除了几条访问控制规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteVpcInstance请求参数结构体
      class DeleteVpcInstanceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteVpcInstance返回参数结构体
      class DeleteVpcInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Ip: ip查询条件
        # @type Ip: String
        # @param Zone: 地域
        # @type Zone: String
        # @param Direction: 方向
        # @type Direction: String
        # @param Source: 来源
        # @type Source: String
        # @param EdgeId: vpc间防火墙开关边id
        # @type EdgeId: String
        # @param LogSource: 日志来源 move：vpc间防火墙
        # @type LogSource: String

        attr_accessor :StartTime, :EndTime, :Ip, :Zone, :Direction, :Source, :EdgeId, :LogSource
        
        def initialize(starttime=nil, endtime=nil, ip=nil, zone=nil, direction=nil, source=nil, edgeid=nil, logsource=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Ip = ip
          @Zone = zone
          @Direction = direction
          @Source = source
          @EdgeId = edgeid
          @LogSource = logsource
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Ip = params['Ip']
          @Zone = params['Zone']
          @Direction = params['Direction']
          @Source = params['Source']
          @EdgeId = params['EdgeId']
          @LogSource = params['LogSource']
        end
      end

      # DescribeBlockByIpTimesList返回参数结构体
      class DescribeBlockByIpTimesListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              ipstatic_tmp = IpStatic.new
              ipstatic_tmp.deserialize(i)
              @Data << ipstatic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockStaticList请求参数结构体
      class DescribeBlockStaticListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 列表类型，只能是下面三种之一：port、address、ip
        # @type QueryType: String
        # @param Top: top数
        # @type Top: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :StartTime, :EndTime, :QueryType, :Top, :SearchValue
        
        def initialize(starttime=nil, endtime=nil, querytype=nil, top=nil, searchvalue=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @Top = top
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @Top = params['Top']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeBlockStaticList返回参数结构体
      class DescribeBlockStaticListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
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
              staticinfo_tmp = StaticInfo.new
              staticinfo_tmp.deserialize(i)
              @Data << staticinfo_tmp
            end
          end
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ServiceTemplateId: 端口协议类型参数模板id；协议端口模板id；与Protocol,Port互斥
        # @type ServiceTemplateId: String

        attr_accessor :PageNo, :PageSize, :SourceContent, :DestContent, :Description, :RuleAction, :Enable, :Port, :Protocol, :ServiceTemplateId
        
        def initialize(pageno=nil, pagesize=nil, sourcecontent=nil, destcontent=nil, description=nil, ruleaction=nil, enable=nil, port=nil, protocol=nil, servicetemplateid=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param StatusList: ip状态信息
        # @type StatusList: Array
        # @param ReturnCode: 状态码
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeNatFwInfoCount请求参数结构体
      class DescribeNatFwInfoCountRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeNatFwInfoCount返回参数结构体
      class DescribeNatFwInfoCountResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 返回参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param NatFwInsCount: 当前租户的nat实例个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatFwInsCount: Integer
        # @param SubnetCount: 当前租户接入子网个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetCount: Integer
        # @param OpenSwitchCount: 打开开关个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenSwitchCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatinsLst: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatinsLst: Array
        # @param Total: nat 防火墙个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcDnsSwitchLst: Array
        # @param ReturnMsg: 返回参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param Total: 开关总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param UnResourceNum: 未分类实例数量
        # @type UnResourceNum: Integer
        # @param ReturnMsg: 接口返回消息
        # @type ReturnMsg: String
        # @param ReturnCode: 返回码；0为请求成功
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :UnResourceNum, :ReturnMsg, :ReturnCode, :RequestId
        
        def initialize(data=nil, unresourcenum=nil, returnmsg=nil, returncode=nil, requestid=nil)
          @Data = data
          @UnResourceNum = unresourcenum
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @UnResourceNum = params['UnResourceNum']
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceGroup请求参数结构体
      class DescribeResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param QueryType: 查询类型 网络结构 vpc，业务识别- resource ，资源标签-tag
        # @type QueryType: String
        # @param GroupId: 资产组id  全部传0
        # @type GroupId: String

        attr_accessor :QueryType, :GroupId
        
        def initialize(querytype=nil, groupid=nil)
          @QueryType = querytype
          @GroupId = groupid
        end

        def deserialize(params)
          @QueryType = params['QueryType']
          @GroupId = params['GroupId']
        end
      end

      # DescribeResourceGroup返回参数结构体
      class DescribeResourceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回树形结构
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllTotal: Integer
        # @param StrategyNum: 阻断策略规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyNum: Integer
        # @param StartRuleNum: 启用规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRuleNum: Integer
        # @param StopRuleNum: 停用规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopRuleNum: Integer
        # @param RemainingNum: 剩余配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainingNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param FuzzySearch: 模糊查询
        # @type FuzzySearch: String
        # @param InsType: 资产类型 1公网 2内网
        # @type InsType: String
        # @param ChooseType: ChooseType为1，查询已经分组的资产；ChooseType不为1查询没有分组的资产
        # @type ChooseType: String
        # @param Zone: 地域
        # @type Zone: String
        # @param Limit: 查询单页的最大值；eg：10；则最多返回10条结果
        # @type Limit: Integer
        # @param Offset: 查询结果的偏移量
        # @type Offset: Integer

        attr_accessor :FuzzySearch, :InsType, :ChooseType, :Zone, :Limit, :Offset
        
        def initialize(fuzzysearch=nil, instype=nil, choosetype=nil, zone=nil, limit=nil, offset=nil)
          @FuzzySearch = fuzzysearch
          @InsType = instype
          @ChooseType = choosetype
          @Zone = zone
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @FuzzySearch = params['FuzzySearch']
          @InsType = params['InsType']
          @ChooseType = params['ChooseType']
          @Zone = params['Zone']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSourceAsset返回参数结构体
      class DescribeSourceAssetResponse < TencentCloud::Common::AbstractModel
        # @param ZoneList: 地域集合
        # @type ZoneList: Array
        # @param Data: 数据
        # @type Data: Array
        # @param Total: 返回数据总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneList, :Data, :Total, :RequestId
        
        def initialize(zonelist=nil, data=nil, total=nil, requestid=nil)
          @ZoneList = zonelist
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              assetzone_tmp = AssetZone.new
              assetzone_tmp.deserialize(i)
              @ZoneList << assetzone_tmp
            end
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Data << instanceinfo_tmp
            end
          end
          @Total = params['Total']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnNum: Integer
        # @param OffNum: 关闭个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型 1 告警 2阻断
        # @type QueryType: String
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :StartTime, :EndTime, :QueryType, :SearchValue
        
        def initialize(starttime=nil, endtime=nil, querytype=nil, searchvalue=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTLogInfo返回参数结构体
      class DescribeTLogInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.TLogInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型 1 告警 2阻断
        # @type QueryType: String
        # @param Top: top数
        # @type Top: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :StartTime, :EndTime, :QueryType, :Top, :SearchValue
        
        def initialize(starttime=nil, endtime=nil, querytype=nil, top=nil, searchvalue=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @Top = top
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @Top = params['Top']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTLogIpList返回参数结构体
      class DescribeTLogIpListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据集合
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.UnHandleEvent`
        # @param ReturnCode: 错误码，0成功 非0错误
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息 success成功
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeVpcRuleOverview请求参数结构体
      class DescribeVpcRuleOverviewRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: EdgeId值两个vpc间的边id  不是必填项可以为空，就是所有vpc间的访问控制规则
        # @type EdgeId: String

        attr_accessor :EdgeId
        
        def initialize(edgeid=nil)
          @EdgeId = edgeid
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
        end
      end

      # DescribeVpcRuleOverview返回参数结构体
      class DescribeVpcRuleOverviewResponse < TencentCloud::Common::AbstractModel
        # @param StrategyNum: 阻断策略规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyNum: Integer
        # @param StartRuleNum: 启用规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRuleNum: Integer
        # @param Total: 规则总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategyNum, :StartRuleNum, :Total, :RequestId
        
        def initialize(strategynum=nil, startrulenum=nil, total=nil, requestid=nil)
          @StrategyNum = strategynum
          @StartRuleNum = startrulenum
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @StrategyNum = params['StrategyNum']
          @StartRuleNum = params['StartRuleNum']
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

      # ExpandCfwVertical请求参数结构体
      class ExpandCfwVerticalRequest < TencentCloud::Common::AbstractModel
        # @param FwType: nat：nat防火墙，ew：东西向防火墙
        # @type FwType: String
        # @param Width: 带宽值
        # @type Width: Integer
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String

        attr_accessor :FwType, :Width, :CfwInstance
        
        def initialize(fwtype=nil, width=nil, cfwinstance=nil)
          @FwType = fwtype
          @Width = width
          @CfwInstance = cfwinstance
        end

        def deserialize(params)
          @FwType = params['FwType']
          @Width = params['Width']
          @CfwInstance = params['CfwInstance']
        end
      end

      # ExpandCfwVertical返回参数结构体
      class ExpandCfwVerticalResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
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

      # // InstanceInfo 实例详情结果
      # type InstanceInfo struct {
      # 	AppID        string `json:"AppId" gorm:"column:appid"`
      # 	Region       string `json:"Region" gorm:"column:region"`
      # 	VPCID        string `json:"VpcId" gorm:"column:vpc_id"`
      # 	SubNetID     string `json:"SubnetId" gorm:"column:subnet_id"`
      # 	InstanceID   string `json:"InstanceId" gorm:"column:instance_id"`
      # 	InstanceName string `json:"InstanceName" gorm:"column:instance_name"`
      # 	//InsType common.CVM 3是cvm实例,4是clb实例,5是eni实例,6是mysql,7是redis,8是NAT,9是VPN,10是ES,11是MARIADB,12是KAFKA
      # 	InsType   int    `json:"InsType" gorm:"column:instance_type"`
      # 	PublicIP  string `json:"PublicIp" gorm:"column:public_ip"`
      # 	PrivateIP string `json:"PrivateIp" gorm:"column:ip"`

      # 	//规则下发无需管，前端展示用
      # 	PortNum          string `json:"PortNum" gorm:"column:port_num"`
      # 	LeakNum          string `json:"LeakNum" gorm:"column:leak_num"`
      # 	ResourceGroupNum int    `json:"ResourceGroupNum"`
      # 	VPCName          string `json:"VPCName" gorm:"column:VPCName"`
      # }
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param AppId: appid信息
        # @type AppId: String
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: vpcid信息
        # @type VpcId: String
        # @param VPCName: vpc名称
        # @type VPCName: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param InstanceId: 资产id
        # @type InstanceId: String
        # @param InstanceName: 资产名
        # @type InstanceName: String
        # @param InsType: 资产类型
        #  3是cvm实例,4是clb实例,5是eni实例,6是mysql,7是redis,8是NAT,9是VPN,10是ES,11是MARIADB,12是KAFKA 13 NATFW
        # @type InsType: Integer
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param PrivateIp: 内网ip
        # @type PrivateIp: String
        # @param PortNum: 端口数
        # @type PortNum: String
        # @param LeakNum: 漏洞数
        # @type LeakNum: String
        # @param InsSource: 1，公网 2内网
        # @type InsSource: String
        # @param ResourcePath: [a,b]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourcePath: Array

        attr_accessor :AppId, :Region, :VpcId, :VPCName, :SubnetId, :InstanceId, :InstanceName, :InsType, :PublicIp, :PrivateIp, :PortNum, :LeakNum, :InsSource, :ResourcePath
        
        def initialize(appid=nil, region=nil, vpcid=nil, vpcname=nil, subnetid=nil, instanceid=nil, instancename=nil, instype=nil, publicip=nil, privateip=nil, portnum=nil, leaknum=nil, inssource=nil, resourcepath=nil)
          @AppId = appid
          @Region = region
          @VpcId = vpcid
          @VPCName = vpcname
          @SubnetId = subnetid
          @InstanceId = instanceid
          @InstanceName = instancename
          @InsType = instype
          @PublicIp = publicip
          @PrivateIp = privateip
          @PortNum = portnum
          @LeakNum = leaknum
          @InsSource = inssource
          @ResourcePath = resourcepath
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VPCName = params['VPCName']
          @SubnetId = params['SubnetId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InsType = params['InsType']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @PortNum = params['PortNum']
          @LeakNum = params['LeakNum']
          @InsSource = params['InsSource']
          @ResourcePath = params['ResourcePath']
        end
      end

      # 黑白名单IOC列表
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyAllVPCSwitchStatus请求参数结构体
      class ModifyAllVPCSwitchStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态，0：关闭，1：开启
        # @type Status: Integer
        # @param FireWallVpcIds: 选中的防火墙开关Id
        # @type FireWallVpcIds: Array

        attr_accessor :Status, :FireWallVpcIds
        
        def initialize(status=nil, firewallvpcids=nil)
          @Status = status
          @FireWallVpcIds = firewallvpcids
        end

        def deserialize(params)
          @Status = params['Status']
          @FireWallVpcIds = params['FireWallVpcIds']
        end
      end

      # ModifyAllVPCSwitchStatus返回参数结构体
      class ModifyAllVPCSwitchStatusResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnCode: Integer
        # @param Status: 状态值 0：成功，1 执行扫描中,其他：失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyBlockIgnoreList请求参数结构体
      class ModifyBlockIgnoreListRequest < TencentCloud::Common::AbstractModel
        # @param RuleType: 1拦截列表 2 忽略列表
        # @type RuleType: Integer
        # @param IOC: IP、Domain二选一，不能同时为空
        # @type IOC: Array
        # @param IocAction: 可选值：delete（删除）、edit（编辑）、add（添加）  其他值无效
        # @type IocAction: String
        # @param StartTime: 时间格式：yyyy-MM-dd HH:mm:ss，IocAction 为edit或add时必填
        # @type StartTime: String
        # @param EndTime: 时间格式：yyyy-MM-dd HH:mm:ss，IocAction 为edit或add时必填
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyBlockTop请求参数结构体
      class ModifyBlockTopRequest < TencentCloud::Common::AbstractModel
        # @param UniqueId: 记录id
        # @type UniqueId: String
        # @param OpeType: 操作类型 1 置顶 0取消
        # @type OpeType: String

        attr_accessor :UniqueId, :OpeType
        
        def initialize(uniqueid=nil, opetype=nil)
          @UniqueId = uniqueid
          @OpeType = opetype
        end

        def deserialize(params)
          @UniqueId = params['UniqueId']
          @OpeType = params['OpeType']
        end
      end

      # ModifyBlockTop返回参数结构体
      class ModifyBlockTopResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
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

        attr_accessor :Mode, :CfwInstance, :NatGwList, :VpcList
        
        def initialize(mode=nil, cfwinstance=nil, natgwlist=nil, vpclist=nil)
          @Mode = mode
          @CfwInstance = cfwinstance
          @NatGwList = natgwlist
          @VpcList = vpclist
        end

        def deserialize(params)
          @Mode = params['Mode']
          @CfwInstance = params['CfwInstance']
          @NatGwList = params['NatGwList']
          @VpcList = params['VpcList']
        end
      end

      # ModifyNatFwReSelect返回参数结构体
      class ModifyNatFwReSelectResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyPublicIPSwitchStatus请求参数结构体
      class ModifyPublicIPSwitchStatusRequest < TencentCloud::Common::AbstractModel
        # @param FireWallPublicIP: 公网IP
        # @type FireWallPublicIP: String
        # @param Status: 状态值，0: 关闭 ,1:开启
        # @type Status: Integer

        attr_accessor :FireWallPublicIP, :Status
        
        def initialize(firewallpublicip=nil, status=nil)
          @FireWallPublicIP = firewallpublicip
          @Status = status
        end

        def deserialize(params)
          @FireWallPublicIP = params['FireWallPublicIP']
          @Status = params['Status']
        end
      end

      # ModifyPublicIPSwitchStatus返回参数结构体
      class ModifyPublicIPSwitchStatusResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 接口返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyResourceGroup请求参数结构体
      class ModifyResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 组id
        # @type GroupId: String
        # @param GroupName: 组名称
        # @type GroupName: String
        # @param ParentId: 上级组id
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # Nat防火墙弹性公网ip列表
      class NatFwEipsInfo < TencentCloud::Common::AbstractModel
        # @param Eip: 弹性公网ip
        # @type Eip: String
        # @param NatGatewayId: 所属的Nat网关Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatGatewayId: String
        # @param NatGatewayName: Nat网关名称
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param FwMode: 0:新增模式，1:接入模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FwMode: Integer
        # @param Status: 0:正常状态， 1: 正在创建
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param NatIp: nat公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipAddress: Array
        # @param VpcIp: 内外使用ip数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcIp: Array
        # @param Subnets: 实例关联子网数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subnets: Array
        # @param Status: 0 :正常 1：正在初始化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RegionDetail: 地域区域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDetail: String
        # @param ZoneZh: 实例所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneZh: String
        # @param ZoneZhBak: 实例所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneZhBak: String

        attr_accessor :NatinsId, :NatinsName, :Region, :FwMode, :BandWidth, :InFlowMax, :OutFlowMax, :RegionZh, :EipAddress, :VpcIp, :Subnets, :Status, :RegionDetail, :ZoneZh, :ZoneZhBak
        
        def initialize(natinsid=nil, natinsname=nil, region=nil, fwmode=nil, bandwidth=nil, inflowmax=nil, outflowmax=nil, regionzh=nil, eipaddress=nil, vpcip=nil, subnets=nil, status=nil, regiondetail=nil, zonezh=nil, zonezhbak=nil)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnCode: Integer
        # @param ReturnMsg: success代表成功，failed代表失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param SourceType: 访问源类型，1是IP，3是域名，4是IP地址模版，5是域名地址模版
        # @type SourceType: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param TargetType: 访问目的类型，1是IP，3是域名，4是IP地址模版，5是域名地址模版
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

        attr_accessor :OrderIndex, :SourceIp, :TargetIp, :Protocol, :Strategy, :SourceType, :Direction, :Detail, :TargetType, :Port, :Id, :LogId, :City, :Country, :CloudCode, :IsRegion, :CityName, :CountryName
        
        def initialize(orderindex=nil, sourceip=nil, targetip=nil, protocol=nil, strategy=nil, sourcetype=nil, direction=nil, detail=nil, targettype=nil, port=nil, id=nil, logid=nil, city=nil, country=nil, cloudcode=nil, isregion=nil, cityname=nil, countryname=nil)
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
        end
      end

      # 新手引导扫描信息
      class ScanInfo < TencentCloud::Common::AbstractModel
        # @param ScanResultInfo: 扫描结果信息
        # @type ScanResultInfo: :class:`Tencentcloud::Cfw.v20190904.models.ScanResultInfo`
        # @param ScanStatus: 扫描状态 0扫描中 1完成  2未勾选自动扫描
        # @type ScanStatus: Integer
        # @param ScanPercent: 进度
        # @type ScanPercent: Float
        # @param ScanTime: 预计完成时间
        # @type ScanTime: String

        attr_accessor :ScanResultInfo, :ScanStatus, :ScanPercent, :ScanTime
        
        def initialize(scanresultinfo=nil, scanstatus=nil, scanpercent=nil, scantime=nil)
          @ScanResultInfo = scanresultinfo
          @ScanStatus = scanstatus
          @ScanPercent = scanpercent
          @ScanTime = scantime
        end

        def deserialize(params)
          unless params['ScanResultInfo'].nil?
            @ScanResultInfo = ScanResultInfo.new
            @ScanResultInfo.deserialize(params['ScanResultInfo'])
          end
          @ScanStatus = params['ScanStatus']
          @ScanPercent = params['ScanPercent']
          @ScanTime = params['ScanTime']
        end
      end

      # 新手引导扫描结果信息PortNum   int
      # 	LeakNum   int
      # 	IPNum     int
      # 	IPStatus  bool
      # 	IdpStatus bool
      # 	BanStatus bool
      class ScanResultInfo < TencentCloud::Common::AbstractModel
        # @param LeakNum: 暴露漏洞数量
        # @type LeakNum: Integer
        # @param IPNum: 防护ip数量
        # @type IPNum: Integer
        # @param PortNum: 暴露端口数量
        # @type PortNum: Integer
        # @param IPStatus: 是否开启防护
        # @type IPStatus: Boolean
        # @param IdpStatus: 是否拦截攻击
        # @type IdpStatus: Boolean
        # @param BanStatus: 是否禁封端口
        # @type BanStatus: Boolean

        attr_accessor :LeakNum, :IPNum, :PortNum, :IPStatus, :IdpStatus, :BanStatus
        
        def initialize(leaknum=nil, ipnum=nil, portnum=nil, ipstatus=nil, idpstatus=nil, banstatus=nil)
          @LeakNum = leaknum
          @IPNum = ipnum
          @PortNum = portnum
          @IPStatus = ipstatus
          @IdpStatus = idpstatus
          @BanStatus = banstatus
        end

        def deserialize(params)
          @LeakNum = params['LeakNum']
          @IPNum = params['IPNum']
          @PortNum = params['PortNum']
          @IPStatus = params['IPStatus']
          @IdpStatus = params['IdpStatus']
          @BanStatus = params['BanStatus']
        end
      end

      # 双向下发的企业安全组规则
      class SecurityGroupBothWayInfo < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 执行顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderIndex: Integer
        # @param SourceId: 访问源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceId: String
        # @param SourceType: 访问源类型，默认为0，0: IP, 1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB, 7: 参数模板, 100: 资产分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: Integer
        # @param TargetId: 访问目的
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetId: String
        # @param TargetType: 访问目的类型，默认为0，0: IP, 1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB, 7: 参数模板, 100: 资产分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetType: Integer
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 目的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Strategy: 策略, 1：阻断，2：放行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Strategy: Integer
        # @param Direction: 方向，0：出站，1：入站，默认1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Direction: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Detail: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: String
        # @param Status: 是否开关开启，0：未开启，1：开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsNew: 是否是正常规则，0：正常，1：异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNew: Integer
        # @param BothWay: 单/双向下发，0:单向下发，1：双向下发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BothWay: Integer
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param PublicIp: 公网IP，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 内网IP，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Cidr: 掩码地址，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cidr: String
        # @param ServiceTemplateId: 端口协议类型参数模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param PublicIp: 公网IP，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 内网IP，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Cidr: 掩码地址，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cidr: String
        # @param ServiceTemplateId: 端口协议类型参数模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTemplateId: String
        # @param BothWayInfo: 生成双向下发规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BothWayInfo: Array
        # @param Direction: 方向，0：出站，1：入站，默认1
        # @type Direction: Integer
        # @param ProtocolPortType: 是否使用端口协议模板，0：否，1：是
        # @type ProtocolPortType: Integer

        attr_accessor :OrderIndex, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Detail, :BothWay, :Id, :Status, :IsNew, :VpcId, :SubnetId, :InstanceName, :PublicIp, :PrivateIp, :Cidr, :ServiceTemplateId, :BothWayInfo, :Direction, :ProtocolPortType
        
        def initialize(orderindex=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, detail=nil, bothway=nil, id=nil, status=nil, isnew=nil, vpcid=nil, subnetid=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil, servicetemplateid=nil, bothwayinfo=nil, direction=nil, protocolporttype=nil)
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
        # template：参数模板(ipm-dyodhpby)
        # instance：资产实例(ins-123456)
        # resourcegroup：资产分组(/全部分组/分组1/子分组1)
        # tag：资源标签({"Key":"标签key值","Value":"标签Value值"})
        # region：地域(ap-gaungzhou)
        # @type SourceContent: String
        # @param SourceType: 访问源类型，类型可以为以下6种：net|template|instance|resourcegroup|tag|region
        # @type SourceType: String
        # @param DestContent: 访问目的示例：
        # net：IP/CIDR(192.168.0.2)
        # template：参数模板(ipm-dyodhpby)
        # instance：资产实例(ins-123456)
        # resourcegroup：资产分组(/全部分组/分组1/子分组1)
        # tag：资源标签({"Key":"标签key值","Value":"标签Value值"})
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
        # @param OrderIndex: 规则顺序，-1表示最低，1表示最高
        # @type OrderIndex: String
        # @param Protocol: 协议；TCP/UDP/ICMP/ANY
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 访问控制策略的端口。取值：
        # -1/-1：全部端口
        # 80：80端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param ServiceTemplateId: 端口协议类型参数模板id；协议端口模板id；与Protocol,Port互斥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTemplateId: String
        # @param Id: 规则对应的唯一id
        # @type Id: String
        # @param Enable: 规则状态，true表示启用，false表示禁用
        # @type Enable: String

        attr_accessor :SourceContent, :SourceType, :DestContent, :DestType, :RuleAction, :Description, :OrderIndex, :Protocol, :Port, :ServiceTemplateId, :Id, :Enable
        
        def initialize(sourcecontent=nil, sourcetype=nil, destcontent=nil, desttype=nil, ruleaction=nil, description=nil, orderindex=nil, protocol=nil, port=nil, servicetemplateid=nil, id=nil, enable=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Num: 数
        # @type Num: Integer
        # @param Port: 端口
        # @type Port: String
        # @param Ip: ip信息
        # @type Ip: String
        # @param Address: 地址
        # @type Address: String
        # @param InsID: 资产id
        # @type InsID: String
        # @param InsName: 资产名称
        # @type InsName: String

        attr_accessor :Num, :Port, :Ip, :Address, :InsID, :InsName
        
        def initialize(num=nil, port=nil, ip=nil, address=nil, insid=nil, insname=nil)
          @Num = num
          @Port = port
          @Ip = ip
          @Address = address
          @InsID = insid
          @InsName = insname
        end

        def deserialize(params)
          @Num = params['Num']
          @Port = params['Port']
          @Ip = params['Ip']
          @Address = params['Address']
          @InsID = params['InsID']
          @InsName = params['InsName']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean
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

      # 防火墙开关列表对象
      class SwitchListsData < TencentCloud::Common::AbstractModel
        # @param PublicIp: 公网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param IntranetIp: 内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetIp: String
        # @param InstanceName: 实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Area: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param Switch: 防火墙开关
        # @type Switch: Integer
        # @param Id: id值
        # @type Id: Integer
        # @param PublicIpType: 公网 IP 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpType: Integer
        # @param PortTimes: 风险端口数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortTimes: Integer
        # @param LastTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTime: String
        # @param ScanMode: 扫描深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanMode: String
        # @param ScanStatus: 扫描状态
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 告警中心概览数据
      class TLogInfo < TencentCloud::Common::AbstractModel
        # @param OutNum: 失陷主机
        # @type OutNum: Integer
        # @param HandleNum: 待处置告警
        # @type HandleNum: Integer
        # @param VulNum: 漏洞攻击
        # @type VulNum: Integer
        # @param NetworkNum: 网络探测
        # @type NetworkNum: Integer
        # @param BanNum: 封禁列表
        # @type BanNum: Integer
        # @param BruteForceNum: 暴力破解
        # @type BruteForceNum: Integer

        attr_accessor :OutNum, :HandleNum, :VulNum, :NetworkNum, :BanNum, :BruteForceNum
        
        def initialize(outnum=nil, handlenum=nil, vulnum=nil, networknum=nil, bannum=nil, bruteforcenum=nil)
          @OutNum = outnum
          @HandleNum = handlenum
          @VulNum = vulnum
          @NetworkNum = networknum
          @BanNum = bannum
          @BruteForceNum = bruteforcenum
        end

        def deserialize(params)
          @OutNum = params['OutNum']
          @HandleNum = params['HandleNum']
          @VulNum = params['VulNum']
          @NetworkNum = params['NetworkNum']
          @BanNum = params['BanNum']
          @BruteForceNum = params['BruteForceNum']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatInsId: String
        # @param NatInsName: nat网关名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatInsName: String
        # @param SwitchStatus: 0：开关关闭 ， 1: 开关打开
        # @type SwitchStatus: Integer

        attr_accessor :VpcId, :VpcName, :FwMode, :VpcIpv4Cidr, :DNSEip, :NatInsId, :NatInsName, :SwitchStatus
        
        def initialize(vpcid=nil, vpcname=nil, fwmode=nil, vpcipv4cidr=nil, dnseip=nil, natinsid=nil, natinsname=nil, switchstatus=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @FwMode = fwmode
          @VpcIpv4Cidr = vpcipv4cidr
          @DNSEip = dnseip
          @NatInsId = natinsid
          @NatInsName = natinsname
          @SwitchStatus = switchstatus
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

