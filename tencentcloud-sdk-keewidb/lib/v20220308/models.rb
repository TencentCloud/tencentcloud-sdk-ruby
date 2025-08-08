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
  module Keewidb
    module V20220308
      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称：keewidb。
        # @type Product: String
        # @param SecurityGroupId: 要绑定的安全组 ID，类似sg-efil7***。
        # @type SecurityGroupId: String
        # @param InstanceIds: 实例 ID，格式如：kee-c1nl9***，支持指定多个实例。
        # @type InstanceIds: Array

        attr_accessor :Product, :SecurityGroupId, :InstanceIds

        def initialize(product=nil, securitygroupid=nil, instanceids=nil)
          @Product = product
          @SecurityGroupId = securitygroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Product = params['Product']
          @SecurityGroupId = params['SecurityGroupId']
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

      # 实例的备份信息
      class BackupInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 备份开始时间。
        # @type StartTime: String
        # @param BackupId: 备份 ID。
        # @type BackupId: String
        # @param BackupType: 备份类型。<ul><li>1：手动备份，指根据业务运维排障需求，立即执行备份任务的操作。</li> <li>0：自动备份，指根据自动备份策略定时自动发起的备份任务。</li><li>2：生成RDB，指根据业务需求，发起的生成文件为rdb类型的备份任务。</li></ul>
        # @type BackupType: String
        # @param Remark: 备份的备注信息.
        # @type Remark: String
        # @param Status: 备份状态。  <ul><li>1：备份任务被其它流程锁定。</li><li>2：备份正常，没有被任何流程锁定。</li> <li>-1：备份已过期。</li><li>3：备份正在被导出。</li> <li>4：备份导出成功。</li></ul>
        # @type Status: Integer
        # @param Locked: 备份是否被锁定。<ul><li>0：未被锁定。</li><li>1：已被锁定。</li></ul>
        # @type Locked: Integer

        attr_accessor :StartTime, :BackupId, :BackupType, :Remark, :Status, :Locked

        def initialize(starttime=nil, backupid=nil, backuptype=nil, remark=nil, status=nil, locked=nil)
          @StartTime = starttime
          @BackupId = backupid
          @BackupType = backuptype
          @Remark = remark
          @Status = status
          @Locked = locked
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @BackupId = params['BackupId']
          @BackupType = params['BackupType']
          @Remark = params['Remark']
          @Status = params['Status']
          @Locked = params['Locked']
        end
      end

      # 实例增量备份信息
      class BinlogInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 备份开始时间。
        # @type StartTime: String
        # @param EndTime: 备份结束时间。
        # @type EndTime: String
        # @param BackupId: 备份 ID。
        # @type BackupId: String
        # @param Filename: 备份文件名。
        # @type Filename: String
        # @param FileSize: 备份文件大小，单位：Byte。
        # @type FileSize: Integer

        attr_accessor :StartTime, :EndTime, :BackupId, :Filename, :FileSize

        def initialize(starttime=nil, endtime=nil, backupid=nil, filename=nil, filesize=nil)
          @StartTime = starttime
          @EndTime = endtime
          @BackupId = backupid
          @Filename = filename
          @FileSize = filesize
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BackupId = params['BackupId']
          @Filename = params['Filename']
          @FileSize = params['FileSize']
        end
      end

      # ChangeInstanceMaster请求参数结构体
      class ChangeInstanceMasterRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param NodeId: 副本节点 ID。
        # @type NodeId: String

        attr_accessor :InstanceId, :NodeId

        def initialize(instanceid=nil, nodeid=nil)
          @InstanceId = instanceid
          @NodeId = nodeid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeId = params['NodeId']
        end
      end

      # ChangeInstanceMaster返回参数结构体
      class ChangeInstanceMasterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务 ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CleanUpInstance请求参数结构体
      class CleanUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CleanUpInstance返回参数结构体
      class CleanUpInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ClearInstance请求参数结构体
      class ClearInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubhg****。
        # @type InstanceId: String
        # @param Password: 实例访问密码。
        # 实例为免密访问，则无需设置该参数。
        # @type Password: String

        attr_accessor :InstanceId, :Password

        def initialize(instanceid=nil, password=nil)
          @InstanceId = instanceid
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Password = params['Password']
        end
      end

      # ClearInstance返回参数结构体
      class ClearInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackupManually请求参数结构体
      class CreateBackupManuallyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例 ID，可通过 DescribeInstance接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param Remark: 本次备份的备注信息。
        # @type Remark: String
        # @param StorageDays: 备份文件保存天数。0代表指定默认保留时间
        # @type StorageDays: Integer

        attr_accessor :InstanceId, :Remark, :StorageDays

        def initialize(instanceid=nil, remark=nil, storagedays=nil)
          @InstanceId = instanceid
          @Remark = remark
          @StorageDays = storagedays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Remark = params['Remark']
          @StorageDays = params['StorageDays']
        end
      end

      # CreateBackupManually返回参数结构体
      class CreateBackupManuallyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstances请求参数结构体
      class CreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TypeId: 产品版本。
        # 14：当前仅支持混合存储版。
        # @type TypeId: Integer
        # @param UniqVpcId: 私有网络唯一ID。
        # 请登录控制台在私有网络列表查询，如：vpc-azlk3***。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有网络所属子网唯一ID。
        # 请登录控制台在私有网络列表查询，如：subnet-8abje***。
        # @type UniqSubnetId: String
        # @param BillingMode: 计费模式。<ul><li>0：按量计费。</li><li>1：包年包月。</li></ul>
        # @type BillingMode: Integer
        # @param GoodsNum: 实例数量，单次最大购买数量以查询产品售卖规格返回的数量为准。
        # @type GoodsNum: Integer
        # @param Period: 选择包年包月计费模式（BillingMode 设置为1）时，您需要选择购买实例的时长。单位：月，取值范围 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。按量计费（BillingMode 设置为0）实例该参数设置为1即可。
        # @type Period: Integer
        # @param ShardNum: 分片数量，支持选择3、5、6、8、9、10、12、15、16、18、20、21、24、25、27、30、32、33、35、36、39、40、42、45、48、50、51、54、55、56、57、60、63、64分片。
        # @type ShardNum: Integer
        # @param ReplicasNum: 副本数。当前仅支持设置1个副本节点，即每一个分片仅包含1个主节点与1个副本节点，数据主从实时热备。
        # @type ReplicasNum: Integer
        # @param MachineMemory: 实例内存容量，单位：GB。
        # KeeWiDB 内存容量<b>MachineMemory</b>与持久内存容量<b>MemSize</b>为固定搭配，即2GB内存，固定分配8GB的持久内存，不可选择。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。
        # @type MachineMemory: Integer
        # @param ZoneId: 实例所属的可用区ID。<ul><li>具体取值，请参见[地域和可用区](https://cloud.tencent.com/document/product/239/4106)获取。</li><li>参数<b>ZoneId</b>和<b>ZoneName</b>至少配置其中一个。</li></ul>
        # @type ZoneId: Integer
        # @param ZoneName: 实例所属的可用区名称。<ul><li>具体取值，请参见[地域和可用区](https://cloud.tencent.com/document/product/239/4106)获取。</li><li>参数<b>ZoneId</b>和<b>ZoneName</b>至少配置其中一个。</li></ul>
        # @type ZoneName: String
        # @param InstanceName: 创建实例的名称。
        # 仅支持长度小于60的中文、英文或者数字，短划线"-"、下划线"_"。
        # @type InstanceName: String
        # @param NoAuth: 指明创建的实例是否需要支持免密访问。<ul><li>true：免密实例。</li><li>false：非免密实例，默认为非免密实例。此时，需要设置访问密码。</li></ul>
        # @type NoAuth: Boolean
        # @param Password: 实例访问密码。<ul><li>当参数<b>NoAuth</b>为<b>true</b>时，Password为无需设置，否则Password为必填参数。</li>
        # <li>密码复杂度要求：<ul><li>8-30个字符。</li><li>至少包含小写字母、大写字母、数字和字符 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的2种。</li><li>不能以"/"开头。</li></ul></li></ul>
        # @type Password: String
        # @param VPort: 自定义端口。默认为6379，范围[1024,65535]。
        # @type VPort: Integer
        # @param AutoRenew: 包年包月计费的续费模式。<ul><li>0：默认状态，指手动续费。</li><li>1：自动续费。</li><li>2：到期不再续费。</li></ul>
        # @type AutoRenew: Integer
        # @param SecurityGroupIdList: 给实例设置安全组 ID 数组。
        # @type SecurityGroupIdList: Array
        # @param ResourceTags: 给实例绑定标签。
        # @type ResourceTags: Array
        # @param MemSize: 混合存储版，单分片持久化内存容量，单位：GB。
        # KeeWiDB 内存容量<b>MachineMemory</b>与持久内存容量<b>MemSize</b>为固定搭配，即2GB内存，固定分配8GB的持久内存，不可选择。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。
        # @type MemSize: Integer
        # @param DiskSize: 每个分片硬盘的容量。单位：GB。
        # 每一缓存分片容量，对应的磁盘容量范围不同。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。
        # @type DiskSize: Integer
        # @param MachineCpu: 计算 CPU 核数，可忽略不传。CPU 核数与内存为固定搭配，具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。
        # @type MachineCpu: Integer
        # @param ProjectId: 项目id，取值以用户账户>用户账户相关接口查询>项目列表返回的projectId为准。
        # @type ProjectId: Integer
        # @param Compression: 数据压缩开关。<ul><li>ON：开启，默认开启压缩。</li><li>OFF：关闭。</li></ul>
        # @type Compression: String

        attr_accessor :TypeId, :UniqVpcId, :UniqSubnetId, :BillingMode, :GoodsNum, :Period, :ShardNum, :ReplicasNum, :MachineMemory, :ZoneId, :ZoneName, :InstanceName, :NoAuth, :Password, :VPort, :AutoRenew, :SecurityGroupIdList, :ResourceTags, :MemSize, :DiskSize, :MachineCpu, :ProjectId, :Compression

        def initialize(typeid=nil, uniqvpcid=nil, uniqsubnetid=nil, billingmode=nil, goodsnum=nil, period=nil, shardnum=nil, replicasnum=nil, machinememory=nil, zoneid=nil, zonename=nil, instancename=nil, noauth=nil, password=nil, vport=nil, autorenew=nil, securitygroupidlist=nil, resourcetags=nil, memsize=nil, disksize=nil, machinecpu=nil, projectid=nil, compression=nil)
          @TypeId = typeid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @BillingMode = billingmode
          @GoodsNum = goodsnum
          @Period = period
          @ShardNum = shardnum
          @ReplicasNum = replicasnum
          @MachineMemory = machinememory
          @ZoneId = zoneid
          @ZoneName = zonename
          @InstanceName = instancename
          @NoAuth = noauth
          @Password = password
          @VPort = vport
          @AutoRenew = autorenew
          @SecurityGroupIdList = securitygroupidlist
          @ResourceTags = resourcetags
          @MemSize = memsize
          @DiskSize = disksize
          @MachineCpu = machinecpu
          @ProjectId = projectid
          @Compression = compression
        end

        def deserialize(params)
          @TypeId = params['TypeId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @BillingMode = params['BillingMode']
          @GoodsNum = params['GoodsNum']
          @Period = params['Period']
          @ShardNum = params['ShardNum']
          @ReplicasNum = params['ReplicasNum']
          @MachineMemory = params['MachineMemory']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @InstanceName = params['InstanceName']
          @NoAuth = params['NoAuth']
          @Password = params['Password']
          @VPort = params['VPort']
          @AutoRenew = params['AutoRenew']
          @SecurityGroupIdList = params['SecurityGroupIdList']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @MemSize = params['MemSize']
          @DiskSize = params['DiskSize']
          @MachineCpu = params['MachineCpu']
          @ProjectId = params['ProjectId']
          @Compression = params['Compression']
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 交易 ID。
        # @type DealId: String
        # @param InstanceIds: 实例 ID 。
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

      # DescribeAutoBackupConfig请求参数结构体
      class DescribeAutoBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAutoBackupConfig返回参数结构体
      class DescribeAutoBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param WeekDays: 自动备份的周期。包括：Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        # @type WeekDays: Array
        # @param TimePeriod: 自动备份时间段。
        # @type TimePeriod: String
        # @param BackupStorageDays: 全量备份文件保存天数。
        # @type BackupStorageDays: Integer
        # @param BinlogStorageDays: 增量备份文件保存天数。
        # @type BinlogStorageDays: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WeekDays, :TimePeriod, :BackupStorageDays, :BinlogStorageDays, :RequestId

        def initialize(weekdays=nil, timeperiod=nil, backupstoragedays=nil, binlogstoragedays=nil, requestid=nil)
          @WeekDays = weekdays
          @TimePeriod = timeperiod
          @BackupStorageDays = backupstoragedays
          @BinlogStorageDays = binlogstoragedays
          @RequestId = requestid
        end

        def deserialize(params)
          @WeekDays = params['WeekDays']
          @TimePeriod = params['TimePeriod']
          @BackupStorageDays = params['BackupStorageDays']
          @BinlogStorageDays = params['BinlogStorageDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConnectionConfig请求参数结构体
      class DescribeConnectionConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeConnectionConfig返回参数结构体
      class DescribeConnectionConfigResponse < TencentCloud::Common::AbstractModel
        # @param InNetLimit: 单分片入流量带宽限制，单位：MB。
        # @type InNetLimit: Integer
        # @param OutNetLimit: 单分片出流量带宽限制，单位：MB。
        # @type OutNetLimit: Integer
        # @param ClientLimit: 实例当前单分片连接数限制。
        # @type ClientLimit: Integer
        # @param ClientLimitMin: 单分片连接数限制最小值。
        # @type ClientLimitMin: Integer
        # @param ClientLimitMax: 单分片连接数限制最大值。
        # @type ClientLimitMax: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InNetLimit, :OutNetLimit, :ClientLimit, :ClientLimitMin, :ClientLimitMax, :RequestId

        def initialize(innetlimit=nil, outnetlimit=nil, clientlimit=nil, clientlimitmin=nil, clientlimitmax=nil, requestid=nil)
          @InNetLimit = innetlimit
          @OutNetLimit = outnetlimit
          @ClientLimit = clientlimit
          @ClientLimitMin = clientlimitmin
          @ClientLimitMax = clientlimitmax
          @RequestId = requestid
        end

        def deserialize(params)
          @InNetLimit = params['InNetLimit']
          @OutNetLimit = params['OutNetLimit']
          @ClientLimit = params['ClientLimit']
          @ClientLimitMin = params['ClientLimitMin']
          @ClientLimitMax = params['ClientLimitMax']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称：keewidb。
        # @type Product: String
        # @param InstanceId: 实例ID，格式如：kee-c1nl9***。
        # @type InstanceId: String

        attr_accessor :Product, :InstanceId

        def initialize(product=nil, instanceid=nil)
          @Product = product
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组规则。
        # @type Groups: Array
        # @param VIP: 安全组生效内网地址。
        # @type VIP: String
        # @param VPort: 安全组生效内网端口。
        # @type VPort: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :VIP, :VPort, :RequestId

        def initialize(groups=nil, vip=nil, vport=nil, requestid=nil)
          @Groups = groups
          @VIP = vip
          @VPort = vport
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
          @VIP = params['VIP']
          @VPort = params['VPort']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceBackups请求参数结构体
      class DescribeInstanceBackupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例ID，可通过 DescribeInstance 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param Limit: 每页输出的备份列表大小，即每页输出的备份文件的数量，默认值20，取值范围为[1,100]。
        # @type Limit: Integer
        # @param Offset: 备份列表分页偏移量，取Limit整数倍。
        # 计算公式为offset=limit*(页码-1)。例如 limit=10，第1页offset就为0，第2页offset就为10，依次类推。
        # @type Offset: Integer
        # @param BeginTime: 查询备份文件的开始时间，格式如：2017-02-08 16:46:34。查询实例在 [BeginTime, EndTime] 时间段内的备份列表。
        # @type BeginTime: String
        # @param EndTime: 查询备份文件的结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内的备份列表。
        # @type EndTime: String
        # @param Status: 备份任务状态。<ul><li>1：备份在流程中。</li><li>2：备份正常。</li><li>3：备份转RDB文件处理中。</li><li>4：已完成RDB转换。</li><li>-1：备份已过期。</li><li>-2：备份已删除。</li></ul>
        # @type Status: Array

        attr_accessor :InstanceId, :Limit, :Offset, :BeginTime, :EndTime, :Status

        def initialize(instanceid=nil, limit=nil, offset=nil, begintime=nil, endtime=nil, status=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @BeginTime = begintime
          @EndTime = endtime
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
        end
      end

      # DescribeInstanceBackups返回参数结构体
      class DescribeInstanceBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份文件总数。
        # @type TotalCount: Integer
        # @param BackupSet: 废弃字段。
        # @type BackupSet: Array
        # @param BackupRecord: 实例备份信息列表。
        # @type BackupRecord: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupSet, :BackupRecord, :RequestId
        extend Gem::Deprecate
        deprecate :BackupSet, :none, 2025, 8
        deprecate :BackupSet=, :none, 2025, 8

        def initialize(totalcount=nil, backupset=nil, backuprecord=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupSet = backupset
          @BackupRecord = backuprecord
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupSet'].nil?
            @BackupSet = []
            params['BackupSet'].each do |i|
              binloginfo_tmp = BinlogInfo.new
              binloginfo_tmp.deserialize(i)
              @BackupSet << binloginfo_tmp
            end
          end
          unless params['BackupRecord'].nil?
            @BackupRecord = []
            params['BackupRecord'].each do |i|
              backupinfo_tmp = BackupInfo.new
              backupinfo_tmp.deserialize(i)
              @BackupRecord << backupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceBinlogs请求参数结构体
      class DescribeInstanceBinlogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Limit: 每页输出备份列表大小，默认大小20。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。
        # @type Offset: Integer
        # @param BeginTime: 开始时间，格式如：2017-02-08 16:46:34。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        # @type EndTime: String

        attr_accessor :InstanceId, :Limit, :Offset, :BeginTime, :EndTime

        def initialize(instanceid=nil, limit=nil, offset=nil, begintime=nil, endtime=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeInstanceBinlogs返回参数结构体
      class DescribeInstanceBinlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份总数
        # @type TotalCount: Integer
        # @param BackupSet: 实例的备份信息数组
        # @type BackupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupSet, :RequestId

        def initialize(totalcount=nil, backupset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupSet = backupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupSet'].nil?
            @BackupSet = []
            params['BackupSet'].each do |i|
              binloginfo_tmp = BinlogInfo.new
              binloginfo_tmp.deserialize(i)
              @BackupSet << binloginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceDealDetail请求参数结构体
      class DescribeInstanceDealDetailRequest < TencentCloud::Common::AbstractModel
        # @param DealIds: 订单交易ID数组，即 [CreateInstances](https://cloud.tencent.com/document/api/1520/86207) 的输出参数DealId。
        # @type DealIds: Array

        attr_accessor :DealIds

        def initialize(dealids=nil)
          @DealIds = dealids
        end

        def deserialize(params)
          @DealIds = params['DealIds']
        end
      end

      # DescribeInstanceDealDetail返回参数结构体
      class DescribeInstanceDealDetailResponse < TencentCloud::Common::AbstractModel
        # @param DealDetails: 订单详细信息
        # @type DealDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealDetails, :RequestId

        def initialize(dealdetails=nil, requestid=nil)
          @DealDetails = dealdetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DealDetails'].nil?
            @DealDetails = []
            params['DealDetails'].each do |i|
              tradedealdetail_tmp = TradeDealDetail.new
              tradedealdetail_tmp.deserialize(i)
              @DealDetails << tradedealdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodeInfo请求参数结构体
      class DescribeInstanceNodeInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param Limit: 每页输出的节点信息大小。默认为 20。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
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

      # DescribeInstanceNodeInfo返回参数结构体
      class DescribeInstanceNodeInfoResponse < TencentCloud::Common::AbstractModel
        # @param ProxyCount: Proxy 节点数量。
        # @type ProxyCount: Integer
        # @param Proxy: Proxy 节点信息。
        # @type Proxy: Array
        # @param RedisCount: Redis 节点数量。该参数仅为产品兼容性而保留，并不具有实际意义，可忽略。
        # @type RedisCount: Integer
        # @param Redis: Redis 节点信息。该参数仅为产品兼容性而保留，并不具有实际意义，可忽略。
        # @type Redis: Array
        # @param TendisCount: Tendis 节点数量。该参数仅为产品兼容性而保留，并不具有实际意义，可忽略。
        # @type TendisCount: Integer
        # @param Tendis: Tendis 节点信息。该参数仅为产品兼容性而保留，并不具有实际意义，可忽略。
        # @type Tendis: Array
        # @param KeeWiDBCount: KeewiDB 节点数量。
        # @type KeeWiDBCount: Integer
        # @param KeeWiDB: KeewiDB 节点信息。
        # @type KeeWiDB: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyCount, :Proxy, :RedisCount, :Redis, :TendisCount, :Tendis, :KeeWiDBCount, :KeeWiDB, :RequestId

        def initialize(proxycount=nil, proxy=nil, rediscount=nil, redis=nil, tendiscount=nil, tendis=nil, keewidbcount=nil, keewidb=nil, requestid=nil)
          @ProxyCount = proxycount
          @Proxy = proxy
          @RedisCount = rediscount
          @Redis = redis
          @TendisCount = tendiscount
          @Tendis = tendis
          @KeeWiDBCount = keewidbcount
          @KeeWiDB = keewidb
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyCount = params['ProxyCount']
          unless params['Proxy'].nil?
            @Proxy = []
            params['Proxy'].each do |i|
              proxynodeinfo_tmp = ProxyNodeInfo.new
              proxynodeinfo_tmp.deserialize(i)
              @Proxy << proxynodeinfo_tmp
            end
          end
          @RedisCount = params['RedisCount']
          unless params['Redis'].nil?
            @Redis = []
            params['Redis'].each do |i|
              redisnodeinfo_tmp = RedisNodeInfo.new
              redisnodeinfo_tmp.deserialize(i)
              @Redis << redisnodeinfo_tmp
            end
          end
          @TendisCount = params['TendisCount']
          unless params['Tendis'].nil?
            @Tendis = []
            params['Tendis'].each do |i|
              instancenodeinfo_tmp = InstanceNodeInfo.new
              instancenodeinfo_tmp.deserialize(i)
              @Tendis << instancenodeinfo_tmp
            end
          end
          @KeeWiDBCount = params['KeeWiDBCount']
          unless params['KeeWiDB'].nil?
            @KeeWiDB = []
            params['KeeWiDB'].each do |i|
              instancenodeinfo_tmp = InstanceNodeInfo.new
              instancenodeinfo_tmp.deserialize(i)
              @KeeWiDB << instancenodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParamRecords请求参数结构体
      class DescribeInstanceParamRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param Limit: 每页输出的参数列表大小。默认为 20，最多输出100条。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
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

      # DescribeInstanceParamRecords返回参数结构体
      class DescribeInstanceParamRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 修改历史记录总数。
        # @type TotalCount: Integer
        # @param InstanceParamHistory: 修改历史记录信息。
        # @type InstanceParamHistory: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceParamHistory, :RequestId

        def initialize(totalcount=nil, instanceparamhistory=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceParamHistory = instanceparamhistory
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceParamHistory'].nil?
            @InstanceParamHistory = []
            params['InstanceParamHistory'].each do |i|
              instanceparamhistory_tmp = InstanceParamHistory.new
              instanceparamhistory_tmp.deserialize(i)
              @InstanceParamHistory << instanceparamhistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
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
        # @param TotalCount: 实例参数总数量。
        # @type TotalCount: Integer
        # @param InstanceEnumParam: 实例枚举类型参数数组。
        # @type InstanceEnumParam: Array
        # @param InstanceIntegerParam: 实例整型参数数组。
        # @type InstanceIntegerParam: Array
        # @param InstanceTextParam: 实例字符型参数数组。
        # @type InstanceTextParam: Array
        # @param InstanceMultiParam: 实例多选项型参数数组。
        # @type InstanceMultiParam: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceEnumParam, :InstanceIntegerParam, :InstanceTextParam, :InstanceMultiParam, :RequestId

        def initialize(totalcount=nil, instanceenumparam=nil, instanceintegerparam=nil, instancetextparam=nil, instancemultiparam=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceEnumParam = instanceenumparam
          @InstanceIntegerParam = instanceintegerparam
          @InstanceTextParam = instancetextparam
          @InstanceMultiParam = instancemultiparam
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceReplicas请求参数结构体
      class DescribeInstanceReplicasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceReplicas返回参数结构体
      class DescribeInstanceReplicasResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例所有节点数量，包括主节点、副本节点。
        # @type TotalCount: Integer
        # @param ReplicaGroups: 实例节点信息。
        # @type ReplicaGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ReplicaGroups, :RequestId

        def initialize(totalcount=nil, replicagroups=nil, requestid=nil)
          @TotalCount = totalcount
          @ReplicaGroups = replicagroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ReplicaGroups'].nil?
            @ReplicaGroups = []
            params['ReplicaGroups'].each do |i|
              replicagroup_tmp = ReplicaGroup.new
              replicagroup_tmp.deserialize(i)
              @ReplicaGroups << replicagroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页输出的实例列表的大小，即每页输出的实例数量，默认值20，取值范围为[1,1000]。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。
        # 计算公式为offset=limit*(页码-1)。例如 limit=10，第1页offset就为0，第2页offset就为10，依次类推。
        # @type Offset: Integer
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param OrderBy: 排序依据。枚举范围如下所示。 <ul><li>projectId：实例按照项目ID排序。</li><li>createtime：实例按照创建时间排序。</li><li>instancename：实例按照实例名称排序。</li><li>type：实例按照类型排序。</li><li>curDeadline：实例按照到期时间排序。</li></ul>
        # @type OrderBy: String
        # @param OrderType: 排序方式。<ul><li>1：倒序。默认为倒序。</li><li>0：顺序。</li></ul>
        # @type OrderType: Integer
        # @param VpcIds: 私有网络ID数组。数组下标从0开始，如果不传则默认选择基础网络，如：47525
        # @type VpcIds: Array
        # @param SubnetIds: 子网ID数组，数组下标从0开始，如：56854
        # @type SubnetIds: Array
        # @param ProjectIds: 项目ID 组成的数组，数组下标从0开始
        # @type ProjectIds: Array
        # @param SearchKey: 查找关键字，可输入实例的ID或者实例名称。
        # @type SearchKey: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param UniqVpcIds: 私有网络ID数组，数组下标从0开始，如果不传则默认选择基础网络，如：vpc-sad23jfdfk
        # @type UniqVpcIds: Array
        # @param UniqSubnetIds: 子网ID数组，数组下标从0开始，如：subnet-fdj24n34j2
        # @type UniqSubnetIds: Array
        # @param Status: 实例状态。<ul><li>0：待初始化。</li><li>1：流程中。</li><li>2：运行中。</li><li>-2：已隔离。</li><li>-3：待删除。</li></ul>
        # @type Status: Array
        # @param AutoRenew: 续费模式。- 0：手动续费。- 1：自动续费。- 2：到期不再续费。
        # @type AutoRenew: Array
        # @param BillingMode: 计费模式。<ul><li>postpaid：按量计费。</li><li>prepaid：包年包月。</li></ul>
        # @type BillingMode: String
        # @param Type: 实例类型。<ul><li>13：标准版。</li><li>14：集群版。</li></ul>
        # @type Type: Integer
        # @param SearchKeys: 搜索关键词：支持实例 ID、实例名称、私有网络IP地址。
        # @type SearchKeys: Array
        # @param TypeList: 内部参数，用户可忽略。
        # @type TypeList: Array
        # @param MonitorVersion: 内部参数，用户可忽略。
        # @type MonitorVersion: String
        # @param InstanceTags: 废弃字段。请使用TagList传参。
        # @type InstanceTags: :class:`Tencentcloud::Keewidb.v20220308.models.InstanceTagInfo`
        # @param TagKeys: 根据标签的 Key 筛选资源，该参数不配置或者数组设置为空值，则不根据标签Key进行过滤。
        # @type TagKeys: Array
        # @param TagList: 根据标签的 Key 和 Value 筛选资源。该参数不配置或者数组设置为空值，则不根据标签进行过滤。
        # @type TagList: Array

        attr_accessor :Limit, :Offset, :InstanceId, :OrderBy, :OrderType, :VpcIds, :SubnetIds, :ProjectIds, :SearchKey, :InstanceName, :UniqVpcIds, :UniqSubnetIds, :Status, :AutoRenew, :BillingMode, :Type, :SearchKeys, :TypeList, :MonitorVersion, :InstanceTags, :TagKeys, :TagList
        extend Gem::Deprecate
        deprecate :InstanceTags, :none, 2025, 8
        deprecate :InstanceTags=, :none, 2025, 8

        def initialize(limit=nil, offset=nil, instanceid=nil, orderby=nil, ordertype=nil, vpcids=nil, subnetids=nil, projectids=nil, searchkey=nil, instancename=nil, uniqvpcids=nil, uniqsubnetids=nil, status=nil, autorenew=nil, billingmode=nil, type=nil, searchkeys=nil, typelist=nil, monitorversion=nil, instancetags=nil, tagkeys=nil, taglist=nil)
          @Limit = limit
          @Offset = offset
          @InstanceId = instanceid
          @OrderBy = orderby
          @OrderType = ordertype
          @VpcIds = vpcids
          @SubnetIds = subnetids
          @ProjectIds = projectids
          @SearchKey = searchkey
          @InstanceName = instancename
          @UniqVpcIds = uniqvpcids
          @UniqSubnetIds = uniqsubnetids
          @Status = status
          @AutoRenew = autorenew
          @BillingMode = billingmode
          @Type = type
          @SearchKeys = searchkeys
          @TypeList = typelist
          @MonitorVersion = monitorversion
          @InstanceTags = instancetags
          @TagKeys = tagkeys
          @TagList = taglist
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceId = params['InstanceId']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @VpcIds = params['VpcIds']
          @SubnetIds = params['SubnetIds']
          @ProjectIds = params['ProjectIds']
          @SearchKey = params['SearchKey']
          @InstanceName = params['InstanceName']
          @UniqVpcIds = params['UniqVpcIds']
          @UniqSubnetIds = params['UniqSubnetIds']
          @Status = params['Status']
          @AutoRenew = params['AutoRenew']
          @BillingMode = params['BillingMode']
          @Type = params['Type']
          @SearchKeys = params['SearchKeys']
          @TypeList = params['TypeList']
          @MonitorVersion = params['MonitorVersion']
          unless params['InstanceTags'].nil?
            @InstanceTags = InstanceTagInfo.new
            @InstanceTags.deserialize(params['InstanceTags'])
          end
          @TagKeys = params['TagKeys']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @TagList << instancetaginfo_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例数
        # @type TotalCount: Integer
        # @param InstanceSet: 实例详细信息列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId

        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstanceSet << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintenanceWindow请求参数结构体
      class DescribeMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubhg***。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMaintenanceWindow返回参数结构体
      class DescribeMaintenanceWindowResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 维护时间窗起始时间，如：03:00。
        # @type StartTime: String
        # @param EndTime: 维护时间窗结束时间，如：06:00。
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :EndTime, :RequestId

        def initialize(starttime=nil, endtime=nil, requestid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductInfo请求参数结构体
      class DescribeProductInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProductInfo返回参数结构体
      class DescribeProductInfoResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 地域售卖信息
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId

        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regionconf_tmp = RegionConf.new
              regionconf_tmp.deserialize(i)
              @RegionSet << regionconf_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称。该产品固定为 keewidb。
        # @type Product: String
        # @param ProjectId: 项目 ID。
        # 登录 [账号中心](https://console.cloud.tencent.com/developer)，在<b>项目管理</b>中可获取项目 ID。
        # @type ProjectId: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param Limit: 每页安全组的数量限制。默认为 20，最多输出100条。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键词，支持根据安全组 ID 或者安全组名称搜索。
        # @type SearchKey: String

        attr_accessor :Product, :ProjectId, :Offset, :Limit, :SearchKey

        def initialize(product=nil, projectid=nil, offset=nil, limit=nil, searchkey=nil)
          @Product = product
          @ProjectId = projectid
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Product = params['Product']
          @ProjectId = params['ProjectId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeProjectSecurityGroups返回参数结构体
      class DescribeProjectSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组规则。
        # @type Groups: Array
        # @param Total: 符合条件的安全组总数量。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :Total, :RequestId

        def initialize(groups=nil, total=nil, requestid=nil)
          @Groups = groups
          @Total = total
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
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxySlowLog请求参数结构体
      class DescribeProxySlowLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubhgouj
        # @type InstanceId: String
        # @param BeginTime: 开始时间。
        # @type BeginTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MinQueryTime: 慢查询平均执行时间阈值。<ul><li>单位：毫秒。</li><li>取值范围：10、20、30、40、50。</li></ul>
        # @type MinQueryTime: Integer
        # @param Limit: 每个页面大小，即每个页面输出慢日志的数量。取值范围为：10、20、30、40、50，默认为 20。
        # @type Limit: Integer
        # @param Offset: 页面偏移量，取Limit整数倍，计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer

        attr_accessor :InstanceId, :BeginTime, :EndTime, :MinQueryTime, :Limit, :Offset

        def initialize(instanceid=nil, begintime=nil, endtime=nil, minquerytime=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @BeginTime = begintime
          @EndTime = endtime
          @MinQueryTime = minquerytime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @MinQueryTime = params['MinQueryTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeProxySlowLog返回参数结构体
      class DescribeProxySlowLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 慢查询总数。
        # @type TotalCount: Integer
        # @param InstanceProxySlowLogDetail: 慢查询详情。
        # @type InstanceProxySlowLogDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceProxySlowLogDetail, :RequestId

        def initialize(totalcount=nil, instanceproxyslowlogdetail=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceProxySlowLogDetail = instanceproxyslowlogdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceProxySlowLogDetail'].nil?
            @InstanceProxySlowLogDetail = []
            params['InstanceProxySlowLogDetail'].each do |i|
              instanceproxyslowlogdetail_tmp = InstanceProxySlowlogDetail.new
              instanceproxyslowlogdetail_tmp.deserialize(i)
              @InstanceProxySlowLogDetail << instanceproxyslowlogdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInfo请求参数结构体
      class DescribeTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskInfo返回参数结构体
      class DescribeTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。<ul><li>preparing：待执行。</li><li>running：执行中。</li><li>succeed：成功。</li><li>failed：失败。</li><li>error：执行出错。</li></ul>
        # @type Status: String
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param TaskType: 任务类型。
        # @type TaskType: String
        # @param InstanceId: 实例的ID。
        # @type InstanceId: String
        # @param TaskMessage: 任务信息，错误时显示错误信息。执行中与成功则为空值。
        # @type TaskMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :StartTime, :TaskType, :InstanceId, :TaskMessage, :RequestId

        def initialize(status=nil, starttime=nil, tasktype=nil, instanceid=nil, taskmessage=nil, requestid=nil)
          @Status = status
          @StartTime = starttime
          @TaskType = tasktype
          @InstanceId = instanceid
          @TaskMessage = taskmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @StartTime = params['StartTime']
          @TaskType = params['TaskType']
          @InstanceId = params['InstanceId']
          @TaskMessage = params['TaskMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskList请求参数结构体
      class DescribeTaskListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param Limit: 每页输出的任务列表大小。默认为 20，最多输出100条。
        # @type Limit: Integer
        # @param Offset: Offset：分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param ProjectIds: 项目ID。
        # @type ProjectIds: Array
        # @param TaskTypes: 任务类型。可设置为：FLOW_CREATE、FLOW_SETPWD、FLOW_CLOSE等。
        # @type TaskTypes: Array
        # @param BeginTime: 起始时间。
        # @type BeginTime: String
        # @param EndTime: 终止时间。
        # @type EndTime: String
        # @param TaskStatus: 任务状态。
        # @type TaskStatus: Array

        attr_accessor :InstanceId, :InstanceName, :Limit, :Offset, :ProjectIds, :TaskTypes, :BeginTime, :EndTime, :TaskStatus

        def initialize(instanceid=nil, instancename=nil, limit=nil, offset=nil, projectids=nil, tasktypes=nil, begintime=nil, endtime=nil, taskstatus=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Limit = limit
          @Offset = offset
          @ProjectIds = projectids
          @TaskTypes = tasktypes
          @BeginTime = begintime
          @EndTime = endtime
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ProjectIds = params['ProjectIds']
          @TaskTypes = params['TaskTypes']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TaskStatus = params['TaskStatus']
        end
      end

      # DescribeTaskList返回参数结构体
      class DescribeTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数。
        # @type TotalCount: Integer
        # @param Tasks: 任务详细信息列表。
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
              taskinfodetail_tmp = TaskInfoDetail.new
              taskinfodetail_tmp.deserialize(i)
              @Tasks << taskinfodetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTendisSlowLog请求参数结构体
      class DescribeTendisSlowLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param BeginTime: 开始时间。
        # @type BeginTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MinQueryTime: 慢查询平均执行时间阈值。<ul><li>单位：毫秒。</li><li>取值范围：10、20、30、40、50。</li></ul>
        # @type MinQueryTime: Integer
        # @param Limit: 每个页面大小，即每个页面输出慢日志的数量。取值范围为：10、20、30、40、50。默认为 20。
        # @type Limit: Integer
        # @param Offset: 页面偏移量，取Limit整数倍，计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer

        attr_accessor :InstanceId, :BeginTime, :EndTime, :MinQueryTime, :Limit, :Offset

        def initialize(instanceid=nil, begintime=nil, endtime=nil, minquerytime=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @BeginTime = begintime
          @EndTime = endtime
          @MinQueryTime = minquerytime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @MinQueryTime = params['MinQueryTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTendisSlowLog返回参数结构体
      class DescribeTendisSlowLogResponse < TencentCloud::Common::AbstractModel
        # @param TendisSlowLogDetail: 慢查询详情。
        # @type TendisSlowLogDetail: Array
        # @param TotalCount: 慢查询总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TendisSlowLogDetail, :TotalCount, :RequestId

        def initialize(tendisslowlogdetail=nil, totalcount=nil, requestid=nil)
          @TendisSlowLogDetail = tendisslowlogdetail
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TendisSlowLogDetail'].nil?
            @TendisSlowLogDetail = []
            params['TendisSlowLogDetail'].each do |i|
              tendisslowlogdetail_tmp = TendisSlowLogDetail.new
              tendisslowlogdetail_tmp.deserialize(i)
              @TendisSlowLogDetail << tendisslowlogdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DestroyPostpaidInstance请求参数结构体
      class DestroyPostpaidInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyPostpaidInstance返回参数结构体
      class DestroyPostpaidInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DestroyPrepaidInstance请求参数结构体
      class DestroyPrepaidInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyPrepaidInstance返回参数结构体
      class DestroyPrepaidInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 交易ID。
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

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称：keewidb。
        # @type Product: String
        # @param SecurityGroupId: 要绑定的安全组 ID，类似sg-efil****。
        # @type SecurityGroupId: String
        # @param InstanceIds: 实例 ID，格式如：kee-c1nl****，支持指定多个实例。
        # @type InstanceIds: Array

        attr_accessor :Product, :SecurityGroupId, :InstanceIds

        def initialize(product=nil, securitygroupid=nil, instanceids=nil)
          @Product = product
          @SecurityGroupId = securitygroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Product = params['Product']
          @SecurityGroupId = params['SecurityGroupId']
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

      # 实例枚举类型参数描述，keewidb暂无枚举值
      class InstanceEnumParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param ValueType: 参数类型：enum
        # @type ValueType: String
        # @param NeedRestart: 修改后是否需要重启：true，false
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值
        # @type DefaultValue: String
        # @param CurrentValue: 当前运行参数值
        # @type CurrentValue: String
        # @param Tips: 参数说明
        # @type Tips: String
        # @param EnumValue: 参数可取值
        # @type EnumValue: Array
        # @param Status: 参数状态, 1: 修改中， 2：修改完成
        # @type Status: Integer

        attr_accessor :ParamName, :ValueType, :NeedRestart, :DefaultValue, :CurrentValue, :Tips, :EnumValue, :Status

        def initialize(paramname=nil, valuetype=nil, needrestart=nil, defaultvalue=nil, currentvalue=nil, tips=nil, enumvalue=nil, status=nil)
          @ParamName = paramname
          @ValueType = valuetype
          @NeedRestart = needrestart
          @DefaultValue = defaultvalue
          @CurrentValue = currentvalue
          @Tips = tips
          @EnumValue = enumvalue
          @Status = status
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ValueType = params['ValueType']
          @NeedRestart = params['NeedRestart']
          @DefaultValue = params['DefaultValue']
          @CurrentValue = params['CurrentValue']
          @Tips = params['Tips']
          @EnumValue = params['EnumValue']
          @Status = params['Status']
        end
      end

      # 实例详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Appid: 用户的Appid。
        # @type Appid: Integer
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param RegionId: 地域ID。<ul><li>1：广州。</li><li>4：上海。</li><li>8：北京。</li></ul>
        # @type RegionId: Integer
        # @param ZoneId: 可用区 ID。
        # @type ZoneId: Integer
        # @param VpcId: VPC 网络 ID， 如：75101。该参数当前暂保留，可忽略。
        # @type VpcId: Integer
        # @param Status: 实例当前状态。<ul><li>0：待初始化。</li><li>1：实例在流程中。</li><li>2：实例运行中。</li><li>-2：实例已隔离。</li><li>-3：实例待删除。</li></ul>
        # @type Status: Integer
        # @param SubnetId: VPC 网络下子网 ID， 如：46315。该参数当前暂保留，可忽略。
        # @type SubnetId: Integer
        # @param WanIp: 实例 VIP。
        # @type WanIp: String
        # @param Port: 实例端口号。
        # @type Port: Integer
        # @param Createtime: 实例创建时间。
        # @type Createtime: String
        # @param Size: 实例持久内存总容量大小，单位：MB。
        # @type Size: Float
        # @param Type: 实例类型。<ul><li>13：标准版。</li><li>14：集群版。</li></ul>
        # @type Type: Integer
        # @param AutoRenewFlag: 实例是否设置自动续费标识。<ul><li>1：设置自动续费。</li><li>0：未设置自动续费。</li></ul>
        # @type AutoRenewFlag: Integer
        # @param DeadlineTime: 实例到期时间。
        # @type DeadlineTime: String
        # @param Engine: 存储引擎。
        # @type Engine: String
        # @param ProductType: 产品类型。<ul><li>standalone ：标准版。</li><li>cluster ：集群版。</li></ul>
        # @type ProductType: String
        # @param UniqVpcId: VPC 网络 ID， 如：vpc-fk33jsf4****。
        # @type UniqVpcId: String
        # @param UniqSubnetId: VPC 网络下子网 ID，如：subnet-fd3j6l3****。
        # @type UniqSubnetId: String
        # @param BillingMode: 计费模式。<ul><li>0：按量计费。</li><li>1：包年包月。</li></ul>
        # @type BillingMode: Integer
        # @param InstanceTitle: 实例运行状态描述：如”实例运行中“。
        # @type InstanceTitle: String
        # @param OfflineTime: 计划下线时间。
        # @type OfflineTime: String
        # @param SubStatus: 流程中的实例，返回子状态。
        # @type SubStatus: Integer
        # @param Tags: 反亲和性标签
        # @type Tags: Array
        # @param RedisShardSize: 分片大小。
        # @type RedisShardSize: Integer
        # @param RedisShardNum: 分片数量。
        # @type RedisShardNum: Integer
        # @param RedisReplicasNum: 副本数量。
        # @type RedisReplicasNum: Integer
        # @param PriceId: 计费 ID。
        # @type PriceId: Integer
        # @param CloseTime: 隔离时间。
        # @type CloseTime: String
        # @param SlaveReadWeight: 从节点读取权重。
        # @type SlaveReadWeight: Integer
        # @param InstanceTags: 实例关联的标签信息。
        # @type InstanceTags: Array
        # @param ProjectName: 项目名称。
        # @type ProjectName: String
        # @param NoAuth: 是否为免密实例；<ul><li>true：免密实例。</li><li>false：非免密实例。</li></ul>
        # @type NoAuth: Boolean
        # @param ClientLimit: 客户端连接数。
        # @type ClientLimit: Integer
        # @param DtsStatus: DTS状态（内部参数，用户可忽略）。
        # @type DtsStatus: Integer
        # @param NetLimit: 分片带宽上限，单位 MB。
        # @type NetLimit: Integer
        # @param PasswordFree: 免密实例标识（内部参数，用户可忽略）。
        # @type PasswordFree: Integer
        # @param ReadOnly: 实例只读标识（内部参数，用户可忽略）。
        # @type ReadOnly: Integer
        # @param Vip6: 内部参数，用户可忽略。
        # @type Vip6: String
        # @param RemainBandwidthDuration: 内部参数，用户可忽略。
        # @type RemainBandwidthDuration: String
        # @param DiskSize: 实例的磁盘容量大小。
        # @type DiskSize: Integer
        # @param MonitorVersion: 监控版本。<ul><li>1m：分钟粒度监控。</li><li>5s：5秒粒度监控。</li></ul>
        # @type MonitorVersion: String
        # @param ClientLimitMin: 客户端最大连接数可设置的最小值。
        # @type ClientLimitMin: Integer
        # @param ClientLimitMax: 客户端最大连接数可设置的最大值。
        # @type ClientLimitMax: Integer
        # @param NodeSet: 实例的节点详细信息。
        # @type NodeSet: Array
        # @param Region: 实例所在的地域信息，比如ap-guangzhou。
        # @type Region: String
        # @param MachineMemory: 实例内存容量，单位：GB。KeeWiDB 内存容量
        # @type MachineMemory: Integer
        # @param DiskShardSize: 单分片磁盘大小，单位：MB
        # @type DiskShardSize: Integer
        # @param DiskShardNum: 3
        # @type DiskShardNum: Integer
        # @param DiskReplicasNum: 1
        # @type DiskReplicasNum: Integer
        # @param Compression: 数据压缩开关。<ul><li>ON：开启。</li><li>OFF：关闭。</li></ul>
        # @type Compression: String

        attr_accessor :InstanceName, :InstanceId, :Appid, :ProjectId, :RegionId, :ZoneId, :VpcId, :Status, :SubnetId, :WanIp, :Port, :Createtime, :Size, :Type, :AutoRenewFlag, :DeadlineTime, :Engine, :ProductType, :UniqVpcId, :UniqSubnetId, :BillingMode, :InstanceTitle, :OfflineTime, :SubStatus, :Tags, :RedisShardSize, :RedisShardNum, :RedisReplicasNum, :PriceId, :CloseTime, :SlaveReadWeight, :InstanceTags, :ProjectName, :NoAuth, :ClientLimit, :DtsStatus, :NetLimit, :PasswordFree, :ReadOnly, :Vip6, :RemainBandwidthDuration, :DiskSize, :MonitorVersion, :ClientLimitMin, :ClientLimitMax, :NodeSet, :Region, :MachineMemory, :DiskShardSize, :DiskShardNum, :DiskReplicasNum, :Compression

        def initialize(instancename=nil, instanceid=nil, appid=nil, projectid=nil, regionid=nil, zoneid=nil, vpcid=nil, status=nil, subnetid=nil, wanip=nil, port=nil, createtime=nil, size=nil, type=nil, autorenewflag=nil, deadlinetime=nil, engine=nil, producttype=nil, uniqvpcid=nil, uniqsubnetid=nil, billingmode=nil, instancetitle=nil, offlinetime=nil, substatus=nil, tags=nil, redisshardsize=nil, redisshardnum=nil, redisreplicasnum=nil, priceid=nil, closetime=nil, slavereadweight=nil, instancetags=nil, projectname=nil, noauth=nil, clientlimit=nil, dtsstatus=nil, netlimit=nil, passwordfree=nil, readonly=nil, vip6=nil, remainbandwidthduration=nil, disksize=nil, monitorversion=nil, clientlimitmin=nil, clientlimitmax=nil, nodeset=nil, region=nil, machinememory=nil, diskshardsize=nil, diskshardnum=nil, diskreplicasnum=nil, compression=nil)
          @InstanceName = instancename
          @InstanceId = instanceid
          @Appid = appid
          @ProjectId = projectid
          @RegionId = regionid
          @ZoneId = zoneid
          @VpcId = vpcid
          @Status = status
          @SubnetId = subnetid
          @WanIp = wanip
          @Port = port
          @Createtime = createtime
          @Size = size
          @Type = type
          @AutoRenewFlag = autorenewflag
          @DeadlineTime = deadlinetime
          @Engine = engine
          @ProductType = producttype
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @BillingMode = billingmode
          @InstanceTitle = instancetitle
          @OfflineTime = offlinetime
          @SubStatus = substatus
          @Tags = tags
          @RedisShardSize = redisshardsize
          @RedisShardNum = redisshardnum
          @RedisReplicasNum = redisreplicasnum
          @PriceId = priceid
          @CloseTime = closetime
          @SlaveReadWeight = slavereadweight
          @InstanceTags = instancetags
          @ProjectName = projectname
          @NoAuth = noauth
          @ClientLimit = clientlimit
          @DtsStatus = dtsstatus
          @NetLimit = netlimit
          @PasswordFree = passwordfree
          @ReadOnly = readonly
          @Vip6 = vip6
          @RemainBandwidthDuration = remainbandwidthduration
          @DiskSize = disksize
          @MonitorVersion = monitorversion
          @ClientLimitMin = clientlimitmin
          @ClientLimitMax = clientlimitmax
          @NodeSet = nodeset
          @Region = region
          @MachineMemory = machinememory
          @DiskShardSize = diskshardsize
          @DiskShardNum = diskshardnum
          @DiskReplicasNum = diskreplicasnum
          @Compression = compression
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @Appid = params['Appid']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @WanIp = params['WanIp']
          @Port = params['Port']
          @Createtime = params['Createtime']
          @Size = params['Size']
          @Type = params['Type']
          @AutoRenewFlag = params['AutoRenewFlag']
          @DeadlineTime = params['DeadlineTime']
          @Engine = params['Engine']
          @ProductType = params['ProductType']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @BillingMode = params['BillingMode']
          @InstanceTitle = params['InstanceTitle']
          @OfflineTime = params['OfflineTime']
          @SubStatus = params['SubStatus']
          @Tags = params['Tags']
          @RedisShardSize = params['RedisShardSize']
          @RedisShardNum = params['RedisShardNum']
          @RedisReplicasNum = params['RedisReplicasNum']
          @PriceId = params['PriceId']
          @CloseTime = params['CloseTime']
          @SlaveReadWeight = params['SlaveReadWeight']
          unless params['InstanceTags'].nil?
            @InstanceTags = []
            params['InstanceTags'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @InstanceTags << instancetaginfo_tmp
            end
          end
          @ProjectName = params['ProjectName']
          @NoAuth = params['NoAuth']
          @ClientLimit = params['ClientLimit']
          @DtsStatus = params['DtsStatus']
          @NetLimit = params['NetLimit']
          @PasswordFree = params['PasswordFree']
          @ReadOnly = params['ReadOnly']
          @Vip6 = params['Vip6']
          @RemainBandwidthDuration = params['RemainBandwidthDuration']
          @DiskSize = params['DiskSize']
          @MonitorVersion = params['MonitorVersion']
          @ClientLimitMin = params['ClientLimitMin']
          @ClientLimitMax = params['ClientLimitMax']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodeSet << nodeinfo_tmp
            end
          end
          @Region = params['Region']
          @MachineMemory = params['MachineMemory']
          @DiskShardSize = params['DiskShardSize']
          @DiskShardNum = params['DiskShardNum']
          @DiskReplicasNum = params['DiskReplicasNum']
          @Compression = params['Compression']
        end
      end

      # 实例整型参数描述
      class InstanceIntegerParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param ValueType: 参数类型：integer
        # @type ValueType: String
        # @param NeedRestart: 修改后是否需要重启：true，false
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值
        # @type DefaultValue: String
        # @param CurrentValue: 当前运行参数值
        # @type CurrentValue: String
        # @param Tips: 参数说明
        # @type Tips: String
        # @param Min: 参数最小值
        # @type Min: String
        # @param Max: 参数最大值
        # @type Max: String
        # @param Status: 参数状态, 1: 修改中， 2：修改完成
        # @type Status: Integer
        # @param Unit: 参数单位
        # @type Unit: String

        attr_accessor :ParamName, :ValueType, :NeedRestart, :DefaultValue, :CurrentValue, :Tips, :Min, :Max, :Status, :Unit

        def initialize(paramname=nil, valuetype=nil, needrestart=nil, defaultvalue=nil, currentvalue=nil, tips=nil, min=nil, max=nil, status=nil, unit=nil)
          @ParamName = paramname
          @ValueType = valuetype
          @NeedRestart = needrestart
          @DefaultValue = defaultvalue
          @CurrentValue = currentvalue
          @Tips = tips
          @Min = min
          @Max = max
          @Status = status
          @Unit = unit
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ValueType = params['ValueType']
          @NeedRestart = params['NeedRestart']
          @DefaultValue = params['DefaultValue']
          @CurrentValue = params['CurrentValue']
          @Tips = params['Tips']
          @Min = params['Min']
          @Max = params['Max']
          @Status = params['Status']
          @Unit = params['Unit']
        end
      end

      # 实例多选项类型参数描述
      class InstanceMultiParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param ValueType: 参数类型：multi
        # @type ValueType: String
        # @param NeedRestart: 修改后是否需要重启：true，false
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值
        # @type DefaultValue: String
        # @param CurrentValue: 当前运行参数值
        # @type CurrentValue: String
        # @param Tips: 参数说明
        # @type Tips: String
        # @param EnumValue: 参数说明
        # @type EnumValue: Array
        # @param Status: 参数状态, 1: 修改中， 2：修改完成
        # @type Status: Integer

        attr_accessor :ParamName, :ValueType, :NeedRestart, :DefaultValue, :CurrentValue, :Tips, :EnumValue, :Status

        def initialize(paramname=nil, valuetype=nil, needrestart=nil, defaultvalue=nil, currentvalue=nil, tips=nil, enumvalue=nil, status=nil)
          @ParamName = paramname
          @ValueType = valuetype
          @NeedRestart = needrestart
          @DefaultValue = defaultvalue
          @CurrentValue = currentvalue
          @Tips = tips
          @EnumValue = enumvalue
          @Status = status
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ValueType = params['ValueType']
          @NeedRestart = params['NeedRestart']
          @DefaultValue = params['DefaultValue']
          @CurrentValue = params['CurrentValue']
          @Tips = params['Tips']
          @EnumValue = params['EnumValue']
          @Status = params['Status']
        end
      end

      # 实例节点信息
      class InstanceNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param NodeRole: 节点角色
        # @type NodeRole: String

        attr_accessor :NodeId, :NodeRole

        def initialize(nodeid=nil, noderole=nil)
          @NodeId = nodeid
          @NodeRole = noderole
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeRole = params['NodeRole']
        end
      end

      # 实例参数
      class InstanceParam < TencentCloud::Common::AbstractModel
        # @param Key: 设置参数的名字
        # @type Key: String
        # @param Value: 设置参数的值
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

      # 实例参数修改历史
      class InstanceParamHistory < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param PreValue: 修改前值
        # @type PreValue: String
        # @param NewValue: 修改后值
        # @type NewValue: String
        # @param Status: 状态：1-参数配置修改中；2-参数配置修改成功；3-参数配置修改失败
        # @type Status: Integer
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :ParamName, :PreValue, :NewValue, :Status, :ModifyTime

        def initialize(paramname=nil, prevalue=nil, newvalue=nil, status=nil, modifytime=nil)
          @ParamName = paramname
          @PreValue = prevalue
          @NewValue = newvalue
          @Status = status
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @PreValue = params['PreValue']
          @NewValue = params['NewValue']
          @Status = params['Status']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 代理慢查询详情
      class InstanceProxySlowlogDetail < TencentCloud::Common::AbstractModel
        # @param Duration: 慢查询耗时
        # @type Duration: Integer
        # @param Client: 客户端地址
        # @type Client: String
        # @param Command: 命令
        # @type Command: String
        # @param CommandLine: 详细命令行信息
        # @type CommandLine: String
        # @param ExecuteTime: 执行时间
        # @type ExecuteTime: String

        attr_accessor :Duration, :Client, :Command, :CommandLine, :ExecuteTime

        def initialize(duration=nil, client=nil, command=nil, commandline=nil, executetime=nil)
          @Duration = duration
          @Client = client
          @Command = command
          @CommandLine = commandline
          @ExecuteTime = executetime
        end

        def deserialize(params)
          @Duration = params['Duration']
          @Client = params['Client']
          @Command = params['Command']
          @CommandLine = params['CommandLine']
          @ExecuteTime = params['ExecuteTime']
        end
      end

      # 实例标签信息
      class InstanceTagInfo < TencentCloud::Common::AbstractModel
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

      # 实例字符型参数描述
      class InstanceTextParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param ValueType: 参数类型：text
        # @type ValueType: String
        # @param NeedRestart: 修改后是否需要重启：true，false
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值
        # @type DefaultValue: String
        # @param CurrentValue: 当前运行参数值
        # @type CurrentValue: String
        # @param Tips: 参数说明
        # @type Tips: String
        # @param TextValue: 参数可取值
        # @type TextValue: Array
        # @param Status: 参数状态, 1: 修改中， 2：修改完成
        # @type Status: Integer

        attr_accessor :ParamName, :ValueType, :NeedRestart, :DefaultValue, :CurrentValue, :Tips, :TextValue, :Status

        def initialize(paramname=nil, valuetype=nil, needrestart=nil, defaultvalue=nil, currentvalue=nil, tips=nil, textvalue=nil, status=nil)
          @ParamName = paramname
          @ValueType = valuetype
          @NeedRestart = needrestart
          @DefaultValue = defaultvalue
          @CurrentValue = currentvalue
          @Tips = tips
          @TextValue = textvalue
          @Status = status
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ValueType = params['ValueType']
          @NeedRestart = params['NeedRestart']
          @DefaultValue = params['DefaultValue']
          @CurrentValue = params['CurrentValue']
          @Tips = params['Tips']
          @TextValue = params['TextValue']
          @Status = params['Status']
        end
      end

      # KeeWiDB节点的运行信息
      class KeeWiDBNode < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点的序列ID。
        # @type NodeId: String
        # @param Status: 节点的状态。
        # @type Status: String
        # @param Role: 节点角色。
        # @type Role: String

        attr_accessor :NodeId, :Status, :Role

        def initialize(nodeid=nil, status=nil, role=nil)
          @NodeId = nodeid
          @Status = status
          @Role = role
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Status = params['Status']
          @Role = params['Role']
        end
      end

      # ModifyAutoBackupConfig请求参数结构体
      class ModifyAutoBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param WeekDays: 备份周期。可设置为 Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday，该参数暂不支持修改、
        # @type WeekDays: Array
        # @param TimePeriod: 备份任务执行时间段。
        # 可设置的格式为一个整点到下一个整点。例如：00:00-01:00、01:00-02:00、21:00-22:00、23:00-00:00等。
        # @type TimePeriod: String

        attr_accessor :InstanceId, :WeekDays, :TimePeriod

        def initialize(instanceid=nil, weekdays=nil, timeperiod=nil)
          @InstanceId = instanceid
          @WeekDays = weekdays
          @TimePeriod = timeperiod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @WeekDays = params['WeekDays']
          @TimePeriod = params['TimePeriod']
        end
      end

      # ModifyAutoBackupConfig返回参数结构体
      class ModifyAutoBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param BackupStorageDays: 增量备份文件保存天数。
        # @type BackupStorageDays: Integer
        # @param BinlogStorageDays: 全量备份文件保存天数。
        # @type BinlogStorageDays: Integer
        # @param TimePeriod: 备份时间段。
        # @type TimePeriod: String
        # @param WeekDays: 备份周期。Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        # @type WeekDays: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupStorageDays, :BinlogStorageDays, :TimePeriod, :WeekDays, :RequestId

        def initialize(backupstoragedays=nil, binlogstoragedays=nil, timeperiod=nil, weekdays=nil, requestid=nil)
          @BackupStorageDays = backupstoragedays
          @BinlogStorageDays = binlogstoragedays
          @TimePeriod = timeperiod
          @WeekDays = weekdays
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupStorageDays = params['BackupStorageDays']
          @BinlogStorageDays = params['BinlogStorageDays']
          @TimePeriod = params['TimePeriod']
          @WeekDays = params['WeekDays']
          @RequestId = params['RequestId']
        end
      end

      # ModifyConnectionConfig请求参数结构体
      class ModifyConnectionConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param Bandwidth: 单分片附加带宽，取值范围[0,512]，单位：MB。
        # <ul><li>开启副本只读时，实例总带宽  = 单分片附加带宽 * 分片数 + 标准带宽 * 分片数 * Max ([只读副本数量, 1])，标准架构的分片数 = 1。</li><li>没有开启副本只读时，实例总带宽 = 单分片附加带宽 * 分片数 + 标准带宽 * 分片数，标准架构的分片数 = 1。</li></ul>
        # @type Bandwidth: Integer
        # @param ClientLimit: 单分片的总连接数。
        # <ul>默认为10000，整个实例的最大连接数为单个分片的最大连接数 x 分片数量。标准架构分片数量为1。
        # <li>关闭副本只读：每个分片的最大连接数的取值范围为[10000,40000]。</li><li>开启副本只读：每个分片的最大连接数的取值范围为 [10000,10000 x (副本数 + 3)]。</li></ul>
        # @type ClientLimit: Integer

        attr_accessor :InstanceId, :Bandwidth, :ClientLimit

        def initialize(instanceid=nil, bandwidth=nil, clientlimit=nil)
          @InstanceId = instanceid
          @Bandwidth = bandwidth
          @ClientLimit = clientlimit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Bandwidth = params['Bandwidth']
          @ClientLimit = params['ClientLimit']
        end
      end

      # ModifyConnectionConfig返回参数结构体
      class ModifyConnectionConfigResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称：keewidb。
        # @type Product: String
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组 ID 组成的数组。
        # @type SecurityGroupIds: Array
        # @param InstanceId: 实例ID，格式如：kee-c1nl****。
        # @type InstanceId: String

        attr_accessor :Product, :SecurityGroupIds, :InstanceId

        def initialize(product=nil, securitygroupids=nil, instanceid=nil)
          @Product = product
          @SecurityGroupIds = securitygroupids
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Product = params['Product']
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceId = params['InstanceId']
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

      # ModifyInstanceParams请求参数结构体
      class ModifyInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param InstanceParams: 实例修改的参数列表。
        # @type InstanceParams: Array

        attr_accessor :InstanceId, :InstanceParams

        def initialize(instanceid=nil, instanceparams=nil)
          @InstanceId = instanceid
          @InstanceParams = instanceparams
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['InstanceParams'].nil?
            @InstanceParams = []
            params['InstanceParams'].each do |i|
              instanceparam_tmp = InstanceParam.new
              instanceparam_tmp.deserialize(i)
              @InstanceParams << instanceparam_tmp
            end
          end
        end
      end

      # ModifyInstanceParams返回参数结构体
      class ModifyInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param Changed: 修改是否成功。<ul><li>true：修改成功。</li><li>false：修改失败。</li></ul>
        # @type Changed: Boolean
        # @param TaskId: 任务 ID。
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

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Operation: 修改实例操作。<ul><li>rename：表示实例重命名。</li><li>modifyProject：修改实例所属项目。</li><li>modifyAutoRenew：修改实例续费模式。</li></ul>
        # @type Operation: String
        # @param InstanceIds: 实例 ID 数组。
        # @type InstanceIds: Array
        # @param InstanceNames: 实例的新名称。
        # @type InstanceNames: Array
        # @param ProjectId: 实例新的项目 ID。
        # @type ProjectId: Integer
        # @param AutoRenews: 包年包月计费的续费模式。<b>InstanceIds</b>数组和<b>AutoRenews</b>数组中的修改值对应。<ul><li>0：默认状态，指手动续费。</li><li>1：自动续费。</li><li>2：到期不再续费。</ul>
        # @type AutoRenews: Array

        attr_accessor :Operation, :InstanceIds, :InstanceNames, :ProjectId, :AutoRenews

        def initialize(operation=nil, instanceids=nil, instancenames=nil, projectid=nil, autorenews=nil)
          @Operation = operation
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @ProjectId = projectid
          @AutoRenews = autorenews
        end

        def deserialize(params)
          @Operation = params['Operation']
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @ProjectId = params['ProjectId']
          @AutoRenews = params['AutoRenews']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMaintenanceWindow请求参数结构体
      class ModifyMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param StartTime: 维护时间窗起始时间，如：03:00。
        # @type StartTime: String
        # @param EndTime: 维护时间窗结束时间，如：06:00。
        # @type EndTime: String

        attr_accessor :InstanceId, :StartTime, :EndTime

        def initialize(instanceid=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyMaintenanceWindow返回参数结构体
      class ModifyMaintenanceWindowResponse < TencentCloud::Common::AbstractModel
        # @param Status: 执行结果。<ul><li>success：修改成功。 </li> <li>failed：修改失败。</li></ul>
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

      # ModifyNetworkConfig请求参数结构体
      class ModifyNetworkConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，如：kee-6ubh****。
        # @type InstanceId: String
        # @param Operation: 操作类型。<ul><li>changeVip：修改实例私有网络。</li><li>changeVpc：修改实例私有网络所属子网。</li><li>changeBaseToVpc：基础网络转为私有网络。</li></ul>
        # @type Operation: String
        # @param Vip: 修改后的 VIP 地址。
        # 当参数<b>Operation</b>为<b>changeVip</b>时，需设置实例修改后的 VIP 地址。该参数不配置，则自动分配。
        # @type Vip: String
        # @param VpcId: 修改后的私有网络 ID。
        # 当参数<b>Operation</b>为<b>changeVip</b>或者为<b>changeBaseToVpc</b>时，务必设置实例修改后的私有网络 ID。
        # @type VpcId: String
        # @param SubnetId: 修改后的所属子网 ID。
        # 当参数<b>Operation</b>为<b>changeVpc</b>或者为<b>changeBaseToVpc</b>时，务必设置实例修改后的子网 ID。
        # @type SubnetId: String
        # @param Recycle: 原 VIP 保留时长。
        # 单位：天。取值范围：0、1、2、3、7、15。
        # @type Recycle: Integer

        attr_accessor :InstanceId, :Operation, :Vip, :VpcId, :SubnetId, :Recycle

        def initialize(instanceid=nil, operation=nil, vip=nil, vpcid=nil, subnetid=nil, recycle=nil)
          @InstanceId = instanceid
          @Operation = operation
          @Vip = vip
          @VpcId = vpcid
          @SubnetId = subnetid
          @Recycle = recycle
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Operation = params['Operation']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Recycle = params['Recycle']
        end
      end

      # ModifyNetworkConfig返回参数结构体
      class ModifyNetworkConfigResponse < TencentCloud::Common::AbstractModel
        # @param Status: 执行状态。<ul><li>true：执行成功。</li><li>false：执行失败。</li></ul>
        # @type Status: Boolean
        # @param SubnetId: 修改后的子网 ID。
        # @type SubnetId: String
        # @param VpcId: 修改后的私有网络 ID。
        # @type VpcId: String
        # @param Vip: 修改后的 VIP 地址。
        # @type Vip: String
        # @param TaskId: 任务ID。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :SubnetId, :VpcId, :Vip, :TaskId, :RequestId

        def initialize(status=nil, subnetid=nil, vpcid=nil, vip=nil, taskid=nil, requestid=nil)
          @Status = status
          @SubnetId = subnetid
          @VpcId = vpcid
          @Vip = vip
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Vip = params['Vip']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 描述实例的主节点或者副本节点信息
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型，0 为主节点，1 为副本节点
        # @type NodeType: Integer
        # @param NodeId: 主节点或者副本节点的ID，创建时不需要传递此参数。
        # @type NodeId: Integer
        # @param ZoneId: 主节点或者副本节点的可用区ID
        # @type ZoneId: Integer
        # @param ZoneName: 主节点或者副本节点的可用区名称
        # @type ZoneName: String

        attr_accessor :NodeType, :NodeId, :ZoneId, :ZoneName

        def initialize(nodetype=nil, nodeid=nil, zoneid=nil, zonename=nil)
          @NodeType = nodetype
          @NodeId = nodeid
          @ZoneId = zoneid
          @ZoneName = zonename
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeId = params['NodeId']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
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

      # 产品规格信息
      class ProductConf < TencentCloud::Common::AbstractModel
        # @param Type: 产品类型，13-KeewiDB标准架构，14-KeewiDB集群架构
        # @type Type: Integer
        # @param TypeName: KeewiDB标准架构，KeewiDB集群架构
        # @type TypeName: String
        # @param MinBuyNum: 购买时的最小数量
        # @type MinBuyNum: Integer
        # @param MaxBuyNum: 购买时的最大数量
        # @type MaxBuyNum: Integer
        # @param Saleout: 产品是否售罄
        # @type Saleout: Boolean
        # @param Engine: 产品引擎，keewidb
        # @type Engine: String
        # @param Version: 兼容版本，Redis-2.8，Redis-3.2，Redis-4.0
        # @type Version: String
        # @param ReplicaNum: 副本数量
        # @type ReplicaNum: Array
        # @param PayMode: 支持的计费模式，1-包年包月，0-按量计费
        # @type PayMode: String

        attr_accessor :Type, :TypeName, :MinBuyNum, :MaxBuyNum, :Saleout, :Engine, :Version, :ReplicaNum, :PayMode

        def initialize(type=nil, typename=nil, minbuynum=nil, maxbuynum=nil, saleout=nil, engine=nil, version=nil, replicanum=nil, paymode=nil)
          @Type = type
          @TypeName = typename
          @MinBuyNum = minbuynum
          @MaxBuyNum = maxbuynum
          @Saleout = saleout
          @Engine = engine
          @Version = version
          @ReplicaNum = replicanum
          @PayMode = paymode
        end

        def deserialize(params)
          @Type = params['Type']
          @TypeName = params['TypeName']
          @MinBuyNum = params['MinBuyNum']
          @MaxBuyNum = params['MaxBuyNum']
          @Saleout = params['Saleout']
          @Engine = params['Engine']
          @Version = params['Version']
          @ReplicaNum = params['ReplicaNum']
          @PayMode = params['PayMode']
        end
      end

      # Proxy节点信息
      class ProxyNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # @type NodeId: String

        attr_accessor :NodeId

        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # Redis节点信息
      class RedisNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param NodeRole: 节点角色
        # @type NodeRole: String
        # @param ClusterId: 分片ID
        # @type ClusterId: Integer
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer

        attr_accessor :NodeId, :NodeRole, :ClusterId, :ZoneId

        def initialize(nodeid=nil, noderole=nil, clusterid=nil, zoneid=nil)
          @NodeId = nodeid
          @NodeRole = noderole
          @ClusterId = clusterid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeRole = params['NodeRole']
          @ClusterId = params['ClusterId']
          @ZoneId = params['ZoneId']
        end
      end

      # 地域售卖信息
      class RegionConf < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param RegionShortName: 地域简称
        # @type RegionShortName: String
        # @param Area: 地域所在大区名称
        # @type Area: String
        # @param ZoneSet: 可用区信息
        # @type ZoneSet: Array

        attr_accessor :RegionId, :RegionName, :RegionShortName, :Area, :ZoneSet

        def initialize(regionid=nil, regionname=nil, regionshortname=nil, area=nil, zoneset=nil)
          @RegionId = regionid
          @RegionName = regionname
          @RegionShortName = regionshortname
          @Area = area
          @ZoneSet = zoneset
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @RegionShortName = params['RegionShortName']
          @Area = params['Area']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zonecapacityconf_tmp = ZoneCapacityConf.new
              zonecapacityconf_tmp.deserialize(i)
              @ZoneSet << zonecapacityconf_tmp
            end
          end
        end
      end

      # RenewInstance请求参数结构体
      class RenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Period: 购买时长。单位：月。取值为 [1,2,3,4,5,6,7,8,9,10,11,12,24,36,48,60]。
        # @type Period: Integer

        attr_accessor :InstanceId, :Period

        def initialize(instanceid=nil, period=nil)
          @InstanceId = instanceid
          @Period = period
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
        end
      end

      # RenewInstance返回参数结构体
      class RenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 交易 ID。
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

      # 实例副本组信息
      class ReplicaGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 节点 ID。
        # @type GroupId: Integer
        # @param GroupName: 节点组的名称，主节点为空。
        # @type GroupName: String
        # @param ZoneId: 节点的可用区ID，比如ap-guangzhou-1。
        # @type ZoneId: String
        # @param Role: 节点组角色。<ul><li>master：为主节点。</li><li>replica：为副本节点。</li></ul>
        # @type Role: String
        # @param KeeWiDBNodes: 节点组节点列表。
        # @type KeeWiDBNodes: Array

        attr_accessor :GroupId, :GroupName, :ZoneId, :Role, :KeeWiDBNodes

        def initialize(groupid=nil, groupname=nil, zoneid=nil, role=nil, keewidbnodes=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ZoneId = zoneid
          @Role = role
          @KeeWiDBNodes = keewidbnodes
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ZoneId = params['ZoneId']
          @Role = params['Role']
          unless params['KeeWiDBNodes'].nil?
            @KeeWiDBNodes = []
            params['KeeWiDBNodes'].each do |i|
              keewidbnode_tmp = KeeWiDBNode.new
              keewidbnode_tmp.deserialize(i)
              @KeeWiDBNodes << keewidbnode_tmp
            end
          end
        end
      end

      # ResetPassword请求参数结构体
      class ResetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Password: 设置新密码。<ul><li>当参数<b>NoAuth</b>设置为<b>true</b>，切换为免密实例时，可不设置该参数。</li><li>密码复杂度要求：<ul><li>长度8 - 30位, 推荐使用12位以上的密码。</li><li>不能以"/"开头。</li>
        # <li>至少包含以下两项：<ul><li>小写字母a - z</li><li>大写字母A - Z</li><li>数字0 - 9</li><li>()~!@#$%^&*-+=_|{}[]:;<>,.?/</li></ul></li></ul></li></ul>
        # @type Password: String
        # @param NoAuth: 标识实例是否切换免密认证。<ul><li>false：由免密码认证方式切换为密码认证实例。默认为false。</li><li>true：由密码认证方式切换为免密码认证的方式。</li></ul>
        # @type NoAuth: Boolean

        attr_accessor :InstanceId, :Password, :NoAuth

        def initialize(instanceid=nil, password=nil, noauth=nil)
          @InstanceId = instanceid
          @Password = password
          @NoAuth = noauth
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Password = params['Password']
          @NoAuth = params['NoAuth']
        end
      end

      # ResetPassword返回参数结构体
      class ResetPasswordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # <b>说明：</b>修改密码时的任务ID，如果切换免密访问或者非免密码实例，则无需关注此返回值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 实例绑定标签
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签 Key。
        # @type TagKey: String
        # @param TagValue: 标签 Value。
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

      # 安全组规则
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss。
        # @type CreateTime: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
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

        attr_accessor :CreateTime, :ProjectId, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark, :Outbound, :Inbound

        def initialize(createtime=nil, projectid=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil, outbound=nil, inbound=nil)
          @CreateTime = createtime
          @ProjectId = projectid
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
          @Outbound = outbound
          @Inbound = inbound
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
        end
      end

      # StartUpInstance请求参数结构体
      class StartUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StartUpInstance返回参数结构体
      class StartUpInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 任务信息详情
      class TaskInfoDetail < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param Progress: 任务进度
        # @type Progress: Float
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Result: 任务状态
        # @type Result: Integer
        # @param OperatorUin: 操作者用户uin
        # @type OperatorUin: String

        attr_accessor :TaskId, :StartTime, :TaskType, :InstanceName, :InstanceId, :ProjectId, :Progress, :EndTime, :Result, :OperatorUin

        def initialize(taskid=nil, starttime=nil, tasktype=nil, instancename=nil, instanceid=nil, projectid=nil, progress=nil, endtime=nil, result=nil, operatoruin=nil)
          @TaskId = taskid
          @StartTime = starttime
          @TaskType = tasktype
          @InstanceName = instancename
          @InstanceId = instanceid
          @ProjectId = projectid
          @Progress = progress
          @EndTime = endtime
          @Result = result
          @OperatorUin = operatoruin
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @TaskType = params['TaskType']
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @ProjectId = params['ProjectId']
          @Progress = params['Progress']
          @EndTime = params['EndTime']
          @Result = params['Result']
          @OperatorUin = params['OperatorUin']
        end
      end

      # 实例慢查询详情
      class TendisSlowLogDetail < TencentCloud::Common::AbstractModel
        # @param ExecuteTime: 执行时间
        # @type ExecuteTime: String
        # @param Duration: 慢查询耗时（毫秒）
        # @type Duration: Integer
        # @param Command: 命令
        # @type Command: String
        # @param CommandLine: 详细命令行信息
        # @type CommandLine: String
        # @param Node: 节点ID
        # @type Node: String

        attr_accessor :ExecuteTime, :Duration, :Command, :CommandLine, :Node

        def initialize(executetime=nil, duration=nil, command=nil, commandline=nil, node=nil)
          @ExecuteTime = executetime
          @Duration = duration
          @Command = command
          @CommandLine = commandline
          @Node = node
        end

        def deserialize(params)
          @ExecuteTime = params['ExecuteTime']
          @Duration = params['Duration']
          @Command = params['Command']
          @CommandLine = params['CommandLine']
          @Node = params['Node']
        end
      end

      # 订单交易信息
      class TradeDealDetail < TencentCloud::Common::AbstractModel
        # @param DealId: 订单号ID，调用云API时使用此ID
        # @type DealId: String
        # @param DealName: 长订单ID，反馈订单问题给官方客服使用此ID
        # @type DealName: String
        # @param ZoneId: 可用区id
        # @type ZoneId: Integer
        # @param GoodsNum: 订单关联的实例数
        # @type GoodsNum: Integer
        # @param Creater: 创建用户uin
        # @type Creater: String
        # @param CreatTime: 订单创建时间
        # @type CreatTime: String
        # @param OverdueTime: 订单超时时间
        # @type OverdueTime: String
        # @param EndTime: 订单完成时间
        # @type EndTime: String
        # @param Status: 订单状态 1：未支付 2:已支付，未发货 3:发货中 4:发货成功 5:发货失败 6:已退款 7:已关闭订单 8:订单过期 9:订单已失效 10:产品已失效 11:代付拒绝 12:支付中
        # @type Status: Integer
        # @param Description: 订单状态描述
        # @type Description: String
        # @param Price: 订单实际总价，单位：分
        # @type Price: Float
        # @param InstanceIds: 实例ID
        # @type InstanceIds: Array

        attr_accessor :DealId, :DealName, :ZoneId, :GoodsNum, :Creater, :CreatTime, :OverdueTime, :EndTime, :Status, :Description, :Price, :InstanceIds

        def initialize(dealid=nil, dealname=nil, zoneid=nil, goodsnum=nil, creater=nil, creattime=nil, overduetime=nil, endtime=nil, status=nil, description=nil, price=nil, instanceids=nil)
          @DealId = dealid
          @DealName = dealname
          @ZoneId = zoneid
          @GoodsNum = goodsnum
          @Creater = creater
          @CreatTime = creattime
          @OverdueTime = overduetime
          @EndTime = endtime
          @Status = status
          @Description = description
          @Price = price
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @DealId = params['DealId']
          @DealName = params['DealName']
          @ZoneId = params['ZoneId']
          @GoodsNum = params['GoodsNum']
          @Creater = params['Creater']
          @CreatTime = params['CreatTime']
          @OverdueTime = params['OverdueTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Description = params['Description']
          @Price = params['Price']
          @InstanceIds = params['InstanceIds']
        end
      end

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param MemSize: 配置变更后，每个分片持久化内存容量，单位：GB。
        # <ul><li>KeeWiDB 内存容量<b>MachineMemory</b>与持久内存容量<b>MemSize</b>为固定搭配，即2GB内存，固定分配8GB的持久内存，不可选择。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        # @type MemSize: Integer
        # @param MachineCpu: CPU 核数，可忽略不传
        # @type MachineCpu: Integer
        # @param MachineMemory: 实例内存容量，单位：GB。
        # <ul><li>KeeWiDB 内存容量<b>MachineMemory</b>与持久内存容量<b>MemSize</b>为固定搭配，即2GB内存，固定分配8GB的持久内存，不可选择。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        # @type MachineMemory: Integer
        # @param ShardNum: 配置变更后，分片数量。
        # <ul><li>增加后分片的数量务必为增加之前数量的整数倍。分片数量支持选择3、5、6、8、9、10、12、15、16、18、20、21、24、25、27、30、32、33、35、36、39、40、42、45、48、50、51、54、55、56、57、60、63、64分片。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        # @type ShardNum: Integer
        # @param DiskSize: 配置变更后，每个分片硬盘的容量。单位：GB。
        # <ul><li>每一缓存分片容量，对应的磁盘容量范围不同。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        # @type DiskSize: Integer

        attr_accessor :InstanceId, :MemSize, :MachineCpu, :MachineMemory, :ShardNum, :DiskSize

        def initialize(instanceid=nil, memsize=nil, machinecpu=nil, machinememory=nil, shardnum=nil, disksize=nil)
          @InstanceId = instanceid
          @MemSize = memsize
          @MachineCpu = machinecpu
          @MachineMemory = machinememory
          @ShardNum = shardnum
          @DiskSize = disksize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MemSize = params['MemSize']
          @MachineCpu = params['MachineCpu']
          @MachineMemory = params['MachineMemory']
          @ShardNum = params['ShardNum']
          @DiskSize = params['DiskSize']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 交易ID。
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

      # 可用区内产品售卖信息
      class ZoneCapacityConf < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param ZoneName: 可用区名称
        # @type ZoneName: String
        # @param IsSaleout: 可用区是否售罄
        # @type IsSaleout: Boolean
        # @param IsDefault: 是否为默认可用区
        # @type IsDefault: Boolean
        # @param NetWorkType: 网络类型：basenet -- 基础网络；vpcnet -- VPC网络
        # @type NetWorkType: Array
        # @param ProductSet: 产品规格等信息
        # @type ProductSet: Array
        # @param OldZoneId: Int类型可用区ID
        # @type OldZoneId: Integer

        attr_accessor :ZoneId, :ZoneName, :IsSaleout, :IsDefault, :NetWorkType, :ProductSet, :OldZoneId

        def initialize(zoneid=nil, zonename=nil, issaleout=nil, isdefault=nil, networktype=nil, productset=nil, oldzoneid=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @IsSaleout = issaleout
          @IsDefault = isdefault
          @NetWorkType = networktype
          @ProductSet = productset
          @OldZoneId = oldzoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @IsSaleout = params['IsSaleout']
          @IsDefault = params['IsDefault']
          @NetWorkType = params['NetWorkType']
          unless params['ProductSet'].nil?
            @ProductSet = []
            params['ProductSet'].each do |i|
              productconf_tmp = ProductConf.new
              productconf_tmp.deserialize(i)
              @ProductSet << productconf_tmp
            end
          end
          @OldZoneId = params['OldZoneId']
        end
      end

    end
  end
end

