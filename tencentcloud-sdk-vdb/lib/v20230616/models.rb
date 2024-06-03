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

        attr_accessor :InstanceIds, :InstanceNames, :InstanceKeys, :Status, :EngineNames, :EngineVersions, :CreateAt, :Zones, :OrderBy, :OrderDirection, :Offset, :Limit, :ResourceTags

        def initialize(instanceids=nil, instancenames=nil, instancekeys=nil, status=nil, enginenames=nil, engineversions=nil, createat=nil, zones=nil, orderby=nil, orderdirection=nil, offset=nil, limit=nil, resourcetags=nil)
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @InstanceKeys = instancekeys
          @Status = status
          @EngineNames = enginenames
          @EngineVersions = engineversions
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

        attr_accessor :InstanceId, :Name, :AppId, :Region, :Zone, :Product, :Networks, :ShardNum, :ReplicaNum, :Cpu, :Memory, :Disk, :HealthScore, :Warning, :Project, :ResourceTags, :CreatedAt, :Status, :EngineName, :EngineVersion, :PayMode, :Extend, :ExpiredAt, :IsNoExpired, :WanAddress

        def initialize(instanceid=nil, name=nil, appid=nil, region=nil, zone=nil, product=nil, networks=nil, shardnum=nil, replicanum=nil, cpu=nil, memory=nil, disk=nil, healthscore=nil, warning=nil, project=nil, resourcetags=nil, createdat=nil, status=nil, enginename=nil, engineversion=nil, paymode=nil, extend=nil, expiredat=nil, isnoexpired=nil, wanaddress=nil)
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
          @PayMode = paymode
          @Extend = extend
          @ExpiredAt = expiredat
          @IsNoExpired = isnoexpired
          @WanAddress = wanaddress
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
          @PayMode = params['PayMode']
          @Extend = params['Extend']
          @ExpiredAt = params['ExpiredAt']
          @IsNoExpired = params['IsNoExpired']
          @WanAddress = params['WanAddress']
        end
      end

      # 网路信息
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

        attr_accessor :VpcId, :SubnetId, :Vip, :Port

        def initialize(vpcid=nil, subnetid=nil, vip=nil, port=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Port = port
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Port = params['Port']
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

