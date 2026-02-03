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
  module Ctsdb
    module V20230202
      # 实例相关信息
      class Cluster < TencentCloud::Common::AbstractModel
        # @param AppID: 用户APPID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: Integer
        # @param ClusterID: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterID: String
        # @param AccountID: 账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountID: String
        # @param Name: 自定义实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zones: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: String
        # @param Networks: 网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Networks: Array
        # @param Spec: 实例规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: :class:`Tencentcloud::Ctsdb.v20230202.models.Spec`
        # @param Status: 实例状态：0：运行中,1：创建中 ,16：变配中,17：隔离中,18：待销毁,19：恢复中,20：关机 , 21：销毁中 ,22：已销毁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Period: 实例有效期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: :class:`Tencentcloud::Ctsdb.v20230202.models.Period`
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param Tenant: 产品内部特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tenant: :class:`Tencentcloud::Ctsdb.v20230202.models.Tenant`
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Security: 安全组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Security: Array

        attr_accessor :AppID, :ClusterID, :AccountID, :Name, :Region, :Zones, :Networks, :Spec, :Status, :Period, :CreatedAt, :UpdatedAt, :Tenant, :Tags, :Security
        extend Gem::Deprecate
        deprecate :Networks, :none, 2026, 2
        deprecate :Networks=, :none, 2026, 2
        deprecate :Spec, :none, 2026, 2
        deprecate :Spec=, :none, 2026, 2

        def initialize(appid=nil, clusterid=nil, accountid=nil, name=nil, region=nil, zones=nil, networks=nil, spec=nil, status=nil, period=nil, createdat=nil, updatedat=nil, tenant=nil, tags=nil, security=nil)
          @AppID = appid
          @ClusterID = clusterid
          @AccountID = accountid
          @Name = name
          @Region = region
          @Zones = zones
          @Networks = networks
          @Spec = spec
          @Status = status
          @Period = period
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Tenant = tenant
          @Tags = tags
          @Security = security
        end

        def deserialize(params)
          @AppID = params['AppID']
          @ClusterID = params['ClusterID']
          @AccountID = params['AccountID']
          @Name = params['Name']
          @Region = params['Region']
          @Zones = params['Zones']
          unless params['Networks'].nil?
            @Networks = []
            params['Networks'].each do |i|
              network_tmp = Network.new
              network_tmp.deserialize(i)
              @Networks << network_tmp
            end
          end
          unless params['Spec'].nil?
            @Spec = Spec.new
            @Spec.deserialize(params['Spec'])
          end
          @Status = params['Status']
          unless params['Period'].nil?
            @Period = Period.new
            @Period.deserialize(params['Period'])
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['Tenant'].nil?
            @Tenant = Tenant.new
            @Tenant.deserialize(params['Tenant'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Security = params['Security']
        end
      end

      # 实例详情信息
      class ClusterDetail < TencentCloud::Common::AbstractModel
        # @param AppID: <p>用户APPID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: Integer
        # @param ClusterID: <p>实例id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterID: String
        # @param AccountID: <p>账号id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountID: String
        # @param Name: <p>自定义实例名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Region: <p>地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Networks: <p>网络信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Networks: Array
        # @param Status: <p>实例状态</p>枚举值：<ul><li> 0： 运行中</li><li> 1： 创建中</li><li> 16： 变配中</li><li> 17： 隔离中</li><li> 18： 已隔离</li><li> 19： 恢复中</li><li> 20： 已关机</li><li> 21： 销毁中</li><li> 22： 已销毁</li><li> 30： 扩展节点添加中</li><li> 31： 扩展节点变配中</li><li> 32： 扩展节点删除中</li><li> 33： 扩展节点禁用中</li><li> 34： 扩展节点启用中</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreatedAt: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: <p>最后修改时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param Tags: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Security: <p>安全组信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Security: Array
        # @param Components: <p>组件信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array
        # @param ExpiredAt: <p>过期时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredAt: String
        # @param RenewFlag: <p>续费标识</p>枚举值：<ul><li> 0： 默认</li><li> 1： 自动续费</li><li> 2： 不自动续费</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param ShutdownAt: <p>关机时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShutdownAt: String
        # @param IsolatedAt: <p>隔离时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedAt: String
        # @param Type: <p>实例类型</p>枚举值：<ul><li> 0： 共享型</li><li> 1： 独享型</li><li> 2： 标准型</li></ul>
        # @type Type: Integer

        attr_accessor :AppID, :ClusterID, :AccountID, :Name, :Region, :Networks, :Status, :CreatedAt, :UpdatedAt, :Tags, :Security, :Components, :ExpiredAt, :RenewFlag, :ShutdownAt, :IsolatedAt, :Type

        def initialize(appid=nil, clusterid=nil, accountid=nil, name=nil, region=nil, networks=nil, status=nil, createdat=nil, updatedat=nil, tags=nil, security=nil, components=nil, expiredat=nil, renewflag=nil, shutdownat=nil, isolatedat=nil, type=nil)
          @AppID = appid
          @ClusterID = clusterid
          @AccountID = accountid
          @Name = name
          @Region = region
          @Networks = networks
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Tags = tags
          @Security = security
          @Components = components
          @ExpiredAt = expiredat
          @RenewFlag = renewflag
          @ShutdownAt = shutdownat
          @IsolatedAt = isolatedat
          @Type = type
        end

        def deserialize(params)
          @AppID = params['AppID']
          @ClusterID = params['ClusterID']
          @AccountID = params['AccountID']
          @Name = params['Name']
          @Region = params['Region']
          unless params['Networks'].nil?
            @Networks = []
            params['Networks'].each do |i|
              network_tmp = Network.new
              network_tmp.deserialize(i)
              @Networks << network_tmp
            end
          end
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Security = params['Security']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @ExpiredAt = params['ExpiredAt']
          @RenewFlag = params['RenewFlag']
          @ShutdownAt = params['ShutdownAt']
          @IsolatedAt = params['IsolatedAt']
          @Type = params['Type']
        end
      end

      # 实例组件信息
      class Component < TencentCloud::Common::AbstractModel
        # @param InstanceID: <p>所属实例id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param Name: <p>名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: <p>组件类型</p>枚举值：<ul><li> gateway： 时序节点</li><li> database： 数据节点</li><li> gateway-worker： 扩展节点</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Cpu: <p>cpu</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: <p>内存</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Disk: <p>磁盘</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disk: Integer
        # @param Shards: <p>节点数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shards: Integer
        # @param Replicas: <p>副本数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param Networks: <p>网络</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Networks: Array
        # @param State: <p>组件状态</p>枚举值：<ul><li> 0： 运行中</li><li> 1： 创建中</li><li> 2： 变配中</li><li> 3： 隔离中</li><li> 4： 已隔离</li><li> 5： 删除中</li><li> 6： 已删除</li><li> 7： 禁用中</li><li> 8： 已禁用</li><li> 9： 启用中</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param ID: <p>组件内部ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer

        attr_accessor :InstanceID, :Name, :Type, :Cpu, :Memory, :Disk, :Shards, :Replicas, :Networks, :State, :ID

        def initialize(instanceid=nil, name=nil, type=nil, cpu=nil, memory=nil, disk=nil, shards=nil, replicas=nil, networks=nil, state=nil, id=nil)
          @InstanceID = instanceid
          @Name = name
          @Type = type
          @Cpu = cpu
          @Memory = memory
          @Disk = disk
          @Shards = shards
          @Replicas = replicas
          @Networks = networks
          @State = state
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Name = params['Name']
          @Type = params['Type']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @Shards = params['Shards']
          @Replicas = params['Replicas']
          unless params['Networks'].nil?
            @Networks = []
            params['Networks'].each do |i|
              network_tmp = Network.new
              network_tmp.deserialize(i)
              @Networks << network_tmp
            end
          end
          @State = params['State']
          @ID = params['ID']
        end
      end

      # 数据库相关信息
      class Database < TencentCloud::Common::AbstractModel
        # @param ClusterID: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterID: String
        # @param Name: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param CoolDownInDays: 降冷时间（天）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoolDownInDays: Integer
        # @param RetentionInDays: 数据保留时间（天）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionInDays: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Status: 状态：0: 资源初始化中， 1: 资源创建中， 2: 正常状态， 3: 资源删除中， 4: 资源已删除， 5: 资源禁用中， 6: 资源已禁用， 7: 资源异常，需要人工操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :ClusterID, :Name, :CoolDownInDays, :RetentionInDays, :Remark, :Status, :CreatedAt, :UpdatedAt

        def initialize(clusterid=nil, name=nil, cooldownindays=nil, retentionindays=nil, remark=nil, status=nil, createdat=nil, updatedat=nil)
          @ClusterID = clusterid
          @Name = name
          @CoolDownInDays = cooldownindays
          @RetentionInDays = retentionindays
          @Remark = remark
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @Name = params['Name']
          @CoolDownInDays = params['CoolDownInDays']
          @RetentionInDays = params['RetentionInDays']
          @Remark = params['Remark']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # DescribeClusterDetail请求参数结构体
      class DescribeClusterDetailRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeClusterDetail返回参数结构体
      class DescribeClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param Cluster: <p>实例详情</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cluster: :class:`Tencentcloud::Ctsdb.v20230202.models.ClusterDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cluster, :RequestId

        def initialize(cluster=nil, requestid=nil)
          @Cluster = cluster
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Cluster'].nil?
            @Cluster = ClusterDetail.new
            @Cluster.deserialize(params['Cluster'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页数
        # @type PageNumber: Integer
        # @param PageSize: 单页大小
        # @type PageSize: Integer
        # @param Filters: 查询参数：支持通过实例ID（cluster_id）和实例名称（name）进行过滤查询
        # @type Filters: Array
        # @param Orders: 排序参数：支持通过创建时间字段（created_at）进行排序，Type可指定为DESC（降序）或ASC（升序）
        # @type Orders: Array

        attr_accessor :PageNumber, :PageSize, :Filters, :Orders

        def initialize(pagenumber=nil, pagesize=nil, filters=nil, orders=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @Orders = orders
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Orders'].nil?
            @Orders = []
            params['Orders'].each do |i|
              order_tmp = Order.new
              order_tmp.deserialize(i)
              @Orders << order_tmp
            end
          end
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 当前条件下的总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Clusters: 符合条件的实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clusters: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Clusters, :RequestId

        def initialize(totalcount=nil, clusters=nil, requestid=nil)
          @TotalCount = totalcount
          @Clusters = clusters
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @Clusters << cluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param Database: 数据库参数
        # @type Database: :class:`Tencentcloud::Ctsdb.v20230202.models.Database`
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 分页页面
        # @type PageNumber: Integer

        attr_accessor :Database, :PageSize, :PageNumber

        def initialize(database=nil, pagesize=nil, pagenumber=nil)
          @Database = database
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Database'].nil?
            @Database = Database.new
            @Database.deserialize(params['Database'])
          end
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Databases: 数据库列表
        # @type Databases: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Databases, :TotalCount, :RequestId

        def initialize(databases=nil, totalcount=nil, requestid=nil)
          @Databases = databases
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              database_tmp = Database.new
              database_tmp.deserialize(i)
              @Databases << database_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 查询过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数
        # @type Name: String
        # @param Op: 过滤表达式
        # @type Op: String
        # @param Values: 参与过滤的值
        # @type Values: Array

        attr_accessor :Name, :Op, :Values

        def initialize(name=nil, op=nil, values=nil)
          @Name = name
          @Op = op
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Op = params['Op']
          @Values = params['Values']
        end
      end

      # 实例网络信息(influxdb)
      class Network < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: vpc subnet id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param VIP: vpc ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VIP: String
        # @param Port: vpc port地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer

        attr_accessor :VpcId, :SubnetId, :VIP, :Port

        def initialize(vpcid=nil, subnetid=nil, vip=nil, port=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @VIP = vip
          @Port = port
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VIP = params['VIP']
          @Port = params['Port']
        end
      end

      # 排序参数，用于排序查询结果
      class Order < TencentCloud::Common::AbstractModel
        # @param Name: 排序字段
        # @type Name: String
        # @param Type: 排序方式
        # @type Type: String

        attr_accessor :Name, :Type

        def initialize(name=nil, type=nil)
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 有效期
      class Period < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 实例规格信息(influxdb)
      class Spec < TencentCloud::Common::AbstractModel
        # @param PayMode: 1：包年包月、2：按小时计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param RequestUnit: 请求单元，为0则表示走资源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestUnit: Integer
        # @param CpuLimit: CPU 核数最大限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuLimit: Float
        # @param MemoryLimit: 内存 最大限制(Gi)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryLimit: Float
        # @param DiskLimit: 磁盘 最大限制(Gi)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskLimit: Integer
        # @param Shards: 业务分片数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shards: Integer
        # @param Replicas: 业务节点数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer

        attr_accessor :PayMode, :RequestUnit, :CpuLimit, :MemoryLimit, :DiskLimit, :Shards, :Replicas

        def initialize(paymode=nil, requestunit=nil, cpulimit=nil, memorylimit=nil, disklimit=nil, shards=nil, replicas=nil)
          @PayMode = paymode
          @RequestUnit = requestunit
          @CpuLimit = cpulimit
          @MemoryLimit = memorylimit
          @DiskLimit = disklimit
          @Shards = shards
          @Replicas = replicas
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @RequestUnit = params['RequestUnit']
          @CpuLimit = params['CpuLimit']
          @MemoryLimit = params['MemoryLimit']
          @DiskLimit = params['DiskLimit']
          @Shards = params['Shards']
          @Replicas = params['Replicas']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 值
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

      # 产品内部特性
      class Tenant < TencentCloud::Common::AbstractModel
        # @param IsPasswordEncrypted: 密码是否已加密
        # @type IsPasswordEncrypted: Boolean

        attr_accessor :IsPasswordEncrypted

        def initialize(ispasswordencrypted=nil)
          @IsPasswordEncrypted = ispasswordencrypted
        end

        def deserialize(params)
          @IsPasswordEncrypted = params['IsPasswordEncrypted']
        end
      end

    end
  end
end

