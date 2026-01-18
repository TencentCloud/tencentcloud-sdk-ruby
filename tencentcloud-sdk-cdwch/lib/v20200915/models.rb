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
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 集群内节点的规格磁盘规格描述
      class AttachCBSSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 节点磁盘类型，例如“CLOUD_SSD”\"CLOUD_PREMIUM"
        # @type DiskType: String
        # @param DiskSize: 磁盘容量，单位G
        # @type DiskSize: Integer
        # @param DiskCount: 磁盘总数
        # @type DiskCount: Integer
        # @param DiskDesc: 描述
        # @type DiskDesc: String

        attr_accessor :DiskType, :DiskSize, :DiskCount, :DiskDesc

        def initialize(disktype=nil, disksize=nil, diskcount=nil, diskdesc=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
          @DiskDesc = diskdesc
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
          @DiskDesc = params['DiskDesc']
        end
      end

      # 备份任务详情
      class BackUpJobDisplay < TencentCloud::Common::AbstractModel
        # @param JobId: 备份任务id
        # @type JobId: Integer
        # @param Snapshot: 备份任务名
        # @type Snapshot: String
        # @param BackUpType: 任务类型(元数据),(数据)
        # @type BackUpType: String
        # @param BackUpSize: 备份数据量
        # @type BackUpSize: Integer
        # @param BackUpTime: 任务创建时间
        # @type BackUpTime: String
        # @param ExpireTime: 任务过期时间
        # @type ExpireTime: String
        # @param JobStatus: 任务状态
        # @type JobStatus: String
        # @param ProcessSize: 处理数据量
        # @type ProcessSize: Integer
        # @param ErrorReason: 错误原因
        # @type ErrorReason: String

        attr_accessor :JobId, :Snapshot, :BackUpType, :BackUpSize, :BackUpTime, :ExpireTime, :JobStatus, :ProcessSize, :ErrorReason

        def initialize(jobid=nil, snapshot=nil, backuptype=nil, backupsize=nil, backuptime=nil, expiretime=nil, jobstatus=nil, processsize=nil, errorreason=nil)
          @JobId = jobid
          @Snapshot = snapshot
          @BackUpType = backuptype
          @BackUpSize = backupsize
          @BackUpTime = backuptime
          @ExpireTime = expiretime
          @JobStatus = jobstatus
          @ProcessSize = processsize
          @ErrorReason = errorreason
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Snapshot = params['Snapshot']
          @BackUpType = params['BackUpType']
          @BackUpSize = params['BackUpSize']
          @BackUpTime = params['BackUpTime']
          @ExpireTime = params['ExpireTime']
          @JobStatus = params['JobStatus']
          @ProcessSize = params['ProcessSize']
          @ErrorReason = params['ErrorReason']
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
        # @param ZooPath: zk路径
        # @type ZooPath: String
        # @param Rip: cvm的ip地址
        # @type Rip: String

        attr_accessor :Database, :Table, :TotalBytes, :VCluster, :Ips, :ZooPath, :Rip

        def initialize(database=nil, table=nil, totalbytes=nil, vcluster=nil, ips=nil, zoopath=nil, rip=nil)
          @Database = database
          @Table = table
          @TotalBytes = totalbytes
          @VCluster = vcluster
          @Ips = ips
          @ZooPath = zoopath
          @Rip = rip
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @TotalBytes = params['TotalBytes']
          @VCluster = params['VCluster']
          @Ips = params['Ips']
          @ZooPath = params['ZooPath']
          @Rip = params['Rip']
        end
      end

      # 资源信息
      class CNResource < TencentCloud::Common::AbstractModel
        # @param ID: 资源id
        # @type ID: Integer
        # @param InstanceID: 集群的id
        # @type InstanceID: String
        # @param AppID: 用户appid
        # @type AppID: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param Component: 组件
        # @type Component: String
        # @param DeployMode: 部署模式
        # @type DeployMode: Integer
        # @param SpecName: 规格名称
        # @type SpecName: String
        # @param ResourceID: 资源id
        # @type ResourceID: String
        # @param Status: 资源的状态
        # @type Status: Integer
        # @param IP: 私有网络ip
        # @type IP: String
        # @param CPU: 核数
        # @type CPU: Integer
        # @param Memory: 内存
        # @type Memory: Integer
        # @param Storage: 存储大小
        # @type Storage: Integer
        # @param UUID: 服务器ID
        # @type UUID: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 地区
        # @type Zone: String
        # @param Details: 详细信息
        # @type Details: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String

        attr_accessor :ID, :InstanceID, :AppID, :Uin, :Component, :DeployMode, :SpecName, :ResourceID, :Status, :IP, :CPU, :Memory, :Storage, :UUID, :Region, :Zone, :Details, :CreateTime, :ModifyTime, :ExpireTime

        def initialize(id=nil, instanceid=nil, appid=nil, uin=nil, component=nil, deploymode=nil, specname=nil, resourceid=nil, status=nil, ip=nil, cpu=nil, memory=nil, storage=nil, uuid=nil, region=nil, zone=nil, details=nil, createtime=nil, modifytime=nil, expiretime=nil)
          @ID = id
          @InstanceID = instanceid
          @AppID = appid
          @Uin = uin
          @Component = component
          @DeployMode = deploymode
          @SpecName = specname
          @ResourceID = resourceid
          @Status = status
          @IP = ip
          @CPU = cpu
          @Memory = memory
          @Storage = storage
          @UUID = uuid
          @Region = region
          @Zone = zone
          @Details = details
          @CreateTime = createtime
          @ModifyTime = modifytime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceID = params['InstanceID']
          @AppID = params['AppID']
          @Uin = params['Uin']
          @Component = params['Component']
          @DeployMode = params['DeployMode']
          @SpecName = params['SpecName']
          @ResourceID = params['ResourceID']
          @Status = params['Status']
          @IP = params['IP']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @UUID = params['UUID']
          @Region = params['Region']
          @Zone = params['Zone']
          @Details = params['Details']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @ExpireTime = params['ExpireTime']
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
        # @param PassWord: base64加密后的密码
        # @type PassWord: String
        # @param Describe: 描述
        # @type Describe: String
        # @param OriginalPassword: 账户的当前密码
        # @type OriginalPassword: String

        attr_accessor :InstanceId, :UserName, :PassWord, :Describe, :OriginalPassword

        def initialize(instanceid=nil, username=nil, password=nil, describe=nil, originalpassword=nil)
          @InstanceId = instanceid
          @UserName = username
          @PassWord = password
          @Describe = describe
          @OriginalPassword = originalpassword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @Describe = params['Describe']
          @OriginalPassword = params['OriginalPassword']
        end
      end

      # 用于返回XML格式的配置文件和内容以及其他配置文件有关的信息
      class ClusterConfigsInfoFromEMR < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param FileConf: 配置文件对应的相关属性信息
        # @type FileConf: String
        # @param KeyConf: 配置文件对应的其他属性信息
        # @type KeyConf: String
        # @param OriParam: 配置文件的内容，base64编码
        # @type OriParam: String
        # @param NeedRestart: 用于表示当前配置文件是不是有过修改后没有重启，提醒用户需要重启
        # @type NeedRestart: Integer
        # @param FilePath: 保存配置文件的路径
        # @type FilePath: String
        # @param Ip: 节点级配置的ip，当ConfigLevel取值为node时，此参数必选；
        # @type Ip: String
        # @param ConfigLevel: 可选参数，参数取值：node,cluster; node: 节点级参数配置，cluster: 实例级参数配置；
        # @type ConfigLevel: String

        attr_accessor :FileName, :FileConf, :KeyConf, :OriParam, :NeedRestart, :FilePath, :Ip, :ConfigLevel

        def initialize(filename=nil, fileconf=nil, keyconf=nil, oriparam=nil, needrestart=nil, filepath=nil, ip=nil, configlevel=nil)
          @FileName = filename
          @FileConf = fileconf
          @KeyConf = keyconf
          @OriParam = oriparam
          @NeedRestart = needrestart
          @FilePath = filepath
          @Ip = ip
          @ConfigLevel = configlevel
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileConf = params['FileConf']
          @KeyConf = params['KeyConf']
          @OriParam = params['OriParam']
          @NeedRestart = params['NeedRestart']
          @FilePath = params['FilePath']
          @Ip = params['Ip']
          @ConfigLevel = params['ConfigLevel']
        end
      end

      # clickhouse vcluster信息
      class ClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterName: vcluster名字
        # @type ClusterName: String
        # @param NodeIps: 当前cluster的IP列表
        # @type NodeIps: Array

        attr_accessor :ClusterName, :NodeIps

        def initialize(clustername=nil, nodeips=nil)
          @ClusterName = clustername
          @NodeIps = nodeips
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @NodeIps = params['NodeIps']
        end
      end

      # 云原生实例详情
      class CnInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ID: ID值
        # @type ID: Integer
        # @param InstanceType: cdwch-cn或者其他
        # @type InstanceType: String
        # @param InstanceName: cdwch-cn或者其他
        # @type InstanceName: String
        # @param Status: Running
        # @type Status: String
        # @param StatusDesc: 运行中
        # @type StatusDesc: String
        # @param InstanceStateInfo: 无
        # @type InstanceStateInfo: :class:`Tencentcloud::Cdwch.v20200915.models.InstanceStateInfo`
        # @param InstanceID: -
        # @type InstanceID: String
        # @param Resources: 无
        # @type Resources: Array
        # @param IsSecondaryZone: desc
        # @type IsSecondaryZone: String
        # @param SecondaryZoneInfo: desc
        # @type SecondaryZoneInfo: String

        attr_accessor :ID, :InstanceType, :InstanceName, :Status, :StatusDesc, :InstanceStateInfo, :InstanceID, :Resources, :IsSecondaryZone, :SecondaryZoneInfo

        def initialize(id=nil, instancetype=nil, instancename=nil, status=nil, statusdesc=nil, instancestateinfo=nil, instanceid=nil, resources=nil, issecondaryzone=nil, secondaryzoneinfo=nil)
          @ID = id
          @InstanceType = instancetype
          @InstanceName = instancename
          @Status = status
          @StatusDesc = statusdesc
          @InstanceStateInfo = instancestateinfo
          @InstanceID = instanceid
          @Resources = resources
          @IsSecondaryZone = issecondaryzone
          @SecondaryZoneInfo = secondaryzoneinfo
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceType = params['InstanceType']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          unless params['InstanceStateInfo'].nil?
            @InstanceStateInfo = InstanceStateInfo.new
            @InstanceStateInfo.deserialize(params['InstanceStateInfo'])
          end
          @InstanceID = params['InstanceID']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              cnresource_tmp = CNResource.new
              cnresource_tmp.deserialize(i)
              @Resources << cnresource_tmp
            end
          end
          @IsSecondaryZone = params['IsSecondaryZone']
          @SecondaryZoneInfo = params['SecondaryZoneInfo']
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
        # @param Ip: 节点ip信息，可选参数，当修改集群节点级配置（例如keeper_config.xml）时此参数必填；
        # @type Ip: String

        attr_accessor :FileName, :OldConfValue, :NewConfValue, :FilePath, :Ip

        def initialize(filename=nil, oldconfvalue=nil, newconfvalue=nil, filepath=nil, ip=nil)
          @FileName = filename
          @OldConfValue = oldconfvalue
          @NewConfValue = newconfvalue
          @FilePath = filepath
          @Ip = ip
        end

        def deserialize(params)
          @FileName = params['FileName']
          @OldConfValue = params['OldConfValue']
          @NewConfValue = params['NewConfValue']
          @FilePath = params['FilePath']
          @Ip = params['Ip']
        end
      end

      # CreateBackUpSchedule请求参数结构体
      class CreateBackUpScheduleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param ScheduleType: 策略类型 meta(元数据)  data (表数据)
        # @type ScheduleType: String
        # @param OperationType: 操作类型 create(创建) update(编辑修改)
        # @type OperationType: String
        # @param RetainDays: 保留天数 例如7
        # @type RetainDays: Integer
        # @param ScheduleId: 编辑时需要传
        # @type ScheduleId: Integer
        # @param WeekDays: 选择的星期 逗号分隔，例如 2 代表周二
        # @type WeekDays: String
        # @param ExecuteHour: 执行小时
        # @type ExecuteHour: Integer
        # @param BackUpTables: 备份表列表
        # @type BackUpTables: Array

        attr_accessor :InstanceId, :ScheduleType, :OperationType, :RetainDays, :ScheduleId, :WeekDays, :ExecuteHour, :BackUpTables

        def initialize(instanceid=nil, scheduletype=nil, operationtype=nil, retaindays=nil, scheduleid=nil, weekdays=nil, executehour=nil, backuptables=nil)
          @InstanceId = instanceid
          @ScheduleType = scheduletype
          @OperationType = operationtype
          @RetainDays = retaindays
          @ScheduleId = scheduleid
          @WeekDays = weekdays
          @ExecuteHour = executehour
          @BackUpTables = backuptables
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ScheduleType = params['ScheduleType']
          @OperationType = params['OperationType']
          @RetainDays = params['RetainDays']
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
        # @param ErrorMsg: 错误描述
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
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
        # @param ProductVersion: 系统版本
        # @type ProductVersion: String
        # @param ChargeProperties: 计费方式
        # @type ChargeProperties: :class:`Tencentcloud::Cdwch.v20200915.models.Charge`
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param DataSpec: 数据节点
        # SpecName从DescribeSpec接口中返回的DataSpec.Name获取
        # @type DataSpec: :class:`Tencentcloud::Cdwch.v20200915.models.NodeSpec`
        # @param Tags: 标签列表（废弃）
        # @type Tags: :class:`Tencentcloud::Cdwch.v20200915.models.Tag`
        # @param ClsLogSetId: 日志主题ID
        # @type ClsLogSetId: String
        # @param CosBucketName: COS桶名称
        # @type CosBucketName: String
        # @param MountDiskType: 是否是裸盘挂载，默认值 0 为 未挂载，1 为挂载。
        # @type MountDiskType: Integer
        # @param HAZk: 是否是ZK高可用
        # @type HAZk: Boolean
        # @param CommonSpec: ZK节点SpecName从DescribeSpec接口中返回的CommonSpec结构体的Name（ZK节点）获取
        # @type CommonSpec: :class:`Tencentcloud::Cdwch.v20200915.models.NodeSpec`
        # @param TagItems: 标签列表
        # @type TagItems: Array
        # @param SecondaryZoneInfo: 副可用区信息
        # @type SecondaryZoneInfo: Array
        # @param CkDefaultUserPwd: default账号登陆实例的密码。8-16个字符，至少包含大写字母、小写字母、数字和特殊字符!@#%^*中的三种，第一个字符不能为特殊字符
        # @type CkDefaultUserPwd: String

        attr_accessor :Zone, :HaFlag, :UserVPCId, :UserSubnetId, :ProductVersion, :ChargeProperties, :InstanceName, :DataSpec, :Tags, :ClsLogSetId, :CosBucketName, :MountDiskType, :HAZk, :CommonSpec, :TagItems, :SecondaryZoneInfo, :CkDefaultUserPwd
        extend Gem::Deprecate
        deprecate :Tags, :none, 2026, 1
        deprecate :Tags=, :none, 2026, 1

        def initialize(zone=nil, haflag=nil, uservpcid=nil, usersubnetid=nil, productversion=nil, chargeproperties=nil, instancename=nil, dataspec=nil, tags=nil, clslogsetid=nil, cosbucketname=nil, mountdisktype=nil, hazk=nil, commonspec=nil, tagitems=nil, secondaryzoneinfo=nil, ckdefaultuserpwd=nil)
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
          @TagItems = tagitems
          @SecondaryZoneInfo = secondaryzoneinfo
          @CkDefaultUserPwd = ckdefaultuserpwd
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
          unless params['TagItems'].nil?
            @TagItems = []
            params['TagItems'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagItems << tag_tmp
            end
          end
          unless params['SecondaryZoneInfo'].nil?
            @SecondaryZoneInfo = []
            params['SecondaryZoneInfo'].each do |i|
              secondaryzoneinfo_tmp = SecondaryZoneInfo.new
              secondaryzoneinfo_tmp.deserialize(i)
              @SecondaryZoneInfo << secondaryzoneinfo_tmp
            end
          end
          @CkDefaultUserPwd = params['CkDefaultUserPwd']
        end
      end

      # CreateInstanceNew返回参数结构体
      class CreateInstanceNewResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 数据库权限信息
      class DatabasePrivilegeInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param DatabasePrivileges: 库表权限，SELECT、INSERT_ALL、ALTER、TRUNCATE、DROP_TABLE、CREATE_TABLE、DROP_DATABASE
        # @type DatabasePrivileges: Array
        # @param TablePrivilegeList: 库下面的表权限
        # @type TablePrivilegeList: Array

        attr_accessor :DatabaseName, :DatabasePrivileges, :TablePrivilegeList

        def initialize(databasename=nil, databaseprivileges=nil, tableprivilegelist=nil)
          @DatabaseName = databasename
          @DatabasePrivileges = databaseprivileges
          @TablePrivilegeList = tableprivilegelist
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @DatabasePrivileges = params['DatabasePrivileges']
          unless params['TablePrivilegeList'].nil?
            @TablePrivilegeList = []
            params['TablePrivilegeList'].each do |i|
              tableprivilegeinfo_tmp = TablePrivilegeInfo.new
              tableprivilegeinfo_tmp.deserialize(i)
              @TablePrivilegeList << tableprivilegeinfo_tmp
            end
          end
        end
      end

      # DeleteBackUpData请求参数结构体
      class DeleteBackUpDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer
        # @param IsDeleteAll: 是否删除所有数据
        # @type IsDeleteAll: Boolean

        attr_accessor :InstanceId, :BackUpJobId, :IsDeleteAll

        def initialize(instanceid=nil, backupjobid=nil, isdeleteall=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
          @IsDeleteAll = isdeleteall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
          @IsDeleteAll = params['IsDeleteAll']
        end
      end

      # DeleteBackUpData返回参数结构体
      class DeleteBackUpDataResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBackUpJobDetail请求参数结构体
      class DescribeBackUpJobDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer

        attr_accessor :InstanceId, :BackUpJobId

        def initialize(instanceid=nil, backupjobid=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
        end
      end

      # DescribeBackUpJobDetail返回参数结构体
      class DescribeBackUpJobDetailResponse < TencentCloud::Common::AbstractModel
        # @param TableContents: 备份表详情
        # @type TableContents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableContents, :RequestId

        def initialize(tablecontents=nil, requestid=nil)
          @TableContents = tablecontents
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableContents'].nil?
            @TableContents = []
            params['TableContents'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @TableContents << backuptablecontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpJob请求参数结构体
      class DescribeBackUpJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNum: 页号
        # @type PageNum: Integer
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :InstanceId, :PageSize, :PageNum, :BeginTime, :EndTime

        def initialize(instanceid=nil, pagesize=nil, pagenum=nil, begintime=nil, endtime=nil)
          @InstanceId = instanceid
          @PageSize = pagesize
          @PageNum = pagenum
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeBackUpJob返回参数结构体
      class DescribeBackUpJobResponse < TencentCloud::Common::AbstractModel
        # @param BackUpJobs: 任务列表
        # @type BackUpJobs: Array
        # @param ErrorMsg: 错误描述
        # @type ErrorMsg: String
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackUpJobs, :ErrorMsg, :TotalCount, :RequestId

        def initialize(backupjobs=nil, errormsg=nil, totalcount=nil, requestid=nil)
          @BackUpJobs = backupjobs
          @ErrorMsg = errormsg
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackUpJobs'].nil?
            @BackUpJobs = []
            params['BackUpJobs'].each do |i|
              backupjobdisplay_tmp = BackUpJobDisplay.new
              backupjobdisplay_tmp.deserialize(i)
              @BackUpJobs << backupjobdisplay_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpSchedule请求参数结构体
      class DescribeBackUpScheduleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBackUpSchedule返回参数结构体
      class DescribeBackUpScheduleResponse < TencentCloud::Common::AbstractModel
        # @param BackUpOpened: 备份是否开启
        # @type BackUpOpened: Boolean
        # @param MetaStrategy: 元数据备份策略
        # @type MetaStrategy: :class:`Tencentcloud::Cdwch.v20200915.models.ScheduleStrategy`
        # @param DataStrategy: 表数据备份策略
        # @type DataStrategy: :class:`Tencentcloud::Cdwch.v20200915.models.ScheduleStrategy`
        # @param BackUpContents: 备份表列表
        # @type BackUpContents: Array
        # @param BackUpStatus: 备份的状态
        # @type BackUpStatus: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackUpOpened, :MetaStrategy, :DataStrategy, :BackUpContents, :BackUpStatus, :ErrorMsg, :RequestId

        def initialize(backupopened=nil, metastrategy=nil, datastrategy=nil, backupcontents=nil, backupstatus=nil, errormsg=nil, requestid=nil)
          @BackUpOpened = backupopened
          @MetaStrategy = metastrategy
          @DataStrategy = datastrategy
          @BackUpContents = backupcontents
          @BackUpStatus = backupstatus
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @BackUpOpened = params['BackUpOpened']
          unless params['MetaStrategy'].nil?
            @MetaStrategy = ScheduleStrategy.new
            @MetaStrategy.deserialize(params['MetaStrategy'])
          end
          unless params['DataStrategy'].nil?
            @DataStrategy = ScheduleStrategy.new
            @DataStrategy.deserialize(params['DataStrategy'])
          end
          unless params['BackUpContents'].nil?
            @BackUpContents = []
            params['BackUpContents'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @BackUpContents << backuptablecontent_tmp
            end
          end
          @BackUpStatus = params['BackUpStatus']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpTables请求参数结构体
      class DescribeBackUpTablesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBackUpTables返回参数结构体
      class DescribeBackUpTablesResponse < TencentCloud::Common::AbstractModel
        # @param AvailableTables: 可备份表列表
        # @type AvailableTables: Array
        # @param ErrorMsg: 错误描述
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableTables, :ErrorMsg, :RequestId

        def initialize(availabletables=nil, errormsg=nil, requestid=nil)
          @AvailableTables = availabletables
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AvailableTables'].nil?
            @AvailableTables = []
            params['AvailableTables'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @AvailableTables << backuptablecontent_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCNInstances请求参数结构体
      class DescribeCNInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceID: 搜索的集群id名称
        # @type SearchInstanceID: String
        # @param SearchInstanceName: 搜索的集群name
        # @type SearchInstanceName: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param SearchTags: 搜索标签列表
        # @type SearchTags: Array
        # @param InstanceType: 集群类型，弹性版或自研数仓版
        # @type InstanceType: String
        # @param Components: 组件名称列表
        # @type Components: Array

        attr_accessor :SearchInstanceID, :SearchInstanceName, :Offset, :Limit, :SearchTags, :InstanceType, :Components

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil, instancetype=nil, components=nil)
          @SearchInstanceID = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
          @InstanceType = instancetype
          @Components = components
        end

        def deserialize(params)
          @SearchInstanceID = params['SearchInstanceID']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['SearchTags'].nil?
            @SearchTags = []
            params['SearchTags'].each do |i|
              searchtags_tmp = SearchTags.new
              searchtags_tmp.deserialize(i)
              @SearchTags << searchtags_tmp
            end
          end
          @InstanceType = params['InstanceType']
          @Components = params['Components']
        end
      end

      # DescribeCNInstances返回参数结构体
      class DescribeCNInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # @type InstancesList: Array
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              cninstanceinfo_tmp = CnInstanceInfo.new
              cninstanceinfo_tmp.deserialize(i)
              @InstancesList << cninstanceinfo_tmp
            end
          end
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
        # @param Cluster: 集群名称，当ApiType取值为GET_SYSTEM_USERS，GET_PRIVILEGE_USERS，GET_CLUSTER_DATABASES，GET_CLUSTER_TABLES 时，此参数必填
        # @type Cluster: String
        # @param UserName: 用户名称，api与user相关的必填
        # @type UserName: String
        # @param UserType: 账户的类型
        # @type UserType: String

        attr_accessor :InstanceId, :ApiType, :Cluster, :UserName, :UserType

        def initialize(instanceid=nil, apitype=nil, cluster=nil, username=nil, usertype=nil)
          @InstanceId = instanceid
          @ApiType = apitype
          @Cluster = cluster
          @UserName = username
          @UserType = usertype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApiType = params['ApiType']
          @Cluster = params['Cluster']
          @UserName = params['UserName']
          @UserType = params['UserType']
        end
      end

      # DescribeCkSqlApis返回参数结构体
      class DescribeCkSqlApisResponse < TencentCloud::Common::AbstractModel
        # @param ReturnData: 返回的查询数据，大部分情况是list，也可能是bool
        # @type ReturnData: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeClusterConfigs请求参数结构体
      class DescribeClusterConfigsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterConfigs返回参数结构体
      class DescribeClusterConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ClusterConfList: 返回实例的配置文件相关的信息
        # @type ClusterConfList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterConfList, :RequestId

        def initialize(clusterconflist=nil, requestid=nil)
          @ClusterConfList = clusterconflist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterConfList'].nil?
            @ClusterConfList = []
            params['ClusterConfList'].each do |i|
              clusterconfigsinfofromemr_tmp = ClusterConfigsInfoFromEMR.new
              clusterconfigsinfofromemr_tmp.deserialize(i)
              @ClusterConfList << clusterconfigsinfofromemr_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEventTasks请求参数结构体
      class DescribeEventTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param EventTaskId: 过滤的事件任务id
        # @type EventTaskId: Integer
        # @param PageNumber: 页码，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页数量（支持10、20、30、50、100、200），默认为100
        # @type PageSize: Integer
        # @param EventCode: 事件名称过滤
        # @type EventCode: String
        # @param Status: (1-待处理;2-已预约;3-处理中;4-已结束;5-处理中;-1-已忽略;-2-已删除)
        # @type Status: Array
        # @param StartTime: 创建时间范围开始 (格式: YYYY-MM-DD HH:MM:SS)，最大支持查询180天信息
        # @type StartTime: String
        # @param EndTime: 创建时间范围结束 (格式: YYYY-MM-DD HH:MM:SS)
        # @type EndTime: String
        # @param SortField: 排序字段（事件类型：event_code；触发时间：create_time；完成时间：end_time）
        # @type SortField: String
        # @param SortOrder: 排序顺序 (asc/desc)
        # @type SortOrder: String

        attr_accessor :InstanceId, :EventTaskId, :PageNumber, :PageSize, :EventCode, :Status, :StartTime, :EndTime, :SortField, :SortOrder

        def initialize(instanceid=nil, eventtaskid=nil, pagenumber=nil, pagesize=nil, eventcode=nil, status=nil, starttime=nil, endtime=nil, sortfield=nil, sortorder=nil)
          @InstanceId = instanceid
          @EventTaskId = eventtaskid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @EventCode = eventcode
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @SortField = sortfield
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EventTaskId = params['EventTaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @EventCode = params['EventCode']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SortField = params['SortField']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeEventTasks返回参数结构体
      class DescribeEventTasksResponse < TencentCloud::Common::AbstractModel
        # @param EventTasks: 产生的事件任务
        # @type EventTasks: Array
        # @param TotalCount: 事件任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventTasks, :TotalCount, :RequestId

        def initialize(eventtasks=nil, totalcount=nil, requestid=nil)
          @EventTasks = eventtasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventTasks'].nil?
            @EventTasks = []
            params['EventTasks'].each do |i|
              eventtask_tmp = EventTask.new
              eventtask_tmp.deserialize(i)
              @EventTasks << eventtask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceClusters请求参数结构体
      class DescribeInstanceClustersRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceClusters返回参数结构体
      class DescribeInstanceClustersResponse < TencentCloud::Common::AbstractModel
        # @param Clusters: cluster列表
        # @type Clusters: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Clusters, :RequestId

        def initialize(clusters=nil, requestid=nil)
          @Clusters = clusters
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              clusterinfo_tmp = ClusterInfo.new
              clusterinfo_tmp.deserialize(i)
              @Clusters << clusterinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceKeyValConfigs请求参数结构体
      class DescribeInstanceKeyValConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param SearchConfigName: 搜索的配置项名称
        # @type SearchConfigName: String

        attr_accessor :InstanceId, :SearchConfigName

        def initialize(instanceid=nil, searchconfigname=nil)
          @InstanceId = instanceid
          @SearchConfigName = searchconfigname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchConfigName = params['SearchConfigName']
        end
      end

      # DescribeInstanceKeyValConfigs返回参数结构体
      class DescribeInstanceKeyValConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ConfigItems: 参数列表
        # @type ConfigItems: Array
        # @param UnConfigItems: 未配置的参数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnConfigItems: Array
        # @param MapConfigItems: 配置的多层级参数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MapConfigItems: Array
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigItems, :UnConfigItems, :MapConfigItems, :ErrorMsg, :RequestId

        def initialize(configitems=nil, unconfigitems=nil, mapconfigitems=nil, errormsg=nil, requestid=nil)
          @ConfigItems = configitems
          @UnConfigItems = unconfigitems
          @MapConfigItems = mapconfigitems
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigItems'].nil?
            @ConfigItems = []
            params['ConfigItems'].each do |i|
              instanceconfiginfo_tmp = InstanceConfigInfo.new
              instanceconfiginfo_tmp.deserialize(i)
              @ConfigItems << instanceconfiginfo_tmp
            end
          end
          unless params['UnConfigItems'].nil?
            @UnConfigItems = []
            params['UnConfigItems'].each do |i|
              instanceconfiginfo_tmp = InstanceConfigInfo.new
              instanceconfiginfo_tmp.deserialize(i)
              @UnConfigItems << instanceconfiginfo_tmp
            end
          end
          unless params['MapConfigItems'].nil?
            @MapConfigItems = []
            params['MapConfigItems'].each do |i|
              mapconfigitem_tmp = MapConfigItem.new
              mapconfigitem_tmp.deserialize(i)
              @MapConfigItems << mapconfigitem_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodes请求参数结构体
      class DescribeInstanceNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param NodeRole: 集群角色类型，“DATA” 为数据节点、“COMMON” 为 ZooKeeper 节点，默认为 "DATA" 数据节点。
        # @type NodeRole: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param DisplayPolicy: 展现策略，All时显示所有
        # @type DisplayPolicy: String
        # @param ForceAll: 当true的时候返回所有节点，即Limit无限大
        # @type ForceAll: Boolean

        attr_accessor :InstanceId, :NodeRole, :Offset, :Limit, :DisplayPolicy, :ForceAll

        def initialize(instanceid=nil, noderole=nil, offset=nil, limit=nil, displaypolicy=nil, forceall=nil)
          @InstanceId = instanceid
          @NodeRole = noderole
          @Offset = offset
          @Limit = limit
          @DisplayPolicy = displaypolicy
          @ForceAll = forceall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeRole = params['NodeRole']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DisplayPolicy = params['DisplayPolicy']
          @ForceAll = params['ForceAll']
        end
      end

      # DescribeInstanceNodes返回参数结构体
      class DescribeInstanceNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InstanceNodesList: 实例节点总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNodesList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceNodesList, :RequestId

        def initialize(totalcount=nil, instancenodeslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceNodesList = instancenodeslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceNodesList'].nil?
            @InstanceNodesList = []
            params['InstanceNodesList'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @InstanceNodesList << instancenode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param IsOpenApi: 是否是open api查询
        # @type IsOpenApi: Boolean

        attr_accessor :InstanceId, :IsOpenApi

        def initialize(instanceid=nil, isopenapi=nil)
          @InstanceId = instanceid
          @IsOpenApi = isopenapi
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IsOpenApi = params['IsOpenApi']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceInfo: 实例描述信息
        # @type InstanceInfo: :class:`Tencentcloud::Cdwch.v20200915.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type InstanceShardsList: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeInstanceState请求参数结构体
      class DescribeInstanceStateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例名称
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceState返回参数结构体
      class DescribeInstanceStateResponse < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # @type FlowProgress: Float
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # @type FlowMsg: String
        # @param ProcessName: 当前步骤的名称，例如：”购买资源中“
        # @type ProcessName: String
        # @param ProcessSubName: 当前步骤的名称，例如：”购买资源中“
        # @type ProcessSubName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :ProcessName, :ProcessSubName, :RequestId

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, processname=nil, processsubname=nil, requestid=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @ProcessName = processname
          @ProcessSubName = processsubname
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @ProcessName = params['ProcessName']
          @ProcessSubName = params['ProcessSubName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesNew请求参数结构体
      class DescribeInstancesNewRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 搜索的集群id名称
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 搜索的集群name
        # @type SearchInstanceName: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param SearchTags: 搜索标签列表
        # @type SearchTags: Array
        # @param IsSimple: 信息详细与否
        # @type IsSimple: Boolean
        # @param Vips: vip列表
        # @type Vips: Array

        attr_accessor :SearchInstanceId, :SearchInstanceName, :Offset, :Limit, :SearchTags, :IsSimple, :Vips

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil, issimple=nil, vips=nil)
          @SearchInstanceId = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
          @IsSimple = issimple
          @Vips = vips
        end

        def deserialize(params)
          @SearchInstanceId = params['SearchInstanceId']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['SearchTags'].nil?
            @SearchTags = []
            params['SearchTags'].each do |i|
              searchtags_tmp = SearchTags.new
              searchtags_tmp.deserialize(i)
              @SearchTags << searchtags_tmp
            end
          end
          @IsSimple = params['IsSimple']
          @Vips = params['Vips']
        end
      end

      # DescribeInstancesNew返回参数结构体
      class DescribeInstancesNewResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstancesList << instanceinfo_tmp
            end
          end
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
        # @param CaseType: 是否是购买页面需要的spec
        # @type CaseType: Integer

        attr_accessor :Zone, :PayMode, :IsElastic, :CaseType

        def initialize(zone=nil, paymode=nil, iselastic=nil, casetype=nil)
          @Zone = zone
          @PayMode = paymode
          @IsElastic = iselastic
          @CaseType = casetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @PayMode = params['PayMode']
          @IsElastic = params['IsElastic']
          @CaseType = params['CaseType']
        end
      end

      # DescribeSpec返回参数结构体
      class DescribeSpecResponse < TencentCloud::Common::AbstractModel
        # @param CommonSpec: zookeeper节点规格描述
        # @type CommonSpec: Array
        # @param DataSpec: 数据节点规格描述
        # @type DataSpec: Array
        # @param AttachCBSSpec: 云盘列表
        # @type AttachCBSSpec: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DestroyInstance请求参数结构体
      class DestroyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyInstance返回参数结构体
      class DestroyInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowID: 作业id
        # @type FlowID: String
        # @param InstanceID: 集群id
        # @type InstanceID: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowID, :InstanceID, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowID = flowid
          @InstanceID = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowID = params['FlowID']
          @InstanceID = params['InstanceID']
          @ErrorMsg = params['ErrorMsg']
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

      # 事件任务
      class EventTask < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param EventTaskId: 事件任务的id
        # @type EventTaskId: Integer
        # @param HandleUser: 处理人uin
        # @type HandleUser: String
        # @param EventCode: 事件名称
        # @type EventCode: String
        # @param RepairId: CVM相关事件的维修id
        # @type RepairId: String
        # @param EventNameDescribe: 事件名称描述
        # @type EventNameDescribe: String
        # @param EventPriority: 事件等级（0-低；1-中；2-高；3-严重）
        # @type EventPriority: Integer
        # @param EventDetail: 事件详情
        # @type EventDetail: String
        # @param IP: 影响集群节点
        # @type IP: String
        # @param CreateTime: 事件触发时间
        # @type CreateTime: String
        # @param Status: 事件状态(1-待处理;2-已预约;3-处理中;4-已完成;5-处理中;6-自动处理中;-1-已忽略;-2-已删除)
        # @type Status: Integer
        # @param NeedAuthorization: 是否需要授权维修：1-不需要，2-需要
        # @type NeedAuthorization: Integer
        # @param OperationType: 该事件涉及到的操作类型（OnlineMigrationForInstance-实例在线迁移,OnlineMaintenanceForInstance-实例在线维修,等）
        # @type OperationType: Array
        # @param FinishTime: 完成时间
        # @type FinishTime: String
        # @param OperationGuide: 操作指引
        # @type OperationGuide: String
        # @param ResourceId: 资源id
        # @type ResourceId: String

        attr_accessor :InstanceId, :EventTaskId, :HandleUser, :EventCode, :RepairId, :EventNameDescribe, :EventPriority, :EventDetail, :IP, :CreateTime, :Status, :NeedAuthorization, :OperationType, :FinishTime, :OperationGuide, :ResourceId

        def initialize(instanceid=nil, eventtaskid=nil, handleuser=nil, eventcode=nil, repairid=nil, eventnamedescribe=nil, eventpriority=nil, eventdetail=nil, ip=nil, createtime=nil, status=nil, needauthorization=nil, operationtype=nil, finishtime=nil, operationguide=nil, resourceid=nil)
          @InstanceId = instanceid
          @EventTaskId = eventtaskid
          @HandleUser = handleuser
          @EventCode = eventcode
          @RepairId = repairid
          @EventNameDescribe = eventnamedescribe
          @EventPriority = eventpriority
          @EventDetail = eventdetail
          @IP = ip
          @CreateTime = createtime
          @Status = status
          @NeedAuthorization = needauthorization
          @OperationType = operationtype
          @FinishTime = finishtime
          @OperationGuide = operationguide
          @ResourceId = resourceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EventTaskId = params['EventTaskId']
          @HandleUser = params['HandleUser']
          @EventCode = params['EventCode']
          @RepairId = params['RepairId']
          @EventNameDescribe = params['EventNameDescribe']
          @EventPriority = params['EventPriority']
          @EventDetail = params['EventDetail']
          @IP = params['IP']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @NeedAuthorization = params['NeedAuthorization']
          @OperationType = params['OperationType']
          @FinishTime = params['FinishTime']
          @OperationGuide = params['OperationGuide']
          @ResourceId = params['ResourceId']
        end
      end

      # 集群分组信息描述
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupName: 分组名称
        # @type GroupName: String
        # @param ShardName: 分片变量名称
        # @type ShardName: String
        # @param ReplicaName: 副本变量名称
        # @type ReplicaName: String

        attr_accessor :GroupName, :ShardName, :ReplicaName

        def initialize(groupname=nil, shardname=nil, replicaname=nil)
          @GroupName = groupname
          @ShardName = shardname
          @ReplicaName = replicaname
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @ShardName = params['ShardName']
          @ReplicaName = params['ReplicaName']
        end
      end

      # 集群配置信息
      class InstanceConfigInfo < TencentCloud::Common::AbstractModel
        # @param ConfKey: 配置项名称
        # @type ConfKey: String
        # @param ConfValue: 配置项内容
        # @type ConfValue: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param NeedRestart: 是否需要重启
        # @type NeedRestart: Boolean
        # @param Editable: 是否可编辑
        # @type Editable: Boolean
        # @param ConfDesc: 配置项解释
        # @type ConfDesc: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param ModifyRuleType: 规则名称类型
        # @type ModifyRuleType: String
        # @param ModifyRuleValue: 规则名称内容
        # @type ModifyRuleValue: String
        # @param Uin: 修改人的uin
        # @type Uin: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :ConfKey, :ConfValue, :DefaultValue, :NeedRestart, :Editable, :ConfDesc, :FileName, :ModifyRuleType, :ModifyRuleValue, :Uin, :ModifyTime

        def initialize(confkey=nil, confvalue=nil, defaultvalue=nil, needrestart=nil, editable=nil, confdesc=nil, filename=nil, modifyruletype=nil, modifyrulevalue=nil, uin=nil, modifytime=nil)
          @ConfKey = confkey
          @ConfValue = confvalue
          @DefaultValue = defaultvalue
          @NeedRestart = needrestart
          @Editable = editable
          @ConfDesc = confdesc
          @FileName = filename
          @ModifyRuleType = modifyruletype
          @ModifyRuleValue = modifyrulevalue
          @Uin = uin
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @ConfKey = params['ConfKey']
          @ConfValue = params['ConfValue']
          @DefaultValue = params['DefaultValue']
          @NeedRestart = params['NeedRestart']
          @Editable = params['Editable']
          @ConfDesc = params['ConfDesc']
          @FileName = params['FileName']
          @ModifyRuleType = params['ModifyRuleType']
          @ModifyRuleValue = params['ModifyRuleValue']
          @Uin = params['Uin']
          @ModifyTime = params['ModifyTime']
        end
      end

      # KV配置
      class InstanceConfigItem < TencentCloud::Common::AbstractModel
        # @param ConfKey: key
        # @type ConfKey: String
        # @param ConfValue: value
        # @type ConfValue: String

        attr_accessor :ConfKey, :ConfValue

        def initialize(confkey=nil, confvalue=nil)
          @ConfKey = confkey
          @ConfValue = confvalue
        end

        def deserialize(params)
          @ConfKey = params['ConfKey']
          @ConfValue = params['ConfValue']
        end
      end

      # Instance表detail字段
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param EnableAlarmStrategy: 告警策略是否可用
        # @type EnableAlarmStrategy: Boolean

        attr_accessor :EnableAlarmStrategy

        def initialize(enablealarmstrategy=nil)
          @EnableAlarmStrategy = enablealarmstrategy
        end

        def deserialize(params)
          @EnableAlarmStrategy = params['EnableAlarmStrategy']
        end
      end

      # 实例描述信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID, "cdw-xxxx" 字符串类型
        # @type InstanceId: String
        # @param InstanceName: 集群实例名称
        # @type InstanceName: String
        # @param Status: 状态,
        # Init 创建中; Serving 运行中；
        # Deleted已销毁；Deleting 销毁中；
        # Modify 集群变更中；
        # @type Status: String
        # @param Version: 版本
        # @type Version: String
        # @param Region: 地域, ap-guangzhou
        # @type Region: String
        # @param Zone: 可用区， ap-guangzhou-3
        # @type Zone: String
        # @param VpcId: 私有网络名称
        # @type VpcId: String
        # @param SubnetId: 子网名称
        # @type SubnetId: String
        # @param PayMode: 付费类型，"hour", "prepay"
        # @type PayMode: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param MasterSummary: 数据节点描述信息
        # @type MasterSummary: :class:`Tencentcloud::Cdwch.v20200915.models.NodesSummary`
        # @param CommonSummary: zookeeper节点描述信息
        # @type CommonSummary: :class:`Tencentcloud::Cdwch.v20200915.models.NodesSummary`
        # @param HA: 高可用,"true" "false"
        # @type HA: String
        # @param AccessInfo: 访问地址，例如 "10.0.0.1:9000"
        # @type AccessInfo: String
        # @param Id: 记录ID，数值型
        # @type Id: Integer
        # @param RegionId: regionId, 表示地域
        # @type RegionId: Integer
        # @param ZoneDesc: 可用区说明，例如 "广州二区"
        # @type ZoneDesc: String
        # @param FlowMsg: 错误流程说明信息
        # @type FlowMsg: String
        # @param StatusDesc: 状态描述，例如“运行中”等
        # @type StatusDesc: String
        # @param RenewFlag: 自动续费标记
        # @type RenewFlag: Boolean
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Monitor: 监控信息
        # @type Monitor: String
        # @param HasClsTopic: 是否开通日志
        # @type HasClsTopic: Boolean
        # @param ClsTopicId: 日志主题ID
        # @type ClsTopicId: String
        # @param ClsLogSetId: 日志集ID
        # @type ClsLogSetId: String
        # @param EnableXMLConfig: 是否支持xml配置管理
        # @type EnableXMLConfig: Integer
        # @param RegionDesc: 区域
        # @type RegionDesc: String
        # @param Eip: 弹性网卡地址
        # @type Eip: String
        # @param CosMoveFactor: 冷热分层系数
        # @type CosMoveFactor: Integer
        # @param Kind: external/local/yunti
        # @type Kind: String
        # @param IsElastic: 是否弹性ck
        # @type IsElastic: Boolean
        # @param InstanceStateInfo: 集群详细状态
        # @type InstanceStateInfo: :class:`Tencentcloud::Cdwch.v20200915.models.InstanceStateInfo`
        # @param HAZk: ZK高可用
        # @type HAZk: Boolean
        # @param MountDiskType: 挂载盘,默认0:没有类型；1:裸盘;2:lvm
        # @type MountDiskType: Integer
        # @param CHProxyVip: chproxy连接ip
        # @type CHProxyVip: String
        # @param CosBucketName: cos buket的名字
        # @type CosBucketName: String
        # @param CanAttachCbs: 是否可以挂载云盘
        # @type CanAttachCbs: Boolean
        # @param CanAttachCbsLvm: 是否可以挂载云盘阵列
        # @type CanAttachCbsLvm: Boolean
        # @param CanAttachCos: 是否可以挂载cos
        # @type CanAttachCos: Boolean
        # @param Components: 服务信息
        # @type Components: Array
        # @param UpgradeVersions: 可升级的内核版本
        # @type UpgradeVersions: String
        # @param EsIndexId: ex-index
        # @type EsIndexId: String
        # @param EsIndexUsername: username
        # @type EsIndexUsername: String
        # @param EsIndexPassword: password
        # @type EsIndexPassword: String
        # @param HasEsIndex: true
        # @type HasEsIndex: Boolean
        # @param IsSecondaryZone: true
        # @type IsSecondaryZone: Boolean
        # @param SecondaryZoneInfo: desc
        # @type SecondaryZoneInfo: String
        # @param ClickHouseKeeper: 是否clickhouse-keeper
        # @type ClickHouseKeeper: Boolean
        # @param Details: 实例扩展信息
        # @type Details: :class:`Tencentcloud::Cdwch.v20200915.models.InstanceDetail`
        # @param IsWhiteSGs: 安全组白名单
        # @type IsWhiteSGs: Boolean
        # @param BindSGs: 绑定的安全组
        # @type BindSGs: Array
        # @param HasPublicCloudClb: 是否开启公网clb
        # @type HasPublicCloudClb: Boolean
        # @param UpgradeZkVersions: 可升级的zk版本
        # @type UpgradeZkVersions: String
        # @param ShowRip: 是否显示rip
        # @type ShowRip: String
        # @param InstanceType: 实例类型：标准型 standard，无keeper节点类型noKeeper；
        # @type InstanceType: String

        attr_accessor :InstanceId, :InstanceName, :Status, :Version, :Region, :Zone, :VpcId, :SubnetId, :PayMode, :CreateTime, :ExpireTime, :MasterSummary, :CommonSummary, :HA, :AccessInfo, :Id, :RegionId, :ZoneDesc, :FlowMsg, :StatusDesc, :RenewFlag, :Tags, :Monitor, :HasClsTopic, :ClsTopicId, :ClsLogSetId, :EnableXMLConfig, :RegionDesc, :Eip, :CosMoveFactor, :Kind, :IsElastic, :InstanceStateInfo, :HAZk, :MountDiskType, :CHProxyVip, :CosBucketName, :CanAttachCbs, :CanAttachCbsLvm, :CanAttachCos, :Components, :UpgradeVersions, :EsIndexId, :EsIndexUsername, :EsIndexPassword, :HasEsIndex, :IsSecondaryZone, :SecondaryZoneInfo, :ClickHouseKeeper, :Details, :IsWhiteSGs, :BindSGs, :HasPublicCloudClb, :UpgradeZkVersions, :ShowRip, :InstanceType

        def initialize(instanceid=nil, instancename=nil, status=nil, version=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, paymode=nil, createtime=nil, expiretime=nil, mastersummary=nil, commonsummary=nil, ha=nil, accessinfo=nil, id=nil, regionid=nil, zonedesc=nil, flowmsg=nil, statusdesc=nil, renewflag=nil, tags=nil, monitor=nil, hasclstopic=nil, clstopicid=nil, clslogsetid=nil, enablexmlconfig=nil, regiondesc=nil, eip=nil, cosmovefactor=nil, kind=nil, iselastic=nil, instancestateinfo=nil, hazk=nil, mountdisktype=nil, chproxyvip=nil, cosbucketname=nil, canattachcbs=nil, canattachcbslvm=nil, canattachcos=nil, components=nil, upgradeversions=nil, esindexid=nil, esindexusername=nil, esindexpassword=nil, hasesindex=nil, issecondaryzone=nil, secondaryzoneinfo=nil, clickhousekeeper=nil, details=nil, iswhitesgs=nil, bindsgs=nil, haspubliccloudclb=nil, upgradezkversions=nil, showrip=nil, instancetype=nil)
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
          @Kind = kind
          @IsElastic = iselastic
          @InstanceStateInfo = instancestateinfo
          @HAZk = hazk
          @MountDiskType = mountdisktype
          @CHProxyVip = chproxyvip
          @CosBucketName = cosbucketname
          @CanAttachCbs = canattachcbs
          @CanAttachCbsLvm = canattachcbslvm
          @CanAttachCos = canattachcos
          @Components = components
          @UpgradeVersions = upgradeversions
          @EsIndexId = esindexid
          @EsIndexUsername = esindexusername
          @EsIndexPassword = esindexpassword
          @HasEsIndex = hasesindex
          @IsSecondaryZone = issecondaryzone
          @SecondaryZoneInfo = secondaryzoneinfo
          @ClickHouseKeeper = clickhousekeeper
          @Details = details
          @IsWhiteSGs = iswhitesgs
          @BindSGs = bindsgs
          @HasPublicCloudClb = haspubliccloudclb
          @UpgradeZkVersions = upgradezkversions
          @ShowRip = showrip
          @InstanceType = instancetype
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
          @Kind = params['Kind']
          @IsElastic = params['IsElastic']
          unless params['InstanceStateInfo'].nil?
            @InstanceStateInfo = InstanceStateInfo.new
            @InstanceStateInfo.deserialize(params['InstanceStateInfo'])
          end
          @HAZk = params['HAZk']
          @MountDiskType = params['MountDiskType']
          @CHProxyVip = params['CHProxyVip']
          @CosBucketName = params['CosBucketName']
          @CanAttachCbs = params['CanAttachCbs']
          @CanAttachCbsLvm = params['CanAttachCbsLvm']
          @CanAttachCos = params['CanAttachCos']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              serviceinfo_tmp = ServiceInfo.new
              serviceinfo_tmp.deserialize(i)
              @Components << serviceinfo_tmp
            end
          end
          @UpgradeVersions = params['UpgradeVersions']
          @EsIndexId = params['EsIndexId']
          @EsIndexUsername = params['EsIndexUsername']
          @EsIndexPassword = params['EsIndexPassword']
          @HasEsIndex = params['HasEsIndex']
          @IsSecondaryZone = params['IsSecondaryZone']
          @SecondaryZoneInfo = params['SecondaryZoneInfo']
          @ClickHouseKeeper = params['ClickHouseKeeper']
          unless params['Details'].nil?
            @Details = InstanceDetail.new
            @Details.deserialize(params['Details'])
          end
          @IsWhiteSGs = params['IsWhiteSGs']
          @BindSGs = params['BindSGs']
          @HasPublicCloudClb = params['HasPublicCloudClb']
          @UpgradeZkVersions = params['UpgradeZkVersions']
          @ShowRip = params['ShowRip']
          @InstanceType = params['InstanceType']
        end
      end

      # 实例节点描述信息
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param Core: cpu核数
        # @type Core: Integer
        # @param Memory: 内存大小
        # @type Memory: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskSize: 磁盘大小
        # @type DiskSize: Integer
        # @param Cluster: 所属clickhouse cluster名称
        # @type Cluster: String
        # @param NodeGroups: 节点所属的分组信息
        # @type NodeGroups: Array
        # @param Rip: VPC IP
        # @type Rip: String
        # @param IsCHProxy: ture的时候表示该节点上部署了chPROXY进程
        # @type IsCHProxy: Boolean
        # @param Status: 节点状态
        # @type Status: String
        # @param UUID: 节点uuid
        # @type UUID: String
        # @param Zone: 区
        # @type Zone: String
        # @param ZoneDesc: 去描述
        # @type ZoneDesc: String
        # @param RealResourceId: 真实资源id
        # @type RealResourceId: String
        # @param SubnetId: 子网信息
        # @type SubnetId: String

        attr_accessor :Ip, :Spec, :Core, :Memory, :DiskType, :DiskSize, :Cluster, :NodeGroups, :Rip, :IsCHProxy, :Status, :UUID, :Zone, :ZoneDesc, :RealResourceId, :SubnetId

        def initialize(ip=nil, spec=nil, core=nil, memory=nil, disktype=nil, disksize=nil, cluster=nil, nodegroups=nil, rip=nil, ischproxy=nil, status=nil, uuid=nil, zone=nil, zonedesc=nil, realresourceid=nil, subnetid=nil)
          @Ip = ip
          @Spec = spec
          @Core = core
          @Memory = memory
          @DiskType = disktype
          @DiskSize = disksize
          @Cluster = cluster
          @NodeGroups = nodegroups
          @Rip = rip
          @IsCHProxy = ischproxy
          @Status = status
          @UUID = uuid
          @Zone = zone
          @ZoneDesc = zonedesc
          @RealResourceId = realresourceid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Spec = params['Spec']
          @Core = params['Core']
          @Memory = params['Memory']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @Cluster = params['Cluster']
          unless params['NodeGroups'].nil?
            @NodeGroups = []
            params['NodeGroups'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @NodeGroups << groupinfo_tmp
            end
          end
          @Rip = params['Rip']
          @IsCHProxy = params['IsCHProxy']
          @Status = params['Status']
          @UUID = params['UUID']
          @Zone = params['Zone']
          @ZoneDesc = params['ZoneDesc']
          @RealResourceId = params['RealResourceId']
          @SubnetId = params['SubnetId']
        end
      end

      # 集群状态抽象后的结构体
      class InstanceStateInfo < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # @type FlowProgress: Integer
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # @type FlowMsg: String
        # @param ProcessName: 当前步骤的名称，例如：”购买资源中“
        # @type ProcessName: String
        # @param RequestId: 请求id
        # @type RequestId: String
        # @param ProcessSubName: 流程的二级名称
        # @type ProcessSubName: String

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :ProcessName, :RequestId, :ProcessSubName

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, processname=nil, requestid=nil, processsubname=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @ProcessName = processname
          @RequestId = requestid
          @ProcessSubName = processsubname
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @ProcessName = params['ProcessName']
          @RequestId = params['RequestId']
          @ProcessSubName = params['ProcessSubName']
        end
      end

      # kv配置，多层级item
      class MapConfigItem < TencentCloud::Common::AbstractModel
        # @param ConfKey: key
        # @type ConfKey: String
        # @param Items: 列表
        # @type Items: Array

        attr_accessor :ConfKey, :Items

        def initialize(confkey=nil, items=nil)
          @ConfKey = confkey
          @Items = items
        end

        def deserialize(params)
          @ConfKey = params['ConfKey']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instanceconfiginfo_tmp = InstanceConfigInfo.new
              instanceconfiginfo_tmp.deserialize(i)
              @Items << instanceconfiginfo_tmp
            end
          end
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyInstanceKeyValConfigs请求参数结构体
      class ModifyInstanceKeyValConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AddItems: 新增配置列表
        # @type AddItems: Array
        # @param UpdateItems: 更新配置列表
        # @type UpdateItems: Array
        # @param DeleteItems: 删除配置列表
        # @type DeleteItems: :class:`Tencentcloud::Cdwch.v20200915.models.InstanceConfigItem`
        # @param DelItems: 删除配置列表
        # @type DelItems: Array
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :AddItems, :UpdateItems, :DeleteItems, :DelItems, :Remark

        def initialize(instanceid=nil, additems=nil, updateitems=nil, deleteitems=nil, delitems=nil, remark=nil)
          @InstanceId = instanceid
          @AddItems = additems
          @UpdateItems = updateitems
          @DeleteItems = deleteitems
          @DelItems = delitems
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AddItems'].nil?
            @AddItems = []
            params['AddItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @AddItems << instanceconfigitem_tmp
            end
          end
          unless params['UpdateItems'].nil?
            @UpdateItems = []
            params['UpdateItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @UpdateItems << instanceconfigitem_tmp
            end
          end
          unless params['DeleteItems'].nil?
            @DeleteItems = InstanceConfigItem.new
            @DeleteItems.deserialize(params['DeleteItems'])
          end
          unless params['DelItems'].nil?
            @DelItems = []
            params['DelItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @DelItems << instanceconfigitem_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # ModifyInstanceKeyValConfigs返回参数结构体
      class ModifyInstanceKeyValConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param FlowId: ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :FlowId, :RequestId

        def initialize(errormsg=nil, flowid=nil, requestid=nil)
          @ErrorMsg = errormsg
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserNewPrivilege请求参数结构体
      class ModifyUserNewPrivilegeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Cluster: cluster名称
        # @type Cluster: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param AllDatabase: 是否所有数据库表
        # @type AllDatabase: Boolean
        # @param GlobalPrivileges: 全局权限
        # @type GlobalPrivileges: Array
        # @param DatabasePrivilegeList: 数据库表权限
        # @type DatabasePrivilegeList: Array

        attr_accessor :InstanceId, :Cluster, :UserName, :AllDatabase, :GlobalPrivileges, :DatabasePrivilegeList

        def initialize(instanceid=nil, cluster=nil, username=nil, alldatabase=nil, globalprivileges=nil, databaseprivilegelist=nil)
          @InstanceId = instanceid
          @Cluster = cluster
          @UserName = username
          @AllDatabase = alldatabase
          @GlobalPrivileges = globalprivileges
          @DatabasePrivilegeList = databaseprivilegelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Cluster = params['Cluster']
          @UserName = params['UserName']
          @AllDatabase = params['AllDatabase']
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivilegeList'].nil?
            @DatabasePrivilegeList = []
            params['DatabasePrivilegeList'].each do |i|
              databaseprivilegeinfo_tmp = DatabasePrivilegeInfo.new
              databaseprivilegeinfo_tmp.deserialize(i)
              @DatabasePrivilegeList << databaseprivilegeinfo_tmp
            end
          end
        end
      end

      # ModifyUserNewPrivilege返回参数结构体
      class ModifyUserNewPrivilegeResponse < TencentCloud::Common::AbstractModel
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
        # @param AttachCBSSpec: 挂载云盘信息
        # @type AttachCBSSpec: :class:`Tencentcloud::Cdwch.v20200915.models.AttachCBSSpec`
        # @param SubProductType: 子产品类型
        # @type SubProductType: String
        # @param SpecCore: 规格对应的核数
        # @type SpecCore: Integer
        # @param SpecMemory: 规格对应的内存大小
        # @type SpecMemory: Integer
        # @param DiskCount: 磁盘的数量
        # @type DiskCount: Integer
        # @param MaxDiskSize: 磁盘的最大大小
        # @type MaxDiskSize: Integer
        # @param Encrypt: 是否为加密云盘
        # @type Encrypt: Integer

        attr_accessor :Spec, :NodeSize, :Core, :Memory, :Disk, :DiskType, :DiskDesc, :AttachCBSSpec, :SubProductType, :SpecCore, :SpecMemory, :DiskCount, :MaxDiskSize, :Encrypt

        def initialize(spec=nil, nodesize=nil, core=nil, memory=nil, disk=nil, disktype=nil, diskdesc=nil, attachcbsspec=nil, subproducttype=nil, speccore=nil, specmemory=nil, diskcount=nil, maxdisksize=nil, encrypt=nil)
          @Spec = spec
          @NodeSize = nodesize
          @Core = core
          @Memory = memory
          @Disk = disk
          @DiskType = disktype
          @DiskDesc = diskdesc
          @AttachCBSSpec = attachcbsspec
          @SubProductType = subproducttype
          @SpecCore = speccore
          @SpecMemory = specmemory
          @DiskCount = diskcount
          @MaxDiskSize = maxdisksize
          @Encrypt = encrypt
        end

        def deserialize(params)
          @Spec = params['Spec']
          @NodeSize = params['NodeSize']
          @Core = params['Core']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          unless params['AttachCBSSpec'].nil?
            @AttachCBSSpec = AttachCBSSpec.new
            @AttachCBSSpec.deserialize(params['AttachCBSSpec'])
          end
          @SubProductType = params['SubProductType']
          @SpecCore = params['SpecCore']
          @SpecMemory = params['SpecMemory']
          @DiskCount = params['DiskCount']
          @MaxDiskSize = params['MaxDiskSize']
          @Encrypt = params['Encrypt']
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

      # RecoverBackUpJob请求参数结构体
      class RecoverBackUpJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer

        attr_accessor :InstanceId, :BackUpJobId

        def initialize(instanceid=nil, backupjobid=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
        end
      end

      # RecoverBackUpJob返回参数结构体
      class RecoverBackUpJobResponse < TencentCloud::Common::AbstractModel
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

      # ResizeDisk请求参数结构体
      class ResizeDiskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一ID
        # @type InstanceId: String
        # @param Type: 节点类型，DATA：clickhouse节点，COMMON：为zookeeper节点
        # @type Type: String
        # @param DiskSize: 磁盘扩容后容量，不能小于原有用量。clickhouse最小200，且为100的整数倍。 zk最小100，且为10的整数倍；
        # @type DiskSize: Integer

        attr_accessor :InstanceId, :Type, :DiskSize

        def initialize(instanceid=nil, type=nil, disksize=nil)
          @InstanceId = instanceid
          @Type = type
          @DiskSize = disksize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @DiskSize = params['DiskSize']
        end
      end

      # ResizeDisk返回参数结构体
      class ResizeDiskResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Available: Boolean
        # @param ComputeSpecDesc: 规格描述信息
        # @type ComputeSpecDesc: String
        # @param DisplayName: 规格名
        # @type DisplayName: String
        # @param InstanceQuota: 库存数
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

      # ScaleCNOutUpInstance请求参数结构体
      class ScaleCNOutUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一ID
        # @type InstanceId: String
        # @param VirtualCluster: warehouse名称
        # @type VirtualCluster: String
        # @param UserSubnetID: 子网id
        # @type UserSubnetID: String
        # @param NewCount: 新的warehouse的个数
        # @type NewCount: Integer
        # @param NewSpecName: 集群的规格2X-Small、X-Small、Small
        # @type NewSpecName: String

        attr_accessor :InstanceId, :VirtualCluster, :UserSubnetID, :NewCount, :NewSpecName

        def initialize(instanceid=nil, virtualcluster=nil, usersubnetid=nil, newcount=nil, newspecname=nil)
          @InstanceId = instanceid
          @VirtualCluster = virtualcluster
          @UserSubnetID = usersubnetid
          @NewCount = newcount
          @NewSpecName = newspecname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualCluster = params['VirtualCluster']
          @UserSubnetID = params['UserSubnetID']
          @NewCount = params['NewCount']
          @NewSpecName = params['NewSpecName']
        end
      end

      # ScaleCNOutUpInstance返回参数结构体
      class ScaleCNOutUpInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ScaleOutInstance请求参数结构体
      class ScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一ID
        # @type InstanceId: String
        # @param Type: 节点类型，DATA：clickhouse节点，COMMON：为zookeeper节点
        # @type Type: String
        # @param NodeCount: 调整clickhouse节点数量
        # @type NodeCount: Integer
        # @param ScaleOutCluster: v_cluster分组，
        # 新增扩容节点将加入到已选择的v_cluster分组中，提交同步VIP生效.
        # @type ScaleOutCluster: String
        # @param UserSubnetIPNum: 子网剩余ip数量，用于判断当前实例子网剩余ip数是否能扩容。需要根据实际填写
        # @type UserSubnetIPNum: Integer
        # @param ScaleOutNodeIp: 同步元数据节点IP （uip），扩容的时候必填
        # @type ScaleOutNodeIp: String
        # @param ReduceShardInfo: 缩容节点shard的节点IP （uip），其中ha集群需要主副节点ip都传入以逗号分隔，缩容的时候必填
        # @type ReduceShardInfo: Array

        attr_accessor :InstanceId, :Type, :NodeCount, :ScaleOutCluster, :UserSubnetIPNum, :ScaleOutNodeIp, :ReduceShardInfo

        def initialize(instanceid=nil, type=nil, nodecount=nil, scaleoutcluster=nil, usersubnetipnum=nil, scaleoutnodeip=nil, reduceshardinfo=nil)
          @InstanceId = instanceid
          @Type = type
          @NodeCount = nodecount
          @ScaleOutCluster = scaleoutcluster
          @UserSubnetIPNum = usersubnetipnum
          @ScaleOutNodeIp = scaleoutnodeip
          @ReduceShardInfo = reduceshardinfo
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @NodeCount = params['NodeCount']
          @ScaleOutCluster = params['ScaleOutCluster']
          @UserSubnetIPNum = params['UserSubnetIPNum']
          @ScaleOutNodeIp = params['ScaleOutNodeIp']
          @ReduceShardInfo = params['ReduceShardInfo']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ScaleUpInstance请求参数结构体
      class ScaleUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一ID
        # @type InstanceId: String
        # @param Type: 节点类型，DATA：clickhouse节点，COMMON：为zookeeper节点
        # @type Type: String
        # @param SpecName: clickhouse节点规格。
        # @type SpecName: String
        # @param ScaleUpEnableRolling: 是否滚动重启，false为不滚动重启，true为滚动重启
        # @type ScaleUpEnableRolling: Boolean

        attr_accessor :InstanceId, :Type, :SpecName, :ScaleUpEnableRolling

        def initialize(instanceid=nil, type=nil, specname=nil, scaleupenablerolling=nil)
          @InstanceId = instanceid
          @Type = type
          @SpecName = specname
          @ScaleUpEnableRolling = scaleupenablerolling
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @SpecName = params['SpecName']
          @ScaleUpEnableRolling = params['ScaleUpEnableRolling']
        end
      end

      # ScaleUpInstance返回参数结构体
      class ScaleUpInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 策略详情
      class ScheduleStrategy < TencentCloud::Common::AbstractModel
        # @param CosBucketName: 备份桶名称
        # @type CosBucketName: String
        # @param RetainDays: 备份保留天数
        # @type RetainDays: Integer
        # @param WeekDays: 备份的天
        # @type WeekDays: String
        # @param ExecuteHour: 备份小时
        # @type ExecuteHour: Integer
        # @param ScheduleId: 策略id
        # @type ScheduleId: Integer
        # @param NextBackupTime: 下次备份时间
        # @type NextBackupTime: String

        attr_accessor :CosBucketName, :RetainDays, :WeekDays, :ExecuteHour, :ScheduleId, :NextBackupTime

        def initialize(cosbucketname=nil, retaindays=nil, weekdays=nil, executehour=nil, scheduleid=nil, nextbackuptime=nil)
          @CosBucketName = cosbucketname
          @RetainDays = retaindays
          @WeekDays = weekdays
          @ExecuteHour = executehour
          @ScheduleId = scheduleid
          @NextBackupTime = nextbackuptime
        end

        def deserialize(params)
          @CosBucketName = params['CosBucketName']
          @RetainDays = params['RetainDays']
          @WeekDays = params['WeekDays']
          @ExecuteHour = params['ExecuteHour']
          @ScheduleId = params['ScheduleId']
          @NextBackupTime = params['NextBackupTime']
        end
      end

      # 列表页搜索的标记列表
      class SearchTags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String
        # @param AllValue: 1表示只输入标签的键，没有输入值；0表示输入键时且输入值
        # @type AllValue: Integer

        attr_accessor :TagKey, :TagValue, :AllValue

        def initialize(tagkey=nil, tagvalue=nil, allvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @AllValue = allvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @AllValue = params['AllValue']
        end
      end

      # 副可用区详情
      class SecondaryZoneInfo < TencentCloud::Common::AbstractModel
        # @param SecondaryZone: 副可用区
        # @type SecondaryZone: String
        # @param SecondarySubnet: 可用区可用的子网id
        # @type SecondarySubnet: String
        # @param UserIpNum: 可用区可用的子网可用ip的数量
        # @type UserIpNum: String
        # @param SecondaryUserSubnetIPNum: 可用区可用的子网可用ip的数量
        # @type SecondaryUserSubnetIPNum: Integer

        attr_accessor :SecondaryZone, :SecondarySubnet, :UserIpNum, :SecondaryUserSubnetIPNum

        def initialize(secondaryzone=nil, secondarysubnet=nil, useripnum=nil, secondaryusersubnetipnum=nil)
          @SecondaryZone = secondaryzone
          @SecondarySubnet = secondarysubnet
          @UserIpNum = useripnum
          @SecondaryUserSubnetIPNum = secondaryusersubnetipnum
        end

        def deserialize(params)
          @SecondaryZone = params['SecondaryZone']
          @SecondarySubnet = params['SecondarySubnet']
          @UserIpNum = params['UserIpNum']
          @SecondaryUserSubnetIPNum = params['SecondaryUserSubnetIPNum']
        end
      end

      # 服务详细信息描述。
      class ServiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 服务名称
        # @type Name: String
        # @param Version: 服务的版本
        # @type Version: String

        attr_accessor :Name, :Version

        def initialize(name=nil, version=nil)
          @Name = name
          @Version = version
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
        end
      end

      # 表权限
      class TablePrivilegeInfo < TencentCloud::Common::AbstractModel
        # @param TableName: 表名称
        # @type TableName: String
        # @param TablePrivileges: 表权限列表 SELECT、INSERT_ALL、ALTER、TRUNCATE、DROP_TABLE 查询、插入、设置、清空表、删除表
        # @type TablePrivileges: Array

        attr_accessor :TableName, :TablePrivileges

        def initialize(tablename=nil, tableprivileges=nil)
          @TableName = tablename
          @TablePrivileges = tableprivileges
        end

        def deserialize(params)
          @TableName = params['TableName']
          @TablePrivileges = params['TablePrivileges']
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

