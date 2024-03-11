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
  module Dbdc
    module V20201029
      # DB实例详情
      class DBInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: DB实例Id
        # @type InstanceId: String
        # @param InstanceName: DB实例名称
        # @type InstanceName: String
        # @param Status: DB实例状态,-1:已隔离, 0:创建中, 1:流程中, 2:运行中, 3:未初始化
        # @type Status: Integer
        # @param StatusDesc: DB实例状态描述,-1:已隔离, 0:创建中, 1:流程中, 2:运行中, 3:未初始化
        # @type StatusDesc: String
        # @param DbVersion: DB实例版本
        # @type DbVersion: String
        # @param Vip: Vip信息
        # @type Vip: String
        # @param Vport: Vip使用的端口号
        # @type Vport: Integer
        # @param UniqueVpcId: 字符串型的私有网络ID
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 字符串型的私有网络子网ID
        # @type UniqueSubnetId: String
        # @param Shard: 是否为分布式版本,0:否,1:是
        # @type Shard: Integer
        # @param NodeNum: DB实例节点数
        # @type NodeNum: Integer
        # @param Cpu: CPU规格(单位:核数)
        # @type Cpu: Integer
        # @param Memory: 内存规格(单位:GB)
        # @type Memory: Integer
        # @param Disk: 磁盘规格(单位:GB)
        # @type Disk: Integer
        # @param ShardNum: 分布式类型的实例的分片数
        # @type ShardNum: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param DbHosts: Db所在主机列表, 格式: m1,s1|m2,s2
        # @type DbHosts: String
        # @param HostRole: 主机角色, 1:主, 2:从, 3:主+从
        # @type HostRole: Integer
        # @param DbEngine: DB引擎，MySQL,Percona,MariaDB
        # @type DbEngine: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :InstanceId, :InstanceName, :Status, :StatusDesc, :DbVersion, :Vip, :Vport, :UniqueVpcId, :UniqueSubnetId, :Shard, :NodeNum, :Cpu, :Memory, :Disk, :ShardNum, :Region, :Zone, :DbHosts, :HostRole, :DbEngine, :CreateTime

        def initialize(instanceid=nil, instancename=nil, status=nil, statusdesc=nil, dbversion=nil, vip=nil, vport=nil, uniquevpcid=nil, uniquesubnetid=nil, shard=nil, nodenum=nil, cpu=nil, memory=nil, disk=nil, shardnum=nil, region=nil, zone=nil, dbhosts=nil, hostrole=nil, dbengine=nil, createtime=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @StatusDesc = statusdesc
          @DbVersion = dbversion
          @Vip = vip
          @Vport = vport
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @Shard = shard
          @NodeNum = nodenum
          @Cpu = cpu
          @Memory = memory
          @Disk = disk
          @ShardNum = shardnum
          @Region = region
          @Zone = zone
          @DbHosts = dbhosts
          @HostRole = hostrole
          @DbEngine = dbengine
          @CreateTime = createtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbVersion = params['DbVersion']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @Shard = params['Shard']
          @NodeNum = params['NodeNum']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @ShardNum = params['ShardNum']
          @Region = params['Region']
          @Zone = params['Zone']
          @DbHosts = params['DbHosts']
          @HostRole = params['HostRole']
          @DbEngine = params['DbEngine']
          @CreateTime = params['CreateTime']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param HostId: 独享集群主机Id
        # @type HostId: String
        # @param Limit: 分页返回数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param ShardType: 实例类型,0:mariadb, 1:tdsql
        # @type ShardType: Array

        attr_accessor :InstanceId, :HostId, :Limit, :Offset, :ShardType

        def initialize(instanceid=nil, hostid=nil, limit=nil, offset=nil, shardtype=nil)
          @InstanceId = instanceid
          @HostId = hostid
          @Limit = limit
          @Offset = offset
          @ShardType = shardtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @HostId = params['HostId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ShardType = params['ShardType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 独享集群内的DB实例列表
        # @type Instances: Array
        # @param TotalCount: 独享集群内的DB实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId

        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              dbinstancedetail_tmp = DBInstanceDetail.new
              dbinstancedetail_tmp.deserialize(i)
              @Instances << dbinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostList请求参数结构体
      class DescribeHostListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param Limit: 分页返回数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param AssignStatus: 分配状态过滤，0-可分配，1-禁止分配
        # @type AssignStatus: Array

        attr_accessor :InstanceId, :Limit, :Offset, :AssignStatus

        def initialize(instanceid=nil, limit=nil, offset=nil, assignstatus=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @AssignStatus = assignstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AssignStatus = params['AssignStatus']
        end
      end

      # DescribeHostList返回参数结构体
      class DescribeHostListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 主机总数
        # @type TotalCount: Integer
        # @param Hosts: 主机详情
        # @type Hosts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Hosts, :RequestId

        def initialize(totalcount=nil, hosts=nil, requestid=nil)
          @TotalCount = totalcount
          @Hosts = hosts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Hosts'].nil?
            @Hosts = []
            params['Hosts'].each do |i|
              hostdetail_tmp = HostDetail.new
              hostdetail_tmp.deserialize(i)
              @Hosts << hostdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 独享集群详情
      class DescribeInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param InstanceName: 独享集群实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param ProductId: 产品ID, 0:CDB, 1:TDSQL
        # @type ProductId: Integer
        # @param Type: 集群类型, 0:公有云, 1:金融围笼, 2:CDC集群
        # @type Type: Integer
        # @param HostType: 主机类型, 0:物理机, 1:CVM机型, 2:CDC机型
        # @type HostType: Integer
        # @param AutoRenewFlag: 自动续费标志, 0:未设置, 1:自动续费, 2:到期不续费
        # @type AutoRenewFlag: Integer
        # @param Status: 集群状态
        # @type Status: Integer
        # @param StatusDesc: 集群状态描述
        # @type StatusDesc: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param HostNum: 主机数
        # @type HostNum: Integer
        # @param DbNum: DB实例数
        # @type DbNum: Integer
        # @param AssignStrategy: 分配策略, 0:紧凑, 1:均匀
        # @type AssignStrategy: Integer
        # @param CpuSpec: 总主机CPU(单位:核数)
        # @type CpuSpec: Integer
        # @param CpuAssigned: 总已分配CPU(单位:核数)
        # @type CpuAssigned: Integer
        # @param CpuAssignable: 总可分配CPU(单位:核数)
        # @type CpuAssignable: Integer
        # @param MemorySpec: 总主机内存(单位:GB)
        # @type MemorySpec: Integer
        # @param MemoryAssigned: 总已分配内存(单位:GB)
        # @type MemoryAssigned: Integer
        # @param MemoryAssignable: 总可分配内存(单位:GB)
        # @type MemoryAssignable: Integer
        # @param DiskSpec: 总机器磁盘(单位:GB)
        # @type DiskSpec: Integer
        # @param DiskAssigned: 总已分配磁盘(单位:GB)
        # @type DiskAssigned: Integer
        # @param DiskAssignable: 总可分配磁盘(单位:GB)
        # @type DiskAssignable: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param FenceId: 金融围笼ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FenceId: String
        # @param ClusterId: 所属集群ID(默认集群为空)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :InstanceId, :InstanceName, :Region, :ProductId, :Type, :HostType, :AutoRenewFlag, :Status, :StatusDesc, :CreateTime, :PeriodEndTime, :HostNum, :DbNum, :AssignStrategy, :CpuSpec, :CpuAssigned, :CpuAssignable, :MemorySpec, :MemoryAssigned, :MemoryAssignable, :DiskSpec, :DiskAssigned, :DiskAssignable, :Zone, :FenceId, :ClusterId

        def initialize(instanceid=nil, instancename=nil, region=nil, productid=nil, type=nil, hosttype=nil, autorenewflag=nil, status=nil, statusdesc=nil, createtime=nil, periodendtime=nil, hostnum=nil, dbnum=nil, assignstrategy=nil, cpuspec=nil, cpuassigned=nil, cpuassignable=nil, memoryspec=nil, memoryassigned=nil, memoryassignable=nil, diskspec=nil, diskassigned=nil, diskassignable=nil, zone=nil, fenceid=nil, clusterid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @ProductId = productid
          @Type = type
          @HostType = hosttype
          @AutoRenewFlag = autorenewflag
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PeriodEndTime = periodendtime
          @HostNum = hostnum
          @DbNum = dbnum
          @AssignStrategy = assignstrategy
          @CpuSpec = cpuspec
          @CpuAssigned = cpuassigned
          @CpuAssignable = cpuassignable
          @MemorySpec = memoryspec
          @MemoryAssigned = memoryassigned
          @MemoryAssignable = memoryassignable
          @DiskSpec = diskspec
          @DiskAssigned = diskassigned
          @DiskAssignable = diskassignable
          @Zone = zone
          @FenceId = fenceid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @ProductId = params['ProductId']
          @Type = params['Type']
          @HostType = params['HostType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PeriodEndTime = params['PeriodEndTime']
          @HostNum = params['HostNum']
          @DbNum = params['DbNum']
          @AssignStrategy = params['AssignStrategy']
          @CpuSpec = params['CpuSpec']
          @CpuAssigned = params['CpuAssigned']
          @CpuAssignable = params['CpuAssignable']
          @MemorySpec = params['MemorySpec']
          @MemoryAssigned = params['MemoryAssigned']
          @MemoryAssignable = params['MemoryAssignable']
          @DiskSpec = params['DiskSpec']
          @DiskAssigned = params['DiskAssigned']
          @DiskAssignable = params['DiskAssignable']
          @Zone = params['Zone']
          @FenceId = params['FenceId']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeInstanceDetail请求参数结构体
      class DescribeInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceDetail返回参数结构体
      class DescribeInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param InstanceName: 独享集群实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param ProductId: 产品ID, 0:CDB, 1:TDSQL
        # @type ProductId: Integer
        # @param Type: 集群类型, 0:公有云, 1:金融围笼
        # @type Type: Integer
        # @param HostType: 主机类型, 0:物理机, 1:cvm本地盘, 2:cvm云盘
        # @type HostType: Integer
        # @param AutoRenewFlag: 自动续费标志, 0:未设置, 1:自动续费, 2:到期不续费
        # @type AutoRenewFlag: Integer
        # @param Status: 集群状态
        # @type Status: Integer
        # @param StatusDesc: 集群状态描述
        # @type StatusDesc: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param HostNum: 主机数
        # @type HostNum: Integer
        # @param DbNum: Db实例数
        # @type DbNum: Integer
        # @param AssignStrategy: 分配策略, 0:紧凑, 1:均匀
        # @type AssignStrategy: Integer
        # @param CpuSpec: 总主机CPU(单位:核)
        # @type CpuSpec: Integer
        # @param CpuAssigned: 总已分配CPU(单位:核)
        # @type CpuAssigned: Integer
        # @param CpuAssignable: 总可分配CPU(单位:核)
        # @type CpuAssignable: Integer
        # @param MemorySpec: 总主机内存(单位:GB)
        # @type MemorySpec: Integer
        # @param MemoryAssigned: 总已分配内存(单位:GB)
        # @type MemoryAssigned: Integer
        # @param MemoryAssignable: 总可分配内存(单位:GB)
        # @type MemoryAssignable: Integer
        # @param DiskSpec: 总机器磁盘(单位:GB)
        # @type DiskSpec: Integer
        # @param DiskAssigned: 总已分配磁盘(单位:GB)
        # @type DiskAssigned: Integer
        # @param DiskAssignable: 总可分配磁盘(单位:GB)
        # @type DiskAssignable: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param FenceId: 金融围笼ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FenceId: String
        # @param ClusterId: 所属集群ID(默认集群为空)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :Region, :ProductId, :Type, :HostType, :AutoRenewFlag, :Status, :StatusDesc, :CreateTime, :PeriodEndTime, :HostNum, :DbNum, :AssignStrategy, :CpuSpec, :CpuAssigned, :CpuAssignable, :MemorySpec, :MemoryAssigned, :MemoryAssignable, :DiskSpec, :DiskAssigned, :DiskAssignable, :Zone, :FenceId, :ClusterId, :RequestId

        def initialize(instanceid=nil, instancename=nil, region=nil, productid=nil, type=nil, hosttype=nil, autorenewflag=nil, status=nil, statusdesc=nil, createtime=nil, periodendtime=nil, hostnum=nil, dbnum=nil, assignstrategy=nil, cpuspec=nil, cpuassigned=nil, cpuassignable=nil, memoryspec=nil, memoryassigned=nil, memoryassignable=nil, diskspec=nil, diskassigned=nil, diskassignable=nil, zone=nil, fenceid=nil, clusterid=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @ProductId = productid
          @Type = type
          @HostType = hosttype
          @AutoRenewFlag = autorenewflag
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PeriodEndTime = periodendtime
          @HostNum = hostnum
          @DbNum = dbnum
          @AssignStrategy = assignstrategy
          @CpuSpec = cpuspec
          @CpuAssigned = cpuassigned
          @CpuAssignable = cpuassignable
          @MemorySpec = memoryspec
          @MemoryAssigned = memoryassigned
          @MemoryAssignable = memoryassignable
          @DiskSpec = diskspec
          @DiskAssigned = diskassigned
          @DiskAssignable = diskassignable
          @Zone = zone
          @FenceId = fenceid
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @ProductId = params['ProductId']
          @Type = params['Type']
          @HostType = params['HostType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PeriodEndTime = params['PeriodEndTime']
          @HostNum = params['HostNum']
          @DbNum = params['DbNum']
          @AssignStrategy = params['AssignStrategy']
          @CpuSpec = params['CpuSpec']
          @CpuAssigned = params['CpuAssigned']
          @CpuAssignable = params['CpuAssignable']
          @MemorySpec = params['MemorySpec']
          @MemoryAssigned = params['MemoryAssigned']
          @MemoryAssignable = params['MemoryAssignable']
          @DiskSpec = params['DiskSpec']
          @DiskAssigned = params['DiskAssigned']
          @DiskAssignable = params['DiskAssignable']
          @Zone = params['Zone']
          @FenceId = params['FenceId']
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页返回数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param OrderBy: 排序字段，createTime,instancename两者之一
        # @type OrderBy: String
        # @param SortBy: 排序规则，desc,asc两者之一
        # @type SortBy: String
        # @param ProductId: 按产品过滤，0:CDB, 1:TDSQL
        # @type ProductId: Array
        # @param InstanceId: 按实例ID过滤
        # @type InstanceId: Array
        # @param InstanceName: 按实例名称过滤
        # @type InstanceName: Array
        # @param FenceId: 按金融围笼ID过滤
        # @type FenceId: Array
        # @param Status: 按实例状态过滤, -1:已隔离, 0:创建中, 1:运行中, 2:扩容中, 3:删除中
        # @type Status: Array
        # @param ClusterId: 按所属集群ID过滤
        # @type ClusterId: Array

        attr_accessor :Limit, :Offset, :OrderBy, :SortBy, :ProductId, :InstanceId, :InstanceName, :FenceId, :Status, :ClusterId

        def initialize(limit=nil, offset=nil, orderby=nil, sortby=nil, productid=nil, instanceid=nil, instancename=nil, fenceid=nil, status=nil, clusterid=nil)
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @SortBy = sortby
          @ProductId = productid
          @InstanceId = instanceid
          @InstanceName = instancename
          @FenceId = fenceid
          @Status = status
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @SortBy = params['SortBy']
          @ProductId = params['ProductId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @FenceId = params['FenceId']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeInstanceList返回参数结构体
      class DescribeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 独享集群列表
        # @type Instances: Array
        # @param TotalCount: 独享集群实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId

        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              describeinstancedetail_tmp = DescribeInstanceDetail.new
              describeinstancedetail_tmp.deserialize(i)
              @Instances << describeinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceTypes: 集群类型: 0 一主一备, 1 一主两备...N-1 一主N备
        # @type InstanceTypes: Array
        # @param ProductIds: 产品ID:  0 MYSQL，1 TDSQL
        # @type ProductIds: Array
        # @param InstanceIds: 集群uuid: 如 dbdc-q810131s
        # @type InstanceIds: Array
        # @param FenceFlag: 是否按金融围笼标志搜索
        # @type FenceFlag: Boolean
        # @param InstanceName: 按实例名字模糊匹配
        # @type InstanceName: String
        # @param PageSize: 每页数目, 整型
        # @type PageSize: Integer
        # @param PageNumber: 页码, 整型
        # @type PageNumber: Integer
        # @param OrderBy: 排序字段，枚举：createtime,groupname
        # @type OrderBy: String
        # @param OrderByType: 排序方式: asc升序, desc降序
        # @type OrderByType: String
        # @param InstanceStatus: 集群状态: -2 已删除, -1 已隔离, 0 创建中, 1 运行中, 2 扩容中, 3 删除中
        # @type InstanceStatus: Integer

        attr_accessor :InstanceTypes, :ProductIds, :InstanceIds, :FenceFlag, :InstanceName, :PageSize, :PageNumber, :OrderBy, :OrderByType, :InstanceStatus

        def initialize(instancetypes=nil, productids=nil, instanceids=nil, fenceflag=nil, instancename=nil, pagesize=nil, pagenumber=nil, orderby=nil, orderbytype=nil, instancestatus=nil)
          @InstanceTypes = instancetypes
          @ProductIds = productids
          @InstanceIds = instanceids
          @FenceFlag = fenceflag
          @InstanceName = instancename
          @PageSize = pagesize
          @PageNumber = pagenumber
          @OrderBy = orderby
          @OrderByType = orderbytype
          @InstanceStatus = instancestatus
        end

        def deserialize(params)
          @InstanceTypes = params['InstanceTypes']
          @ProductIds = params['ProductIds']
          @InstanceIds = params['InstanceIds']
          @FenceFlag = params['FenceFlag']
          @InstanceName = params['InstanceName']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @InstanceStatus = params['InstanceStatus']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群数量
        # @type TotalCount: Integer
        # @param Instances: 集群扩展信息
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId

        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceexpand_tmp = InstanceExpand.new
              instanceexpand_tmp.deserialize(i)
              @Instances << instanceexpand_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: Integer
        # @param DeviceNo: 设备No
        # @type DeviceNo: String
        # @param DevClass: 设备类型
        # @type DevClass: String
        # @param MaxMemory: 设备总内存，单位GB
        # @type MaxMemory: Float
        # @param MaxDisk: 设备总磁盘，单位GB
        # @type MaxDisk: Float
        # @param RestMemory: 设备剩余内存，单位GB
        # @type RestMemory: Float
        # @param RestDisk: 设备剩余磁盘，单位GB
        # @type RestDisk: Float
        # @param RawDeviceNum: 设备机器个数
        # @type RawDeviceNum: Integer
        # @param InstanceNum: 数据库实例个数
        # @type InstanceNum: Integer

        attr_accessor :DeviceId, :DeviceNo, :DevClass, :MaxMemory, :MaxDisk, :RestMemory, :RestDisk, :RawDeviceNum, :InstanceNum

        def initialize(deviceid=nil, deviceno=nil, devclass=nil, maxmemory=nil, maxdisk=nil, restmemory=nil, restdisk=nil, rawdevicenum=nil, instancenum=nil)
          @DeviceId = deviceid
          @DeviceNo = deviceno
          @DevClass = devclass
          @MaxMemory = maxmemory
          @MaxDisk = maxdisk
          @RestMemory = restmemory
          @RestDisk = restdisk
          @RawDeviceNum = rawdevicenum
          @InstanceNum = instancenum
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceNo = params['DeviceNo']
          @DevClass = params['DevClass']
          @MaxMemory = params['MaxMemory']
          @MaxDisk = params['MaxDisk']
          @RestMemory = params['RestMemory']
          @RestDisk = params['RestDisk']
          @RawDeviceNum = params['RawDeviceNum']
          @InstanceNum = params['InstanceNum']
        end
      end

      # 主机详情
      class HostDetail < TencentCloud::Common::AbstractModel
        # @param HostId: 主机Id
        # @type HostId: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 主机状态
        # @type Status: Integer
        # @param AssignStatus: 分配DB实例状态,0:可分配,1:不可分配
        # @type AssignStatus: Integer
        # @param HostType: 主机类型, 0:物理机, 1:cvm本地盘, 2:cvm云盘
        # @type HostType: Integer
        # @param DbNum: DB实例数
        # @type DbNum: Integer
        # @param CpuSpec: 主机CPU(单位:核数)
        # @type CpuSpec: Integer
        # @param CpuAssigned: 已分配CPU(单位:核数)
        # @type CpuAssigned: Integer
        # @param CpuAssignable: 可分配CPU(单位:核数)
        # @type CpuAssignable: Integer
        # @param MemorySpec: 主机内存(单位:GB)
        # @type MemorySpec: Integer
        # @param MemoryAssigned: 已分配内存(单位:GB)
        # @type MemoryAssigned: Integer
        # @param MemoryAssignable: 可分配内存(单位:GB)
        # @type MemoryAssignable: Integer
        # @param DiskSpec: 主机磁盘(单位:GB)
        # @type DiskSpec: Integer
        # @param DiskAssigned: 已分配磁盘(单位:GB)
        # @type DiskAssigned: Integer
        # @param DiskAssignable: 可分配磁盘(GB)
        # @type DiskAssignable: Integer
        # @param CpuRatio: CPU分配比
        # @type CpuRatio: Float
        # @param MemoryRatio: 内存分配比
        # @type MemoryRatio: Float
        # @param DiskRatio: 磁盘分配比
        # @type DiskRatio: Float
        # @param MachineName: 机型名称
        # @type MachineName: String
        # @param MachineType: 机型类别
        # @type MachineType: String
        # @param PidTag: 计费标签
        # @type PidTag: String
        # @param Pid: 计费ID
        # @type Pid: Integer
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String

        attr_accessor :HostId, :HostName, :Zone, :Status, :AssignStatus, :HostType, :DbNum, :CpuSpec, :CpuAssigned, :CpuAssignable, :MemorySpec, :MemoryAssigned, :MemoryAssignable, :DiskSpec, :DiskAssigned, :DiskAssignable, :CpuRatio, :MemoryRatio, :DiskRatio, :MachineName, :MachineType, :PidTag, :Pid, :InstanceId

        def initialize(hostid=nil, hostname=nil, zone=nil, status=nil, assignstatus=nil, hosttype=nil, dbnum=nil, cpuspec=nil, cpuassigned=nil, cpuassignable=nil, memoryspec=nil, memoryassigned=nil, memoryassignable=nil, diskspec=nil, diskassigned=nil, diskassignable=nil, cpuratio=nil, memoryratio=nil, diskratio=nil, machinename=nil, machinetype=nil, pidtag=nil, pid=nil, instanceid=nil)
          @HostId = hostid
          @HostName = hostname
          @Zone = zone
          @Status = status
          @AssignStatus = assignstatus
          @HostType = hosttype
          @DbNum = dbnum
          @CpuSpec = cpuspec
          @CpuAssigned = cpuassigned
          @CpuAssignable = cpuassignable
          @MemorySpec = memoryspec
          @MemoryAssigned = memoryassigned
          @MemoryAssignable = memoryassignable
          @DiskSpec = diskspec
          @DiskAssigned = diskassigned
          @DiskAssignable = diskassignable
          @CpuRatio = cpuratio
          @MemoryRatio = memoryratio
          @DiskRatio = diskratio
          @MachineName = machinename
          @MachineType = machinetype
          @PidTag = pidtag
          @Pid = pid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @HostId = params['HostId']
          @HostName = params['HostName']
          @Zone = params['Zone']
          @Status = params['Status']
          @AssignStatus = params['AssignStatus']
          @HostType = params['HostType']
          @DbNum = params['DbNum']
          @CpuSpec = params['CpuSpec']
          @CpuAssigned = params['CpuAssigned']
          @CpuAssignable = params['CpuAssignable']
          @MemorySpec = params['MemorySpec']
          @MemoryAssigned = params['MemoryAssigned']
          @MemoryAssignable = params['MemoryAssignable']
          @DiskSpec = params['DiskSpec']
          @DiskAssigned = params['DiskAssigned']
          @DiskAssignable = params['DiskAssignable']
          @CpuRatio = params['CpuRatio']
          @MemoryRatio = params['MemoryRatio']
          @DiskRatio = params['DiskRatio']
          @MachineName = params['MachineName']
          @MachineType = params['MachineType']
          @PidTag = params['PidTag']
          @Pid = params['Pid']
          @InstanceId = params['InstanceId']
        end
      end

      # 集群容量信息。
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param Status: 集群状态，0：运行中，1：不在运行
        # @type Status: Integer
        # @param ReadWriteTotalLeaveMemory: 读写集群剩余内存容量，单位GB
        # @type ReadWriteTotalLeaveMemory: Float
        # @param ReadWriteTotalLeaveDisk: 读写集群剩余磁盘容量，单位GB
        # @type ReadWriteTotalLeaveDisk: Float
        # @param ReadWriteTotalMemory: 读写集群总内存容量，单位GB
        # @type ReadWriteTotalMemory: Float
        # @param ReadWriteTotalDisk: 读写集群总磁盘容量，单位GB
        # @type ReadWriteTotalDisk: Float
        # @param ReadOnlyTotalLeaveMemory: 只读集群剩余内存容量，单位GB
        # @type ReadOnlyTotalLeaveMemory: Float
        # @param ReadOnlyTotalLeaveDisk: 只读集群剩余磁盘容量，单位GB
        # @type ReadOnlyTotalLeaveDisk: Float
        # @param ReadOnlyTotalMemory: 只读集群总内存容量，单位GB
        # @type ReadOnlyTotalMemory: Float
        # @param ReadOnlyTotalDisk: 只读集群总磁盘容量，单位GB
        # @type ReadOnlyTotalDisk: Float
        # @param InstanceDeviceInfos: 集群设备详情
        # @type InstanceDeviceInfos: Array

        attr_accessor :Status, :ReadWriteTotalLeaveMemory, :ReadWriteTotalLeaveDisk, :ReadWriteTotalMemory, :ReadWriteTotalDisk, :ReadOnlyTotalLeaveMemory, :ReadOnlyTotalLeaveDisk, :ReadOnlyTotalMemory, :ReadOnlyTotalDisk, :InstanceDeviceInfos

        def initialize(status=nil, readwritetotalleavememory=nil, readwritetotalleavedisk=nil, readwritetotalmemory=nil, readwritetotaldisk=nil, readonlytotalleavememory=nil, readonlytotalleavedisk=nil, readonlytotalmemory=nil, readonlytotaldisk=nil, instancedeviceinfos=nil)
          @Status = status
          @ReadWriteTotalLeaveMemory = readwritetotalleavememory
          @ReadWriteTotalLeaveDisk = readwritetotalleavedisk
          @ReadWriteTotalMemory = readwritetotalmemory
          @ReadWriteTotalDisk = readwritetotaldisk
          @ReadOnlyTotalLeaveMemory = readonlytotalleavememory
          @ReadOnlyTotalLeaveDisk = readonlytotalleavedisk
          @ReadOnlyTotalMemory = readonlytotalmemory
          @ReadOnlyTotalDisk = readonlytotaldisk
          @InstanceDeviceInfos = instancedeviceinfos
        end

        def deserialize(params)
          @Status = params['Status']
          @ReadWriteTotalLeaveMemory = params['ReadWriteTotalLeaveMemory']
          @ReadWriteTotalLeaveDisk = params['ReadWriteTotalLeaveDisk']
          @ReadWriteTotalMemory = params['ReadWriteTotalMemory']
          @ReadWriteTotalDisk = params['ReadWriteTotalDisk']
          @ReadOnlyTotalLeaveMemory = params['ReadOnlyTotalLeaveMemory']
          @ReadOnlyTotalLeaveDisk = params['ReadOnlyTotalLeaveDisk']
          @ReadOnlyTotalMemory = params['ReadOnlyTotalMemory']
          @ReadOnlyTotalDisk = params['ReadOnlyTotalDisk']
          unless params['InstanceDeviceInfos'].nil?
            @InstanceDeviceInfos = []
            params['InstanceDeviceInfos'].each do |i|
              instancedeviceinfo_tmp = InstanceDeviceInfo.new
              instancedeviceinfo_tmp.deserialize(i)
              @InstanceDeviceInfos << instancedeviceinfo_tmp
            end
          end
        end
      end

      # 集群设备组信息。
      class InstanceDeviceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ReadWriteDevice: 读写设备组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadWriteDevice: Array
        # @param ReadOnlyDevice: 只读设备组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnlyDevice: Array
        # @param FreeDevice: 空闲设备组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeDevice: Array

        attr_accessor :InstanceId, :ReadWriteDevice, :ReadOnlyDevice, :FreeDevice

        def initialize(instanceid=nil, readwritedevice=nil, readonlydevice=nil, freedevice=nil)
          @InstanceId = instanceid
          @ReadWriteDevice = readwritedevice
          @ReadOnlyDevice = readonlydevice
          @FreeDevice = freedevice
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ReadWriteDevice'].nil?
            @ReadWriteDevice = []
            params['ReadWriteDevice'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @ReadWriteDevice << deviceinfo_tmp
            end
          end
          unless params['ReadOnlyDevice'].nil?
            @ReadOnlyDevice = []
            params['ReadOnlyDevice'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @ReadOnlyDevice << deviceinfo_tmp
            end
          end
          unless params['FreeDevice'].nil?
            @FreeDevice = []
            params['FreeDevice'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @FreeDevice << deviceinfo_tmp
            end
          end
        end
      end

      # 集群扩展信息。
      class InstanceExpand < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param InstanceName: 集群名称
        # @type InstanceName: String
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param InstanceType: 集群类型： 0：一主一备，1：一主两备
        # @type InstanceType: Integer
        # @param InstanceStatus: 集群状态: 0 集群创建中, 1 集群有效, 2 集群扩容中, 3 集群删除中, 4 集群缩容中 -1 集群已隔离 -2 集群已删除
        # @type InstanceStatus: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AutoRenewFlag: 实例自动续费标识： 0正常续费 1自动续费 2到期不续费
        # @type AutoRenewFlag: Integer
        # @param Machine: 机型
        # @type Machine: String
        # @param PeriodEndTime: 过期时间
        # @type PeriodEndTime: String
        # @param InstanceDetail: 集群信息
        # @type InstanceDetail: :class:`Tencentcloud::Dbdc.v20201029.models.InstanceDetail`
        # @param Pid: 计费侧的产品ID
        # @type Pid: Integer

        attr_accessor :InstanceId, :InstanceName, :AppId, :Region, :Zone, :InstanceType, :InstanceStatus, :CreateTime, :AutoRenewFlag, :Machine, :PeriodEndTime, :InstanceDetail, :Pid

        def initialize(instanceid=nil, instancename=nil, appid=nil, region=nil, zone=nil, instancetype=nil, instancestatus=nil, createtime=nil, autorenewflag=nil, machine=nil, periodendtime=nil, instancedetail=nil, pid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Region = region
          @Zone = zone
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @CreateTime = createtime
          @AutoRenewFlag = autorenewflag
          @Machine = machine
          @PeriodEndTime = periodendtime
          @InstanceDetail = instancedetail
          @Pid = pid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Region = params['Region']
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @CreateTime = params['CreateTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Machine = params['Machine']
          @PeriodEndTime = params['PeriodEndTime']
          unless params['InstanceDetail'].nil?
            @InstanceDetail = InstanceDetail.new
            @InstanceDetail.deserialize(params['InstanceDetail'])
          end
          @Pid = params['Pid']
        end
      end

      # ModifyInstanceName请求参数结构体
      class ModifyInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param InstanceName: 独享集群实例名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyInstanceName返回参数结构体
      class ModifyInstanceNameResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

