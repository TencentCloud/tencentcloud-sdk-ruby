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
    module V20190725
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

      # 备份文件存储信息
      class BackupFile < TencentCloud::Common::AbstractModel
        # @param ReplicateSetId: 备份文件所属的副本集/分片ID
        # @type ReplicateSetId: String
        # @param File: 备份文件保存路径
        # @type File: String

        attr_accessor :ReplicateSetId, :File
        
        def initialize(replicatesetid=nil, file=nil)
          @ReplicateSetId = replicatesetid
          @File = file
        end

        def deserialize(params)
          @ReplicateSetId = params['ReplicateSetId']
          @File = params['File']
        end
      end

      # 备份信息
      class BackupInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param BackupType: 备份方式，0-自动备份，1-手动备份
        # @type BackupType: Integer
        # @param BackupName: 备份名称
        # @type BackupName: String
        # @param BackupDesc: 备份备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupDesc: String
        # @param BackupSize: 备份文件大小，单位KB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupSize: Integer
        # @param StartTime: 备份开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 备份状态，1-备份中，2-备份成功
        # @type Status: Integer
        # @param BackupMethod: 备份方法，0-逻辑备份，1-物理备份
        # @type BackupMethod: Integer

        attr_accessor :InstanceId, :BackupType, :BackupName, :BackupDesc, :BackupSize, :StartTime, :EndTime, :Status, :BackupMethod
        
        def initialize(instanceid=nil, backuptype=nil, backupname=nil, backupdesc=nil, backupsize=nil, starttime=nil, endtime=nil, status=nil, backupmethod=nil)
          @InstanceId = instanceid
          @BackupType = backuptype
          @BackupName = backupname
          @BackupDesc = backupdesc
          @BackupSize = backupsize
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @BackupMethod = backupmethod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupType = params['BackupType']
          @BackupName = params['BackupName']
          @BackupDesc = params['BackupDesc']
          @BackupSize = params['BackupSize']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @BackupMethod = params['BackupMethod']
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
        # @param ReplicateSetNum: 副本集个数，创建副本集实例时，该参数必须设置为1；创建分片实例时，具体参照查询云数据库的售卖规格返回参数
        # @type ReplicateSetNum: Integer
        # @param NodeNum: 每个副本集内节点个数，当前副本集节点数固定为3，分片从节点数可选，具体参照查询云数据库的售卖规格返回参数
        # @type NodeNum: Integer
        # @param MongoVersion: 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本
        # @type MongoVersion: String
        # @param MachineCode: 机器类型，HIO：高IO型；HIO10G：高IO万兆
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param ClusterType: 实例类型，REPLSET-副本集，SHARD-分片集群
        # @type ClusterType: String
        # @param VpcId: 私有网络ID，如果不设置该参数则默认选择基础网络
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        # @type SubnetId: String
        # @param Password: 实例密码，不设置该参数则需要在创建完成后通过设置密码接口初始化实例密码。密码必须是8-16位字符，且至少包含字母、数字和字符 !@#%^*() 中的两种
        # @type Password: String
        # @param ProjectId: 项目ID，不设置为默认项目
        # @type ProjectId: Integer
        # @param Tags: 实例标签信息
        # @type Tags: Array

        attr_accessor :Memory, :Volume, :ReplicateSetNum, :NodeNum, :MongoVersion, :MachineCode, :GoodsNum, :Zone, :ClusterType, :VpcId, :SubnetId, :Password, :ProjectId, :Tags
        
        def initialize(memory=nil, volume=nil, replicatesetnum=nil, nodenum=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, zone=nil, clustertype=nil, vpcid=nil, subnetid=nil, password=nil, projectid=nil, tags=nil)
          @Memory = memory
          @Volume = volume
          @ReplicateSetNum = replicatesetnum
          @NodeNum = nodenum
          @MongoVersion = mongoversion
          @MachineCode = machinecode
          @GoodsNum = goodsnum
          @Zone = zone
          @ClusterType = clustertype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @ProjectId = projectid
          @Tags = tags
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Volume = params['Volume']
          @ReplicateSetNum = params['ReplicateSetNum']
          @NodeNum = params['NodeNum']
          @MongoVersion = params['MongoVersion']
          @MachineCode = params['MachineCode']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @ClusterType = params['ClusterType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          @ProjectId = params['ProjectId']
          @Tags = params['Tags']
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
        # @param NodeNum: 每个副本集内节点个数，当前副本集节点数固定为3，分片从节点数可选，具体参照查询云数据库的售卖规格返回参数
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param MongoVersion: 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本
        # @type MongoVersion: String
        # @param GoodsNum: 实例数量, 最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Zone: 实例所属区域名称，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param Period: 实例时长，单位：月，可选值包括 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]
        # @type Period: Integer
        # @param MachineCode: 机器类型，HIO：高IO型；HIO10G：高IO万兆型
        # @type MachineCode: String
        # @param ClusterType: 实例类型，REPLSET-副本集，SHARD-分片集群
        # @type ClusterType: String
        # @param ReplicateSetNum: 副本集个数，创建副本集实例时，该参数必须设置为1；创建分片实例时，具体参照查询云数据库的售卖规格返回参数
        # @type ReplicateSetNum: Integer
        # @param ProjectId: 项目ID，不设置为默认项目
        # @type ProjectId: Integer
        # @param VpcId: 私有网络 ID，如果不传则默认选择基础网络，请使用 查询私有网络列表
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用 查询子网列表
        # @type SubnetId: String
        # @param Password: 实例密码，不设置该参数则需要在创建完成后通过设置密码接口初始化实例密码。密码必须是8-16位字符，且至少包含字母、数字和字符 !@#%^*() 中的两种
        # @type Password: String
        # @param Tags: 实例标签信息
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标记，可选值为：0 - 不自动续费；1 - 自动续费。默认为不自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :NodeNum, :Memory, :Volume, :MongoVersion, :GoodsNum, :Zone, :Period, :MachineCode, :ClusterType, :ReplicateSetNum, :ProjectId, :VpcId, :SubnetId, :Password, :Tags, :AutoRenewFlag
        
        def initialize(nodenum=nil, memory=nil, volume=nil, mongoversion=nil, goodsnum=nil, zone=nil, period=nil, machinecode=nil, clustertype=nil, replicatesetnum=nil, projectid=nil, vpcid=nil, subnetid=nil, password=nil, tags=nil, autorenewflag=nil)
          @NodeNum = nodenum
          @Memory = memory
          @Volume = volume
          @MongoVersion = mongoversion
          @GoodsNum = goodsnum
          @Zone = zone
          @Period = period
          @MachineCode = machinecode
          @ClusterType = clustertype
          @ReplicateSetNum = replicatesetnum
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @Tags = tags
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @NodeNum = params['NodeNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @MongoVersion = params['MongoVersion']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @Period = params['Period']
          @MachineCode = params['MachineCode']
          @ClusterType = params['ClusterType']
          @ReplicateSetNum = params['ReplicateSetNum']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          @Tags = params['Tags']
          @AutoRenewFlag = params['AutoRenewFlag']
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

      # 实例信息
      class DBInstanceInfo < TencentCloud::Common::AbstractModel
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

      # 数据库实例价格
      class DBInstancePrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 单价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param OriginalPrice: 原价
        # @type OriginalPrice: Float
        # @param DiscountPrice: 折扣加
        # @type DiscountPrice: Float

        attr_accessor :UnitPrice, :OriginalPrice, :DiscountPrice
        
        def initialize(unitprice=nil, originalprice=nil, discountprice=nil)
          @UnitPrice = unitprice
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # DescribeBackupAccess请求参数结构体
      class DescribeBackupAccessRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param BackupName: 需要获取下载授权的备份文件名
        # @type BackupName: String

        attr_accessor :InstanceId, :BackupName
        
        def initialize(instanceid=nil, backupname=nil)
          @InstanceId = instanceid
          @BackupName = backupname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
        end
      end

      # DescribeBackupAccess返回参数结构体
      class DescribeBackupAccessResponse < TencentCloud::Common::AbstractModel
        # @param Region: 实例所属地域
        # @type Region: String
        # @param Bucket: 备份文件所在存储桶
        # @type Bucket: String
        # @param Files: 备份文件的存储信息
        # @type Files: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Region, :Bucket, :Files, :RequestId
        
        def initialize(region=nil, bucket=nil, files=nil, requestid=nil)
          @Region = region
          @Bucket = bucket
          @Files = files
          @RequestId = requestid
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @Files = params['Files']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientConnections请求参数结构体
      class DescribeClientConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Limit: 查询返回记录条数，默认为10000。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset
        
        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeClientConnections返回参数结构体
      class DescribeClientConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param Clients: 客户端连接信息，包括客户端IP和对应IP的连接数量。
        # @type Clients: Array
        # @param TotalCount: 满足条件的记录总条数，可用于分页查询。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Clients, :TotalCount, :RequestId
        
        def initialize(clients=nil, totalcount=nil, requestid=nil)
          @Clients = clients
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Clients = params['Clients']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBBackups请求参数结构体
      class DescribeDBBackupsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDBBackups返回参数结构体
      class DescribeDBBackupsResponse < TencentCloud::Common::AbstractModel
        # @param BackupList: 备份列表
        # @type BackupList: Array
        # @param TotalCount: 备份总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupList, :TotalCount, :RequestId
        
        def initialize(backuplist=nil, totalcount=nil, requestid=nil)
          @BackupList = backuplist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupList = params['BackupList']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceDeal请求参数结构体
      class DescribeDBInstanceDealRequest < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID，通过CreateDBInstance等接口返回
        # @type DealId: String

        attr_accessor :DealId
        
        def initialize(dealid=nil)
          @DealId = dealid
        end

        def deserialize(params)
          @DealId = params['DealId']
        end
      end

      # DescribeDBInstanceDeal返回参数结构体
      class DescribeDBInstanceDealResponse < TencentCloud::Common::AbstractModel
        # @param Status: 订单状态，1：未支付，2：已支付，3：发货中，4：发货成功，5：发货失败，6：退款，7：订单关闭，8：超时未支付关闭。
        # @type Status: Integer
        # @param OriginalPrice: 订单原价。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 订单折扣价格。
        # @type DiscountPrice: Float
        # @param Action: 订单行为，purchase：新购，renew：续费，upgrade：升配，downgrade：降配，refund：退货退款。
        # @type Action: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :OriginalPrice, :DiscountPrice, :Action, :RequestId
        
        def initialize(status=nil, originalprice=nil, discountprice=nil, action=nil, requestid=nil)
          @Status = status
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Action = action
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Action = params['Action']
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
        # @param ProjectIds: 项目 ID
        # @type ProjectIds: Array
        # @param SearchKey: 搜索关键词，支持实例Id、实例名称、完整IP
        # @type SearchKey: String

        attr_accessor :InstanceIds, :InstanceType, :ClusterType, :Status, :VpcId, :SubnetId, :PayMode, :Limit, :Offset, :OrderBy, :OrderByType, :ProjectIds, :SearchKey
        
        def initialize(instanceids=nil, instancetype=nil, clustertype=nil, status=nil, vpcid=nil, subnetid=nil, paymode=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, projectids=nil, searchkey=nil)
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
          @ProjectIds = projectids
          @SearchKey = searchkey
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
          @ProjectIds = params['ProjectIds']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数
        # @type TotalCount: Integer
        # @param InstanceDetails: 实例详细信息列表
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
          @InstanceDetails = params['InstanceDetails']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogPatterns请求参数结构体
      class DescribeSlowLogPatternsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSlowLogPatterns返回参数结构体
      class DescribeSlowLogPatternsResponse < TencentCloud::Common::AbstractModel
        # @param Count: 慢日志统计信息总数
        # @type Count: Integer
        # @param SlowLogPatterns: 慢日志统计信息
        # @type SlowLogPatterns: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :SlowLogPatterns, :RequestId
        
        def initialize(count=nil, slowlogpatterns=nil, requestid=nil)
          @Count = count
          @SlowLogPatterns = slowlogpatterns
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @SlowLogPatterns = params['SlowLogPatterns']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogs请求参数结构体
      class DescribeSlowLogsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSlowLogs返回参数结构体
      class DescribeSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param Count: 慢日志总数
        # @type Count: Integer
        # @param SlowLogs: 慢日志详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :SlowLogs, :RequestId
        
        def initialize(count=nil, slowlogs=nil, requestid=nil)
          @Count = count
          @SlowLogs = slowlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @SlowLogs = params['SlowLogs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpecInfo请求参数结构体
      class DescribeSpecInfoRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 待查询可用区
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
          @SpecInfoList = params['SpecInfoList']
          @RequestId = params['RequestId']
        end
      end

      # FlushInstanceRouterConfig请求参数结构体
      class FlushInstanceRouterConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # FlushInstanceRouterConfig返回参数结构体
      class FlushInstanceRouterConfigResponse < TencentCloud::Common::AbstractModel
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

      # InquirePriceCreateDBInstances请求参数结构体
      class InquirePriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属区域名称，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param NodeNum: 每个副本集内节点个数，当前副本集节点数固定为3，分片从节点数可选，具体参照查询云数据库的售卖规格返回参数
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param MongoVersion: 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本
        # @type MongoVersion: String
        # @param MachineCode: 机器类型，HIO：高IO型；HIO10G：高IO万兆型；STDS5：标准型
        # @type MachineCode: String
        # @param GoodsNum: 实例数量, 最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Period: 实例时长，单位：月，可选值包括[1,2,3,4,5,6,7,8,9,10,11,12,24,36]
        # @type Period: Integer
        # @param ClusterType: 实例类型，REPLSET-副本集，SHARD-分片集群，STANDALONE-单节点
        # @type ClusterType: String
        # @param ReplicateSetNum: 副本集个数，创建副本集实例时，该参数必须设置为1；创建分片实例时，具体参照查询云数据库的售卖规格返回参数；若为单节点实例，该参数设置为0
        # @type ReplicateSetNum: Integer

        attr_accessor :Zone, :NodeNum, :Memory, :Volume, :MongoVersion, :MachineCode, :GoodsNum, :Period, :ClusterType, :ReplicateSetNum
        
        def initialize(zone=nil, nodenum=nil, memory=nil, volume=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, period=nil, clustertype=nil, replicatesetnum=nil)
          @Zone = zone
          @NodeNum = nodenum
          @Memory = memory
          @Volume = volume
          @MongoVersion = mongoversion
          @MachineCode = machinecode
          @GoodsNum = goodsnum
          @Period = period
          @ClusterType = clustertype
          @ReplicateSetNum = replicatesetnum
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeNum = params['NodeNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @MongoVersion = params['MongoVersion']
          @MachineCode = params['MachineCode']
          @GoodsNum = params['GoodsNum']
          @Period = params['Period']
          @ClusterType = params['ClusterType']
          @ReplicateSetNum = params['ReplicateSetNum']
        end
      end

      # InquirePriceCreateDBInstances返回参数结构体
      class InquirePriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = DBInstancePrice.new.deserialize(params[Price])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceModifyDBInstanceSpec请求参数结构体
      class InquirePriceModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param Memory: 变更配置后实例内存大小，单位：GB。
        # @type Memory: Integer
        # @param Volume: 变更配置后实例磁盘大小，单位：GB。
        # @type Volume: Integer

        attr_accessor :InstanceId, :Memory, :Volume
        
        def initialize(instanceid=nil, memory=nil, volume=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
        end
      end

      # InquirePriceModifyDBInstanceSpec返回参数结构体
      class InquirePriceModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格。
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = DBInstancePrice.new.deserialize(params[Price])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceRenewDBInstances请求参数结构体
      class InquirePriceRenewDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同，接口单次最多只支持5个实例进行操作。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式（即包年包月）相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Mongodb.v20190725.models.InstanceChargePrepaid`

        attr_accessor :InstanceIds, :InstanceChargePrepaid
        
        def initialize(instanceids=nil, instancechargeprepaid=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new.deserialize(params[InstanceChargePrepaid])
          end
        end
      end

      # InquirePriceRenewDBInstances返回参数结构体
      class InquirePriceRenewDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = DBInstancePrice.new.deserialize(params[Price])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。默认为1。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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

      # 实例详情
      class InstanceDetail < TencentCloud::Common::AbstractModel
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
        # @type ReadonlyInstances: Array
        # @param StandbyInstances: 灾备实例信息
        # @type StandbyInstances: Array
        # @param CloneInstances: 临时实例信息
        # @type CloneInstances: Array
        # @param RelatedInstance: 关联实例信息，对于正式实例，该字段表示它的临时实例信息；对于临时实例，则表示它的正式实例信息;如果为只读/灾备实例,则表示他的主实例信息
        # @type RelatedInstance: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstanceInfo`
        # @param Tags: 实例标签信息集合
        # @type Tags: Array
        # @param InstanceVer: 实例版本标记
        # @type InstanceVer: Integer
        # @param ClusterVer: 实例版本标记
        # @type ClusterVer: Integer
        # @param Protocol: 协议信息，可能的返回值：1-mongodb，2-dynamodb
        # @type Protocol: Integer
        # @param InstanceType: 实例类型，可能的返回值，1-正式实例，2-临时实例，3-只读实例，4-灾备实例
        # @type InstanceType: Integer
        # @param InstanceStatusDesc: 实例状态描述
        # @type InstanceStatusDesc: String
        # @param RealInstanceId: 实例对应的物理实例id，回档并替换过的实例有不同的InstanceId和RealInstanceId，从barad获取监控数据等场景下需要用物理id获取
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
          @ReplicaSets = params['ReplicaSets']
          @ReadonlyInstances = params['ReadonlyInstances']
          @StandbyInstances = params['StandbyInstances']
          @CloneInstances = params['CloneInstances']
          unless params['RelatedInstance'].nil?
            @RelatedInstance = DBInstanceInfo.new.deserialize(params[RelatedInstance])
          end
          @Tags = params['Tags']
          @InstanceVer = params['InstanceVer']
          @ClusterVer = params['ClusterVer']
          @Protocol = params['Protocol']
          @InstanceType = params['InstanceType']
          @InstanceStatusDesc = params['InstanceStatusDesc']
          @RealInstanceId = params['RealInstanceId']
        end
      end

      # IsolateDBInstance请求参数结构体
      class IsolateDBInstanceRequest < TencentCloud::Common::AbstractModel
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

      # IsolateDBInstance返回参数结构体
      class IsolateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
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

      # ModifyDBInstanceSpec请求参数结构体
      class ModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Memory: 实例配置变更后的内存大小，单位：GB。内存和磁盘必须同时升配或同时降配
        # @type Memory: Integer
        # @param Volume: 实例配置变更后的硬盘大小，单位：GB。内存和磁盘必须同时升配或同时降配。降配时，新的磁盘参数必须大于已用磁盘容量的1.2倍
        # @type Volume: Integer
        # @param OplogSize: 实例配置变更后oplog的大小，单位：GB，默认为磁盘空间的10%，允许设置的最小值为磁盘的10%，最大值为磁盘的90%
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

      # ModifyDBInstanceSpec返回参数结构体
      class ModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
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

      # OfflineIsolatedDBInstance请求参数结构体
      class OfflineIsolatedDBInstanceRequest < TencentCloud::Common::AbstractModel
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

      # OfflineIsolatedDBInstance返回参数结构体
      class OfflineIsolatedDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
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

      # RenewDBInstances请求参数结构体
      class RenewDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过DescribeInstances接口返回值中的InstanceId获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。包年包月实例该参数为必传参数。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Mongodb.v20190725.models.InstanceChargePrepaid`

        attr_accessor :InstanceIds, :InstanceChargePrepaid
        
        def initialize(instanceids=nil, instancechargeprepaid=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new.deserialize(params[InstanceChargePrepaid])
          end
        end
      end

      # RenewDBInstances返回参数结构体
      class RenewDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 实例分片详情
      class ShardInfo < TencentCloud::Common::AbstractModel
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
        # @param RealReplicaSetId: 分片物理id
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

      # 用于描述MongoDB数据库慢日志统计信息
      class SlowLogPattern < TencentCloud::Common::AbstractModel
        # @param Pattern: 慢日志模式
        # @type Pattern: String
        # @param MaxTime: 最大执行时间
        # @type MaxTime: Integer
        # @param AverageTime: 平均执行时间
        # @type AverageTime: Integer
        # @param Total: 该模式慢日志条数
        # @type Total: Integer

        attr_accessor :Pattern, :MaxTime, :AverageTime, :Total
        
        def initialize(pattern=nil, maxtime=nil, averagetime=nil, total=nil)
          @Pattern = pattern
          @MaxTime = maxtime
          @AverageTime = averagetime
          @Total = total
        end

        def deserialize(params)
          @Pattern = params['Pattern']
          @MaxTime = params['MaxTime']
          @AverageTime = params['AverageTime']
          @Total = params['Total']
        end
      end

      # mongodb售卖规格
      class SpecItem < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格信息标识
        # @type SpecCode: String
        # @param Status: 规格有效标志，取值：0-停止售卖，1-开放售卖
        # @type Status: Integer
        # @param Cpu: 规格有效标志，取值：0-停止售卖，1-开放售卖
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
        # @param MachineType: 机器类型，取值：0-HIO，4-HIO10G
        # @type MachineType: String

        attr_accessor :SpecCode, :Status, :Cpu, :Memory, :DefaultStorage, :MaxStorage, :MinStorage, :Qps, :Conns, :MongoVersionCode, :MongoVersionValue, :Version, :EngineName, :ClusterType, :MinNodeNum, :MaxNodeNum, :MinReplicateSetNum, :MaxReplicateSetNum, :MinReplicateSetNodeNum, :MaxReplicateSetNodeNum, :MachineType
        
        def initialize(speccode=nil, status=nil, cpu=nil, memory=nil, defaultstorage=nil, maxstorage=nil, minstorage=nil, qps=nil, conns=nil, mongoversioncode=nil, mongoversionvalue=nil, version=nil, enginename=nil, clustertype=nil, minnodenum=nil, maxnodenum=nil, minreplicatesetnum=nil, maxreplicatesetnum=nil, minreplicatesetnodenum=nil, maxreplicatesetnodenum=nil, machinetype=nil)
          @SpecCode = speccode
          @Status = status
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
          @MachineType = machinetype
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @Status = params['Status']
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
          @MachineType = params['MachineType']
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
          @SpecItems = params['SpecItems']
        end
      end

      # 实例标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
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

