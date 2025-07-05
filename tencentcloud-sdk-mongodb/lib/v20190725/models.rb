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
  module Mongodb
    module V20190725
      # 修改实例节点详情
      class AddNodeList < TencentCloud::Common::AbstractModel
        # @param Role: 需要新增的节点角色。
        # - SECONDARY：Mongod 节点。
        # - READONLY：只读节点。
        # - MONGOS：Mongos 节点。
        # @type Role: String
        # @param Zone: 节点所对应的可用区。
        # - 单可用区，所有节点在同一可用区。
        # - 多可用区：当前标准规格是三可用区分布，主从节点不在同一可用区，需注意配置新增节点对应的可用区，且新增后必须满足任意2个可用区节点数大于第3个可用区原则。
        # @type Zone: String

        attr_accessor :Role, :Zone

        def initialize(role=nil, zone=nil)
          @Role = role
          @Zone = zone
        end

        def deserialize(params)
          @Role = params['Role']
          @Zone = params['Zone']
        end
      end

      # AssignProject请求参数结构体
      class AssignProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表，请登录[MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type BackupDesc: String
        # @param Region: 地区信息。
        # @type Region: String
        # @param Bucket: Bucket信息。
        # @type Bucket: String

        attr_accessor :CreateTime, :BackupName, :ReplicaSetId, :BackupSize, :Status, :Percent, :TimeSpend, :Url, :BackupMethod, :BackupDesc, :Region, :Bucket

        def initialize(createtime=nil, backupname=nil, replicasetid=nil, backupsize=nil, status=nil, percent=nil, timespend=nil, url=nil, backupmethod=nil, backupdesc=nil, region=nil, bucket=nil)
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
          @Region = region
          @Bucket = bucket
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
          @Region = params['Region']
          @Bucket = params['Bucket']
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
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param BackupType: 备份方式，0-自动备份，1-手动备份
        # @type BackupType: Integer
        # @param BackupName: 备份名称
        # @type BackupName: String
        # @param BackupDesc: 备份备注
        # @type BackupDesc: String
        # @param BackupSize: 备份文件大小，单位KB
        # @type BackupSize: Integer
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # @type EndTime: String
        # @param Status: 备份状态，1-备份中，2-备份成功
        # @type Status: Integer
        # @param BackupMethod: 备份方法，0-逻辑备份，1-物理备份
        # @type BackupMethod: Integer
        # @param BackId: 备份记录id
        # @type BackId: Integer
        # @param DeleteTime: 备份删除时间
        # @type DeleteTime: String
        # @param BackupRegion: 异地备份地域
        # @type BackupRegion: String

        attr_accessor :InstanceId, :BackupType, :BackupName, :BackupDesc, :BackupSize, :StartTime, :EndTime, :Status, :BackupMethod, :BackId, :DeleteTime, :BackupRegion

        def initialize(instanceid=nil, backuptype=nil, backupname=nil, backupdesc=nil, backupsize=nil, starttime=nil, endtime=nil, status=nil, backupmethod=nil, backid=nil, deletetime=nil, backupregion=nil)
          @InstanceId = instanceid
          @BackupType = backuptype
          @BackupName = backupname
          @BackupDesc = backupdesc
          @BackupSize = backupsize
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @BackupMethod = backupmethod
          @BackId = backid
          @DeleteTime = deletetime
          @BackupRegion = backupregion
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
          @BackId = params['BackId']
          @DeleteTime = params['DeleteTime']
          @BackupRegion = params['BackupRegion']
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

      # CreateAccountUser请求参数结构体
      class CreateAccountUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 新账号名称。其格式要求如下：<ul><li>字符范围[1,32]。</li><li>可输入[A,Z]、[a,z]、[1,9]范围的字符以及下划线“_”与短划线“-”。</li></ul>
        # @type UserName: String
        # @param Password: 新账号密码。密码复杂度要求如下：<ul><li>字符长度范围[8,32]。</li><li>至少包含字母、数字和特殊字符（叹号“!”、at"@"、井号“#”、百分号“%”、插入符“^”、星号“*”、小括号“()”、下划线“_”）中的两种。</li></ul>
        # @type Password: String
        # @param MongoUserPassword: mongouser 账号对应的密码。mongouser 为系统默认账号，即为创建实例时，设置的密码。
        # @type MongoUserPassword: String
        # @param UserDesc: 账号备注信息。
        # @type UserDesc: String
        # @param AuthRole: 账号的读写权限信息。
        # @type AuthRole: Array

        attr_accessor :InstanceId, :UserName, :Password, :MongoUserPassword, :UserDesc, :AuthRole

        def initialize(instanceid=nil, username=nil, password=nil, mongouserpassword=nil, userdesc=nil, authrole=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
          @MongoUserPassword = mongouserpassword
          @UserDesc = userdesc
          @AuthRole = authrole
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
          @MongoUserPassword = params['MongoUserPassword']
          @UserDesc = params['UserDesc']
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

      # CreateAccountUser返回参数结构体
      class CreateAccountUserResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 创建任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateBackupDBInstance请求参数结构体
      class CreateBackupDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupMethod: 设置备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # @type BackupMethod: Integer
        # @param BackupRemark: 备份备注信息。
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
        # @param AsyncRequestId: 查询备份流程的状态。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Memory: 实例内存大小，单位：GB。具体售卖的内存规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB。每一个 CPU 规格对应的最大磁盘与最小磁盘范围，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Volume: Integer
        # @param ReplicateSetNum: - 创建副本集实例，指副本集数量，该参数只能为1。
        # - 创建分片集群实例，指分片的数量。请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询分片数量的取值范围，其返回的数据结构SpecItems中的参数MinReplicateSetNum与MaxReplicateSetNum分别对应其最小值与最大值。
        # @type ReplicateSetNum: Integer
        # @param NodeNum: - 创建副本集实例，指每个副本集内主从节点数量。每个副本集所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 创建分片集群实例，指每个分片的主从节点数量。每个分片所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type NodeNum: Integer
        # @param MongoVersion: 指版本信息。具体支持的版本信息 ，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param MachineCode: 产品规格类型。
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版类型。
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，最小值1，最大值为10。
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，输入格式如：ap-guangzhou-2。
        # - 具体信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 该参数为主可用区，如果多可用区部署，Zone必须是AvailabilityZoneList中的一个。
        # @type Zone: String
        # @param ClusterType: 实例架构类型。
        # - REPLSET：副本集。
        # - SHARD：分片集群。
        # @type ClusterType: String
        # @param VpcId: 私有网络ID。请登录 [私有网络控制台](https://console.cloud.tencent.com/vpc) 查询确认正确的ID。 示例值：vpc-pxyzim13
        # @type VpcId: String
        # @param SubnetId: 私有网络VPC的子网。请登录 [私有网络控制台](https://console.cloud.tencent.com/vpc) 查询子网列表确认正确的 ID。 示例值：subnet-7jbabche
        # @type SubnetId: String
        # @param Password: 实例密码。设置要求如下：
        # - 字符个数为[8,32]。
        # - 可输入[A,Z]、[a,z]、[0,9]范围内的字符。
        # - 可输入的特殊字符包括：感叹号“!”，at“@”，警号“#”、百分号“%”、插入号“^”、星号“\*”、括号“()”、下划线“_”。
        # - 不能设置单一的字母或者数字。
        # @type Password: String
        # @param ProjectId: 项目ID。
        # - 若不设置该参数，则为默认项目。
        # - 在 [MongoDB 控制台项目管理](https://console.cloud.tencent.com/project)页面，可获取项目ID。
        # @type ProjectId: Integer
        # @param Tags: 实例标签信息。
        # @type Tags: Array
        # @param Clone: 实例类型。- 1：正式实例。- 3：只读实例。- 4：灾备实例。-5：克隆实例，注意：克隆实例RestoreTime为必填项。
        # @type Clone: Integer
        # @param Father: 父实例 ID。当参数**Clone**为3或者4时，即实例为只读或灾备实例时，该参数必须配置。
        # @type Father: String
        # @param SecurityGroup: 安全组 ID。
        # @type SecurityGroup: Array
        # @param RestoreTime: 克隆实例回档时间。
        # - 若为克隆实例，则必须配置该参数。输入格式示例：2021-08-13 16:30:00。
        # - 回档时间范围：仅能回档7天内时间点的数据。
        # @type RestoreTime: String
        # @param InstanceName: 实例名称。仅支持长度为60个字符的中文、英文、数字、下划线_、分隔符- 。
        # @type InstanceName: String
        # @param AvailabilityZoneList: 若多可用区部署云数据库实例，指定多可用区列表。
        # - 多可用区部署实例，参数 **Zone** 指定实例主可用区信息；**AvailabilityZoneList** 指定所有可用区信息，包含主可用区。输入格式如：[ap-guangzhou-2,ap-guangzhou-3,ap-guangzhou-4]。
        # - 通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 可获取云数据库不同地域规划的可用区信息，以便指定有效的可用区。
        # - 多可用区部署节点只能部署在3个不同可用区。不支持将集群的大多数节点部署在同一个可用区。例如：3节点集群不支持2个节点部署在同一个区。
        # @type AvailabilityZoneList: Array
        # @param MongosCpu: Mongos CPU 核数，支持1、2、4、8、16。购买分片集群时，必须填写。
        # @type MongosCpu: Integer
        # @param MongosMemory: Mongos 内存大小。
        # -  购买分片集群时，必须填写。
        # - 单位：GB，支持1核2GB、2核4GB、4核8GB、8核16GB、16核32GB。

        # @type MongosMemory: Integer
        # @param MongosNodeNum: Mongos 数量。购买分片集群时，必须填写。
        # - 单可用区部署实例，其数量范围为[3,32]。
        # - 多可用区部署实例，其数量范围为[6,32]。
        # @type MongosNodeNum: Integer
        # @param ReadonlyNodeNum: 只读节点数量，取值范围[0,5]。
        # @type ReadonlyNodeNum: Integer
        # @param ReadonlyNodeAvailabilityZoneList: 指只读节点所属可用区数组。跨可用区部署实例，参数**ReadonlyNodeNum**不为**0**时，必须配置该参数。
        # @type ReadonlyNodeAvailabilityZoneList: Array
        # @param HiddenZone: Hidden节点所属可用区。跨可用区部署实例，必须配置该参数。
        # @type HiddenZone: String
        # @param ParamTemplateId: 参数模板 ID。参数模板是一组 MongoDB 的参数并为预设置了参数值的集合，将一组有相同诉求的参数及值 存为模板，在创建实例时，可直接引用参数值到新实例。合理使用参数模板，可以提高MongoDB数据库的效率。模板列表从 DescribeDBInstanceParamTpl 接口获取，注意模板支持的版本。
        # @type ParamTemplateId: String

        attr_accessor :Memory, :Volume, :ReplicateSetNum, :NodeNum, :MongoVersion, :MachineCode, :GoodsNum, :Zone, :ClusterType, :VpcId, :SubnetId, :Password, :ProjectId, :Tags, :Clone, :Father, :SecurityGroup, :RestoreTime, :InstanceName, :AvailabilityZoneList, :MongosCpu, :MongosMemory, :MongosNodeNum, :ReadonlyNodeNum, :ReadonlyNodeAvailabilityZoneList, :HiddenZone, :ParamTemplateId

        def initialize(memory=nil, volume=nil, replicatesetnum=nil, nodenum=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, zone=nil, clustertype=nil, vpcid=nil, subnetid=nil, password=nil, projectid=nil, tags=nil, clone=nil, father=nil, securitygroup=nil, restoretime=nil, instancename=nil, availabilityzonelist=nil, mongoscpu=nil, mongosmemory=nil, mongosnodenum=nil, readonlynodenum=nil, readonlynodeavailabilityzonelist=nil, hiddenzone=nil, paramtemplateid=nil)
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
          @ReadonlyNodeNum = readonlynodenum
          @ReadonlyNodeAvailabilityZoneList = readonlynodeavailabilityzonelist
          @HiddenZone = hiddenzone
          @ParamTemplateId = paramtemplateid
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
          @ReadonlyNodeNum = params['ReadonlyNodeNum']
          @ReadonlyNodeAvailabilityZoneList = params['ReadonlyNodeAvailabilityZoneList']
          @HiddenZone = params['HiddenZone']
          @ParamTemplateId = params['ParamTemplateId']
        end
      end

      # CreateDBInstanceHour返回参数结构体
      class CreateDBInstanceHourResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID。
        # @type DealId: String
        # @param InstanceIds: 创建的实例ID列表。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateDBInstanceParamTpl请求参数结构体
      class CreateDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplName: 参数模板名称。
        # @type TplName: String
        # @param MongoVersion: 版本号，该参数模板支持的售卖版本请参照查询云数据库的售卖规格（DescribeSpecInfo）返回结果。参数与版本对应关系是：MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。当MirrorTplId为空时，该字段必填。
        # @type MongoVersion: String
        # @param ClusterType: 实例类型，REPLSET-副本集，SHARD-分片集群，STANDALONE-单节点
        # 当MirrorTplId为空时，该字段必填。
        # @type ClusterType: String
        # @param TplDesc: 模板描述信息。
        # @type TplDesc: String
        # @param Params: 模板参数，若为空，则以系统默认模板作为新版本参数。
        # @type Params: Array
        # @param MirrorTplId: 镜像模板ID，若该字段不为空，则以该模板为镜像，克隆出一个新的模板。注意：MirrorTplId不为空时，MongoVersion及ClusterType将以MirrorTpl模板的版本及实例类型为准。
        # @type MirrorTplId: String

        attr_accessor :TplName, :MongoVersion, :ClusterType, :TplDesc, :Params, :MirrorTplId

        def initialize(tplname=nil, mongoversion=nil, clustertype=nil, tpldesc=nil, params=nil, mirrortplid=nil)
          @TplName = tplname
          @MongoVersion = mongoversion
          @ClusterType = clustertype
          @TplDesc = tpldesc
          @Params = params
          @MirrorTplId = mirrortplid
        end

        def deserialize(params)
          @TplName = params['TplName']
          @MongoVersion = params['MongoVersion']
          @ClusterType = params['ClusterType']
          @TplDesc = params['TplDesc']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paramtype_tmp = ParamType.new
              paramtype_tmp.deserialize(i)
              @Params << paramtype_tmp
            end
          end
          @MirrorTplId = params['MirrorTplId']
        end
      end

      # CreateDBInstanceParamTpl返回参数结构体
      class CreateDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
        # @param TplId: 模板ID
        # @type TplId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TplId, :RequestId

        def initialize(tplid=nil, requestid=nil)
          @TplId = tplid
          @RequestId = requestid
        end

        def deserialize(params)
          @TplId = params['TplId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstance请求参数结构体
      class CreateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NodeNum: - 创建副本集实例，指每个副本集内主从节点数量。每个副本集所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 创建分片集群实例，指每个分片的主从节点数量。每个分片所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小，单位：GB。具体售卖的内存规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB。每一个 CPU 规格对应的最大磁盘与最小磁盘范围，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Volume: Integer
        # @param MongoVersion: 指版本信息。具体支持的版本信息 ，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param GoodsNum: 实例数量, 最小值1，最大值为10。
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，输入格式如：ap-guangzhou-2。
        # - 具体信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 该参数为主可用区，如果多可用区部署，Zone必须是AvailabilityZoneList中的一个。
        # @type Zone: String
        # @param Period: 指定购买实例的购买时长。取值可选：[1,2,3,4,5,6,7,8,9,10,11,12,24,36]；单位：月。
        # @type Period: Integer
        # @param MachineCode: 产品规格类型。
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版类型。
        # @type MachineCode: String
        # @param ClusterType: 实例架构类型。
        # - REPLSET：副本集。
        # - SHARD：分片集群。
        # @type ClusterType: String
        # @param ReplicateSetNum: - 创建副本集实例，指副本集数量，该参数只能为1。
        # - 创建分片集群实例，指分片的数量。请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询分片数量的取值范围，其返回的数据结构SpecItems中的参数MinReplicateSetNum与MaxReplicateSetNum分别对应其最小值与最大值。
        # @type ReplicateSetNum: Integer
        # @param ProjectId: 项目ID。
        # - 若不设置该参数，则为默认项目。
        # - 在 [MongoDB 控制台项目管理](https://console.cloud.tencent.com/project)页面，可获取项目ID。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络ID。请登录[私有网络控制台](https://console.cloud.tencent.com/vpc)查询确认正确的ID。 示例值：vpc-pxyzim13
        # @type VpcId: String
        # @param SubnetId: 私有网络VPC的子网。请登录 [私有网络控制台](https://console.cloud.tencent.com/vpc) 查询子网列表确认正确的 ID。 示例值：subnet-7jbabche
        # @type SubnetId: String
        # @param Password: 实例密码。设置要求如下：
        # - 字符个数为[8,32]。
        # - 可输入[A,Z]、[a,z]、[0,9]范围内的字符。
        # - 可输入的特殊字符包括：感叹号“!”，at“@”，警号“#”、百分号“%”、插入号“^”、星号“\*”、括号“()”、下划线“\_”。
        # - 不能设置单一的字母或者数字。
        # @type Password: String
        # @param Tags: 实例标签信息。
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标记。
        # - 0：不自动续费。
        # - 1：自动续费。
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动选择代金券。
        # - 1：是。
        # - 0：否。默认为0。
        # @type AutoVoucher: Integer
        # @param Clone: 实例类型。- 1：正式实例。- 3：只读实例。- 4：灾备实例。-5：整实例克隆，注意：克隆实例时，RestoreTime为必填项。
        # @type Clone: Integer
        # @param Father: 父实例 ID。当参数**Clone**为3或者4时，即实例为只读或灾备实例时，该参数必须配置。
        # @type Father: String
        # @param SecurityGroup: 安全组 ID。
        # @type SecurityGroup: Array
        # @param RestoreTime: 克隆实例回档时间，当Clone取值为5或6时为必填。- 若为克隆实例，则必须配置该参数。输入格式示例：2021-08-13 16:30:00。- 回档时间范围：仅能回档7天内时间点的数据。
        # @type RestoreTime: String
        # @param InstanceName: 实例名称。仅支持长度为60个字符的中文、英文、数字、下划线_、分隔符- 。
        # @type InstanceName: String
        # @param AvailabilityZoneList: 若多可用区部署云数据库实例，指定多可用区列表。
        # - 多可用区部署实例，参数 **Zone** 指定实例主可用区信息；**AvailabilityZoneList** 指定所有可用区信息，包含主可用区。输入格式如：[ap-guangzhou-2,ap-guangzhou-3,ap-guangzhou-4]。
        # - 通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 可获取云数据库不同地域规划的可用区信息，以便指定有效的可用区。
        # - 多可用区部署节点只能部署在3个不同可用区。不支持将集群的大多数节点部署在同一个可用区。例如：3节点集群不支持2个节点部署在同一个区。
        # @type AvailabilityZoneList: Array
        # @param MongosCpu: Mongos CPU 核数，支持1、2、4、8、16。购买分片集群时，必须填写。
        # @type MongosCpu: Integer
        # @param MongosMemory: Mongos 内存大小。
        # -  购买分片集群时，必须填写。
        # - 单位：GB，支持1核2GB、2核4GB、4核8GB、8核16GB、16核32GB。
        # @type MongosMemory: Integer
        # @param MongosNodeNum: Mongos 数量。购买分片集群时，必须填写。
        # - 单可用区部署实例，其数量范围为[3,32]。
        # - 多可用区部署实例，其数量范围为[6,32]。
        # @type MongosNodeNum: Integer
        # @param ReadonlyNodeNum: 只读节点数量，取值范围[0,5]。
        # @type ReadonlyNodeNum: Integer
        # @param ReadonlyNodeAvailabilityZoneList: 指只读节点所属可用区数组。跨可用区部署实例，参数**ReadonlyNodeNum**不为**0**时，必须配置该参数。
        # @type ReadonlyNodeAvailabilityZoneList: Array
        # @param HiddenZone: Hidden节点所属可用区。跨可用区部署实例，必须配置该参数。
        # @type HiddenZone: String
        # @param ParamTemplateId: 参数模板 ID。参数模板是一组 MongoDB 的参数并为预设置了参数值的集合，将一组有相同诉求的参数及值 存为模板，在创建实例时，可直接引用参数值到新实例。合理使用参数模板，可以提高MongoDB数据库的效率。模板列表从 DescribeDBInstanceParamTpl 接口获取，注意模板支持的版本及实例类型。
        # @type ParamTemplateId: String

        attr_accessor :NodeNum, :Memory, :Volume, :MongoVersion, :GoodsNum, :Zone, :Period, :MachineCode, :ClusterType, :ReplicateSetNum, :ProjectId, :VpcId, :SubnetId, :Password, :Tags, :AutoRenewFlag, :AutoVoucher, :Clone, :Father, :SecurityGroup, :RestoreTime, :InstanceName, :AvailabilityZoneList, :MongosCpu, :MongosMemory, :MongosNodeNum, :ReadonlyNodeNum, :ReadonlyNodeAvailabilityZoneList, :HiddenZone, :ParamTemplateId

        def initialize(nodenum=nil, memory=nil, volume=nil, mongoversion=nil, goodsnum=nil, zone=nil, period=nil, machinecode=nil, clustertype=nil, replicatesetnum=nil, projectid=nil, vpcid=nil, subnetid=nil, password=nil, tags=nil, autorenewflag=nil, autovoucher=nil, clone=nil, father=nil, securitygroup=nil, restoretime=nil, instancename=nil, availabilityzonelist=nil, mongoscpu=nil, mongosmemory=nil, mongosnodenum=nil, readonlynodenum=nil, readonlynodeavailabilityzonelist=nil, hiddenzone=nil, paramtemplateid=nil)
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
          @ReadonlyNodeNum = readonlynodenum
          @ReadonlyNodeAvailabilityZoneList = readonlynodeavailabilityzonelist
          @HiddenZone = hiddenzone
          @ParamTemplateId = paramtemplateid
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
          @ReadonlyNodeNum = params['ReadonlyNodeNum']
          @ReadonlyNodeAvailabilityZoneList = params['ReadonlyNodeAvailabilityZoneList']
          @HiddenZone = params['HiddenZone']
          @ParamTemplateId = params['ParamTemplateId']
        end
      end

      # CreateDBInstance返回参数结构体
      class CreateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
        # @type DealId: String
        # @param InstanceIds: 创建的实例ID列表
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param OpId: 操作序号。
        # @type OpId: Integer
        # @param Ns: 操作所在的命名空间，形式如db.collection。
        # @type Ns: String
        # @param Query: 操作执行语句。
        # @type Query: String
        # @param Op: 操作类型，可能的取值：aggregate、count、delete、distinct、find、findAndModify、getMore、insert、mapReduce、update和command。
        # @type Op: String
        # @param ReplicaSetName: 操作所在的分片名称。
        # @type ReplicaSetName: String
        # @param NodeName: 操作所在的节点名称。
        # @type NodeName: String
        # @param Operation: 操作详细信息。
        # @type Operation: String
        # @param State: 筛选条件，节点状态，可能的取值为：Primary、Secondary。
        # @type State: String
        # @param MicrosecsRunning: 操作已执行时间（ms）。
        # @type MicrosecsRunning: Integer
        # @param ExecNode: 当前操作所在节点信息。
        # @type ExecNode: String

        attr_accessor :OpId, :Ns, :Query, :Op, :ReplicaSetName, :NodeName, :Operation, :State, :MicrosecsRunning, :ExecNode

        def initialize(opid=nil, ns=nil, query=nil, op=nil, replicasetname=nil, nodename=nil, operation=nil, state=nil, microsecsrunning=nil, execnode=nil)
          @OpId = opid
          @Ns = ns
          @Query = query
          @Op = op
          @ReplicaSetName = replicasetname
          @NodeName = nodename
          @Operation = operation
          @State = state
          @MicrosecsRunning = microsecsrunning
          @ExecNode = execnode
        end

        def deserialize(params)
          @OpId = params['OpId']
          @Ns = params['Ns']
          @Query = params['Query']
          @Op = params['Op']
          @ReplicaSetName = params['ReplicaSetName']
          @NodeName = params['NodeName']
          @Operation = params['Operation']
          @State = params['State']
          @MicrosecsRunning = params['MicrosecsRunning']
          @ExecNode = params['ExecNode']
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
        # @type UnitPrice: Float
        # @param OriginalPrice: 原价
        # @type OriginalPrice: Float
        # @param DiscountPrice: 折扣价
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

      # 数据库实例 URI 形式的连接串访问地址示例。
      class DbURL < TencentCloud::Common::AbstractModel
        # @param URLType: 指 URI 类别，包括：，
        # - CLUSTER_ALL：指通过该 URI 连接库实例的主节点，可读写。
        # - CLUSTER_READ_READONLY：指通过该 URI 连接实例只读节点。
        # - CLUSTER_READ_SECONDARY：指通过该 URI 连接实例从节点。
        # - CLUSTER_READ_SECONDARY_AND_READONLY：指通过该 URI 连接实例只读从节点。
        # - CLUSTER_PRIMARY_AND_SECONDARY：指通过该 URI 连接实例 主节点与从节点。
        # - MONGOS_ALL：指通过该  URI 连接每个 Mongos 节点，可读写。
        # - MONGOS_READ_READONLY：指通过该 URI 连接 Mongos 的只读节点。
        # - MONGOS_READ_SECONDARY：指通过该 URI 连接 Mongos 的从节点。
        # - MONGOS_READ_PRIMARY_AND_SECONDARY：指通过该URI 连接 Mongos 的主节点与从节点。
        # - MONGOS_READ_SECONDARY_AND_READONLY：指通过该URI 连接 Mongos 的从节点与只读节点。
        # @type URLType: String
        # @param Address: 实例 URI 形式的连接串访问地址示例。
        # @type Address: String

        attr_accessor :URLType, :Address

        def initialize(urltype=nil, address=nil)
          @URLType = urltype
          @Address = address
        end

        def deserialize(params)
          @URLType = params['URLType']
          @Address = params['Address']
        end
      end

      # DeleteAccountUser请求参数结构体
      class DeleteAccountUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待删除账号的实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 配置待删除的账号名。
        # @type UserName: String
        # @param MongoUserPassword: 配置 mongouser 对应的密码。mongouser为系统默认账号，输入其对应的密码。
        # @type MongoUserPassword: String

        attr_accessor :InstanceId, :UserName, :MongoUserPassword

        def initialize(instanceid=nil, username=nil, mongouserpassword=nil)
          @InstanceId = instanceid
          @UserName = username
          @MongoUserPassword = mongouserpassword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @MongoUserPassword = params['MongoUserPassword']
        end
      end

      # DeleteAccountUser返回参数结构体
      class DeleteAccountUserResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 账户删除任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAccountUsers请求参数结构体
      class DescribeAccountUsersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待获取账号的实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAccountUsers返回参数结构体
      class DescribeAccountUsersResponse < TencentCloud::Common::AbstractModel
        # @param Users: 实例账号列表。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :RequestId

        def initialize(users=nil, requestid=nil)
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
          @RequestId = params['RequestId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeBackupRules请求参数结构体
      class DescribeBackupRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBackupRules返回参数结构体
      class DescribeBackupRulesResponse < TencentCloud::Common::AbstractModel
        # @param BackupSaveTime: 备份数据保留期限。单位为：天。
        # @type BackupSaveTime: Integer
        # @param BackupTime: 自动备份开始时间。
        # @type BackupTime: Integer
        # @param BackupMethod: 备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # @type BackupMethod: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupSaveTime, :BackupTime, :BackupMethod, :RequestId

        def initialize(backupsavetime=nil, backuptime=nil, backupmethod=nil, requestid=nil)
          @BackupSaveTime = backupsavetime
          @BackupTime = backuptime
          @BackupMethod = backupmethod
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupSaveTime = params['BackupSaveTime']
          @BackupTime = params['BackupTime']
          @BackupMethod = params['BackupMethod']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientConnections请求参数结构体
      class DescribeClientConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待查询的实例ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Limit: 单次请求返回的数量。最小值为1，最大值为1000，默认值为1000。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0。Offset=Limit*(页码-1)。
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
        # @param Clients: 客户端连接信息，包括客户端 IP 和对应 IP 的连接数量。
        # @type Clients: Array
        # @param TotalCount: 满足条件的记录总条数，可用于分页查询。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 指定要查询的实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Ns: 操作所属的命名空间 namespace，格式为 db.collection。
        # @type Ns: String
        # @param MillisecondRunning: 设置查询筛选条件为操作任务已经执行的时间。
        # - 默认值为0，取值范围为[0, 3600000]，单位：毫秒。
        # - 结果将返回超过设置时间的操作。
        # @type MillisecondRunning: Integer
        # @param Op: 设置查询筛选条件为操作任务类型。取值包括：none、update、insert，query、command、getmore、remove 和 killcursors。
        # @type Op: String
        # @param ReplicaSetName: 筛选条件，分片名称。
        # @type ReplicaSetName: String
        # @param State: 设置查询筛选条件为节点角色。
        # - primary：主节点。
        # - secondary：从节点。
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
        # @param TotalCount: 符合查询条件的操作总数。
        # @type TotalCount: Integer
        # @param CurrentOps: 当前操作列表。
        # @type CurrentOps: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 当前订单的资源Id。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :OriginalPrice, :DiscountPrice, :Action, :InstanceId, :RequestId

        def initialize(status=nil, originalprice=nil, discountprice=nil, action=nil, instanceid=nil, requestid=nil)
          @Status = status
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Action = action
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Action = params['Action']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceNamespace请求参数结构体
      class DescribeDBInstanceNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定查询数据库所属的实例 ID，支持批量查询。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param DbName: 指定查询的数据库名。为空时，返回当前实例的全部数据库列表。
        # @type DbName: String

        attr_accessor :InstanceId, :DbName

        def initialize(instanceid=nil, dbname=nil)
          @InstanceId = instanceid
          @DbName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
        end
      end

      # DescribeDBInstanceNamespace返回参数结构体
      class DescribeDBInstanceNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Databases: 查询实例的数据库列表。若未使用 DbName 指定具体查询的数据库，则仅返回查询实例所有的数据库列表，而不返回 Collections 集合信息。
        # @type Databases: Array
        # @param Collections: 查询的集合信息。指定 DbName 时，则仅返回该数据库下的集合列表。
        # @type Collections: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Databases, :Collections, :RequestId

        def initialize(databases=nil, collections=nil, requestid=nil)
          @Databases = databases
          @Collections = collections
          @RequestId = requestid
        end

        def deserialize(params)
          @Databases = params['Databases']
          @Collections = params['Collections']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceNodeProperty请求参数结构体
      class DescribeDBInstanceNodePropertyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param NodeIds: 节点ID。
        # @type NodeIds: Array
        # @param Roles: 节点角色。可选值包括：
        # <ul><li>PRIMARY：主节点。</li><li>SECONDARY：从节点。</li><li>READONLY：只读节点。</li><li>ARBITER：仲裁节点。</li></ul>
        # @type Roles: Array
        # @param OnlyHidden: 该参数指定节点是否为Hidden节点，默认为false。
        # @type OnlyHidden: Boolean
        # @param Priority: 该参数指定选举新主节点的优先级。其取值范围为[0,100]，数值越高，优先级越高。
        # @type Priority: Integer
        # @param Votes: 该参数指定节点投票权。
        # <ul><li>1：具有投票权。</li><li>0：无投票权。</li></ul>
        # @type Votes: Integer
        # @param Tags: 节点标签。
        # @type Tags: Array

        attr_accessor :InstanceId, :NodeIds, :Roles, :OnlyHidden, :Priority, :Votes, :Tags

        def initialize(instanceid=nil, nodeids=nil, roles=nil, onlyhidden=nil, priority=nil, votes=nil, tags=nil)
          @InstanceId = instanceid
          @NodeIds = nodeids
          @Roles = roles
          @OnlyHidden = onlyhidden
          @Priority = priority
          @Votes = votes
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeIds = params['NodeIds']
          @Roles = params['Roles']
          @OnlyHidden = params['OnlyHidden']
          @Priority = params['Priority']
          @Votes = params['Votes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              nodetag_tmp = NodeTag.new
              nodetag_tmp.deserialize(i)
              @Tags << nodetag_tmp
            end
          end
        end
      end

      # DescribeDBInstanceNodeProperty返回参数结构体
      class DescribeDBInstanceNodePropertyResponse < TencentCloud::Common::AbstractModel
        # @param Mongos: Mongos节点属性。
        # @type Mongos: Array
        # @param ReplicateSets: 副本集节点信息。
        # @type ReplicateSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Mongos, :ReplicateSets, :RequestId

        def initialize(mongos=nil, replicatesets=nil, requestid=nil)
          @Mongos = mongos
          @ReplicateSets = replicatesets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Mongos'].nil?
            @Mongos = []
            params['Mongos'].each do |i|
              nodeproperty_tmp = NodeProperty.new
              nodeproperty_tmp.deserialize(i)
              @Mongos << nodeproperty_tmp
            end
          end
          unless params['ReplicateSets'].nil?
            @ReplicateSets = []
            params['ReplicateSets'].each do |i|
              replicatesetinfo_tmp = ReplicateSetInfo.new
              replicatesetinfo_tmp.deserialize(i)
              @ReplicateSets << replicatesetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceParamTplDetail请求参数结构体
      class DescribeDBInstanceParamTplDetailRequest < TencentCloud::Common::AbstractModel
        # @param TplId: 参数模板 ID。
        # @type TplId: String
        # @param ParamName: 参数名称，传入该值，则只会获取该字段的参数详情。为空时，返回全部参数。
        # @type ParamName: String

        attr_accessor :TplId, :ParamName

        def initialize(tplid=nil, paramname=nil)
          @TplId = tplid
          @ParamName = paramname
        end

        def deserialize(params)
          @TplId = params['TplId']
          @ParamName = params['ParamName']
        end
      end

      # DescribeDBInstanceParamTplDetail返回参数结构体
      class DescribeDBInstanceParamTplDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceEnumParams: 枚举类参数详情列表。
        # @type InstanceEnumParams: Array
        # @param InstanceIntegerParams: 整形参数详情列表。
        # @type InstanceIntegerParams: Array
        # @param InstanceTextParams: 文本参数详情列表。
        # @type InstanceTextParams: Array
        # @param InstanceMultiParams: 多值参数详情列表。
        # @type InstanceMultiParams: Array
        # @param TotalCount: 参数总个数。
        # @type TotalCount: Integer
        # @param MongoVersion: 模板适配实例版本。
        # @type MongoVersion: String
        # @param ClusterType: 模板适配集群类型，副本集或分片。。
        # @type ClusterType: String
        # @param TplName: 参数模板名称。
        # @type TplName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceEnumParams, :InstanceIntegerParams, :InstanceTextParams, :InstanceMultiParams, :TotalCount, :MongoVersion, :ClusterType, :TplName, :RequestId

        def initialize(instanceenumparams=nil, instanceintegerparams=nil, instancetextparams=nil, instancemultiparams=nil, totalcount=nil, mongoversion=nil, clustertype=nil, tplname=nil, requestid=nil)
          @InstanceEnumParams = instanceenumparams
          @InstanceIntegerParams = instanceintegerparams
          @InstanceTextParams = instancetextparams
          @InstanceMultiParams = instancemultiparams
          @TotalCount = totalcount
          @MongoVersion = mongoversion
          @ClusterType = clustertype
          @TplName = tplname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceEnumParams'].nil?
            @InstanceEnumParams = []
            params['InstanceEnumParams'].each do |i|
              instanceenumparam_tmp = InstanceEnumParam.new
              instanceenumparam_tmp.deserialize(i)
              @InstanceEnumParams << instanceenumparam_tmp
            end
          end
          unless params['InstanceIntegerParams'].nil?
            @InstanceIntegerParams = []
            params['InstanceIntegerParams'].each do |i|
              instanceintegerparam_tmp = InstanceIntegerParam.new
              instanceintegerparam_tmp.deserialize(i)
              @InstanceIntegerParams << instanceintegerparam_tmp
            end
          end
          unless params['InstanceTextParams'].nil?
            @InstanceTextParams = []
            params['InstanceTextParams'].each do |i|
              instancetextparam_tmp = InstanceTextParam.new
              instancetextparam_tmp.deserialize(i)
              @InstanceTextParams << instancetextparam_tmp
            end
          end
          unless params['InstanceMultiParams'].nil?
            @InstanceMultiParams = []
            params['InstanceMultiParams'].each do |i|
              instancemultiparam_tmp = InstanceMultiParam.new
              instancemultiparam_tmp.deserialize(i)
              @InstanceMultiParams << instancemultiparam_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @MongoVersion = params['MongoVersion']
          @ClusterType = params['ClusterType']
          @TplName = params['TplName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceParamTpl请求参数结构体
      class DescribeDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplIds: 参数模板 ID 查询条件。
        # @type TplIds: Array
        # @param TplNames: 模板名称，查询条件。
        # @type TplNames: Array
        # @param MongoVersion: 根据版本号查询参数模板，具体支持的售卖版本，请参见[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询云数据库的售卖规格的返回结果。参数与版本对应关系如下所示：
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # @type MongoVersion: Array
        # @param TplType: 根据模板类型查询参数模板，支持DEFAULT（默认模板）和CUSTOMIZE（自定义模板）两种。
        # @type TplType: String

        attr_accessor :TplIds, :TplNames, :MongoVersion, :TplType

        def initialize(tplids=nil, tplnames=nil, mongoversion=nil, tpltype=nil)
          @TplIds = tplids
          @TplNames = tplnames
          @MongoVersion = mongoversion
          @TplType = tpltype
        end

        def deserialize(params)
          @TplIds = params['TplIds']
          @TplNames = params['TplNames']
          @MongoVersion = params['MongoVersion']
          @TplType = params['TplType']
        end
      end

      # DescribeDBInstanceParamTpl返回参数结构体
      class DescribeDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
        # @param ParamTpls: 参数模板列表信息。
        # @type ParamTpls: Array
        # @param TotalCount: 参数模板总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ParamTpls, :TotalCount, :RequestId

        def initialize(paramtpls=nil, totalcount=nil, requestid=nil)
          @ParamTpls = paramtpls
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ParamTpls'].nil?
            @ParamTpls = []
            params['ParamTpls'].each do |i|
              paramtpl_tmp = ParamTpl.new
              paramtpl_tmp.deserialize(i)
              @ParamTpls << paramtpl_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceURL请求参数结构体
      class DescribeDBInstanceURLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb#/)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceURL返回参数结构体
      class DescribeDBInstanceURLResponse < TencentCloud::Common::AbstractModel
        # @param Urls: 实例 URI 形式的连接串访问地址示例。包含：URI 类型及连接串地址。
        # @type Urls: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Urls, :RequestId

        def initialize(urls=nil, requestid=nil)
          @Urls = urls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Urls'].nil?
            @Urls = []
            params['Urls'].each do |i|
              dburl_tmp = DbURL.new
              dburl_tmp.deserialize(i)
              @Urls << dburl_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceIds: Array
        # @param InstanceType: 指定查询的实例类型。取值范围如下：<ul><li>0：所有实例。</li><li>1：正式实例。</li><li>3：只读实例。</li><li>4：灾备实例。</li></ul>
        # @type InstanceType: Integer
        # @param ClusterType: 指定所查询实例的集群类型，取值范围如下：<ul><li>0：副本集实例。</li><li>1：分片实例。</li><li>-1：副本集与分片实例。</li></ul>
        # @type ClusterType: Integer
        # @param Status: 指定所查询实例的当前状态，取值范围如下所示：<ul><li>0：待初始化。</li><li>1：流程处理中，例如：变更规格、参数修改等。</li><li>2：实例正常运行中。</li><li>-2：实例已过期。</li></ul>
        # @type Status: Array
        # @param VpcId: 私有网络的 ID。
        # - 基础网络则无需配置该参数。
        # - 请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表中，单击私有网络名称，在**私有网络**页面获取其 ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网ID。
        # - 基础网络则无需配置该参数。
        # - 请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表中，单击私有网络名称，在**私有网络**页面获取其子网 ID。
        # @type SubnetId: String
        # @param PayMode: 指定所查询实例的付费类型，取值范围如下：<ul><li>0：查询按量计费实例。</li><li>1：查询包年包月实例。</li><li>-1：查询按量计费与包年包月实例。</li></ul>
        # @type PayMode: Integer
        # @param Limit: 单次请求返回的数量。默认值为20，取值范围为[1,100]。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0。
        # @type Offset: Integer
        # @param OrderBy: 配置返回结果排序依据的字段。目前支持依据"ProjectId"、"InstanceName"、"CreateTime"排序。
        # @type OrderBy: String
        # @param OrderByType: 配置返回结果的排序方式。
        # - ASC：升序。
        # - DESC：降序。
        # @type OrderByType: String
        # @param ProjectIds: 项目 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)，在右上角的账户信息下拉菜单中，选择项目管理查询项目。
        # @type ProjectIds: Array
        # @param SearchKey: 指定查询搜索的关键词。支持设置为具体的实例ID、实例名称或者内网 IP 地址。
        # @type SearchKey: String
        # @param Tags: 标签信息，包含标签键与标签值。
        # @type Tags: Array

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
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param InstanceDetails: 实例详细信息列表。
        # @type InstanceDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDetailedSlowLogs请求参数结构体
      class DescribeDetailedSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param StartTime: 待查询慢日志的开始时间
        # @type StartTime: String
        # @param EndTime: 待慢日志的结束时间
        # @type EndTime: String
        # @param ExecTime: 过滤执行时间大于此值的慢日志，单位ms，默认值100
        # @type ExecTime: Integer
        # @param Commands: 过滤慢日志的命令类型
        # @type Commands: Array
        # @param Texts: 全文搜索关键字，多个关键字间为或关系
        # @type Texts: Array
        # @param NodeNames: 根据节点名过滤
        # @type NodeNames: Array
        # @param QueryHash: 根据queryHash过滤
        # @type QueryHash: Array
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 返回条数
        # @type Limit: Integer
        # @param OrderBy: 排序条件，只支持StartTime(按慢日志生成时间)和ExecTime(慢日志执行时间)
        # @type OrderBy: String
        # @param OrderByType: 排序。desc倒排，asc正排
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :ExecTime, :Commands, :Texts, :NodeNames, :QueryHash, :Offset, :Limit, :OrderBy, :OrderByType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, exectime=nil, commands=nil, texts=nil, nodenames=nil, queryhash=nil, offset=nil, limit=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @ExecTime = exectime
          @Commands = commands
          @Texts = texts
          @NodeNames = nodenames
          @QueryHash = queryhash
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecTime = params['ExecTime']
          @Commands = params['Commands']
          @Texts = params['Texts']
          @NodeNames = params['NodeNames']
          @QueryHash = params['QueryHash']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeDetailedSlowLogs返回参数结构体
      class DescribeDetailedSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足条件的慢日志数量
        # @type TotalCount: Integer
        # @param DetailedSlowLogs: 慢日志详情
        # @type DetailedSlowLogs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DetailedSlowLogs, :RequestId

        def initialize(totalcount=nil, detailedslowlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @DetailedSlowLogs = detailedslowlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DetailedSlowLogs'].nil?
            @DetailedSlowLogs = []
            params['DetailedSlowLogs'].each do |i|
              slowlogitem_tmp = SlowLogItem.new
              slowlogitem_tmp.deserialize(i)
              @DetailedSlowLogs << slowlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待查询参数列表的实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
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
        # @param InstanceEnumParam: 参数值为枚举类型的参数集合。
        # @type InstanceEnumParam: Array
        # @param InstanceIntegerParam: 参数值为 Integer 类型的参数集合。
        # @type InstanceIntegerParam: Array
        # @param InstanceTextParam: 参数值为 Text 类型的参数集合。
        # @type InstanceTextParam: Array
        # @param InstanceMultiParam: 参数值为混合类型的参数集合。
        # @type InstanceMultiParam: Array
        # @param TotalCount: 当前实例支持修改的参数数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例 ID。例如：cmgo-p8vn****。
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
        # @param Groups: 实例绑定的安全组信息。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Format: 慢日志返回格式。默认返回原生慢日志格式，4.4及以上版本可设置为json。
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
        # @type SlowLogs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTransparentDataEncryptionStatus请求参数结构体
      class DescribeTransparentDataEncryptionStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeTransparentDataEncryptionStatus返回参数结构体
      class DescribeTransparentDataEncryptionStatusResponse < TencentCloud::Common::AbstractModel
        # @param TransparentDataEncryptionStatus: 表示是否开启了透明加密。
        # - close：未开启。
        # - open：已开启。
        # @type TransparentDataEncryptionStatus: String
        # @param KeyInfoList: 已绑定的密钥列表，如未绑定，返回null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TransparentDataEncryptionStatus, :KeyInfoList, :RequestId

        def initialize(transparentdataencryptionstatus=nil, keyinfolist=nil, requestid=nil)
          @TransparentDataEncryptionStatus = transparentdataencryptionstatus
          @KeyInfoList = keyinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TransparentDataEncryptionStatus = params['TransparentDataEncryptionStatus']
          unless params['KeyInfoList'].nil?
            @KeyInfoList = []
            params['KeyInfoList'].each do |i|
              kmsinfodetail_tmp = KMSInfoDetail.new
              kmsinfodetail_tmp.deserialize(i)
              @KeyInfoList << kmsinfodetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DropDBInstanceParamTpl请求参数结构体
      class DropDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplId: 参数模板 ID。
        # @type TplId: String

        attr_accessor :TplId

        def initialize(tplid=nil)
          @TplId = tplid
        end

        def deserialize(params)
          @TplId = params['TplId']
        end
      end

      # DropDBInstanceParamTpl返回参数结构体
      class DropDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
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

      # EnableTransparentDataEncryption请求参数结构体
      class EnableTransparentDataEncryptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。目前支持通用版本包含：4.4、5.0，云盘版暂不支持。
        # @type InstanceId: String
        # @param KmsRegion:  [密钥管理系统（Key Management Service，KMS）](https://cloud.tencent.com/document/product/573/18809)服务所在地域，例如 ap-shanghai。
        # @type KmsRegion: String
        # @param KeyId: 密钥 ID。若不设置该参数，不指定具体的密钥 ID，由腾讯云自动生成密钥。
        # @type KeyId: String

        attr_accessor :InstanceId, :KmsRegion, :KeyId

        def initialize(instanceid=nil, kmsregion=nil, keyid=nil)
          @InstanceId = instanceid
          @KmsRegion = kmsregion
          @KeyId = keyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KmsRegion = params['KmsRegion']
          @KeyId = params['KeyId']
        end
      end

      # EnableTransparentDataEncryption返回参数结构体
      class EnableTransparentDataEncryptionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 开启透明加密的异步流程id，用于查询流程状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 按key回档，用于筛选数据的键值对
      class FBKeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 用于按key回档过滤的key
        # @type Key: String
        # @param Value: 用于按key回档过滤的value
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

      # FlashBackDBInstance请求参数结构体
      class FlashBackDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 开启按 Key 回档的实例 ID。
        # @type InstanceId: String
        # @param TargetFlashbackTime: 源数据想恢复到的时间。
        # @type TargetFlashbackTime: String
        # @param TargetDatabases: 源数据所在的库表信息。
        # @type TargetDatabases: Array
        # @param TargetInstanceId: 数据最终写入的实例 ID。
        # @type TargetInstanceId: String

        attr_accessor :InstanceId, :TargetFlashbackTime, :TargetDatabases, :TargetInstanceId

        def initialize(instanceid=nil, targetflashbacktime=nil, targetdatabases=nil, targetinstanceid=nil)
          @InstanceId = instanceid
          @TargetFlashbackTime = targetflashbacktime
          @TargetDatabases = targetdatabases
          @TargetInstanceId = targetinstanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TargetFlashbackTime = params['TargetFlashbackTime']
          unless params['TargetDatabases'].nil?
            @TargetDatabases = []
            params['TargetDatabases'].each do |i|
              flashbackdatabase_tmp = FlashbackDatabase.new
              flashbackdatabase_tmp.deserialize(i)
              @TargetDatabases << flashbackdatabase_tmp
            end
          end
          @TargetInstanceId = params['TargetInstanceId']
        end
      end

      # FlashBackDBInstance返回参数结构体
      class FlashBackDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 回档数据异步任务 ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 按key回档，源数据所在的表
      class FlashbackCollection < TencentCloud::Common::AbstractModel
        # @param CollectionName: 按key回档指定的集合名
        # @type CollectionName: String
        # @param TargetResultCollectionName: 按key回档到的目标集合名
        # @type TargetResultCollectionName: String
        # @param FilterKey: 上传到cos的文件的value所对应的key值
        # @type FilterKey: String
        # @param KeyValues: 用于按key回档过滤的键值对
        # @type KeyValues: Array

        attr_accessor :CollectionName, :TargetResultCollectionName, :FilterKey, :KeyValues

        def initialize(collectionname=nil, targetresultcollectionname=nil, filterkey=nil, keyvalues=nil)
          @CollectionName = collectionname
          @TargetResultCollectionName = targetresultcollectionname
          @FilterKey = filterkey
          @KeyValues = keyvalues
        end

        def deserialize(params)
          @CollectionName = params['CollectionName']
          @TargetResultCollectionName = params['TargetResultCollectionName']
          @FilterKey = params['FilterKey']
          unless params['KeyValues'].nil?
            @KeyValues = []
            params['KeyValues'].each do |i|
              fbkeyvalue_tmp = FBKeyValue.new
              fbkeyvalue_tmp.deserialize(i)
              @KeyValues << fbkeyvalue_tmp
            end
          end
        end
      end

      # 按key回档，源数据所在的库表
      class FlashbackDatabase < TencentCloud::Common::AbstractModel
        # @param DBName: 按key回档源数据所在库
        # @type DBName: String
        # @param Collections: 按key回档的集群数组
        # @type Collections: Array

        attr_accessor :DBName, :Collections

        def initialize(dbname=nil, collections=nil)
          @DBName = dbname
          @Collections = collections
        end

        def deserialize(params)
          @DBName = params['DBName']
          unless params['Collections'].nil?
            @Collections = []
            params['Collections'].each do |i|
              flashbackcollection_tmp = FlashbackCollection.new
              flashbackcollection_tmp.deserialize(i)
              @Collections << flashbackcollection_tmp
            end
          end
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

      # InquirePriceCreateDBInstances请求参数结构体
      class InquirePriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属区域及可用区信息。格式：ap-guangzhou-2。
        # @type Zone: String
        # @param NodeNum: - 创建副本集实例，指每个副本集内主从节点数量。每个副本集所支持的的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 创建分片集群实例，指每个分片的主从节点数量。每个分片所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小。
        # - 单位：GB。
        # - 取值范围：请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询，其返回的数据结构SpecItems中的参数CPU与Memory分别对应CPU核数与内存规格。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小。
        # - 单位：GB。
        # - 取值范围：请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询，其返回的数据结构SpecItems中的参数MinStorage与MaxStorage分别对应其最小磁盘规格与最大磁盘规格。
        # @type Volume: Integer
        # @param MongoVersion: 实例版本信息。具体支持的版本，请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询，其返回的数据结构SpecItems中的参数MongoVersionCode为实例所支持的版本信息。版本信息与版本号对应关系如下：
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param MachineCode: 产品规格类型。
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版。
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，取值范围为[1,10]。
        # @type GoodsNum: Integer
        # @param ClusterType: 实例类型。
        # - REPLSET：副本集。
        # - SHARD：分片集群。
        # @type ClusterType: String
        # @param ReplicateSetNum: - 创建副本集实例，指副本集数量，该参数只能为1。
        # - 创建分片集群实例，指分片的数量。请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询分片数量的取值范围，其返回的数据结构SpecItems中的参数MinReplicateSetNum与MaxReplicateSetNum分别对应其最小值与最大值。
        # @type ReplicateSetNum: Integer
        # @param Period: - 选择包年包月计费模式，即 <b>InstanceChargeType </b>设定为<b>PREPAID</b>时，必须设置该参数，指定购买实例的购买时长。取值可选：[1,2,3,4,5,6,7,8,9,10,11,12,24,36]；单位：月。
        # -选择按量计费，即 <b>InstanceChargeType</b> 设定为 **POSTPAID_BY_HOUR** 时，该参数仅可配置为 1。
        # @type Period: Integer
        # @param InstanceChargeType: 实例付费方式。
        # - PREPAID：包年包月计费。
        # - POSTPAID_BY_HOUR：按量计费。
        # @type InstanceChargeType: String
        # @param MongosCpu: Mongos CPU 核数，支持1、2、4、8、16。购买分片集群时，必须填写。注意为空时取默认取值为2C。
        # @type MongosCpu: Integer
        # @param MongosMemory: Mongos 内存大小。-  购买分片集群时，必须填写。- 单位：GB，支持1核2GB、2核4GB、4核8GB、8核16GB、16核32GB。注意为空时取默认取值为4G。
        # @type MongosMemory: Integer
        # @param MongosNum: 指 Mongos 个数，取值范围为[3,32]。若为分片集群实例询价，则该参数必须设置。注意为空时取默认取值为3个节点。
        # @type MongosNum: Integer
        # @param ConfigServerCpu: 指 ConfigServer CPU核数，固定取值为 1，单位：GB，可不配置该参数。
        # @type ConfigServerCpu: Integer
        # @param ConfigServerMemory: 指 ConfigServer 内存大小，固定取值为 2，单位：GB，可不配置该参数。
        # @type ConfigServerMemory: Integer
        # @param ConfigServerVolume: 指 ConfigServer 磁盘大小，固定取值为 20，单位：GB，可不配置该参数。
        # @type ConfigServerVolume: Integer

        attr_accessor :Zone, :NodeNum, :Memory, :Volume, :MongoVersion, :MachineCode, :GoodsNum, :ClusterType, :ReplicateSetNum, :Period, :InstanceChargeType, :MongosCpu, :MongosMemory, :MongosNum, :ConfigServerCpu, :ConfigServerMemory, :ConfigServerVolume

        def initialize(zone=nil, nodenum=nil, memory=nil, volume=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, clustertype=nil, replicatesetnum=nil, period=nil, instancechargetype=nil, mongoscpu=nil, mongosmemory=nil, mongosnum=nil, configservercpu=nil, configservermemory=nil, configservervolume=nil)
          @Zone = zone
          @NodeNum = nodenum
          @Memory = memory
          @Volume = volume
          @MongoVersion = mongoversion
          @MachineCode = machinecode
          @GoodsNum = goodsnum
          @ClusterType = clustertype
          @ReplicateSetNum = replicatesetnum
          @Period = period
          @InstanceChargeType = instancechargetype
          @MongosCpu = mongoscpu
          @MongosMemory = mongosmemory
          @MongosNum = mongosnum
          @ConfigServerCpu = configservercpu
          @ConfigServerMemory = configservermemory
          @ConfigServerVolume = configservervolume
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeNum = params['NodeNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @MongoVersion = params['MongoVersion']
          @MachineCode = params['MachineCode']
          @GoodsNum = params['GoodsNum']
          @ClusterType = params['ClusterType']
          @ReplicateSetNum = params['ReplicateSetNum']
          @Period = params['Period']
          @InstanceChargeType = params['InstanceChargeType']
          @MongosCpu = params['MongosCpu']
          @MongosMemory = params['MongosMemory']
          @MongosNum = params['MongosNum']
          @ConfigServerCpu = params['ConfigServerCpu']
          @ConfigServerMemory = params['ConfigServerMemory']
          @ConfigServerVolume = params['ConfigServerVolume']
        end
      end

      # InquirePriceCreateDBInstances返回参数结构体
      class InquirePriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例 ID，格式如：cmgo-p8vn****。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param Memory: 变更配置后实例内存大小，单位：GB。
        # @type Memory: Integer
        # @param Volume: 变更配置后实例磁盘大小，单位：GB。
        # @type Volume: Integer
        # @param NodeNum: 实例节点数。默认为不变更节点数，暂不支持变更。
        # @type NodeNum: Integer
        # @param ReplicateSetNum: 实例分片数。默认为不变更分片数，暂不支持变更。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceIds: 实例ID。请登录[MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID，且单次最多同时查询5个实例。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费。在账户余额充足的情况下，实例到期后将按月自动续费。
        # - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费。默认为NOTIFY_AND_MANUAL_RENEW。
        # - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
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
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param PayMode: 付费类型，可能的返回值：1-包年包月；0-按量计费
        # @type PayMode: Integer
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param ClusterType: 集群类型，可能的返回值：0-副本集实例，1-分片实例。
        # @type ClusterType: Integer
        # @param Region: 地域信息。
        # @type Region: String
        # @param Zone: 可用区信息。
        # @type Zone: String
        # @param NetType: 网络类型，可能的返回值：0-基础网络，1-私有网络
        # @type NetType: Integer
        # @param VpcId: 私有网络的ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网ID。
        # @type SubnetId: String
        # @param Status: 实例状态，可能的返回值：0-创建中，1-流程处理中，2-运行中，-2-实例已过期。
        # @type Status: Integer
        # @param Vip: 实例IP。
        # @type Vip: String
        # @param Vport: 端口号。
        # @type Vport: Integer
        # @param CreateTime: 实例创建时间。
        # @type CreateTime: String
        # @param DeadLine: 实例到期时间。
        # @type DeadLine: String
        # @param MongoVersion: 实例版本信息。
        # @type MongoVersion: String
        # @param Memory: 实例内存规格，单位为MB。
        # @type Memory: Integer
        # @param Volume: 实例磁盘规格，单位为MB。
        # @type Volume: Integer
        # @param CpuNum: 实例CPU核心数。
        # @type CpuNum: Integer
        # @param MachineType: 实例机器类型。
        # @type MachineType: String
        # @param SecondaryNum: 实例从节点数。
        # @type SecondaryNum: Integer
        # @param ReplicationSetNum: 实例分片数。
        # @type ReplicationSetNum: Integer
        # @param AutoRenewFlag: 实例自动续费标志，可能的返回值：0-手动续费，1-自动续费，2-确认不续费。
        # @type AutoRenewFlag: Integer
        # @param UsedVolume: 已用容量，单位MB。
        # @type UsedVolume: Integer
        # @param MaintenanceStart: 维护窗口起始时间。
        # @type MaintenanceStart: String
        # @param MaintenanceEnd: 维护窗口结束时间。
        # @type MaintenanceEnd: String
        # @param ReplicaSets: 分片信息。
        # @type ReplicaSets: Array
        # @param ReadonlyInstances: 只读实例信息。
        # @type ReadonlyInstances: Array
        # @param StandbyInstances: 灾备实例信息。
        # @type StandbyInstances: Array
        # @param CloneInstances: 临时实例信息。
        # @type CloneInstances: Array
        # @param RelatedInstance: 关联实例信息，对于正式实例，该字段表示它的临时实例信息；对于临时实例，则表示它的正式实例信息;如果为只读/灾备实例,则表示他的主实例信息。
        # @type RelatedInstance: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstanceInfo`
        # @param Tags: 实例标签信息集合。
        # @type Tags: Array
        # @param InstanceVer: 实例版本标记。
        # @type InstanceVer: Integer
        # @param ClusterVer: 实例版本标记。
        # @type ClusterVer: Integer
        # @param Protocol: 协议信息，可能的返回值：1-mongodb，2-dynamodb。
        # @type Protocol: Integer
        # @param InstanceType: 实例类型，可能的返回值，1-正式实例，2-临时实例，3-只读实例，4-灾备实例
        # @type InstanceType: Integer
        # @param InstanceStatusDesc: 实例状态描述
        # @type InstanceStatusDesc: String
        # @param RealInstanceId: 实例对应的物理实例id，回档并替换过的实例有不同的InstanceId和RealInstanceId，从barad获取监控数据等场景下需要用物理id获取
        # @type RealInstanceId: String
        # @param ZoneList: 实例当前可用区信息。
        # @type ZoneList: Array
        # @param MongosNodeNum: mongos节点个数。
        # @type MongosNodeNum: Integer
        # @param MongosMemory: mongos节点内存。
        # @type MongosMemory: Integer
        # @param MongosCpuNum: mongos节点CPU核数。
        # @type MongosCpuNum: Integer
        # @param ConfigServerNodeNum: Config Server节点个数。
        # @type ConfigServerNodeNum: Integer
        # @param ConfigServerMemory: Config Server节点内存。
        # @type ConfigServerMemory: Integer
        # @param ConfigServerVolume: Config Server节点磁盘大小。
        # @type ConfigServerVolume: Integer
        # @param ConfigServerCpuNum: Config Server节点CPU核数。
        # @type ConfigServerCpuNum: Integer
        # @param ReadonlyNodeNum: readonly节点个数。
        # @type ReadonlyNodeNum: Integer

        attr_accessor :InstanceId, :InstanceName, :PayMode, :ProjectId, :ClusterType, :Region, :Zone, :NetType, :VpcId, :SubnetId, :Status, :Vip, :Vport, :CreateTime, :DeadLine, :MongoVersion, :Memory, :Volume, :CpuNum, :MachineType, :SecondaryNum, :ReplicationSetNum, :AutoRenewFlag, :UsedVolume, :MaintenanceStart, :MaintenanceEnd, :ReplicaSets, :ReadonlyInstances, :StandbyInstances, :CloneInstances, :RelatedInstance, :Tags, :InstanceVer, :ClusterVer, :Protocol, :InstanceType, :InstanceStatusDesc, :RealInstanceId, :ZoneList, :MongosNodeNum, :MongosMemory, :MongosCpuNum, :ConfigServerNodeNum, :ConfigServerMemory, :ConfigServerVolume, :ConfigServerCpuNum, :ReadonlyNodeNum

        def initialize(instanceid=nil, instancename=nil, paymode=nil, projectid=nil, clustertype=nil, region=nil, zone=nil, nettype=nil, vpcid=nil, subnetid=nil, status=nil, vip=nil, vport=nil, createtime=nil, deadline=nil, mongoversion=nil, memory=nil, volume=nil, cpunum=nil, machinetype=nil, secondarynum=nil, replicationsetnum=nil, autorenewflag=nil, usedvolume=nil, maintenancestart=nil, maintenanceend=nil, replicasets=nil, readonlyinstances=nil, standbyinstances=nil, cloneinstances=nil, relatedinstance=nil, tags=nil, instancever=nil, clusterver=nil, protocol=nil, instancetype=nil, instancestatusdesc=nil, realinstanceid=nil, zonelist=nil, mongosnodenum=nil, mongosmemory=nil, mongoscpunum=nil, configservernodenum=nil, configservermemory=nil, configservervolume=nil, configservercpunum=nil, readonlynodenum=nil)
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
          @ZoneList = zonelist
          @MongosNodeNum = mongosnodenum
          @MongosMemory = mongosmemory
          @MongosCpuNum = mongoscpunum
          @ConfigServerNodeNum = configservernodenum
          @ConfigServerMemory = configservermemory
          @ConfigServerVolume = configservervolume
          @ConfigServerCpuNum = configservercpunum
          @ReadonlyNodeNum = readonlynodenum
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
          @ZoneList = params['ZoneList']
          @MongosNodeNum = params['MongosNodeNum']
          @MongosMemory = params['MongosMemory']
          @MongosCpuNum = params['MongosCpuNum']
          @ConfigServerNodeNum = params['ConfigServerNodeNum']
          @ConfigServerMemory = params['ConfigServerMemory']
          @ConfigServerVolume = params['ConfigServerVolume']
          @ConfigServerCpuNum = params['ConfigServerCpuNum']
          @ReadonlyNodeNum = params['ReadonlyNodeNum']
        end
      end

      # 实例可修改参数枚举类型集合。
      class InstanceEnumParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param EnumValue: 枚举值，所有支持的值。
        # @type EnumValue: Array
        # @param NeedRestart: 参数修改之后是否需要重启生效。
        # - 1：需要重启后生效。
        # - 0：无需重启，设置成功即可生效。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 参数值类型说明。
        # @type ValueType: String
        # @param Status: 是否为运行中参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
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

      # 实例可修改参数 Integer 类型集合。
      class InstanceIntegerParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param Max: 参数最大值。
        # @type Max: String
        # @param Min: 最小值。
        # @type Min: String
        # @param NeedRestart: 参数修改之后是否需要重启生效。
        # - 1:需要重启后生效。
        # - 0：无需重启，设置成功即可生效。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 参数类型。
        # @type ValueType: String
        # @param Status: 是否为运行中参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
        # @type Status: Integer
        # @param Unit: 冗余字段，可忽略。
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
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param EnumValue: 参考值范围。
        # @type EnumValue: Array
        # @param NeedRestart: 参数修改后是否需要重启才会生效。
        # - 1：需要重启后生效。
        # - 0：无需重启，设置成功即可生效。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param Status: 是否为运行中参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
        # @type Status: Integer
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 当前值的类型描述，默认为multi。
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

      # 实例可修改参数为 Text 类型的参数集合。
      class InstanceTextParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param NeedRestart: 修改参数值之后是否需要重启。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param TextValue: Text 类型参数对应的值。
        # @type TextValue: String
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 参数值类型说明。
        # @type ValueType: String
        # @param Status: 是否为运行中的参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # KMS密钥信息
      class KMSInfoDetail < TencentCloud::Common::AbstractModel
        # @param KeyId: 主密钥 ID。
        # @type KeyId: String
        # @param KeyName: 主密钥名称。
        # @type KeyName: String
        # @param CreateTime: 实例与密钥绑定时间。
        # @type CreateTime: String
        # @param Status: 密钥状态。
        # @type Status: String
        # @param KeyUsage: 密钥用途。
        # @type KeyUsage: String
        # @param KeyOrigin: 密钥来源。
        # @type KeyOrigin: String
        # @param KmsRegion: kms所在地域。
        # @type KmsRegion: String

        attr_accessor :KeyId, :KeyName, :CreateTime, :Status, :KeyUsage, :KeyOrigin, :KmsRegion

        def initialize(keyid=nil, keyname=nil, createtime=nil, status=nil, keyusage=nil, keyorigin=nil, kmsregion=nil)
          @KeyId = keyid
          @KeyName = keyname
          @CreateTime = createtime
          @Status = status
          @KeyUsage = keyusage
          @KeyOrigin = keyorigin
          @KmsRegion = kmsregion
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @KeyUsage = params['KeyUsage']
          @KeyOrigin = params['KeyOrigin']
          @KmsRegion = params['KmsRegion']
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

      # ModifyDBInstanceNetworkAddress请求参数结构体
      class ModifyDBInstanceNetworkAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定需修改网络的实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param OldIpExpiredTime: 原 IP 地址保留时长。
        # - 单位为分钟，0表示立即回收原 IP 地址。
        # - 原 IP 将在约定时间后释放，在释放前原 IP和新 IP均可访问。
        # @type OldIpExpiredTime: Integer
        # @param NewUniqVpcId: 切换后的私有网络 ID，若实例当前为基础网络，该字段无需配置。
        # @type NewUniqVpcId: String
        # @param NewUniqSubnetId: 切换私有网络的子网 ID。若实例当前为基础网络，该字段无需配置。
        # @type NewUniqSubnetId: String
        # @param NetworkAddresses: IP 地址信息，包含新 IP 地址与 原 IP 地址。
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
        # @param FlowId: 修改网络异步流程任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyDBInstanceParamTpl请求参数结构体
      class ModifyDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplId: 待修改的参数模板 ID，示例：tpl-jglr91vew。
        # @type TplId: String
        # @param TplName: 待修改参数模板名称，为空时，保持原有名称。
        # @type TplName: String
        # @param TplDesc: 待修改参数模板描述，为空时，保持原有描述。
        # @type TplDesc: String
        # @param Params: 待修改参数名及参数值，为空时，各参数保持原有值，支持单条或批量修改。
        # @type Params: Array

        attr_accessor :TplId, :TplName, :TplDesc, :Params

        def initialize(tplid=nil, tplname=nil, tpldesc=nil, params=nil)
          @TplId = tplid
          @TplName = tplname
          @TplDesc = tpldesc
          @Params = params
        end

        def deserialize(params)
          @TplId = params['TplId']
          @TplName = params['TplName']
          @TplDesc = params['TplDesc']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paramtype_tmp = ParamType.new
              paramtype_tmp.deserialize(i)
              @Params << paramtype_tmp
            end
          end
        end
      end

      # ModifyDBInstanceParamTpl返回参数结构体
      class ModifyDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSecurityGroup请求参数结构体
      class ModifyDBInstanceSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。例如：cmgo-7pje****。
        # @type InstanceId: String
        # @param SecurityGroupIds: 目标安全组 ID。请通过接口[DescribeSecurityGroup](https://cloud.tencent.com/document/product/240/55675)查看具体的安全组 ID。
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

      # ModifyDBInstanceSpec请求参数结构体
      class ModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Memory: 实例配置变更后的内存大小。- 单位：GB。为空时，默认取实例当前的内存大小。<br>  注意：内存和磁盘必须同时升配或同时降配，即 Memory 与 Volume 需同时配置变更。
        # @type Memory: Integer
        # @param Volume: 实例配置变更后的硬盘大小，单位：GB。为空时，默认取当前实例的磁盘大小。
        # - 内存和磁盘必须同时升配或同时降配，即 Memory 与 Volume 需同时配置变更。
        # - 降配时，变更后的磁盘容量必须大于已用磁盘容量的1.2倍。
        # @type Volume: Integer
        # @param OplogSize: (已废弃) 请使用ResizeOplog独立接口完成。

        # 实例配置变更后 Oplog 的大小。
        # - 单位：GB。
        # - 默认 Oplog 占用容量为磁盘空间的10%。系统允许设置的 Oplog 容量范围为磁盘空间的[10%,90%]。
        # @type OplogSize: Integer
        # @param NodeNum: 实例变更后mongod的节点数（不包含readonly节点数）。
        # - 变更mongod CPU与内存规格时，该参数可以不配置或者输入当前 mongod(不包含readonly) 节点数量。
        # -  变更 mongos CPU与内存规格时，该参数可以不配置或者输入当前 mongod(不包含readonly) 节点数量。
        # -  节点变更时(全部类型)，该参数可不配置或输入变更后的 mongod(不包含readonly) 节点数量。
        # -  副本集节点数：请确认节点数量取值范围，通过云数据库的售卖规格 [DescribeSpecInfo ](https://cloud.tencent.com/document/product/240/38565)接口返回的参数 MinNodeNum 与 MaxNodeNum 获取。
        # -  分片集群每个分片节点数：请确认节点数量取值范围，通过云数据库的售卖规格 [DescribeSpecInfo ](https://cloud.tencent.com/document/product/240/38565)接口返回的参数 MinReplicateSetNodeNum 与 MaxReplicateSetNodeNum 获取。
        # @type NodeNum: Integer
        # @param ReplicateSetNum: 实例变更后的分片数。
        # - 取值范围请通过云数据库的售卖规格[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 接口返回的参数**MinReplicateSetNum**与**MaxReplicateSetNum**获取。- 该参数只能增加不能减少。
        # @type ReplicateSetNum: Integer
        # @param InMaintenance: 实例配置变更的切换时间。
        # - 0：调整完成时，立即执行变配任务。默认为0。
        # - 1：在维护时间窗内，执行变配任务。
        # **说明**：调整节点数和分片数不支持在<b>维护时间窗内</b>变更。
        # @type InMaintenance: Integer
        # @param MongosMemory: 分片实例配置变更后的mongos内存大小。单位：GB。
        # @type MongosMemory: String
        # @param AddNodeList: 新增节点列表，节点类型及可用区信息。
        # @type AddNodeList: Array
        # @param RemoveNodeList: 删除节点列表，注意：基于分片实例各片节点的一致性原则，删除分片实例节点时，只需指定0分片对应的节点即可，如：cmgo-9nl1czif_0-node-readonly0 将删除每个分片的第1个只读节点。
        # @type RemoveNodeList: Array

        attr_accessor :InstanceId, :Memory, :Volume, :OplogSize, :NodeNum, :ReplicateSetNum, :InMaintenance, :MongosMemory, :AddNodeList, :RemoveNodeList
        extend Gem::Deprecate
        deprecate :OplogSize, :none, 2025, 6
        deprecate :OplogSize=, :none, 2025, 6

        def initialize(instanceid=nil, memory=nil, volume=nil, oplogsize=nil, nodenum=nil, replicatesetnum=nil, inmaintenance=nil, mongosmemory=nil, addnodelist=nil, removenodelist=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
          @NodeNum = nodenum
          @ReplicateSetNum = replicatesetnum
          @InMaintenance = inmaintenance
          @MongosMemory = mongosmemory
          @AddNodeList = addnodelist
          @RemoveNodeList = removenodelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
          @NodeNum = params['NodeNum']
          @ReplicateSetNum = params['ReplicateSetNum']
          @InMaintenance = params['InMaintenance']
          @MongosMemory = params['MongosMemory']
          unless params['AddNodeList'].nil?
            @AddNodeList = []
            params['AddNodeList'].each do |i|
              addnodelist_tmp = AddNodeList.new
              addnodelist_tmp.deserialize(i)
              @AddNodeList << addnodelist_tmp
            end
          end
          unless params['RemoveNodeList'].nil?
            @RemoveNodeList = []
            params['RemoveNodeList'].each do |i|
              removenodelist_tmp = RemoveNodeList.new
              removenodelist_tmp.deserialize(i)
              @RemoveNodeList << removenodelist_tmp
            end
          end
        end
      end

      # ModifyDBInstanceSpec返回参数结构体
      class ModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单 ID。
        # @type DealId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyInstanceParams请求参数结构体
      class ModifyInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param InstanceParams: 指定需修改的参数名及值。当前所支持的参数名及对应取值范围，请通过 [DescribeInstanceParams ](https://cloud.tencent.com/document/product/240/65903)获取。
        # @type InstanceParams: Array
        # @param ModifyType: 操作类型，包括：
        # - IMMEDIATELY：立即调整。
        # - DELAY：延迟调整。可选字段，不配置该参数则默认为立即调整。
        # @type ModifyType: String

        attr_accessor :InstanceId, :InstanceParams, :ModifyType

        def initialize(instanceid=nil, instanceparams=nil, modifytype=nil)
          @InstanceId = instanceid
          @InstanceParams = instanceparams
          @ModifyType = modifytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['InstanceParams'].nil?
            @InstanceParams = []
            params['InstanceParams'].each do |i|
              modifymongodbparamtype_tmp = ModifyMongoDBParamType.new
              modifymongodbparamtype_tmp.deserialize(i)
              @InstanceParams << modifymongodbparamtype_tmp
            end
          end
          @ModifyType = params['ModifyType']
        end
      end

      # ModifyInstanceParams返回参数结构体
      class ModifyInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param Changed: 修改参数配置是否生效。
        # - true：参数修改后的值已生效。
        # - false：执行失败。
        # @type Changed: Boolean
        # @param TaskId: 该参数暂时无意义(兼容前端保留)。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Changed, :TaskId, :RequestId

        def initialize(changed=nil, taskid=nil, requestid=nil)
          @Changed = changed
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Changed = params['Changed']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 修改mongoDB实例，请求参数
      class ModifyMongoDBParamType < TencentCloud::Common::AbstractModel
        # @param Key: 需要修改的参数名称，请严格参考通过 DescribeInstanceParams 获取的当前实例支持的参数名。
        # @type Key: String
        # @param Value: 需要修改的参数名称对应的值，请严格参考通过 DescribeInstanceParams 获取的参数对应的值的范围。
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

      # 节点属性
      class NodeProperty < TencentCloud::Common::AbstractModel
        # @param Zone: 节点所在的可用区。
        # @type Zone: String
        # @param NodeName: 节点名称。
        # @type NodeName: String
        # @param Address: 节点访问地址。
        # @type Address: String
        # @param WanServiceAddress: 节点公网访问外网地址(IP或域名，示例为IP方式)。
        # @type WanServiceAddress: String
        # @param Role: 角色。
        # @type Role: String
        # @param Hidden: 是否为Hidden节点
        # @type Hidden: Boolean
        # @param Status: 节点状态，包括：ORMAL/STARTUP/RECOVERING/STARTUP2/UNKNOWN/DOWN/ROLLBACK/REMOVED等。
        # @type Status: String
        # @param SlaveDelay: 主从延迟，单位秒。
        # @type SlaveDelay: Integer
        # @param Priority: 节点优先级。
        # @type Priority: Integer
        # @param Votes: 节点投票权。
        # @type Votes: Integer
        # @param Tags: 节点标签。
        # @type Tags: Array
        # @param ReplicateSetId: 副本集Id。
        # @type ReplicateSetId: String

        attr_accessor :Zone, :NodeName, :Address, :WanServiceAddress, :Role, :Hidden, :Status, :SlaveDelay, :Priority, :Votes, :Tags, :ReplicateSetId

        def initialize(zone=nil, nodename=nil, address=nil, wanserviceaddress=nil, role=nil, hidden=nil, status=nil, slavedelay=nil, priority=nil, votes=nil, tags=nil, replicatesetid=nil)
          @Zone = zone
          @NodeName = nodename
          @Address = address
          @WanServiceAddress = wanserviceaddress
          @Role = role
          @Hidden = hidden
          @Status = status
          @SlaveDelay = slavedelay
          @Priority = priority
          @Votes = votes
          @Tags = tags
          @ReplicateSetId = replicatesetid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeName = params['NodeName']
          @Address = params['Address']
          @WanServiceAddress = params['WanServiceAddress']
          @Role = params['Role']
          @Hidden = params['Hidden']
          @Status = params['Status']
          @SlaveDelay = params['SlaveDelay']
          @Priority = params['Priority']
          @Votes = params['Votes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              nodetag_tmp = NodeTag.new
              nodetag_tmp.deserialize(i)
              @Tags << nodetag_tmp
            end
          end
          @ReplicateSetId = params['ReplicateSetId']
        end
      end

      # 节点Tag
      class NodeTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 节点Tag key
        # @type TagKey: String
        # @param TagValue: 节点Tag Value
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 数据库参数模板
      class ParamTpl < TencentCloud::Common::AbstractModel
        # @param TplName: 参数模板名称
        # @type TplName: String
        # @param TplId: 参数模板ID
        # @type TplId: String
        # @param MongoVersion: 适用数据库版本
        # @type MongoVersion: String
        # @param ClusterType: 适用数据库类型
        # @type ClusterType: String
        # @param TplDesc: 参数模板描述
        # @type TplDesc: String
        # @param TplType: 模板类型，包括DEFAULT（默认模板）及CUSTOMIZE（定制模板）两种类型
        # @type TplType: String

        attr_accessor :TplName, :TplId, :MongoVersion, :ClusterType, :TplDesc, :TplType

        def initialize(tplname=nil, tplid=nil, mongoversion=nil, clustertype=nil, tpldesc=nil, tpltype=nil)
          @TplName = tplname
          @TplId = tplid
          @MongoVersion = mongoversion
          @ClusterType = clustertype
          @TplDesc = tpldesc
          @TplType = tpltype
        end

        def deserialize(params)
          @TplName = params['TplName']
          @TplId = params['TplId']
          @MongoVersion = params['MongoVersion']
          @ClusterType = params['ClusterType']
          @TplDesc = params['TplDesc']
          @TplType = params['TplType']
        end
      end

      # 数据库参数
      class ParamType < TencentCloud::Common::AbstractModel
        # @param Key: 参数
        # @type Key: String
        # @param Value: 参数值
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

      # 修改实例节点详情
      class RemoveNodeList < TencentCloud::Common::AbstractModel
        # @param Role: 需要删除的节点角色。
        # - SECONDARY：Mongod 从节点。
        # - READONLY：只读节点。
        # - MONGOS：Mongos 节点。
        # @type Role: String
        # @param NodeName: 要删除的节点 ID。分片集群须指定一组分片要删除的节点名称即可，其余分片对改组对齐。

        # - 获取方式：登录 [MongoDB控制台](https://console.cloud.tencent.com/)，在**节点管理**页签，可获取**节点 ID**。
        # - 特别说明：分片集群同一节点上的分片，仅需指定0分片节点 ID 即可。例如：cmgo-6hfk****_0-node-primary。
        # @type NodeName: String
        # @param Zone: 节点所对应的可用区。
        # - 单可用区，所有节点在同一可用区。
        # - 多可用区：当前标准规格是三可用区分布，主从节点不在同一可用区，需注意配置所删除节点对应的可用区，且删除后必须满足任意2个可用区节点数大于第3个可用区原则。
        # @type Zone: String

        attr_accessor :Role, :NodeName, :Zone

        def initialize(role=nil, nodename=nil, zone=nil)
          @Role = role
          @NodeName = nodename
          @Zone = zone
        end

        def deserialize(params)
          @Role = params['Role']
          @NodeName = params['NodeName']
          @Zone = params['Zone']
        end
      end

      # RenameInstance请求参数结构体
      class RenameInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。请登录[MongoDB 控制台](https://console.cloud.tencent.com/mongodb#/)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param NewName: 自定义实例名称，要求为1～128 长度的任意字符。
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

      # RenewDBInstances请求参数结构体
      class RenewDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 指定续费的一个或多个待操作的实例ID。
        # - 可通过[DescribeDBInstances](https://cloud.tencent.com/document/product/240/38568)接口返回值中的**InstanceIds**获取。
        # - 每次续费请求的实例数量上限为100。
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

      # 副本集信息
      class ReplicateSetInfo < TencentCloud::Common::AbstractModel
        # @param Nodes: 节点属性
        # @type Nodes: Array

        attr_accessor :Nodes

        def initialize(nodes=nil)
          @Nodes = nodes
        end

        def deserialize(params)
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              nodeproperty_tmp = NodeProperty.new
              nodeproperty_tmp.deserialize(i)
              @Nodes << nodeproperty_tmp
            end
          end
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # RestartNodes请求参数结构体
      class RestartNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param NodeIds: 节点Id。
        # @type NodeIds: Array

        attr_accessor :InstanceId, :NodeIds

        def initialize(instanceid=nil, nodeids=nil)
          @InstanceId = instanceid
          @NodeIds = nodeids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeIds = params['NodeIds']
        end
      end

      # RestartNodes返回参数结构体
      class RestartNodesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程Id。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 指定待设置账号的实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 设置账号名称。
        # @type UserName: String
        # @param AuthRole: 设置权限信息。
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
        # @param FlowId: 任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # SetBackupRules请求参数结构体
      class SetBackupRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupMethod: 设置自动备份方式。- 0：逻辑备份。- 1：物理备份。-3：快照备份(仅云盘版支持)。
        # @type BackupMethod: Integer
        # @param BackupTime: 设置自动备份开始时间。取值范围为：[0,23]，例如：该参数设置为2，表示02:00开始备份。
        # @type BackupTime: Integer
        # @param Notify: 设置自动备份发生错误时，是否发送失败告警。
        # - true：发送。
        # - false：不发送。
        # @type Notify: Boolean
        # @param BackupRetentionPeriod: 指定备份数据保存天数。默认为 7 天，支持设置为7、30、90、180、365。
        # @type BackupRetentionPeriod: Integer

        attr_accessor :InstanceId, :BackupMethod, :BackupTime, :Notify, :BackupRetentionPeriod

        def initialize(instanceid=nil, backupmethod=nil, backuptime=nil, notify=nil, backupretentionperiod=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @BackupTime = backuptime
          @Notify = notify
          @BackupRetentionPeriod = backupretentionperiod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          @BackupTime = params['BackupTime']
          @Notify = params['Notify']
          @BackupRetentionPeriod = params['BackupRetentionPeriod']
        end
      end

      # SetBackupRules返回参数结构体
      class SetBackupRulesResponse < TencentCloud::Common::AbstractModel
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

      # SetInstanceMaintenance请求参数结构体
      class SetInstanceMaintenanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param MaintenanceStart: 维护时间窗开始时间。取值范围为"00:00-23:00"的任意整点或半点，如00:00或00:30。
        # @type MaintenanceStart: String
        # @param MaintenanceEnd: 维护时间窗结束时间。
        # - 取值范围为"00:00-23:00"的任意整点或半点，维护时间持续时长最小为30分钟，最大为3小时。
        # - 结束时间务必是基于开始时间向后的时间。
        # @type MaintenanceEnd: String

        attr_accessor :InstanceId, :MaintenanceStart, :MaintenanceEnd

        def initialize(instanceid=nil, maintenancestart=nil, maintenanceend=nil)
          @InstanceId = instanceid
          @MaintenanceStart = maintenancestart
          @MaintenanceEnd = maintenanceend
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintenanceStart = params['MaintenanceStart']
          @MaintenanceEnd = params['MaintenanceEnd']
        end
      end

      # SetInstanceMaintenance返回参数结构体
      class SetInstanceMaintenanceResponse < TencentCloud::Common::AbstractModel
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

      # 慢日志详情
      class SlowLogItem < TencentCloud::Common::AbstractModel
        # @param Log: 慢日志
        # @type Log: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param QueryHash: queryHash
        # @type QueryHash: String

        attr_accessor :Log, :NodeName, :QueryHash

        def initialize(log=nil, nodename=nil, queryhash=nil)
          @Log = log
          @NodeName = nodename
          @QueryHash = queryhash
        end

        def deserialize(params)
          @Log = params['Log']
          @NodeName = params['NodeName']
          @QueryHash = params['QueryHash']
        end
      end

      # 用于描述MongoDB数据库慢日志统计信息
      class SlowLogPattern < TencentCloud::Common::AbstractModel
        # @param Pattern: 慢日志模式
        # @type Pattern: String
        # @param QueryHash: queryHash
        # @type QueryHash: String
        # @param MaxTime: 最大执行时间
        # @type MaxTime: Integer
        # @param AverageTime: 平均执行时间
        # @type AverageTime: Integer
        # @param Total: 该模式慢日志条数
        # @type Total: Integer

        attr_accessor :Pattern, :QueryHash, :MaxTime, :AverageTime, :Total

        def initialize(pattern=nil, queryhash=nil, maxtime=nil, averagetime=nil, total=nil)
          @Pattern = pattern
          @QueryHash = queryhash
          @MaxTime = maxtime
          @AverageTime = averagetime
          @Total = total
        end

        def deserialize(params)
          @Pattern = params['Pattern']
          @QueryHash = params['QueryHash']
          @MaxTime = params['MaxTime']
          @AverageTime = params['AverageTime']
          @Total = params['Total']
        end
      end

      # mongodb售卖规格
      class SpecItem < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格信息标识。格式如：mongo.HIO10G.128g。由节点类型、规格类型、内存规格三部分组成。
        # - 节点类型，如下所示。
        #   - mongo：Mongod 节点。
        #  - mongos：Mongos 节点。
        #  - cfgstr：Configserver 节点。
        # - 规格类型，如下所示。
        #  - HIO10G：通用高HIO万兆型。
        #  - HCD：云盘版类型。
        # - 内存规格，如下所示：
        #  - 支持4、8、16、32、64、128、240、512。
        #  - 单位g：表示GB。128g则表示128GB。
        # @type SpecCode: String
        # @param Status: 售卖规格有效标志，取值范围如下：
        # - 0：停止售卖，
        # - 1：开放售卖。
        # @type Status: Integer
        # @param Cpu: 计算资源规格，CPU核数。
        # @type Cpu: Integer
        # @param Memory: 内存规格，单位为：MB。
        # @type Memory: Integer
        # @param DefaultStorage: 默认磁盘规格，单位为：MB。
        # @type DefaultStorage: Integer
        # @param MaxStorage: 最大磁盘规格，单位为：MB。
        # @type MaxStorage: Integer
        # @param MinStorage: 最小磁盘规格，单位为：MB。
        # @type MinStorage: Integer
        # @param Qps: 指每秒最大请求次数，单位为：次/秒。
        # @type Qps: Integer
        # @param Conns: 规格所支持的最大连接数限制。
        # @type Conns: Integer
        # @param MongoVersionCode: 实例存储引擎版本信息。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # @type MongoVersionCode: String
        # @param MongoVersionValue: 实例版本对应的数字版本。
        # @type MongoVersionValue: Integer
        # @param Version: 实例版本信息。支持：3.6、4.2、4.4、5.0、6.0。
        # @type Version: String
        # @param EngineName: 存储引擎。
        # @type EngineName: String
        # @param ClusterType: 集群类型，取值如下：
        # - 1：分片集群。
        # - 0：副本集集群。
        # @type ClusterType: Integer
        # @param MinNodeNum: 每个副本集最小节点数。
        # @type MinNodeNum: Integer
        # @param MaxNodeNum: 每个副本集最大节点数。
        # @type MaxNodeNum: Integer
        # @param MinReplicateSetNum: 最小分片数。
        # @type MinReplicateSetNum: Integer
        # @param MaxReplicateSetNum: 最大分片数。
        # @type MaxReplicateSetNum: Integer
        # @param MinReplicateSetNodeNum: 每个分片最小节点数。
        # @type MinReplicateSetNodeNum: Integer
        # @param MaxReplicateSetNodeNum: 每个分片最大节点数。
        # @type MaxReplicateSetNodeNum: Integer
        # @param MachineType: 集群的规格类型，取值范围如下：
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版类型。
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
        # @param InstanceId: 指定预隔离实例ID。格式如：cmgo-p8vnipr5。
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

      # 账户基本信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 账号名。
        # @type UserName: String
        # @param AuthRole: 账号权限详情。
        # @type AuthRole: Array
        # @param CreateTime: 账号创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 账号更新时间。
        # @type UpdateTime: String
        # @param UserDesc: 备注信息。
        # @type UserDesc: String

        attr_accessor :UserName, :AuthRole, :CreateTime, :UpdateTime, :UserDesc

        def initialize(username=nil, authrole=nil, createtime=nil, updatetime=nil, userdesc=nil)
          @UserName = username
          @AuthRole = authrole
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UserDesc = userdesc
        end

        def deserialize(params)
          @UserName = params['UserName']
          unless params['AuthRole'].nil?
            @AuthRole = []
            params['AuthRole'].each do |i|
              auth_tmp = Auth.new
              auth_tmp.deserialize(i)
              @AuthRole << auth_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UserDesc = params['UserDesc']
        end
      end

    end
  end
end

