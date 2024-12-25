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
  module Redis
    module V20180412
      # 子账号信息
      class Account < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param AccountName: 账号名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String
        # @param Remark: 账号描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Privilege: 读写权限策略。
        # - r：只读。
        # - w：只写。
        # - rw：读写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Privilege: String
        # @param ReadonlyPolicy: 只读路由策略。
        # - master：主节点。
        # - replication：从节点。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadonlyPolicy: Array
        # @param Status: 子账号状态.
        # - 1：账号变更中。
        # - 2：账号有效。
        # - 4：账号已删除。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :InstanceId, :AccountName, :Remark, :Privilege, :ReadonlyPolicy, :Status, :CreateTime

        def initialize(instanceid=nil, accountname=nil, remark=nil, privilege=nil, readonlypolicy=nil, status=nil, createtime=nil)
          @InstanceId = instanceid
          @AccountName = accountname
          @Remark = remark
          @Privilege = privilege
          @ReadonlyPolicy = readonlypolicy
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AccountName = params['AccountName']
          @Remark = params['Remark']
          @Privilege = params['Privilege']
          @ReadonlyPolicy = params['ReadonlyPolicy']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # AddReplicationInstance请求参数结构体
      class AddReplicationInstanceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 复制组ID。请登录[Redis控制台的全球复制](https://console.cloud.tencent.com/redis/replication)页面获取复制组 ID。
        # @type GroupId: String
        # @param InstanceId: 实例ID。请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param InstanceRole: 给复制组添加的实例分配角色。<ul><li>rw：可读写。</li><li>r：只读。</li></ul>
        # @type InstanceRole: String

        attr_accessor :GroupId, :InstanceId, :InstanceRole

        def initialize(groupid=nil, instanceid=nil, instancerole=nil)
          @GroupId = groupid
          @InstanceId = instanceid
          @InstanceRole = instancerole
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceId = params['InstanceId']
          @InstanceRole = params['InstanceRole']
        end
      end

      # AddReplicationInstance返回参数结构体
      class AddReplicationInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程ID。
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

      # AllocateWanAddress请求参数结构体
      class AllocateWanAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # AllocateWanAddress返回参数结构体
      class AllocateWanAddressResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param WanStatus: 开通外网的状态
        # @type WanStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :WanStatus, :RequestId

        def initialize(flowid=nil, wanstatus=nil, requestid=nil)
          @FlowId = flowid
          @WanStatus = wanstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @WanStatus = params['WanStatus']
          @RequestId = params['RequestId']
        end
      end

      # ApplyParamsTemplate请求参数结构体
      class ApplyParamsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceIds: Array
        # @param TemplateId: 应用的参数模板ID，请通过接口[DescribeParamTemplateInfo](https://cloud.tencent.com/document/product/239/58748)的返回参数 **TemplateId** 获取参数模板 ID。
        # @type TemplateId: String

        attr_accessor :InstanceIds, :TemplateId

        def initialize(instanceids=nil, templateid=nil)
          @InstanceIds = instanceids
          @TemplateId = templateid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @TemplateId = params['TemplateId']
        end
      end

      # ApplyParamsTemplate返回参数结构体
      class ApplyParamsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务ID
        # @type TaskIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskIds, :RequestId

        def initialize(taskids=nil, requestid=nil)
          @TaskIds = taskids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @RequestId = params['RequestId']
        end
      end

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：redis。
        # @type Product: String
        # @param SecurityGroupId: 要绑定的安全组ID，请在[控制台安全组](https://console.cloud.tencent.com/vpc/security-group)页面获取安全组 ID。
        # @type SecurityGroupId: String
        # @param InstanceIds: 被绑定的实例ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID，支持指定多个实例。
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

      # 可使用的地域信息
      class AvailableRegion < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AvailableZones: 可用区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableZones: Array

        attr_accessor :Region, :AvailableZones

        def initialize(region=nil, availablezones=nil)
          @Region = region
          @AvailableZones = availablezones
        end

        def deserialize(params)
          @Region = params['Region']
          @AvailableZones = params['AvailableZones']
        end
      end

      # 备份文件下载信息
      class BackupDownloadInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 备份文件名称。
        # @type FileName: String
        # @param FileSize: 备份文件大小，单位B，如果为0，表示无效。
        # @type FileSize: Integer
        # @param DownloadUrl: 备份文件外网下载地址。下载地址的有效时长为6小时，过期后请重新获取。
        # @type DownloadUrl: String
        # @param InnerDownloadUrl: 备份文件内网下载地址。下载地址的有效时长为6小时，过期后请重新获取。
        # @type InnerDownloadUrl: String

        attr_accessor :FileName, :FileSize, :DownloadUrl, :InnerDownloadUrl

        def initialize(filename=nil, filesize=nil, downloadurl=nil, innerdownloadurl=nil)
          @FileName = filename
          @FileSize = filesize
          @DownloadUrl = downloadurl
          @InnerDownloadUrl = innerdownloadurl
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @DownloadUrl = params['DownloadUrl']
          @InnerDownloadUrl = params['InnerDownloadUrl']
        end
      end

      # 已配置的备份文件下载地址对应的 VPC 信息。
      class BackupLimitVpcItem < TencentCloud::Common::AbstractModel
        # @param Region: 备份文件的下载地址对应VPC 所属的地域。
        # @type Region: String
        # @param VpcList: 备份文件下载地址的 VPC 列表。
        # @type VpcList: Array

        attr_accessor :Region, :VpcList

        def initialize(region=nil, vpclist=nil)
          @Region = region
          @VpcList = vpclist
        end

        def deserialize(params)
          @Region = params['Region']
          @VpcList = params['VpcList']
        end
      end

      # 大Key详情
      class BigKeyInfo < TencentCloud::Common::AbstractModel
        # @param DB: 所属的database
        # @type DB: Integer
        # @param Key: 大Key
        # @type Key: String
        # @param Type: 类型
        # @type Type: String
        # @param Size: 大小
        # @type Size: Integer
        # @param Updatetime: 数据时间戳
        # @type Updatetime: Integer

        attr_accessor :DB, :Key, :Type, :Size, :Updatetime

        def initialize(db=nil, key=nil, type=nil, size=nil, updatetime=nil)
          @DB = db
          @Key = key
          @Type = type
          @Size = size
          @Updatetime = updatetime
        end

        def deserialize(params)
          @DB = params['DB']
          @Key = params['Key']
          @Type = params['Type']
          @Size = params['Size']
          @Updatetime = params['Updatetime']
        end
      end

      # 大Key类型分布详情
      class BigKeyTypeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Count: 数量
        # @type Count: Integer
        # @param Size: 大小
        # @type Size: Integer
        # @param Updatetime: 时间戳
        # @type Updatetime: Integer

        attr_accessor :Type, :Count, :Size, :Updatetime

        def initialize(type=nil, count=nil, size=nil, updatetime=nil)
          @Type = type
          @Count = count
          @Size = size
          @Updatetime = updatetime
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
          @Size = params['Size']
          @Updatetime = params['Updatetime']
        end
      end

      # redis独享集群详细信息
      class CDCResource < TencentCloud::Common::AbstractModel
        # @param AppId: 用户的Appid
        # @type AppId: Integer
        # @param RegionId: 地域id
        # @type RegionId: Integer
        # @param ZoneId: 可用区id
        # @type ZoneId: Integer
        # @param RedisClusterId: redis独享集群id
        # @type RedisClusterId: String
        # @param PayMode: 计费模式，1-包年包月，0-按量计费
        # @type PayMode: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param AutoRenewFlag: 自动续费标识，0 - 默认状态（手动续费）；1 - 自动续费；2 - 明确不自动续费
        # @type AutoRenewFlag: Integer
        # @param ClusterName: 独享集群名称
        # @type ClusterName: String
        # @param StartTime: 实例创建时间
        # @type StartTime: String
        # @param EndTime: 实例到期时间
        # @type EndTime: String
        # @param Status: 集群状态：1-流程中，2-运行中，3-已隔离
        # @type Status: Integer
        # @param BaseBundles: 基础管控资源包
        # @type BaseBundles: Array
        # @param ResourceBundles: 资源包列表
        # @type ResourceBundles: Array
        # @param DedicatedClusterId: 所属本地专有集群id
        # @type DedicatedClusterId: String

        attr_accessor :AppId, :RegionId, :ZoneId, :RedisClusterId, :PayMode, :ProjectId, :AutoRenewFlag, :ClusterName, :StartTime, :EndTime, :Status, :BaseBundles, :ResourceBundles, :DedicatedClusterId

        def initialize(appid=nil, regionid=nil, zoneid=nil, redisclusterid=nil, paymode=nil, projectid=nil, autorenewflag=nil, clustername=nil, starttime=nil, endtime=nil, status=nil, basebundles=nil, resourcebundles=nil, dedicatedclusterid=nil)
          @AppId = appid
          @RegionId = regionid
          @ZoneId = zoneid
          @RedisClusterId = redisclusterid
          @PayMode = paymode
          @ProjectId = projectid
          @AutoRenewFlag = autorenewflag
          @ClusterName = clustername
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @BaseBundles = basebundles
          @ResourceBundles = resourcebundles
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @RedisClusterId = params['RedisClusterId']
          @PayMode = params['PayMode']
          @ProjectId = params['ProjectId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ClusterName = params['ClusterName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['BaseBundles'].nil?
            @BaseBundles = []
            params['BaseBundles'].each do |i|
              resourcebundle_tmp = ResourceBundle.new
              resourcebundle_tmp.deserialize(i)
              @BaseBundles << resourcebundle_tmp
            end
          end
          unless params['ResourceBundles'].nil?
            @ResourceBundles = []
            params['ResourceBundles'].each do |i|
              resourcebundle_tmp = ResourceBundle.new
              resourcebundle_tmp.deserialize(i)
              @ResourceBundles << resourcebundle_tmp
            end
          end
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # ChangeInstanceRole请求参数结构体
      class ChangeInstanceRoleRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 复制组ID。请登录[Redis控制台的全球复制](https://console.cloud.tencent.com/redis/replication)页面获取复制组 ID。
        # @type GroupId: String
        # @param InstanceId: 实例ID。请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param InstanceRole: 实例角色。
        # - rw：可读写。
        # - r：只读。
        # @type InstanceRole: String

        attr_accessor :GroupId, :InstanceId, :InstanceRole

        def initialize(groupid=nil, instanceid=nil, instancerole=nil)
          @GroupId = groupid
          @InstanceId = instanceid
          @InstanceRole = instancerole
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceId = params['InstanceId']
          @InstanceRole = params['InstanceRole']
        end
      end

      # ChangeInstanceRole返回参数结构体
      class ChangeInstanceRoleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程ID
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

      # ChangeMasterInstance请求参数结构体
      class ChangeMasterInstanceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 复制组ID。创建复制组时，系统自动分配的 ID，是复制组的唯一标识。例如：crs-rpl-m3zt****，请登录[Redis 控制台](https://console.cloud.tencent.com/redis/replication)的全球复制组列表获取复制组 ID。
        # @type GroupId: String
        # @param InstanceId: 指定待提升为主实例的只读实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。

        # @type InstanceId: String
        # @param ForceSwitch: 标识是否强制提主。
        # - true：强制提主。
        # - false：不强制提主。
        # @type ForceSwitch: Boolean

        attr_accessor :GroupId, :InstanceId, :ForceSwitch

        def initialize(groupid=nil, instanceid=nil, forceswitch=nil)
          @GroupId = groupid
          @InstanceId = instanceid
          @ForceSwitch = forceswitch
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceId = params['InstanceId']
          @ForceSwitch = params['ForceSwitch']
        end
      end

      # ChangeMasterInstance返回参数结构体
      class ChangeMasterInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程ID。
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

      # ChangeReplicaToMaster请求参数结构体
      class ChangeReplicaToMasterRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param GroupId: 副本节点组 ID，请通过接口[DescribeInstanceZoneInfo](https://cloud.tencent.com/document/product/239/50312)获取多 AZ备节点组的 ID 信息。单 AZ，则无需配置该参数。
        # @type GroupId: Integer

        attr_accessor :InstanceId, :GroupId

        def initialize(instanceid=nil, groupid=nil)
          @InstanceId = instanceid
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupId = params['GroupId']
        end
      end

      # ChangeReplicaToMaster返回参数结构体
      class ChangeReplicaToMasterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
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
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
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
        # @param TaskId: 任务ID
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
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Password: 实例访问密码。
        # - 免密访问：无需配置。
        # - 密码认证：必须配置。字符个数为[8,64]，至少包含小写字母、大写字母、数字和字符 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的2种，不能以"/"开头。
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
        # @param TaskId: 任务ID
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

      # CloneInstances请求参数结构体
      class CloneInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待克隆的源实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param GoodsNum: 单次克隆实例的数量。
        # - 包年包月每次购买最大数量为100。
        # - 按量计费每次购买最大数量为30。
        # @type GoodsNum: Integer
        # @param ZoneId: 克隆实例所属的可用区ID。当前所支持的可用区 ID，请参见[地域和可用区](https://cloud.tencent.com/document/product/239/4106) 。
        # @type ZoneId: Integer
        # @param BillingMode: 付费方式。<ul><li>0：按量计费。</li><li>1：包年包月。</li></ul>
        # @type BillingMode: Integer
        # @param Period: 购买实例时长。<ul><li>单位：月。</li><li>付费方式选择包年包月计费时，取值范围为[1,2,3,4,5,6,7,8,9,10,11,12,24,36,48,60]。</li><li>付费方式选择按量计费时，设置为1。</li></ul>
        # @type Period: Integer
        # @param SecurityGroupIdList: 安全组ID。请登录控制台，在<b>安全组</b>页面获取安全组 ID 信息。
        # @type SecurityGroupIdList: Array
        # @param BackupId: 克隆实例使用的备份ID。请通过接口[DescribeInstanceBackups](https://cloud.tencent.com/document/product/239/20011)获取备份ID。
        # @type BackupId: String
        # @param NoAuth: 配置克隆实例是否支持免密访问。开启 SSL 与外网均不支持免密访问。<ul><li>true：免密实例，</li><li>false：非免密实例。默认为非免密实例。</li></ul>
        # @type NoAuth: Boolean
        # @param VpcId: 配置克隆实例的私有网络ID。如果未配置该参数，默认选择基础网络。
        # @type VpcId: String
        # @param SubnetId: 配置克隆实例所属私有网络的子网。基础网络时该参数无需配置。
        # @type SubnetId: String
        # @param InstanceName: 克隆实例的名称。<br>仅支持长度小于60的中文、英文或者数字，短划线"-"、下划线"_"。</br>
        # @type InstanceName: String
        # @param Password: 克隆实例的访问密码。<ul><li>当输入参数<b>NoAuth</b>为<b>true</b>时，可不设置该参数。</li><li>当实例为Redis2.8、4.0和5.0时，其密码格式为：8-30个字符，至少包含小写字母、大写字母、数字和字符 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的2种，不能以"/"开头；</li><li>当实例为CKV 3.2时，其密码格式为：8-30个字符，必须包含字母和数字，且不包含其他字符。</li></ul>
        # @type Password: String
        # @param AutoRenew: 自动续费标识。<ul><li>0：默认状态，手动续费。</li><li>1：自动续费。</li><li>2：不自动续费，到期自动隔离。</li></ul>
        # @type AutoRenew: Integer
        # @param VPort: 用户自定义的端口，默认为6379，取值范围[1024,65535]。
        # @type VPort: Integer
        # @param NodeSet: 实例的节点信息。<ul><li>目前支持配置节点的类型（主节点或者副本节点），及其节点的可用区信息。具体信息，请参见[RedisNodeInfo](https://cloud.tencent.com/document/product/239/20022#RedisNodeInfo)。</li><li>单可用区部署可不配置该参数。</li></ul>
        # @type NodeSet: Array
        # @param ProjectId: 项目 ID。登录[Redis 控制台](https://console.cloud.tencent.com/redis#/)，可在右上角的<b>账号中心</b> > <b>项目管理</b>中查找项目ID。
        # @type ProjectId: Integer
        # @param ResourceTags: 克隆实例需绑定的标签。
        # @type ResourceTags: Array
        # @param TemplateId: 指定克隆实例相关的参数模板 ID。
        # - 若不配置该参数，则系统会依据所选择的兼容版本及架构，自动适配对应的默认模板。
        # - 请通过[DescribeParamTemplates](https://cloud.tencent.com/document/product/239/58750)接口，查询实例的参数模板列表，获取模板 ID 编号。
        # @type TemplateId: String
        # @param AlarmPolicyList: 指定克隆实例的告警策略 ID。请登录[腾讯云可观测平台控制台](https://console.cloud.tencent.com/monitor/alarm2/policy)，在 <b>告警管理</b> > <b>策略管理</b>页面获取策略 ID 信息。
        # @type AlarmPolicyList: Array
        # @param CloneTime: 克隆指定恢复数据的时间。
        # 仅支持已开通秒级备份的实例
        # @type CloneTime: String

        attr_accessor :InstanceId, :GoodsNum, :ZoneId, :BillingMode, :Period, :SecurityGroupIdList, :BackupId, :NoAuth, :VpcId, :SubnetId, :InstanceName, :Password, :AutoRenew, :VPort, :NodeSet, :ProjectId, :ResourceTags, :TemplateId, :AlarmPolicyList, :CloneTime

        def initialize(instanceid=nil, goodsnum=nil, zoneid=nil, billingmode=nil, period=nil, securitygroupidlist=nil, backupid=nil, noauth=nil, vpcid=nil, subnetid=nil, instancename=nil, password=nil, autorenew=nil, vport=nil, nodeset=nil, projectid=nil, resourcetags=nil, templateid=nil, alarmpolicylist=nil, clonetime=nil)
          @InstanceId = instanceid
          @GoodsNum = goodsnum
          @ZoneId = zoneid
          @BillingMode = billingmode
          @Period = period
          @SecurityGroupIdList = securitygroupidlist
          @BackupId = backupid
          @NoAuth = noauth
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceName = instancename
          @Password = password
          @AutoRenew = autorenew
          @VPort = vport
          @NodeSet = nodeset
          @ProjectId = projectid
          @ResourceTags = resourcetags
          @TemplateId = templateid
          @AlarmPolicyList = alarmpolicylist
          @CloneTime = clonetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GoodsNum = params['GoodsNum']
          @ZoneId = params['ZoneId']
          @BillingMode = params['BillingMode']
          @Period = params['Period']
          @SecurityGroupIdList = params['SecurityGroupIdList']
          @BackupId = params['BackupId']
          @NoAuth = params['NoAuth']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceName = params['InstanceName']
          @Password = params['Password']
          @AutoRenew = params['AutoRenew']
          @VPort = params['VPort']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              redisnodeinfo_tmp = RedisNodeInfo.new
              redisnodeinfo_tmp.deserialize(i)
              @NodeSet << redisnodeinfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @TemplateId = params['TemplateId']
          @AlarmPolicyList = params['AlarmPolicyList']
          @CloneTime = params['CloneTime']
        end
      end

      # CloneInstances返回参数结构体
      class CloneInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 请求任务 ID。
        # @type DealId: String
        # @param InstanceIds: 克隆实例的 ID。
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

      # CloseSSL请求参数结构体
      class CloseSSLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CloseSSL返回参数结构体
      class CloseSSLResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
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

      # 命令耗时
      class CommandTake < TencentCloud::Common::AbstractModel
        # @param Cmd: 命令名。
        # @type Cmd: String
        # @param Took: 耗时时长。单位：ms。
        # @type Took: Integer

        attr_accessor :Cmd, :Took

        def initialize(cmd=nil, took=nil)
          @Cmd = cmd
          @Took = took
        end

        def deserialize(params)
          @Cmd = params['Cmd']
          @Took = params['Took']
        end
      end

      # CreateInstanceAccount请求参数结构体
      class CreateInstanceAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param AccountName: 自定义的访问数据库的账号名称。
        # - 仅由字母、数字、下划线、中划线组成。
        # - 长度不能大于32位。
        # @type AccountName: String
        # @param AccountPassword: 设置自定义账号的密码。密码复杂度要求如下：
        # - 字符个数为[8,64]。
        # - 至少包含小写字母、大写字母、数字和字符 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的两种。
        # - 不能以"/"开头。
        # @type AccountPassword: String
        # @param ReadonlyPolicy: 指定账号的读请求路由分发至主节点或副本节点。未开启副本只读，不支持选择副本节点。
        # - master：主节点
        # - replication：副本节点
        # @type ReadonlyPolicy: Array
        # @param Privilege: 账户读写权限，支持选择只读与读写权限。
        # - r：只读
        # - rw: 读写权限
        # @type Privilege: String
        # @param Remark: 子账号描述信息，长度[0,64] 字节，支持中文。
        # @type Remark: String

        attr_accessor :InstanceId, :AccountName, :AccountPassword, :ReadonlyPolicy, :Privilege, :Remark

        def initialize(instanceid=nil, accountname=nil, accountpassword=nil, readonlypolicy=nil, privilege=nil, remark=nil)
          @InstanceId = instanceid
          @AccountName = accountname
          @AccountPassword = accountpassword
          @ReadonlyPolicy = readonlypolicy
          @Privilege = privilege
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AccountName = params['AccountName']
          @AccountPassword = params['AccountPassword']
          @ReadonlyPolicy = params['ReadonlyPolicy']
          @Privilege = params['Privilege']
          @Remark = params['Remark']
        end
      end

      # CreateInstanceAccount返回参数结构体
      class CreateInstanceAccountResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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
        # @param TypeId: 实例类型。
        # <ul><li>2：Redis 2.8 内存版（标准架构）。</li><li>3：CKV 3.2 内存版（标准架构）。</li><li>4：CKV 3.2 内存版（集群架构）。</li><li>6：Redis 4.0 内存版（标准架构）。</li><li>7：Redis 4.0 内存版（集群架构）。</li><li>8：Redis 5.0 内存版（标准架构）。</li><li>9：Redis 5.0 内存版（集群架构）。</li><li>15：Redis 6.2 内存版（标准架构）。</li><li>16：Redis 6.2 内存版（集群架构）。</li><li>17：Redis 7.0 内存版（标准架构）。</li><li>18：Redis 7.0 内存版（集群架构）。</li>说明：CKV 版本当前有存量用户使用，暂时保留。</ul>
        # @type TypeId: Integer
        # @param MemSize: 内存容量，单位为MB， 数值需为1024的整数倍。具体规格，请通过 [DescribeProductInfo](https://cloud.tencent.com/document/api/239/30600) 接口查询全地域的售卖规格。
        # - **TypeId**为标准架构时，**MemSize**是实例总内存容量；
        # - **TypeId**为集群架构时，**MemSize**是单分片内存容量。
        # @type MemSize: Integer
        # @param GoodsNum: 实例数量，单次购买实例数量。具体信息，请通过 [DescribeProductInfo](https://cloud.tencent.com/document/api/239/30600) 接口查询全地域的售卖规格。
        # @type GoodsNum: Integer
        # @param Period: 购买实例的时长。
        # - 若 **BillingMode**为**1**，即计费方式为包年包月时，需设置该参数，指定所购买实例的时长。单位：月，取值范围 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        # - 若 **BillingMode**为**0**，即计费方式为按量计费时，该参数配置为1。
        # @type Period: Integer
        # @param BillingMode: 计费方式。
        # - 0：按量计费。
        # - 1：包年包月。
        # @type BillingMode: Integer
        # @param ZoneId: 实例所属的可用区ID，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        # @type ZoneId: Integer
        # @param Password: 访问实例的密码。
        # - 当输入参数**NoAuth**为**true**时，指设置实例为免密码访问，Password可不用配置，否则Password为必填参数。
        # - 当实例类型**TypeId**为Redis 2.8 内存版标准架构、Redis 4.0、5.0、6.0内存版标准架构或集群架构时，其密码复杂度要求为：8-64个字符，至少包含小写字母、大写字母、数字和字符()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的2种，不能以"/"开头。
        # - 当实例类型**TypeId**为CKV 3.2 内存版标准架构或集群架构时，其密码复杂度为：8-30个字符，必须包含字母和数字，且不包含其他字符。
        # @type Password: String
        # @param VpcId: 私有网络ID。如果不配置该参数则默认选择基础网络。请登录 [私有网络](https://console.cloud.tencent.com/vpc)控制台查询具体的ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络VPC的子网。基础网络下， 该参数无需配置。请登录 [私有网络](https://console.cloud.tencent.com/vpc)控制台查询子网列表获取具体的 ID。
        # @type SubnetId: String
        # @param ProjectId: 项目 ID。请登录[Redis控制台](https://console.cloud.tencent.com/redis#/)，在右上角的账户信息菜单中，选择**项目管理**查询项目 ID。
        # @type ProjectId: Integer
        # @param AutoRenew: 自动续费标识。
        # - 0：默认状态（手动续费）。
        # - 1：自动续费。
        # - 2：到期不续费。
        # @type AutoRenew: Integer
        # @param SecurityGroupIdList: 安全组 ID 数组。
        # - 安全组是一种虚拟防火墙，对云数据库实例的网络访问进行控制。创建实例时，建议绑定相应的安全组。
        # - 请通过 [DescribeInstanceSecurityGroup](https://cloud.tencent.com/document/product/239/34447) 接口获取实例的安全组 ID。
        # @type SecurityGroupIdList: Array
        # @param VPort: 用户自定义的网络端口。默认为6379，范围为 [1024,65535]。
        # @type VPort: Integer
        # @param RedisShardNum: 实例分片数量。
        # - 标准版实例无需配置该参数。
        # - 集群版实例，分片数量范围为：[1、3、5、8、12、16、24、32、40、48、64、80、96、128]。
        # @type RedisShardNum: Integer
        # @param RedisReplicasNum: 实例副本数量。
        # - Redis 内存版 4.0、5.0、6.2 标准架构和集群架构支持副本数量范围为[1,5]。
        # - Redis 2.8标准版、CKV标准版只支持1副本。
        # @type RedisReplicasNum: Integer
        # @param ReplicasReadonly: 标识实例是否需支持副本只读。
        # - Redis 2.8 标准版、CKV标准版不支持副本只读。
        # - 开启副本只读，实例将自动读写分离，写请求路由到主节点，读请求路由到副本节点。
        # - 如需开启副本只读，建议副本数量大于等于2。
        # @type ReplicasReadonly: Boolean
        # @param InstanceName: 实例名称。命名要求：仅支持长度小于60的中文、英文或者数字，短划线"-"、下划线"_"。
        # @type InstanceName: String
        # @param NoAuth: 配置实例是否支持免密码访问。
        # - true：免密访问实例。
        # - false：非免密访问实例。默认为非免密方式，仅VPC网络的实例支持免密码访问。
        # @type NoAuth: Boolean
        # @param NodeSet: 实例的节点信息，包含节点 ID、节点类型、节点可用区 ID等。具体信息，请参见[RedisNodeInfo ](https://cloud.tencent.com/document/product/239/20022)。
        # 目前支持传入节点的类型（主节点或者副本节点），节点的可用区。单可用区部署不需要传递此参数。
        # @type NodeSet: Array
        # @param ResourceTags: 给实例设定标签。
        # @type ResourceTags: Array
        # @param ZoneName: 指定实例所属的可用区名称。具体信息，请参见[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        # @type ZoneName: String
        # @param TemplateId: 指定实例相关的参数模板 ID。
        # - 若不配置该参数，则系统会依据所选择的兼容版本及架构，自动适配对应的默认模板。
        # - 请通过[DescribeParamTemplates](https://cloud.tencent.com/document/product/239/58750)接口，查询实例的参数模板列表，获取模板 ID 编号。
        # @type TemplateId: String
        # @param DryRun: 内部参数，标识创建实例是否需要检查。
        # - false ：默认值。发送正常请求，通过检查后直接创建实例。
        # - true：发送检查请求，不会创建实例。
        # @type DryRun: Boolean
        # @param ProductVersion: 指定实例的产品版本。
        # - local：本地盘版。
        # - cloud：云盘版，
        # - cdc：独享集群版。如果不传默认发货为本地盘版本。
        # @type ProductVersion: String
        # @param RedisClusterId: 独享集群 ID。当**ProductVersion**设置为**cdc**时，该参数必须设置。
        # @type RedisClusterId: String
        # @param AlarmPolicyList: 告警策略 ID 数组。

        # - 请登录[腾讯云可观测平台-告警管理-策略管理](https://console.cloud.tencent.com/monitor/alarm/policy)获取告警策略 ID。
        # - 若不配置该参数，则绑定默认告警策略。默认告警策略具体信息，请登录[腾讯云可观测平台-告警管理-策略管理](https://console.cloud.tencent.com/monitor/alarm/policy)查看。
        # @type AlarmPolicyList: Array

        attr_accessor :TypeId, :MemSize, :GoodsNum, :Period, :BillingMode, :ZoneId, :Password, :VpcId, :SubnetId, :ProjectId, :AutoRenew, :SecurityGroupIdList, :VPort, :RedisShardNum, :RedisReplicasNum, :ReplicasReadonly, :InstanceName, :NoAuth, :NodeSet, :ResourceTags, :ZoneName, :TemplateId, :DryRun, :ProductVersion, :RedisClusterId, :AlarmPolicyList

        def initialize(typeid=nil, memsize=nil, goodsnum=nil, period=nil, billingmode=nil, zoneid=nil, password=nil, vpcid=nil, subnetid=nil, projectid=nil, autorenew=nil, securitygroupidlist=nil, vport=nil, redisshardnum=nil, redisreplicasnum=nil, replicasreadonly=nil, instancename=nil, noauth=nil, nodeset=nil, resourcetags=nil, zonename=nil, templateid=nil, dryrun=nil, productversion=nil, redisclusterid=nil, alarmpolicylist=nil)
          @TypeId = typeid
          @MemSize = memsize
          @GoodsNum = goodsnum
          @Period = period
          @BillingMode = billingmode
          @ZoneId = zoneid
          @Password = password
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProjectId = projectid
          @AutoRenew = autorenew
          @SecurityGroupIdList = securitygroupidlist
          @VPort = vport
          @RedisShardNum = redisshardnum
          @RedisReplicasNum = redisreplicasnum
          @ReplicasReadonly = replicasreadonly
          @InstanceName = instancename
          @NoAuth = noauth
          @NodeSet = nodeset
          @ResourceTags = resourcetags
          @ZoneName = zonename
          @TemplateId = templateid
          @DryRun = dryrun
          @ProductVersion = productversion
          @RedisClusterId = redisclusterid
          @AlarmPolicyList = alarmpolicylist
        end

        def deserialize(params)
          @TypeId = params['TypeId']
          @MemSize = params['MemSize']
          @GoodsNum = params['GoodsNum']
          @Period = params['Period']
          @BillingMode = params['BillingMode']
          @ZoneId = params['ZoneId']
          @Password = params['Password']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @AutoRenew = params['AutoRenew']
          @SecurityGroupIdList = params['SecurityGroupIdList']
          @VPort = params['VPort']
          @RedisShardNum = params['RedisShardNum']
          @RedisReplicasNum = params['RedisReplicasNum']
          @ReplicasReadonly = params['ReplicasReadonly']
          @InstanceName = params['InstanceName']
          @NoAuth = params['NoAuth']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              redisnodeinfo_tmp = RedisNodeInfo.new
              redisnodeinfo_tmp.deserialize(i)
              @NodeSet << redisnodeinfo_tmp
            end
          end
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @ZoneName = params['ZoneName']
          @TemplateId = params['TemplateId']
          @DryRun = params['DryRun']
          @ProductVersion = params['ProductVersion']
          @RedisClusterId = params['RedisClusterId']
          @AlarmPolicyList = params['AlarmPolicyList']
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 交易的ID。
        # @type DealId: String
        # @param InstanceIds: 实例ID。
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

      # CreateParamTemplate请求参数结构体
      class CreateParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 参数模板名称。
        # @type Name: String
        # @param Description: 参数模板描述。
        # @type Description: String
        # @param ProductType: 产品类型。
        # - 2：Redis 2.8 内存版（标准架构）。
        # - 6：Redis 4.0 内存版（标准架构）。
        # - 7：Redis 4.0 内存版（集群架构）。
        # - 8：Redis 5.0 内存版（标准架构）。
        # - 9：Redis 5.0 内存版（集群架构）。
        # - 15：Redis 6.2 内存版（标准架构）。
        # - 16：Redis 6.2 内存版（集群架构）。
        # - 17：Redis 7.0 内存版（标准架构）。
        # - 18：Redis 7.0 内存版（集群架构）。
        # @type ProductType: Integer
        # @param TemplateId: 源参数模板 ID。
        # @type TemplateId: String
        # @param ParamList: 参数列表。
        # @type ParamList: Array

        attr_accessor :Name, :Description, :ProductType, :TemplateId, :ParamList

        def initialize(name=nil, description=nil, producttype=nil, templateid=nil, paramlist=nil)
          @Name = name
          @Description = description
          @ProductType = producttype
          @TemplateId = templateid
          @ParamList = paramlist
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @ProductType = params['ProductType']
          @TemplateId = params['TemplateId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              instanceparam_tmp = InstanceParam.new
              instanceparam_tmp.deserialize(i)
              @ParamList << instanceparam_tmp
            end
          end
        end
      end

      # CreateParamTemplate返回参数结构体
      class CreateParamTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateReplicationGroup请求参数结构体
      class CreateReplicationGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定复制组中的主实例ID。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param GroupName: 配置复制组名称。仅支持长度为2-64个字符的中文、英文、数字、下划线_、分隔符-。
        # @type GroupName: String
        # @param Remark: 备注信息。
        # @type Remark: String

        attr_accessor :InstanceId, :GroupName, :Remark

        def initialize(instanceid=nil, groupname=nil, remark=nil)
          @InstanceId = instanceid
          @GroupName = groupname
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupName = params['GroupName']
          @Remark = params['Remark']
        end
      end

      # CreateReplicationGroup返回参数结构体
      class CreateReplicationGroupResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程ID。
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

      # 延时分布详情
      class DelayDistribution < TencentCloud::Common::AbstractModel
        # @param Ladder: 指延时分布阶梯，其与延时区间的对应关系如下所示。
        # - 1：[0ms,1ms]。
        # - 5： [1ms,5ms]。
        # - 10： [5ms,10ms]。
        # - 50： [10ms,50ms]。
        # - 200：[50ms,200ms]。
        # - -1： [200ms,∞]。
        # @type Ladder: Integer
        # @param Size: 延时处于当前分布阶梯的命令数量，单位：个。
        # @type Size: Integer
        # @param Updatetime: 修改时间。
        # @type Updatetime: Integer

        attr_accessor :Ladder, :Size, :Updatetime

        def initialize(ladder=nil, size=nil, updatetime=nil)
          @Ladder = ladder
          @Size = size
          @Updatetime = updatetime
        end

        def deserialize(params)
          @Ladder = params['Ladder']
          @Size = params['Size']
          @Updatetime = params['Updatetime']
        end
      end

      # DeleteInstanceAccount请求参数结构体
      class DeleteInstanceAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param AccountName: 子账号名称。请登录[Redis控制台](https://console.cloud.tencent.com/redis)，切换至**账号管理**页面获取。具体信息，请参见[管理账号](https://cloud.tencent.com/document/product/239/36710)。
        # @type AccountName: String

        attr_accessor :InstanceId, :AccountName

        def initialize(instanceid=nil, accountname=nil)
          @InstanceId = instanceid
          @AccountName = accountname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AccountName = params['AccountName']
        end
      end

      # DeleteInstanceAccount返回参数结构体
      class DeleteInstanceAccountResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # DeleteParamTemplate请求参数结构体
      class DeleteParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteParamTemplate返回参数结构体
      class DeleteParamTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReplicationInstance请求参数结构体
      class DeleteReplicationInstanceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 复制组ID。请登录[Redis控制台的全球复制](https://console.cloud.tencent.com/redis/replication)页面获取复制组 ID。
        # @type GroupId: String
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param SyncType: 数据同步类型。
        # - true：需要数据强同步。
        # - false：不需要强同步，仅限删除主实例。
        # @type SyncType: Boolean

        attr_accessor :GroupId, :InstanceId, :SyncType

        def initialize(groupid=nil, instanceid=nil, synctype=nil)
          @GroupId = groupid
          @InstanceId = instanceid
          @SyncType = synctype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceId = params['InstanceId']
          @SyncType = params['SyncType']
        end
      end

      # DeleteReplicationInstance返回参数结构体
      class DeleteReplicationInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Float
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

      # DescribeAutoBackupConfig请求参数结构体
      class DescribeAutoBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
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
        # @param AutoBackupType: 该参数因兼容性问题暂时保留，请忽略。
        # @type AutoBackupType: Integer
        # @param WeekDays: 备份周期，默认为每天自动备份，Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        # @type WeekDays: Array
        # @param TimePeriod: 备份任务发起时间段。
        # @type TimePeriod: String
        # @param BackupStorageDays: 全量备份文件保存天数。默认为7天。如需保存更多天数，请[提交工单](https://console.cloud.tencent.com/workorder/category)申请。
        # @type BackupStorageDays: Integer
        # @param BinlogStorageDays: 该参数不再使用，请忽略。
        # @type BinlogStorageDays: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoBackupType, :WeekDays, :TimePeriod, :BackupStorageDays, :BinlogStorageDays, :RequestId

        def initialize(autobackuptype=nil, weekdays=nil, timeperiod=nil, backupstoragedays=nil, binlogstoragedays=nil, requestid=nil)
          @AutoBackupType = autobackuptype
          @WeekDays = weekdays
          @TimePeriod = timeperiod
          @BackupStorageDays = backupstoragedays
          @BinlogStorageDays = binlogstoragedays
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoBackupType = params['AutoBackupType']
          @WeekDays = params['WeekDays']
          @TimePeriod = params['TimePeriod']
          @BackupStorageDays = params['BackupStorageDays']
          @BinlogStorageDays = params['BinlogStorageDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDetail请求参数结构体
      class DescribeBackupDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupId: 备份 ID，可通过接口 [DescribeInstanceBackups](https://cloud.tencent.com/document/product/239/20011) 返回的参数 **RedisBackupSet** 获取。
        # @type BackupId: String

        attr_accessor :InstanceId, :BackupId

        def initialize(instanceid=nil, backupid=nil)
          @InstanceId = instanceid
          @BackupId = backupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
        end
      end

      # DescribeBackupDetail返回参数结构体
      class DescribeBackupDetailResponse < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份 ID。
        # @type BackupId: String
        # @param StartTime: 备份开始时间。
        # @type StartTime: String
        # @param EndTime: 备份结束时间。
        # @type EndTime: String
        # @param BackupType: 备份方式。

        # - 1：手动备份。
        # -  0：自动备份。
        # @type BackupType: String
        # @param Status: 备份状态。

        # - 1：备份被其它流程锁定。
        # - 2：备份正常，没有被任何流程锁定。
        # - -1：备份已过期。
        # - 3：备份正在被导出。
        # - 4：备份导出成功。
        # @type Status: Integer
        # @param Remark: 备份的备注信息。
        # @type Remark: String
        # @param Locked: 备份是否被锁定。

        # - 0：未被锁定。
        # - 1：已被锁定。
        # @type Locked: Integer
        # @param BackupSize: 备份文件大小。单位：Byte。
        # @type BackupSize: Integer
        # @param InstanceType: 实例类型。
        # @type InstanceType: Integer
        # @param MemSize: 单分片内存规格大小，单位：MB。
        # @type MemSize: Integer
        # @param ShardNum: 分片数量。
        # @type ShardNum: Integer
        # @param ReplicasNum: 副本数量。
        # @type ReplicasNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupId, :StartTime, :EndTime, :BackupType, :Status, :Remark, :Locked, :BackupSize, :InstanceType, :MemSize, :ShardNum, :ReplicasNum, :RequestId

        def initialize(backupid=nil, starttime=nil, endtime=nil, backuptype=nil, status=nil, remark=nil, locked=nil, backupsize=nil, instancetype=nil, memsize=nil, shardnum=nil, replicasnum=nil, requestid=nil)
          @BackupId = backupid
          @StartTime = starttime
          @EndTime = endtime
          @BackupType = backuptype
          @Status = status
          @Remark = remark
          @Locked = locked
          @BackupSize = backupsize
          @InstanceType = instancetype
          @MemSize = memsize
          @ShardNum = shardnum
          @ReplicasNum = replicasnum
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BackupType = params['BackupType']
          @Status = params['Status']
          @Remark = params['Remark']
          @Locked = params['Locked']
          @BackupSize = params['BackupSize']
          @InstanceType = params['InstanceType']
          @MemSize = params['MemSize']
          @ShardNum = params['ShardNum']
          @ReplicasNum = params['ReplicasNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadRestriction请求参数结构体
      class DescribeBackupDownloadRestrictionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBackupDownloadRestriction返回参数结构体
      class DescribeBackupDownloadRestrictionResponse < TencentCloud::Common::AbstractModel
        # @param LimitType: 下载备份文件的网络限制类型：

        # - NoLimit：不限制，腾讯云内外网均可以下载备份文件。
        # -  LimitOnlyIntranet：仅腾讯云自动分配的内网地址可下载备份文件。
        # - Customize：指用户自定义的私有网络可下载备份文件。
        # @type LimitType: String
        # @param VpcComparisonSymbol: 该参数仅支持输入 In，表示自定义的**LimitVpc**可以下载备份文件。
        # @type VpcComparisonSymbol: String
        # @param IpComparisonSymbol: 标识自定义的 LimitIp 地址是否可下载备份文件。

        # - In: 自定义的 IP 地址可以下载。
        # - NotIn: 自定义的 IP 不可以下载。
        # @type IpComparisonSymbol: String
        # @param LimitVpc: 自定义的可下载备份文件的 VPC ID。当参数**LimitType**为**Customize **时，显示该参数。
        # @type LimitVpc: Array
        # @param LimitIp: 自定义的可下载备份文件的 VPC IP 地址。当参数**LimitType**为**Customize **时，显示该参数。
        # @type LimitIp: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LimitType, :VpcComparisonSymbol, :IpComparisonSymbol, :LimitVpc, :LimitIp, :RequestId

        def initialize(limittype=nil, vpccomparisonsymbol=nil, ipcomparisonsymbol=nil, limitvpc=nil, limitip=nil, requestid=nil)
          @LimitType = limittype
          @VpcComparisonSymbol = vpccomparisonsymbol
          @IpComparisonSymbol = ipcomparisonsymbol
          @LimitVpc = limitvpc
          @LimitIp = limitip
          @RequestId = requestid
        end

        def deserialize(params)
          @LimitType = params['LimitType']
          @VpcComparisonSymbol = params['VpcComparisonSymbol']
          @IpComparisonSymbol = params['IpComparisonSymbol']
          unless params['LimitVpc'].nil?
            @LimitVpc = []
            params['LimitVpc'].each do |i|
              backuplimitvpcitem_tmp = BackupLimitVpcItem.new
              backuplimitvpcitem_tmp.deserialize(i)
              @LimitVpc << backuplimitvpcitem_tmp
            end
          end
          @LimitIp = params['LimitIp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupUrl请求参数结构体
      class DescribeBackupUrlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupId: 备份 ID，可通过 [DescribeInstanceBackups ](https://cloud.tencent.com/document/product/239/20011)接口返回的参数 RedisBackupSet 获取。
        # @type BackupId: String
        # @param LimitType: 下载备份文件的网络限制类型，如果不配置该参数，则使用用户自定义的配置。
        # - NoLimit：不限制，腾讯云内外网均可以下载备份文件。
        # -  LimitOnlyIntranet：仅腾讯云自动分配的内网地址可下载备份文件。
        # - Customize：指用户自定义的私有网络可下载备份文件。
        # @type LimitType: String
        # @param VpcComparisonSymbol: 该参数仅支持输入 In，表示自定义的**LimitVpc**可以下载备份文件。
        # @type VpcComparisonSymbol: String
        # @param IpComparisonSymbol: 标识自定义的 LimitIp 地址是否可下载备份文件。
        # - In: 自定义的 IP 地址可以下载。默认为 In。
        # - NotIn: 自定义的 IP 不可以下载。
        # @type IpComparisonSymbol: String
        # @param LimitVpc: 自定义的可下载备份文件的 VPC ID。当参数**LimitType**为**Customize **时，需配置该参数。
        # @type LimitVpc: Array
        # @param LimitIp: 自定义的可下载备份文件的 VPC IP 地址。当参数**LimitType**为**Customize **时，需配置该参数。
        # @type LimitIp: Array

        attr_accessor :InstanceId, :BackupId, :LimitType, :VpcComparisonSymbol, :IpComparisonSymbol, :LimitVpc, :LimitIp

        def initialize(instanceid=nil, backupid=nil, limittype=nil, vpccomparisonsymbol=nil, ipcomparisonsymbol=nil, limitvpc=nil, limitip=nil)
          @InstanceId = instanceid
          @BackupId = backupid
          @LimitType = limittype
          @VpcComparisonSymbol = vpccomparisonsymbol
          @IpComparisonSymbol = ipcomparisonsymbol
          @LimitVpc = limitvpc
          @LimitIp = limitip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
          @LimitType = params['LimitType']
          @VpcComparisonSymbol = params['VpcComparisonSymbol']
          @IpComparisonSymbol = params['IpComparisonSymbol']
          unless params['LimitVpc'].nil?
            @LimitVpc = []
            params['LimitVpc'].each do |i|
              backuplimitvpcitem_tmp = BackupLimitVpcItem.new
              backuplimitvpcitem_tmp.deserialize(i)
              @LimitVpc << backuplimitvpcitem_tmp
            end
          end
          @LimitIp = params['LimitIp']
        end
      end

      # DescribeBackupUrl返回参数结构体
      class DescribeBackupUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 外网下载地址（6小时内链接有效），该字段正在逐步废弃中。
        # @type DownloadUrl: Array
        # @param InnerDownloadUrl: 内网下载地址（6小时内链接有效），该字段正在逐步废弃中。
        # @type InnerDownloadUrl: Array
        # @param Filenames: 文件名称，该字段正在逐步废弃中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filenames: Array
        # @param BackupInfos: 备份文件信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :InnerDownloadUrl, :Filenames, :BackupInfos, :RequestId

        def initialize(downloadurl=nil, innerdownloadurl=nil, filenames=nil, backupinfos=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @InnerDownloadUrl = innerdownloadurl
          @Filenames = filenames
          @BackupInfos = backupinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @InnerDownloadUrl = params['InnerDownloadUrl']
          @Filenames = params['Filenames']
          unless params['BackupInfos'].nil?
            @BackupInfos = []
            params['BackupInfos'].each do |i|
              backupdownloadinfo_tmp = BackupDownloadInfo.new
              backupdownloadinfo_tmp.deserialize(i)
              @BackupInfos << backupdownloadinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBandwidthRange请求参数结构体
      class DescribeBandwidthRangeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBandwidthRange返回参数结构体
      class DescribeBandwidthRangeResponse < TencentCloud::Common::AbstractModel
        # @param BaseBandwidth: 标准带宽。指购买实例时，系统为每个节点分配的带宽。
        # @type BaseBandwidth: Integer
        # @param AddBandwidth: 指实例的附加带宽。标准带宽不满足需求的情况下，用户可自行增加的带宽。<ul><li>开启副本只读时，实例总带宽 = 附加带宽 * 分片数 + 标准带宽 * 分片数 * Max ([只读副本数量, 1])，标准架构的分片数 = 1。</li><li>没有开启副本只读时，实例总带宽 = 附加带宽 * 分片数 + 标准带宽 * 分片数，标准架构的分片数 = 1。</li></ul>
        # @type AddBandwidth: Integer
        # @param MinAddBandwidth: 附加带宽设置下限。
        # @type MinAddBandwidth: Integer
        # @param MaxAddBandwidth: 附加带宽设置上限。
        # @type MaxAddBandwidth: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaseBandwidth, :AddBandwidth, :MinAddBandwidth, :MaxAddBandwidth, :RequestId

        def initialize(basebandwidth=nil, addbandwidth=nil, minaddbandwidth=nil, maxaddbandwidth=nil, requestid=nil)
          @BaseBandwidth = basebandwidth
          @AddBandwidth = addbandwidth
          @MinAddBandwidth = minaddbandwidth
          @MaxAddBandwidth = maxaddbandwidth
          @RequestId = requestid
        end

        def deserialize(params)
          @BaseBandwidth = params['BaseBandwidth']
          @AddBandwidth = params['AddBandwidth']
          @MinAddBandwidth = params['MinAddBandwidth']
          @MaxAddBandwidth = params['MaxAddBandwidth']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCommonDBInstances请求参数结构体
      class DescribeCommonDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: vpc网络ID信息列表
        # @type VpcIds: Array
        # @param SubnetIds: 子网ID信息列表
        # @type SubnetIds: Array
        # @param PayMode: 计费类型过滤列表；0表示包年包月，1表示按量计费
        # @type PayMode: Integer
        # @param InstanceIds: 实例ID过滤信息列表，数组最大长度限制为100
        # @type InstanceIds: Array
        # @param InstanceNames: 实例名称过滤信息列表
        # @type InstanceNames: Array
        # @param Status: 实例状态信息过滤列表
        # @type Status: Array
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderByType: 排序方式
        # @type OrderByType: String
        # @param Vips: 实例vip信息列表
        # @type Vips: Array
        # @param UniqVpcIds: vpc网络ID信息列表
        # @type UniqVpcIds: Array
        # @param UniqSubnetIds: 子网统一ID列表
        # @type UniqSubnetIds: Array
        # @param Limit: 数量限制，默认推荐100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer

        attr_accessor :VpcIds, :SubnetIds, :PayMode, :InstanceIds, :InstanceNames, :Status, :OrderBy, :OrderByType, :Vips, :UniqVpcIds, :UniqSubnetIds, :Limit, :Offset

        def initialize(vpcids=nil, subnetids=nil, paymode=nil, instanceids=nil, instancenames=nil, status=nil, orderby=nil, orderbytype=nil, vips=nil, uniqvpcids=nil, uniqsubnetids=nil, limit=nil, offset=nil)
          @VpcIds = vpcids
          @SubnetIds = subnetids
          @PayMode = paymode
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @Status = status
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Vips = vips
          @UniqVpcIds = uniqvpcids
          @UniqSubnetIds = uniqsubnetids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
          @SubnetIds = params['SubnetIds']
          @PayMode = params['PayMode']
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @Status = params['Status']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Vips = params['Vips']
          @UniqVpcIds = params['UniqVpcIds']
          @UniqSubnetIds = params['UniqSubnetIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCommonDBInstances返回参数结构体
      class DescribeCommonDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例数
        # @type TotalCount: Integer
        # @param InstanceDetails: 实例信息
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
              rediscommoninstancelist_tmp = RedisCommonInstanceList.new
              rediscommoninstancelist_tmp.deserialize(i)
              @InstanceDetails << rediscommoninstancelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：redis。
        # @type Product: String
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
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
        # @param VIP: 实例内网IPv4地址。
        # @type VIP: String
        # @param VPort: 内网端口。
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

      # DescribeGlobalReplicationArea请求参数结构体
      class DescribeGlobalReplicationAreaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeGlobalReplicationArea返回参数结构体
      class DescribeGlobalReplicationAreaResponse < TencentCloud::Common::AbstractModel
        # @param AvailableRegions: 可用地域信息
        # @type AvailableRegions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableRegions, :RequestId

        def initialize(availableregions=nil, requestid=nil)
          @AvailableRegions = availableregions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AvailableRegions'].nil?
            @AvailableRegions = []
            params['AvailableRegions'].each do |i|
              availableregion_tmp = AvailableRegion.new
              availableregion_tmp.deserialize(i)
              @AvailableRegions << availableregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceAccount请求参数结构体
      class DescribeInstanceAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Limit: 分页大小。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。取Limit整数倍。计算公式：offset=limit*(页码-1)。
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

      # DescribeInstanceAccount返回参数结构体
      class DescribeInstanceAccountResponse < TencentCloud::Common::AbstractModel
        # @param Accounts: 账号详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Accounts: Array
        # @param TotalCount: 账号个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Accounts, :TotalCount, :RequestId

        def initialize(accounts=nil, totalcount=nil, requestid=nil)
          @Accounts = accounts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceBackups请求参数结构体
      class DescribeInstanceBackupsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页输出的备份列表大小。默认大小为20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param InstanceId: 待操作的实例ID，可通过 DescribeInstance 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param BeginTime: 开始时间，格式如：2017-02-08 16:46:34。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表，查询时间最大跨度30天。
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表，查询时间最大跨度30天。
        # @type EndTime: String
        # @param Status: 备份任务的状态：
        # 1：备份在流程中。
        # 2：备份正常。
        # 3：备份转RDB文件处理中。
        # 4：已完成RDB转换。
        # -1：备份已过期。
        # -2：备份已删除。
        # @type Status: Array
        # @param InstanceName: 实例名称，支持根据实例名称模糊搜索。
        # @type InstanceName: String

        attr_accessor :Limit, :Offset, :InstanceId, :BeginTime, :EndTime, :Status, :InstanceName

        def initialize(limit=nil, offset=nil, instanceid=nil, begintime=nil, endtime=nil, status=nil, instancename=nil)
          @Limit = limit
          @Offset = offset
          @InstanceId = instanceid
          @BeginTime = begintime
          @EndTime = endtime
          @Status = status
          @InstanceName = instancename
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceId = params['InstanceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @InstanceName = params['InstanceName']
        end
      end

      # DescribeInstanceBackups返回参数结构体
      class DescribeInstanceBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份总数。
        # @type TotalCount: Integer
        # @param BackupSet: 实例的备份数组。
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
              redisbackupset_tmp = RedisBackupSet.new
              redisbackupset_tmp.deserialize(i)
              @BackupSet << redisbackupset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceDTSInfo请求参数结构体
      class DescribeInstanceDTSInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceDTSInfo返回参数结构体
      class DescribeInstanceDTSInfoResponse < TencentCloud::Common::AbstractModel
        # @param JobId: DTS任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: DTS任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param Status: 任务状态,取值为：1-创建中(Creating),3-校验中(Checking)4-校验通过(CheckPass),5-校验不通过（CheckNotPass）,7-任务运行(Running),8-准备完成（ReadyComplete）,9-任务成功（Success）,10-任务失败（Failed）,11-撤销中（Stopping）,12-完成中（Completing）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param Offset: 同步时延，单位：字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param CutDownTime: 断开时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CutDownTime: String
        # @param SrcInfo: 源实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInfo: :class:`Tencentcloud::Redis.v20180412.models.DescribeInstanceDTSInstanceInfo`
        # @param DstInfo: 目标实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstInfo: :class:`Tencentcloud::Redis.v20180412.models.DescribeInstanceDTSInstanceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :JobName, :Status, :StatusDesc, :Offset, :CutDownTime, :SrcInfo, :DstInfo, :RequestId

        def initialize(jobid=nil, jobname=nil, status=nil, statusdesc=nil, offset=nil, cutdowntime=nil, srcinfo=nil, dstinfo=nil, requestid=nil)
          @JobId = jobid
          @JobName = jobname
          @Status = status
          @StatusDesc = statusdesc
          @Offset = offset
          @CutDownTime = cutdowntime
          @SrcInfo = srcinfo
          @DstInfo = dstinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Offset = params['Offset']
          @CutDownTime = params['CutDownTime']
          unless params['SrcInfo'].nil?
            @SrcInfo = DescribeInstanceDTSInstanceInfo.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['DstInfo'].nil?
            @DstInfo = DescribeInstanceDTSInstanceInfo.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 详细DTS实例信息
      class DescribeInstanceDTSInstanceInfo < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param InstanceId: 实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param SetId: 仓库ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetId: Integer
        # @param ZoneId: 可用区ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param Type: 实例类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param InstanceName: 实例名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Vip: 实例访问地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Status: 状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :RegionId, :InstanceId, :SetId, :ZoneId, :Type, :InstanceName, :Vip, :Status

        def initialize(regionid=nil, instanceid=nil, setid=nil, zoneid=nil, type=nil, instancename=nil, vip=nil, status=nil)
          @RegionId = regionid
          @InstanceId = instanceid
          @SetId = setid
          @ZoneId = zoneid
          @Type = type
          @InstanceName = instancename
          @Vip = vip
          @Status = status
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @InstanceId = params['InstanceId']
          @SetId = params['SetId']
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @InstanceName = params['InstanceName']
          @Vip = params['Vip']
          @Status = params['Status']
        end
      end

      # DescribeInstanceDealDetail请求参数结构体
      class DescribeInstanceDealDetailRequest < TencentCloud::Common::AbstractModel
        # @param DealIds: 订单交易ID数组，即 [CreateInstances](https://cloud.tencent.com/document/api/239/20026) 的输出参数DealId。数组最大长度限制为10
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
        # @param DealDetails: 订单详细信息。
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

      # DescribeInstanceEvents请求参数结构体
      class DescribeInstanceEventsRequest < TencentCloud::Common::AbstractModel
        # @param ExecutionStartDate: 配置查询事件执行计划的起始日期，查询日期最大跨度30天。
        # @type ExecutionStartDate: String
        # @param ExecutionEndDate: 配置查询事件执行计划的结束日期，查询日期最大跨度30天。
        # @type ExecutionEndDate: String
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param PageSize: 输出每页显示事件的数量，默认：10，最大100。
        # @type PageSize: Integer
        # @param PageNo: 配置查询事件的输出页码，即支持根据PageNo（页码）与 PageSize （每页输出数量）查询某一页的事件。默认：1。
        # @type PageNo: Integer
        # @param Status: 事件当前状态。
        # - Waiting：未到达执行日期或不在维护时间窗内的事件。
        # - Running：在维护时间窗内，正在执行维护的事件。
        # - Finished：已全部完成维护的事件。
        # - Canceled：已取消执行的事件。
        # @type Status: Array
        # @param EventTypes: 事件类型，当前仅支持配置实例迁移、资源腾挪、机房裁撤相关的运维操作。该参数仅支持配置为 **InstanceMigration**。
        # @type EventTypes: Array
        # @param Grades: 配置查询事件等级。事件等级根据其影响严重程度和紧急程度进行分级，由重至轻依次为关键、重要、中等、一般。
        # - Critical：关键
        # - High：重要
        # - Middle：中等
        # - Low：一般
        # @type Grades: Array

        attr_accessor :ExecutionStartDate, :ExecutionEndDate, :InstanceId, :PageSize, :PageNo, :Status, :EventTypes, :Grades

        def initialize(executionstartdate=nil, executionenddate=nil, instanceid=nil, pagesize=nil, pageno=nil, status=nil, eventtypes=nil, grades=nil)
          @ExecutionStartDate = executionstartdate
          @ExecutionEndDate = executionenddate
          @InstanceId = instanceid
          @PageSize = pagesize
          @PageNo = pageno
          @Status = status
          @EventTypes = eventtypes
          @Grades = grades
        end

        def deserialize(params)
          @ExecutionStartDate = params['ExecutionStartDate']
          @ExecutionEndDate = params['ExecutionEndDate']
          @InstanceId = params['InstanceId']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Status = params['Status']
          @EventTypes = params['EventTypes']
          @Grades = params['Grades']
        end
      end

      # DescribeInstanceEvents返回参数结构体
      class DescribeInstanceEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RedisInstanceEvents: 实例事件信息
        # @type RedisInstanceEvents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RedisInstanceEvents, :RequestId

        def initialize(totalcount=nil, redisinstanceevents=nil, requestid=nil)
          @TotalCount = totalcount
          @RedisInstanceEvents = redisinstanceevents
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RedisInstanceEvents'].nil?
            @RedisInstanceEvents = []
            params['RedisInstanceEvents'].each do |i|
              redisinstanceevent_tmp = RedisInstanceEvent.new
              redisinstanceevent_tmp.deserialize(i)
              @RedisInstanceEvents << redisinstanceevent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLogDelivery请求参数结构体
      class DescribeInstanceLogDeliveryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceLogDelivery返回参数结构体
      class DescribeInstanceLogDeliveryResponse < TencentCloud::Common::AbstractModel
        # @param SlowLog: 实例慢日志投递信息。
        # @type SlowLog: :class:`Tencentcloud::Redis.v20180412.models.LogDeliveryInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SlowLog, :RequestId

        def initialize(slowlog=nil, requestid=nil)
          @SlowLog = slowlog
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SlowLog'].nil?
            @SlowLog = LogDeliveryInfo.new
            @SlowLog.deserialize(params['SlowLog'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorBigKey请求参数结构体
      class DescribeInstanceMonitorBigKeyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ReqType: 请求类型：1——string类型，2——所有类型
        # @type ReqType: Integer
        # @param Date: 时间；例如："20190219"
        # @type Date: String

        attr_accessor :InstanceId, :ReqType, :Date

        def initialize(instanceid=nil, reqtype=nil, date=nil)
          @InstanceId = instanceid
          @ReqType = reqtype
          @Date = date
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReqType = params['ReqType']
          @Date = params['Date']
        end
      end

      # DescribeInstanceMonitorBigKey返回参数结构体
      class DescribeInstanceMonitorBigKeyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 大Key详细信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              bigkeyinfo_tmp = BigKeyInfo.new
              bigkeyinfo_tmp.deserialize(i)
              @Data << bigkeyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorBigKeySizeDist请求参数结构体
      class DescribeInstanceMonitorBigKeySizeDistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Date: 时间；例如："20190219"
        # @type Date: String

        attr_accessor :InstanceId, :Date

        def initialize(instanceid=nil, date=nil)
          @InstanceId = instanceid
          @Date = date
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Date = params['Date']
        end
      end

      # DescribeInstanceMonitorBigKeySizeDist返回参数结构体
      class DescribeInstanceMonitorBigKeySizeDistResponse < TencentCloud::Common::AbstractModel
        # @param Data: 大Key大小分布详情
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              delaydistribution_tmp = DelayDistribution.new
              delaydistribution_tmp.deserialize(i)
              @Data << delaydistribution_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorBigKeyTypeDist请求参数结构体
      class DescribeInstanceMonitorBigKeyTypeDistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Date: 时间；例如："20190219"
        # @type Date: String

        attr_accessor :InstanceId, :Date

        def initialize(instanceid=nil, date=nil)
          @InstanceId = instanceid
          @Date = date
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Date = params['Date']
        end
      end

      # DescribeInstanceMonitorBigKeyTypeDist返回参数结构体
      class DescribeInstanceMonitorBigKeyTypeDistResponse < TencentCloud::Common::AbstractModel
        # @param Data: 大Key类型分布详细信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              bigkeytypeinfo_tmp = BigKeyTypeInfo.new
              bigkeytypeinfo_tmp.deserialize(i)
              @Data << bigkeytypeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorHotKey请求参数结构体
      class DescribeInstanceMonitorHotKeyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param SpanType: 查询时间范围。
        # - 1：实时。
        # - 2：近30分钟。
        # - 3：近6小时。
        # - 4：近24小时。
        # @type SpanType: Integer

        attr_accessor :InstanceId, :SpanType

        def initialize(instanceid=nil, spantype=nil)
          @InstanceId = instanceid
          @SpanType = spantype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpanType = params['SpanType']
        end
      end

      # DescribeInstanceMonitorHotKey返回参数结构体
      class DescribeInstanceMonitorHotKeyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 热 Key 详细信息。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              hotkeyinfo_tmp = HotKeyInfo.new
              hotkeyinfo_tmp.deserialize(i)
              @Data << hotkeyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorSIP请求参数结构体
      class DescribeInstanceMonitorSIPRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceMonitorSIP返回参数结构体
      class DescribeInstanceMonitorSIPResponse < TencentCloud::Common::AbstractModel
        # @param Data: 访问来源信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sourceinfo_tmp = SourceInfo.new
              sourceinfo_tmp.deserialize(i)
              @Data << sourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorTookDist请求参数结构体
      class DescribeInstanceMonitorTookDistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Date: 查询时间日期。
        # @type Date: String
        # @param SpanType: 时间范围。
        # - 1：实时。
        # - 2：近30分钟。
        # - 3：近6小时。
        # - 4：近24小时。
        # @type SpanType: Integer

        attr_accessor :InstanceId, :Date, :SpanType

        def initialize(instanceid=nil, date=nil, spantype=nil)
          @InstanceId = instanceid
          @Date = date
          @SpanType = spantype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Date = params['Date']
          @SpanType = params['SpanType']
        end
      end

      # DescribeInstanceMonitorTookDist返回参数结构体
      class DescribeInstanceMonitorTookDistResponse < TencentCloud::Common::AbstractModel
        # @param Data: 时延分布信息。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              delaydistribution_tmp = DelayDistribution.new
              delaydistribution_tmp.deserialize(i)
              @Data << delaydistribution_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorTopNCmd请求参数结构体
      class DescribeInstanceMonitorTopNCmdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param SpanType: 时间范围。
        # - 1：实时。
        # - 2：近30分钟。
        # - 3：近6小时。
        # - 4：近24小时。
        # @type SpanType: Integer

        attr_accessor :InstanceId, :SpanType

        def initialize(instanceid=nil, spantype=nil)
          @InstanceId = instanceid
          @SpanType = spantype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpanType = params['SpanType']
        end
      end

      # DescribeInstanceMonitorTopNCmd返回参数结构体
      class DescribeInstanceMonitorTopNCmdResponse < TencentCloud::Common::AbstractModel
        # @param Data: 访问命令信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sourcecommand_tmp = SourceCommand.new
              sourcecommand_tmp.deserialize(i)
              @Data << sourcecommand_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorTopNCmdTook请求参数结构体
      class DescribeInstanceMonitorTopNCmdTookRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param SpanType: 查询时间范围。
        # - 1：实时。
        # - 2：近30分钟。
        # - 3：近6小时。
        # - 4：近24小时。
        # @type SpanType: Integer

        attr_accessor :InstanceId, :SpanType

        def initialize(instanceid=nil, spantype=nil)
          @InstanceId = instanceid
          @SpanType = spantype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpanType = params['SpanType']
        end
      end

      # DescribeInstanceMonitorTopNCmdTook返回参数结构体
      class DescribeInstanceMonitorTopNCmdTookResponse < TencentCloud::Common::AbstractModel
        # @param Data: 耗时详细信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              commandtake_tmp = CommandTake.new
              commandtake_tmp.deserialize(i)
              @Data << commandtake_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodeInfo请求参数结构体
      class DescribeInstanceNodeInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Limit: 列表大小。每页输出的节点信息大小。默认为 20，最多输出1000条。该字段已不再使用，请忽略。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。该字段已不再使用，请忽略。
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
        # @param ProxyCount: Proxy节点数量。
        # @type ProxyCount: Integer
        # @param Proxy: Proxy节点信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Proxy: Array
        # @param RedisCount: Redis节点数量。
        # @type RedisCount: Integer
        # @param Redis: Redis节点信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Redis: Array
        # @param TendisCount: 该参数不再使用，请忽略。
        # @type TendisCount: Integer
        # @param Tendis: 该参数不再使用，请忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tendis: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyCount, :Proxy, :RedisCount, :Redis, :TendisCount, :Tendis, :RequestId

        def initialize(proxycount=nil, proxy=nil, rediscount=nil, redis=nil, tendiscount=nil, tendis=nil, requestid=nil)
          @ProxyCount = proxycount
          @Proxy = proxy
          @RedisCount = rediscount
          @Redis = redis
          @TendisCount = tendiscount
          @Tendis = tendis
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyCount = params['ProxyCount']
          unless params['Proxy'].nil?
            @Proxy = []
            params['Proxy'].each do |i|
              proxynodes_tmp = ProxyNodes.new
              proxynodes_tmp.deserialize(i)
              @Proxy << proxynodes_tmp
            end
          end
          @RedisCount = params['RedisCount']
          unless params['Redis'].nil?
            @Redis = []
            params['Redis'].each do |i|
              redisnodes_tmp = RedisNodes.new
              redisnodes_tmp.deserialize(i)
              @Redis << redisnodes_tmp
            end
          end
          @TendisCount = params['TendisCount']
          unless params['Tendis'].nil?
            @Tendis = []
            params['Tendis'].each do |i|
              tendisnodes_tmp = TendisNodes.new
              tendisnodes_tmp.deserialize(i)
              @Tendis << tendisnodes_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParamRecords请求参数结构体
      class DescribeInstanceParamRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量，取Limit整数倍
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
        # @param TotalCount: 总的修改历史记录数。
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
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
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
        # @param TotalCount: 参数列表总数量。
        # @type TotalCount: Integer
        # @param InstanceEnumParam: 实例枚举类型参数。
        # @type InstanceEnumParam: Array
        # @param InstanceIntegerParam: 实例整型参数。
        # @type InstanceIntegerParam: Array
        # @param InstanceTextParam: 实例字符型参数。
        # @type InstanceTextParam: Array
        # @param InstanceMultiParam: 实例多选项型参数。
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

      # DescribeInstanceSecurityGroup请求参数结构体
      class DescribeInstanceSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表，数组长度限制[0,100]。例如：["crs-f2ho5rsz\n"]
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstanceSecurityGroup返回参数结构体
      class DescribeInstanceSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSecurityGroupsDetail: 实例安全组信息。
        # @type InstanceSecurityGroupsDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSecurityGroupsDetail, :RequestId

        def initialize(instancesecuritygroupsdetail=nil, requestid=nil)
          @InstanceSecurityGroupsDetail = instancesecuritygroupsdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSecurityGroupsDetail'].nil?
            @InstanceSecurityGroupsDetail = []
            params['InstanceSecurityGroupsDetail'].each do |i|
              instancesecuritygroupdetail_tmp = InstanceSecurityGroupDetail.new
              instancesecuritygroupdetail_tmp.deserialize(i)
              @InstanceSecurityGroupsDetail << instancesecuritygroupdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceShards请求参数结构体
      class DescribeInstanceShardsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param FilterSlave: 是否过滤掉从节信息。
        # - true；过滤从节点。
        # - false：不过滤。
        # @type FilterSlave: Boolean

        attr_accessor :InstanceId, :FilterSlave

        def initialize(instanceid=nil, filterslave=nil)
          @InstanceId = instanceid
          @FilterSlave = filterslave
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FilterSlave = params['FilterSlave']
        end
      end

      # DescribeInstanceShards返回参数结构体
      class DescribeInstanceShardsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceShards: 实例分片列表信息，包括：节点信息、节点ID、Key数量、使用容量、容量倾斜率等信息。
        # @type InstanceShards: Array
        # @param TotalCount: 实例分片节点数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceShards, :TotalCount, :RequestId

        def initialize(instanceshards=nil, totalcount=nil, requestid=nil)
          @InstanceShards = instanceshards
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceShards'].nil?
            @InstanceShards = []
            params['InstanceShards'].each do |i|
              instanceclustershard_tmp = InstanceClusterShard.new
              instanceclustershard_tmp.deserialize(i)
              @InstanceShards << instanceclustershard_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceSpecBandwidth请求参数结构体
      class DescribeInstanceSpecBandwidthRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceSpecBandwidth返回参数结构体
      class DescribeInstanceSpecBandwidthResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceSupportFeature请求参数结构体
      class DescribeInstanceSupportFeatureRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis#/)在实例列表复制实例 ID。
        # 示例值：crs-asdasdas
        # @type InstanceId: String
        # @param FeatureName: 功能特性名称
        # - read-local-node-only 就近接入功能
        # - multi-account 多账号功能
        # @type FeatureName: String

        attr_accessor :InstanceId, :FeatureName

        def initialize(instanceid=nil, featurename=nil)
          @InstanceId = instanceid
          @FeatureName = featurename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FeatureName = params['FeatureName']
        end
      end

      # DescribeInstanceSupportFeature返回参数结构体
      class DescribeInstanceSupportFeatureResponse < TencentCloud::Common::AbstractModel
        # @param Support: 是否支持
        # @type Support: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Support, :RequestId

        def initialize(support=nil, requestid=nil)
          @Support = support
          @RequestId = requestid
        end

        def deserialize(params)
          @Support = params['Support']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceZoneInfo请求参数结构体
      class DescribeInstanceZoneInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceZoneInfo返回参数结构体
      class DescribeInstanceZoneInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例节点组的个数。
        # @type TotalCount: Integer
        # @param ReplicaGroups: 实例节点组列表。
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
        # @param Limit: 每页输出实例的数量，参数默认值20，最大值为1000。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。

        # @type InstanceId: String
        # @param OrderBy: 实例列表排序依据，枚举值如下所示：
        # - projectId：依据项目ID排序。
        # - createtime：依据实例创建时间排序。
        # - instancename：依据实例名称排序。
        # - type：依据实例类型排序。
        # - curDeadline：依据实例到期时间排序。
        # @type OrderBy: String
        # @param OrderType: 实例排序方式，默认为倒序排序。
        # - 1：倒序。
        # - 0：顺序。
        # @type OrderType: Integer
        # @param VpcIds: 私有网络 ID 数组。如果不配置该参数或设置数组为空则默认选择基础网络。例如47525。该参数暂时保留，可忽略。请根据 UniqVpcIds 参数格式设置私有网络ID数组。
        # @type VpcIds: Array
        # @param SubnetIds: 私有网络所属子网 ID 数组，例如：56854。该参数暂时保留，可忽略。请根据 UniqSubnetIds 参数格式设置私有网络子网 ID 数组。
        # @type SubnetIds: Array
        # @param SearchKey: 设置模糊查询关键字段，仅实例名称支持模糊查询。
        # @type SearchKey: String
        # @param ProjectIds: 项目 ID 组成的数组。
        # @type ProjectIds: Array
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param UniqVpcIds: 私有网络 ID 数组。如果不配置该参数或者设置数组为空则默认选择基础网络，如：vpc-sad23jfdfk。
        # @type UniqVpcIds: Array
        # @param UniqSubnetIds: 私有网络所属子网 ID 数组，如：subnet-fdj24n34j2。
        # @type UniqSubnetIds: Array
        # @param RegionIds: 地域 ID 数组，该参数已经弃用，可通过公共参数Region查询对应地域。
        # @type RegionIds: Array
        # @param Status: 实例状态。
        # - 0：待初始化。
        # - 1：流程中。
        # - 2：运行中。
        # - -2：已隔离。
        # - -3：待删除。
        # @type Status: Array
        # @param TypeVersion: 实例架构版本。
        # - 1：单机版。
        # - 2：主从版。
        # - 3：集群版。
        # @type TypeVersion: Integer
        # @param EngineName: 存储引擎信息。可设置为Redis-2.8、Redis-4.0、Redis-5.0、Redis-6.0 或者 CKV。
        # @type EngineName: String
        # @param AutoRenew: 续费模式。
        # - 0：手动续费。
        # - 1：自动续费。
        # - 2：到期不再续费。
        # @type AutoRenew: Array
        # @param BillingMode: 计费模式。
        # - postpaid：按量计费。
        # - prepaid：包年包月。
        # @type BillingMode: String
        # @param Type: 实例类型。
        # - 2：Redis 2.8 内存版（标准架构）。
        # - 3：CKV 3.2 内存版（标准架构）。
        # - 4：CKV 3.2 内存版（集群架构）。
        # - 5：Redis 2.8 内存版（单机）。
        # - 6：Redis 4.0 内存版（标准架构）。
        # - 7：Redis 4.0 内存版（集群架构）。
        # - 8：Redis 5.0 内存版（标准架构）。
        # - 9：Redis 5.0 内存版（集群架构）。
        # - 15：Redis 6.2 内存版（标准架构）。
        # - 16：Redis 6.2 内存版（集群架构）。
        # - 17：Redis 7.0 内存版（标准架构）。
        # - 18：Redis 7.0 内存版（集群架构）。
        # @type Type: Integer
        # @param SearchKeys: 该参数为数组类型，支持配置实例名称、实例 ID、IP地址，其中实例名称为模糊匹配，实例 ID 和 IP 地址精确匹配。

        # - 数组中每一个元素取并集进行匹配查询。
        # - **InstanceId** 与 **SearchKeys** 同时配置，则取二者交集进行匹配查询。
        # @type SearchKeys: Array
        # @param TypeList: 内部参数，用户可忽略。
        # @type TypeList: Array
        # @param MonitorVersion: 内部参数，用户可忽略。
        # @type MonitorVersion: String
        # @param InstanceTags: 根据标签的 Key 和 Value 筛选资源。该参数不配置或者数组设置为空值，则不根据标签进行过滤。
        # @type InstanceTags: Array
        # @param TagKeys: 根据标签的 Key 筛选资源，该参数不配置或者数组设置为空值，则不根据标签Key进行过滤。
        # @type TagKeys: Array
        # @param ProductVersions: 实例的产品版本。如果该参数不配置或者数组设置为空值，则默认不依据此参数过滤实例。
        # - local：本地盘版。
        # - cdc：独享集群版。
        # @type ProductVersions: Array
        # @param InstanceIds: 批量查询指定的实例 ID，返回结果已 Limit 限制为主。
        # @type InstanceIds: Array
        # @param AzMode: 可用区模式。
        # - singleaz：单可用区。
        # - multiaz：多可用区。
        # @type AzMode: String

        attr_accessor :Limit, :Offset, :InstanceId, :OrderBy, :OrderType, :VpcIds, :SubnetIds, :SearchKey, :ProjectIds, :InstanceName, :UniqVpcIds, :UniqSubnetIds, :RegionIds, :Status, :TypeVersion, :EngineName, :AutoRenew, :BillingMode, :Type, :SearchKeys, :TypeList, :MonitorVersion, :InstanceTags, :TagKeys, :ProductVersions, :InstanceIds, :AzMode

        def initialize(limit=nil, offset=nil, instanceid=nil, orderby=nil, ordertype=nil, vpcids=nil, subnetids=nil, searchkey=nil, projectids=nil, instancename=nil, uniqvpcids=nil, uniqsubnetids=nil, regionids=nil, status=nil, typeversion=nil, enginename=nil, autorenew=nil, billingmode=nil, type=nil, searchkeys=nil, typelist=nil, monitorversion=nil, instancetags=nil, tagkeys=nil, productversions=nil, instanceids=nil, azmode=nil)
          @Limit = limit
          @Offset = offset
          @InstanceId = instanceid
          @OrderBy = orderby
          @OrderType = ordertype
          @VpcIds = vpcids
          @SubnetIds = subnetids
          @SearchKey = searchkey
          @ProjectIds = projectids
          @InstanceName = instancename
          @UniqVpcIds = uniqvpcids
          @UniqSubnetIds = uniqsubnetids
          @RegionIds = regionids
          @Status = status
          @TypeVersion = typeversion
          @EngineName = enginename
          @AutoRenew = autorenew
          @BillingMode = billingmode
          @Type = type
          @SearchKeys = searchkeys
          @TypeList = typelist
          @MonitorVersion = monitorversion
          @InstanceTags = instancetags
          @TagKeys = tagkeys
          @ProductVersions = productversions
          @InstanceIds = instanceids
          @AzMode = azmode
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceId = params['InstanceId']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @VpcIds = params['VpcIds']
          @SubnetIds = params['SubnetIds']
          @SearchKey = params['SearchKey']
          @ProjectIds = params['ProjectIds']
          @InstanceName = params['InstanceName']
          @UniqVpcIds = params['UniqVpcIds']
          @UniqSubnetIds = params['UniqSubnetIds']
          @RegionIds = params['RegionIds']
          @Status = params['Status']
          @TypeVersion = params['TypeVersion']
          @EngineName = params['EngineName']
          @AutoRenew = params['AutoRenew']
          @BillingMode = params['BillingMode']
          @Type = params['Type']
          @SearchKeys = params['SearchKeys']
          @TypeList = params['TypeList']
          @MonitorVersion = params['MonitorVersion']
          unless params['InstanceTags'].nil?
            @InstanceTags = []
            params['InstanceTags'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @InstanceTags << instancetaginfo_tmp
            end
          end
          @TagKeys = params['TagKeys']
          @ProductVersions = params['ProductVersions']
          @InstanceIds = params['InstanceIds']
          @AzMode = params['AzMode']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数量。
        # @type TotalCount: Integer
        # @param InstanceSet: 实例详细信息列表。
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
              instanceset_tmp = InstanceSet.new
              instanceset_tmp.deserialize(i)
              @InstanceSet << instanceset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintenanceWindow请求参数结构体
      class DescribeMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
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
        # @param StartTime: 维护时间窗开始时间。取值范围为"00:00-23:00"的任意时间点，如03:24。
        # @type StartTime: String
        # @param EndTime: 维护时间窗结束时间。
        # - 取值范围为"00:00-23:00"的任意时间点，如：04:24。
        # - 维护时间持续时长最小为30分钟，最大为3小时。
        # - 结束时间务必是基于开始时间向后的时间。
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

      # DescribeParamTemplateInfo请求参数结构体
      class DescribeParamTemplateInfoRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 指定查询的参数模板 ID。请通过接口[DescribeParamTemplates](https://cloud.tencent.com/document/product/239/58750)获取参数模板列表信息。
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeParamTemplateInfo返回参数结构体
      class DescribeParamTemplateInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数模板的参数数量。
        # @type TotalCount: Integer
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: String
        # @param Name: 参数模板名称。
        # @type Name: String
        # @param ProductType: 产品类型。
        # - 2：Redis 2.8 内存版（标准架构）。
        # - 3：CKV 3.2 内存版（标准架构）。
        # - 4：CKV 3.2 内存版（集群架构）。
        # - 5：Redis 2.8 内存版（单机）。
        # - 6：Redis 4.0 内存版（标准架构）。
        # - 7：Redis 4.0 内存版（集群架构）。
        # - 8：Redis 5.0 内存版（标准架构）。
        # - 9：Redis 5.0 内存版（集群架构）。
        # - 15：Redis 6.2 内存版（标准架构）。
        # - 16：Redis 6.2 内存版（集群架构）。
        # - 17：Redis 7.0 内存版（标准架构）。
        # - 18：Redis 7.0 内存版（集群架构）。
        # @type ProductType: Integer
        # @param Description: 参数模板描述。
        # @type Description: String
        # @param Items: 参数详情。包含：参数的名称，当前运行值，默认值，最大值、最小值、枚举值等信息。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TemplateId, :Name, :ProductType, :Description, :Items, :RequestId

        def initialize(totalcount=nil, templateid=nil, name=nil, producttype=nil, description=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @TemplateId = templateid
          @Name = name
          @ProductType = producttype
          @Description = description
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @ProductType = params['ProductType']
          @Description = params['Description']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              parameterdetail_tmp = ParameterDetail.new
              parameterdetail_tmp.deserialize(i)
              @Items << parameterdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamTemplates请求参数结构体
      class DescribeParamTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param ProductTypes: 产品类型数组。
        # - 2：Redis 2.8 内存版（标准架构）。
        # - 3：CKV 3.2 内存版（标准架构）。
        # - 4：CKV 3.2 内存版（集群架构）。
        # - 6：Redis 4.0 内存版（标准架构）。
        # - 7：Redis 4.0 内存版（集群架构）。
        # - 8：Redis 5.0 内存版（标准架构）。
        # - 9：Redis 5.0 内存版（集群架构）。
        # - 15：Redis 6.2 内存版（标准架构）。
        # - 16：Redis 6.2 内存版（集群架构）。
        # - 17：Redis 7.0 内存版（标准架构）。
        # - 18：Redis 7.0 内存版（集群架构）。
        # @type ProductTypes: Array
        # @param TemplateNames: 模板名称数组。数组最大长度限制为50
        # @type TemplateNames: Array
        # @param TemplateIds: 模板ID数组。数组最大长度限制为50
        # @type TemplateIds: Array

        attr_accessor :ProductTypes, :TemplateNames, :TemplateIds

        def initialize(producttypes=nil, templatenames=nil, templateids=nil)
          @ProductTypes = producttypes
          @TemplateNames = templatenames
          @TemplateIds = templateids
        end

        def deserialize(params)
          @ProductTypes = params['ProductTypes']
          @TemplateNames = params['TemplateNames']
          @TemplateIds = params['TemplateIds']
        end
      end

      # DescribeParamTemplates返回参数结构体
      class DescribeParamTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该用户的参数模板数量。
        # @type TotalCount: Integer
        # @param Items: 参数模板详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              paramtemplateinfo_tmp = ParamTemplateInfo.new
              paramtemplateinfo_tmp.deserialize(i)
              @Items << paramtemplateinfo_tmp
            end
          end
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
        # @param RegionSet: 地域售卖信息。即使指定具体地域，也返回所有地域的售卖信息。
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

      # DescribeProjectSecurityGroup请求参数结构体
      class DescribeProjectSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 指定查询的项目 ID。
        # - 0：默认项目。
        # - -1：所有项目。
        # - 大于0：特定项目。请登录[Redis控制台的项目管理](https://console.cloud.tencent.com/project)页面，在**项目名称**中复制项目 ID。
        # @type ProjectId: Integer
        # @param SecurityGroupId: 安全组 ID，通过接口[DescribeInstanceSecurityGroup](https://cloud.tencent.com/document/product/239/34447)的返回参数 **InstanceSecurityGroupsDetail** 的子参数 **SecurityGroupId** 获取。
        # @type SecurityGroupId: String

        attr_accessor :ProjectId, :SecurityGroupId

        def initialize(projectid=nil, securitygroupid=nil)
          @ProjectId = projectid
          @SecurityGroupId = securitygroupid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SecurityGroupId = params['SecurityGroupId']
        end
      end

      # DescribeProjectSecurityGroup返回参数结构体
      class DescribeProjectSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupDetails: 项目安全组
        # @type SecurityGroupDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupDetails, :RequestId

        def initialize(securitygroupdetails=nil, requestid=nil)
          @SecurityGroupDetails = securitygroupdetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupDetails'].nil?
            @SecurityGroupDetails = []
            params['SecurityGroupDetails'].each do |i|
              securitygroupdetail_tmp = SecurityGroupDetail.new
              securitygroupdetail_tmp.deserialize(i)
              @SecurityGroupDetails << securitygroupdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：redis。
        # @type Product: String
        # @param ProjectId: 项目 ID，请登录[Redis控制台的项目管理](https://console.cloud.tencent.com/project)页面，在**项目名称**中复制项目 ID。
        # @type ProjectId: Integer
        # @param Offset: 偏移量，取值为Limit的整数倍。
        # @type Offset: Integer
        # @param Limit: 拉取数量限制，默认 20。
        # @type Limit: Integer
        # @param SearchKey: 搜索条件，支持安全组 ID 或者安全组名称。
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
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BeginTime: 慢查询的开始时间，查询时间最大跨度30天。
        # @type BeginTime: String
        # @param EndTime: 慢查询的结束时间，查询时间最大跨度30天。
        # @type EndTime: String
        # @param MinQueryTime: 慢查询阈值，单位：毫秒。
        # @type MinQueryTime: Integer
        # @param Limit: 每页输出的任务列表大小，默认为 20，最多输出100条。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍，计算公式：offset=limit*(页码-1)。
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

      # DescribeRedisClusterOverview请求参数结构体
      class DescribeRedisClusterOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 本地专用集群 ID，请登录[专用集群控制台](https://console.cloud.tencent.com/cdc/dedicatedcluster/index?rid=1
        # )实例列表获取集群 ID。
        # @type DedicatedClusterId: String

        attr_accessor :DedicatedClusterId

        def initialize(dedicatedclusterid=nil)
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # DescribeRedisClusterOverview返回参数结构体
      class DescribeRedisClusterOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalBundle: 资源包总数
        # @type TotalBundle: Integer
        # @param TotalMemory: 资源包总内存大小，单位：GB
        # @type TotalMemory: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalBundle, :TotalMemory, :RequestId

        def initialize(totalbundle=nil, totalmemory=nil, requestid=nil)
          @TotalBundle = totalbundle
          @TotalMemory = totalmemory
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalBundle = params['TotalBundle']
          @TotalMemory = params['TotalMemory']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRedisClusters请求参数结构体
      class DescribeRedisClustersRequest < TencentCloud::Common::AbstractModel
        # @param RedisClusterIds: Redis独享集群 ID。请登录[专用集群控制台](https://console.cloud.tencent.com/cdc/dedicatedcluster/index?rid=1
        # )切换至**云服务管理**页面，在下拉框选择**云数据库 Redis**，可获取独享集群ID。
        # @type RedisClusterIds: Array
        # @param Status: 集群状态。
        # - 1：流程。
        # - 2：运行中。
        # - 3：已隔离。
        # @type Status: Array
        # @param ProjectIds: 项目ID数组。请登录[项目管理](https://console.cloud.tencent.com/project)页面，在**项目名称**中复制项目 ID。
        # @type ProjectIds: Array
        # @param AutoRenewFlag: 续费模式。
        # - 0：默认状态，手动续费。
        # - 1：自动续费。
        # - 2：明确不自动续费。
        # @type AutoRenewFlag: Array
        # @param ClusterName: Redis 独享集群名称。
        # @type ClusterName: String
        # @param SearchKey: 搜索关键词：支持集群 ID、集群名称。
        # @type SearchKey: String
        # @param Limit: 分页限制返回大小，不传则默认为20。
        # @type Limit: Integer
        # @param Offset: 偏移量，取Limit整数倍
        # @type Offset: Integer
        # @param DedicatedClusterId: 本地专用集群 ID，请登录[专用集群控制台](https://console.cloud.tencent.com/cdc/dedicatedcluster/index?rid=1
        # )实例列表获取集群 ID。
        # @type DedicatedClusterId: String

        attr_accessor :RedisClusterIds, :Status, :ProjectIds, :AutoRenewFlag, :ClusterName, :SearchKey, :Limit, :Offset, :DedicatedClusterId

        def initialize(redisclusterids=nil, status=nil, projectids=nil, autorenewflag=nil, clustername=nil, searchkey=nil, limit=nil, offset=nil, dedicatedclusterid=nil)
          @RedisClusterIds = redisclusterids
          @Status = status
          @ProjectIds = projectids
          @AutoRenewFlag = autorenewflag
          @ClusterName = clustername
          @SearchKey = searchkey
          @Limit = limit
          @Offset = offset
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @RedisClusterIds = params['RedisClusterIds']
          @Status = params['Status']
          @ProjectIds = params['ProjectIds']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ClusterName = params['ClusterName']
          @SearchKey = params['SearchKey']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # DescribeRedisClusters返回参数结构体
      class DescribeRedisClustersResponse < TencentCloud::Common::AbstractModel
        # @param Total: 集群总数
        # @type Total: Integer
        # @param Resources: CDC集群资源列表
        # @type Resources: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Resources, :RequestId

        def initialize(total=nil, resources=nil, requestid=nil)
          @Total = total
          @Resources = resources
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              cdcresource_tmp = CDCResource.new
              cdcresource_tmp.deserialize(i)
              @Resources << cdcresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplicationGroupInstance请求参数结构体
      class DescribeReplicationGroupInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeReplicationGroupInstance返回参数结构体
      class DescribeReplicationGroupInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AppId: AppID。
        # @type AppId: Integer
        # @param RegionId: 地域数字编号。
        # @type RegionId: Integer
        # @param GroupId: 复制组字符串ID。
        # @type GroupId: String
        # @param GroupName: 复制组名称。
        # @type GroupName: String
        # @param InstanceRole: 实例复制组角色。
        # - r:  备实例
        # - rw: 主实例
        # @type InstanceRole: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :RegionId, :GroupId, :GroupName, :InstanceRole, :RequestId

        def initialize(appid=nil, regionid=nil, groupid=nil, groupname=nil, instancerole=nil, requestid=nil)
          @AppId = appid
          @RegionId = regionid
          @GroupId = groupid
          @GroupName = groupname
          @InstanceRole = instancerole
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RegionId = params['RegionId']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @InstanceRole = params['InstanceRole']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplicationGroup请求参数结构体
      class DescribeReplicationGroupRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页输出实例列表的大小，参数默认值20。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param GroupId: 指定复制组 ID。例如：crs-rpl-m3zt****。请登录[Redis 控制台](https://console.cloud.tencent.com/redis/replication)的全球复制组列表获取复制组 ID。
        # @type GroupId: String
        # @param SearchKey: 模糊查询的关键字，可以设置为复制组ID或复制组名称进行模糊查询。请登录[Redis 控制台](https://console.cloud.tencent.com/redis/replication)的全球复制组列表获取复制组 ID及名称。
        # @type SearchKey: String

        attr_accessor :Limit, :Offset, :GroupId, :SearchKey

        def initialize(limit=nil, offset=nil, groupid=nil, searchkey=nil)
          @Limit = limit
          @Offset = offset
          @GroupId = groupid
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @GroupId = params['GroupId']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeReplicationGroup返回参数结构体
      class DescribeReplicationGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 复制组数量。
        # @type TotalCount: Integer
        # @param Groups: 复制组信息。
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Groups, :RequestId

        def initialize(totalcount=nil, groups=nil, requestid=nil)
          @TotalCount = totalcount
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groups_tmp = Groups.new
              groups_tmp.deserialize(i)
              @Groups << groups_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSSLStatus请求参数结构体
      class DescribeSSLStatusRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSSLStatus返回参数结构体
      class DescribeSSLStatusResponse < TencentCloud::Common::AbstractModel
        # @param CertDownloadUrl: SSL 证书下载地址。
        # @type CertDownloadUrl: String
        # @param UrlExpiredTime: 证书下载链接到期时间。
        # @type UrlExpiredTime: String
        # @param SSLConfig: 标识实例开启 SSL 功能。
        # - true：开启 。
        # - false：关闭。
        # @type SSLConfig: Boolean
        # @param FeatureSupport: 标识实例是否支持 SSL特性。
        # - true：支持。
        # - false：不支持。
        # @type FeatureSupport: Boolean
        # @param Status: 说明配置 SSL 的状态。
        # - 1: 配置中。
        # - 2：配置成功。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertDownloadUrl, :UrlExpiredTime, :SSLConfig, :FeatureSupport, :Status, :RequestId

        def initialize(certdownloadurl=nil, urlexpiredtime=nil, sslconfig=nil, featuresupport=nil, status=nil, requestid=nil)
          @CertDownloadUrl = certdownloadurl
          @UrlExpiredTime = urlexpiredtime
          @SSLConfig = sslconfig
          @FeatureSupport = featuresupport
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @CertDownloadUrl = params['CertDownloadUrl']
          @UrlExpiredTime = params['UrlExpiredTime']
          @SSLConfig = params['SSLConfig']
          @FeatureSupport = params['FeatureSupport']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecondLevelBackupInfo请求参数结构体
      class DescribeSecondLevelBackupInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录Redis控制台在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupTimestamp: 秒级备份时间戳，7天内
        # @type BackupTimestamp: Integer

        attr_accessor :InstanceId, :BackupTimestamp

        def initialize(instanceid=nil, backuptimestamp=nil)
          @InstanceId = instanceid
          @BackupTimestamp = backuptimestamp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupTimestamp = params['BackupTimestamp']
        end
      end

      # DescribeSecondLevelBackupInfo返回参数结构体
      class DescribeSecondLevelBackupInfoResponse < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份记录ID
        # @type BackupId: String
        # @param BackupTimestamp: 备份时间戳
        # @type BackupTimestamp: Integer
        # @param MissingTimestamps: 备份不存在的时间戳范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MissingTimestamps: Array
        # @param StartTimestamp: 实例开启秒级备份的时间戳
        # @type StartTimestamp: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupId, :BackupTimestamp, :MissingTimestamps, :StartTimestamp, :RequestId

        def initialize(backupid=nil, backuptimestamp=nil, missingtimestamps=nil, starttimestamp=nil, requestid=nil)
          @BackupId = backupid
          @BackupTimestamp = backuptimestamp
          @MissingTimestamps = missingtimestamps
          @StartTimestamp = starttimestamp
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @BackupTimestamp = params['BackupTimestamp']
          unless params['MissingTimestamps'].nil?
            @MissingTimestamps = []
            params['MissingTimestamps'].each do |i|
              secondlevelbackupmissingtimestamps_tmp = SecondLevelBackupMissingTimestamps.new
              secondlevelbackupmissingtimestamps_tmp.deserialize(i)
              @MissingTimestamps << secondlevelbackupmissingtimestamps_tmp
            end
          end
          @StartTimestamp = params['StartTimestamp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLog请求参数结构体
      class DescribeSlowLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BeginTime: 预查询慢日志的起始时间，查询时间最大跨度30天。
        # @type BeginTime: String
        # @param EndTime: 预查询慢日志的结束时间，查询时间最大跨度30天
        # @type EndTime: String
        # @param MinQueryTime: 慢查询平均执行时间阈值，单位：毫秒。
        # @type MinQueryTime: Integer
        # @param Limit: 每个页面展示的慢查询条数，默认值为20，最大100。
        # @type Limit: Integer
        # @param Offset: 慢查询条数的偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param Role: 节点所属角色。
        # - master：主节点。
        # - slave：从节点。
        # @type Role: String

        attr_accessor :InstanceId, :BeginTime, :EndTime, :MinQueryTime, :Limit, :Offset, :Role

        def initialize(instanceid=nil, begintime=nil, endtime=nil, minquerytime=nil, limit=nil, offset=nil, role=nil)
          @InstanceId = instanceid
          @BeginTime = begintime
          @EndTime = endtime
          @MinQueryTime = minquerytime
          @Limit = limit
          @Offset = offset
          @Role = role
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @MinQueryTime = params['MinQueryTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Role = params['Role']
        end
      end

      # DescribeSlowLog返回参数结构体
      class DescribeSlowLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 慢查询总数。
        # @type TotalCount: Integer
        # @param InstanceSlowlogDetail: 已废弃，该参数存在命名不规范问题，后续用参数InstanceSlowLogDetail取代。慢查询详情。
        # @type InstanceSlowlogDetail: Array
        # @param InstanceSlowLogDetail: 慢查询详情。
        # @type InstanceSlowLogDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSlowlogDetail, :InstanceSlowLogDetail, :RequestId

        def initialize(totalcount=nil, instanceslowlogdetail=nil, instanceslowlogdetail=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSlowlogDetail = instanceslowlogdetail
          @InstanceSlowLogDetail = instanceslowlogdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSlowlogDetail'].nil?
            @InstanceSlowlogDetail = []
            params['InstanceSlowlogDetail'].each do |i|
              instanceslowlogdetail_tmp = InstanceSlowlogDetail.new
              instanceslowlogdetail_tmp.deserialize(i)
              @InstanceSlowlogDetail << instanceslowlogdetail_tmp
            end
          end
          unless params['InstanceSlowLogDetail'].nil?
            @InstanceSlowLogDetail = []
            params['InstanceSlowLogDetail'].each do |i|
              instanceslowlogdetail_tmp = InstanceSlowlogDetail.new
              instanceslowlogdetail_tmp.deserialize(i)
              @InstanceSlowLogDetail << instanceslowlogdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInfo请求参数结构体
      class DescribeTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID, 请通过接口[DescribeTaskList](https://cloud.tencent.com/document/product/239/39374) 的返回参数 **Tasks** 的子参数 **TaskId** 获取。
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
        # @param Status: 任务状态。
        # - preparing：待执行。
        # - running：执行中。
        # - succeed：成功。
        # - failed：失败。
        # - error：执行出错。
        # @type Status: String
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param TaskType: 任务类型。常见的类型包含：新建类型、配置变更、关闭实例、清空实例、重置密码、版本升级、备份实例、改变网络类型、实例可用区迁移、手动提主等。
        # @type TaskType: String
        # @param InstanceId: 实例的 ID。
        # @type InstanceId: String
        # @param TaskMessage: 任务执行返回的信息，执行错误时显示错误信息。执行中或执行成功则为空。
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
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param Limit: 每页输出的任务列表大小。默认为 20，最多输出100条。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        # @type Offset: Integer
        # @param ProjectIds: 项目 ID。登录 [Redis 控制台](https://console.cloud.tencent.com/redis)，在右上角的账号信息下拉菜单中，选择**项目管理**，即可获取对应的项目 ID。
        # @type ProjectIds: Array
        # @param TaskTypes: 任务类型。

        # - FLOW_CREATE: "001"，新建实例。
        # - FLOW_RESIZE ： "002"，配置变更。
        # - FLOW_CLOSE："003"，关闭实例。
        # - FLOW_CLEAN： "004"，清空实例。
        # - FLOW_STARTUP："005"，实例启用。
        # - FLOW_DELETE："006"，删除实例。
        # - FLOW_SETPWD："007"，重置密码。
        # - FLOW_EXPORTBACKUP："009"，导出备份文件。
        # - FLOW_RESTOREBACKUP："010"，恢复备份。
        # - FLOW_BACKUPINSTANCE："012"，备份实例。
        # - FLOW_MIGRATEINSTANCE："013"，迁移实例。
        # - FLOW_DELBACKUP："014"，删除备份。
        # - FLOW_EXCHANGEINSTANCE： "016"，切换实例流程。
        # - FLOW_AUTOBACKUP："017"，自动备份实例。
        # - FLOW_MIGRATECHECK： "022"，迁移参数校验。
        # - FLOW_MIGRATETASK："023"，数据迁移中。
        # - FLOW_CLEANDB："025"，清空某个数据库。
        # - FLOW_CLONEBACKUP："026"，克隆备份。
        # - FLOW_CHANGEVIP： "027"，改变vip地址。
        # - FLOW_EXPORSHR ："028"，扩缩容。
        # - FLOW_ADDNODES："029"，加（减）节点。
        # - FLOW_CHANGENET："031"，改变网络类型。
        # - FLOW_MODIFYINSTACEREADONLY："033"，只读策略变更。
        # - FLOW_MODIFYINSTANCEPARAMS："034"，修改实例参数。
        # - FLOW_MODIFYINSTANCEPASSWORDFREE："035"，设置免密。
        # - FLOW_SWITCHINSTANCEVIP："036"，实例VIP切换。
        # - FLOW_MODIFYINSTANCEACCOUNT："037"，实例帐号变更。
        # - FLOW_MODIFYINSTANCEBANDWIDTH："038"，实例带宽变更。
        # - FLOW_ENABLEINSTANCE_REPLICATE："039"，开启副本只读。
        # - FLOW_DISABLEINSTANCE_REPLICATE："040"，关闭副本只读。
        # - FLOW_UpgradeArch："041"，实例架构升级，主从升集群。
        # - FLOW_DowngradeArch： "042"，实例架构降级，集群降主从。
        # - FLOW_UpgradeVersion： "043"，版本升级。
        # - FLOW_MODIFYCONNECTIONCONFIG："044"，带宽连接数调整，
        # - FLOW_CLEARNETWORK："045"，更换网络，
        # - FLOW_REMOVE_BACKUP_FILE："046"，删除备份。
        # - FLOW_UPGRADE_SUPPORT_MULTI_AZ："047"，升级实例支持多可用区。
        # - FLOW_SHUTDOWN_MASTER："048"，模拟故障。
        # - FLOW_CHANGE_REPLICA_TO_MASTER："049"，手动提主。
        # - FLOW_CODE_ADD_REPLICATION_INSTANCE："050"，新增复制组。
        # - FLOW_OPEN_WAN："052"，开通外网。
        # - FLOW_CLOSE_WAN："053"，关闭外网FLOW_UPDATE_WAN："054"，更新外网。
        # - FLOW_CODE_DELETE_REPLICATION_INSTANCE："055"，解绑复制组。
        # - FLOW_CODE_CHANGE_MASTER_INSTANCE："056"，复制组实例切主。
        # - FLOW_CODE_CHANGE_INSTANCE_ROLE： "057"，更改复制组实例角色。
        # - FLOW_MIGRATE_NODE："058"，迁移节点。
        # - FLOW_SWITCH_NODE："059"，切换节点。
        # - FLOW_UPGRADE_SMALL_VERSION："060"，升级 Redi s版本。
        # - FLOW_UPGRADE_PROXY_VERSION："061"，升级 Proxy 版本。
        # - FLOW_MODIFY_INSTANCE_NETWORK： "062"，实例修改网络。
        # - FLOW_MIGRATE_PROXY_NODE："063"，迁移proxy节点。
        # - FLOW_MIGRATION_INSTANCE_ZONE："066"，实例可用区迁移中。
        # - FLOW_UPGRADE_INSTANCE_CACHE_AND_PROXY： "067"，实例版本升级中。
        # - FLOW_MODIFY_PROXY_NUM："069"，加（减）Proxy 节点。
        # - FLOW_MODIFYBACKUPMOD："070"，变更实例备份模式。
        # @type TaskTypes: Array
        # @param BeginTime: 任务执行的起始时间，格式如：2021-12-30 00:00:00，支持查询近30天内数据。
        # @type BeginTime: String
        # @param EndTime: 任务运行的终止时间。格式如：2021-12-30 20:59:35，支持查询近30天内数据。
        # @type EndTime: String
        # @param TaskStatus: 该参数为内部使用，请忽略。
        # @type TaskStatus: Array
        # @param Result: 任务执行状态。
        # - 0：任务初始化。
        # - 1：执行中。
        # - 2：完成。
        # - 4：失败。
        # @type Result: Array
        # @param OperatorUin: 该字段已废弃，使用OperateUin代替，请忽略。
        # @type OperatorUin: Array
        # @param OperateUin: 操作者账号 ID，UIN。
        # @type OperateUin: Array

        attr_accessor :InstanceId, :InstanceName, :Limit, :Offset, :ProjectIds, :TaskTypes, :BeginTime, :EndTime, :TaskStatus, :Result, :OperatorUin, :OperateUin

        def initialize(instanceid=nil, instancename=nil, limit=nil, offset=nil, projectids=nil, tasktypes=nil, begintime=nil, endtime=nil, taskstatus=nil, result=nil, operatoruin=nil, operateuin=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Limit = limit
          @Offset = offset
          @ProjectIds = projectids
          @TaskTypes = tasktypes
          @BeginTime = begintime
          @EndTime = endtime
          @TaskStatus = taskstatus
          @Result = result
          @OperatorUin = operatoruin
          @OperateUin = operateuin
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
          @Result = params['Result']
          @OperatorUin = params['OperatorUin']
          @OperateUin = params['OperateUin']
        end
      end

      # DescribeTaskList返回参数结构体
      class DescribeTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数。
        # @type TotalCount: Integer
        # @param Tasks: 任务详细信息。
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
        # @param InstanceId: 实例 ID，请登录[Tendis控制台](https://console.cloud.tencent.com/tendis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BeginTime: 开始时间：2019-09-08 12:12:41，查询时间最大跨度30天。
        # @type BeginTime: String
        # @param EndTime: 结束时间：2019-09-09 12:12:41，查询时间最大跨度30天。
        # @type EndTime: String
        # @param MinQueryTime: 慢查询阈值（毫秒）
        # @type MinQueryTime: Integer
        # @param Limit: 页面大小：默认20，最大100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
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
        # @param TotalCount: 慢查询总数
        # @type TotalCount: Integer
        # @param TendisSlowLogDetail: 慢查询详情
        # @type TendisSlowLogDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TendisSlowLogDetail, :RequestId

        def initialize(totalcount=nil, tendisslowlogdetail=nil, requestid=nil)
          @TotalCount = totalcount
          @TendisSlowLogDetail = tendisslowlogdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TendisSlowLogDetail'].nil?
            @TendisSlowLogDetail = []
            params['TendisSlowLogDetail'].each do |i|
              tendisslowlogdetail_tmp = TendisSlowLogDetail.new
              tendisslowlogdetail_tmp.deserialize(i)
              @TendisSlowLogDetail << tendisslowlogdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyPostpaidInstance请求参数结构体
      class DestroyPostpaidInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
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
        # @param TaskId: 任务Id
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
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
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
        # @param DealId: 订单Id
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

      # DisableReplicaReadonly请求参数结构体
      class DisableReplicaReadonlyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DisableReplicaReadonly返回参数结构体
      class DisableReplicaReadonlyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：redis。
        # @type Product: String
        # @param SecurityGroupId: 安全组 ID，请通过接口[DescribeInstanceSecurityGroup](https://cloud.tencent.com/document/product/239/34447)的返回参数InstanceSecurityGroupsDetail 的子参数**SecurityGroupId**获取。
        # @type SecurityGroupId: String
        # @param InstanceIds: 实例ID列表，一个或者多个实例 ID 组成的数组。请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
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

      # EnableReplicaReadonly请求参数结构体
      class EnableReplicaReadonlyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param ReadonlyPolicy: 只读路由策略。
        # - master：表示只读路由至主节点。
        # - replication：表示只读路由至从节点。
        # - 默认策略：表示写主节点，读从节点。
        # @type ReadonlyPolicy: Array

        attr_accessor :InstanceId, :ReadonlyPolicy

        def initialize(instanceid=nil, readonlypolicy=nil)
          @InstanceId = instanceid
          @ReadonlyPolicy = readonlypolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReadonlyPolicy = params['ReadonlyPolicy']
        end
      end

      # EnableReplicaReadonly返回参数结构体
      class EnableReplicaReadonlyResponse < TencentCloud::Common::AbstractModel
        # @param Status: 错误：ERROR，正确OK（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :TaskId, :RequestId

        def initialize(status=nil, taskid=nil, requestid=nil)
          @Status = status
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 复制组信息
      class Groups < TencentCloud::Common::AbstractModel
        # @param AppId: 用户 APPID。APPID是与账号ID有唯一对应关系的应用 ID，部分腾讯云产品会使用此 APPID。
        # @type AppId: Integer
        # @param RegionId: 地域ID 。
        # - 1：广州
        # - 4：上海
        # - 5：中国香港
        # - 7：上海金融
        # - 8：北京
        # - 9：新加坡
        # - 11：深圳金融
        # - 15：美西（硅谷）
        # - 16：成都
        # - 17：德国
        # - 18：韩国
        # - 19：重庆
        # - 21：印度
        # - 22：美东（弗吉尼亚）
        # - 23：泰国
        # - 25：日本
        # @type RegionId: Integer
        # @param GroupId: 复制组 ID。格式如：crs-rpl-deind****。
        # @type GroupId: String
        # @param GroupName: 复制组名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Status: 复制组状态。
        # - 37：绑定复制组中。
        # - 38：复制组重连中。
        # - 51：解绑复制组中。
        # - 52：复制组实例切主中。
        # - 53：角色变更中。
        # @type Status: Integer
        # @param InstanceCount: 复制组数量。
        # @type InstanceCount: Integer
        # @param Instances: 复制组中的实例信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param Remark: 备注信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :AppId, :RegionId, :GroupId, :GroupName, :Status, :InstanceCount, :Instances, :Remark

        def initialize(appid=nil, regionid=nil, groupid=nil, groupname=nil, status=nil, instancecount=nil, instances=nil, remark=nil)
          @AppId = appid
          @RegionId = regionid
          @GroupId = groupid
          @GroupName = groupname
          @Status = status
          @InstanceCount = instancecount
          @Instances = instances
          @Remark = remark
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RegionId = params['RegionId']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Status = params['Status']
          @InstanceCount = params['InstanceCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instances_tmp = Instances.new
              instances_tmp.deserialize(i)
              @Instances << instances_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # 热Key详细信息
      class HotKeyInfo < TencentCloud::Common::AbstractModel
        # @param Key: 热 Key 的名称。
        # @type Key: String
        # @param Type: Key 类型。
        # @type Type: String
        # @param Count: 某段时间内热 Key 的访问次数
        # @type Count: Integer

        attr_accessor :Key, :Type, :Count

        def initialize(key=nil, type=nil, count=nil)
          @Key = key
          @Type = type
          @Count = count
        end

        def deserialize(params)
          @Key = params['Key']
          @Type = params['Type']
          @Count = params['Count']
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

      # InquiryPriceCreateInstance请求参数结构体
      class InquiryPriceCreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TypeId: 实例类型。
        # - 2：Redis 2.8 内存版（标准架构）。
        # - 6：Redis 4.0 内存版（标准架构）。
        # - 7：Redis 4.0 内存版（集群架构）。
        # - 8：Redis 5.0 内存版（标准架构）。
        # - 9：Redis 5.0 内存版（集群架构）。
        # - 15：Redis 6.2 内存版（标准架构）。
        # - 16：Redis 6.2 内存版（集群架构）。
        # - 17：Redis 7.0 内存版（标准架构）。
        # - 18：Redis 7.0 内存版（集群架构）。
        # @type TypeId: Integer
        # @param MemSize: 内存容量，单位为MB， 数值需为1024的整数倍，具体规格以 [查询产品售卖规格](https://cloud.tencent.com/document/api/239/30600) 返回的规格为准。
        # TypeId为标准架构时，MemSize是实例总内存容量；TypeId为集群架构时，MemSize是单分片内存容量。
        # @type MemSize: Integer
        # @param GoodsNum: 实例数量，单次购买实例数量以 [查询产品售卖规格](https://cloud.tencent.com/document/api/239/30600) 返回的规格为准。
        # @type GoodsNum: Integer
        # @param Period: 购买时长，在创建包年包月实例的时候需要填写，按量计费实例填1即可，单位：月，取值范围 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        # @type Period: Integer
        # @param BillingMode: 付费方式。
        # - 0：按量计费。
        # - 1：包年包月。
        # @type BillingMode: Integer
        # @param ZoneId: 实例所属的可用区ID，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        # @type ZoneId: Integer
        # @param RedisShardNum: 实例分片数量。2.8 标准架构无需配置分片，其余版本标准架构需要配置分片数量为1。集群架构需指定需购买的分片数量。
        # @type RedisShardNum: Integer
        # @param RedisReplicasNum: 实例副本数量。2.8 标准架构无需配置副本数量。
        # @type RedisReplicasNum: Integer
        # @param ReplicasReadonly: 是否支持副本只读。Redis2.8标准架构、CKV标准架构无需填写。
        # - true：无需支持副本只读。
        # - false：需支持。
        # @type ReplicasReadonly: Boolean
        # @param ZoneName: 实例所属的可用区名称，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        # @type ZoneName: String
        # @param ProductVersion: 部署方式。
        # - local：本地盘版，默认为 local。
        # - cloud：云盘版。
        # - cdc：独享集群版。
        # @type ProductVersion: String

        attr_accessor :TypeId, :MemSize, :GoodsNum, :Period, :BillingMode, :ZoneId, :RedisShardNum, :RedisReplicasNum, :ReplicasReadonly, :ZoneName, :ProductVersion

        def initialize(typeid=nil, memsize=nil, goodsnum=nil, period=nil, billingmode=nil, zoneid=nil, redisshardnum=nil, redisreplicasnum=nil, replicasreadonly=nil, zonename=nil, productversion=nil)
          @TypeId = typeid
          @MemSize = memsize
          @GoodsNum = goodsnum
          @Period = period
          @BillingMode = billingmode
          @ZoneId = zoneid
          @RedisShardNum = redisshardnum
          @RedisReplicasNum = redisreplicasnum
          @ReplicasReadonly = replicasreadonly
          @ZoneName = zonename
          @ProductVersion = productversion
        end

        def deserialize(params)
          @TypeId = params['TypeId']
          @MemSize = params['MemSize']
          @GoodsNum = params['GoodsNum']
          @Period = params['Period']
          @BillingMode = params['BillingMode']
          @ZoneId = params['ZoneId']
          @RedisShardNum = params['RedisShardNum']
          @RedisReplicasNum = params['RedisReplicasNum']
          @ReplicasReadonly = params['ReplicasReadonly']
          @ZoneName = params['ZoneName']
          @ProductVersion = params['ProductVersion']
        end
      end

      # InquiryPriceCreateInstance返回参数结构体
      class InquiryPriceCreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格，单位：分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Price: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewInstance请求参数结构体
      class InquiryPriceRenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Period: 包年包月实例的购买时长，单位：月。
        # @type Period: Integer
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :Period, :InstanceId

        def initialize(period=nil, instanceid=nil)
          @Period = period
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Period = params['Period']
          @InstanceId = params['InstanceId']
        end
      end

      # InquiryPriceRenewInstance返回参数结构体
      class InquiryPriceRenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格，单位：分。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Price: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpgradeInstance请求参数结构体
      class InquiryPriceUpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param MemSize: 分片大小，单位：MB。
        # @type MemSize: Integer
        # @param RedisShardNum: 分片数量，Redis 2.8主从版、CKV主从版和Redis2.8单机版不需要填写。
        # @type RedisShardNum: Integer
        # @param RedisReplicasNum: 副本数量，Redis2.8主从版、CKV主从版和Redis2.8单机版不需要填写。
        # @type RedisReplicasNum: Integer

        attr_accessor :InstanceId, :MemSize, :RedisShardNum, :RedisReplicasNum

        def initialize(instanceid=nil, memsize=nil, redisshardnum=nil, redisreplicasnum=nil)
          @InstanceId = instanceid
          @MemSize = memsize
          @RedisShardNum = redisshardnum
          @RedisReplicasNum = redisreplicasnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MemSize = params['MemSize']
          @RedisShardNum = params['RedisShardNum']
          @RedisReplicasNum = params['RedisReplicasNum']
        end
      end

      # InquiryPriceUpgradeInstance返回参数结构体
      class InquiryPriceUpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格，单位：分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Price: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # 实例节点类型
      class InstanceClusterNode < TencentCloud::Common::AbstractModel
        # @param Name: 节点组名称。
        # @type Name: String
        # @param RunId: 实例运行时节点 ID。
        # @type RunId: String
        # @param Role: 集群角色。
        # - 0：master。
        # - 1：slave。
        # @type Role: Integer
        # @param Status: 节点状态。
        # - 0：readwrite,。
        # - 1：read。
        # - 2：backup。
        # @type Status: Integer
        # @param Connected: 服务状态。
        # 0-down。
        # 1-on
        # @type Connected: Integer
        # @param CreateTime: 节点创建时间。
        # @type CreateTime: String
        # @param DownTime: 节点下线时间。
        # @type DownTime: String
        # @param Slots: 节点 Slot 分布区间。
        # @type Slots: String
        # @param Keys: 节点 Key分布。
        # @type Keys: Integer
        # @param Qps: 节点 QPS。分片节点每秒执行次数。单位：次/秒。
        # @type Qps: Integer
        # @param QpsSlope: 节点 QPS 倾斜度。
        # @type QpsSlope: Float
        # @param Storage: 节点存储。
        # @type Storage: Integer
        # @param StorageSlope: 节点存储倾斜度。
        # @type StorageSlope: Float

        attr_accessor :Name, :RunId, :Role, :Status, :Connected, :CreateTime, :DownTime, :Slots, :Keys, :Qps, :QpsSlope, :Storage, :StorageSlope

        def initialize(name=nil, runid=nil, role=nil, status=nil, connected=nil, createtime=nil, downtime=nil, slots=nil, keys=nil, qps=nil, qpsslope=nil, storage=nil, storageslope=nil)
          @Name = name
          @RunId = runid
          @Role = role
          @Status = status
          @Connected = connected
          @CreateTime = createtime
          @DownTime = downtime
          @Slots = slots
          @Keys = keys
          @Qps = qps
          @QpsSlope = qpsslope
          @Storage = storage
          @StorageSlope = storageslope
        end

        def deserialize(params)
          @Name = params['Name']
          @RunId = params['RunId']
          @Role = params['Role']
          @Status = params['Status']
          @Connected = params['Connected']
          @CreateTime = params['CreateTime']
          @DownTime = params['DownTime']
          @Slots = params['Slots']
          @Keys = params['Keys']
          @Qps = params['Qps']
          @QpsSlope = params['QpsSlope']
          @Storage = params['Storage']
          @StorageSlope = params['StorageSlope']
        end
      end

      # 实例分片列表信息
      class InstanceClusterShard < TencentCloud::Common::AbstractModel
        # @param ShardName: 分片节点名称。
        # @type ShardName: String
        # @param ShardId: 分片节点序号。
        # @type ShardId: String
        # @param Role: 分片节点的角色。
        # - 0：主节点。
        # - 1：副本节点。
        # @type Role: Integer
        # @param Keys: Key数量。
        # @type Keys: Integer
        # @param Slots: Slot信息。
        # @type Slots: String
        # @param Storage: 已使用容量。
        # @type Storage: Integer
        # @param StorageSlope: 容量倾斜率。
        # @type StorageSlope: Float
        # @param Runid: 该字段因拼写不规范问题，建议使用RunId取代。含义：实例运行时节点 ID。
        # @type Runid: String
        # @param RunId: 实例运行时节点 ID。
        # @type RunId: String
        # @param Connected: 服务状态。
        # - 0：down。
        # - 1：on。
        # @type Connected: Integer

        attr_accessor :ShardName, :ShardId, :Role, :Keys, :Slots, :Storage, :StorageSlope, :Runid, :RunId, :Connected

        def initialize(shardname=nil, shardid=nil, role=nil, keys=nil, slots=nil, storage=nil, storageslope=nil, runid=nil, runid=nil, connected=nil)
          @ShardName = shardname
          @ShardId = shardid
          @Role = role
          @Keys = keys
          @Slots = slots
          @Storage = storage
          @StorageSlope = storageslope
          @Runid = runid
          @RunId = runid
          @Connected = connected
        end

        def deserialize(params)
          @ShardName = params['ShardName']
          @ShardId = params['ShardId']
          @Role = params['Role']
          @Keys = params['Keys']
          @Slots = params['Slots']
          @Storage = params['Storage']
          @StorageSlope = params['StorageSlope']
          @Runid = params['Runid']
          @RunId = params['RunId']
          @Connected = params['Connected']
        end
      end

      # 实例枚举类型参数描述
      class InstanceEnumParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param ValueType: 参数类型，例如：Enum。
        # @type ValueType: String
        # @param NeedRestart: 参数值修改后是否需要重启。
        # - true：需要。
        # - false：不需要。
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param CurrentValue: 参数当前运行值。
        # @type CurrentValue: String
        # @param Tips: 参数说明。
        # @type Tips: String
        # @param EnumValue: 参数可取的值。
        # @type EnumValue: Array
        # @param Status: 参数修改状态。
        # - 1: 修改中。
        # - 2：修改完成。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param ValueType: 参数类型。例如：multi。
        # @type ValueType: String
        # @param NeedRestart: 参数修改后是否需要重启。
        # - true：需要。
        # - false：不需要。
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param CurrentValue: 当前运行参数值。
        # @type CurrentValue: String
        # @param Tips: 参数说明。
        # @type Tips: String
        # @param EnumValue: 参数枚举值。
        # @type EnumValue: Array
        # @param Status: 参数修改的状态。
        # - 1：修改中。
        # - 2：修改完成。
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

      # 实例节点
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param Id: 实例 ID。
        # @type Id: Integer
        # @param InstanceClusterNode: 节点详细信息。
        # @type InstanceClusterNode: Array

        attr_accessor :Id, :InstanceClusterNode

        def initialize(id=nil, instanceclusternode=nil)
          @Id = id
          @InstanceClusterNode = instanceclusternode
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['InstanceClusterNode'].nil?
            @InstanceClusterNode = []
            params['InstanceClusterNode'].each do |i|
              instanceclusternode_tmp = InstanceClusterNode.new
              instanceclusternode_tmp.deserialize(i)
              @InstanceClusterNode << instanceclusternode_tmp
            end
          end
        end
      end

      # 实例参数
      class InstanceParam < TencentCloud::Common::AbstractModel
        # @param Key: 设置参数的名称。例如timeout。当前支持自定义的参数，请参见<a href="https://cloud.tencent.com/document/product/239/49925">参数配置</a>。
        # @type Key: String
        # @param Value: 设置参数名称对应的运行值。例如timeout对应运行值可设置为120， 单位为秒（s）。指当客户端连接闲置时间达到120 s时，将关闭连接。更多参数取值信息，请参见<a href="https://cloud.tencent.com/document/product/239/49925">参数配置</a>。
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
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param PreValue: 参数修改之前的值。
        # @type PreValue: String
        # @param NewValue: 参数修改之后的值。
        # @type NewValue: String
        # @param Status: 参数配置状态。
        # - 1：参数配置修改中。
        # - 2：参数配置修改成功。
        # - 3：参数配置修改失败。
        # @type Status: Integer
        # @param ModifyTime: 修改时间。
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
        # @param Duration: 慢查询耗时时长。单位：毫秒。
        # @type Duration: Integer
        # @param Client: 客户端地址。
        # @type Client: String
        # @param Command: 慢查询的命令。
        # @type Command: String
        # @param CommandLine: 慢查询详细命令行信息。
        # @type CommandLine: String
        # @param ExecuteTime: 执行时间。
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

      # 实例安全组信息
      class InstanceSecurityGroupDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param SecurityGroupDetails: 安全组信息，包括：安全组 ID、安全组名称、安全组出入站规则。
        # @type SecurityGroupDetails: Array

        attr_accessor :InstanceId, :SecurityGroupDetails

        def initialize(instanceid=nil, securitygroupdetails=nil)
          @InstanceId = instanceid
          @SecurityGroupDetails = securitygroupdetails
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['SecurityGroupDetails'].nil?
            @SecurityGroupDetails = []
            params['SecurityGroupDetails'].each do |i|
              securitygroupdetail_tmp = SecurityGroupDetail.new
              securitygroupdetail_tmp.deserialize(i)
              @SecurityGroupDetails << securitygroupdetail_tmp
            end
          end
        end
      end

      # 实例详细信息列表。
      class InstanceSet < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Appid: 用户APPID。APPID是与账号ID有唯一对应关系的应用 ID，部分腾讯云产品会使用此 APPID。
        # @type Appid: Integer
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param RegionId: 地域 ID。<ul><li>1：广州。</li><li>4：上海。</li><li>5：中国香港。</li><li>7：上海金融。</li> <li>8：北京。</li> <li>9：新加坡。</li> <li>11：深圳金融。</li> <li>15：美西（硅谷）。</li><li>16：成都。</li><li>17：法兰克福。</li><li>18：首尔。</li><li>19：重庆。</li><li>21：孟买。</li><li>22：美东（弗吉尼亚）。</li><li>23：曼谷。</li><li>25：东京。</li></ul>
        # @type RegionId: Integer
        # @param ZoneId: 区域 ID。
        # @type ZoneId: Integer
        # @param VpcId: vpc网络 ID，例如75101。
        # @type VpcId: Integer
        # @param SubnetId: vpc网络下子网ID，如：46315。
        # @type SubnetId: Integer
        # @param Status: 实例当前状态。<ul><li>0：待初始化。</li><li>1：实例在流程中。</li><li>2：实例运行中。</li><li>-2：实例已隔离。</li><li>-3：实例待删除。</li></ul>
        # @type Status: Integer
        # @param WanIp: 实例 VIP。
        # @type WanIp: String
        # @param Port: 实例端口号。
        # @type Port: Integer
        # @param Createtime: 实例创建时间。格式如：2020-01-15 10:20:00。
        # @type Createtime: String
        # @param Size: 实例内存容量大小。单位：MB，1MB=1024KB。
        # @type Size: Float
        # @param SizeUsed: 该字段已废弃。请使用腾讯云可观测平台API 接口 [GetMonitorData](https://cloud.tencent.com/document/product/248/31014) 获取实例已使用的内存容量。
        # @type SizeUsed: Float
        # @param Type: 实例类型。
        # - 2：Redis 2.8 内存版（标准架构）。
        # - 3：CKV 3.2 内存版（标准架构）。
        # - 4：CKV 3.2 内存版（集群架构）。
        # - 5：Redis 2.8 内存版（单机）。
        # - 6：Redis 4.0 内存版（标准架构）。
        # - 7：Redis 4.0 内存版（集群架构）。
        # - 8：Redis 5.0 内存版（标准架构）。
        # - 9：Redis 5.0 内存版（集群架构）。
        # - 15：Redis 6.2 内存版（标准架构）。
        # - 16：Redis 6.2 内存版（集群架构）。
        # - 17：Redis 7.0 内存版（标准架构）。
        # - 18：Redis 7.0 内存版（集群架构）。
        # @type Type: Integer
        # @param AutoRenewFlag: 实例是否设置自动续费标识。<ul><li>1：设置自动续费。</li><li>0：未设置自动续费。</li></ul>
        # @type AutoRenewFlag: Integer
        # @param DeadlineTime: 包年包月计费实例到期的时间。
        # @type DeadlineTime: String
        # @param Engine: 引擎：社区版Redis、腾讯云CKV。
        # @type Engine: String
        # @param ProductType: 产品类型。<ul><li>standalone：标准版。</li><li>cluster ：集群版。</li></ul>
        # @type ProductType: String
        # @param UniqVpcId: vpc网络id，例如vpc-fk33jsf43kgv。
        # @type UniqVpcId: String
        # @param UniqSubnetId: vpc网络下子网id，例如：subnet-fd3j6l35mm0。
        # @type UniqSubnetId: String
        # @param BillingMode: 计费模式。<ul><li>0：按量计费。</li><li>1：包年包月。</li></ul>
        # @type BillingMode: Integer
        # @param InstanceTitle: 实例运行状态描述：如”实例运行中“。
        # @type InstanceTitle: String
        # @param OfflineTime: 已隔离实例默认下线时间。按量计费实例隔离后默认两小时后下线，包年包月默认7天后下线。格式如：2020-02-15 10:20:00。
        # @type OfflineTime: String
        # @param SubStatus: 流程中的实例，返回子状态。
        # @type SubStatus: Integer
        # @param Tags: 反亲和性标签。
        # @type Tags: Array
        # @param InstanceNode: 实例节点信息。
        # @type InstanceNode: Array
        # @param RedisShardSize: 分片大小。
        # @type RedisShardSize: Integer
        # @param RedisShardNum: 分片数量。
        # @type RedisShardNum: Integer
        # @param RedisReplicasNum: 副本数量。
        # @type RedisReplicasNum: Integer
        # @param PriceId: 计费 ID。
        # @type PriceId: Integer
        # @param CloseTime: 实例隔离开始的时间。
        # @type CloseTime: String
        # @param SlaveReadWeight: 从节点读取权重。
        # @type SlaveReadWeight: Integer
        # @param InstanceTags: 实例关联的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTags: Array
        # @param ProjectName: 项目名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param NoAuth: 是否为免密实例。<ul><li>true：免密实例。</li><li>false：非免密实例。</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoAuth: Boolean
        # @param ClientLimit: 客户端连接数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientLimit: Integer
        # @param DtsStatus: DTS状态（内部参数，用户可忽略）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DtsStatus: Integer
        # @param NetLimit: 分片带宽上限，单位MB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetLimit: Integer
        # @param PasswordFree: 免密实例标识（内部参数，用户可忽略）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PasswordFree: Integer
        # @param Vip6: 该参数存在命名不规范问题，建议用参数IPv6取代。内部参数，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip6: String
        # @param IPv6: 内部参数，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6: String
        # @param ReadOnly: 实例只读标识（内部参数，用户可忽略）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnly: Integer
        # @param RemainBandwidthDuration: 内部参数，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainBandwidthDuration: String
        # @param DiskSize: Redis实例请忽略该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param MonitorVersion: 监控版本。<ul><li>1m：1分钟粒度监控。目前该监控粒度已下线，具体信息，请参见[云数据库 Redis 1分钟粒度下线公告](https://cloud.tencent.com/document/product/239/80653)。</li><li>5s：5秒粒度监控。</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorVersion: String
        # @param ClientLimitMin: 客户端最大连接数可设置的最小值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientLimitMin: Integer
        # @param ClientLimitMax: 客户端最大连接数可设置的最大值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientLimitMax: Integer
        # @param NodeSet: 实例的节点详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSet: Array
        # @param Region: 实例所在的地域信息，比如ap-guangzhou。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param WanAddress: 外网地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanAddress: String
        # @param PolarisServer: 北极星服务地址，内部使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolarisServer: String
        # @param RedisClusterId: CDC Redis集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedisClusterId: String
        # @param DedicatedClusterId: CDC 集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DedicatedClusterId: String
        # @param ProductVersion: 产品版本。<ul><li>local：本地盘。</li><li>cloud：云盘版。</li><li>cdc：CDC 集群版本。</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductVersion: String
        # @param CurrentProxyVersion: 实例当前Proxy版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentProxyVersion: String
        # @param CurrentRedisVersion: 实例当前Cache小版本。如果实例加入全球复制组，显示全球复制的内核版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentRedisVersion: String
        # @param UpgradeProxyVersion: 实例可升级Proxy版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeProxyVersion: String
        # @param UpgradeRedisVersion: 实例可升级Cache小版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeRedisVersion: String
        # @param BackupMode: 备份模式：- SecondLevelBackup   秒级备份- NormalLevelBackup    普通备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupMode: String

        attr_accessor :InstanceName, :InstanceId, :Appid, :ProjectId, :RegionId, :ZoneId, :VpcId, :SubnetId, :Status, :WanIp, :Port, :Createtime, :Size, :SizeUsed, :Type, :AutoRenewFlag, :DeadlineTime, :Engine, :ProductType, :UniqVpcId, :UniqSubnetId, :BillingMode, :InstanceTitle, :OfflineTime, :SubStatus, :Tags, :InstanceNode, :RedisShardSize, :RedisShardNum, :RedisReplicasNum, :PriceId, :CloseTime, :SlaveReadWeight, :InstanceTags, :ProjectName, :NoAuth, :ClientLimit, :DtsStatus, :NetLimit, :PasswordFree, :Vip6, :IPv6, :ReadOnly, :RemainBandwidthDuration, :DiskSize, :MonitorVersion, :ClientLimitMin, :ClientLimitMax, :NodeSet, :Region, :WanAddress, :PolarisServer, :RedisClusterId, :DedicatedClusterId, :ProductVersion, :CurrentProxyVersion, :CurrentRedisVersion, :UpgradeProxyVersion, :UpgradeRedisVersion, :BackupMode

        def initialize(instancename=nil, instanceid=nil, appid=nil, projectid=nil, regionid=nil, zoneid=nil, vpcid=nil, subnetid=nil, status=nil, wanip=nil, port=nil, createtime=nil, size=nil, sizeused=nil, type=nil, autorenewflag=nil, deadlinetime=nil, engine=nil, producttype=nil, uniqvpcid=nil, uniqsubnetid=nil, billingmode=nil, instancetitle=nil, offlinetime=nil, substatus=nil, tags=nil, instancenode=nil, redisshardsize=nil, redisshardnum=nil, redisreplicasnum=nil, priceid=nil, closetime=nil, slavereadweight=nil, instancetags=nil, projectname=nil, noauth=nil, clientlimit=nil, dtsstatus=nil, netlimit=nil, passwordfree=nil, vip6=nil, ipv6=nil, readonly=nil, remainbandwidthduration=nil, disksize=nil, monitorversion=nil, clientlimitmin=nil, clientlimitmax=nil, nodeset=nil, region=nil, wanaddress=nil, polarisserver=nil, redisclusterid=nil, dedicatedclusterid=nil, productversion=nil, currentproxyversion=nil, currentredisversion=nil, upgradeproxyversion=nil, upgraderedisversion=nil, backupmode=nil)
          @InstanceName = instancename
          @InstanceId = instanceid
          @Appid = appid
          @ProjectId = projectid
          @RegionId = regionid
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @WanIp = wanip
          @Port = port
          @Createtime = createtime
          @Size = size
          @SizeUsed = sizeused
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
          @InstanceNode = instancenode
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
          @Vip6 = vip6
          @IPv6 = ipv6
          @ReadOnly = readonly
          @RemainBandwidthDuration = remainbandwidthduration
          @DiskSize = disksize
          @MonitorVersion = monitorversion
          @ClientLimitMin = clientlimitmin
          @ClientLimitMax = clientlimitmax
          @NodeSet = nodeset
          @Region = region
          @WanAddress = wanaddress
          @PolarisServer = polarisserver
          @RedisClusterId = redisclusterid
          @DedicatedClusterId = dedicatedclusterid
          @ProductVersion = productversion
          @CurrentProxyVersion = currentproxyversion
          @CurrentRedisVersion = currentredisversion
          @UpgradeProxyVersion = upgradeproxyversion
          @UpgradeRedisVersion = upgraderedisversion
          @BackupMode = backupmode
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @Appid = params['Appid']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @WanIp = params['WanIp']
          @Port = params['Port']
          @Createtime = params['Createtime']
          @Size = params['Size']
          @SizeUsed = params['SizeUsed']
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
          unless params['InstanceNode'].nil?
            @InstanceNode = []
            params['InstanceNode'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @InstanceNode << instancenode_tmp
            end
          end
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
          @Vip6 = params['Vip6']
          @IPv6 = params['IPv6']
          @ReadOnly = params['ReadOnly']
          @RemainBandwidthDuration = params['RemainBandwidthDuration']
          @DiskSize = params['DiskSize']
          @MonitorVersion = params['MonitorVersion']
          @ClientLimitMin = params['ClientLimitMin']
          @ClientLimitMax = params['ClientLimitMax']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              redisnodeinfo_tmp = RedisNodeInfo.new
              redisnodeinfo_tmp.deserialize(i)
              @NodeSet << redisnodeinfo_tmp
            end
          end
          @Region = params['Region']
          @WanAddress = params['WanAddress']
          @PolarisServer = params['PolarisServer']
          @RedisClusterId = params['RedisClusterId']
          @DedicatedClusterId = params['DedicatedClusterId']
          @ProductVersion = params['ProductVersion']
          @CurrentProxyVersion = params['CurrentProxyVersion']
          @CurrentRedisVersion = params['CurrentRedisVersion']
          @UpgradeProxyVersion = params['UpgradeProxyVersion']
          @UpgradeRedisVersion = params['UpgradeRedisVersion']
          @BackupMode = params['BackupMode']
        end
      end

      # 慢查询详情
      class InstanceSlowlogDetail < TencentCloud::Common::AbstractModel
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
        # @param Node: 节点ID
        # @type Node: String

        attr_accessor :Duration, :Client, :Command, :CommandLine, :ExecuteTime, :Node

        def initialize(duration=nil, client=nil, command=nil, commandline=nil, executetime=nil, node=nil)
          @Duration = duration
          @Client = client
          @Command = command
          @CommandLine = commandline
          @ExecuteTime = executetime
          @Node = node
        end

        def deserialize(params)
          @Duration = params['Duration']
          @Client = params['Client']
          @Command = params['Command']
          @CommandLine = params['CommandLine']
          @ExecuteTime = params['ExecuteTime']
          @Node = params['Node']
        end
      end

      # 实例标签信息
      class InstanceTagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # @type TagKey: String
        # @param TagValue: 标签值。
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
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param ValueType: 参数类型。例如：text。
        # @type ValueType: String
        # @param NeedRestart: 参数修改后是否需要重启。
        # - true：需要。
        # - false：不需要。
        # @type NeedRestart: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param CurrentValue: 参数当前运行值。
        # @type CurrentValue: String
        # @param Tips: 参数说明。
        # @type Tips: String
        # @param TextValue: 参数可取值。
        # @type TextValue: Array
        # @param Status: 参数修改状态。
        # - 1: 修改中。
        # - 2：修改完成。
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

      # 复制组实例
      class Instances < TencentCloud::Common::AbstractModel
        # @param AppId: 用户APPID。APPID是与账号ID有唯一对应关系的应用 ID，部分腾讯云产品会使用此 APPID。
        # @type AppId: Integer
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param RegionId: 地域ID。<ul><li>1：广州。</li><li>4：上海。</li><li> 5：香港。</li>  <li> 7：上海金融。</li> <li> 8：北京。</li> <li> 9：新加坡。</li> <li> 11：深圳金融。</li> <li> 15：美西（硅谷）。</li> </ul>
        # @type RegionId: Integer
        # @param ZoneId: 区域 ID。
        # @type ZoneId: Integer
        # @param RedisReplicasNum: 副本数量。
        # @type RedisReplicasNum: Integer
        # @param RedisShardNum: 分片数量。
        # @type RedisShardNum: Integer
        # @param RedisShardSize: 分片内存大小。
        # @type RedisShardSize: Integer
        # @param DiskSize: 实例的磁盘大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param Engine: 引擎：社区版Redis、腾讯云CKV。
        # @type Engine: String
        # @param Role: 实例读写权限。<ul><li>rw：可读写。</li><li>r：只读。</li></ul>
        # @type Role: String
        # @param Vip: 实例 VIP 地址。
        # @type Vip: String
        # @param Vip6: 该参数存在命名不规范问题，建议用参数IPv6取代。内部参数，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip6: String
        # @param IPv6: 内部参数，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6: String
        # @param VpcID: VPC 网络ID，如：75101。
        # @type VpcID: Integer
        # @param VPort: 实例端口。
        # @type VPort: Integer
        # @param Status: 实例状态。<ul><li>0：待初始化。</li><li>1：流程中。</li><li>2：运行中。</li><li>-2：已隔离。</li><li>-3：待删除。</li></ul>
        # @type Status: Integer
        # @param GrocerySysId: 仓库ID。
        # @type GrocerySysId: Integer
        # @param ProductType: 实例类型。
        # - 2：Redis 2.8内存版（标准架构）。
        # - 3：CKV 3.2内存版（标准架构）。
        # - 4：CKV 3.2内存版（集群架构）。
        # - 5：Redis 2.8内存版（单机）。
        # - 6：Redis 4.0内存版（标准架构）。
        # - 7：Redis 4.0内存版（集群架构）。
        # - 8：Redis 5.0内存版（标准架构）。
        # - 9：Redis 5.0内存版（集群架构）。
        # - 15：Redis 6.2内存版（标准架构）。
        # - 16：Redis 6.2内存版（集群架构）。
        # @type ProductType: Integer
        # @param CreateTime: 实例加入复制组的时间。
        # @type CreateTime: String
        # @param UpdateTime: 复制组中实例更新的时间。
        # @type UpdateTime: String

        attr_accessor :AppId, :InstanceId, :InstanceName, :RegionId, :ZoneId, :RedisReplicasNum, :RedisShardNum, :RedisShardSize, :DiskSize, :Engine, :Role, :Vip, :Vip6, :IPv6, :VpcID, :VPort, :Status, :GrocerySysId, :ProductType, :CreateTime, :UpdateTime

        def initialize(appid=nil, instanceid=nil, instancename=nil, regionid=nil, zoneid=nil, redisreplicasnum=nil, redisshardnum=nil, redisshardsize=nil, disksize=nil, engine=nil, role=nil, vip=nil, vip6=nil, ipv6=nil, vpcid=nil, vport=nil, status=nil, grocerysysid=nil, producttype=nil, createtime=nil, updatetime=nil)
          @AppId = appid
          @InstanceId = instanceid
          @InstanceName = instancename
          @RegionId = regionid
          @ZoneId = zoneid
          @RedisReplicasNum = redisreplicasnum
          @RedisShardNum = redisshardnum
          @RedisShardSize = redisshardsize
          @DiskSize = disksize
          @Engine = engine
          @Role = role
          @Vip = vip
          @Vip6 = vip6
          @IPv6 = ipv6
          @VpcID = vpcid
          @VPort = vport
          @Status = status
          @GrocerySysId = grocerysysid
          @ProductType = producttype
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @AppId = params['AppId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @RedisReplicasNum = params['RedisReplicasNum']
          @RedisShardNum = params['RedisShardNum']
          @RedisShardSize = params['RedisShardSize']
          @DiskSize = params['DiskSize']
          @Engine = params['Engine']
          @Role = params['Role']
          @Vip = params['Vip']
          @Vip6 = params['Vip6']
          @IPv6 = params['IPv6']
          @VpcID = params['VpcID']
          @VPort = params['VPort']
          @Status = params['Status']
          @GrocerySysId = params['GrocerySysId']
          @ProductType = params['ProductType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # KillMasterGroup请求参数结构体
      class KillMasterGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Password: 该参数用于配置指定实例的访问密码。若为免密认证，该参数则无需配置。密码复杂度要求如下所示。
        # - 长度8-30位,推荐使用12位以上的密码
        # - 不能以"/"开头
        # - 至少包含小写字母a-z、大写字母A-Z、数字0-9及其 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/中的两项。
        # @type Password: String
        # @param ShardIds: 分片集群的分片 ID。请通过接口[DescribeInstanceNodeInfo](https://cloud.tencent.com/document/product/239/48603) 的返回参数 **Redis** 中的 **ClusterId** 获取。
        # @type ShardIds: Array

        attr_accessor :InstanceId, :Password, :ShardIds

        def initialize(instanceid=nil, password=nil, shardids=nil)
          @InstanceId = instanceid
          @Password = password
          @ShardIds = shardids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Password = params['Password']
          @ShardIds = params['ShardIds']
        end
      end

      # KillMasterGroup返回参数结构体
      class KillMasterGroupResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
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

      # 日志投递信息
      class LogDeliveryInfo < TencentCloud::Common::AbstractModel
        # @param Enabled: 日志投递开启状态，开启：true，关闭：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param LogsetId: 日志集ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param TopicId: 日志主题ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param LogRegion: 日志集所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRegion: String

        attr_accessor :Enabled, :LogsetId, :TopicId, :LogRegion

        def initialize(enabled=nil, logsetid=nil, topicid=nil, logregion=nil)
          @Enabled = enabled
          @LogsetId = logsetid
          @TopicId = topicid
          @LogRegion = logregion
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @LogRegion = params['LogRegion']
        end
      end

      # ManualBackupInstance请求参数结构体
      class ManualBackupInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Remark: 手动备份任务的备注信息。
        # @type Remark: String
        # @param StorageDays: 备份数据的保存天数。
        # - 单位：天；默认值为7天；取值范围：[0.1825]。如果超过 7天，请[提交工单](https://console.cloud.tencent.com/workorder/category)申请。
        # - 如果不配置该参数，默认与自动备份的保留时间一致。
        # - 如果未设置自动备份，默认为7天。
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

      # ManualBackupInstance返回参数结构体
      class ManualBackupInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ModfiyInstancePassword请求参数结构体
      class ModfiyInstancePasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param OldPassword: 实例旧密码。
        # @type OldPassword: String
        # @param Password: 实例新密码。密码复杂度要求如下：
        # - 长度8 - 30位, 推荐使用12位以上的密码。
        # - 不能以"/"开头。
        # - 至少包含小写字母a - z、大写字母A - Z、数字0 - 9、特殊字符 ()~!@#$%^&*-+=_|{}[]:;<>,.?/中的两项。
        # @type Password: String

        attr_accessor :InstanceId, :OldPassword, :Password

        def initialize(instanceid=nil, oldpassword=nil, password=nil)
          @InstanceId = instanceid
          @OldPassword = oldpassword
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldPassword = params['OldPassword']
          @Password = params['Password']
        end
      end

      # ModfiyInstancePassword返回参数结构体
      class ModfiyInstancePasswordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAutoBackupConfig请求参数结构体
      class ModifyAutoBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param WeekDays: 设置自动备份周期。可设置为Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。该参数暂不支持修改。
        # @type WeekDays: Array
        # @param TimePeriod: 备份时间段。可设置为每个整点。格式如：00:00-01:00, 01:00-02:00...... 23:00-00:00。
        # @type TimePeriod: String
        # @param AutoBackupType: 自动备份类型。目前仅能配置为：1 ，指定时备份。
        # @type AutoBackupType: Integer

        attr_accessor :InstanceId, :WeekDays, :TimePeriod, :AutoBackupType

        def initialize(instanceid=nil, weekdays=nil, timeperiod=nil, autobackuptype=nil)
          @InstanceId = instanceid
          @WeekDays = weekdays
          @TimePeriod = timeperiod
          @AutoBackupType = autobackuptype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @WeekDays = params['WeekDays']
          @TimePeriod = params['TimePeriod']
          @AutoBackupType = params['AutoBackupType']
        end
      end

      # ModifyAutoBackupConfig返回参数结构体
      class ModifyAutoBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param AutoBackupType: 自动备份类型。目前仅能配置为：1 ，指定时备份。
        # @type AutoBackupType: Integer
        # @param WeekDays: 自动备份周期。取值为：Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        # @type WeekDays: Array
        # @param TimePeriod: 自动定时备份时间段。格式如：00:00-01:00, 01:00-02:00...... 23:00-00:00。
        # @type TimePeriod: String
        # @param BackupStorageDays: 全量备份文件保存天数,单位：天。
        # @type BackupStorageDays: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoBackupType, :WeekDays, :TimePeriod, :BackupStorageDays, :RequestId

        def initialize(autobackuptype=nil, weekdays=nil, timeperiod=nil, backupstoragedays=nil, requestid=nil)
          @AutoBackupType = autobackuptype
          @WeekDays = weekdays
          @TimePeriod = timeperiod
          @BackupStorageDays = backupstoragedays
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoBackupType = params['AutoBackupType']
          @WeekDays = params['WeekDays']
          @TimePeriod = params['TimePeriod']
          @BackupStorageDays = params['BackupStorageDays']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBackupDownloadRestriction请求参数结构体
      class ModifyBackupDownloadRestrictionRequest < TencentCloud::Common::AbstractModel
        # @param LimitType: 下载备份文件的网络限制类型：

        # - NoLimit：不限制，腾讯云内外网均可以下载备份文件。
        # -  LimitOnlyIntranet：仅腾讯云自动分配的内网地址可下载备份文件。
        # - Customize：指用户自定义的私有网络可下载备份文件。
        # @type LimitType: String
        # @param VpcComparisonSymbol: 该参数仅支持输入 In，表示自定义的**LimitVpc**可以下载备份文件。
        # @type VpcComparisonSymbol: String
        # @param IpComparisonSymbol: 标识自定义的 LimitIp 地址是否可下载备份文件。

        # - In: 自定义的 IP 地址可以下载。
        # - NotIn: 自定义的 IP 不可以下载。
        # @type IpComparisonSymbol: String
        # @param LimitVpc: 自定义的可下载备份文件的 VPC ID。当参数**LimitType**为**Customize **时，需配置该参数。
        # @type LimitVpc: Array
        # @param LimitIp: 自定义的可下载备份文件的 VPC IP 地址。当参数**LimitType**为**Customize **时，需配置该参数。
        # @type LimitIp: Array

        attr_accessor :LimitType, :VpcComparisonSymbol, :IpComparisonSymbol, :LimitVpc, :LimitIp

        def initialize(limittype=nil, vpccomparisonsymbol=nil, ipcomparisonsymbol=nil, limitvpc=nil, limitip=nil)
          @LimitType = limittype
          @VpcComparisonSymbol = vpccomparisonsymbol
          @IpComparisonSymbol = ipcomparisonsymbol
          @LimitVpc = limitvpc
          @LimitIp = limitip
        end

        def deserialize(params)
          @LimitType = params['LimitType']
          @VpcComparisonSymbol = params['VpcComparisonSymbol']
          @IpComparisonSymbol = params['IpComparisonSymbol']
          unless params['LimitVpc'].nil?
            @LimitVpc = []
            params['LimitVpc'].each do |i|
              backuplimitvpcitem_tmp = BackupLimitVpcItem.new
              backuplimitvpcitem_tmp.deserialize(i)
              @LimitVpc << backuplimitvpcitem_tmp
            end
          end
          @LimitIp = params['LimitIp']
        end
      end

      # ModifyBackupDownloadRestriction返回参数结构体
      class ModifyBackupDownloadRestrictionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConnectionConfig请求参数结构体
      class ModifyConnectionConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Bandwidth: 附加带宽，大于0，单位MB。
        # @type Bandwidth: Integer
        # @param ClientLimit: 单分片的总连接数。
        # - 未开启副本只读时，下限为10000，上限为40000。
        # - 开启副本只读时，下限为10000，上限为10000×(只读副本数+3)。
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
        # @param TaskId: 任务ID
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
        # @param Product: 数据库引擎名称，本接口取值：redis。
        # @type Product: String
        # @param SecurityGroupIds: 更换为新的安全组 ID 列表，即一个或者多个安全组 ID 组成的数组。
        # - 若实例第一次配置安全组，请使用接口[AssociateSecurityGroups](https://cloud.tencent.com/document/product/239/41260)先绑定安全组。
        # - 更换安全组，请在[控制台安全组](https://console.cloud.tencent.com/vpc/security-group)页面获取安全组 ID。
        # @type SecurityGroupIds: Array
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
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

      # ModifyInstanceAccount请求参数结构体
      class ModifyInstanceAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param AccountName: 子账号名称，如果要修改主账号，填 root。
        # @type AccountName: String
        # @param AccountPassword: 子账号密码。
        # @type AccountPassword: String
        # @param Remark: 子账号描述信息
        # @type Remark: String
        # @param ReadonlyPolicy: 账号读写路由策略。
        # - master：表示主节点。
        # - replication：表示从节点。
        # @type ReadonlyPolicy: Array
        # @param Privilege: 子账号读写策略。
        # - r：只读。
        # - w：只写。
        # - rw：读写。
        # @type Privilege: String
        # @param NoAuth: 指定是否将主账号切换为免密账号。这里只适用于主账号，子账号不可免密。
        # - true：将主账号切换为免密账号。
        # - false：不切换。
        # @type NoAuth: Boolean

        attr_accessor :InstanceId, :AccountName, :AccountPassword, :Remark, :ReadonlyPolicy, :Privilege, :NoAuth

        def initialize(instanceid=nil, accountname=nil, accountpassword=nil, remark=nil, readonlypolicy=nil, privilege=nil, noauth=nil)
          @InstanceId = instanceid
          @AccountName = accountname
          @AccountPassword = accountpassword
          @Remark = remark
          @ReadonlyPolicy = readonlypolicy
          @Privilege = privilege
          @NoAuth = noauth
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AccountName = params['AccountName']
          @AccountPassword = params['AccountPassword']
          @Remark = params['Remark']
          @ReadonlyPolicy = params['ReadonlyPolicy']
          @Privilege = params['Privilege']
          @NoAuth = params['NoAuth']
        end
      end

      # ModifyInstanceAccount返回参数结构体
      class ModifyInstanceAccountResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ModifyInstanceAvailabilityZones请求参数结构体
      class ModifyInstanceAvailabilityZonesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****，请登录[Redis控制台](https://console.cloud.tencent.com/redis#/)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param SwitchOption: 切换时间。
        # - 1：维护时间窗切换。
        # - 2：立即切换。
        # @type SwitchOption: Integer
        # @param NodeSet: 实例的节点信息，包含节点 ID、节点类型、节点可用区 ID等。具体信息，请参见[RedisNodeInfo ](https://cloud.tencent.com/document/product/239/20022)。
        # 单可用区实例无需传NodeId，多可用区实例NodeId必传
        # @type NodeSet: Array

        attr_accessor :InstanceId, :SwitchOption, :NodeSet

        def initialize(instanceid=nil, switchoption=nil, nodeset=nil)
          @InstanceId = instanceid
          @SwitchOption = switchoption
          @NodeSet = nodeset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SwitchOption = params['SwitchOption']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              redisnodeinfo_tmp = RedisNodeInfo.new
              redisnodeinfo_tmp.deserialize(i)
              @NodeSet << redisnodeinfo_tmp
            end
          end
        end
      end

      # ModifyInstanceAvailabilityZones返回参数结构体
      class ModifyInstanceAvailabilityZonesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
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

      # ModifyInstanceBackupMode请求参数结构体
      class ModifyInstanceBackupModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例的ID，长度在12-36之间。
        # @type InstanceId: String
        # @param BackupMode: 备份模式：
        # - SecondLevelBackup   秒级备份
        # - NormalLevelBackup    普通备份
        # @type BackupMode: String

        attr_accessor :InstanceId, :BackupMode

        def initialize(instanceid=nil, backupmode=nil)
          @InstanceId = instanceid
          @BackupMode = backupmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMode = params['BackupMode']
        end
      end

      # ModifyInstanceBackupMode返回参数结构体
      class ModifyInstanceBackupModeResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ModifyInstanceEvent请求参数结构体
      class ModifyInstanceEventRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis#/)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param EventId: 事件 ID。请通过 DescribeInstanceEvents 获取需修改的事件 ID。
        # @type EventId: Integer
        # @param StartTime: 修改事件执行的计划开始时间。
        # @type StartTime: String
        # @param EndTime: 修改事件计划执行的结束时间。开始时间配置之后，结束时间只能选择在开始时间之后的 30 分钟、1 小时、1.5 小时、2 小时和 3 小时之内。
        # @type EndTime: String
        # @param ExecutionDate: 修改事件执行计划的开始日期。
        # @type ExecutionDate: String
        # @param Status: 修改事件的运行状态。该参数当前仅支持设置为 **Canceled**， 即取消执行当前事件。可通过 DescribeInstanceEvents 接口查询当前事件的运行状态与事件级别。
        # - 事件级别为Critical（关键）或 High（重要）类事件不支持取消。即严重的事件必须执行，不可取消。
        # - 仅运行状态为 Waiting （待执行的事件）的事件，才能执行取消操作。
        # @type Status: String

        attr_accessor :InstanceId, :EventId, :StartTime, :EndTime, :ExecutionDate, :Status

        def initialize(instanceid=nil, eventid=nil, starttime=nil, endtime=nil, executiondate=nil, status=nil)
          @InstanceId = instanceid
          @EventId = eventid
          @StartTime = starttime
          @EndTime = endtime
          @ExecutionDate = executiondate
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EventId = params['EventId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecutionDate = params['ExecutionDate']
          @Status = params['Status']
        end
      end

      # ModifyInstanceEvent返回参数结构体
      class ModifyInstanceEventResponse < TencentCloud::Common::AbstractModel
        # @param EventId: 事件 ID。
        # @type EventId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventId, :RequestId

        def initialize(eventid=nil, requestid=nil)
          @EventId = eventid
          @RequestId = requestid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceLogDelivery请求参数结构体
      class ModifyInstanceLogDeliveryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param LogType: 日志类型。当前仅支持设置为slowlog，指慢查询日志。
        # @type LogType: String
        # @param Enabled: 日志投递开启状态。
        # - true：开启。
        # - false：关闭。
        # @type Enabled: Boolean
        # @param LogsetId: 投递的日志集ID。通过接口[DescribeInstanceLogDelivery](https://cloud.tencent.com/document/product/239/110878)的返回参数 **SlowLog** 的子参数 **LogsetId** 获取。
        # @type LogsetId: String
        # @param TopicId: 投递的日志主题ID。请通过接口[DescribeInstanceLogDelivery](https://cloud.tencent.com/document/product/239/110878)的返回参数 **SlowLog** 的子参数 **TopicId** 获取。
        # @type TopicId: String
        # @param LogsetName: 日志集名称。若**LogsetId**未指定具体的日志集ID，请配置该参数，设置日志集名称，系统会以设置的日志集名称自动创建新的日志集。
        # @type LogsetName: String
        # @param TopicName: 日志主题名称，TopicId为空时必传，会自动创建新的日志主题。
        # @type TopicName: String
        # @param LogRegion: 日志集所在地域，不传默认使用实例所在地域。
        # @type LogRegion: String
        # @param Period: 日志存储时间，默认为30天，可选范围1-3600天。
        # @type Period: Integer
        # @param CreateIndex: 创建日志主题时，是否创建索引。
        # @type CreateIndex: Boolean

        attr_accessor :InstanceId, :LogType, :Enabled, :LogsetId, :TopicId, :LogsetName, :TopicName, :LogRegion, :Period, :CreateIndex

        def initialize(instanceid=nil, logtype=nil, enabled=nil, logsetid=nil, topicid=nil, logsetname=nil, topicname=nil, logregion=nil, period=nil, createindex=nil)
          @InstanceId = instanceid
          @LogType = logtype
          @Enabled = enabled
          @LogsetId = logsetid
          @TopicId = topicid
          @LogsetName = logsetname
          @TopicName = topicname
          @LogRegion = logregion
          @Period = period
          @CreateIndex = createindex
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogType = params['LogType']
          @Enabled = params['Enabled']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
          @LogsetName = params['LogsetName']
          @TopicName = params['TopicName']
          @LogRegion = params['LogRegion']
          @Period = params['Period']
          @CreateIndex = params['CreateIndex']
        end
      end

      # ModifyInstanceLogDelivery返回参数结构体
      class ModifyInstanceLogDeliveryResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
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
        # @param Changed: 说明修改参数配置是否成功。<br><li>true：指修改成功；</li><li>false：指修改失败。</li>
        # @type Changed: Boolean
        # @param TaskId: 任务ID。
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

      # ModifyInstancePassword请求参数结构体
      class ModifyInstancePasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param OldPassword: 实例旧密码。
        # @type OldPassword: String
        # @param Password: 实例新密码。密码复杂度要求如下：
        # - 长度8 - 30位, 推荐使用12位以上的密码。
        # - 不能以"/"开头。
        # - 至少包含小写字母a - z、大写字母A - Z、数字0 - 9、特殊字符 ()~!@#$%^&*-+=_|{}[]:;<>,.?/中的两项。
        # @type Password: String

        attr_accessor :InstanceId, :OldPassword, :Password

        def initialize(instanceid=nil, oldpassword=nil, password=nil)
          @InstanceId = instanceid
          @OldPassword = oldpassword
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldPassword = params['OldPassword']
          @Password = params['Password']
        end
      end

      # ModifyInstancePassword返回参数结构体
      class ModifyInstancePasswordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceReadOnly请求参数结构体
      class ModifyInstanceReadOnlyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param InputMode: 实例输入模式。
        # - 0：读写。
        # - 1：只读。
        # @type InputMode: String

        attr_accessor :InstanceId, :InputMode

        def initialize(instanceid=nil, inputmode=nil)
          @InstanceId = instanceid
          @InputMode = inputmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InputMode = params['InputMode']
        end
      end

      # ModifyInstanceReadOnly返回参数结构体
      class ModifyInstanceReadOnlyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Operation: 修改实例操作。如填写：
        # - rename：表示实例重命名。
        # - modifyProject：修改实例所属项目。
        # - modifyAutoRenew：修改实例续费标记。
        # @type Operation: String
        # @param InstanceIds: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。每次请求的实例数量的上限为10。
        # @type InstanceIds: Array
        # @param InstanceNames: 实例的新名称。
        # @type InstanceNames: Array
        # @param ProjectId: 项目 ID，请登录[Redis控制台的项目管理](https://console.cloud.tencent.com/project)页面，在**项目名称**中复制项目 ID。
        # @type ProjectId: Integer
        # @param AutoRenews: 自动续费标识。
        # - 0：默认状态，指手动续费。
        # - 1：自动续费。
        # - 2：明确不自动续费。
        # @type AutoRenews: Array
        # @param InstanceId: 目前在废弃中，存量用户还可以使用，建议新用户使用 InstanceIds。
        # @type InstanceId: String
        # @param InstanceName: 已经废弃
        # @type InstanceName: String
        # @param AutoRenew: 已经废弃。
        # @type AutoRenew: Integer

        attr_accessor :Operation, :InstanceIds, :InstanceNames, :ProjectId, :AutoRenews, :InstanceId, :InstanceName, :AutoRenew

        def initialize(operation=nil, instanceids=nil, instancenames=nil, projectid=nil, autorenews=nil, instanceid=nil, instancename=nil, autorenew=nil)
          @Operation = operation
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @ProjectId = projectid
          @AutoRenews = autorenews
          @InstanceId = instanceid
          @InstanceName = instancename
          @AutoRenew = autorenew
        end

        def deserialize(params)
          @Operation = params['Operation']
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @ProjectId = params['ProjectId']
          @AutoRenews = params['AutoRenews']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AutoRenew = params['AutoRenew']
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
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param StartTime: 维护时间窗起始时间，如：17:00。
        # @type StartTime: String
        # @param EndTime: 维护时间窗结束时间，如：19:00。
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
        # @param Status: 修改状态：success 或者 failed
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
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Operation: 指预修改网络的类别，包括：
        # - changeVip：指切换私有网络，包含其内网IPv4地址及端口。
        # - changeVpc：指切换私有网络所属子网。
        # - changeBaseToVpc：指基础网络切换为私有网络。
        # - changeVPort：指仅修改实例网络端口。
        # @type Operation: String
        # @param Vip: 指实例私有网络内网 IPv4 地址。当**Operation**为**changeVip**时，需配置该参数。
        # @type Vip: String
        # @param VpcId: 指修改后的私有网络 ID。
        # - 当**Operation**为**changeVpc**或**changeBaseToVpc**时，需配置该参数。
        # - 请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)，切换至**实例详情**页面，在**网络信息**区域，单击所属网络后面的私有网络名称，获取私有网络 ID。
        # @type VpcId: String
        # @param SubnetId: 指修改后的私有网络所属子网 ID。
        # - 当**Operation**为**changeVpc**或**changeBaseToVpc**时，需配置该参数。
        # - 请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)，切换至**实例详情**页面，在**网络信息**区域，单击所属网络后面的子网名称，获取子网ID。
        # @type SubnetId: String
        # @param Recycle: 原内网 IPv4 地址保留时长。
        # - 单位：天。
        # - 取值范围：0、1、2、3、7、15。
        # **说明**：保留时长不设置或者设置为0，原网络地址将立即释放。
        # @type Recycle: Integer
        # @param VPort: 指修改后的网络端口。当**Operation**为**changeVPort**或**changeVip**时，需配置该参数。取值范围为[1024,65535]。
        # @type VPort: Integer

        attr_accessor :InstanceId, :Operation, :Vip, :VpcId, :SubnetId, :Recycle, :VPort

        def initialize(instanceid=nil, operation=nil, vip=nil, vpcid=nil, subnetid=nil, recycle=nil, vport=nil)
          @InstanceId = instanceid
          @Operation = operation
          @Vip = vip
          @VpcId = vpcid
          @SubnetId = subnetid
          @Recycle = recycle
          @VPort = vport
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Operation = params['Operation']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Recycle = params['Recycle']
          @VPort = params['VPort']
        end
      end

      # ModifyNetworkConfig返回参数结构体
      class ModifyNetworkConfigResponse < TencentCloud::Common::AbstractModel
        # @param Status: 执行状态，请忽略该参数。
        # @type Status: Boolean
        # @param SubnetId: 指实例新私有网络所属子网 ID。
        # @type SubnetId: String
        # @param VpcId: 指实例新的私有网络ID。
        # @type VpcId: String
        # @param Vip: 指实例新的内网 IPv4 地址。
        # @type Vip: String
        # @param TaskId: 任务 ID。获取**taskId**，通过接口 [DescribeTaskInfo](https://cloud.tencent.com/document/product/239/30601) 查询任务执行状态。
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

      # ModifyParamTemplate请求参数结构体
      class ModifyParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 源参数模板 ID。 请通过接口[DescribeParamTemplateInfo](https://cloud.tencent.com/document/product/239/58748)的返回参数 **TemplateId** 获取参数模板 ID。
        # @type TemplateId: String
        # @param Name: 参数模板修改后的新名称。
        # @type Name: String
        # @param Description: 参数模板修改后的新描述。
        # @type Description: String
        # @param ParamList: 修改后的新参数列表。
        # @type ParamList: Array

        attr_accessor :TemplateId, :Name, :Description, :ParamList

        def initialize(templateid=nil, name=nil, description=nil, paramlist=nil)
          @TemplateId = templateid
          @Name = name
          @Description = description
          @ParamList = paramlist
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              instanceparam_tmp = InstanceParam.new
              instanceparam_tmp.deserialize(i)
              @ParamList << instanceparam_tmp
            end
          end
        end
      end

      # ModifyParamTemplate返回参数结构体
      class ModifyParamTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyReplicationGroup请求参数结构体
      class ModifyReplicationGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 复制组ID。请登录[Redis控制台的全球复制](https://console.cloud.tencent.com/redis/replication)页面获取复制组 ID。
        # @type GroupId: String
        # @param GroupName: 修改后的复制组名称。
        # @type GroupName: String
        # @param Remark: 备注描述。
        # @type Remark: String

        attr_accessor :GroupId, :GroupName, :Remark

        def initialize(groupid=nil, groupname=nil, remark=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Remark = remark
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Remark = params['Remark']
        end
      end

      # ModifyReplicationGroup返回参数结构体
      class ModifyReplicationGroupResponse < TencentCloud::Common::AbstractModel
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

      # OpenSSL请求参数结构体
      class OpenSSLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # OpenSSL返回参数结构体
      class OpenSSLResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
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

      # 参数模板信息
      class ParamTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: String
        # @param Name: 参数模板名称。
        # @type Name: String
        # @param Description: 参数模板描述。
        # @type Description: String
        # @param ProductType: 实例类型。
        # - 2：Redis 2.8内存版（标准架构）。
        # - 3：CKV 3.2内存版（标准架构）。
        # - 4：CKV 3.2内存版（集群架构）。
        # - 5：Redis 2.8内存版（单机）。
        # - 6：Redis 4.0内存版（标准架构）。
        # - 7：Redis 4.0内存版（集群架构）。
        # - 8：Redis 5.0内存版（标准架构）。
        # - 9：Redis 5.0内存版（集群架构）。
        # - 15：Redis 6.2内存版（标准架构）。
        # - 16：Redis 6.2内存版（集群架构）。
        # @type ProductType: Integer

        attr_accessor :TemplateId, :Name, :Description, :ProductType

        def initialize(templateid=nil, name=nil, description=nil, producttype=nil)
          @TemplateId = templateid
          @Name = name
          @Description = description
          @ProductType = producttype
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @Description = params['Description']
          @ProductType = params['ProductType']
        end
      end

      # Redis参数模板参数详情
      class ParameterDetail < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称。
        # @type Name: String
        # @param ParamType: 参数类型。
        # @type ParamType: String
        # @param Default: 参数默认值。
        # @type Default: String
        # @param Description: 参数描述。
        # @type Description: String
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param NeedReboot: 修改参数后，是否需要重启数据库以使参数生效。
        # - 0：不需要重启。
        # - 1：需要重启。
        # @type NeedReboot: Integer
        # @param Max: 参数允许的最大值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: String
        # @param Min: 参数允许的最小值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: String
        # @param EnumValue: 参数可选枚举值。如果为非枚举参数，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array

        attr_accessor :Name, :ParamType, :Default, :Description, :CurrentValue, :NeedReboot, :Max, :Min, :EnumValue

        def initialize(name=nil, paramtype=nil, default=nil, description=nil, currentvalue=nil, needreboot=nil, max=nil, min=nil, enumvalue=nil)
          @Name = name
          @ParamType = paramtype
          @Default = default
          @Description = description
          @CurrentValue = currentvalue
          @NeedReboot = needreboot
          @Max = max
          @Min = min
          @EnumValue = enumvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @ParamType = params['ParamType']
          @Default = params['Default']
          @Description = params['Description']
          @CurrentValue = params['CurrentValue']
          @NeedReboot = params['NeedReboot']
          @Max = params['Max']
          @Min = params['Min']
          @EnumValue = params['EnumValue']
        end
      end

      # 产品信息
      class ProductConf < TencentCloud::Common::AbstractModel
        # @param Type: 产品类型。
        # - 2：Redis 2.8内存版（标准架构）。
        # - 3：CKV 3.2内存版（标准架构）。
        # - 4：CKV 3.2内存版（集群架构）。
        # - 5：Redis 2.8内存版（单机）。
        # - 6：Redis 4.0内存版（标准架构）。
        # - 7：Redis 4.0内存版（集群架构）。
        # - 8：Redis 5.0内存版（标准架构）。
        # - 9：Redis 5.0内存版（集群架构）。
        # - 15：Redis 6.2内存版（标准架构）。
        # - 16：Redis 6.2内存版（集群架构）。
        # @type Type: Integer
        # @param TypeName: 产品名称。包括：Redis 主从版、CKV 主从版、CKV 集群版、Redis 单机版、Redis 集群版。
        # @type TypeName: String
        # @param MinBuyNum: 购买时的最小数量。
        # @type MinBuyNum: Integer
        # @param MaxBuyNum: 购买时的最大数量。
        # @type MaxBuyNum: Integer
        # @param Saleout: 产品是否售罄。
        # - true：售罄。
        # - false：未售罄。
        # @type Saleout: Boolean
        # @param Engine: 产品引擎。Redis 或者 CKV。
        # @type Engine: String
        # @param Version: 兼容版本。包括：Redis-2.8、Redis-3.2、Redis-4.0、Redis-5.0、Redis-6.2。
        # @type Version: String
        # @param TotalSize: 规格总大小，单位GB。
        # @type TotalSize: Array
        # @param ShardSize: 每个分片大小，单位GB。
        # @type ShardSize: Array
        # @param ReplicaNum: 副本数量。
        # @type ReplicaNum: Array
        # @param ShardNum: 分片数量。
        # @type ShardNum: Array
        # @param PayMode: 支持的计费模式。
        # - 1：包年包月。
        # - 0：按量计费。
        # @type PayMode: String
        # @param EnableRepicaReadOnly: 该参数名因存在拼写不规范的问题，建议使用**EnableReplicaReadOnly**参数取代。其含义为是否支持副本只读。
        # - true：支持副本只读。
        # - false：不支持。
        # @type EnableRepicaReadOnly: Boolean
        # @param EnableReplicaReadOnly: 是否支持副本只读。
        # - true：支持副本只读。
        # - false：不支持。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableReplicaReadOnly: Boolean

        attr_accessor :Type, :TypeName, :MinBuyNum, :MaxBuyNum, :Saleout, :Engine, :Version, :TotalSize, :ShardSize, :ReplicaNum, :ShardNum, :PayMode, :EnableRepicaReadOnly, :EnableReplicaReadOnly

        def initialize(type=nil, typename=nil, minbuynum=nil, maxbuynum=nil, saleout=nil, engine=nil, version=nil, totalsize=nil, shardsize=nil, replicanum=nil, shardnum=nil, paymode=nil, enablerepicareadonly=nil, enablereplicareadonly=nil)
          @Type = type
          @TypeName = typename
          @MinBuyNum = minbuynum
          @MaxBuyNum = maxbuynum
          @Saleout = saleout
          @Engine = engine
          @Version = version
          @TotalSize = totalsize
          @ShardSize = shardsize
          @ReplicaNum = replicanum
          @ShardNum = shardnum
          @PayMode = paymode
          @EnableRepicaReadOnly = enablerepicareadonly
          @EnableReplicaReadOnly = enablereplicareadonly
        end

        def deserialize(params)
          @Type = params['Type']
          @TypeName = params['TypeName']
          @MinBuyNum = params['MinBuyNum']
          @MaxBuyNum = params['MaxBuyNum']
          @Saleout = params['Saleout']
          @Engine = params['Engine']
          @Version = params['Version']
          @TotalSize = params['TotalSize']
          @ShardSize = params['ShardSize']
          @ReplicaNum = params['ReplicaNum']
          @ShardNum = params['ShardNum']
          @PayMode = params['PayMode']
          @EnableRepicaReadOnly = params['EnableRepicaReadOnly']
          @EnableReplicaReadOnly = params['EnableReplicaReadOnly']
        end
      end

      # Proxy节点信息。
      class ProxyNodes < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param ZoneId: 可用区 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer

        attr_accessor :NodeId, :ZoneId

        def initialize(nodeid=nil, zoneid=nil)
          @NodeId = nodeid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @ZoneId = params['ZoneId']
        end
      end

      # 实例的备份数组
      class RedisBackupSet < TencentCloud::Common::AbstractModel
        # @param StartTime: 备份开始时间。
        # @type StartTime: String
        # @param BackupId: 备份任务ID。
        # @type BackupId: String
        # @param BackupType: 备份类型。
        # - 1：凌晨系统发起的自动备份。
        # - 0：用户发起的手动备份。
        # @type BackupType: String
        # @param Status: 备份状态。
        # - 1：备份被其它流程锁定。
        # - 2：备份正常，没有被任何流程锁定。
        # - -1：备份已过期。
        # - 3：备份正在被导出。
        # - 4：备份导出成功。
        # @type Status: Integer
        # @param Remark: 备份的备注信息。
        # @type Remark: String
        # @param Locked: 备份是否被锁定。
        # - 0：未被锁定。
        # - 1：已被锁定。
        # @type Locked: Integer
        # @param BackupSize: 内部字段，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupSize: Integer
        # @param FullBackup: 内部字段，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullBackup: Integer
        # @param InstanceType: 内部字段，用户可忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param Region: 本地备份所在地域。
        # @type Region: String
        # @param EndTime: 备份结束时间。
        # @type EndTime: String
        # @param FileType: 备份文件类型。
        # @type FileType: String
        # @param ExpireTime: 备份文件过期时间。
        # @type ExpireTime: String

        attr_accessor :StartTime, :BackupId, :BackupType, :Status, :Remark, :Locked, :BackupSize, :FullBackup, :InstanceType, :InstanceId, :InstanceName, :Region, :EndTime, :FileType, :ExpireTime

        def initialize(starttime=nil, backupid=nil, backuptype=nil, status=nil, remark=nil, locked=nil, backupsize=nil, fullbackup=nil, instancetype=nil, instanceid=nil, instancename=nil, region=nil, endtime=nil, filetype=nil, expiretime=nil)
          @StartTime = starttime
          @BackupId = backupid
          @BackupType = backuptype
          @Status = status
          @Remark = remark
          @Locked = locked
          @BackupSize = backupsize
          @FullBackup = fullbackup
          @InstanceType = instancetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @EndTime = endtime
          @FileType = filetype
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @BackupId = params['BackupId']
          @BackupType = params['BackupType']
          @Status = params['Status']
          @Remark = params['Remark']
          @Locked = params['Locked']
          @BackupSize = params['BackupSize']
          @FullBackup = params['FullBackup']
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @EndTime = params['EndTime']
          @FileType = params['FileType']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 单个实例信息
      class RedisCommonInstanceList < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param AppId: 用户APPID。APPID是与账号ID有唯一对应关系的应用 ID，部分腾讯云产品会使用此 APPID。
        # @type AppId: Integer
        # @param ProjectId: 实例所属项目 ID。
        # @type ProjectId: Integer
        # @param Region: 实例接入区域。
        # @type Region: String
        # @param Zone: 实例接入可用区。
        # @type Zone: String
        # @param VpcId: 实例私有网络 ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络所属子网 ID。
        # @type SubnetId: String
        # @param Status: 实例状态信息。
        # - 1-流程中。
        # - 2-运行中。
        # - -2-实例已隔离。
        # - -3-实例待回收。
        # - -4-实例已删除。
        # @type Status: String
        # @param Vips: 实例私有网络 IP 地址。
        # @type Vips: Array
        # @param Vport: 实例网络端口。
        # @type Vport: Integer
        # @param Createtime: 实例创建时间。
        # @type Createtime: String
        # @param PayMode: 计费类型。
        # - 0：按量计费。
        # - 1：包年包月。
        # @type PayMode: Integer
        # @param NetType: 网络类型。
        # - 0：基础网络。
        # - 1：VPC 网络。
        # @type NetType: Integer

        attr_accessor :InstanceName, :InstanceId, :AppId, :ProjectId, :Region, :Zone, :VpcId, :SubnetId, :Status, :Vips, :Vport, :Createtime, :PayMode, :NetType

        def initialize(instancename=nil, instanceid=nil, appid=nil, projectid=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, status=nil, vips=nil, vport=nil, createtime=nil, paymode=nil, nettype=nil)
          @InstanceName = instancename
          @InstanceId = instanceid
          @AppId = appid
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @Vips = vips
          @Vport = vport
          @Createtime = createtime
          @PayMode = paymode
          @NetType = nettype
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @Vips = params['Vips']
          @Vport = params['Vport']
          @Createtime = params['Createtime']
          @PayMode = params['PayMode']
          @NetType = params['NetType']
        end
      end

      # 实例事件信息
      class RedisInstanceEvent < TencentCloud::Common::AbstractModel
        # @param ID: 事件 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: 实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Type: 事件类型，当前仅支持配置实例迁移、资源腾挪、机房裁撤相关的运维操作。该参数仅支持配置为 **InstanceMigration**。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Grade: 事件等级根据其影响严重程度和紧急程度进行分级，由重至轻依次为关键、重要、中等、一般。
        # - Critical：关键
        # - High：重要
        # - Middle：中等
        # - Low：一般
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grade: String
        # @param ExecutionDate: 事件计划执行日期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionDate: String
        # @param StartTime: 事件计划执行开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 事件计划执行结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param LatestExecutionDate: 运维事件最迟执行的日期，即该事件必须在该日期之前完成，否则可能会对业务产生影响。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestExecutionDate: String
        # @param Status: 事件当前状态。
        # - Waiting：未到达执行日期或不在维护时间窗内的事件。
        # - Running：在维护时间窗内，正在执行维护的事件。
        # - Finished：已全部完成维护的事件。
        # - Canceled：已取消执行的事件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskEndTime: 事件执行任务完成时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskEndTime: String
        # @param EffectInfo: 事件影响信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectInfo: String
        # @param InitialExecutionDate: 事件最初计划执行日期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialExecutionDate: String

        attr_accessor :ID, :InstanceId, :InstanceName, :Type, :Grade, :ExecutionDate, :StartTime, :EndTime, :LatestExecutionDate, :Status, :TaskEndTime, :EffectInfo, :InitialExecutionDate

        def initialize(id=nil, instanceid=nil, instancename=nil, type=nil, grade=nil, executiondate=nil, starttime=nil, endtime=nil, latestexecutiondate=nil, status=nil, taskendtime=nil, effectinfo=nil, initialexecutiondate=nil)
          @ID = id
          @InstanceId = instanceid
          @InstanceName = instancename
          @Type = type
          @Grade = grade
          @ExecutionDate = executiondate
          @StartTime = starttime
          @EndTime = endtime
          @LatestExecutionDate = latestexecutiondate
          @Status = status
          @TaskEndTime = taskendtime
          @EffectInfo = effectinfo
          @InitialExecutionDate = initialexecutiondate
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Type = params['Type']
          @Grade = params['Grade']
          @ExecutionDate = params['ExecutionDate']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @LatestExecutionDate = params['LatestExecutionDate']
          @Status = params['Status']
          @TaskEndTime = params['TaskEndTime']
          @EffectInfo = params['EffectInfo']
          @InitialExecutionDate = params['InitialExecutionDate']
        end
      end

      # Redis节点的运行信息
      class RedisNode < TencentCloud::Common::AbstractModel
        # @param Keys: Redis 节点上 Key 的个数。
        # @type Keys: Integer
        # @param Slot: Redis 节点 Slot 分布范围。例如：0-5460。
        # @type Slot: String
        # @param NodeId: 节点的序列 ID。
        # @type NodeId: String
        # @param Status: 节点的状态。
        # @type Status: String
        # @param Role: 节点角色。
        # @type Role: String

        attr_accessor :Keys, :Slot, :NodeId, :Status, :Role

        def initialize(keys=nil, slot=nil, nodeid=nil, status=nil, role=nil)
          @Keys = keys
          @Slot = slot
          @NodeId = nodeid
          @Status = status
          @Role = role
        end

        def deserialize(params)
          @Keys = params['Keys']
          @Slot = params['Slot']
          @NodeId = params['NodeId']
          @Status = params['Status']
          @Role = params['Role']
        end
      end

      # 描述 Redis 实例的主节点或者副本节点信息。
      class RedisNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型。<ul><li>0：为主节点。</li><li>1：为副本节点。</li></ul>
        # @type NodeType: Integer
        # @param NodeId: 主节点或者副本节点的 ID。<ul><li>该参数用于创建 Redis 实例接口[CreateInstances](https://cloud.tencent.com/document/product/239/20026) 并不需要设置，而用于变更实例配置的接口 [UpgradeInstance](https://cloud.tencent.com/document/product/239/20013) 删除副本时才需要设置。</li><li>该参数可使用接口 [DescribeInstances](https://cloud.tencent.com/document/product/239/20018) 获取Integer类型的节点 ID。</li></ul>
        # @type NodeId: Integer
        # @param ZoneId: 主节点或者副本节点的可用区 ID。
        # @type ZoneId: Integer
        # @param ZoneName: 主节点或者副本节点的可用区名称。
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

      # Redis节点信息
      class RedisNodes < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点 ID。
        # @type NodeId: String
        # @param NodeRole: 节点角色。
        # @type NodeRole: String
        # @param ClusterId: 分片 ID。
        # @type ClusterId: Integer
        # @param ZoneId: 可用区 ID。
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

      # 地域信息
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

      # ReleaseWanAddress请求参数结构体
      class ReleaseWanAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ReleaseWanAddress返回参数结构体
      class ReleaseWanAddressResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param WanStatus: 关闭外网的状态
        # @type WanStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :WanStatus, :RequestId

        def initialize(flowid=nil, wanstatus=nil, requestid=nil)
          @FlowId = flowid
          @WanStatus = wanstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @WanStatus = params['WanStatus']
          @RequestId = params['RequestId']
        end
      end

      # RemoveReplicationInstance请求参数结构体
      class RemoveReplicationInstanceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 复制组 ID。例如：crs-rpl-m3zt****。请登录[Redis 控制台](https://console.cloud.tencent.com/redis/replication)的全球复制组列表获取复制组 ID。
        # @type GroupId: String
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param SyncType: 数据同步类型。
        # - true：需数据强同步。
        # - false：无需强同步，仅限删除主实例。
        # @type SyncType: Boolean

        attr_accessor :GroupId, :InstanceId, :SyncType

        def initialize(groupid=nil, instanceid=nil, synctype=nil)
          @GroupId = groupid
          @InstanceId = instanceid
          @SyncType = synctype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceId = params['InstanceId']
          @SyncType = params['SyncType']
        end
      end

      # RemoveReplicationInstance返回参数结构体
      class RemoveReplicationInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
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

      # RenewInstance请求参数结构体
      class RenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Period: 购买时长，单位：月。
        # @type Period: Integer
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param ModifyPayMode: 标识是否修改计费模式。<ul><li>当前实例计费模式为按量计费方式，预转换为包年包月而续费，请指定该参数为 <b>prepaid</b>。</li><li>当前实例计费模式为包年包月方式，可不设置该参数。</li></ul>
        # @type ModifyPayMode: String

        attr_accessor :Period, :InstanceId, :ModifyPayMode

        def initialize(period=nil, instanceid=nil, modifypaymode=nil)
          @Period = period
          @InstanceId = instanceid
          @ModifyPayMode = modifypaymode
        end

        def deserialize(params)
          @Period = params['Period']
          @InstanceId = params['InstanceId']
          @ModifyPayMode = params['ModifyPayMode']
        end
      end

      # RenewInstance返回参数结构体
      class RenewInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 实例节点组信息
      class ReplicaGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 节点组 ID。
        # @type GroupId: Integer
        # @param GroupName: 节点组的名称，主节点为空。
        # @type GroupName: String
        # @param ZoneId: 节点的可用区ID，比如ap-guangzhou-1
        # @type ZoneId: String
        # @param Role: 节点组类型，master为主节点，replica为副本节点。
        # @type Role: String
        # @param RedisNodes: 节点组节点列表
        # @type RedisNodes: Array

        attr_accessor :GroupId, :GroupName, :ZoneId, :Role, :RedisNodes

        def initialize(groupid=nil, groupname=nil, zoneid=nil, role=nil, redisnodes=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ZoneId = zoneid
          @Role = role
          @RedisNodes = redisnodes
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ZoneId = params['ZoneId']
          @Role = params['Role']
          unless params['RedisNodes'].nil?
            @RedisNodes = []
            params['RedisNodes'].each do |i|
              redisnode_tmp = RedisNode.new
              redisnode_tmp.deserialize(i)
              @RedisNodes << redisnode_tmp
            end
          end
        end
      end

      # ResetPassword请求参数结构体
      class ResetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Password: 重置的密码。若切换为免密实例时，可不配置该参数。其他情况必须配置。
        # @type Password: String
        # @param NoAuth: 是否切换免密实例。
        # - false：切换为非免密码实例。
        # - true：切换为免密码实例。默认 false。
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
        # @param TaskId: 任务ID（修改密码时的任务ID，如果时切换免密码或者非免密码实例，则无需关注此返回值）
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

      # redis独享集群资源包
      class ResourceBundle < TencentCloud::Common::AbstractModel
        # @param ResourceBundleName: 资源包名称
        # @type ResourceBundleName: String
        # @param AvailableMemory: 可售卖内存，单位：GB
        # @type AvailableMemory: Integer
        # @param Count: 资源包个数
        # @type Count: Integer

        attr_accessor :ResourceBundleName, :AvailableMemory, :Count

        def initialize(resourcebundlename=nil, availablememory=nil, count=nil)
          @ResourceBundleName = resourcebundlename
          @AvailableMemory = availablememory
          @Count = count
        end

        def deserialize(params)
          @ResourceBundleName = params['ResourceBundleName']
          @AvailableMemory = params['AvailableMemory']
          @Count = params['Count']
        end
      end

      # API购买实例绑定标签
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签Key。
        # @type TagKey: String
        # @param TagValue: 标签 Key 对应的 Value。
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

      # RestoreInstance请求参数结构体
      class RestoreInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例ID，可通过 DescribeInstances 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param BackupId: 备份ID，可通过 GetRedisBackupList 接口返回值中的 backupId 获取
        # @type BackupId: String
        # @param Password: 实例密码，恢复实例时，需要校验实例密码（免密实例不需要传密码）
        # @type Password: String

        attr_accessor :InstanceId, :BackupId, :Password

        def initialize(instanceid=nil, backupid=nil, password=nil)
          @InstanceId = instanceid
          @BackupId = backupid
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
          @Password = params['Password']
        end
      end

      # RestoreInstance返回参数结构体
      class RestoreInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过 DescribeTaskInfo 接口查询任务执行状态
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

      # 秒级备份不存在的时间戳范围
      class SecondLevelBackupMissingTimestamps < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 开始时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeStamp: Integer
        # @param EndTimeStamp: 结束时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTimeStamp: Integer

        attr_accessor :StartTimeStamp, :EndTimeStamp

        def initialize(starttimestamp=nil, endtimestamp=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
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

      # 安全组详情
      class SecurityGroupDetail < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param CreateTime: 创建安全组的时间。
        # @type CreateTime: String
        # @param SecurityGroupId: 安全组 ID。
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称。
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组标记。
        # @type SecurityGroupRemark: String
        # @param InboundRule: 安全组入站规则，即控制访问数据库的来源。
        # @type InboundRule: Array
        # @param OutboundRule: 安全组出站规则。
        # @type OutboundRule: Array

        attr_accessor :ProjectId, :CreateTime, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark, :InboundRule, :OutboundRule

        def initialize(projectid=nil, createtime=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil, inboundrule=nil, outboundrule=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
          @InboundRule = inboundrule
          @OutboundRule = outboundrule
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
          unless params['InboundRule'].nil?
            @InboundRule = []
            params['InboundRule'].each do |i|
              securitygroupsinboundandoutbound_tmp = SecurityGroupsInboundAndOutbound.new
              securitygroupsinboundandoutbound_tmp.deserialize(i)
              @InboundRule << securitygroupsinboundandoutbound_tmp
            end
          end
          unless params['OutboundRule'].nil?
            @OutboundRule = []
            params['OutboundRule'].each do |i|
              securitygroupsinboundandoutbound_tmp = SecurityGroupsInboundAndOutbound.new
              securitygroupsinboundandoutbound_tmp.deserialize(i)
              @OutboundRule << securitygroupsinboundandoutbound_tmp
            end
          end
        end
      end

      # 安全组出入规则
      class SecurityGroupsInboundAndOutbound < TencentCloud::Common::AbstractModel
        # @param Action: 标识出入数据库的IP与端口是否被允许。
        # - ACCEPT：允许。
        # - DROP：不允许。
        # @type Action: String
        # @param Ip: 出入数据库的IP地址
        # @type Ip: String
        # @param Port: 端口号。
        # @type Port: String
        # @param Proto: 协议类型。
        # @type Proto: String

        attr_accessor :Action, :Ip, :Port, :Proto

        def initialize(action=nil, ip=nil, port=nil, proto=nil)
          @Action = action
          @Ip = ip
          @Port = port
          @Proto = proto
        end

        def deserialize(params)
          @Action = params['Action']
          @Ip = params['Ip']
          @Port = params['Port']
          @Proto = params['Proto']
        end
      end

      # 访问命令
      class SourceCommand < TencentCloud::Common::AbstractModel
        # @param Cmd: 命令名称。
        # @type Cmd: String
        # @param Count: 执行次数。
        # @type Count: Integer

        attr_accessor :Cmd, :Count

        def initialize(cmd=nil, count=nil)
          @Cmd = cmd
          @Count = count
        end

        def deserialize(params)
          @Cmd = params['Cmd']
          @Count = params['Count']
        end
      end

      # 访问来源信息
      class SourceInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 来源 IP 地址。
        # @type Ip: String
        # @param Conn: 客户端连接数量。
        # @type Conn: Integer
        # @param Cmd: 命令
        # @type Cmd: Integer

        attr_accessor :Ip, :Conn, :Cmd

        def initialize(ip=nil, conn=nil, cmd=nil)
          @Ip = ip
          @Conn = conn
          @Cmd = cmd
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Conn = params['Conn']
          @Cmd = params['Cmd']
        end
      end

      # StartupInstance请求参数结构体
      class StartupInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StartupInstance返回参数结构体
      class StartupInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 该字段已废弃，请通过查询实例接口获取到的状态来判断实例是否已解隔离
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

      # SwitchAccessNewInstance请求参数结构体
      class SwitchAccessNewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****。请登录[Redis控制台](https://console.cloud.tencent.com/redis#/)在实例列表复制实例 ID。
        # 示例值：crs-asdasdas
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # SwitchAccessNewInstance返回参数结构体
      class SwitchAccessNewInstanceResponse < TencentCloud::Common::AbstractModel
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

      # SwitchInstanceVip请求参数结构体
      class SwitchInstanceVipRequest < TencentCloud::Common::AbstractModel
        # @param SrcInstanceId: 源实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type SrcInstanceId: String
        # @param DstInstanceId: 目标实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type DstInstanceId: String
        # @param TimeDelay: 单位为秒。源实例与目标实例间DTS已断开时间。如果 DTS 断开时间大于TimeDelay，则不切换VIP，建议尽量根据业务设置一个可接受的值。
        # @type TimeDelay: Integer
        # @param ForceSwitch: 在 DTS 断开的情况下是否强制切换。
        # - 1：强制切换。
        # - 0：不强制切换。
        # @type ForceSwitch: Integer
        # @param SwitchTime: now: 立即切换，syncComplete：等待同步完成后切换
        # @type SwitchTime: String

        attr_accessor :SrcInstanceId, :DstInstanceId, :TimeDelay, :ForceSwitch, :SwitchTime

        def initialize(srcinstanceid=nil, dstinstanceid=nil, timedelay=nil, forceswitch=nil, switchtime=nil)
          @SrcInstanceId = srcinstanceid
          @DstInstanceId = dstinstanceid
          @TimeDelay = timedelay
          @ForceSwitch = forceswitch
          @SwitchTime = switchtime
        end

        def deserialize(params)
          @SrcInstanceId = params['SrcInstanceId']
          @DstInstanceId = params['DstInstanceId']
          @TimeDelay = params['TimeDelay']
          @ForceSwitch = params['ForceSwitch']
          @SwitchTime = params['SwitchTime']
        end
      end

      # SwitchInstanceVip返回参数结构体
      class SwitchInstanceVipResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # SwitchProxy请求参数结构体
      class SwitchProxyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param ProxyID: 实例 ProxyID，请通过接口[DescribeInstanceNodeInfo](https://cloud.tencent.com/document/product/239/48603)的返回参数**Proxy**中的**NodeId**获取。
        # @type ProxyID: String

        attr_accessor :InstanceId, :ProxyID

        def initialize(instanceid=nil, proxyid=nil)
          @InstanceId = instanceid
          @ProxyID = proxyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyID = params['ProxyID']
        end
      end

      # SwitchProxy返回参数结构体
      class SwitchProxyResponse < TencentCloud::Common::AbstractModel
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
        # @param TaskId: 任务 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param StartTime: 任务开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param TaskType: 任务类型。
        # - FLOW_CREATE: "001"，新建实例
        # - FLOW_RESIZE ： "002"，配置变更
        # - FLOW_CLOSE："003"，关闭实例
        # - FLOW_CLEAN： "004"，清空实例
        # - FLOW_STARTUP："005"，实例启用。
        # - FLOW_DELETE："006"，删除实例。
        # - FLOW_SETPWD："007"，重置密码。
        # - FLOW_EXPORTBACKUP："009"，导出备份文件。
        # - FLOW_RESTOREBACKUP："010"，恢复备份。
        # - FLOW_BACKUPINSTANCE："012"，备份实例。
        # - FLOW_MIGRATEINSTANCE："013"，迁移实例。
        # - FLOW_DELBACKUP："014"，删除备份。
        # - FLOW_EXCHANGEINSTANCE： "016"，切换实例流程。
        # - FLOW_AUTOBACKUP："017"，自动备份实例。
        # - FLOW_MIGRATECHECK： "022"，迁移参数校验。
        # - FLOW_MIGRATETASK："023"，数据迁移中。
        # - FLOW_CLEANDB："025"，清空某个数据库。
        # - FLOW_CLONEBACKUP："026"，克隆备份。
        # - FLOW_CHANGEVIP： "027"，改变vip地址。
        # - FLOW_EXPORSHR ："028"，扩缩容。
        # - FLOW_ADDNODES："029"，加（减）节点。
        # - FLOW_CHANGENET："031"，改变网络类型。
        # - FLOW_MODIFYINSTACEREADONLY："033"，只读策略变更。
        # - FLOW_MODIFYINSTANCEPARAMS："034"，修改实例参数。
        # - FLOW_MODIFYINSTANCEPASSWORDFREE："035"，设置免密。
        # - FLOW_SWITCHINSTANCEVIP："036"，实例VIP切换。
        # - FLOW_MODIFYINSTANCEACCOUNT："037"，实例帐号变更。
        # - FLOW_MODIFYINSTANCEBANDWIDTH："038"，实例带宽变更。
        # - FLOW_ENABLEINSTANCE_REPLICATE："039"，开启副本只读。
        # - FLOW_DISABLEINSTANCE_REPLICATE："040"，关闭副本只读。
        # - FLOW_UpgradeArch："041"，实例架构升级，主从升集群。
        # - FLOW_DowngradeArch： "042"，实例架构降级，集群降主从。
        # - FLOW_UpgradeVersion： "043"，版本升级。
        # - FLOW_MODIFYCONNECTIONCONFIG："044"，带宽连接数调整。
        # - FLOW_CLEARNETWORK："045"，更换网络，
        # - FLOW_REMOVE_BACKUP_FILE："046"，删除备份。
        # - FLOW_UPGRADE_SUPPORT_MULTI_AZ："047"，升级实例支持多可用区。
        # - FLOW_SHUTDOWN_MASTER："048"，模拟故障。
        # - FLOW_CHANGE_REPLICA_TO_MASTER："049"，手动提主。
        # - FLOW_CODE_ADD_REPLICATION_INSTANCE："050"，新增复制组。
        # - FLOW_OPEN_WAN："052"，开通外网。
        # - FLOW_CLOSE_WAN："053"，关闭外网FLOW_UPDATE_WAN："054"，更新外网。
        # - FLOW_CODE_DELETE_REPLICATION_INSTANCE："055"，解绑复制组。
        # - FLOW_CODE_CHANGE_MASTER_INSTANCE："056"，复制组实例切主。
        # - FLOW_CODE_CHANGE_INSTANCE_ROLE： "057"，更改复制组实例角色。
        # - FLOW_MIGRATE_NODE："058"，迁移节点。
        # - FLOW_SWITCH_NODE："059"，切换节点。
        # - FLOW_UPGRADE_SMALL_VERSION："060"，升级 Redi s版本。
        # - FLOW_UPGRADE_PROXY_VERSION："061"，升级 Proxy 版本。
        # - FLOW_MODIFY_INSTANCE_NETWORK： "062"，实例修改网络。
        # - FLOW_MIGRATE_PROXY_NODE："063"，迁移proxy节点。
        # - FLOW_MIGRATION_INSTANCE_ZONE："066"，实例可用区迁移中。
        # - FLOW_UPGRADE_INSTANCE_CACHE_AND_PROXY： "067"，实例版本升级中。
        # - FLOW_MODIFY_PROXY_NUM："069"，加（减）Proxy 节点。
        # - FLOW_MODIFYBACKUPMOD："070"，变更实例备份模式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param InstanceName: 实例名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param InstanceId: 实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param Progress: 任务进度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Float
        # @param EndTime: 任务执行结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Result: 任务执行状态。

        # 0：任务初始化。
        # 1：执行中。
        # 2：完成。
        # 4：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer

        attr_accessor :TaskId, :StartTime, :TaskType, :InstanceName, :InstanceId, :ProjectId, :Progress, :EndTime, :Result

        def initialize(taskid=nil, starttime=nil, tasktype=nil, instancename=nil, instanceid=nil, projectid=nil, progress=nil, endtime=nil, result=nil)
          @TaskId = taskid
          @StartTime = starttime
          @TaskType = tasktype
          @InstanceName = instancename
          @InstanceId = instanceid
          @ProjectId = projectid
          @Progress = progress
          @EndTime = endtime
          @Result = result
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
        end
      end

      # tendis节点信息
      class TendisNodes < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID
        # @type NodeId: String
        # @param NodeRole: 节点角色
        # @type NodeRole: String
        # @param ZoneId: 可用区 ID。
        # @type ZoneId: Integer

        attr_accessor :NodeId, :NodeRole, :ZoneId

        def initialize(nodeid=nil, noderole=nil, zoneid=nil)
          @NodeId = nodeid
          @NodeRole = noderole
          @ZoneId = zoneid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeRole = params['NodeRole']
          @ZoneId = params['ZoneId']
        end
      end

      # Tendis慢查询详情
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
        # @type Price: Integer
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
        # @param InstanceId: 待变更实例 ID。
        # @type InstanceId: String
        # @param MemSize: 指实例每个分片内存变更后的大小。<ul><li>单位 MB。</li><li>每次只能修改参数MemSize、RedisShardNum和RedisReplicasNum其中的一个，不能同时修改。且修改其中一个参数时，其他两个参数需输入实例原有的配置规格。</li><li>缩容时，缩容后的规格务必要大于等于使用容量的1.3倍，否则将执行失败。</li></ul>
        # @type MemSize: Integer
        # @param RedisShardNum: 指实例变更后的分片数量。<ul><li>标准架构不需要配置该参数，集群架构为必填参数。</li><li>集群架构，每次只能修改参数RedisShardNum、MemSize和RedisReplicasNum其中的一个，不能同时修改。且修改其中一个参数时，其他两个参数需输入实例原有的配置规格。</li></ul>
        # @type RedisShardNum: Integer
        # @param RedisReplicasNum: 指实例变更后的副本数量。<ul><li>每次只能修改参数RedisReplicasNum、MemSize和RedisShardNum其中的一个，不能同时修改。且修改其中一个参数时，其他两个参数需输入实例原有的配置规格。</li><li>多AZ实例修改副本时必须要传入NodeSet。</li></ul>
        # @type RedisReplicasNum: Integer
        # @param NodeSet: 多AZ实例，增加副本时的节点信息，包括副本的 ID 编号及可用区信息。非多AZ实例不需要配置该参数。
        # @type NodeSet: Array

        attr_accessor :InstanceId, :MemSize, :RedisShardNum, :RedisReplicasNum, :NodeSet

        def initialize(instanceid=nil, memsize=nil, redisshardnum=nil, redisreplicasnum=nil, nodeset=nil)
          @InstanceId = instanceid
          @MemSize = memsize
          @RedisShardNum = redisshardnum
          @RedisReplicasNum = redisreplicasnum
          @NodeSet = nodeset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MemSize = params['MemSize']
          @RedisShardNum = params['RedisShardNum']
          @RedisReplicasNum = params['RedisReplicasNum']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              redisnodeinfo_tmp = RedisNodeInfo.new
              redisnodeinfo_tmp.deserialize(i)
              @NodeSet << redisnodeinfo_tmp
            end
          end
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID。
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

      # UpgradeInstanceVersion请求参数结构体
      class UpgradeInstanceVersionRequest < TencentCloud::Common::AbstractModel
        # @param TargetInstanceType: 目标实例类型，同 [CreateInstances](https://cloud.tencent.com/document/api/239/20026) 的**TypeId**，即实例要变更的目标类型。
        # - Redis 4.0 及以上的版本，支持相同版本的实例从标准架构升级至集群架构，例如，支持 Redis 4.0 标准架构升级至 Redis 4.0 集群架构。
        # - 不支持跨版本架构升级，例如，Redis 4.0 标准架构升级至 Redis 5.0 集群架构。
        # - 不支持 Redis 2.8 版本升级架构。
        # - 不支持从集群架构降级至标准架构。
        # @type TargetInstanceType: String
        # @param SwitchOption: 切换时间。
        # - 1：维护时间窗切换。
        # - 2：立即切换。
        # @type SwitchOption: Integer
        # @param InstanceId: 指定实例 ID。例如：crs-xjhsdj****，请登录[Redis控制台](https://console.cloud.tencent.com/redis#/)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :TargetInstanceType, :SwitchOption, :InstanceId

        def initialize(targetinstancetype=nil, switchoption=nil, instanceid=nil)
          @TargetInstanceType = targetinstancetype
          @SwitchOption = switchoption
          @InstanceId = instanceid
        end

        def deserialize(params)
          @TargetInstanceType = params['TargetInstanceType']
          @SwitchOption = params['SwitchOption']
          @InstanceId = params['InstanceId']
        end
      end

      # UpgradeInstanceVersion返回参数结构体
      class UpgradeInstanceVersionResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
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

      # UpgradeProxyVersion请求参数结构体
      class UpgradeProxyVersionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param CurrentProxyVersion: 当前 Proxy 版本。
        # @type CurrentProxyVersion: String
        # @param UpgradeProxyVersion: 可升级的 Redis 版本。
        # @type UpgradeProxyVersion: String
        # @param InstanceTypeUpgradeNow: 指定是否立即升级。
        # - 1：立即升级。
        # - 0：维护时间窗口升级。
        # @type InstanceTypeUpgradeNow: Integer

        attr_accessor :InstanceId, :CurrentProxyVersion, :UpgradeProxyVersion, :InstanceTypeUpgradeNow

        def initialize(instanceid=nil, currentproxyversion=nil, upgradeproxyversion=nil, instancetypeupgradenow=nil)
          @InstanceId = instanceid
          @CurrentProxyVersion = currentproxyversion
          @UpgradeProxyVersion = upgradeproxyversion
          @InstanceTypeUpgradeNow = instancetypeupgradenow
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CurrentProxyVersion = params['CurrentProxyVersion']
          @UpgradeProxyVersion = params['UpgradeProxyVersion']
          @InstanceTypeUpgradeNow = params['InstanceTypeUpgradeNow']
        end
      end

      # UpgradeProxyVersion返回参数结构体
      class UpgradeProxyVersionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
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

      # UpgradeSmallVersion请求参数结构体
      class UpgradeSmallVersionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param CurrentRedisVersion: 当前 Redis 小版本。小版本信息，请参见[升级实例版本](https://cloud.tencent.com/document/product/239/46457)。
        # @type CurrentRedisVersion: String
        # @param UpgradeRedisVersion: 升级后的 Redis 小版本。小版本信息，请参见[升级实例版本](https://cloud.tencent.com/document/product/239/46457)。
        # @type UpgradeRedisVersion: String
        # @param InstanceTypeUpgradeNow: 指定是否立即升级。
        # - 1：立即升级。
        # - 0：维护时间窗口升级。
        # @type InstanceTypeUpgradeNow: Integer

        attr_accessor :InstanceId, :CurrentRedisVersion, :UpgradeRedisVersion, :InstanceTypeUpgradeNow

        def initialize(instanceid=nil, currentredisversion=nil, upgraderedisversion=nil, instancetypeupgradenow=nil)
          @InstanceId = instanceid
          @CurrentRedisVersion = currentredisversion
          @UpgradeRedisVersion = upgraderedisversion
          @InstanceTypeUpgradeNow = instancetypeupgradenow
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CurrentRedisVersion = params['CurrentRedisVersion']
          @UpgradeRedisVersion = params['UpgradeRedisVersion']
          @InstanceTypeUpgradeNow = params['InstanceTypeUpgradeNow']
        end
      end

      # UpgradeSmallVersion返回参数结构体
      class UpgradeSmallVersionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
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

      # UpgradeVersionToMultiAvailabilityZones请求参数结构体
      class UpgradeVersionToMultiAvailabilityZonesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，请登录[Redis控制台](https://console.cloud.tencent.com/redis/instance/list)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UpgradeProxyAndRedisServer: 升级多可用区之后是否支持就近访问功能。
        # <ul><li>true：支持就近访问功能。升级过程，需同时升级 Proxy 版本和 Redis 内核小版本，涉及数据搬迁，可能会长达数小时。</li><li>false：无需支持就近访问功能。升级多可用区仅涉及管理元数据迁移，对服务没有影响，升级过程通常在3分钟内完成。</li></ul>
        # @type UpgradeProxyAndRedisServer: Boolean

        attr_accessor :InstanceId, :UpgradeProxyAndRedisServer

        def initialize(instanceid=nil, upgradeproxyandredisserver=nil)
          @InstanceId = instanceid
          @UpgradeProxyAndRedisServer = upgradeproxyandredisserver
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeProxyAndRedisServer = params['UpgradeProxyAndRedisServer']
        end
      end

      # UpgradeVersionToMultiAvailabilityZones返回参数结构体
      class UpgradeVersionToMultiAvailabilityZonesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务ID
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

      # 可用区内产品信息
      class ZoneCapacityConf < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区ID：如ap-guangzhou-3
        # @type ZoneId: String
        # @param ZoneName: 可用区名称。
        # @type ZoneName: String
        # @param IsSaleout: 可用区是否售罄。
        # @type IsSaleout: Boolean
        # @param IsDefault: 是否为默认可用区。
        # @type IsDefault: Boolean
        # @param NetWorkType: 网络类型。
        # - basenet：基础网络。
        # - vpcnet -- VPC网络。
        # @type NetWorkType: Array
        # @param ProductSet: 可用区内产品规格等信息
        # @type ProductSet: Array
        # @param OldZoneId: 可用区ID：如100003
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

