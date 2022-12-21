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
  module Cdwch
    module V20200915
      # ActionAlterCkUser请求参数结构体
      class ActionAlterCkUserRequest < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户信息
        # @type UserInfo: :class:`Tencentcloud::Cdwch.v20200915.models.CkUserAlterInfo`
        # @param ApiType: api接口类型，
        # AddSystemUser新增用户，UpdateSystemUser，修改用户
        # @type ApiType: String

        attr_accessor :UserInfo, :ApiType
        
        def initialize(userinfo=nil, apitype=nil)
          @UserInfo = userinfo
          @ApiType = apitype
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = CkUserAlterInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @ApiType = params['ApiType']
        end
      end

      # ActionAlterCkUser返回参数结构体
      class ActionAlterCkUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMsg, :RequestId
        
        def initialize(errmsg=nil, requestid=nil)
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # 备份表信息
      class BackupTableContent < TencentCloud::Common::AbstractModel
        # @param Database: 数据库
        # @type Database: String
        # @param Table: 表
        # @type Table: String
        # @param TotalBytes: 表总字节数
        # @type TotalBytes: Integer
        # @param VCluster: 虚拟cluster
        # @type VCluster: String
        # @param Ips: 表ip
        # @type Ips: String

        attr_accessor :Database, :Table, :TotalBytes, :VCluster, :Ips
        
        def initialize(database=nil, table=nil, totalbytes=nil, vcluster=nil, ips=nil)
          @Database = database
          @Table = table
          @TotalBytes = totalbytes
          @VCluster = vcluster
          @Ips = ips
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @TotalBytes = params['TotalBytes']
          @VCluster = params['VCluster']
          @Ips = params['Ips']
        end
      end

      # 集群计费相关信息
      class Charge < TencentCloud::Common::AbstractModel
        # @param ChargeType: 计费类型，“PREPAID” 预付费，“POSTPAID_BY_HOUR” 后付费
        # @type ChargeType: String
        # @param RenewFlag: PREPAID需要传递，是否自动续费，1表示自动续费开启
        # @type RenewFlag: Integer
        # @param TimeSpan: 预付费需要传递，计费时间长度，多少个月
        # @type TimeSpan: Integer

        attr_accessor :ChargeType, :RenewFlag, :TimeSpan
        
        def initialize(chargetype=nil, renewflag=nil, timespan=nil)
          @ChargeType = chargetype
          @RenewFlag = renewflag
          @TimeSpan = timespan
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
        end
      end

      # 新增或是修改ck用户
      class CkUserAlterInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例id
        # @type InstanceId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PassWord: 密码
        # @type PassWord: String
        # @param Describe: 描述
        # @type Describe: String

        attr_accessor :InstanceId, :UserName, :PassWord, :Describe
        
        def initialize(instanceid=nil, username=nil, password=nil, describe=nil)
          @InstanceId = instanceid
          @UserName = username
          @PassWord = password
          @Describe = describe
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @Describe = params['Describe']
        end
      end

      # 配置文件修改信息
      class ConfigSubmitContext < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param OldConfValue: 配置文件旧内容，base64编码
        # @type OldConfValue: String
        # @param NewConfValue: 配置文件新内容，base64编码
        # @type NewConfValue: String
        # @param FilePath: 保存配置文件的路径
        # @type FilePath: String

        attr_accessor :FileName, :OldConfValue, :NewConfValue, :FilePath
        
        def initialize(filename=nil, oldconfvalue=nil, newconfvalue=nil, filepath=nil)
          @FileName = filename
          @OldConfValue = oldconfvalue
          @NewConfValue = newconfvalue
          @FilePath = filepath
        end

        def deserialize(params)
          @FileName = params['FileName']
          @OldConfValue = params['OldConfValue']
          @NewConfValue = params['NewConfValue']
          @FilePath = params['FilePath']
        end
      end

      # CreateBackUpSchedule请求参数结构体
      class CreateBackUpScheduleRequest < TencentCloud::Common::AbstractModel
        # @param ScheduleId: 编辑时需要传
        # @type ScheduleId: Integer
        # @param WeekDays: 选择的星期 逗号分隔，例如 2 代表周二
        # @type WeekDays: String
        # @param ExecuteHour: 执行小时
        # @type ExecuteHour: Integer
        # @param BackUpTables: 备份表列表
        # @type BackUpTables: Array

        attr_accessor :ScheduleId, :WeekDays, :ExecuteHour, :BackUpTables
        
        def initialize(scheduleid=nil, weekdays=nil, executehour=nil, backuptables=nil)
          @ScheduleId = scheduleid
          @WeekDays = weekdays
          @ExecuteHour = executehour
          @BackUpTables = backuptables
        end

        def deserialize(params)
          @ScheduleId = params['ScheduleId']
          @WeekDays = params['WeekDays']
          @ExecuteHour = params['ExecuteHour']
          unless params['BackUpTables'].nil?
            @BackUpTables = []
            params['BackUpTables'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @BackUpTables << backuptablecontent_tmp
            end
          end
        end
      end

      # CreateBackUpSchedule返回参数结构体
      class CreateBackUpScheduleResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstanceNew请求参数结构体
      class CreateInstanceNewRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param HaFlag: 是否高可用
        # @type HaFlag: Boolean
        # @param UserVPCId: 私有网络
        # @type UserVPCId: String
        # @param UserSubnetId: 子网
        # @type UserSubnetId: String
        # @param ProductVersion: 版本
        # @type ProductVersion: String
        # @param ChargeProperties: 计费方式
        # @type ChargeProperties: :class:`Tencentcloud::Cdwch.v20200915.models.Charge`
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param DataSpec: 数据节点
        # @type DataSpec: :class:`Tencentcloud::Cdwch.v20200915.models.NodeSpec`
        # @param Tags: 标签列表
        # @type Tags: :class:`Tencentcloud::Cdwch.v20200915.models.Tag`
        # @param ClsLogSetId: 日志主题ID
        # @type ClsLogSetId: String
        # @param CosBucketName: COS桶名称
        # @type CosBucketName: String
        # @param MountDiskType: 是否是裸盘挂载
        # @type MountDiskType: Integer
        # @param HAZk: 是否是ZK高可用
        # @type HAZk: Boolean
        # @param CommonSpec: ZK节点
        # @type CommonSpec: :class:`Tencentcloud::Cdwch.v20200915.models.NodeSpec`

        attr_accessor :Zone, :HaFlag, :UserVPCId, :UserSubnetId, :ProductVersion, :ChargeProperties, :InstanceName, :DataSpec, :Tags, :ClsLogSetId, :CosBucketName, :MountDiskType, :HAZk, :CommonSpec
        
        def initialize(zone=nil, haflag=nil, uservpcid=nil, usersubnetid=nil, productversion=nil, chargeproperties=nil, instancename=nil, dataspec=nil, tags=nil, clslogsetid=nil, cosbucketname=nil, mountdisktype=nil, hazk=nil, commonspec=nil)
          @Zone = zone
          @HaFlag = haflag
          @UserVPCId = uservpcid
          @UserSubnetId = usersubnetid
          @ProductVersion = productversion
          @ChargeProperties = chargeproperties
          @InstanceName = instancename
          @DataSpec = dataspec
          @Tags = tags
          @ClsLogSetId = clslogsetid
          @CosBucketName = cosbucketname
          @MountDiskType = mountdisktype
          @HAZk = hazk
          @CommonSpec = commonspec
        end

        def deserialize(params)
          @Zone = params['Zone']
          @HaFlag = params['HaFlag']
          @UserVPCId = params['UserVPCId']
          @UserSubnetId = params['UserSubnetId']
          @ProductVersion = params['ProductVersion']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = Charge.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          @InstanceName = params['InstanceName']
          unless params['DataSpec'].nil?
            @DataSpec = NodeSpec.new
            @DataSpec.deserialize(params['DataSpec'])
          end
          unless params['Tags'].nil?
            @Tags = Tag.new
            @Tags.deserialize(params['Tags'])
          end
          @ClsLogSetId = params['ClsLogSetId']
          @CosBucketName = params['CosBucketName']
          @MountDiskType = params['MountDiskType']
          @HAZk = params['HAZk']
          unless params['CommonSpec'].nil?
            @CommonSpec = NodeSpec.new
            @CommonSpec.deserialize(params['CommonSpec'])
          end
        end
      end

      # CreateInstanceNew返回参数结构体
      class CreateInstanceNewResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId
        
        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCkSqlApis请求参数结构体
      class DescribeCkSqlApisRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ApiType: api接口名称,GetClusters:获取集群cluster列表
        # GetSystemUsers:获取系统用户列表
        # CheckNodeCluster: 检查节点是否隶属一个cluster
        # GetClusterDatabases: 获取一个cluster下的数据库列表
        # GetClusterTables: 获取一个cluster下的数据库表列表
        # GetPrivilegeUsers: 获取授权的用户列表
        # GET_USER_CLUSTER_PRIVILEGES:获取用户cluster下的权限
        # GetUserClusterNewPrivileges:获取用户cluster下的权限 (新版）
        # RevokeClusterUser:解绑cluster用户
        # DeleteSystemUser:删除系统用户 —— 必须所有cluster先解绑
        # GetUserOptionMessages:获取用户配置备注信息
        # GET_USER_CONFIGS:获取用户配置列表  QUOTA、PROFILE、POLICY
        # @type ApiType: String
        # @param Cluster: 集群名称，GET_SYSTEM_USERS，GET_PRIVILEGE_USERS，GET_CLUSTER_DATABASES，GET_CLUSTER_TABLES 必填
        # @type Cluster: String
        # @param UserName: 用户名称，api与user相关的必填
        # @type UserName: String

        attr_accessor :InstanceId, :ApiType, :Cluster, :UserName
        
        def initialize(instanceid=nil, apitype=nil, cluster=nil, username=nil)
          @InstanceId = instanceid
          @ApiType = apitype
          @Cluster = cluster
          @UserName = username
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApiType = params['ApiType']
          @Cluster = params['Cluster']
          @UserName = params['UserName']
        end
      end

      # DescribeCkSqlApis返回参数结构体
      class DescribeCkSqlApisResponse < TencentCloud::Common::AbstractModel
        # @param ReturnData: 返回的查询数据，大部分情况是list，也可能是bool
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnData, :RequestId
        
        def initialize(returndata=nil, requestid=nil)
          @ReturnData = returndata
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnData = params['ReturnData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceInfo: 实例描述信息
        # @type InstanceInfo: :class:`Tencentcloud::Cdwch.v20200915.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceInfo, :RequestId
        
        def initialize(instanceinfo=nil, requestid=nil)
          @InstanceInfo = instanceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceShards请求参数结构体
      class DescribeInstanceShardsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceShards返回参数结构体
      class DescribeInstanceShardsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceShardsList: 实例shard信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceShardsList: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceShardsList, :RequestId
        
        def initialize(instanceshardslist=nil, requestid=nil)
          @InstanceShardsList = instanceshardslist
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceShardsList = params['InstanceShardsList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpec请求参数结构体
      class DescribeSpecRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 地域信息，例如"ap-guangzhou-1"
        # @type Zone: String
        # @param PayMode: 计费类型，PREPAID 包年包月，POSTPAID_BY_HOUR 按量计费
        # @type PayMode: String
        # @param IsElastic: 是否弹性ck
        # @type IsElastic: Boolean

        attr_accessor :Zone, :PayMode, :IsElastic
        
        def initialize(zone=nil, paymode=nil, iselastic=nil)
          @Zone = zone
          @PayMode = paymode
          @IsElastic = iselastic
        end

        def deserialize(params)
          @Zone = params['Zone']
          @PayMode = params['PayMode']
          @IsElastic = params['IsElastic']
        end
      end

      # DescribeSpec返回参数结构体
      class DescribeSpecResponse < TencentCloud::Common::AbstractModel
        # @param CommonSpec: zookeeper节点规格描述
        # @type CommonSpec: Array
        # @param DataSpec: 数据节点规格描述
        # @type DataSpec: Array
        # @param AttachCBSSpec: 云盘列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachCBSSpec: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommonSpec, :DataSpec, :AttachCBSSpec, :RequestId
        
        def initialize(commonspec=nil, dataspec=nil, attachcbsspec=nil, requestid=nil)
          @CommonSpec = commonspec
          @DataSpec = dataspec
          @AttachCBSSpec = attachcbsspec
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CommonSpec'].nil?
            @CommonSpec = []
            params['CommonSpec'].each do |i|
              resourcespec_tmp = ResourceSpec.new
              resourcespec_tmp.deserialize(i)
              @CommonSpec << resourcespec_tmp
            end
          end
          unless params['DataSpec'].nil?
            @DataSpec = []
            params['DataSpec'].each do |i|
              resourcespec_tmp = ResourceSpec.new
              resourcespec_tmp.deserialize(i)
              @DataSpec << resourcespec_tmp
            end
          end
          unless params['AttachCBSSpec'].nil?
            @AttachCBSSpec = []
            params['AttachCBSSpec'].each do |i|
              diskspec_tmp = DiskSpec.new
              diskspec_tmp.deserialize(i)
              @AttachCBSSpec << diskspec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 磁盘规格描述
      class DiskSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型，例如“CLOUD_SSD", "LOCAL_SSD"等
        # @type DiskType: String
        # @param DiskDesc: 磁盘类型说明，例如"云SSD", "本地SSD"等
        # @type DiskDesc: String
        # @param MinDiskSize: 磁盘最小规格大小，单位G
        # @type MinDiskSize: Integer
        # @param MaxDiskSize: 磁盘最大规格大小，单位G
        # @type MaxDiskSize: Integer
        # @param DiskCount: 磁盘数目
        # @type DiskCount: Integer

        attr_accessor :DiskType, :DiskDesc, :MinDiskSize, :MaxDiskSize, :DiskCount
        
        def initialize(disktype=nil, diskdesc=nil, mindisksize=nil, maxdisksize=nil, diskcount=nil)
          @DiskType = disktype
          @DiskDesc = diskdesc
          @MinDiskSize = mindisksize
          @MaxDiskSize = maxdisksize
          @DiskCount = diskcount
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          @MinDiskSize = params['MinDiskSize']
          @MaxDiskSize = params['MaxDiskSize']
          @DiskCount = params['DiskCount']
        end
      end

      # 实例描述信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID, "cdw-xxxx" 字符串类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 集群实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Status: 状态,
        # Init 创建中; Serving 运行中；
        # Deleted已销毁；Deleting 销毁中；
        # Modify 集群变更中；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 地域, ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区， ap-guangzhou-3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param VpcId: 私有网络名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param PayMode: 付费类型，"hour", "prepay"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param MasterSummary: 数据节点描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterSummary: :class:`Tencentcloud::Cdwch.v20200915.models.NodesSummary`
        # @param CommonSummary: zookeeper节点描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonSummary: :class:`Tencentcloud::Cdwch.v20200915.models.NodesSummary`
        # @param HA: 高可用，“true" "false"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HA: String
        # @param AccessInfo: 访问地址，例如 "10.0.0.1:9000"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param Id: 记录ID，数值型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param RegionId: regionId, 表示地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ZoneDesc: 可用区说明，例如 "广州二区"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param FlowMsg: 错误流程说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param StatusDesc: 状态描述，例如“运行中”等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param RenewFlag: 自动续费标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Boolean
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Monitor: 监控信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Monitor: String
        # @param HasClsTopic: 是否开通日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasClsTopic: Boolean
        # @param ClsTopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsTopicId: String
        # @param ClsLogSetId: 日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsLogSetId: String
        # @param EnableXMLConfig: 是否支持xml配置管理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableXMLConfig: Integer
        # @param RegionDesc: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param Eip: 弹性网卡地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eip: String
        # @param CosMoveFactor: 冷热分层系数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosMoveFactor: Integer

        attr_accessor :InstanceId, :InstanceName, :Status, :Version, :Region, :Zone, :VpcId, :SubnetId, :PayMode, :CreateTime, :ExpireTime, :MasterSummary, :CommonSummary, :HA, :AccessInfo, :Id, :RegionId, :ZoneDesc, :FlowMsg, :StatusDesc, :RenewFlag, :Tags, :Monitor, :HasClsTopic, :ClsTopicId, :ClsLogSetId, :EnableXMLConfig, :RegionDesc, :Eip, :CosMoveFactor
        
        def initialize(instanceid=nil, instancename=nil, status=nil, version=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, paymode=nil, createtime=nil, expiretime=nil, mastersummary=nil, commonsummary=nil, ha=nil, accessinfo=nil, id=nil, regionid=nil, zonedesc=nil, flowmsg=nil, statusdesc=nil, renewflag=nil, tags=nil, monitor=nil, hasclstopic=nil, clstopicid=nil, clslogsetid=nil, enablexmlconfig=nil, regiondesc=nil, eip=nil, cosmovefactor=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @Version = version
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @CreateTime = createtime
          @ExpireTime = expiretime
          @MasterSummary = mastersummary
          @CommonSummary = commonsummary
          @HA = ha
          @AccessInfo = accessinfo
          @Id = id
          @RegionId = regionid
          @ZoneDesc = zonedesc
          @FlowMsg = flowmsg
          @StatusDesc = statusdesc
          @RenewFlag = renewflag
          @Tags = tags
          @Monitor = monitor
          @HasClsTopic = hasclstopic
          @ClsTopicId = clstopicid
          @ClsLogSetId = clslogsetid
          @EnableXMLConfig = enablexmlconfig
          @RegionDesc = regiondesc
          @Eip = eip
          @CosMoveFactor = cosmovefactor
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @Version = params['Version']
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          unless params['MasterSummary'].nil?
            @MasterSummary = NodesSummary.new
            @MasterSummary.deserialize(params['MasterSummary'])
          end
          unless params['CommonSummary'].nil?
            @CommonSummary = NodesSummary.new
            @CommonSummary.deserialize(params['CommonSummary'])
          end
          @HA = params['HA']
          @AccessInfo = params['AccessInfo']
          @Id = params['Id']
          @RegionId = params['RegionId']
          @ZoneDesc = params['ZoneDesc']
          @FlowMsg = params['FlowMsg']
          @StatusDesc = params['StatusDesc']
          @RenewFlag = params['RenewFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Monitor = params['Monitor']
          @HasClsTopic = params['HasClsTopic']
          @ClsTopicId = params['ClsTopicId']
          @ClsLogSetId = params['ClsLogSetId']
          @EnableXMLConfig = params['EnableXMLConfig']
          @RegionDesc = params['RegionDesc']
          @Eip = params['Eip']
          @CosMoveFactor = params['CosMoveFactor']
        end
      end

      # ModifyClusterConfigs请求参数结构体
      class ModifyClusterConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param ModifyConfContext: 配置文件修改信息
        # @type ModifyConfContext: Array
        # @param Remark: 修改原因
        # @type Remark: String

        attr_accessor :InstanceId, :ModifyConfContext, :Remark
        
        def initialize(instanceid=nil, modifyconfcontext=nil, remark=nil)
          @InstanceId = instanceid
          @ModifyConfContext = modifyconfcontext
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ModifyConfContext'].nil?
            @ModifyConfContext = []
            params['ModifyConfContext'].each do |i|
              configsubmitcontext_tmp = ConfigSubmitContext.new
              configsubmitcontext_tmp.deserialize(i)
              @ModifyConfContext << configsubmitcontext_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # ModifyClusterConfigs返回参数结构体
      class ModifyClusterConfigsResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId
        
        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserNewPrivilege请求参数结构体
      class ModifyUserNewPrivilegeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyUserNewPrivilege返回参数结构体
      class ModifyUserNewPrivilegeResponse < TencentCloud::Common::AbstractModel
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

      # 创建集群时的规格
      class NodeSpec < TencentCloud::Common::AbstractModel
        # @param SpecName: 规格名称
        # @type SpecName: String
        # @param Count: 数量
        # @type Count: Integer
        # @param DiskSize: 云盘大小
        # @type DiskSize: Integer

        attr_accessor :SpecName, :Count, :DiskSize
        
        def initialize(specname=nil, count=nil, disksize=nil)
          @SpecName = specname
          @Count = count
          @DiskSize = disksize
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          @DiskSize = params['DiskSize']
        end
      end

      # 节点角色描述信息
      class NodesSummary < TencentCloud::Common::AbstractModel
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param NodeSize: 节点数目
        # @type NodeSize: Integer
        # @param Core: cpu核数，单位个
        # @type Core: Integer
        # @param Memory: 内存大小，单位G
        # @type Memory: Integer
        # @param Disk: 磁盘大小，单位G
        # @type Disk: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskDesc: 磁盘描述
        # @type DiskDesc: String

        attr_accessor :Spec, :NodeSize, :Core, :Memory, :Disk, :DiskType, :DiskDesc
        
        def initialize(spec=nil, nodesize=nil, core=nil, memory=nil, disk=nil, disktype=nil, diskdesc=nil)
          @Spec = spec
          @NodeSize = nodesize
          @Core = core
          @Memory = memory
          @Disk = disk
          @DiskType = disktype
          @DiskDesc = diskdesc
        end

        def deserialize(params)
          @Spec = params['Spec']
          @NodeSize = params['NodeSize']
          @Core = params['Core']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
        end
      end

      # OpenBackUp请求参数结构体
      class OpenBackUpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param OperationType: OPEN 或者CLOSE
        # @type OperationType: String
        # @param CosBucketName: 桶名字
        # @type CosBucketName: String

        attr_accessor :InstanceId, :OperationType, :CosBucketName
        
        def initialize(instanceid=nil, operationtype=nil, cosbucketname=nil)
          @InstanceId = instanceid
          @OperationType = operationtype
          @CosBucketName = cosbucketname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OperationType = params['OperationType']
          @CosBucketName = params['CosBucketName']
        end
      end

      # OpenBackUp返回参数结构体
      class OpenBackUpResponse < TencentCloud::Common::AbstractModel
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

      # 资源规格描述信息
      class ResourceSpec < TencentCloud::Common::AbstractModel
        # @param Name: 规格名称，例如“SCH1"
        # @type Name: String
        # @param Cpu: cpu核数
        # @type Cpu: Integer
        # @param Mem: 内存大小，单位G
        # @type Mem: Integer
        # @param Type: 分类标记，STANDARD/BIGDATA/HIGHIO分别表示标准型/大数据型/高IO
        # @type Type: String
        # @param SystemDisk: 系统盘描述信息
        # @type SystemDisk: :class:`Tencentcloud::Cdwch.v20200915.models.DiskSpec`
        # @param DataDisk: 数据盘描述信息
        # @type DataDisk: :class:`Tencentcloud::Cdwch.v20200915.models.DiskSpec`
        # @param MaxNodeSize: 最大节点数目限制
        # @type MaxNodeSize: Integer
        # @param Available: 是否可用，false代表售罄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Available: Boolean
        # @param ComputeSpecDesc: 规格描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeSpecDesc: String
        # @param DisplayName: 规格名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param InstanceQuota: 库存数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceQuota: Integer

        attr_accessor :Name, :Cpu, :Mem, :Type, :SystemDisk, :DataDisk, :MaxNodeSize, :Available, :ComputeSpecDesc, :DisplayName, :InstanceQuota
        
        def initialize(name=nil, cpu=nil, mem=nil, type=nil, systemdisk=nil, datadisk=nil, maxnodesize=nil, available=nil, computespecdesc=nil, displayname=nil, instancequota=nil)
          @Name = name
          @Cpu = cpu
          @Mem = mem
          @Type = type
          @SystemDisk = systemdisk
          @DataDisk = datadisk
          @MaxNodeSize = maxnodesize
          @Available = available
          @ComputeSpecDesc = computespecdesc
          @DisplayName = displayname
          @InstanceQuota = instancequota
        end

        def deserialize(params)
          @Name = params['Name']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Type = params['Type']
          unless params['SystemDisk'].nil?
            @SystemDisk = DiskSpec.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisk'].nil?
            @DataDisk = DiskSpec.new
            @DataDisk.deserialize(params['DataDisk'])
          end
          @MaxNodeSize = params['MaxNodeSize']
          @Available = params['Available']
          @ComputeSpecDesc = params['ComputeSpecDesc']
          @DisplayName = params['DisplayName']
          @InstanceQuota = params['InstanceQuota']
        end
      end

      # 标签描述
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
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

