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
  module Vdb
    module V20230616
      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要绑定的安全组 ID，类似sg-efil7***。
        # @type SecurityGroupIds: Array
        # @param InstanceIds: 实例 ID，格式如：vdb-c1nl9***，支持指定多个实例
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：vdb-c1nl9***。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId

        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @Groups << securitygroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodes请求参数结构体
      class DescribeInstanceNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Limit: limit
        # @type Limit: Integer
        # @param Offset: offset
        # @type Offset: Integer
        # @param Component: component
        # @type Component: String

        attr_accessor :InstanceId, :Limit, :Offset, :Component

        def initialize(instanceid=nil, limit=nil, offset=nil, component=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @Component = component
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Component = params['Component']
        end
      end

      # DescribeInstanceNodes返回参数结构体
      class DescribeInstanceNodesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 实例pod列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 查询结果总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @Items << nodeinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID数组。
        # @type InstanceIds: Array
        # @param InstanceNames: 实例名称，支持模糊搜索。
        # @type InstanceNames: Array
        # @param InstanceKeys: 实例模糊搜索字段。
        # @type InstanceKeys: Array
        # @param Status: 根据状态获取实例， 为空则获取全部非隔离和非下线的实例。
        # @type Status: Array
        # @param EngineNames: 按照引擎筛选实例。
        # @type EngineNames: Array
        # @param EngineVersions: 按照版本筛选实例。
        # @type EngineVersions: Array
        # @param ApiVersions: 按照api版本筛选实例
        # @type ApiVersions: Array
        # @param CreateAt: 按照创建时间筛选实例。
        # @type CreateAt: String
        # @param Zones: 按照可用区筛选实例。
        # @type Zones: Array
        # @param OrderBy: 排序字段。
        # @type OrderBy: String
        # @param OrderDirection: 排序方式。
        # @type OrderDirection: String
        # @param Offset: 查询开始位置。
        # @type Offset: Integer
        # @param Limit: 列表查询数量。
        # @type Limit: Integer
        # @param ResourceTags: 按照标签筛选实例
        # @type ResourceTags: Array

        attr_accessor :InstanceIds, :InstanceNames, :InstanceKeys, :Status, :EngineNames, :EngineVersions, :ApiVersions, :CreateAt, :Zones, :OrderBy, :OrderDirection, :Offset, :Limit, :ResourceTags

        def initialize(instanceids=nil, instancenames=nil, instancekeys=nil, status=nil, enginenames=nil, engineversions=nil, apiversions=nil, createat=nil, zones=nil, orderby=nil, orderdirection=nil, offset=nil, limit=nil, resourcetags=nil)
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @InstanceKeys = instancekeys
          @Status = status
          @EngineNames = enginenames
          @EngineVersions = engineversions
          @ApiVersions = apiversions
          @CreateAt = createat
          @Zones = zones
          @OrderBy = orderby
          @OrderDirection = orderdirection
          @Offset = offset
          @Limit = limit
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @InstanceKeys = params['InstanceKeys']
          @Status = params['Status']
          @EngineNames = params['EngineNames']
          @EngineVersions = params['EngineVersions']
          @ApiVersions = params['ApiVersions']
          @CreateAt = params['CreateAt']
          @Zones = params['Zones']
          @OrderBy = params['OrderBy']
          @OrderDirection = params['OrderDirection']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 实例列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Items << instanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要绑定的安全组 ID，类似sg-efil****。
        # @type SecurityGroupIds: String
        # @param InstanceIds: 实例 ID，格式如：vdb-c1nl****，支持指定多个实例。
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 安全组入站规则
      class Inbound < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT或者DROP。
        # @type Action: String
        # @param AddressModule: 地址组id代表的地址集合。
        # @type AddressModule: String
        # @param CidrIp: 来源Ip或Ip段，例如192.168.0.0/16。
        # @type CidrIp: String
        # @param Desc: 描述。
        # @type Desc: String
        # @param IpProtocol: 网络协议，支持udp、tcp等。
        # @type IpProtocol: String
        # @param PortRange: 端口。
        # @type PortRange: String
        # @param ServiceModule: 服务组id代表的协议和端口集合。
        # @type ServiceModule: String
        # @param Id: 安全组id代表的地址集合。
        # @type Id: String

        attr_accessor :Action, :AddressModule, :CidrIp, :Desc, :IpProtocol, :PortRange, :ServiceModule, :Id

        def initialize(action=nil, addressmodule=nil, cidrip=nil, desc=nil, ipprotocol=nil, portrange=nil, servicemodule=nil, id=nil)
          @Action = action
          @AddressModule = addressmodule
          @CidrIp = cidrip
          @Desc = desc
          @IpProtocol = ipprotocol
          @PortRange = portrange
          @ServiceModule = servicemodule
          @Id = id
        end

        def deserialize(params)
          @Action = params['Action']
          @AddressModule = params['AddressModule']
          @CidrIp = params['CidrIp']
          @Desc = params['Desc']
          @IpProtocol = params['IpProtocol']
          @PortRange = params['PortRange']
          @ServiceModule = params['ServiceModule']
          @Id = params['Id']
        end
      end

      # 实例信息，用于实例列表
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Name: 实例自定义名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AppId: 用户APPID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Region: 地域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Product: 产品。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: String
        # @param Networks: 网络信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Networks: Array
        # @param ShardNum: 分片信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardNum: Integer
        # @param ReplicaNum: 副本数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicaNum: Integer
        # @param Cpu: CPU.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Float
        # @param Memory: 内存。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Float
        # @param Disk: 磁盘。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disk: Integer
        # @param HealthScore: 健康得分。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthScore: Float
        # @param Warning: 异常告警。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warning: Integer
        # @param Project: 所属项目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Project: String
        # @param ResourceTags: 所属标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array
        # @param CreatedAt: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param Status: 资源状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param EngineName: 引擎名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineName: String
        # @param EngineVersion: 引擎版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineVersion: String
        # @param ApiVersion: api版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiVersion: String
        # @param PayMode: 计费模式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param Extend: 差异化扩展信息, json格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend: String
        # @param ExpiredAt: 过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredAt: String
        # @param IsNoExpired: 是否不过期(永久)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNoExpired: Boolean
        # @param WanAddress: 外网地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanAddress: String
        # @param IsolateAt: 隔离时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateAt: String
        # @param AutoRenew: 是否自动续费。0: 不自动续费(可以支持特权不停服)；1:自动续费；2:到期不续费.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenew: Integer

        attr_accessor :InstanceId, :Name, :AppId, :Region, :Zone, :Product, :Networks, :ShardNum, :ReplicaNum, :Cpu, :Memory, :Disk, :HealthScore, :Warning, :Project, :ResourceTags, :CreatedAt, :Status, :EngineName, :EngineVersion, :ApiVersion, :PayMode, :Extend, :ExpiredAt, :IsNoExpired, :WanAddress, :IsolateAt, :AutoRenew

        def initialize(instanceid=nil, name=nil, appid=nil, region=nil, zone=nil, product=nil, networks=nil, shardnum=nil, replicanum=nil, cpu=nil, memory=nil, disk=nil, healthscore=nil, warning=nil, project=nil, resourcetags=nil, createdat=nil, status=nil, enginename=nil, engineversion=nil, apiversion=nil, paymode=nil, extend=nil, expiredat=nil, isnoexpired=nil, wanaddress=nil, isolateat=nil, autorenew=nil)
          @InstanceId = instanceid
          @Name = name
          @AppId = appid
          @Region = region
          @Zone = zone
          @Product = product
          @Networks = networks
          @ShardNum = shardnum
          @ReplicaNum = replicanum
          @Cpu = cpu
          @Memory = memory
          @Disk = disk
          @HealthScore = healthscore
          @Warning = warning
          @Project = project
          @ResourceTags = resourcetags
          @CreatedAt = createdat
          @Status = status
          @EngineName = enginename
          @EngineVersion = engineversion
          @ApiVersion = apiversion
          @PayMode = paymode
          @Extend = extend
          @ExpiredAt = expiredat
          @IsNoExpired = isnoexpired
          @WanAddress = wanaddress
          @IsolateAt = isolateat
          @AutoRenew = autorenew
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @AppId = params['AppId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Product = params['Product']
          unless params['Networks'].nil?
            @Networks = []
            params['Networks'].each do |i|
              network_tmp = Network.new
              network_tmp.deserialize(i)
              @Networks << network_tmp
            end
          end
          @ShardNum = params['ShardNum']
          @ReplicaNum = params['ReplicaNum']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @HealthScore = params['HealthScore']
          @Warning = params['Warning']
          @Project = params['Project']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @CreatedAt = params['CreatedAt']
          @Status = params['Status']
          @EngineName = params['EngineName']
          @EngineVersion = params['EngineVersion']
          @ApiVersion = params['ApiVersion']
          @PayMode = params['PayMode']
          @Extend = params['Extend']
          @ExpiredAt = params['ExpiredAt']
          @IsNoExpired = params['IsNoExpired']
          @WanAddress = params['WanAddress']
          @IsolateAt = params['IsolateAt']
          @AutoRenew = params['AutoRenew']
        end
      end

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组 ID 组成的数组。
        # @type SecurityGroupIds: Array
        # @param InstanceIds: 实例ID，格式如：vdb-c9s3****。
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 网络信息
      class Network < TencentCloud::Common::AbstractModel
        # @param VpcId: VpcId(VPC网络下有效)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网Id(VPC网络下有效)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Vip: 内网访问IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Port: 内网访问Port。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param PreserveDuration: 旧 ip 保留时长，单位天
        # @type PreserveDuration: Integer
        # @param ExpireTime: 旧 ip 到期时间
        # @type ExpireTime: String

        attr_accessor :VpcId, :SubnetId, :Vip, :Port, :PreserveDuration, :ExpireTime

        def initialize(vpcid=nil, subnetid=nil, vip=nil, port=nil, preserveduration=nil, expiretime=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Port = port
          @PreserveDuration = preserveduration
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Port = params['Port']
          @PreserveDuration = params['PreserveDuration']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 实例pod信息，仅包含 pod 名称
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param Name: Pod名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # 安全组出站规则
      class Outbound < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT或者DROP。
        # @type Action: String
        # @param AddressModule: 地址组id代表的地址集合。
        # @type AddressModule: String
        # @param CidrIp: 来源Ip或Ip段，例如192.168.0.0/16。
        # @type CidrIp: String
        # @param Desc: 描述。
        # @type Desc: String
        # @param IpProtocol: 网络协议，支持udp、tcp等。
        # @type IpProtocol: String
        # @param PortRange: 端口。
        # @type PortRange: String
        # @param ServiceModule: 服务组id代表的协议和端口集合。
        # @type ServiceModule: String
        # @param Id: 安全组id代表的地址集合。
        # @type Id: String

        attr_accessor :Action, :AddressModule, :CidrIp, :Desc, :IpProtocol, :PortRange, :ServiceModule, :Id

        def initialize(action=nil, addressmodule=nil, cidrip=nil, desc=nil, ipprotocol=nil, portrange=nil, servicemodule=nil, id=nil)
          @Action = action
          @AddressModule = addressmodule
          @CidrIp = cidrip
          @Desc = desc
          @IpProtocol = ipprotocol
          @PortRange = portrange
          @ServiceModule = servicemodule
          @Id = id
        end

        def deserialize(params)
          @Action = params['Action']
          @AddressModule = params['AddressModule']
          @CidrIp = params['CidrIp']
          @Desc = params['Desc']
          @IpProtocol = params['IpProtocol']
          @PortRange = params['PortRange']
          @ServiceModule = params['ServiceModule']
          @Id = params['Id']
        end
      end

      # 安全组规则
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss。
        # @type CreateTime: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param SecurityGroupId: 安全组ID。
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称。
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注。
        # @type SecurityGroupRemark: String
        # @param Outbound: 出站规则。
        # @type Outbound: Array
        # @param Inbound: 入站规则。
        # @type Inbound: Array
        # @param UpdateTime: 修改时间，时间格式：yyyy-mm-dd hh:mm:ss。
        # @type UpdateTime: String

        attr_accessor :CreateTime, :ProjectId, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark, :Outbound, :Inbound, :UpdateTime

        def initialize(createtime=nil, projectid=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil, outbound=nil, inbound=nil, updatetime=nil)
          @CreateTime = createtime
          @ProjectId = projectid
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
          @Outbound = outbound
          @Inbound = inbound
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @ProjectId = params['ProjectId']
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              outbound_tmp = Outbound.new
              outbound_tmp.deserialize(i)
              @Outbound << outbound_tmp
            end
          end
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              inbound_tmp = Inbound.new
              inbound_tmp.deserialize(i)
              @Inbound << inbound_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
        end
      end

      # 标签键值对
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

    end
  end
end

