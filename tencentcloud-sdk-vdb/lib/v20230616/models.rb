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

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络 ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络 VPC 的子网 ID。
        # @type SubnetId: String
        # @param PayMode: 指定实例计费方式。
        # - 0：按量付费。
        # - 1：包年包月。
        # @type PayMode: Integer
        # @param InstanceName: 设置实例名称。仅支持长度不超过 60 的中文/英文/数字/-/_。
        # @type InstanceName: String
        # @param SecurityGroupIds: 安全组 ID。
        # @type SecurityGroupIds: Array
        # @param PayPeriod: 若计费方式为包年包月，指定包年包月续费的时长。
        # - 单位：月。
        # - 取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。默认为1。
        # @type PayPeriod: Integer
        # @param AutoRenew: 若为包年包月计费，需指定是否开启自动续费。
        # - 0：不开启自动续费。
        # - 1：开启自动续费。
        # @type AutoRenew: Integer
        # @param Params: 实例额外参数，通过json提交。
        # @type Params: String
        # @param ResourceTags: 以数组形式列出标签信息。
        # @type ResourceTags: Array
        # @param Project: 指定实例所属项目 ID。
        # @type Project: String
        # @param InstanceType: 实例类型。
        # - base：免费测试版。
        # - single：单机版。
        # - cluster：高可用版。
        # @type InstanceType: String
        # @param Mode: 实例类型为高可用版，需指定可用区选项。
        # - two：两可用区。
        # - three：三可用区。
        # @type Mode: String
        # @param GoodsNum: 购买实例数量。
        # @type GoodsNum: Integer
        # @param NetworkType: 网络类型。
        # VPC或TCS
        # @type NetworkType: String
        # @param TemplateId: 实例所应用的参数模板 ID。
        # @type TemplateId: String
        # @param Components: 组件具体设置列表。
        # @type Components: Array
        # @param Zone: 实例类型为高可用版，通过该参数指定主可用区。
        # @type Zone: String
        # @param SlaveZones: 实例类型为高可用版，通过该参数指定备可用区。
        # @type SlaveZones: Array
        # @param IsNoExpired: 是否长期有效
        # @type IsNoExpired: Boolean
        # @param EngineName: 引擎名称，业务自定义。
        # @type EngineName: String
        # @param EngineVersion: 引擎版本，业务自定义。
        # @type EngineVersion: String
        # @param Brief: 实例描述。
        # @type Brief: String
        # @param Chief: 负责人信息。
        # @type Chief: String
        # @param DBA: DBA人员信息
        # @type DBA: String
        # @param NodeType: 指定实例的节点类型。具体信息，请参见[选择节点类型](https://cloud.tencent.com/document/product/1709/113399)。
        # - compute：计费型。
        # - normal：标准型。
        # - store：存储型。
        # @type NodeType: String
        # @param Cpu: 指定实例所需的 CPU 核数。实例类型不同，支持的 CPU 核数存在差异。
        # - 计算型： 1、2、4、8、16、24、32。
        # - 标准型： 1、2、4、8、12、16。
        # - 存储型： 1、2、4、6、8。
        # @type Cpu: Integer
        # @param Memory: 指定实例所需的内存大小。单位：GB。选择具体规格，请参见[配置规格（选型）](https://cloud.tencent.com/document/product/1709/113399)。
        # @type Memory: Integer
        # @param DiskSize: 指定实例所需的磁盘大小，单位：GB。选择具体规格，请参见[配置规格（选型）](https://cloud.tencent.com/document/product/1709/113399)。
        # @type DiskSize: Integer
        # @param WorkerNodeNum: 指定实例所需配置的节点数量。选择方法，请参见[配置规格（选型）](https://cloud.tencent.com/document/product/1709/113399)。
        # @type WorkerNodeNum: Integer

        attr_accessor :VpcId, :SubnetId, :PayMode, :InstanceName, :SecurityGroupIds, :PayPeriod, :AutoRenew, :Params, :ResourceTags, :Project, :InstanceType, :Mode, :GoodsNum, :NetworkType, :TemplateId, :Components, :Zone, :SlaveZones, :IsNoExpired, :EngineName, :EngineVersion, :Brief, :Chief, :DBA, :NodeType, :Cpu, :Memory, :DiskSize, :WorkerNodeNum
        extend Gem::Deprecate
        deprecate :Project, :none, 2025, 7
        deprecate :Project=, :none, 2025, 7
        deprecate :NetworkType, :none, 2025, 7
        deprecate :NetworkType=, :none, 2025, 7
        deprecate :TemplateId, :none, 2025, 7
        deprecate :TemplateId=, :none, 2025, 7
        deprecate :Components, :none, 2025, 7
        deprecate :Components=, :none, 2025, 7
        deprecate :Zone, :none, 2025, 7
        deprecate :Zone=, :none, 2025, 7
        deprecate :SlaveZones, :none, 2025, 7
        deprecate :SlaveZones=, :none, 2025, 7
        deprecate :IsNoExpired, :none, 2025, 7
        deprecate :IsNoExpired=, :none, 2025, 7
        deprecate :EngineName, :none, 2025, 7
        deprecate :EngineName=, :none, 2025, 7
        deprecate :EngineVersion, :none, 2025, 7
        deprecate :EngineVersion=, :none, 2025, 7
        deprecate :Brief, :none, 2025, 7
        deprecate :Brief=, :none, 2025, 7
        deprecate :Chief, :none, 2025, 7
        deprecate :Chief=, :none, 2025, 7
        deprecate :DBA, :none, 2025, 7
        deprecate :DBA=, :none, 2025, 7
        deprecate :NodeType, :none, 2025, 7
        deprecate :NodeType=, :none, 2025, 7

        def initialize(vpcid=nil, subnetid=nil, paymode=nil, instancename=nil, securitygroupids=nil, payperiod=nil, autorenew=nil, params=nil, resourcetags=nil, project=nil, instancetype=nil, mode=nil, goodsnum=nil, networktype=nil, templateid=nil, components=nil, zone=nil, slavezones=nil, isnoexpired=nil, enginename=nil, engineversion=nil, brief=nil, chief=nil, dba=nil, nodetype=nil, cpu=nil, memory=nil, disksize=nil, workernodenum=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @InstanceName = instancename
          @SecurityGroupIds = securitygroupids
          @PayPeriod = payperiod
          @AutoRenew = autorenew
          @Params = params
          @ResourceTags = resourcetags
          @Project = project
          @InstanceType = instancetype
          @Mode = mode
          @GoodsNum = goodsnum
          @NetworkType = networktype
          @TemplateId = templateid
          @Components = components
          @Zone = zone
          @SlaveZones = slavezones
          @IsNoExpired = isnoexpired
          @EngineName = enginename
          @EngineVersion = engineversion
          @Brief = brief
          @Chief = chief
          @DBA = dba
          @NodeType = nodetype
          @Cpu = cpu
          @Memory = memory
          @DiskSize = disksize
          @WorkerNodeNum = workernodenum
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @InstanceName = params['InstanceName']
          @SecurityGroupIds = params['SecurityGroupIds']
          @PayPeriod = params['PayPeriod']
          @AutoRenew = params['AutoRenew']
          @Params = params['Params']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @Project = params['Project']
          @InstanceType = params['InstanceType']
          @Mode = params['Mode']
          @GoodsNum = params['GoodsNum']
          @NetworkType = params['NetworkType']
          @TemplateId = params['TemplateId']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              createinstancescomponent_tmp = CreateInstancesComponent.new
              createinstancescomponent_tmp.deserialize(i)
              @Components << createinstancescomponent_tmp
            end
          end
          @Zone = params['Zone']
          @SlaveZones = params['SlaveZones']
          @IsNoExpired = params['IsNoExpired']
          @EngineName = params['EngineName']
          @EngineVersion = params['EngineVersion']
          @Brief = params['Brief']
          @Chief = params['Chief']
          @DBA = params['DBA']
          @NodeType = params['NodeType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @DiskSize = params['DiskSize']
          @WorkerNodeNum = params['WorkerNodeNum']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIds, :RequestId

        def initialize(instanceids=nil, requestid=nil)
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 组件设置列表
      class CreateInstancesComponent < TencentCloud::Common::AbstractModel
        # @param Component: 底层组件名，需要和产品模型中的保持一致
        # @type Component: String
        # @param Cpu: 组件cpu大小
        # @type Cpu: Float
        # @param Memory: 组件内存大小
        # @type Memory: Float
        # @param ReplicaNum: 业务节点数
        # @type ReplicaNum: Integer
        # @param Name: 自定义组件名
        # @type Name: String
        # @param StorageSize: 组件磁盘大小
        # @type StorageSize: Integer
        # @param StorageType: 磁盘类型
        # @type StorageType: String
        # @param Params: 组件额外参数，通过JSON提交
        # @type Params: String

        attr_accessor :Component, :Cpu, :Memory, :ReplicaNum, :Name, :StorageSize, :StorageType, :Params

        def initialize(component=nil, cpu=nil, memory=nil, replicanum=nil, name=nil, storagesize=nil, storagetype=nil, params=nil)
          @Component = component
          @Cpu = cpu
          @Memory = memory
          @ReplicaNum = replicanum
          @Name = name
          @StorageSize = storagesize
          @StorageType = storagetype
          @Params = params
        end

        def deserialize(params)
          @Component = params['Component']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @ReplicaNum = params['ReplicaNum']
          @Name = params['Name']
          @StorageSize = params['StorageSize']
          @StorageType = params['StorageType']
          @Params = params['Params']
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

      # DescribeInstanceMaintenanceWindow请求参数结构体
      class DescribeInstanceMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定查询维护时间窗的具体实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceMaintenanceWindow返回参数结构体
      class DescribeInstanceMaintenanceWindowResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param StartTime: 维护时间窗开始时间。
        # @type StartTime: String
        # @param EndTime: 维护时间窗结束时间。
        # @type EndTime: String
        # @param TimeSpan: 维护时间窗时长。单位：小时。
        # @type TimeSpan: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :TimeSpan, :RequestId

        def initialize(instanceid=nil, starttime=nil, endtime=nil, timespan=nil, requestid=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @TimeSpan = timespan
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TimeSpan = params['TimeSpan']
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
        # @param TaskStatus: 任务状态：1-待执行任务；2-密钥更新中；3-网络变更中；4-参数变更中；5-embedding变更中；6-ai套件变更中；7-滚动升级中；8-纵向扩容中；9-纵向缩容中；10-横向扩容中；11-横向缩容中
        # @type TaskStatus: Array
        # @param Networks: 根据实例vip搜索实例
        # @type Networks: Array

        attr_accessor :InstanceIds, :InstanceNames, :InstanceKeys, :Status, :EngineNames, :EngineVersions, :ApiVersions, :CreateAt, :Zones, :OrderBy, :OrderDirection, :Offset, :Limit, :ResourceTags, :TaskStatus, :Networks
        extend Gem::Deprecate
        deprecate :EngineNames, :none, 2025, 7
        deprecate :EngineNames=, :none, 2025, 7
        deprecate :Zones, :none, 2025, 7
        deprecate :Zones=, :none, 2025, 7

        def initialize(instanceids=nil, instancenames=nil, instancekeys=nil, status=nil, enginenames=nil, engineversions=nil, apiversions=nil, createat=nil, zones=nil, orderby=nil, orderdirection=nil, offset=nil, limit=nil, resourcetags=nil, taskstatus=nil, networks=nil)
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
          @TaskStatus = taskstatus
          @Networks = networks
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
          @TaskStatus = params['TaskStatus']
          @Networks = params['Networks']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 实例列表。
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

      # DestroyInstances请求参数结构体
      class DestroyInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 以数组形式指定待销毁下线的实例 ID。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DestroyInstances返回参数结构体
      class DestroyInstancesResponse < TencentCloud::Common::AbstractModel
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
        # @type InstanceId: String
        # @param Name: 实例自定义名称。
        # @type Name: String
        # @param AppId: 用户APPID。
        # @type AppId: Integer
        # @param Region: 地域。
        # @type Region: String
        # @param Zone: 可用区。
        # @type Zone: String
        # @param Product: 产品。
        # @type Product: String
        # @param Networks: 网络信息。
        # @type Networks: Array
        # @param ShardNum: 分片信息。
        # @type ShardNum: Integer
        # @param ReplicaNum: 副本数。
        # @type ReplicaNum: Integer
        # @param Cpu: CPU.
        # @type Cpu: Float
        # @param Memory: 内存。
        # @type Memory: Float
        # @param Disk: 磁盘。
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
        # @type ResourceTags: Array
        # @param CreatedAt: 创建时间。
        # @type CreatedAt: String
        # @param Status: 资源状态。
        # @type Status: String
        # @param EngineName: 引擎名称。
        # @type EngineName: String
        # @param EngineVersion: 引擎版本。
        # @type EngineVersion: String
        # @param ApiVersion: api版本
        # @type ApiVersion: String
        # @param PayMode: 计费模式。
        # @type PayMode: Integer
        # @param Extend: 差异化扩展信息, json格式。
        # @type Extend: String
        # @param ExpiredAt: 过期时间。
        # @type ExpiredAt: String
        # @param IsNoExpired: 是否不过期(永久)。
        # @type IsNoExpired: Boolean
        # @param ProductType: 产品版本，0-标准版，1-容量增强版
        # @type ProductType: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param NodeType: 节点类型
        # @type NodeType: String
        # @param WanAddress: 外网地址。
        # @type WanAddress: String
        # @param IsolateAt: 隔离时间
        # @type IsolateAt: String
        # @param AutoRenew: 是否自动续费。0: 不自动续费(可以支持特权不停服)；1:自动续费；2:到期不续费.
        # @type AutoRenew: Integer
        # @param TaskStatus: 任务状态：0-无任务；1-待执行任务；2-密钥更新中；3-网络变更中；4-参数变更中；5-embedding变更中；6-ai套件变更中；7-滚动升级中；8-纵向扩容中；9-纵向缩容中；10-横向扩容中；11-横向缩容中
        # @type TaskStatus: Integer
        # @param SecurityGroupIds: 绑定的安全组id
        # @type SecurityGroupIds: Array

        attr_accessor :InstanceId, :Name, :AppId, :Region, :Zone, :Product, :Networks, :ShardNum, :ReplicaNum, :Cpu, :Memory, :Disk, :HealthScore, :Warning, :Project, :ResourceTags, :CreatedAt, :Status, :EngineName, :EngineVersion, :ApiVersion, :PayMode, :Extend, :ExpiredAt, :IsNoExpired, :ProductType, :InstanceType, :NodeType, :WanAddress, :IsolateAt, :AutoRenew, :TaskStatus, :SecurityGroupIds
        extend Gem::Deprecate
        deprecate :HealthScore, :none, 2025, 7
        deprecate :HealthScore=, :none, 2025, 7
        deprecate :Warning, :none, 2025, 7
        deprecate :Warning=, :none, 2025, 7
        deprecate :Project, :none, 2025, 7
        deprecate :Project=, :none, 2025, 7

        def initialize(instanceid=nil, name=nil, appid=nil, region=nil, zone=nil, product=nil, networks=nil, shardnum=nil, replicanum=nil, cpu=nil, memory=nil, disk=nil, healthscore=nil, warning=nil, project=nil, resourcetags=nil, createdat=nil, status=nil, enginename=nil, engineversion=nil, apiversion=nil, paymode=nil, extend=nil, expiredat=nil, isnoexpired=nil, producttype=nil, instancetype=nil, nodetype=nil, wanaddress=nil, isolateat=nil, autorenew=nil, taskstatus=nil, securitygroupids=nil)
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
          @ProductType = producttype
          @InstanceType = instancetype
          @NodeType = nodetype
          @WanAddress = wanaddress
          @IsolateAt = isolateat
          @AutoRenew = autorenew
          @TaskStatus = taskstatus
          @SecurityGroupIds = securitygroupids
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
          @ProductType = params['ProductType']
          @InstanceType = params['InstanceType']
          @NodeType = params['NodeType']
          @WanAddress = params['WanAddress']
          @IsolateAt = params['IsolateAt']
          @AutoRenew = params['AutoRenew']
          @TaskStatus = params['TaskStatus']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # IsolateInstance请求参数结构体
      class IsolateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定需隔离的实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # IsolateInstance返回参数结构体
      class IsolateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceMaintenanceWindow请求参数结构体
      class ModifyInstanceMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定需修改维护时间窗的实例 ID。
        # @type InstanceId: String
        # @param StartTime: 维护时间窗开始时间。取值范围为"00:00-23:00"的任意整点，如01:00。
        # @type StartTime: String
        # @param TimeSpan: 设置维护时间窗的时长。根据指定的维护时间窗开始时间与时长可确定维护时间窗的范围。
        # - 单位：小时。
        # - 取值范围：3、6、8、10、12。
        # @type TimeSpan: Integer

        attr_accessor :InstanceId, :StartTime, :TimeSpan

        def initialize(instanceid=nil, starttime=nil, timespan=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @TimeSpan = timespan
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @TimeSpan = params['TimeSpan']
        end
      end

      # ModifyInstanceMaintenanceWindow返回参数结构体
      class ModifyInstanceMaintenanceWindowResponse < TencentCloud::Common::AbstractModel
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
        # @type VpcId: String
        # @param SubnetId: 子网Id(VPC网络下有效)。
        # @type SubnetId: String
        # @param Vip: 内网访问IP。
        # @type Vip: String
        # @param Port: 内网访问Port。
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

      # 实例pod信息， pod 名称
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param Name: Pod名称。
        # @type Name: String
        # @param Status: pod状态
        # @type Status: String

        attr_accessor :Name, :Status

        def initialize(name=nil, status=nil)
          @Name = name
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
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

      # RecoverInstance请求参数结构体
      class RecoverInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待恢复的实例 ID。
        # @type InstanceId: String
        # @param PayPeriod: 若实例为包年包月计费，需通过该参数指定续费的时长。
        # - 单位：月。
        # - 取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。默认为1。
        # @type PayPeriod: Integer

        attr_accessor :InstanceId, :PayPeriod

        def initialize(instanceid=nil, payperiod=nil)
          @InstanceId = instanceid
          @PayPeriod = payperiod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PayPeriod = params['PayPeriod']
        end
      end

      # RecoverInstance返回参数结构体
      class RecoverInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ScaleOutInstance请求参数结构体
      class ScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定需扩容节点数量的实例 ID。
        # @type InstanceId: String
        # @param ReplicaNum: 指定扩容后的节点数量。选项范围起始于当前实例已有的节点数，上限为30个节点。
        # @type ReplicaNum: Integer
        # @param RunNow: 指定水平扩容增加节点数量的时间。
        # - false：默认值，指在下一个维护时间段内执行增加节点数的任务。实例列表中“状态”列将显示“待执行配置变更”，等到维护时间窗内启动扩容任务。维护时间的更多信息，请参维护时间窗。
        # - true：立即执行增加节点数的任务，请确保此时没有重大业务操作。
        # @type RunNow: Boolean

        attr_accessor :InstanceId, :ReplicaNum, :RunNow

        def initialize(instanceid=nil, replicanum=nil, runnow=nil)
          @InstanceId = instanceid
          @ReplicaNum = replicanum
          @RunNow = runnow
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReplicaNum = params['ReplicaNum']
          @RunNow = params['RunNow']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ScaleUpInstance请求参数结构体
      class ScaleUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定需升级配置的实例 ID。
        # @type InstanceId: String
        # @param Cpu: 指定升级配置后的 CPU 核数。
        # - 节点规格可选项（CPU & 内存）必须 >= 当前配置。
        # - 可选择的规格信息，请参见[选择节点规格与数量](https://cloud.tencent.com/document/product/1709/113399)。
        # @type Cpu: Float
        # @param Memory: 指定升级配置后的内存大小，单位为：GB。
        # - 节点规格可选项（CPU & 内存）必须 >= 当前配置。
        # - 不同实例类型对 CPU 与内存资源的配置比例有不同的要求。例如，计算型实例，CPU 与内存的分配比例要求为 1:2。CPU 被指定为 4 核，那么内存则应被指定为 8GB。节点规格的详细信息，请参见[选择节点规格与数量](https://cloud.tencent.com/document/product/1709/113399)。
        # @type Memory: Float
        # @param StorageSize: 指定升级配置后的磁盘容量。
        # - 单位：GB。
        # - 取值范围为：[10,1000]。
        # - 取值必须为10的倍数。
        # @type StorageSize: Integer
        # @param RunNow: 指定垂直扩容升级节点配置的时间。
        # - false：默认值，指在下一个维护时间段内执行升配节点规格的任务。实例列表中“状态”列将显示“待执行配置变更”，等到维护时间窗内启动任务。维护时间的更多信息，请参见维护时间窗。
        # - true：立即执行升级配置的任务，请确保此时没有重大业务操作。
        # @type RunNow: Boolean

        attr_accessor :InstanceId, :Cpu, :Memory, :StorageSize, :RunNow

        def initialize(instanceid=nil, cpu=nil, memory=nil, storagesize=nil, runnow=nil)
          @InstanceId = instanceid
          @Cpu = cpu
          @Memory = memory
          @StorageSize = storagesize
          @RunNow = runnow
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @StorageSize = params['StorageSize']
          @RunNow = params['RunNow']
        end
      end

      # ScaleUpInstance返回参数结构体
      class ScaleUpInstanceResponse < TencentCloud::Common::AbstractModel
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
        # @type TagKey: String
        # @param TagValue: 标签值
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

