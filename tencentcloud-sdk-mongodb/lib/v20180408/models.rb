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
  module Mongodb
    module V20180408
      # AssignProject请求参数结构体
      class AssignProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceIds: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :InstanceIds, :ProjectId
        
        def initialize(instanceids=nil, projectid=nil)
          @InstanceIds = instanceids
          @ProjectId = projectid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ProjectId = params['ProjectId']
        end
      end

      # AssignProject返回参数结构体
      class AssignProjectResponse < TencentCloud::Common::AbstractModel
        # @param FlowIds: 返回的异步任务ID列表
        # @type FlowIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowIds, :RequestId
        
        def initialize(flowids=nil, requestid=nil)
          @FlowIds = flowids
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          @RequestId = params['RequestId']
        end
      end

      # 客户端连接信息，包括客户端IP和连接数
      class ClientConnection < TencentCloud::Common::AbstractModel
        # @param IP: 连接的客户端IP
        # @type IP: String
        # @param Count: 对应客户端IP的连接数
        # @type Count: Integer

        attr_accessor :IP, :Count
        
        def initialize(ip=nil, count=nil)
          @IP = ip
          @Count = count
        end

        def deserialize(params)
          @IP = params['IP']
          @Count = params['Count']
        end
      end

      # CreateDBInstanceHour请求参数结构体
      class CreateDBInstanceHourRequest < TencentCloud::Common::AbstractModel
        # @param Memory: 实例内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param ReplicateSetNum: 副本集个数，1为单副本集实例，大于1为分片集群实例，最大不超过10
        # @type ReplicateSetNum: Integer
        # @param SecondaryNum: 每个副本集内从节点个数，目前只支持从节点数为2
        # @type SecondaryNum: Integer
        # @param EngineVersion: MongoDB引擎版本，值包括MONGO_3_WT 、MONGO_3_ROCKS和MONGO_36_WT
        # @type EngineVersion: String
        # @param Machine: 实例类型，GIO：高IO版；TGIO：高IO万兆
        # @type Machine: String
        # @param GoodsNum: 实例数量，默认值为1, 最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param InstanceRole: 实例角色，支持值包括：MASTER-表示主实例，DR-表示灾备实例，RO-表示只读实例
        # @type InstanceRole: String
        # @param InstanceType: 实例类型，REPLSET-副本集，SHARD-分片集群
        # @type InstanceType: String
        # @param Encrypt: 数据是否加密，当且仅当引擎版本为MONGO_3_ROCKS，可以选择加密
        # @type Encrypt: Integer
        # @param VpcId: 私有网络ID，如果不传则默认选择基础网络
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        # @type SubnetId: String
        # @param ProjectId: 项目ID，不填为默认项目
        # @type ProjectId: Integer
        # @param SecurityGroup: 安全组参数
        # @type SecurityGroup: Array

        attr_accessor :Memory, :Volume, :ReplicateSetNum, :SecondaryNum, :EngineVersion, :Machine, :GoodsNum, :Zone, :InstanceRole, :InstanceType, :Encrypt, :VpcId, :SubnetId, :ProjectId, :SecurityGroup
        
        def initialize(memory=nil, volume=nil, replicatesetnum=nil, secondarynum=nil, engineversion=nil, machine=nil, goodsnum=nil, zone=nil, instancerole=nil, instancetype=nil, encrypt=nil, vpcid=nil, subnetid=nil, projectid=nil, securitygroup=nil)
          @Memory = memory
          @Volume = volume
          @ReplicateSetNum = replicatesetnum
          @SecondaryNum = secondarynum
          @EngineVersion = engineversion
          @Machine = machine
          @GoodsNum = goodsnum
          @Zone = zone
          @InstanceRole = instancerole
          @InstanceType = instancetype
          @Encrypt = encrypt
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProjectId = projectid
          @SecurityGroup = securitygroup
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Volume = params['Volume']
          @ReplicateSetNum = params['ReplicateSetNum']
          @SecondaryNum = params['SecondaryNum']
          @EngineVersion = params['EngineVersion']
          @Machine = params['Machine']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @InstanceRole = params['InstanceRole']
          @InstanceType = params['InstanceType']
          @Encrypt = params['Encrypt']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @SecurityGroup = params['SecurityGroup']
        end
      end

      # CreateDBInstanceHour返回参数结构体
      class CreateDBInstanceHourResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
        # @type DealId: String
        # @param InstanceIds: 创建的实例ID列表
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :InstanceIds, :RequestId
        
        def initialize(dealid=nil, instanceids=nil, requestid=nil)
          @DealId = dealid
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstance请求参数结构体
      class CreateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param SecondaryNum: 每个副本集内从节点个数
        # @type SecondaryNum: Integer
        # @param Memory: 实例内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param MongoVersion: 版本号，当前支持 MONGO_3_WT、MONGO_3_ROCKS、MONGO_36_WT
        # @type MongoVersion: String
        # @param MachineCode: 机器类型，GIO：高IO版；TGIO：高IO万兆
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，默认值为1, 最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Zone: 实例所属区域名称，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param TimeSpan: 时长，购买月数
        # @type TimeSpan: Integer
        # @param Password: 实例密码
        # @type Password: String
        # @param ProjectId: 项目ID，不填为默认项目
        # @type ProjectId: Integer
        # @param SecurityGroup: 安全组参数
        # @type SecurityGroup: Array
        # @param UniqVpcId: 私有网络ID，如果不传则默认选择基础网络
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        # @type UniqSubnetId: String

        attr_accessor :SecondaryNum, :Memory, :Volume, :MongoVersion, :MachineCode, :GoodsNum, :Zone, :TimeSpan, :Password, :ProjectId, :SecurityGroup, :UniqVpcId, :UniqSubnetId
        
        def initialize(secondarynum=nil, memory=nil, volume=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, zone=nil, timespan=nil, password=nil, projectid=nil, securitygroup=nil, uniqvpcid=nil, uniqsubnetid=nil)
          @SecondaryNum = secondarynum
          @Memory = memory
          @Volume = volume
          @MongoVersion = mongoversion
          @MachineCode = machinecode
          @GoodsNum = goodsnum
          @Zone = zone
          @TimeSpan = timespan
          @Password = password
          @ProjectId = projectid
          @SecurityGroup = securitygroup
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
        end

        def deserialize(params)
          @SecondaryNum = params['SecondaryNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @MongoVersion = params['MongoVersion']
          @MachineCode = params['MachineCode']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @TimeSpan = params['TimeSpan']
          @Password = params['Password']
          @ProjectId = params['ProjectId']
          @SecurityGroup = params['SecurityGroup']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
        end
      end

      # CreateDBInstance返回参数结构体
      class CreateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
        # @type DealId: String
        # @param InstanceIds: 创建的实例ID列表
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :InstanceIds, :RequestId
        
        def initialize(dealid=nil, instanceids=nil, requestid=nil)
          @DealId = dealid
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientConnections请求参数结构体
      class DescribeClientConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeClientConnections返回参数结构体
      class DescribeClientConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param Clients: 客户端连接信息，包括客户端IP和对应IP的连接数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clients: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Clients, :RequestId
        
        def initialize(clients=nil, requestid=nil)
          @Clients = clients
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Clients'].nil?
            @Clients = []
            params['Clients'].each do |i|
              @Clients << ClientConnection.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceIds: Array
        # @param InstanceType: 实例类型，取值范围：0-所有实例,1-正式实例，2-临时实例, 3-只读实例，-1-正式实例+只读+灾备实例
        # @type InstanceType: Integer
        # @param ClusterType: 集群类型，取值范围：0-副本集实例，1-分片实例，-1-所有实例
        # @type ClusterType: Integer
        # @param Status: 实例状态，取值范围：0-待初始化，1-流程执行中，2-实例有效，-2-实例已过期
        # @type Status: Array
        # @param VpcId: 私有网络的ID，基础网络则不传该参数
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网ID，基础网络则不传该参数。入参设置该参数的同时，必须设置相应的VpcId
        # @type SubnetId: String
        # @param PayMode: 付费类型，取值范围：0-按量计费，1-包年包月，-1-按量计费+包年包月
        # @type PayMode: Integer
        # @param Limit: 单次请求返回的数量，最小值为1，最大值为100，默认值为20
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 返回结果集排序的字段，目前支持："ProjectId", "InstanceName", "CreateTime"，默认为升序排序
        # @type OrderBy: String
        # @param OrderByType: 返回结果集排序方式，目前支持："ASC"或者"DESC"
        # @type OrderByType: String

        attr_accessor :InstanceIds, :InstanceType, :ClusterType, :Status, :VpcId, :SubnetId, :PayMode, :Limit, :Offset, :OrderBy, :OrderByType
        
        def initialize(instanceids=nil, instancetype=nil, clustertype=nil, status=nil, vpcid=nil, subnetid=nil, paymode=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @InstanceIds = instanceids
          @InstanceType = instancetype
          @ClusterType = clustertype
          @Status = status
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceType = params['InstanceType']
          @ClusterType = params['ClusterType']
          @Status = params['Status']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数
        # @type TotalCount: Integer
        # @param InstanceDetails: 实例详细信息
        # @type InstanceDetails: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceDetails, :RequestId
        
        def initialize(totalcount=nil, instancedetails=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceDetails = instancedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceDetails'].nil?
            @InstanceDetails = []
            params['InstanceDetails'].each do |i|
              @InstanceDetails << MongoDBInstanceDetail.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLog请求参数结构体
      class DescribeSlowLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param StartTime: 慢日志起始时间，格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type StartTime: String
        # @param EndTime: 慢日志终止时间，格式：yyyy-mm-dd hh:mm:ss，如：2019-06-02 12:00:00。查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type EndTime: String
        # @param SlowMS: 慢日志执行时间阈值，返回执行时间超过该阈值的慢日志，单位为毫秒(ms)，最小为100毫秒。
        # @type SlowMS: Integer
        # @param Offset: 偏移量，最小值为0，最大值为10000，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，最小值为1，最大值为100，默认值为20。
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :SlowMS, :Offset, :Limit
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, slowms=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SlowMS = slowms
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SlowMS = params['SlowMS']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSlowLog返回参数结构体
      class DescribeSlowLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的慢查询日志总数。
        # @type TotalCount: Integer
        # @param SlowLogList: 符合查询条件的慢查询日志详情。
        # @type SlowLogList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowLogList, :RequestId
        
        def initialize(totalcount=nil, slowloglist=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowLogList = slowloglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SlowLogList = params['SlowLogList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpecInfo请求参数结构体
      class DescribeSpecInfoRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :Zone
        
        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # DescribeSpecInfo返回参数结构体
      class DescribeSpecInfoResponse < TencentCloud::Common::AbstractModel
        # @param SpecInfoList: 实例售卖规格信息列表
        # @type SpecInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecInfoList, :RequestId
        
        def initialize(specinfolist=nil, requestid=nil)
          @SpecInfoList = specinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecInfoList'].nil?
            @SpecInfoList = []
            params['SpecInfoList'].each do |i|
              @SpecInfoList << SpecificationInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例信息
      class MongoDBInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Region: 地域信息
        # @type Region: String

        attr_accessor :InstanceId, :Region
        
        def initialize(instanceid=nil, region=nil)
          @InstanceId = instanceid
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Region = params['Region']
        end
      end

      # 实例详情
      class MongoDBInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param PayMode: 付费类型，可能的返回值：1-包年包月；0-按量计费
        # @type PayMode: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param ClusterType: 集群类型，可能的返回值：0-副本集实例，1-分片实例，
        # @type ClusterType: Integer
        # @param Region: 地域信息
        # @type Region: String
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param NetType: 网络类型，可能的返回值：0-基础网络，1-私有网络
        # @type NetType: Integer
        # @param VpcId: 私有网络的ID
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网ID
        # @type SubnetId: String
        # @param Status: 实例状态，可能的返回值：0-待初始化，1-流程处理中，2-运行中，-2-实例已过期
        # @type Status: Integer
        # @param Vip: 实例IP
        # @type Vip: String
        # @param Vport: 端口号
        # @type Vport: Integer
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param DeadLine: 实例到期时间
        # @type DeadLine: String
        # @param MongoVersion: 实例版本信息
        # @type MongoVersion: String
        # @param Memory: 实例内存规格，单位为MB
        # @type Memory: Integer
        # @param Volume: 实例磁盘规格，单位为MB
        # @type Volume: Integer
        # @param CpuNum: 实例CPU核心数
        # @type CpuNum: Integer
        # @param MachineType: 实例机器类型
        # @type MachineType: String
        # @param SecondaryNum: 实例从节点数
        # @type SecondaryNum: Integer
        # @param ReplicationSetNum: 实例分片数
        # @type ReplicationSetNum: Integer
        # @param AutoRenewFlag: 实例自动续费标志，可能的返回值：0-手动续费，1-自动续费，2-确认不续费
        # @type AutoRenewFlag: Integer
        # @param UsedVolume: 已用容量，单位MB
        # @type UsedVolume: Integer
        # @param MaintenanceStart: 维护窗口起始时间
        # @type MaintenanceStart: String
        # @param MaintenanceEnd: 维护窗口结束时间
        # @type MaintenanceEnd: String
        # @param ReplicaSets: 分片信息
        # @type ReplicaSets: Array
        # @param ReadonlyInstances: 只读实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadonlyInstances: Array
        # @param StandbyInstances: 灾备实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandbyInstances: Array
        # @param CloneInstances: 临时实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneInstances: Array
        # @param RelatedInstance: 关联实例信息，对于正式实例，该字段表示它的临时实例信息；对于临时实例，则表示它的正式实例信息;如果为只读/灾备实例,则表示他的主实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedInstance: :class:`Tencentcloud::Mongodb.v20180408.models.MongoDBInstance`
        # @param Tags: 实例标签信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceVer: 实例标记
        # @type InstanceVer: Integer
        # @param ClusterVer: 实例标记
        # @type ClusterVer: Integer
        # @param Protocol: 协议信息，可能的返回值：1-mongodb，2-dynamodb
        # @type Protocol: Integer
        # @param InstanceType: 实例类型，可能的返回值，1-正式实例，2-临时实例，3-只读实例，4-灾备实例
        # @type InstanceType: Integer
        # @param InstanceStatusDesc: 实例状态描述
        # @type InstanceStatusDesc: String
        # @param RealInstanceId: 实例对应的物理实例ID，回档并替换过的实例有不同的InstanceId和RealInstanceId，从barad获取监控数据等场景下需要用物理id获取
        # @type RealInstanceId: String

        attr_accessor :InstanceId, :InstanceName, :PayMode, :ProjectId, :ClusterType, :Region, :Zone, :NetType, :VpcId, :SubnetId, :Status, :Vip, :Vport, :CreateTime, :DeadLine, :MongoVersion, :Memory, :Volume, :CpuNum, :MachineType, :SecondaryNum, :ReplicationSetNum, :AutoRenewFlag, :UsedVolume, :MaintenanceStart, :MaintenanceEnd, :ReplicaSets, :ReadonlyInstances, :StandbyInstances, :CloneInstances, :RelatedInstance, :Tags, :InstanceVer, :ClusterVer, :Protocol, :InstanceType, :InstanceStatusDesc, :RealInstanceId
        
        def initialize(instanceid=nil, instancename=nil, paymode=nil, projectid=nil, clustertype=nil, region=nil, zone=nil, nettype=nil, vpcid=nil, subnetid=nil, status=nil, vip=nil, vport=nil, createtime=nil, deadline=nil, mongoversion=nil, memory=nil, volume=nil, cpunum=nil, machinetype=nil, secondarynum=nil, replicationsetnum=nil, autorenewflag=nil, usedvolume=nil, maintenancestart=nil, maintenanceend=nil, replicasets=nil, readonlyinstances=nil, standbyinstances=nil, cloneinstances=nil, relatedinstance=nil, tags=nil, instancever=nil, clusterver=nil, protocol=nil, instancetype=nil, instancestatusdesc=nil, realinstanceid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @PayMode = paymode
          @ProjectId = projectid
          @ClusterType = clustertype
          @Region = region
          @Zone = zone
          @NetType = nettype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @Vip = vip
          @Vport = vport
          @CreateTime = createtime
          @DeadLine = deadline
          @MongoVersion = mongoversion
          @Memory = memory
          @Volume = volume
          @CpuNum = cpunum
          @MachineType = machinetype
          @SecondaryNum = secondarynum
          @ReplicationSetNum = replicationsetnum
          @AutoRenewFlag = autorenewflag
          @UsedVolume = usedvolume
          @MaintenanceStart = maintenancestart
          @MaintenanceEnd = maintenanceend
          @ReplicaSets = replicasets
          @ReadonlyInstances = readonlyinstances
          @StandbyInstances = standbyinstances
          @CloneInstances = cloneinstances
          @RelatedInstance = relatedinstance
          @Tags = tags
          @InstanceVer = instancever
          @ClusterVer = clusterver
          @Protocol = protocol
          @InstanceType = instancetype
          @InstanceStatusDesc = instancestatusdesc
          @RealInstanceId = realinstanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          @ProjectId = params['ProjectId']
          @ClusterType = params['ClusterType']
          @Region = params['Region']
          @Zone = params['Zone']
          @NetType = params['NetType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @CreateTime = params['CreateTime']
          @DeadLine = params['DeadLine']
          @MongoVersion = params['MongoVersion']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @CpuNum = params['CpuNum']
          @MachineType = params['MachineType']
          @SecondaryNum = params['SecondaryNum']
          @ReplicationSetNum = params['ReplicationSetNum']
          @AutoRenewFlag = params['AutoRenewFlag']
          @UsedVolume = params['UsedVolume']
          @MaintenanceStart = params['MaintenanceStart']
          @MaintenanceEnd = params['MaintenanceEnd']
          unless params['ReplicaSets'].nil?
            @ReplicaSets = []
            params['ReplicaSets'].each do |i|
              @ReplicaSets << MongodbShardInfo.new.deserialize(i)
            end
          end
          unless params['ReadonlyInstances'].nil?
            @ReadonlyInstances = []
            params['ReadonlyInstances'].each do |i|
              @ReadonlyInstances << MongoDBInstance.new.deserialize(i)
            end
          end
          unless params['StandbyInstances'].nil?
            @StandbyInstances = []
            params['StandbyInstances'].each do |i|
              @StandbyInstances << MongoDBInstance.new.deserialize(i)
            end
          end
          unless params['CloneInstances'].nil?
            @CloneInstances = []
            params['CloneInstances'].each do |i|
              @CloneInstances << MongoDBInstance.new.deserialize(i)
            end
          end
          unless params['RelatedInstance'].nil?
            @RelatedInstance = MongoDBInstance.new.deserialize(params['RelatedInstance'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << TagInfo.new.deserialize(i)
            end
          end
          @InstanceVer = params['InstanceVer']
          @ClusterVer = params['ClusterVer']
          @Protocol = params['Protocol']
          @InstanceType = params['InstanceType']
          @InstanceStatusDesc = params['InstanceStatusDesc']
          @RealInstanceId = params['RealInstanceId']
        end
      end

      # 实例分片详情
      class MongodbShardInfo < TencentCloud::Common::AbstractModel
        # @param UsedVolume: 分片已使用容量
        # @type UsedVolume: Float
        # @param ReplicaSetId: 分片ID
        # @type ReplicaSetId: String
        # @param ReplicaSetName: 分片名
        # @type ReplicaSetName: String
        # @param Memory: 分片内存规格，单位为MB
        # @type Memory: Integer
        # @param Volume: 分片磁盘规格，单位为MB
        # @type Volume: Integer
        # @param OplogSize: 分片Oplog大小，单位为MB
        # @type OplogSize: Integer
        # @param SecondaryNum: 分片从节点数
        # @type SecondaryNum: Integer
        # @param RealReplicaSetId: 分片物理ID
        # @type RealReplicaSetId: String

        attr_accessor :UsedVolume, :ReplicaSetId, :ReplicaSetName, :Memory, :Volume, :OplogSize, :SecondaryNum, :RealReplicaSetId
        
        def initialize(usedvolume=nil, replicasetid=nil, replicasetname=nil, memory=nil, volume=nil, oplogsize=nil, secondarynum=nil, realreplicasetid=nil)
          @UsedVolume = usedvolume
          @ReplicaSetId = replicasetid
          @ReplicaSetName = replicasetname
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
          @SecondaryNum = secondarynum
          @RealReplicaSetId = realreplicasetid
        end

        def deserialize(params)
          @UsedVolume = params['UsedVolume']
          @ReplicaSetId = params['ReplicaSetId']
          @ReplicaSetName = params['ReplicaSetName']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
          @SecondaryNum = params['SecondaryNum']
          @RealReplicaSetId = params['RealReplicaSetId']
        end
      end

      # RenameInstance请求参数结构体
      class RenameInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param NewName: 实例名称
        # @type NewName: String

        attr_accessor :InstanceId, :NewName
        
        def initialize(instanceid=nil, newname=nil)
          @InstanceId = instanceid
          @NewName = newname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NewName = params['NewName']
        end
      end

      # RenameInstance返回参数结构体
      class RenameInstanceResponse < TencentCloud::Common::AbstractModel
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

      # SetAutoRenew请求参数结构体
      class SetAutoRenewRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceIds: Array
        # @param AutoRenewFlag: 续费选项，取值范围：0-手动续费，1-自动续费，2-确认不续费
        # @type AutoRenewFlag: Integer

        attr_accessor :InstanceIds, :AutoRenewFlag
        
        def initialize(instanceids=nil, autorenewflag=nil)
          @InstanceIds = instanceids
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # SetAutoRenew返回参数结构体
      class SetAutoRenewResponse < TencentCloud::Common::AbstractModel
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

      # SetPassword请求参数结构体
      class SetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param UserName: 实例账户名称
        # @type UserName: String
        # @param Password: 实例新密码，至少包含字母、数字和字符（!@#%^*()）中的两种，长度为8-16个字符
        # @type Password: String

        attr_accessor :InstanceId, :UserName, :Password
        
        def initialize(instanceid=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # SetPassword返回参数结构体
      class SetPasswordResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 返回的异步任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # mongodb售卖规格
      class SpecItem < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格信息标识
        # @type SpecCode: String
        # @param Status: 规格有效标志，取值：0-停止售卖，1-开放售卖
        # @type Status: Integer
        # @param MachineType: 机器类型，取值：0-HIO，4-HIO10G
        # @type MachineType: String
        # @param Cpu: cpu核心数
        # @type Cpu: Integer
        # @param Memory: 内存规格，单位为MB
        # @type Memory: Integer
        # @param DefaultStorage: 默认磁盘规格，单位MB
        # @type DefaultStorage: Integer
        # @param MaxStorage: 最大磁盘规格，单位MB
        # @type MaxStorage: Integer
        # @param MinStorage: 最小磁盘规格，单位MB
        # @type MinStorage: Integer
        # @param Qps: 可承载qps信息
        # @type Qps: Integer
        # @param Conns: 连接数限制
        # @type Conns: Integer
        # @param MongoVersionCode: 实例mongodb版本信息
        # @type MongoVersionCode: String
        # @param MongoVersionValue: 实例mongodb版本号
        # @type MongoVersionValue: Integer
        # @param Version: 实例mongodb版本号（短）
        # @type Version: String
        # @param EngineName: 存储引擎
        # @type EngineName: String
        # @param ClusterType: 集群类型，取值：1-分片集群，0-副本集集群
        # @type ClusterType: Integer
        # @param MinNodeNum: 最小副本集从节点数
        # @type MinNodeNum: Integer
        # @param MaxNodeNum: 最大副本集从节点数
        # @type MaxNodeNum: Integer
        # @param MinReplicateSetNum: 最小分片数
        # @type MinReplicateSetNum: Integer
        # @param MaxReplicateSetNum: 最大分片数
        # @type MaxReplicateSetNum: Integer
        # @param MinReplicateSetNodeNum: 最小分片从节点数
        # @type MinReplicateSetNodeNum: Integer
        # @param MaxReplicateSetNodeNum: 最大分片从节点数
        # @type MaxReplicateSetNodeNum: Integer

        attr_accessor :SpecCode, :Status, :MachineType, :Cpu, :Memory, :DefaultStorage, :MaxStorage, :MinStorage, :Qps, :Conns, :MongoVersionCode, :MongoVersionValue, :Version, :EngineName, :ClusterType, :MinNodeNum, :MaxNodeNum, :MinReplicateSetNum, :MaxReplicateSetNum, :MinReplicateSetNodeNum, :MaxReplicateSetNodeNum
        
        def initialize(speccode=nil, status=nil, machinetype=nil, cpu=nil, memory=nil, defaultstorage=nil, maxstorage=nil, minstorage=nil, qps=nil, conns=nil, mongoversioncode=nil, mongoversionvalue=nil, version=nil, enginename=nil, clustertype=nil, minnodenum=nil, maxnodenum=nil, minreplicatesetnum=nil, maxreplicatesetnum=nil, minreplicatesetnodenum=nil, maxreplicatesetnodenum=nil)
          @SpecCode = speccode
          @Status = status
          @MachineType = machinetype
          @Cpu = cpu
          @Memory = memory
          @DefaultStorage = defaultstorage
          @MaxStorage = maxstorage
          @MinStorage = minstorage
          @Qps = qps
          @Conns = conns
          @MongoVersionCode = mongoversioncode
          @MongoVersionValue = mongoversionvalue
          @Version = version
          @EngineName = enginename
          @ClusterType = clustertype
          @MinNodeNum = minnodenum
          @MaxNodeNum = maxnodenum
          @MinReplicateSetNum = minreplicatesetnum
          @MaxReplicateSetNum = maxreplicatesetnum
          @MinReplicateSetNodeNum = minreplicatesetnodenum
          @MaxReplicateSetNodeNum = maxreplicatesetnodenum
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @Status = params['Status']
          @MachineType = params['MachineType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @DefaultStorage = params['DefaultStorage']
          @MaxStorage = params['MaxStorage']
          @MinStorage = params['MinStorage']
          @Qps = params['Qps']
          @Conns = params['Conns']
          @MongoVersionCode = params['MongoVersionCode']
          @MongoVersionValue = params['MongoVersionValue']
          @Version = params['Version']
          @EngineName = params['EngineName']
          @ClusterType = params['ClusterType']
          @MinNodeNum = params['MinNodeNum']
          @MaxNodeNum = params['MaxNodeNum']
          @MinReplicateSetNum = params['MinReplicateSetNum']
          @MaxReplicateSetNum = params['MaxReplicateSetNum']
          @MinReplicateSetNodeNum = params['MinReplicateSetNodeNum']
          @MaxReplicateSetNodeNum = params['MaxReplicateSetNodeNum']
        end
      end

      # 实例规格信息
      class SpecificationInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域信息
        # @type Region: String
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param SpecItems: 售卖规格信息
        # @type SpecItems: Array

        attr_accessor :Region, :Zone, :SpecItems
        
        def initialize(region=nil, zone=nil, specitems=nil)
          @Region = region
          @Zone = zone
          @SpecItems = specitems
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          unless params['SpecItems'].nil?
            @SpecItems = []
            params['SpecItems'].each do |i|
              @SpecItems << SpecItem.new.deserialize(i)
            end
          end
        end
      end

      # 实例标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签Key值
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

      # TerminateDBInstance请求参数结构体
      class TerminateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateDBInstance返回参数结构体
      class TerminateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 订单ID，表示注销实例成功
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId
        
        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeDBInstanceHour请求参数结构体
      class UpgradeDBInstanceHourRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5
        # @type InstanceId: String
        # @param Memory: 升级后的内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 升级后的硬盘大小，单位：GB
        # @type Volume: Integer
        # @param OplogSize: 升级后oplog的大小，单位：GB，默认为磁盘空间的10%，允许设置的最小值为磁盘的10%，最大值为磁盘的90%
        # @type OplogSize: Integer

        attr_accessor :InstanceId, :Memory, :Volume, :OplogSize
        
        def initialize(instanceid=nil, memory=nil, volume=nil, oplogsize=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
        end
      end

      # UpgradeDBInstanceHour返回参数结构体
      class UpgradeDBInstanceHourResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
        # @type DealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :RequestId
        
        def initialize(dealid=nil, requestid=nil)
          @DealId = dealid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeDBInstance请求参数结构体
      class UpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Memory: 升级后的内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 升级后的硬盘大小，单位：GB
        # @type Volume: Integer
        # @param OplogSize: 升级后oplog的大小，单位：GB，默认为磁盘空间的10%，允许设置的最小值为磁盘的10%，最大值为磁盘的90%
        # @type OplogSize: Integer

        attr_accessor :InstanceId, :Memory, :Volume, :OplogSize
        
        def initialize(instanceid=nil, memory=nil, volume=nil, oplogsize=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
        end
      end

      # UpgradeDBInstance返回参数结构体
      class UpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
        # @type DealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :RequestId
        
        def initialize(dealid=nil, requestid=nil)
          @DealId = dealid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

