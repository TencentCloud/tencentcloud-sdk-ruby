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
        # @param ProjectId: 项目ID，用户已创建项目的唯一ID,非自定义
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

      # 用户权限
      class Auth < TencentCloud::Common::AbstractModel
        # @param Mask: 当前账号具有的权限信息。<ul><li>0：无权限。</li><li>1：只读。</li><li>2：只写。</li><li>3：读写。</li></ul>
        # @type Mask: Integer
        # @param NameSpace: 指具有当前账号权限的数据库名。
        # <ul><li>* ：表示所有数据库。</li><li>db.name：表示特定name的数据库。</li></ul>
        # @type NameSpace: String

        attr_accessor :Mask, :NameSpace
        
        def initialize(mask=nil, namespace=nil)
          @Mask = mask
          @NameSpace = namespace
        end

        def deserialize(params)
          @Mask = params['Mask']
          @NameSpace = params['NameSpace']
        end
      end

      # 备份下载任务
      class BackupDownloadTask < TencentCloud::Common::AbstractModel
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param BackupName: 备份文件名
        # @type BackupName: String
        # @param ReplicaSetId: 分片名称
        # @type ReplicaSetId: String
        # @param BackupSize: 备份数据大小，单位为字节
        # @type BackupSize: Integer
        # @param Status: 任务状态。0-等待执行，1-正在下载，2-下载完成，3-下载失败，4-等待重试
        # @type Status: Integer
        # @param Percent: 任务进度百分比
        # @type Percent: Integer
        # @param TimeSpend: 耗时，单位为秒
        # @type TimeSpend: Integer
        # @param Url: 备份数据下载链接
        # @type Url: String
        # @param BackupMethod: 备份文件备份类型，0-逻辑备份，1-物理备份
        # @type BackupMethod: Integer
        # @param BackupDesc: 发起备份时指定的备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupDesc: String

        attr_accessor :CreateTime, :BackupName, :ReplicaSetId, :BackupSize, :Status, :Percent, :TimeSpend, :Url, :BackupMethod, :BackupDesc
        
        def initialize(createtime=nil, backupname=nil, replicasetid=nil, backupsize=nil, status=nil, percent=nil, timespend=nil, url=nil, backupmethod=nil, backupdesc=nil)
          @CreateTime = createtime
          @BackupName = backupname
          @ReplicaSetId = replicasetid
          @BackupSize = backupsize
          @Status = status
          @Percent = percent
          @TimeSpend = timespend
          @Url = url
          @BackupMethod = backupmethod
          @BackupDesc = backupdesc
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @BackupName = params['BackupName']
          @ReplicaSetId = params['ReplicaSetId']
          @BackupSize = params['BackupSize']
          @Status = params['Status']
          @Percent = params['Percent']
          @TimeSpend = params['TimeSpend']
          @Url = params['Url']
          @BackupMethod = params['BackupMethod']
          @BackupDesc = params['BackupDesc']
        end
      end

      # 创建备份下载任务结果
      class BackupDownloadTaskStatus < TencentCloud::Common::AbstractModel
        # @param ReplicaSetId: 分片名
        # @type ReplicaSetId: String
        # @param Status: 任务当前状态。0-等待执行，1-正在下载，2-下载完成，3-下载失败，4-等待重试
        # @type Status: Integer

        attr_accessor :ReplicaSetId, :Status
        
        def initialize(replicasetid=nil, status=nil)
          @ReplicaSetId = replicasetid
          @Status = status
        end

        def deserialize(params)
          @ReplicaSetId = params['ReplicaSetId']
          @Status = params['Status']
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
        # @param InternalService: 是否为内部ip
        # @type InternalService: Boolean

        attr_accessor :IP, :Count, :InternalService
        
        def initialize(ip=nil, count=nil, internalservice=nil)
          @IP = ip
          @Count = count
          @InternalService = internalservice
        end

        def deserialize(params)
          @IP = params['IP']
          @Count = params['Count']
          @InternalService = params['InternalService']
        end
      end

      # CreateBackupDBInstance请求参数结构体
      class CreateBackupDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param BackupMethod: 0-逻辑备份，1-物理备份
        # @type BackupMethod: Integer
        # @param BackupRemark: 备份备注
        # @type BackupRemark: String

        attr_accessor :InstanceId, :BackupMethod, :BackupRemark
        
        def initialize(instanceid=nil, backupmethod=nil, backupremark=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @BackupRemark = backupremark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          @BackupRemark = params['BackupRemark']
        end
      end

      # CreateBackupDBInstance返回参数结构体
      class CreateBackupDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 查询备份流程的状态
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

      # CreateBackupDownloadTask请求参数结构体
      class CreateBackupDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param BackupName: 要下载的备份文件名，可通过DescribeDBBackups接口获取。
        # @type BackupName: String
        # @param BackupSets: 指定要下载的副本集的节点名称 或 分片集群的分片名称列表。
        # 如副本集cmgo-p8vnipr5，示例(固定取值)：BackupSets.0=cmgo-p8vnipr5_0，可下载全量数据。
        # 如分片集群cmgo-p8vnipr5，示例：BackupSets.0=cmgo-p8vnipr5_0&BackupSets.1=cmgo-p8vnipr5_1，即下载分片0和分片1的数据，分片集群如需全量下载，请按示例方式传入全部分片名称。
        # @type BackupSets: Array

        attr_accessor :InstanceId, :BackupName, :BackupSets
        
        def initialize(instanceid=nil, backupname=nil, backupsets=nil)
          @InstanceId = instanceid
          @BackupName = backupname
          @BackupSets = backupsets
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
          unless params['BackupSets'].nil?
            @BackupSets = []
            params['BackupSets'].each do |i|
              replicasetinfo_tmp = ReplicaSetInfo.new
              replicasetinfo_tmp.deserialize(i)
              @BackupSets << replicasetinfo_tmp
            end
          end
        end
      end

      # CreateBackupDownloadTask返回参数结构体
      class CreateBackupDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 下载任务状态
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId
        
        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              backupdownloadtaskstatus_tmp = BackupDownloadTaskStatus.new
              backupdownloadtaskstatus_tmp.deserialize(i)
              @Tasks << backupdownloadtaskstatus_tmp
            end
          end
          @RequestId = params['RequestId']
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
        # @param NodeNum: 每个副本集内节点个数，具体参照查询云数据库的售卖规格返回参数
        # @type NodeNum: Integer
        # @param MongoVersion: 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本
        # @type MongoVersion: String
        # @param MachineCode: 机器类型，HIO：高IO型；HIO10G：高IO万兆
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，格式如：ap-guangzhou-2。注：此参数填写的是主可用区，如果选择多可用区部署，Zone必须是AvailabilityZoneList中的一个
        # @type Zone: String
        # @param ClusterType: 实例类型，REPLSET-副本集，SHARD-分片集群
        # @type ClusterType: String
        # @param VpcId: 私有网络ID，如果不设置该参数则默认选择基础网络
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        # @type SubnetId: String
        # @param Password: 实例密码，不设置该参数则默认密码规则为 实例ID+"@"+主账户uin。举例实例id为cmgo-higv73ed，uin为100000001，则默认密码为"cmgo-higv73ed@100000001"。密码必须是8-16位字符，且至少包含字母、数字和字符 !@#%^*() 中的两种
        # @type Password: String
        # @param ProjectId: 项目ID，不设置为默认项目
        # @type ProjectId: Integer
        # @param Tags: 实例标签信息
        # @type Tags: Array
        # @param Clone: 1:正式实例,2:临时实例,3:只读实例,4:灾备实例,5:克隆实例
        # @type Clone: Integer
        # @param Father: 父实例Id，当Clone为3或者4时，这个必须填
        # @type Father: String
        # @param SecurityGroup: 安全组
        # @type SecurityGroup: Array
        # @param RestoreTime: 克隆实例回档时间。若是克隆实例，则必须填写，示例：2021-08-13 16:30:00。注：只能回档7天内的时间点
        # @type RestoreTime: String
        # @param InstanceName: 实例名称。注：名称只支持长度为60个字符的中文、英文、数字、下划线_、分隔符-
        # @type InstanceName: String
        # @param AvailabilityZoneList: 多可用区部署的节点列表，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。注：1、多可用区部署节点只能部署在3个不同可用区；2、为了保障跨可用区切换，不支持将集群的大多数节点部署在同一个可用区（如3节点集群不支持2个节点部署在同一个区）；3、不支持4.2及以上版本；4、不支持只读灾备实例；5、不能选择基础网络
        # @type AvailabilityZoneList: Array
        # @param MongosCpu: mongos cpu数量，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果
        # @type MongosCpu: Integer
        # @param MongosMemory: mongos 内存大小，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果
        # @type MongosMemory: Integer
        # @param MongosNodeNum: mongos 数量，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。注：为了保障高可用，最低需要购买3个mongos，上限为32个
        # @type MongosNodeNum: Integer

        attr_accessor :Memory, :Volume, :ReplicateSetNum, :NodeNum, :MongoVersion, :MachineCode, :GoodsNum, :Zone, :ClusterType, :VpcId, :SubnetId, :Password, :ProjectId, :Tags, :Clone, :Father, :SecurityGroup, :RestoreTime, :InstanceName, :AvailabilityZoneList, :MongosCpu, :MongosMemory, :MongosNodeNum
        
        def initialize(memory=nil, volume=nil, replicatesetnum=nil, nodenum=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, zone=nil, clustertype=nil, vpcid=nil, subnetid=nil, password=nil, projectid=nil, tags=nil, clone=nil, father=nil, securitygroup=nil, restoretime=nil, instancename=nil, availabilityzonelist=nil, mongoscpu=nil, mongosmemory=nil, mongosnodenum=nil)
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
          @Clone = clone
          @Father = father
          @SecurityGroup = securitygroup
          @RestoreTime = restoretime
          @InstanceName = instancename
          @AvailabilityZoneList = availabilityzonelist
          @MongosCpu = mongoscpu
          @MongosMemory = mongosmemory
          @MongosNodeNum = mongosnodenum
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @Clone = params['Clone']
          @Father = params['Father']
          @SecurityGroup = params['SecurityGroup']
          @RestoreTime = params['RestoreTime']
          @InstanceName = params['InstanceName']
          @AvailabilityZoneList = params['AvailabilityZoneList']
          @MongosCpu = params['MongosCpu']
          @MongosMemory = params['MongosMemory']
          @MongosNodeNum = params['MongosNodeNum']
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
        # @param NodeNum: 每个副本集内节点个数，具体参照查询云数据库的售卖规格返回参数
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param MongoVersion: 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本
        # @type MongoVersion: String
        # @param GoodsNum: 实例数量, 最小值1，最大值为10
        # @type GoodsNum: Integer
        # @param Zone: 实例所属区域名称，格式如：ap-guangzhou-2。注：此参数填写的是主可用区，如果选择多可用区部署，Zone必须是AvailabilityZoneList中的一个
        # @type Zone: String
        # @param Period: 实例时长，单位：月，可选值包括 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]
        # @type Period: Integer
        # @param MachineCode: 机器类型，HIO：高IO型；HIO10G：高IO万兆型；STDS5：标准型
        # @type MachineCode: String
        # @param ClusterType: 实例类型，REPLSET-副本集，SHARD-分片集群，STANDALONE-单节点
        # @type ClusterType: String
        # @param ReplicateSetNum: 副本集个数，创建副本集实例时，该参数必须设置为1；创建分片实例时，具体参照查询云数据库的售卖规格返回参数；若为单节点实例，该参数设置为0
        # @type ReplicateSetNum: Integer
        # @param ProjectId: 项目ID，不设置为默认项目
        # @type ProjectId: Integer
        # @param VpcId: 私有网络 ID，如果不传则默认选择基础网络，请使用 查询私有网络列表
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用 查询子网列表
        # @type SubnetId: String
        # @param Password: 实例密码，不设置该参数则默认密码规则为 实例ID+"@"+主账户uin。举例实例id为cmgo-higv73ed，uin为100000001，则默认密码为"cmgo-higv73ed@100000001"。密码必须是8-16位字符，且至少包含字母、数字和字符 !@#%^*() 中的两种
        # @type Password: String
        # @param Tags: 实例标签信息
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标记，可选值为：0 - 不自动续费；1 - 自动续费。默认为不自动续费
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动选择代金券，可选值为：1 - 是；0 - 否； 默认为0
        # @type AutoVoucher: Integer
        # @param Clone: 1:正式实例,2:临时实例,3:只读实例,4:灾备实例,5:克隆实例
        # @type Clone: Integer
        # @param Father: 若是只读，灾备实例或克隆实例，Father必须填写，即主实例ID
        # @type Father: String
        # @param SecurityGroup: 安全组
        # @type SecurityGroup: Array
        # @param RestoreTime: 克隆实例回档时间。若是克隆实例，则必须填写，格式：2021-08-13 16:30:00。注：只能回档7天内的时间点
        # @type RestoreTime: String
        # @param InstanceName: 实例名称。注：名称只支持长度为60个字符的中文、英文、数字、下划线_、分隔符-
        # @type InstanceName: String
        # @param AvailabilityZoneList: 多可用区部署的节点列表，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。注：1、多可用区部署节点只能部署在3个不同可用区；2、为了保障跨可用区切换，不支持将集群的大多数节点部署在同一个可用区（如3节点集群不支持2个节点部署在同一个区）；3、不支持4.2及以上版本；4、不支持只读灾备实例；5、不能选择基础网络
        # @type AvailabilityZoneList: Array
        # @param MongosCpu: mongos cpu数量，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果
        # @type MongosCpu: Integer
        # @param MongosMemory: mongos 内存大小，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果
        # @type MongosMemory: Integer
        # @param MongosNodeNum: mongos 数量，购买MongoDB 4.2 WiredTiger存储引擎版本的分片集群时必须填写，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。注：为了保障高可用，最低需要购买3个mongos，上限为32个
        # @type MongosNodeNum: Integer

        attr_accessor :NodeNum, :Memory, :Volume, :MongoVersion, :GoodsNum, :Zone, :Period, :MachineCode, :ClusterType, :ReplicateSetNum, :ProjectId, :VpcId, :SubnetId, :Password, :Tags, :AutoRenewFlag, :AutoVoucher, :Clone, :Father, :SecurityGroup, :RestoreTime, :InstanceName, :AvailabilityZoneList, :MongosCpu, :MongosMemory, :MongosNodeNum
        
        def initialize(nodenum=nil, memory=nil, volume=nil, mongoversion=nil, goodsnum=nil, zone=nil, period=nil, machinecode=nil, clustertype=nil, replicatesetnum=nil, projectid=nil, vpcid=nil, subnetid=nil, password=nil, tags=nil, autorenewflag=nil, autovoucher=nil, clone=nil, father=nil, securitygroup=nil, restoretime=nil, instancename=nil, availabilityzonelist=nil, mongoscpu=nil, mongosmemory=nil, mongosnodenum=nil)
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
          @AutoVoucher = autovoucher
          @Clone = clone
          @Father = father
          @SecurityGroup = securitygroup
          @RestoreTime = restoretime
          @InstanceName = instancename
          @AvailabilityZoneList = availabilityzonelist
          @MongosCpu = mongoscpu
          @MongosMemory = mongosmemory
          @MongosNodeNum = mongosnodenum
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @Clone = params['Clone']
          @Father = params['Father']
          @SecurityGroup = params['SecurityGroup']
          @RestoreTime = params['RestoreTime']
          @InstanceName = params['InstanceName']
          @AvailabilityZoneList = params['AvailabilityZoneList']
          @MongosCpu = params['MongosCpu']
          @MongosMemory = params['MongosMemory']
          @MongosNodeNum = params['MongosNodeNum']
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

      # 云数据库实例当前操作
      class CurrentOp < TencentCloud::Common::AbstractModel
        # @param OpId: 操作序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpId: Integer
        # @param Ns: 操作所在的命名空间，形式如db.collection
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ns: String
        # @param Query: 操作执行语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Query: String
        # @param Op: 操作类型，可能的取值：aggregate、count、delete、distinct、find、findAndModify、getMore、insert、mapReduce、update和command
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Op: String
        # @param ReplicaSetName: 操作所在的分片名称
        # @type ReplicaSetName: String
        # @param State: 筛选条件，节点状态，可能的取值为：Primary、Secondary
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param Operation: 操作详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param NodeName: 操作所在的节点名称
        # @type NodeName: String
        # @param MicrosecsRunning: 操作已执行时间（ms）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicrosecsRunning: Integer

        attr_accessor :OpId, :Ns, :Query, :Op, :ReplicaSetName, :State, :Operation, :NodeName, :MicrosecsRunning
        
        def initialize(opid=nil, ns=nil, query=nil, op=nil, replicasetname=nil, state=nil, operation=nil, nodename=nil, microsecsrunning=nil)
          @OpId = opid
          @Ns = ns
          @Query = query
          @Op = op
          @ReplicaSetName = replicasetname
          @State = state
          @Operation = operation
          @NodeName = nodename
          @MicrosecsRunning = microsecsrunning
        end

        def deserialize(params)
          @OpId = params['OpId']
          @Ns = params['Ns']
          @Query = params['Query']
          @Op = params['Op']
          @ReplicaSetName = params['ReplicaSetName']
          @State = params['State']
          @Operation = params['Operation']
          @NodeName = params['NodeName']
          @MicrosecsRunning = params['MicrosecsRunning']
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

      # DescribeAsyncRequestInfo请求参数结构体
      class DescribeAsyncRequestInfoRequest < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步请求Id，涉及到异步流程的接口返回，如CreateBackupDBInstance
        # @type AsyncRequestId: String

        attr_accessor :AsyncRequestId
        
        def initialize(asyncrequestid=nil)
          @AsyncRequestId = asyncrequestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
        end
      end

      # DescribeAsyncRequestInfo返回参数结构体
      class DescribeAsyncRequestInfoResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态。返回参数有：initial-初始化、running-运行中、paused-任务执行失败，已暂停、undoed-任务执行失败，已回滚、failed-任务执行失败, 已终止、success-成功
        # @type Status: String
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

      # DescribeBackupDownloadTask请求参数结构体
      class DescribeBackupDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param BackupName: 备份文件名，用来过滤指定文件的下载任务
        # @type BackupName: String
        # @param StartTime: 指定查询时间范围内的任务，StartTime指定开始时间，不填默认不限制开始时间
        # @type StartTime: String
        # @param EndTime: 指定查询时间范围内的任务，EndTime指定截止时间，不填默认不限制截止时间
        # @type EndTime: String
        # @param Limit: 此次查询返回的条数，取值范围为1-100，默认为20
        # @type Limit: Integer
        # @param Offset: 指定此次查询返回的页数，默认为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值为createTime，finishTime两种，默认为createTime
        # @type OrderBy: String
        # @param OrderByType: 排序方式，取值为asc，desc两种，默认desc
        # @type OrderByType: String
        # @param Status: 根据任务状态过滤。0-等待执行，1-正在下载，2-下载完成，3-下载失败，4-等待重试。不填默认返回所有类型
        # @type Status: Array

        attr_accessor :InstanceId, :BackupName, :StartTime, :EndTime, :Limit, :Offset, :OrderBy, :OrderByType, :Status
        
        def initialize(instanceid=nil, backupname=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, status=nil)
          @InstanceId = instanceid
          @BackupName = backupname
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Status = params['Status']
        end
      end

      # DescribeBackupDownloadTask返回参数结构体
      class DescribeBackupDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足查询条件的所有条数
        # @type TotalCount: Integer
        # @param Tasks: 下载任务列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId
        
        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              backupdownloadtask_tmp = BackupDownloadTask.new
              backupdownloadtask_tmp.deserialize(i)
              @Tasks << backupdownloadtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientConnections请求参数结构体
      class DescribeClientConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Limit: 单次请求返回的数量，最小值为1，最大值为1000，默认值为1000。
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
          unless params['Clients'].nil?
            @Clients = []
            params['Clients'].each do |i|
              clientconnection_tmp = ClientConnection.new
              clientconnection_tmp.deserialize(i)
              @Clients << clientconnection_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCurrentOp请求参数结构体
      class DescribeCurrentOpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Ns: 筛选条件，操作所属的命名空间namespace，格式为db.collection
        # @type Ns: String
        # @param MillisecondRunning: 筛选条件，操作已经执行的时间（单位：毫秒），结果将返回超过设置时间的操作，默认值为0，取值范围为[0, 3600000]
        # @type MillisecondRunning: Integer
        # @param Op: 筛选条件，操作类型，可能的取值：none，update，insert，query，command，getmore，remove和killcursors
        # @type Op: String
        # @param ReplicaSetName: 筛选条件，分片名称
        # @type ReplicaSetName: String
        # @param State: 筛选条件，节点状态，可能的取值为：primary
        # secondary
        # @type State: String
        # @param Limit: 单次请求返回的数量，默认值为100，取值范围为[0,100]
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0，取值范围为[0,10000]
        # @type Offset: Integer
        # @param OrderBy: 返回结果集排序的字段，目前支持："MicrosecsRunning"/"microsecsrunning"，默认为升序排序
        # @type OrderBy: String
        # @param OrderByType: 返回结果集排序方式，可能的取值："ASC"/"asc"或"DESC"/"desc"
        # @type OrderByType: String

        attr_accessor :InstanceId, :Ns, :MillisecondRunning, :Op, :ReplicaSetName, :State, :Limit, :Offset, :OrderBy, :OrderByType
        
        def initialize(instanceid=nil, ns=nil, millisecondrunning=nil, op=nil, replicasetname=nil, state=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @Ns = ns
          @MillisecondRunning = millisecondrunning
          @Op = op
          @ReplicaSetName = replicasetname
          @State = state
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ns = params['Ns']
          @MillisecondRunning = params['MillisecondRunning']
          @Op = params['Op']
          @ReplicaSetName = params['ReplicaSetName']
          @State = params['State']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeCurrentOp返回参数结构体
      class DescribeCurrentOpResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的操作总数
        # @type TotalCount: Integer
        # @param CurrentOps: 当前操作列表
        # @type CurrentOps: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CurrentOps, :RequestId
        
        def initialize(totalcount=nil, currentops=nil, requestid=nil)
          @TotalCount = totalcount
          @CurrentOps = currentops
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CurrentOps'].nil?
            @CurrentOps = []
            params['CurrentOps'].each do |i|
              currentop_tmp = CurrentOp.new
              currentop_tmp.deserialize(i)
              @CurrentOps << currentop_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBBackups请求参数结构体
      class DescribeDBBackupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param BackupMethod: 备份方式，当前支持：0-逻辑备份，1-物理备份，2-所有备份。默认为逻辑备份。
        # @type BackupMethod: Integer
        # @param Limit: 分页大小，最大值为100，不设置默认查询所有。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，最小值为0，默认值为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :BackupMethod, :Limit, :Offset
        
        def initialize(instanceid=nil, backupmethod=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          @Limit = params['Limit']
          @Offset = params['Offset']
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
          unless params['BackupList'].nil?
            @BackupList = []
            params['BackupList'].each do |i|
              backupinfo_tmp = BackupInfo.new
              backupinfo_tmp.deserialize(i)
              @BackupList << backupinfo_tmp
            end
          end
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
        # @param Status: 实例状态，取值范围：0-待初始化，1-流程执行中，2-实例有效，-2-已隔离（包年包月实例），-3-已隔离（按量计费实例）
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
        # @param SearchKey: 搜索关键词，支持实例ID、实例名称、完整IP
        # @type SearchKey: String
        # @param Tags: Tag信息
        # @type Tags: :class:`Tencentcloud::Mongodb.v20190725.models.TagInfo`

        attr_accessor :InstanceIds, :InstanceType, :ClusterType, :Status, :VpcId, :SubnetId, :PayMode, :Limit, :Offset, :OrderBy, :OrderByType, :ProjectIds, :SearchKey, :Tags
        
        def initialize(instanceids=nil, instancetype=nil, clustertype=nil, status=nil, vpcid=nil, subnetid=nil, paymode=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, projectids=nil, searchkey=nil, tags=nil)
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
          @Tags = tags
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
          unless params['Tags'].nil?
            @Tags = TagInfo.new
            @Tags.deserialize(params['Tags'])
          end
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
          unless params['InstanceDetails'].nil?
            @InstanceDetails = []
            params['InstanceDetails'].each do |i|
              instancedetail_tmp = InstanceDetail.new
              instancedetail_tmp.deserialize(i)
              @InstanceDetails << instancedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceParams返回参数结构体
      class DescribeInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceEnumParam: 值为枚举类型参数集合
        # @type InstanceEnumParam: Array
        # @param InstanceIntegerParam: 值为integer类型参数集合
        # @type InstanceIntegerParam: Array
        # @param InstanceTextParam: 值为text类型的参数集合
        # @type InstanceTextParam: Array
        # @param InstanceMultiParam: 值为混合类型的参数集合
        # @type InstanceMultiParam: Array
        # @param TotalCount: 当前实例支持修改的参数个数统计 如0
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceEnumParam, :InstanceIntegerParam, :InstanceTextParam, :InstanceMultiParam, :TotalCount, :RequestId
        
        def initialize(instanceenumparam=nil, instanceintegerparam=nil, instancetextparam=nil, instancemultiparam=nil, totalcount=nil, requestid=nil)
          @InstanceEnumParam = instanceenumparam
          @InstanceIntegerParam = instanceintegerparam
          @InstanceTextParam = instancetextparam
          @InstanceMultiParam = instancemultiparam
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceEnumParam'].nil?
            @InstanceEnumParam = []
            params['InstanceEnumParam'].each do |i|
              instanceenumparam_tmp = InstanceEnumParam.new
              instanceenumparam_tmp.deserialize(i)
              @InstanceEnumParam << instanceenumparam_tmp
            end
          end
          unless params['InstanceIntegerParam'].nil?
            @InstanceIntegerParam = []
            params['InstanceIntegerParam'].each do |i|
              instanceintegerparam_tmp = InstanceIntegerParam.new
              instanceintegerparam_tmp.deserialize(i)
              @InstanceIntegerParam << instanceintegerparam_tmp
            end
          end
          unless params['InstanceTextParam'].nil?
            @InstanceTextParam = []
            params['InstanceTextParam'].each do |i|
              instancetextparam_tmp = InstanceTextParam.new
              instancetextparam_tmp.deserialize(i)
              @InstanceTextParam << instancetextparam_tmp
            end
          end
          unless params['InstanceMultiParam'].nil?
            @InstanceMultiParam = []
            params['InstanceMultiParam'].each do |i|
              instancemultiparam_tmp = InstanceMultiParam.new
              instancemultiparam_tmp.deserialize(i)
              @InstanceMultiParam << instancemultiparam_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroup请求参数结构体
      class DescribeSecurityGroupRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSecurityGroup返回参数结构体
      class DescribeSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 实例绑定的安全组
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Format: 慢日志返回格式，可设置为json，不传默认返回原生慢日志格式。
        # @type Format: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :SlowMS, :Offset, :Limit, :Format
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, slowms=nil, offset=nil, limit=nil, format=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SlowMS = slowms
          @Offset = offset
          @Limit = limit
          @Format = format
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SlowMS = params['SlowMS']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Format = params['Format']
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
          unless params['SlowLogPatterns'].nil?
            @SlowLogPatterns = []
            params['SlowLogPatterns'].each do |i|
              slowlogpattern_tmp = SlowLogPattern.new
              slowlogpattern_tmp.deserialize(i)
              @SlowLogPatterns << slowlogpattern_tmp
            end
          end
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
        # @param Format: 慢日志返回格式，可设置为json，不传默认返回原生慢日志格式。
        # @type Format: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :SlowMS, :Offset, :Limit, :Format
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, slowms=nil, offset=nil, limit=nil, format=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SlowMS = slowms
          @Offset = offset
          @Limit = limit
          @Format = format
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SlowMS = params['SlowMS']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Format = params['Format']
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
          unless params['SpecInfoList'].nil?
            @SpecInfoList = []
            params['SpecInfoList'].each do |i|
              specificationinfo_tmp = SpecificationInfo.new
              specificationinfo_tmp.deserialize(i)
              @SpecInfoList << specificationinfo_tmp
            end
          end
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
        # @param NodeNum: 每个副本集内节点个数，具体参照查询云数据库的售卖规格返回参数
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小，单位：GB
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param MongoVersion: 版本号，具体支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是MONGO_3_WT：MongoDB 3.2 WiredTiger存储引擎版本，MONGO_3_ROCKS：MongoDB 3.2 RocksDB存储引擎版本，MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本
        # @type MongoVersion: String
        # @param MachineCode: 机器类型，HIO：高IO型；HIO10G：高IO万兆型；
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
            @Price = DBInstancePrice.new
            @Price.deserialize(params['Price'])
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
        # @param NodeNum: 实例变更后的节点数，取值范围具体参照查询云数据库的售卖规格返回参数。默认为不变更节点数
        # @type NodeNum: Integer
        # @param ReplicateSetNum: 实例变更后的分片数，取值范围具体参照查询云数据库的售卖规格返回参数。只能增加不能减少，默认为不变更分片数
        # @type ReplicateSetNum: Integer

        attr_accessor :InstanceId, :Memory, :Volume, :NodeNum, :ReplicateSetNum
        
        def initialize(instanceid=nil, memory=nil, volume=nil, nodenum=nil, replicatesetnum=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @NodeNum = nodenum
          @ReplicateSetNum = replicatesetnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @NodeNum = params['NodeNum']
          @ReplicateSetNum = params['ReplicateSetNum']
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
            @Price = DBInstancePrice.new
            @Price.deserialize(params['Price'])
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
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
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
            @Price = DBInstancePrice.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。默认为1。
        # （InquirePriceRenewDBInstances，RenewDBInstances调用时必填）
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # （InquirePriceRenewDBInstances，RenewDBInstances调用时必填）
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
          unless params['ReplicaSets'].nil?
            @ReplicaSets = []
            params['ReplicaSets'].each do |i|
              shardinfo_tmp = ShardInfo.new
              shardinfo_tmp.deserialize(i)
              @ReplicaSets << shardinfo_tmp
            end
          end
          unless params['ReadonlyInstances'].nil?
            @ReadonlyInstances = []
            params['ReadonlyInstances'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @ReadonlyInstances << dbinstanceinfo_tmp
            end
          end
          unless params['StandbyInstances'].nil?
            @StandbyInstances = []
            params['StandbyInstances'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @StandbyInstances << dbinstanceinfo_tmp
            end
          end
          unless params['CloneInstances'].nil?
            @CloneInstances = []
            params['CloneInstances'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @CloneInstances << dbinstanceinfo_tmp
            end
          end
          unless params['RelatedInstance'].nil?
            @RelatedInstance = DBInstanceInfo.new
            @RelatedInstance.deserialize(params['RelatedInstance'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
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

      # 实例可修改参数枚举类型集合。
      class InstanceEnumParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值
        # @type CurrentValue: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param EnumValue: 枚举值，所有支持的值
        # @type EnumValue: Array
        # @param NeedRestart: 是否需要重启生效 1:需要重启后生效；0：无需重启，设置成功即可生效；
        # @type NeedRestart: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param Tips: 中英文说明
        # @type Tips: Array
        # @param ValueType: 参数值类型说明
        # @type ValueType: String
        # @param Status: 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        # @type Status: Integer

        attr_accessor :CurrentValue, :DefaultValue, :EnumValue, :NeedRestart, :ParamName, :Tips, :ValueType, :Status
        
        def initialize(currentvalue=nil, defaultvalue=nil, enumvalue=nil, needrestart=nil, paramname=nil, tips=nil, valuetype=nil, status=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @EnumValue = enumvalue
          @NeedRestart = needrestart
          @ParamName = paramname
          @Tips = tips
          @ValueType = valuetype
          @Status = status
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @EnumValue = params['EnumValue']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
          @Status = params['Status']
        end
      end

      # 实例可修改参数integer类型集合。
      class InstanceIntegerParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param Max: 最大值
        # @type Max: String
        # @param Min: 最小值
        # @type Min: String
        # @param NeedRestart: 是否需要重启生效 1:需要重启后生效；0：无需重启，设置成功即可生效；
        # @type NeedRestart: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param Tips: 参数说明
        # @type Tips: Array
        # @param ValueType: 参数类型
        # @type ValueType: String
        # @param Status: 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        # @type Status: Integer
        # @param Unit: 冗余字段，可忽略
        # @type Unit: String

        attr_accessor :CurrentValue, :DefaultValue, :Max, :Min, :NeedRestart, :ParamName, :Tips, :ValueType, :Status, :Unit
        
        def initialize(currentvalue=nil, defaultvalue=nil, max=nil, min=nil, needrestart=nil, paramname=nil, tips=nil, valuetype=nil, status=nil, unit=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @Max = max
          @Min = min
          @NeedRestart = needrestart
          @ParamName = paramname
          @Tips = tips
          @ValueType = valuetype
          @Status = status
          @Unit = unit
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @Max = params['Max']
          @Min = params['Min']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
          @Status = params['Status']
          @Unit = params['Unit']
        end
      end

      # 实例可修改参数Multi类型集合。
      class InstanceMultiParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param EnumValue: 指导值范围
        # @type EnumValue: Array
        # @param NeedRestart: 是否需要重启生效 1:需要重启后生效；0：无需重启，设置成功即可生效；
        # @type NeedRestart: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param Status: 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        # @type Status: Integer
        # @param Tips: 参数说明
        # @type Tips: Array
        # @param ValueType: 当前值的类型描述，默认为multi
        # @type ValueType: String

        attr_accessor :CurrentValue, :DefaultValue, :EnumValue, :NeedRestart, :ParamName, :Status, :Tips, :ValueType
        
        def initialize(currentvalue=nil, defaultvalue=nil, enumvalue=nil, needrestart=nil, paramname=nil, status=nil, tips=nil, valuetype=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @EnumValue = enumvalue
          @NeedRestart = needrestart
          @ParamName = paramname
          @Status = status
          @Tips = tips
          @ValueType = valuetype
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @EnumValue = params['EnumValue']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @Status = params['Status']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
        end
      end

      # 实例可修改参数text类型集合。
      class InstanceTextParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param NeedRestart: 是否需要重启
        # @type NeedRestart: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param TextValue: text类型值
        # @type TextValue: String
        # @param Tips: 参数说明
        # @type Tips: Array
        # @param ValueType: 值类型说明
        # @type ValueType: String
        # @param Status: 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        # @type Status: String

        attr_accessor :CurrentValue, :DefaultValue, :NeedRestart, :ParamName, :TextValue, :Tips, :ValueType, :Status
        
        def initialize(currentvalue=nil, defaultvalue=nil, needrestart=nil, paramname=nil, textvalue=nil, tips=nil, valuetype=nil, status=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @NeedRestart = needrestart
          @ParamName = paramname
          @TextValue = textvalue
          @Tips = tips
          @ValueType = valuetype
          @Status = status
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @TextValue = params['TextValue']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
          @Status = params['Status']
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

      # KillOps请求参数结构体
      class KillOpsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Operations: 待终止的操作
        # @type Operations: Array

        attr_accessor :InstanceId, :Operations
        
        def initialize(instanceid=nil, operations=nil)
          @InstanceId = instanceid
          @Operations = operations
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              operation_tmp = Operation.new
              operation_tmp.deserialize(i)
              @Operations << operation_tmp
            end
          end
        end
      end

      # KillOps返回参数结构体
      class KillOpsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceNetworkAddress请求参数结构体
      class ModifyDBInstanceNetworkAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param OldIpExpiredTime: 原IP保留时长，单位为分钟；原IP会在约定时间后释放，在释放前原IP和新IP均可访问；0表示立即回收原IP
        # @type OldIpExpiredTime: Integer
        # @param NewUniqVpcId: 切换后IP地址的归属私有网络统一ID，若为基础网络，该字段为空
        # @type NewUniqVpcId: String
        # @param NewUniqSubnetId: 切换后IP地址的归属子网统一ID，若为基础网络，该字段为空
        # @type NewUniqSubnetId: String
        # @param NetworkAddresses: 待修改IP信息
        # @type NetworkAddresses: Array

        attr_accessor :InstanceId, :OldIpExpiredTime, :NewUniqVpcId, :NewUniqSubnetId, :NetworkAddresses
        
        def initialize(instanceid=nil, oldipexpiredtime=nil, newuniqvpcid=nil, newuniqsubnetid=nil, networkaddresses=nil)
          @InstanceId = instanceid
          @OldIpExpiredTime = oldipexpiredtime
          @NewUniqVpcId = newuniqvpcid
          @NewUniqSubnetId = newuniqsubnetid
          @NetworkAddresses = networkaddresses
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldIpExpiredTime = params['OldIpExpiredTime']
          @NewUniqVpcId = params['NewUniqVpcId']
          @NewUniqSubnetId = params['NewUniqSubnetId']
          unless params['NetworkAddresses'].nil?
            @NetworkAddresses = []
            params['NetworkAddresses'].each do |i|
              modifynetworkaddress_tmp = ModifyNetworkAddress.new
              modifynetworkaddress_tmp.deserialize(i)
              @NetworkAddresses << modifynetworkaddress_tmp
            end
          end
        end
      end

      # ModifyDBInstanceNetworkAddress返回参数结构体
      class ModifyDBInstanceNetworkAddressResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSecurityGroup请求参数结构体
      class ModifyDBInstanceSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SecurityGroupIds: 目标安全组id
        # @type SecurityGroupIds: Array

        attr_accessor :InstanceId, :SecurityGroupIds
        
        def initialize(instanceid=nil, securitygroupids=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # ModifyDBInstanceSecurityGroup返回参数结构体
      class ModifyDBInstanceSecurityGroupResponse < TencentCloud::Common::AbstractModel
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
        # @param NodeNum: 实例变更后的节点数，取值范围具体参照查询云数据库的售卖规格返回参数。默认为不变更节点数
        # @type NodeNum: Integer
        # @param ReplicateSetNum: 实例变更后的分片数，取值范围具体参照查询云数据库的售卖规格返回参数。只能增加不能减少，默认为不变更分片数
        # @type ReplicateSetNum: Integer
        # @param InMaintenance: 实例配置变更的切换时间，参数为：0(默认)、1。0-调整完成时，1-维护时间内。注：调整节点数和分片数不支持在【维护时间内】变更。
        # @type InMaintenance: Integer

        attr_accessor :InstanceId, :Memory, :Volume, :OplogSize, :NodeNum, :ReplicateSetNum, :InMaintenance
        
        def initialize(instanceid=nil, memory=nil, volume=nil, oplogsize=nil, nodenum=nil, replicatesetnum=nil, inmaintenance=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
          @NodeNum = nodenum
          @ReplicateSetNum = replicatesetnum
          @InMaintenance = inmaintenance
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
          @NodeNum = params['NodeNum']
          @ReplicateSetNum = params['ReplicateSetNum']
          @InMaintenance = params['InMaintenance']
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

      # 修改数据库地址
      class ModifyNetworkAddress < TencentCloud::Common::AbstractModel
        # @param NewIPAddress: 新IP地址。
        # @type NewIPAddress: String
        # @param OldIpAddress: 原IP地址。
        # @type OldIpAddress: String

        attr_accessor :NewIPAddress, :OldIpAddress
        
        def initialize(newipaddress=nil, oldipaddress=nil)
          @NewIPAddress = newipaddress
          @OldIpAddress = oldipaddress
        end

        def deserialize(params)
          @NewIPAddress = params['NewIPAddress']
          @OldIpAddress = params['OldIpAddress']
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

      # 需要终止的操作
      class Operation < TencentCloud::Common::AbstractModel
        # @param ReplicaSetName: 操作所在的分片名
        # @type ReplicaSetName: String
        # @param NodeName: 操作所在的节点名
        # @type NodeName: String
        # @param OpId: 操作序号
        # @type OpId: Integer

        attr_accessor :ReplicaSetName, :NodeName, :OpId
        
        def initialize(replicasetname=nil, nodename=nil, opid=nil)
          @ReplicaSetName = replicasetname
          @NodeName = nodename
          @OpId = opid
        end

        def deserialize(params)
          @ReplicaSetName = params['ReplicaSetName']
          @NodeName = params['NodeName']
          @OpId = params['OpId']
        end
      end

      # RenameInstance请求参数结构体
      class RenameInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param NewName: 自定义实例名称，名称只支持长度为60个字符的中文、英文、数字、下划线_、分隔符 -
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
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
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

      # 分片信息
      class ReplicaSetInfo < TencentCloud::Common::AbstractModel
        # @param ReplicaSetId: 副本集ID
        # @type ReplicaSetId: String

        attr_accessor :ReplicaSetId
        
        def initialize(replicasetid=nil)
          @ReplicaSetId = replicasetid
        end

        def deserialize(params)
          @ReplicaSetId = params['ReplicaSetId']
        end
      end

      # ResetDBInstancePassword请求参数结构体
      class ResetDBInstancePasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param UserName: 实例账号名
        # @type UserName: String
        # @param Password: 新密码，新密码长度不能少于8位
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

      # ResetDBInstancePassword返回参数结构体
      class ResetDBInstancePasswordResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步请求Id，用户查询该流程的运行状态
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

      # 安全组信息
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array
        # @param SecurityGroupId: 安全组id
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String

        attr_accessor :ProjectId, :CreateTime, :Inbound, :Outbound, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark
        
        def initialize(projectid=nil, createtime=nil, inbound=nil, outbound=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @Inbound = inbound
          @Outbound = outbound
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Inbound << securitygroupbound_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Outbound << securitygroupbound_tmp
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # 安全组规则
      class SecurityGroupBound < TencentCloud::Common::AbstractModel
        # @param Action: 执行规则。ACCEPT或DROP
        # @type Action: String
        # @param CidrIp: ip段。
        # @type CidrIp: String
        # @param PortRange: 端口范围
        # @type PortRange: String
        # @param IpProtocol: 传输层协议。tcp，udp或ALL
        # @type IpProtocol: String
        # @param Id: 安全组id代表的地址集合
        # @type Id: String
        # @param AddressModule: 地址组id代表的地址集合
        # @type AddressModule: String
        # @param ServiceModule: 服务组id代表的协议和端口集合
        # @type ServiceModule: String
        # @param Desc: 描述
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :Id, :AddressModule, :ServiceModule, :Desc
        
        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, id=nil, addressmodule=nil, servicemodule=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @Id = id
          @AddressModule = addressmodule
          @ServiceModule = servicemodule
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @Id = params['Id']
          @AddressModule = params['AddressModule']
          @ServiceModule = params['ServiceModule']
          @Desc = params['Desc']
        end
      end

      # SetAccountUserPrivilege请求参数结构体
      class SetAccountUserPrivilegeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param UserName: 账号名称
        # @type UserName: String
        # @param AuthRole: 权限信息
        # @type AuthRole: Array

        attr_accessor :InstanceId, :UserName, :AuthRole
        
        def initialize(instanceid=nil, username=nil, authrole=nil)
          @InstanceId = instanceid
          @UserName = username
          @AuthRole = authrole
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          unless params['AuthRole'].nil?
            @AuthRole = []
            params['AuthRole'].each do |i|
              auth_tmp = Auth.new
              auth_tmp.deserialize(i)
              @AuthRole << auth_tmp
            end
          end
        end
      end

      # SetAccountUserPrivilege返回参数结构体
      class SetAccountUserPrivilegeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 设置任务ID,用于查询是否设置完成
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
        # @param Cpu: 计算资源规格，单位为CPU核心数
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
        # @param SupportMultiAZ: 是否支持跨可用区部署 1-支持，0-不支持
        # @type SupportMultiAZ: Integer

        attr_accessor :Region, :Zone, :SpecItems, :SupportMultiAZ
        
        def initialize(region=nil, zone=nil, specitems=nil, supportmultiaz=nil)
          @Region = region
          @Zone = zone
          @SpecItems = specitems
          @SupportMultiAZ = supportmultiaz
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          unless params['SpecItems'].nil?
            @SpecItems = []
            params['SpecItems'].each do |i|
              specitem_tmp = SpecItem.new
              specitem_tmp.deserialize(i)
              @SpecItems << specitem_tmp
            end
          end
          @SupportMultiAZ = params['SupportMultiAZ']
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

      # TerminateDBInstances请求参数结构体
      class TerminateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id列表
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateDBInstances返回参数结构体
      class TerminateDBInstancesResponse < TencentCloud::Common::AbstractModel
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

