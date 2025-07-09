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
  module Tke
    module V20220501
      # k8s中标注，一般以数组的方式存在
      class Annotation < TencentCloud::Common::AbstractModel
        # @param Name: map表中的Name
        # @type Name: String
        # @param Value: map表中的Value
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 托管节点池运维窗口设置
      class AutoUpgradeOptions < TencentCloud::Common::AbstractModel
        # @param AutoUpgradeStartTime: 自动升级开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoUpgradeStartTime: String
        # @param Duration: 自动升级持续时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param WeeklyPeriod: 运维日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeeklyPeriod: Array

        attr_accessor :AutoUpgradeStartTime, :Duration, :WeeklyPeriod

        def initialize(autoupgradestarttime=nil, duration=nil, weeklyperiod=nil)
          @AutoUpgradeStartTime = autoupgradestarttime
          @Duration = duration
          @WeeklyPeriod = weeklyperiod
        end

        def deserialize(params)
          @AutoUpgradeStartTime = params['AutoUpgradeStartTime']
          @Duration = params['Duration']
          @WeeklyPeriod = params['WeeklyPeriod']
        end
      end

      # 自动扩缩容的节点
      class AutoscalingAdded < TencentCloud::Common::AbstractModel
        # @param Joining: 正在加入中的节点数量
        # @type Joining: Integer
        # @param Initializing: 初始化中的节点数量
        # @type Initializing: Integer
        # @param Normal: 正常的节点数量
        # @type Normal: Integer
        # @param Total: 节点总数
        # @type Total: Integer

        attr_accessor :Joining, :Initializing, :Normal, :Total

        def initialize(joining=nil, initializing=nil, normal=nil, total=nil)
          @Joining = joining
          @Initializing = initializing
          @Normal = normal
          @Total = total
        end

        def deserialize(params)
          @Joining = params['Joining']
          @Initializing = params['Initializing']
          @Normal = params['Normal']
          @Total = params['Total']
        end
      end

      # CreateHealthCheckPolicy请求参数结构体
      class CreateHealthCheckPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param HealthCheckPolicy: 健康检测策略
        # @type HealthCheckPolicy: :class:`Tencentcloud::Tke.v20220501.models.HealthCheckPolicy`

        attr_accessor :ClusterId, :HealthCheckPolicy

        def initialize(clusterid=nil, healthcheckpolicy=nil)
          @ClusterId = clusterid
          @HealthCheckPolicy = healthcheckpolicy
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['HealthCheckPolicy'].nil?
            @HealthCheckPolicy = HealthCheckPolicy.new
            @HealthCheckPolicy.deserialize(params['HealthCheckPolicy'])
          end
        end
      end

      # CreateHealthCheckPolicy返回参数结构体
      class CreateHealthCheckPolicyResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckPolicyName: 健康检测策略名称
        # @type HealthCheckPolicyName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckPolicyName, :RequestId

        def initialize(healthcheckpolicyname=nil, requestid=nil)
          @HealthCheckPolicyName = healthcheckpolicyname
          @RequestId = requestid
        end

        def deserialize(params)
          @HealthCheckPolicyName = params['HealthCheckPolicyName']
          @RequestId = params['RequestId']
        end
      end

      # 原生节点池创建参数
      class CreateNativeNodePoolParam < TencentCloud::Common::AbstractModel
        # @param Scaling: 节点池伸缩配置
        # @type Scaling: :class:`Tencentcloud::Tke.v20220501.models.MachineSetScaling`
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param InstanceChargeType: 节点计费类型。PREPAID：包年包月；POSTPAID_BY_HOUR：按量计费（默认）；
        # @type InstanceChargeType: String
        # @param SystemDisk: 系统盘配置
        # @type SystemDisk: :class:`Tencentcloud::Tke.v20220501.models.Disk`
        # @param InstanceTypes: 机型列表
        # @type InstanceTypes: Array
        # @param SecurityGroupIds: 安全组列表
        # @type SecurityGroupIds: Array
        # @param UpgradeSettings: 自动升级配置
        # @type UpgradeSettings: :class:`Tencentcloud::Tke.v20220501.models.MachineUpgradeSettings`
        # @param AutoRepair: 是否开启自愈能力
        # @type AutoRepair: Boolean
        # @param InstanceChargePrepaid: 包年包月机型计费配置
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Tke.v20220501.models.InstanceChargePrepaid`
        # @param Management: 节点池 Management 参数设置
        # @type Management: :class:`Tencentcloud::Tke.v20220501.models.ManagementConfig`
        # @param HealthCheckPolicyName: 故障自愈规则名称
        # @type HealthCheckPolicyName: String
        # @param HostNamePattern: 原生节点池hostName模式串
        # @type HostNamePattern: String
        # @param KubeletArgs: kubelet 自定义参数
        # @type KubeletArgs: Array
        # @param Lifecycle: 预定义脚本
        # @type Lifecycle: :class:`Tencentcloud::Tke.v20220501.models.LifecycleConfig`
        # @param RuntimeRootDir: 运行时根目录
        # @type RuntimeRootDir: String
        # @param EnableAutoscaling: 是否开启弹性伸缩
        # @type EnableAutoscaling: Boolean
        # @param Replicas: 期望节点数
        # @type Replicas: Integer
        # @param InternetAccessible: 公网带宽设置
        # @type InternetAccessible: :class:`Tencentcloud::Tke.v20220501.models.InternetAccessible`
        # @param DataDisks: 原生节点池数据盘列表
        # @type DataDisks: Array
        # @param KeyIds: 节点池ssh公钥id数组
        # @type KeyIds: Array
        # @param MachineType: 节点池类型
        # @type MachineType: String

        attr_accessor :Scaling, :SubnetIds, :InstanceChargeType, :SystemDisk, :InstanceTypes, :SecurityGroupIds, :UpgradeSettings, :AutoRepair, :InstanceChargePrepaid, :Management, :HealthCheckPolicyName, :HostNamePattern, :KubeletArgs, :Lifecycle, :RuntimeRootDir, :EnableAutoscaling, :Replicas, :InternetAccessible, :DataDisks, :KeyIds, :MachineType

        def initialize(scaling=nil, subnetids=nil, instancechargetype=nil, systemdisk=nil, instancetypes=nil, securitygroupids=nil, upgradesettings=nil, autorepair=nil, instancechargeprepaid=nil, management=nil, healthcheckpolicyname=nil, hostnamepattern=nil, kubeletargs=nil, lifecycle=nil, runtimerootdir=nil, enableautoscaling=nil, replicas=nil, internetaccessible=nil, datadisks=nil, keyids=nil, machinetype=nil)
          @Scaling = scaling
          @SubnetIds = subnetids
          @InstanceChargeType = instancechargetype
          @SystemDisk = systemdisk
          @InstanceTypes = instancetypes
          @SecurityGroupIds = securitygroupids
          @UpgradeSettings = upgradesettings
          @AutoRepair = autorepair
          @InstanceChargePrepaid = instancechargeprepaid
          @Management = management
          @HealthCheckPolicyName = healthcheckpolicyname
          @HostNamePattern = hostnamepattern
          @KubeletArgs = kubeletargs
          @Lifecycle = lifecycle
          @RuntimeRootDir = runtimerootdir
          @EnableAutoscaling = enableautoscaling
          @Replicas = replicas
          @InternetAccessible = internetaccessible
          @DataDisks = datadisks
          @KeyIds = keyids
          @MachineType = machinetype
        end

        def deserialize(params)
          unless params['Scaling'].nil?
            @Scaling = MachineSetScaling.new
            @Scaling.deserialize(params['Scaling'])
          end
          @SubnetIds = params['SubnetIds']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['SystemDisk'].nil?
            @SystemDisk = Disk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @InstanceTypes = params['InstanceTypes']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['UpgradeSettings'].nil?
            @UpgradeSettings = MachineUpgradeSettings.new
            @UpgradeSettings.deserialize(params['UpgradeSettings'])
          end
          @AutoRepair = params['AutoRepair']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['Management'].nil?
            @Management = ManagementConfig.new
            @Management.deserialize(params['Management'])
          end
          @HealthCheckPolicyName = params['HealthCheckPolicyName']
          @HostNamePattern = params['HostNamePattern']
          @KubeletArgs = params['KubeletArgs']
          unless params['Lifecycle'].nil?
            @Lifecycle = LifecycleConfig.new
            @Lifecycle.deserialize(params['Lifecycle'])
          end
          @RuntimeRootDir = params['RuntimeRootDir']
          @EnableAutoscaling = params['EnableAutoscaling']
          @Replicas = params['Replicas']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @KeyIds = params['KeyIds']
          @MachineType = params['MachineType']
        end
      end

      # CreateNodePool请求参数结构体
      class CreateNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Name: 节点池名称
        # @type Name: String
        # @param Type: 节点池类型
        # @type Type: String
        # @param Labels: 节点  Labels
        # @type Labels: Array
        # @param Taints: 节点污点
        # @type Taints: Array
        # @param Tags: 节点标签
        # @type Tags: Array
        # @param DeletionProtection: 是否开启删除保护
        # @type DeletionProtection: Boolean
        # @param Unschedulable: 节点是否默认不可调度
        # @type Unschedulable: Boolean
        # @param Native: 原生节点池创建参数
        # @type Native: :class:`Tencentcloud::Tke.v20220501.models.CreateNativeNodePoolParam`
        # @param Annotations: 节点 Annotation 列表
        # @type Annotations: Array

        attr_accessor :ClusterId, :Name, :Type, :Labels, :Taints, :Tags, :DeletionProtection, :Unschedulable, :Native, :Annotations

        def initialize(clusterid=nil, name=nil, type=nil, labels=nil, taints=nil, tags=nil, deletionprotection=nil, unschedulable=nil, native=nil, annotations=nil)
          @ClusterId = clusterid
          @Name = name
          @Type = type
          @Labels = labels
          @Taints = taints
          @Tags = tags
          @DeletionProtection = deletionprotection
          @Unschedulable = unschedulable
          @Native = native
          @Annotations = annotations
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          unless params['Taints'].nil?
            @Taints = []
            params['Taints'].each do |i|
              taint_tmp = Taint.new
              taint_tmp.deserialize(i)
              @Taints << taint_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @Tags << tagspecification_tmp
            end
          end
          @DeletionProtection = params['DeletionProtection']
          @Unschedulable = params['Unschedulable']
          unless params['Native'].nil?
            @Native = CreateNativeNodePoolParam.new
            @Native.deserialize(params['Native'])
          end
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              annotation_tmp = Annotation.new
              annotation_tmp.deserialize(i)
              @Annotations << annotation_tmp
            end
          end
        end
      end

      # CreateNodePool返回参数结构体
      class CreateNodePoolResponse < TencentCloud::Common::AbstractModel
        # @param NodePoolId: 节点池 ID
        # @type NodePoolId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodePoolId, :RequestId

        def initialize(nodepoolid=nil, requestid=nil)
          @NodePoolId = nodepoolid
          @RequestId = requestid
        end

        def deserialize(params)
          @NodePoolId = params['NodePoolId']
          @RequestId = params['RequestId']
        end
      end

      # 描述了k8s节点数据盘相关配置与信息。
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 云盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param FileSystem: 文件系统(ext3/ext4/xfs)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystem: String
        # @param DiskSize: 云盘大小(G）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param AutoFormatAndMount: 是否自动化格式盘并挂载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoFormatAndMount: Boolean
        # @param DiskPartition: 挂载设备名或分区名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskPartition: String
        # @param MountTarget: 挂载目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountTarget: String
        # @param Encrypt: 传入该参数用于创建加密云盘，取值固定为ENCRYPT
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encrypt: String
        # @param KmsKeyId: 购买加密盘时自定义密钥，当传入该参数时, Encrypt入参不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsKeyId: String
        # @param SnapshotId: 快照ID，如果传入则根据此快照创建云硬盘，快照类型必须为数据盘快照
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotId: String
        # @param ThroughputPerformance: 云硬盘性能，单位：MB/s。使用此参数可给云硬盘购买额外的性能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThroughputPerformance: Integer

        attr_accessor :DiskType, :FileSystem, :DiskSize, :AutoFormatAndMount, :DiskPartition, :MountTarget, :Encrypt, :KmsKeyId, :SnapshotId, :ThroughputPerformance

        def initialize(disktype=nil, filesystem=nil, disksize=nil, autoformatandmount=nil, diskpartition=nil, mounttarget=nil, encrypt=nil, kmskeyid=nil, snapshotid=nil, throughputperformance=nil)
          @DiskType = disktype
          @FileSystem = filesystem
          @DiskSize = disksize
          @AutoFormatAndMount = autoformatandmount
          @DiskPartition = diskpartition
          @MountTarget = mounttarget
          @Encrypt = encrypt
          @KmsKeyId = kmskeyid
          @SnapshotId = snapshotid
          @ThroughputPerformance = throughputperformance
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @FileSystem = params['FileSystem']
          @DiskSize = params['DiskSize']
          @AutoFormatAndMount = params['AutoFormatAndMount']
          @DiskPartition = params['DiskPartition']
          @MountTarget = params['MountTarget']
          @Encrypt = params['Encrypt']
          @KmsKeyId = params['KmsKeyId']
          @SnapshotId = params['SnapshotId']
          @ThroughputPerformance = params['ThroughputPerformance']
        end
      end

      # DeleteClusterMachines请求参数结构体
      class DeleteClusterMachinesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param MachineNames: 节点名列表
        # @type MachineNames: Array
        # @param EnableScaleDown: 删除节点时是否缩容节点池，true为缩容
        # @type EnableScaleDown: Boolean
        # @param InstanceDeleteMode: 集群实例删除时的策略：terminate（销毁实例，仅支持按量计费云主机实例）retain（仅移除，保留实例）
        # @type InstanceDeleteMode: String

        attr_accessor :ClusterId, :MachineNames, :EnableScaleDown, :InstanceDeleteMode

        def initialize(clusterid=nil, machinenames=nil, enablescaledown=nil, instancedeletemode=nil)
          @ClusterId = clusterid
          @MachineNames = machinenames
          @EnableScaleDown = enablescaledown
          @InstanceDeleteMode = instancedeletemode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @MachineNames = params['MachineNames']
          @EnableScaleDown = params['EnableScaleDown']
          @InstanceDeleteMode = params['InstanceDeleteMode']
        end
      end

      # DeleteClusterMachines返回参数结构体
      class DeleteClusterMachinesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteHealthCheckPolicy请求参数结构体
      class DeleteHealthCheckPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param HealthCheckPolicyName: 健康检测策略名称
        # @type HealthCheckPolicyName: String

        attr_accessor :ClusterId, :HealthCheckPolicyName

        def initialize(clusterid=nil, healthcheckpolicyname=nil)
          @ClusterId = clusterid
          @HealthCheckPolicyName = healthcheckpolicyname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @HealthCheckPolicyName = params['HealthCheckPolicyName']
        end
      end

      # DeleteHealthCheckPolicy返回参数结构体
      class DeleteHealthCheckPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNodePool请求参数结构体
      class DeleteNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param NodePoolId: 节点池 ID
        # @type NodePoolId: String

        attr_accessor :ClusterId, :NodePoolId

        def initialize(clusterid=nil, nodepoolid=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
        end
      end

      # DeleteNodePool返回参数结构体
      class DeleteNodePoolResponse < TencentCloud::Common::AbstractModel
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

      # DescribeClusterInstances请求参数结构体
      class DescribeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤条件列表:
        # InstanceIds(实例ID),InstanceType(实例类型：Regular，Native，Super，External),VagueIpAddress(模糊匹配IP),Labels(k8s节点label),NodePoolNames(节点池名称),VagueInstanceName(模糊匹配节点名),InstanceStates(节点状态),Unschedulable(是否封锁),NodePoolIds(节点池ID)
        # @type Filters: Array
        # @param SortBy: 排序信息
        # @type SortBy: :class:`Tencentcloud::Tke.v20220501.models.SortBy`

        attr_accessor :ClusterId, :Offset, :Limit, :Filters, :SortBy

        def initialize(clusterid=nil, offset=nil, limit=nil, filters=nil, sortby=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortBy = sortby
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['SortBy'].nil?
            @SortBy = SortBy.new
            @SortBy.deserialize(params['SortBy'])
          end
        end
      end

      # DescribeClusterInstances返回参数结构体
      class DescribeClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群中实例总数
        # @type TotalCount: Integer
        # @param InstanceSet: 集群中实例列表
        # @type InstanceSet: Array
        # @param Errors: 错误信息集合
        # @type Errors: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :Errors, :RequestId

        def initialize(totalcount=nil, instanceset=nil, errors=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @Errors = errors
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @Errors = params['Errors']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHealthCheckPolicies请求参数结构体
      class DescribeHealthCheckPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Filters: ·  HealthCheckPolicyName
        #     按照【健康检测策略名称】进行过滤。
        #     类型：String
        #     必选：否
        # @type Filters: Array
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer

        attr_accessor :ClusterId, :Filters, :Limit, :Offset

        def initialize(clusterid=nil, filters=nil, limit=nil, offset=nil)
          @ClusterId = clusterid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeHealthCheckPolicies返回参数结构体
      class DescribeHealthCheckPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckPolicies: 健康检测策略数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckPolicies: Array
        # @param TotalCount: 数组总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckPolicies, :TotalCount, :RequestId

        def initialize(healthcheckpolicies=nil, totalcount=nil, requestid=nil)
          @HealthCheckPolicies = healthcheckpolicies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthCheckPolicies'].nil?
            @HealthCheckPolicies = []
            params['HealthCheckPolicies'].each do |i|
              healthcheckpolicy_tmp = HealthCheckPolicy.new
              healthcheckpolicy_tmp.deserialize(i)
              @HealthCheckPolicies << healthcheckpolicy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHealthCheckPolicyBindings请求参数结构体
      class DescribeHealthCheckPolicyBindingsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Filter: ·  HealthCheckPolicyName
        #     按照【健康检测规则名称】进行过滤。
        #     类型：String
        #     必选：否
        # @type Filter: Array
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer

        attr_accessor :ClusterId, :Filter, :Limit, :Offset

        def initialize(clusterid=nil, filter=nil, limit=nil, offset=nil)
          @ClusterId = clusterid
          @Filter = filter
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filter << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeHealthCheckPolicyBindings返回参数结构体
      class DescribeHealthCheckPolicyBindingsResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckPolicyBindings: 健康检测规则数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckPolicyBindings: Array
        # @param TotalCount: 健康检测规则数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckPolicyBindings, :TotalCount, :RequestId

        def initialize(healthcheckpolicybindings=nil, totalcount=nil, requestid=nil)
          @HealthCheckPolicyBindings = healthcheckpolicybindings
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthCheckPolicyBindings'].nil?
            @HealthCheckPolicyBindings = []
            params['HealthCheckPolicyBindings'].each do |i|
              healthcheckpolicybinding_tmp = HealthCheckPolicyBinding.new
              healthcheckpolicybinding_tmp.deserialize(i)
              @HealthCheckPolicyBindings << healthcheckpolicybinding_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHealthCheckTemplate请求参数结构体
      class DescribeHealthCheckTemplateRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeHealthCheckTemplate返回参数结构体
      class DescribeHealthCheckTemplateResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckTemplate: 健康检测策略模板
        # @type HealthCheckTemplate: :class:`Tencentcloud::Tke.v20220501.models.HealthCheckTemplate`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckTemplate, :RequestId

        def initialize(healthchecktemplate=nil, requestid=nil)
          @HealthCheckTemplate = healthchecktemplate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthCheckTemplate'].nil?
            @HealthCheckTemplate = HealthCheckTemplate.new
            @HealthCheckTemplate.deserialize(params['HealthCheckTemplate'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodePools请求参数结构体
      class DescribeNodePoolsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Filters: 查询过滤条件：
        # ·  NodePoolsName
        #     按照【节点池名】进行过滤。
        #     类型：String
        #     必选：否

        # ·  NodePoolsId
        #     按照【节点池id】进行过滤。
        #     类型：String
        #     必选：否

        # ·  tags
        #     按照【标签键值对】进行过滤。
        #     类型：String
        #     必选：否

        # ·  tag:tag-key
        #     按照【标签键值对】进行过滤。
        #     类型：String
        #     必选：否
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer

        attr_accessor :ClusterId, :Filters, :Offset, :Limit

        def initialize(clusterid=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeNodePools返回参数结构体
      class DescribeNodePoolsResponse < TencentCloud::Common::AbstractModel
        # @param NodePools: 节点池列表
        # @type NodePools: Array
        # @param TotalCount: 资源总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodePools, :TotalCount, :RequestId

        def initialize(nodepools=nil, totalcount=nil, requestid=nil)
          @NodePools = nodepools
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodePools'].nil?
            @NodePools = []
            params['NodePools'].each do |i|
              nodepool_tmp = NodePool.new
              nodepool_tmp.deserialize(i)
              @NodePools << nodepool_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 节点系统盘和数据盘配置
      class Disk < TencentCloud::Common::AbstractModel
        # @param DiskType: 云盘类型
        # @type DiskType: String
        # @param DiskSize: 云盘大小(G）
        # @type DiskSize: Integer
        # @param AutoFormatAndMount: 是否自动化格式盘并挂载
        # @type AutoFormatAndMount: Boolean
        # @param FileSystem: 文件系统
        # @type FileSystem: String
        # @param MountTarget: 挂载目录
        # @type MountTarget: String
        # @param DiskId: 云盘ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskId: String

        attr_accessor :DiskType, :DiskSize, :AutoFormatAndMount, :FileSystem, :MountTarget, :DiskId

        def initialize(disktype=nil, disksize=nil, autoformatandmount=nil, filesystem=nil, mounttarget=nil, diskid=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @AutoFormatAndMount = autoformatandmount
          @FileSystem = filesystem
          @MountTarget = mounttarget
          @DiskId = diskid
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @AutoFormatAndMount = params['AutoFormatAndMount']
          @FileSystem = params['FileSystem']
          @MountTarget = params['MountTarget']
          @DiskId = params['DiskId']
        end
      end

      # 第三方节点
      class ExternalNodeInfo < TencentCloud::Common::AbstractModel
        # @param Name: 第三方节点名称
        # @type Name: String
        # @param CPU: CPU核数，单位：核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPU: Integer
        # @param Memory: 节点内存容量，单位：`GB`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param K8SVersion: 第三方节点kubelet版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8SVersion: String

        attr_accessor :Name, :CPU, :Memory, :K8SVersion

        def initialize(name=nil, cpu=nil, memory=nil, k8sversion=nil)
          @Name = name
          @CPU = cpu
          @Memory = memory
          @K8SVersion = k8sversion
        end

        def deserialize(params)
          @Name = params['Name']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @K8SVersion = params['K8SVersion']
        end
      end

      # 第三方节点池信息
      class ExternalNodePoolInfo < TencentCloud::Common::AbstractModel
        # @param RuntimeConfig: 第三方节点Runtime配置
        # @type RuntimeConfig: :class:`Tencentcloud::Tke.v20220501.models.RuntimeConfig`
        # @param NodesNum: 节点数
        # @type NodesNum: Integer

        attr_accessor :RuntimeConfig, :NodesNum

        def initialize(runtimeconfig=nil, nodesnum=nil)
          @RuntimeConfig = runtimeconfig
          @NodesNum = nodesnum
        end

        def deserialize(params)
          unless params['RuntimeConfig'].nil?
            @RuntimeConfig = RuntimeConfig.new
            @RuntimeConfig.deserialize(params['RuntimeConfig'])
          end
          @NodesNum = params['NodesNum']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 机型名称与GPU相关的参数，包括驱动版本，CUDA版本，cuDNN版本，是否开启MIG以及是否开启Fabric等相关配置信息
      class GPUConfig < TencentCloud::Common::AbstractModel
        # @param InstanceType: 机型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param GPUParams: GPU相关的参数，包括驱动版本，CUDA版本，cuDNN版本，是否开启MIG以及是否开启Fabric等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUParams: :class:`Tencentcloud::Tke.v20220501.models.GPUParams`

        attr_accessor :InstanceType, :GPUParams

        def initialize(instancetype=nil, gpuparams=nil)
          @InstanceType = instancetype
          @GPUParams = gpuparams
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          unless params['GPUParams'].nil?
            @GPUParams = GPUParams.new
            @GPUParams.deserialize(params['GPUParams'])
          end
        end
      end

      # GPU相关的参数，包括驱动版本，CUDA版本，cuDNN版本，是否开启MIG以及是否开启Fabric
      class GPUParams < TencentCloud::Common::AbstractModel
        # @param Driver: GPU驱动版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Driver: String
        # @param CUDA: CUDA版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CUDA: String
        # @param CUDNN: CUDNN版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CUDNN: String
        # @param MIGEnable: 是否启用MIG特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MIGEnable: Boolean
        # @param Fabric: 是否启用Fabric特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fabric: Boolean
        # @param CustomGPUDriver: 自定义驱动下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomGPUDriver: String

        attr_accessor :Driver, :CUDA, :CUDNN, :MIGEnable, :Fabric, :CustomGPUDriver

        def initialize(driver=nil, cuda=nil, cudnn=nil, migenable=nil, fabric=nil, customgpudriver=nil)
          @Driver = driver
          @CUDA = cuda
          @CUDNN = cudnn
          @MIGEnable = migenable
          @Fabric = fabric
          @CustomGPUDriver = customgpudriver
        end

        def deserialize(params)
          @Driver = params['Driver']
          @CUDA = params['CUDA']
          @CUDNN = params['CUDNN']
          @MIGEnable = params['MIGEnable']
          @Fabric = params['Fabric']
          @CustomGPUDriver = params['CustomGPUDriver']
        end
      end

      # 健康检测规则
      class HealthCheckPolicy < TencentCloud::Common::AbstractModel
        # @param Name: 健康检测策略名称
        # @type Name: String
        # @param Rules: 健康检测策略规则列表
        # @type Rules: Array

        attr_accessor :Name, :Rules

        def initialize(name=nil, rules=nil)
          @Name = name
          @Rules = rules
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              healthcheckpolicyrule_tmp = HealthCheckPolicyRule.new
              healthcheckpolicyrule_tmp.deserialize(i)
              @Rules << healthcheckpolicyrule_tmp
            end
          end
        end
      end

      # 健康检测策略和节点池的绑定关系
      class HealthCheckPolicyBinding < TencentCloud::Common::AbstractModel
        # @param Name: 健康检测策略名称
        # @type Name: String
        # @param CreatedAt: 规则创建时间
        # @type CreatedAt: String
        # @param NodePools: 关联节点池数组
        # @type NodePools: Array

        attr_accessor :Name, :CreatedAt, :NodePools

        def initialize(name=nil, createdat=nil, nodepools=nil)
          @Name = name
          @CreatedAt = createdat
          @NodePools = nodepools
        end

        def deserialize(params)
          @Name = params['Name']
          @CreatedAt = params['CreatedAt']
          @NodePools = params['NodePools']
        end
      end

      # 健康检测规则
      class HealthCheckPolicyRule < TencentCloud::Common::AbstractModel
        # @param Name: 健康检测规则
        # @type Name: String
        # @param Enabled: 是否检测此项目
        # @type Enabled: Boolean
        # @param AutoRepairEnabled: 是否启用修复
        # @type AutoRepairEnabled: Boolean

        attr_accessor :Name, :Enabled, :AutoRepairEnabled

        def initialize(name=nil, enabled=nil, autorepairenabled=nil)
          @Name = name
          @Enabled = enabled
          @AutoRepairEnabled = autorepairenabled
        end

        def deserialize(params)
          @Name = params['Name']
          @Enabled = params['Enabled']
          @AutoRepairEnabled = params['AutoRepairEnabled']
        end
      end

      # 健康检测模板
      class HealthCheckTemplate < TencentCloud::Common::AbstractModel
        # @param Rules: 健康检测项
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              healthchecktemplaterule_tmp = HealthCheckTemplateRule.new
              healthchecktemplaterule_tmp.deserialize(i)
              @Rules << healthchecktemplaterule_tmp
            end
          end
        end
      end

      # 健康检测模板规则
      class HealthCheckTemplateRule < TencentCloud::Common::AbstractModel
        # @param Name: 健康检测项目名称
        # @type Name: String
        # @param Description: 健康检测规则描述
        # @type Description: String
        # @param RepairAction: 修复动作
        # @type RepairAction: String
        # @param RepairEffect: 修复影响
        # @type RepairEffect: String
        # @param ShouldEnable: 是否建议开启检测
        # @type ShouldEnable: Boolean
        # @param ShouldRepair: 是否建议修复
        # @type ShouldRepair: Boolean
        # @param Severity: 问题严重程度
        # @type Severity: String

        attr_accessor :Name, :Description, :RepairAction, :RepairEffect, :ShouldEnable, :ShouldRepair, :Severity

        def initialize(name=nil, description=nil, repairaction=nil, repaireffect=nil, shouldenable=nil, shouldrepair=nil, severity=nil)
          @Name = name
          @Description = description
          @RepairAction = repairaction
          @RepairEffect = repaireffect
          @ShouldEnable = shouldenable
          @ShouldRepair = shouldrepair
          @Severity = severity
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @RepairAction = params['RepairAction']
          @RepairEffect = params['RepairEffect']
          @ShouldEnable = params['ShouldEnable']
          @ShouldRepair = params['ShouldRepair']
          @Severity = params['Severity']
        end
      end

      # 集群的实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceRole: 节点角色, MASTER, WORKER, ETCD, MASTER_ETCD,ALL, 默认为WORKER
        # @type InstanceRole: String
        # @param FailedReason: 实例异常(或者处于初始化中)的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedReason: String
        # @param InstanceState: 实例的状态
        # - initializing创建中
        # - running 运行中
        # - failed 异常
        # @type InstanceState: String
        # @param Unschedulable: 是否不可调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unschedulable: Boolean
        # @param CreatedTime: 添加时间
        # @type CreatedTime: String
        # @param LanIP: 节点内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanIP: String
        # @param NodePoolId: 资源池ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePoolId: String
        # @param Native: 原生节点参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Native: :class:`Tencentcloud::Tke.v20220501.models.NativeNodeInfo`
        # @param Regular: 普通节点参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regular: :class:`Tencentcloud::Tke.v20220501.models.RegularNodeInfo`
        # @param Super: 超级节点参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Super: :class:`Tencentcloud::Tke.v20220501.models.SuperNodeInfo`
        # @param External: 第三方节点参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type External: :class:`Tencentcloud::Tke.v20220501.models.ExternalNodeInfo`
        # @param NodeType: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String

        attr_accessor :InstanceId, :InstanceRole, :FailedReason, :InstanceState, :Unschedulable, :CreatedTime, :LanIP, :NodePoolId, :Native, :Regular, :Super, :External, :NodeType

        def initialize(instanceid=nil, instancerole=nil, failedreason=nil, instancestate=nil, unschedulable=nil, createdtime=nil, lanip=nil, nodepoolid=nil, native=nil, regular=nil, _super=nil, external=nil, nodetype=nil)
          @InstanceId = instanceid
          @InstanceRole = instancerole
          @FailedReason = failedreason
          @InstanceState = instancestate
          @Unschedulable = unschedulable
          @CreatedTime = createdtime
          @LanIP = lanip
          @NodePoolId = nodepoolid
          @Native = native
          @Regular = regular
          @Super = _super
          @External = external
          @NodeType = nodetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceRole = params['InstanceRole']
          @FailedReason = params['FailedReason']
          @InstanceState = params['InstanceState']
          @Unschedulable = params['Unschedulable']
          @CreatedTime = params['CreatedTime']
          @LanIP = params['LanIP']
          @NodePoolId = params['NodePoolId']
          unless params['Native'].nil?
            @Native = NativeNodeInfo.new
            @Native.deserialize(params['Native'])
          end
          unless params['Regular'].nil?
            @Regular = RegularNodeInfo.new
            @Regular.deserialize(params['Regular'])
          end
          unless params['Super'].nil?
            @Super = SuperNodeInfo.new
            @Super.deserialize(params['Super'])
          end
          unless params['External'].nil?
            @External = ExternalNodeInfo.new
            @External.deserialize(params['External'])
          end
          @NodeType = params['NodeType']
        end
      end

      # 描述了k8s集群相关配置与信息。
      class InstanceAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param DesiredPodNumber: 该节点属于podCIDR大小自定义模式时，可指定节点上运行的pod数量上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredPodNumber: Integer
        # @param PreStartUserScript: base64 编码的用户脚本，在初始化节点之前执行，目前只对添加已有节点生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreStartUserScript: String
        # @param RuntimeConfig: 运行时描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeConfig: :class:`Tencentcloud::Tke.v20220501.models.RuntimeConfig`
        # @param UserScript: base64 编码的用户脚本, 此脚本会在 k8s 组件运行后执行, 需要用户保证脚本的可重入及重试逻辑, 脚本及其生成的日志文件可在节点的 /data/ccs_userscript/ 路径查看, 如果要求节点需要在进行初始化完成后才可加入调度, 可配合 unschedulable 参数使用, 在 userScript 最后初始化完成后, 添加 kubectl uncordon nodename --kubeconfig=/root/.kube/config 命令使节点加入调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserScript: String
        # @param ExtraArgs: 节点相关的自定义参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20220501.models.InstanceExtraArgs`

        attr_accessor :DesiredPodNumber, :PreStartUserScript, :RuntimeConfig, :UserScript, :ExtraArgs

        def initialize(desiredpodnumber=nil, prestartuserscript=nil, runtimeconfig=nil, userscript=nil, extraargs=nil)
          @DesiredPodNumber = desiredpodnumber
          @PreStartUserScript = prestartuserscript
          @RuntimeConfig = runtimeconfig
          @UserScript = userscript
          @ExtraArgs = extraargs
        end

        def deserialize(params)
          @DesiredPodNumber = params['DesiredPodNumber']
          @PreStartUserScript = params['PreStartUserScript']
          unless params['RuntimeConfig'].nil?
            @RuntimeConfig = RuntimeConfig.new
            @RuntimeConfig.deserialize(params['RuntimeConfig'])
          end
          @UserScript = params['UserScript']
          unless params['ExtraArgs'].nil?
            @ExtraArgs = InstanceExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
        end
      end

      # 包年包月配置
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 后付费计费周期，单位（月）：
        # 1，2，3，4，5，，6，7， 8，9，10，11，12，24，36，48，60
        # @type Period: Integer
        # @param RenewFlag: 预付费续费方式：
        # - NOTIFY_AND_AUTO_RENEW：通知用户过期，且自动续费 (默认）
        # - NOTIFY_AND_MANUAL_RENEW：通知用户过期，但不自动续费
        # - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知用户过期，也不自动续费
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

      # 节点自定义参数
      class InstanceExtraArgs < TencentCloud::Common::AbstractModel
        # @param Kubelet: kubelet自定义参数，参数格式为["k1=v1", "k1=v2"]， 例如["root-dir=/var/lib/kubelet","feature-gates=PodShareProcessNamespace=true,DynamicKubeletConfig=true"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kubelet: Array

        attr_accessor :Kubelet

        def initialize(kubelet=nil)
          @Kubelet = kubelet
        end

        def deserialize(params)
          @Kubelet = params['Kubelet']
        end
      end

      # 数值结构
      class IntOrString < TencentCloud::Common::AbstractModel
        # @param Type: 数值类型，0是int,  1是字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param IntVal: 整数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntVal: Integer
        # @param StrVal: 字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrVal: String

        attr_accessor :Type, :IntVal, :StrVal

        def initialize(type=nil, intval=nil, strval=nil)
          @Type = type
          @IntVal = intval
          @StrVal = strval
        end

        def deserialize(params)
          @Type = params['Type']
          @IntVal = params['IntVal']
          @StrVal = params['StrVal']
        end
      end

      # 公网带宽
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param MaxBandwidthOut: 带宽
        # @type MaxBandwidthOut: Integer
        # @param ChargeType: 网络计费方式
        # @type ChargeType: String
        # @param BandwidthPackageId: 带宽包 ID
        # @type BandwidthPackageId: String

        attr_accessor :MaxBandwidthOut, :ChargeType, :BandwidthPackageId

        def initialize(maxbandwidthout=nil, chargetype=nil, bandwidthpackageid=nil)
          @MaxBandwidthOut = maxbandwidthout
          @ChargeType = chargetype
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @MaxBandwidthOut = params['MaxBandwidthOut']
          @ChargeType = params['ChargeType']
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # k8s中标签，一般以数组的方式存在
      class Label < TencentCloud::Common::AbstractModel
        # @param Name: map表中的Name
        # @type Name: String
        # @param Value: map表中的Value
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 节点池自定义脚本
      class LifecycleConfig < TencentCloud::Common::AbstractModel
        # @param PreInit: 节点初始化前自定义脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreInit: String
        # @param PostInit: 节点初始化后自定义脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostInit: String

        attr_accessor :PreInit, :PostInit

        def initialize(preinit=nil, postinit=nil)
          @PreInit = preinit
          @PostInit = postinit
        end

        def deserialize(params)
          @PreInit = params['PreInit']
          @PostInit = params['PostInit']
        end
      end

      # 节点池弹性伸缩配置
      class MachineSetScaling < TencentCloud::Common::AbstractModel
        # @param MinReplicas: 节点池最小副本数
        # @type MinReplicas: Integer
        # @param MaxReplicas: 节点池最大副本数
        # @type MaxReplicas: Integer
        # @param CreatePolicy: 节点池扩容策略。ZoneEquality：多可用区打散；ZonePriority：首选可用区优先；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatePolicy: String

        attr_accessor :MinReplicas, :MaxReplicas, :CreatePolicy

        def initialize(minreplicas=nil, maxreplicas=nil, createpolicy=nil)
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @CreatePolicy = createpolicy
        end

        def deserialize(params)
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          @CreatePolicy = params['CreatePolicy']
        end
      end

      # 托管节点池自动升级配置
      class MachineUpgradeSettings < TencentCloud::Common::AbstractModel
        # @param AutoUpgrade: 是否开启自动升级
        # @type AutoUpgrade: Boolean
        # @param UpgradeOptions: 运维窗口
        # @type UpgradeOptions: :class:`Tencentcloud::Tke.v20220501.models.AutoUpgradeOptions`
        # @param Components: 升级项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array
        # @param MaxUnavailable: 升级时，最大不可升级的节点数
        # @type MaxUnavailable: :class:`Tencentcloud::Tke.v20220501.models.IntOrString`

        attr_accessor :AutoUpgrade, :UpgradeOptions, :Components, :MaxUnavailable

        def initialize(autoupgrade=nil, upgradeoptions=nil, components=nil, maxunavailable=nil)
          @AutoUpgrade = autoupgrade
          @UpgradeOptions = upgradeoptions
          @Components = components
          @MaxUnavailable = maxunavailable
        end

        def deserialize(params)
          @AutoUpgrade = params['AutoUpgrade']
          unless params['UpgradeOptions'].nil?
            @UpgradeOptions = AutoUpgradeOptions.new
            @UpgradeOptions.deserialize(params['UpgradeOptions'])
          end
          @Components = params['Components']
          unless params['MaxUnavailable'].nil?
            @MaxUnavailable = IntOrString.new
            @MaxUnavailable.deserialize(params['MaxUnavailable'])
          end
        end
      end

      # 托管节点池Management配置
      class ManagementConfig < TencentCloud::Common::AbstractModel
        # @param Nameservers: dns 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nameservers: Array
        # @param Hosts: hosts 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hosts: Array
        # @param KernelArgs: 内核参数配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KernelArgs: Array

        attr_accessor :Nameservers, :Hosts, :KernelArgs

        def initialize(nameservers=nil, hosts=nil, kernelargs=nil)
          @Nameservers = nameservers
          @Hosts = hosts
          @KernelArgs = kernelargs
        end

        def deserialize(params)
          @Nameservers = params['Nameservers']
          @Hosts = params['Hosts']
          @KernelArgs = params['KernelArgs']
        end
      end

      # 手动加入的节点
      class ManuallyAdded < TencentCloud::Common::AbstractModel
        # @param Joining: 加入中的节点数量
        # @type Joining: Integer
        # @param Initializing: 初始化中的节点数量
        # @type Initializing: Integer
        # @param Normal: 正常的节点数量
        # @type Normal: Integer
        # @param Total: 节点总数
        # @type Total: Integer

        attr_accessor :Joining, :Initializing, :Normal, :Total

        def initialize(joining=nil, initializing=nil, normal=nil, total=nil)
          @Joining = joining
          @Initializing = initializing
          @Normal = normal
          @Total = total
        end

        def deserialize(params)
          @Joining = params['Joining']
          @Initializing = params['Initializing']
          @Normal = params['Normal']
          @Total = params['Total']
        end
      end

      # ModifyHealthCheckPolicy请求参数结构体
      class ModifyHealthCheckPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param HealthCheckPolicy: 健康检测策略
        # @type HealthCheckPolicy: :class:`Tencentcloud::Tke.v20220501.models.HealthCheckPolicy`

        attr_accessor :ClusterId, :HealthCheckPolicy

        def initialize(clusterid=nil, healthcheckpolicy=nil)
          @ClusterId = clusterid
          @HealthCheckPolicy = healthcheckpolicy
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['HealthCheckPolicy'].nil?
            @HealthCheckPolicy = HealthCheckPolicy.new
            @HealthCheckPolicy.deserialize(params['HealthCheckPolicy'])
          end
        end
      end

      # ModifyHealthCheckPolicy返回参数结构体
      class ModifyHealthCheckPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNodePool请求参数结构体
      class ModifyNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param NodePoolId: 节点池 ID
        # @type NodePoolId: String
        # @param Name: 节点池名称
        # @type Name: String
        # @param Labels: 节点  Labels
        # @type Labels: Array
        # @param Taints: 节点污点
        # @type Taints: Array
        # @param Tags: 节点标签
        # @type Tags: Array
        # @param DeletionProtection: 是否开启删除保护
        # @type DeletionProtection: Boolean
        # @param Unschedulable: 节点是否不可调度
        # @type Unschedulable: Boolean
        # @param Native: 原生节点池更新参数
        # @type Native: :class:`Tencentcloud::Tke.v20220501.models.UpdateNativeNodePoolParam`
        # @param Annotations: 节点 Annotation 列表
        # @type Annotations: Array

        attr_accessor :ClusterId, :NodePoolId, :Name, :Labels, :Taints, :Tags, :DeletionProtection, :Unschedulable, :Native, :Annotations

        def initialize(clusterid=nil, nodepoolid=nil, name=nil, labels=nil, taints=nil, tags=nil, deletionprotection=nil, unschedulable=nil, native=nil, annotations=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @Name = name
          @Labels = labels
          @Taints = taints
          @Tags = tags
          @DeletionProtection = deletionprotection
          @Unschedulable = unschedulable
          @Native = native
          @Annotations = annotations
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @Name = params['Name']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          unless params['Taints'].nil?
            @Taints = []
            params['Taints'].each do |i|
              taint_tmp = Taint.new
              taint_tmp.deserialize(i)
              @Taints << taint_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @Tags << tagspecification_tmp
            end
          end
          @DeletionProtection = params['DeletionProtection']
          @Unschedulable = params['Unschedulable']
          unless params['Native'].nil?
            @Native = UpdateNativeNodePoolParam.new
            @Native.deserialize(params['Native'])
          end
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              annotation_tmp = Annotation.new
              annotation_tmp.deserialize(i)
              @Annotations << annotation_tmp
            end
          end
        end
      end

      # ModifyNodePool返回参数结构体
      class ModifyNodePoolResponse < TencentCloud::Common::AbstractModel
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

      # 节点信息
      class NativeNodeInfo < TencentCloud::Common::AbstractModel
        # @param MachineName: 节点名称
        # @type MachineName: String
        # @param MachineState: Machine 状态
        # @type MachineState: String
        # @param Zone: Machine 所在可用区
        # @type Zone: String
        # @param InstanceChargeType: 节点计费类型。PREPAID：包年包月；POSTPAID_BY_HOUR：按量计费（默认）；
        # @type InstanceChargeType: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param LoginStatus: Machine 登录状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginStatus: String
        # @param IsProtectedFromScaleIn: 是否开启缩容保护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsProtectedFromScaleIn: Boolean
        # @param DisplayName: Machine 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param CPU: CPU核数，单位：核
        # @type CPU: Integer
        # @param GPU: GPU核数，单位：核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPU: Integer
        # @param RenewFlag: 自动续费标识
        # @type RenewFlag: String
        # @param PayMode: 节点计费模式
        # @type PayMode: String
        # @param Memory: 节点内存容量，单位：`GB`
        # @type Memory: Integer
        # @param SystemDisk: 节点系统盘配置信息
        # @type SystemDisk: :class:`Tencentcloud::Tke.v20220501.models.Disk`
        # @param InternetAccessible: 公网带宽相关信息设置
        # @type InternetAccessible: :class:`Tencentcloud::Tke.v20220501.models.InternetAccessible`
        # @param InstanceFamily: 机型所属机型族
        # @type InstanceFamily: String
        # @param LanIp: 节点内网 IP
        # @type LanIp: String
        # @param InstanceType: 机型
        # @type InstanceType: String
        # @param ExpiredTime: 包年包月节点计费过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param WanIp: 节点外网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIp: String
        # @param KeyIds: 节点密钥 ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyIds: Array
        # @param GPUParams: 节点GPU相关配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUParams: :class:`Tencentcloud::Tke.v20220501.models.GPUParams`
        # @param DataDisks: 数据盘列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array
        # @param SecurityGroupIDs: 安全组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIDs: Array
        # @param VpcId: VPC 唯一 ID
        # @type VpcId: String
        # @param SubnetId: 子网唯一 ID
        # @type SubnetId: String
        # @param OsImage: OS的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsImage: String
        # @param MachineType: **原生节点的 Machine 类型**

        # - Native 表示 CXM 类型的原生节点
        # - NativeCVM 表示 CVM 类型的原生节点
        # @type MachineType: String
        # @param InstanceId: **原生节点对应的实例 ID**

        # - ins-q47ofw6 表示这个实例是一个 CVM 的实例
        # - eks-f8mvyaep 表示这个实例是一个 CXM 的实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :MachineName, :MachineState, :Zone, :InstanceChargeType, :CreatedAt, :LoginStatus, :IsProtectedFromScaleIn, :DisplayName, :CPU, :GPU, :RenewFlag, :PayMode, :Memory, :SystemDisk, :InternetAccessible, :InstanceFamily, :LanIp, :InstanceType, :ExpiredTime, :WanIp, :KeyIds, :GPUParams, :DataDisks, :SecurityGroupIDs, :VpcId, :SubnetId, :OsImage, :MachineType, :InstanceId

        def initialize(machinename=nil, machinestate=nil, zone=nil, instancechargetype=nil, createdat=nil, loginstatus=nil, isprotectedfromscalein=nil, displayname=nil, cpu=nil, gpu=nil, renewflag=nil, paymode=nil, memory=nil, systemdisk=nil, internetaccessible=nil, instancefamily=nil, lanip=nil, instancetype=nil, expiredtime=nil, wanip=nil, keyids=nil, gpuparams=nil, datadisks=nil, securitygroupids=nil, vpcid=nil, subnetid=nil, osimage=nil, machinetype=nil, instanceid=nil)
          @MachineName = machinename
          @MachineState = machinestate
          @Zone = zone
          @InstanceChargeType = instancechargetype
          @CreatedAt = createdat
          @LoginStatus = loginstatus
          @IsProtectedFromScaleIn = isprotectedfromscalein
          @DisplayName = displayname
          @CPU = cpu
          @GPU = gpu
          @RenewFlag = renewflag
          @PayMode = paymode
          @Memory = memory
          @SystemDisk = systemdisk
          @InternetAccessible = internetaccessible
          @InstanceFamily = instancefamily
          @LanIp = lanip
          @InstanceType = instancetype
          @ExpiredTime = expiredtime
          @WanIp = wanip
          @KeyIds = keyids
          @GPUParams = gpuparams
          @DataDisks = datadisks
          @SecurityGroupIDs = securitygroupids
          @VpcId = vpcid
          @SubnetId = subnetid
          @OsImage = osimage
          @MachineType = machinetype
          @InstanceId = instanceid
        end

        def deserialize(params)
          @MachineName = params['MachineName']
          @MachineState = params['MachineState']
          @Zone = params['Zone']
          @InstanceChargeType = params['InstanceChargeType']
          @CreatedAt = params['CreatedAt']
          @LoginStatus = params['LoginStatus']
          @IsProtectedFromScaleIn = params['IsProtectedFromScaleIn']
          @DisplayName = params['DisplayName']
          @CPU = params['CPU']
          @GPU = params['GPU']
          @RenewFlag = params['RenewFlag']
          @PayMode = params['PayMode']
          @Memory = params['Memory']
          unless params['SystemDisk'].nil?
            @SystemDisk = Disk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceFamily = params['InstanceFamily']
          @LanIp = params['LanIp']
          @InstanceType = params['InstanceType']
          @ExpiredTime = params['ExpiredTime']
          @WanIp = params['WanIp']
          @KeyIds = params['KeyIds']
          unless params['GPUParams'].nil?
            @GPUParams = GPUParams.new
            @GPUParams.deserialize(params['GPUParams'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @SecurityGroupIDs = params['SecurityGroupIDs']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @OsImage = params['OsImage']
          @MachineType = params['MachineType']
          @InstanceId = params['InstanceId']
        end
      end

      # 原生节点池信息
      class NativeNodePoolInfo < TencentCloud::Common::AbstractModel
        # @param Scaling: 伸缩配置
        # @type Scaling: :class:`Tencentcloud::Tke.v20220501.models.MachineSetScaling`
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param SecurityGroupIds: 安全组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array
        # @param UpgradeSettings: 自动升级配置
        # @type UpgradeSettings: :class:`Tencentcloud::Tke.v20220501.models.MachineUpgradeSettings`
        # @param AutoRepair: 是否开启自愈能力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRepair: Boolean
        # @param InstanceChargeType: 节点计费类型
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 包年包月机型计费配置
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Tke.v20220501.models.InstanceChargePrepaid`
        # @param SystemDisk: 系统盘配置
        # @type SystemDisk: :class:`Tencentcloud::Tke.v20220501.models.Disk`
        # @param KeyIds: 密钥 ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyIds: Array
        # @param Management: Machine 系统配置
        # @type Management: :class:`Tencentcloud::Tke.v20220501.models.ManagementConfig`
        # @param HealthCheckPolicyName: 故障自愈规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckPolicyName: String
        # @param HostNamePattern: 原生节点池hostName模式串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostNamePattern: String
        # @param KubeletArgs: kubelet 自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeletArgs: Array
        # @param Lifecycle: 预定义脚本
        # @type Lifecycle: :class:`Tencentcloud::Tke.v20220501.models.LifecycleConfig`
        # @param RuntimeRootDir: 运行时根目录
        # @type RuntimeRootDir: String
        # @param EnableAutoscaling: 是否开启弹性伸缩
        # @type EnableAutoscaling: Boolean
        # @param InstanceTypes: 机型列表
        # @type InstanceTypes: Array
        # @param Replicas: 期望节点数
        # @type Replicas: Integer
        # @param ReadyReplicas: 就绪 Machine 个数
        # @type ReadyReplicas: Integer
        # @param InternetAccessible: 公网带宽设置
        # @type InternetAccessible: :class:`Tencentcloud::Tke.v20220501.models.InternetAccessible`
        # @param DataDisks: 原生节点池数据盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array
        # @param MachineType: 原生节点机型 Native, NativeCVM
        # @type MachineType: String

        attr_accessor :Scaling, :SubnetIds, :SecurityGroupIds, :UpgradeSettings, :AutoRepair, :InstanceChargeType, :InstanceChargePrepaid, :SystemDisk, :KeyIds, :Management, :HealthCheckPolicyName, :HostNamePattern, :KubeletArgs, :Lifecycle, :RuntimeRootDir, :EnableAutoscaling, :InstanceTypes, :Replicas, :ReadyReplicas, :InternetAccessible, :DataDisks, :MachineType

        def initialize(scaling=nil, subnetids=nil, securitygroupids=nil, upgradesettings=nil, autorepair=nil, instancechargetype=nil, instancechargeprepaid=nil, systemdisk=nil, keyids=nil, management=nil, healthcheckpolicyname=nil, hostnamepattern=nil, kubeletargs=nil, lifecycle=nil, runtimerootdir=nil, enableautoscaling=nil, instancetypes=nil, replicas=nil, readyreplicas=nil, internetaccessible=nil, datadisks=nil, machinetype=nil)
          @Scaling = scaling
          @SubnetIds = subnetids
          @SecurityGroupIds = securitygroupids
          @UpgradeSettings = upgradesettings
          @AutoRepair = autorepair
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @SystemDisk = systemdisk
          @KeyIds = keyids
          @Management = management
          @HealthCheckPolicyName = healthcheckpolicyname
          @HostNamePattern = hostnamepattern
          @KubeletArgs = kubeletargs
          @Lifecycle = lifecycle
          @RuntimeRootDir = runtimerootdir
          @EnableAutoscaling = enableautoscaling
          @InstanceTypes = instancetypes
          @Replicas = replicas
          @ReadyReplicas = readyreplicas
          @InternetAccessible = internetaccessible
          @DataDisks = datadisks
          @MachineType = machinetype
        end

        def deserialize(params)
          unless params['Scaling'].nil?
            @Scaling = MachineSetScaling.new
            @Scaling.deserialize(params['Scaling'])
          end
          @SubnetIds = params['SubnetIds']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['UpgradeSettings'].nil?
            @UpgradeSettings = MachineUpgradeSettings.new
            @UpgradeSettings.deserialize(params['UpgradeSettings'])
          end
          @AutoRepair = params['AutoRepair']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['SystemDisk'].nil?
            @SystemDisk = Disk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @KeyIds = params['KeyIds']
          unless params['Management'].nil?
            @Management = ManagementConfig.new
            @Management.deserialize(params['Management'])
          end
          @HealthCheckPolicyName = params['HealthCheckPolicyName']
          @HostNamePattern = params['HostNamePattern']
          @KubeletArgs = params['KubeletArgs']
          unless params['Lifecycle'].nil?
            @Lifecycle = LifecycleConfig.new
            @Lifecycle.deserialize(params['Lifecycle'])
          end
          @RuntimeRootDir = params['RuntimeRootDir']
          @EnableAutoscaling = params['EnableAutoscaling']
          @InstanceTypes = params['InstanceTypes']
          @Replicas = params['Replicas']
          @ReadyReplicas = params['ReadyReplicas']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @MachineType = params['MachineType']
        end
      end

      # 节点统计列表
      class NodeCountSummary < TencentCloud::Common::AbstractModel
        # @param ManuallyAdded: 手动管理的节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManuallyAdded: :class:`Tencentcloud::Tke.v20220501.models.ManuallyAdded`
        # @param AutoscalingAdded: 自动管理的节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalingAdded: :class:`Tencentcloud::Tke.v20220501.models.AutoscalingAdded`

        attr_accessor :ManuallyAdded, :AutoscalingAdded

        def initialize(manuallyadded=nil, autoscalingadded=nil)
          @ManuallyAdded = manuallyadded
          @AutoscalingAdded = autoscalingadded
        end

        def deserialize(params)
          unless params['ManuallyAdded'].nil?
            @ManuallyAdded = ManuallyAdded.new
            @ManuallyAdded.deserialize(params['ManuallyAdded'])
          end
          unless params['AutoscalingAdded'].nil?
            @AutoscalingAdded = AutoscalingAdded.new
            @AutoscalingAdded.deserialize(params['AutoscalingAdded'])
          end
        end
      end

      # 节点池信息
      class NodePool < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param NodePoolId: 节点池 ID
        # @type NodePoolId: String
        # @param Tags: 节点标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Taints: 节点污点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Taints: Array
        # @param DeletionProtection: 是否开启删除保护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionProtection: Boolean
        # @param Unschedulable: 节点是否不可调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unschedulable: Boolean
        # @param Type: 节点池类型
        # @type Type: String
        # @param Labels: 节点  Labels
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param LifeState: 节点池状态
        # @type LifeState: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param Name: 节点池名称
        # @type Name: String
        # @param Native: 原生节点池参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Native: :class:`Tencentcloud::Tke.v20220501.models.NativeNodePoolInfo`
        # @param Annotations: 节点 Annotation 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotations: Array
        # @param Super: 超级节点池参数，在Type等于Super该字段才有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Super: :class:`Tencentcloud::Tke.v20220501.models.SuperNodePoolInfo`
        # @param Regular: 普通节点池参数，在Type等于Regular该字段才有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regular: :class:`Tencentcloud::Tke.v20220501.models.RegularNodePoolInfo`
        # @param External: 第三方节点池参数，在Type等于External该字段才有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type External: :class:`Tencentcloud::Tke.v20220501.models.ExternalNodePoolInfo`

        attr_accessor :ClusterId, :NodePoolId, :Tags, :Taints, :DeletionProtection, :Unschedulable, :Type, :Labels, :LifeState, :CreatedAt, :Name, :Native, :Annotations, :Super, :Regular, :External

        def initialize(clusterid=nil, nodepoolid=nil, tags=nil, taints=nil, deletionprotection=nil, unschedulable=nil, type=nil, labels=nil, lifestate=nil, createdat=nil, name=nil, native=nil, annotations=nil, _super=nil, regular=nil, external=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @Tags = tags
          @Taints = taints
          @DeletionProtection = deletionprotection
          @Unschedulable = unschedulable
          @Type = type
          @Labels = labels
          @LifeState = lifestate
          @CreatedAt = createdat
          @Name = name
          @Native = native
          @Annotations = annotations
          @Super = _super
          @Regular = regular
          @External = external
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @Tags << tagspecification_tmp
            end
          end
          unless params['Taints'].nil?
            @Taints = []
            params['Taints'].each do |i|
              taint_tmp = Taint.new
              taint_tmp.deserialize(i)
              @Taints << taint_tmp
            end
          end
          @DeletionProtection = params['DeletionProtection']
          @Unschedulable = params['Unschedulable']
          @Type = params['Type']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          @LifeState = params['LifeState']
          @CreatedAt = params['CreatedAt']
          @Name = params['Name']
          unless params['Native'].nil?
            @Native = NativeNodePoolInfo.new
            @Native.deserialize(params['Native'])
          end
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              annotation_tmp = Annotation.new
              annotation_tmp.deserialize(i)
              @Annotations << annotation_tmp
            end
          end
          unless params['Super'].nil?
            @Super = SuperNodePoolInfo.new
            @Super.deserialize(params['Super'])
          end
          unless params['Regular'].nil?
            @Regular = RegularNodePoolInfo.new
            @Regular.deserialize(params['Regular'])
          end
          unless params['External'].nil?
            @External = ExternalNodePoolInfo.new
            @External.deserialize(params['External'])
          end
        end
      end

      # RebootMachines请求参数结构体
      class RebootMachinesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param MachineNames: 节点名字列表，一次请求，传入节点数量上限为100个
        # @type MachineNames: Array
        # @param StopType: 实例的关闭模式。取值范围：
        # soft_first：表示在正常关闭失败后进行强制关闭
        # hard：直接强制关闭
        # soft：仅软关机默认取值：soft。
        # @type StopType: String

        attr_accessor :ClusterId, :MachineNames, :StopType

        def initialize(clusterid=nil, machinenames=nil, stoptype=nil)
          @ClusterId = clusterid
          @MachineNames = machinenames
          @StopType = stoptype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @MachineNames = params['MachineNames']
          @StopType = params['StopType']
        end
      end

      # RebootMachines返回参数结构体
      class RebootMachinesResponse < TencentCloud::Common::AbstractModel
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

      # 普通节点信息
      class RegularNodeInfo < TencentCloud::Common::AbstractModel
        # @param InstanceAdvancedSettings: 节点配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20220501.models.InstanceAdvancedSettings`
        # @param AutoscalingGroupId: 自动伸缩组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalingGroupId: String

        attr_accessor :InstanceAdvancedSettings, :AutoscalingGroupId

        def initialize(instanceadvancedsettings=nil, autoscalinggroupid=nil)
          @InstanceAdvancedSettings = instanceadvancedsettings
          @AutoscalingGroupId = autoscalinggroupid
        end

        def deserialize(params)
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          @AutoscalingGroupId = params['AutoscalingGroupId']
        end
      end

      # 普通节点池信息
      class RegularNodePoolInfo < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: LaunchConfigurationId 配置
        # @type LaunchConfigurationId: String
        # @param AutoscalingGroupId: AutoscalingGroupId 分组id
        # @type AutoscalingGroupId: String
        # @param NodeCountSummary: NodeCountSummary 节点列表
        # @type NodeCountSummary: :class:`Tencentcloud::Tke.v20220501.models.NodeCountSummary`
        # @param AutoscalingGroupStatus: 状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalingGroupStatus: String
        # @param MaxNodesNum: 最大节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNodesNum: Integer
        # @param MinNodesNum: 最小节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinNodesNum: Integer
        # @param DesiredNodesNum: 期望的节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredNodesNum: Integer
        # @param NodePoolOs: 节点池osName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePoolOs: String
        # @param InstanceAdvancedSettings: 节点配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20220501.models.InstanceAdvancedSettings`

        attr_accessor :LaunchConfigurationId, :AutoscalingGroupId, :NodeCountSummary, :AutoscalingGroupStatus, :MaxNodesNum, :MinNodesNum, :DesiredNodesNum, :NodePoolOs, :InstanceAdvancedSettings

        def initialize(launchconfigurationid=nil, autoscalinggroupid=nil, nodecountsummary=nil, autoscalinggroupstatus=nil, maxnodesnum=nil, minnodesnum=nil, desirednodesnum=nil, nodepoolos=nil, instanceadvancedsettings=nil)
          @LaunchConfigurationId = launchconfigurationid
          @AutoscalingGroupId = autoscalinggroupid
          @NodeCountSummary = nodecountsummary
          @AutoscalingGroupStatus = autoscalinggroupstatus
          @MaxNodesNum = maxnodesnum
          @MinNodesNum = minnodesnum
          @DesiredNodesNum = desirednodesnum
          @NodePoolOs = nodepoolos
          @InstanceAdvancedSettings = instanceadvancedsettings
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @AutoscalingGroupId = params['AutoscalingGroupId']
          unless params['NodeCountSummary'].nil?
            @NodeCountSummary = NodeCountSummary.new
            @NodeCountSummary.deserialize(params['NodeCountSummary'])
          end
          @AutoscalingGroupStatus = params['AutoscalingGroupStatus']
          @MaxNodesNum = params['MaxNodesNum']
          @MinNodesNum = params['MinNodesNum']
          @DesiredNodesNum = params['DesiredNodesNum']
          @NodePoolOs = params['NodePoolOs']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
        end
      end

      # 运行时配置
      class RuntimeConfig < TencentCloud::Common::AbstractModel
        # @param RuntimeType: 运行时类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeType: String
        # @param RuntimeVersion: 运行时版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeVersion: String
        # @param RuntimeRootDir: 运行时根目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeRootDir: String

        attr_accessor :RuntimeType, :RuntimeVersion, :RuntimeRootDir

        def initialize(runtimetype=nil, runtimeversion=nil, runtimerootdir=nil)
          @RuntimeType = runtimetype
          @RuntimeVersion = runtimeversion
          @RuntimeRootDir = runtimerootdir
        end

        def deserialize(params)
          @RuntimeType = params['RuntimeType']
          @RuntimeVersion = params['RuntimeVersion']
          @RuntimeRootDir = params['RuntimeRootDir']
        end
      end

      # SetMachineLogin请求参数结构体
      class SetMachineLoginRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param MachineName: 节点名称
        # @type MachineName: String
        # @param KeyIds: 密钥 ID 列表
        # @type KeyIds: Array

        attr_accessor :ClusterId, :MachineName, :KeyIds

        def initialize(clusterid=nil, machinename=nil, keyids=nil)
          @ClusterId = clusterid
          @MachineName = machinename
          @KeyIds = keyids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @MachineName = params['MachineName']
          @KeyIds = params['KeyIds']
        end
      end

      # SetMachineLogin返回参数结构体
      class SetMachineLoginResponse < TencentCloud::Common::AbstractModel
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

      # 排序信息
      class SortBy < TencentCloud::Common::AbstractModel
        # @param FieldName: 排序指标
        # @type FieldName: String
        # @param OrderType: 排序方式
        # @type OrderType: String

        attr_accessor :FieldName, :OrderType

        def initialize(fieldname=nil, ordertype=nil)
          @FieldName = fieldname
          @OrderType = ordertype
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @OrderType = params['OrderType']
        end
      end

      # StartMachines请求参数结构体
      class StartMachinesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param MachineNames: 节点名字列表，一次请求，传入节点数量上限为100个
        # @type MachineNames: Array

        attr_accessor :ClusterId, :MachineNames

        def initialize(clusterid=nil, machinenames=nil)
          @ClusterId = clusterid
          @MachineNames = machinenames
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @MachineNames = params['MachineNames']
        end
      end

      # StartMachines返回参数结构体
      class StartMachinesResponse < TencentCloud::Common::AbstractModel
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

      # StopMachines请求参数结构体
      class StopMachinesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param MachineNames: 节点名字列表，一次请求，传入节点数量上限为100个
        # @type MachineNames: Array
        # @param StopType: 实例的关闭模式。取值范围：
        # soft_first：表示在正常关闭失败后进行强制关闭
        # hard：直接强制关闭
        # soft：仅软关机
        # @type StopType: String

        attr_accessor :ClusterId, :MachineNames, :StopType

        def initialize(clusterid=nil, machinenames=nil, stoptype=nil)
          @ClusterId = clusterid
          @MachineNames = machinenames
          @StopType = stoptype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @MachineNames = params['MachineNames']
          @StopType = params['StopType']
        end
      end

      # StopMachines返回参数结构体
      class StopMachinesResponse < TencentCloud::Common::AbstractModel
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

      # 超级节点信息
      class SuperNodeInfo < TencentCloud::Common::AbstractModel
        # @param Name: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AutoRenewFlag: 自动续费标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param CPU: 节点的 CPU 规格，单位：核。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPU: Float
        # @param UsedCPU: 节点上 Pod 的 CPU总和，单位：核。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedCPU: Float
        # @param Memory: 节点的内存规格，单位：Gi。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Float
        # @param UsedMemory: 节点上 Pod 的内存总和，单位：Gi。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedMemory: Float
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param VpcId: VPC 唯一 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网唯一 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param ActiveAt: 生效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveAt: String
        # @param ExpireAt: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireAt: String
        # @param MaxCPUScheduledPod: 可调度的单 Pod 最大 CPU 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCPUScheduledPod: Integer
        # @param InstanceAttribute: 实例属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAttribute: String

        attr_accessor :Name, :AutoRenewFlag, :ResourceType, :CPU, :UsedCPU, :Memory, :UsedMemory, :Zone, :VpcId, :SubnetId, :ActiveAt, :ExpireAt, :MaxCPUScheduledPod, :InstanceAttribute

        def initialize(name=nil, autorenewflag=nil, resourcetype=nil, cpu=nil, usedcpu=nil, memory=nil, usedmemory=nil, zone=nil, vpcid=nil, subnetid=nil, activeat=nil, expireat=nil, maxcpuscheduledpod=nil, instanceattribute=nil)
          @Name = name
          @AutoRenewFlag = autorenewflag
          @ResourceType = resourcetype
          @CPU = cpu
          @UsedCPU = usedcpu
          @Memory = memory
          @UsedMemory = usedmemory
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @ActiveAt = activeat
          @ExpireAt = expireat
          @MaxCPUScheduledPod = maxcpuscheduledpod
          @InstanceAttribute = instanceattribute
        end

        def deserialize(params)
          @Name = params['Name']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ResourceType = params['ResourceType']
          @CPU = params['CPU']
          @UsedCPU = params['UsedCPU']
          @Memory = params['Memory']
          @UsedMemory = params['UsedMemory']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ActiveAt = params['ActiveAt']
          @ExpireAt = params['ExpireAt']
          @MaxCPUScheduledPod = params['MaxCPUScheduledPod']
          @InstanceAttribute = params['InstanceAttribute']
        end
      end

      # 虚拟节点池信息
      class SuperNodePoolInfo < TencentCloud::Common::AbstractModel
        # @param SubnetIds: 子网列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param SecurityGroupIds: 安全组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array

        attr_accessor :SubnetIds, :SecurityGroupIds

        def initialize(subnetids=nil, securitygroupids=nil)
          @SubnetIds = subnetids
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SubnetIds = params['SubnetIds']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # 标签绑定的资源类型，当前支持类型："cluster"
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

      # 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到云主机实例。
      class TagSpecification < TencentCloud::Common::AbstractModel
        # @param ResourceType: 标签绑定的资源类型，当前支持类型：
        # 1.cluster：集群相关接口，TagSpecification 的 ResourceType 传参为 cluster
        # 2.machine：节点池相关接口，如：CreateNodePool, DescribeNodePools 等，TagSpecification 的 ResourceType 传参为 machine
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Tags: 标签对列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ResourceType, :Tags

        def initialize(resourcetype=nil, tags=nil)
          @ResourceType = resourcetype
          @Tags = tags
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # kubernetes Taint
      class Taint < TencentCloud::Common::AbstractModel
        # @param Key: Taint的Key
        # @type Key: String
        # @param Value: Taint的Value
        # @type Value: String
        # @param Effect: Taint的Effect
        # @type Effect: String

        attr_accessor :Key, :Value, :Effect

        def initialize(key=nil, value=nil, effect=nil)
          @Key = key
          @Value = value
          @Effect = effect
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Effect = params['Effect']
        end
      end

      # 修改原生节点池参数
      class UpdateNativeNodePoolParam < TencentCloud::Common::AbstractModel
        # @param Scaling: 伸缩配置
        # @type Scaling: :class:`Tencentcloud::Tke.v20220501.models.MachineSetScaling`
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param SecurityGroupIds: 安全组列表
        # @type SecurityGroupIds: Array
        # @param UpgradeSettings: 自动升级配置
        # @type UpgradeSettings: :class:`Tencentcloud::Tke.v20220501.models.MachineUpgradeSettings`
        # @param AutoRepair: 是否开启自愈能力
        # @type AutoRepair: Boolean
        # @param InstanceChargeType: 节点计费类型变更
        # 当前仅支持按量计费转包年包月：
        # - PREPAID
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 包年包月机型计费配置
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Tke.v20220501.models.InstanceChargePrepaid`
        # @param SystemDisk: 系统盘配置
        # @type SystemDisk: :class:`Tencentcloud::Tke.v20220501.models.Disk`
        # @param Management: Machine 系统配置
        # @type Management: :class:`Tencentcloud::Tke.v20220501.models.ManagementConfig`
        # @param HealthCheckPolicyName: 故障自愈规则名称
        # @type HealthCheckPolicyName: String
        # @param HostNamePattern: 原生节点池hostName模式串
        # @type HostNamePattern: String
        # @param KubeletArgs: kubelet 自定义参数
        # @type KubeletArgs: Array
        # @param Lifecycle: 预定义脚本
        # @type Lifecycle: :class:`Tencentcloud::Tke.v20220501.models.LifecycleConfig`
        # @param RuntimeRootDir: 运行时根目录
        # @type RuntimeRootDir: String
        # @param EnableAutoscaling: 是否开启弹性伸缩
        # @type EnableAutoscaling: Boolean
        # @param InstanceTypes: 机型列表
        # @type InstanceTypes: Array
        # @param Replicas: 期望节点数
        # @type Replicas: Integer
        # @param DataDisks: 数据盘列表
        # @type DataDisks: Array
        # @param KeyIds: ssh公钥id数组
        # @type KeyIds: Array
        # @param GPUConfigs: 节点池 GPU 配置
        # @type GPUConfigs: Array

        attr_accessor :Scaling, :SubnetIds, :SecurityGroupIds, :UpgradeSettings, :AutoRepair, :InstanceChargeType, :InstanceChargePrepaid, :SystemDisk, :Management, :HealthCheckPolicyName, :HostNamePattern, :KubeletArgs, :Lifecycle, :RuntimeRootDir, :EnableAutoscaling, :InstanceTypes, :Replicas, :DataDisks, :KeyIds, :GPUConfigs

        def initialize(scaling=nil, subnetids=nil, securitygroupids=nil, upgradesettings=nil, autorepair=nil, instancechargetype=nil, instancechargeprepaid=nil, systemdisk=nil, management=nil, healthcheckpolicyname=nil, hostnamepattern=nil, kubeletargs=nil, lifecycle=nil, runtimerootdir=nil, enableautoscaling=nil, instancetypes=nil, replicas=nil, datadisks=nil, keyids=nil, gpuconfigs=nil)
          @Scaling = scaling
          @SubnetIds = subnetids
          @SecurityGroupIds = securitygroupids
          @UpgradeSettings = upgradesettings
          @AutoRepair = autorepair
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @SystemDisk = systemdisk
          @Management = management
          @HealthCheckPolicyName = healthcheckpolicyname
          @HostNamePattern = hostnamepattern
          @KubeletArgs = kubeletargs
          @Lifecycle = lifecycle
          @RuntimeRootDir = runtimerootdir
          @EnableAutoscaling = enableautoscaling
          @InstanceTypes = instancetypes
          @Replicas = replicas
          @DataDisks = datadisks
          @KeyIds = keyids
          @GPUConfigs = gpuconfigs
        end

        def deserialize(params)
          unless params['Scaling'].nil?
            @Scaling = MachineSetScaling.new
            @Scaling.deserialize(params['Scaling'])
          end
          @SubnetIds = params['SubnetIds']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['UpgradeSettings'].nil?
            @UpgradeSettings = MachineUpgradeSettings.new
            @UpgradeSettings.deserialize(params['UpgradeSettings'])
          end
          @AutoRepair = params['AutoRepair']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['SystemDisk'].nil?
            @SystemDisk = Disk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['Management'].nil?
            @Management = ManagementConfig.new
            @Management.deserialize(params['Management'])
          end
          @HealthCheckPolicyName = params['HealthCheckPolicyName']
          @HostNamePattern = params['HostNamePattern']
          @KubeletArgs = params['KubeletArgs']
          unless params['Lifecycle'].nil?
            @Lifecycle = LifecycleConfig.new
            @Lifecycle.deserialize(params['Lifecycle'])
          end
          @RuntimeRootDir = params['RuntimeRootDir']
          @EnableAutoscaling = params['EnableAutoscaling']
          @InstanceTypes = params['InstanceTypes']
          @Replicas = params['Replicas']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @KeyIds = params['KeyIds']
          unless params['GPUConfigs'].nil?
            @GPUConfigs = []
            params['GPUConfigs'].each do |i|
              gpuconfig_tmp = GPUConfig.new
              gpuconfig_tmp.deserialize(i)
              @GPUConfigs << gpuconfig_tmp
            end
          end
        end
      end

    end
  end
end

