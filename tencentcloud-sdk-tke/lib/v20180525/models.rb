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
  module Tke
    module V20180525
      # AddExistedInstances请求参数结构体
      class AddExistedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例列表
        # @type InstanceIds: Array
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Tke.v20180525.models.EnhancedService`
        # @param LoginSettings: 节点登录信息（目前仅支持使用Password或者单个KeyIds）
        # @type LoginSettings: :class:`Tencentcloud::Tke.v20180525.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。（目前仅支持设置单个sgId）
        # @type SecurityGroupIds: Array
        # @param HostName: 重装系统时，可以指定修改实例的HostName(集群为HostName模式时，此参数必传，规则名称除不支持大写字符外与[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口HostName一致)
        # @type HostName: String

        attr_accessor :ClusterId, :InstanceIds, :InstanceAdvancedSettings, :EnhancedService, :LoginSettings, :SecurityGroupIds, :HostName
        
        def initialize(clusterid=nil, instanceids=nil, instanceadvancedsettings=nil, enhancedservice=nil, loginsettings=nil, securitygroupids=nil, hostname=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @InstanceAdvancedSettings = instanceadvancedsettings
          @EnhancedService = enhancedservice
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @HostName = hostname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettings])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new.deserialize(params[EnhancedService])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new.deserialize(params[LoginSettings])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @HostName = params['HostName']
        end
      end

      # AddExistedInstances返回参数结构体
      class AddExistedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param FailedInstanceIds: 失败的节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedInstanceIds: Array
        # @param SuccInstanceIds: 成功的节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccInstanceIds: Array
        # @param TimeoutInstanceIds: 超时未返回出来节点的ID(可能失败，也可能成功)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutInstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedInstanceIds, :SuccInstanceIds, :TimeoutInstanceIds, :RequestId
        
        def initialize(failedinstanceids=nil, succinstanceids=nil, timeoutinstanceids=nil, requestid=nil)
          @FailedInstanceIds = failedinstanceids
          @SuccInstanceIds = succinstanceids
          @TimeoutInstanceIds = timeoutinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedInstanceIds = params['FailedInstanceIds']
          @SuccInstanceIds = params['SuccInstanceIds']
          @TimeoutInstanceIds = params['TimeoutInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 集群关联的伸缩组最大实例数最小值实例数
      class AutoScalingGroupRange < TencentCloud::Common::AbstractModel
        # @param MinSize: 伸缩组最小实例数
        # @type MinSize: Integer
        # @param MaxSize: 伸缩组最大实例数
        # @type MaxSize: Integer

        attr_accessor :MinSize, :MaxSize
        
        def initialize(minsize=nil, maxsize=nil)
          @MinSize = minsize
          @MaxSize = maxsize
        end

        def deserialize(params)
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
        end
      end

      # 集群信息结构体
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterDescription: 集群描述
        # @type ClusterDescription: String
        # @param ClusterVersion: 集群版本（默认值为1.10.5）
        # @type ClusterVersion: String
        # @param ClusterOs: 集群系统。centos7.2x86_64 或者 ubuntu16.04.1 LTSx86_64，默认取值为ubuntu16.04.1 LTSx86_64
        # @type ClusterOs: String
        # @param ClusterType: 集群类型，托管集群：MANAGED_CLUSTER，独立集群：INDEPENDENT_CLUSTER。
        # @type ClusterType: String
        # @param ClusterNetworkSettings: 集群网络相关参数
        # @type ClusterNetworkSettings: :class:`Tencentcloud::Tke.v20180525.models.ClusterNetworkSettings`
        # @param ClusterNodeNum: 集群当前node数量
        # @type ClusterNodeNum: Integer
        # @param ProjectId: 集群所属的项目ID
        # @type ProjectId: Integer
        # @param TagSpecification: 标签描述列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSpecification: Array
        # @param ClusterStatus: 集群状态 (Running 运行中  Creating 创建中 Abnormal 异常  )
        # @type ClusterStatus: String
        # @param Property: 集群属性(包括集群不同属性的MAP，属性字段包括NodeNameType (lan-ip模式和hostname 模式，默认无lan-ip模式))
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Property: String
        # @param ClusterMaterNodeNum: 集群当前master数量
        # @type ClusterMaterNodeNum: Integer
        # @param ImageId: 集群使用镜像id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param OsCustomizeType: OsCustomizeType 系统定制类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsCustomizeType: String
        # @param ContainerRuntime: 集群运行环境docker或container
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerRuntime: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param DeletionProtection: 删除保护开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionProtection: Boolean

        attr_accessor :ClusterId, :ClusterName, :ClusterDescription, :ClusterVersion, :ClusterOs, :ClusterType, :ClusterNetworkSettings, :ClusterNodeNum, :ProjectId, :TagSpecification, :ClusterStatus, :Property, :ClusterMaterNodeNum, :ImageId, :OsCustomizeType, :ContainerRuntime, :CreatedTime, :DeletionProtection
        
        def initialize(clusterid=nil, clustername=nil, clusterdescription=nil, clusterversion=nil, clusteros=nil, clustertype=nil, clusternetworksettings=nil, clusternodenum=nil, projectid=nil, tagspecification=nil, clusterstatus=nil, property=nil, clustermaternodenum=nil, imageid=nil, oscustomizetype=nil, containerruntime=nil, createdtime=nil, deletionprotection=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDescription = clusterdescription
          @ClusterVersion = clusterversion
          @ClusterOs = clusteros
          @ClusterType = clustertype
          @ClusterNetworkSettings = clusternetworksettings
          @ClusterNodeNum = clusternodenum
          @ProjectId = projectid
          @TagSpecification = tagspecification
          @ClusterStatus = clusterstatus
          @Property = property
          @ClusterMaterNodeNum = clustermaternodenum
          @ImageId = imageid
          @OsCustomizeType = oscustomizetype
          @ContainerRuntime = containerruntime
          @CreatedTime = createdtime
          @DeletionProtection = deletionprotection
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDescription = params['ClusterDescription']
          @ClusterVersion = params['ClusterVersion']
          @ClusterOs = params['ClusterOs']
          @ClusterType = params['ClusterType']
          unless params['ClusterNetworkSettings'].nil?
            @ClusterNetworkSettings = ClusterNetworkSettings.new.deserialize(params[ClusterNetworkSettings])
          end
          @ClusterNodeNum = params['ClusterNodeNum']
          @ProjectId = params['ProjectId']
          @TagSpecification = params['TagSpecification']
          @ClusterStatus = params['ClusterStatus']
          @Property = params['Property']
          @ClusterMaterNodeNum = params['ClusterMaterNodeNum']
          @ImageId = params['ImageId']
          @OsCustomizeType = params['OsCustomizeType']
          @ContainerRuntime = params['ContainerRuntime']
          @CreatedTime = params['CreatedTime']
          @DeletionProtection = params['DeletionProtection']
        end
      end

      # 集群高级配置
      class ClusterAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param IPVS: 是否启用IPVS
        # @type IPVS: Boolean
        # @param AsEnabled: 是否启用集群节点自动扩缩容(创建集群流程不支持开启此功能)
        # @type AsEnabled: Boolean
        # @param ContainerRuntime: 集群使用的runtime类型，包括"docker"和"containerd"两种类型，默认为"docker"
        # @type ContainerRuntime: String
        # @param NodeNameType: 集群中节点NodeName类型（包括 hostname,lan-ip两种形式，默认为lan-ip。如果开启了hostname模式，创建节点时需要设置HostName参数，并且InstanceName需要和HostName一致）
        # @type NodeNameType: String
        # @param ExtraArgs: 集群自定义参数
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.ClusterExtraArgs`
        # @param NetworkType: 集群网络类型（包括GR(全局路由)和VPC-CNI两种模式，默认为GR。
        # @type NetworkType: String
        # @param IsNonStaticIpMode: 集群VPC-CNI模式是否为非固定IP，默认: FALSE 固定IP。
        # @type IsNonStaticIpMode: Boolean
        # @param DeletionProtection: 是否启用集群删除保护
        # @type DeletionProtection: Boolean
        # @param KubeProxyMode: 集群的网络代理模型
        # @type KubeProxyMode: String

        attr_accessor :IPVS, :AsEnabled, :ContainerRuntime, :NodeNameType, :ExtraArgs, :NetworkType, :IsNonStaticIpMode, :DeletionProtection, :KubeProxyMode
        
        def initialize(ipvs=nil, asenabled=nil, containerruntime=nil, nodenametype=nil, extraargs=nil, networktype=nil, isnonstaticipmode=nil, deletionprotection=nil, kubeproxymode=nil)
          @IPVS = ipvs
          @AsEnabled = asenabled
          @ContainerRuntime = containerruntime
          @NodeNameType = nodenametype
          @ExtraArgs = extraargs
          @NetworkType = networktype
          @IsNonStaticIpMode = isnonstaticipmode
          @DeletionProtection = deletionprotection
          @KubeProxyMode = kubeproxymode
        end

        def deserialize(params)
          @IPVS = params['IPVS']
          @AsEnabled = params['AsEnabled']
          @ContainerRuntime = params['ContainerRuntime']
          @NodeNameType = params['NodeNameType']
          unless params['ExtraArgs'].nil?
            @ExtraArgs = ClusterExtraArgs.new.deserialize(params[ExtraArgs])
          end
          @NetworkType = params['NetworkType']
          @IsNonStaticIpMode = params['IsNonStaticIpMode']
          @DeletionProtection = params['DeletionProtection']
          @KubeProxyMode = params['KubeProxyMode']
        end
      end

      # 集群关联的伸缩组信息
      class ClusterAsGroup < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param Status: 伸缩组状态(开启 enabled 开启中 enabling 关闭 disabled 关闭中 disabling 更新中 updating 删除中 deleting 开启缩容中 scaleDownEnabling 关闭缩容中 scaleDownDisabling)
        # @type Status: String
        # @param IsUnschedulable: 节点是否设置成不可调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnschedulable: Boolean
        # @param Labels: 伸缩组的label列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String

        attr_accessor :AutoScalingGroupId, :Status, :IsUnschedulable, :Labels, :CreatedTime
        
        def initialize(autoscalinggroupid=nil, status=nil, isunschedulable=nil, labels=nil, createdtime=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @Status = status
          @IsUnschedulable = isunschedulable
          @Labels = labels
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @Status = params['Status']
          @IsUnschedulable = params['IsUnschedulable']
          @Labels = params['Labels']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 集群伸缩组属性
      class ClusterAsGroupAttribute < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param AutoScalingGroupEnabled: 是否开启
        # @type AutoScalingGroupEnabled: Boolean
        # @param AutoScalingGroupRange: 伸缩组最大最小实例数
        # @type AutoScalingGroupRange: :class:`Tencentcloud::Tke.v20180525.models.AutoScalingGroupRange`

        attr_accessor :AutoScalingGroupId, :AutoScalingGroupEnabled, :AutoScalingGroupRange
        
        def initialize(autoscalinggroupid=nil, autoscalinggroupenabled=nil, autoscalinggrouprange=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @AutoScalingGroupEnabled = autoscalinggroupenabled
          @AutoScalingGroupRange = autoscalinggrouprange
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @AutoScalingGroupEnabled = params['AutoScalingGroupEnabled']
          unless params['AutoScalingGroupRange'].nil?
            @AutoScalingGroupRange = AutoScalingGroupRange.new.deserialize(params[AutoScalingGroupRange])
          end
        end
      end

      # 集群弹性伸缩配置
      class ClusterAsGroupOption < TencentCloud::Common::AbstractModel
        # @param IsScaleDownEnabled: 是否开启缩容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsScaleDownEnabled: Boolean
        # @param Expander: 多伸缩组情况下扩容选择算法(random 随机选择，most-pods 最多类型的Pod least-waste 最少的资源浪费，默认为random)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expander: String
        # @param MaxEmptyBulkDelete: 最大并发缩容数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxEmptyBulkDelete: Integer
        # @param ScaleDownDelay: 集群扩容后多少分钟开始判断缩容（默认为10分钟）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleDownDelay: Integer
        # @param ScaleDownUnneededTime: 节点连续空闲多少分钟后被缩容（默认为 10分钟）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleDownUnneededTime: Integer
        # @param ScaleDownUtilizationThreshold: 节点资源使用量低于多少(百分比)时认为空闲(默认: 50(百分比))
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleDownUtilizationThreshold: Integer
        # @param SkipNodesWithLocalStorage: 含有本地存储Pod的节点是否不缩容(默认： FALSE)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkipNodesWithLocalStorage: Boolean
        # @param SkipNodesWithSystemPods: 含有kube-system namespace下非DaemonSet管理的Pod的节点是否不缩容 (默认： FALSE)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkipNodesWithSystemPods: Boolean
        # @param IgnoreDaemonSetsUtilization: 计算资源使用量时是否默认忽略DaemonSet的实例(默认值: False，不忽略)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreDaemonSetsUtilization: Boolean
        # @param OkTotalUnreadyCount: CA做健康性判断的个数，默认3，即超过OkTotalUnreadyCount个数后，CA会进行健康性判断。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OkTotalUnreadyCount: Integer
        # @param MaxTotalUnreadyPercentage: 未就绪节点的最大百分比，此后CA会停止操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTotalUnreadyPercentage: Integer
        # @param ScaleDownUnreadyTime: 表示未准备就绪的节点在有资格进行缩减之前应该停留多长时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleDownUnreadyTime: Integer
        # @param UnregisteredNodeRemovalTime: CA删除未在Kubernetes中注册的节点之前等待的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnregisteredNodeRemovalTime: Integer

        attr_accessor :IsScaleDownEnabled, :Expander, :MaxEmptyBulkDelete, :ScaleDownDelay, :ScaleDownUnneededTime, :ScaleDownUtilizationThreshold, :SkipNodesWithLocalStorage, :SkipNodesWithSystemPods, :IgnoreDaemonSetsUtilization, :OkTotalUnreadyCount, :MaxTotalUnreadyPercentage, :ScaleDownUnreadyTime, :UnregisteredNodeRemovalTime
        
        def initialize(isscaledownenabled=nil, expander=nil, maxemptybulkdelete=nil, scaledowndelay=nil, scaledownunneededtime=nil, scaledownutilizationthreshold=nil, skipnodeswithlocalstorage=nil, skipnodeswithsystempods=nil, ignoredaemonsetsutilization=nil, oktotalunreadycount=nil, maxtotalunreadypercentage=nil, scaledownunreadytime=nil, unregisterednoderemovaltime=nil)
          @IsScaleDownEnabled = isscaledownenabled
          @Expander = expander
          @MaxEmptyBulkDelete = maxemptybulkdelete
          @ScaleDownDelay = scaledowndelay
          @ScaleDownUnneededTime = scaledownunneededtime
          @ScaleDownUtilizationThreshold = scaledownutilizationthreshold
          @SkipNodesWithLocalStorage = skipnodeswithlocalstorage
          @SkipNodesWithSystemPods = skipnodeswithsystempods
          @IgnoreDaemonSetsUtilization = ignoredaemonsetsutilization
          @OkTotalUnreadyCount = oktotalunreadycount
          @MaxTotalUnreadyPercentage = maxtotalunreadypercentage
          @ScaleDownUnreadyTime = scaledownunreadytime
          @UnregisteredNodeRemovalTime = unregisterednoderemovaltime
        end

        def deserialize(params)
          @IsScaleDownEnabled = params['IsScaleDownEnabled']
          @Expander = params['Expander']
          @MaxEmptyBulkDelete = params['MaxEmptyBulkDelete']
          @ScaleDownDelay = params['ScaleDownDelay']
          @ScaleDownUnneededTime = params['ScaleDownUnneededTime']
          @ScaleDownUtilizationThreshold = params['ScaleDownUtilizationThreshold']
          @SkipNodesWithLocalStorage = params['SkipNodesWithLocalStorage']
          @SkipNodesWithSystemPods = params['SkipNodesWithSystemPods']
          @IgnoreDaemonSetsUtilization = params['IgnoreDaemonSetsUtilization']
          @OkTotalUnreadyCount = params['OkTotalUnreadyCount']
          @MaxTotalUnreadyPercentage = params['MaxTotalUnreadyPercentage']
          @ScaleDownUnreadyTime = params['ScaleDownUnreadyTime']
          @UnregisteredNodeRemovalTime = params['UnregisteredNodeRemovalTime']
        end
      end

      # 描述集群的基本配置信息
      class ClusterBasicSettings < TencentCloud::Common::AbstractModel
        # @param ClusterOs: 集群系统。centos7.2x86_64 或者 ubuntu16.04.1 LTSx86_64，默认取值为ubuntu16.04.1 LTSx86_64
        # @type ClusterOs: String
        # @param ClusterVersion: 集群版本,默认值为1.10.5
        # @type ClusterVersion: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterDescription: 集群描述
        # @type ClusterDescription: String
        # @param VpcId: 私有网络ID，形如vpc-xxx。创建托管空集群时必传。
        # @type VpcId: String
        # @param ProjectId: 集群内新增资源所属项目ID。
        # @type ProjectId: Integer
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到集群实例。
        # @type TagSpecification: Array
        # @param OsCustomizeType: 容器的镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        # @type OsCustomizeType: String
        # @param NeedWorkSecurityGroup: 是否开启节点的默认安全组(默认: 否，Aphla特性)
        # @type NeedWorkSecurityGroup: Boolean

        attr_accessor :ClusterOs, :ClusterVersion, :ClusterName, :ClusterDescription, :VpcId, :ProjectId, :TagSpecification, :OsCustomizeType, :NeedWorkSecurityGroup
        
        def initialize(clusteros=nil, clusterversion=nil, clustername=nil, clusterdescription=nil, vpcid=nil, projectid=nil, tagspecification=nil, oscustomizetype=nil, needworksecuritygroup=nil)
          @ClusterOs = clusteros
          @ClusterVersion = clusterversion
          @ClusterName = clustername
          @ClusterDescription = clusterdescription
          @VpcId = vpcid
          @ProjectId = projectid
          @TagSpecification = tagspecification
          @OsCustomizeType = oscustomizetype
          @NeedWorkSecurityGroup = needworksecuritygroup
        end

        def deserialize(params)
          @ClusterOs = params['ClusterOs']
          @ClusterVersion = params['ClusterVersion']
          @ClusterName = params['ClusterName']
          @ClusterDescription = params['ClusterDescription']
          @VpcId = params['VpcId']
          @ProjectId = params['ProjectId']
          @TagSpecification = params['TagSpecification']
          @OsCustomizeType = params['OsCustomizeType']
          @NeedWorkSecurityGroup = params['NeedWorkSecurityGroup']
        end
      end

      # 集群容器网络相关参数
      class ClusterCIDRSettings < TencentCloud::Common::AbstractModel
        # @param ClusterCIDR: 用于分配集群容器和服务 IP 的 CIDR，不得与 VPC CIDR 冲突，也不得与同 VPC 内其他集群 CIDR 冲突。且网段范围必须在内网网段内，例如:10.1.0.0/14, 192.168.0.1/18,172.16.0.0/16。
        # @type ClusterCIDR: String
        # @param IgnoreClusterCIDRConflict: 是否忽略 ClusterCIDR 冲突错误, 默认不忽略
        # @type IgnoreClusterCIDRConflict: Boolean
        # @param MaxNodePodNum: 集群中每个Node上最大的Pod数量。取值范围4～256。不为2的幂值时会向上取最接近的2的幂值。
        # @type MaxNodePodNum: Integer
        # @param MaxClusterServiceNum: 集群最大的service数量。取值范围32～32768，不为2的幂值时会向上取最接近的2的幂值。
        # @type MaxClusterServiceNum: Integer
        # @param ServiceCIDR: 用于分配集群服务 IP 的 CIDR，不得与 VPC CIDR 冲突，也不得与同 VPC 内其他集群 CIDR 冲突。且网段范围必须在内网网段内，例如:10.1.0.0/14, 192.168.0.1/18,172.16.0.0/16。
        # @type ServiceCIDR: String
        # @param EniSubnetIds: VPC-CNI网络模式下，弹性网卡的子网Id。
        # @type EniSubnetIds: Array
        # @param ClaimExpiredSeconds: VPC-CNI网络模式下，弹性网卡IP的回收时间，取值范围[300,15768000)
        # @type ClaimExpiredSeconds: Integer

        attr_accessor :ClusterCIDR, :IgnoreClusterCIDRConflict, :MaxNodePodNum, :MaxClusterServiceNum, :ServiceCIDR, :EniSubnetIds, :ClaimExpiredSeconds
        
        def initialize(clustercidr=nil, ignoreclustercidrconflict=nil, maxnodepodnum=nil, maxclusterservicenum=nil, servicecidr=nil, enisubnetids=nil, claimexpiredseconds=nil)
          @ClusterCIDR = clustercidr
          @IgnoreClusterCIDRConflict = ignoreclustercidrconflict
          @MaxNodePodNum = maxnodepodnum
          @MaxClusterServiceNum = maxclusterservicenum
          @ServiceCIDR = servicecidr
          @EniSubnetIds = enisubnetids
          @ClaimExpiredSeconds = claimexpiredseconds
        end

        def deserialize(params)
          @ClusterCIDR = params['ClusterCIDR']
          @IgnoreClusterCIDRConflict = params['IgnoreClusterCIDRConflict']
          @MaxNodePodNum = params['MaxNodePodNum']
          @MaxClusterServiceNum = params['MaxClusterServiceNum']
          @ServiceCIDR = params['ServiceCIDR']
          @EniSubnetIds = params['EniSubnetIds']
          @ClaimExpiredSeconds = params['ClaimExpiredSeconds']
        end
      end

      # 集群master自定义参数
      class ClusterExtraArgs < TencentCloud::Common::AbstractModel
        # @param KubeAPIServer: kube-apiserver自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeAPIServer: Array
        # @param KubeControllerManager: kube-controller-manager自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeControllerManager: Array
        # @param KubeScheduler: kube-scheduler自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeScheduler: Array

        attr_accessor :KubeAPIServer, :KubeControllerManager, :KubeScheduler
        
        def initialize(kubeapiserver=nil, kubecontrollermanager=nil, kubescheduler=nil)
          @KubeAPIServer = kubeapiserver
          @KubeControllerManager = kubecontrollermanager
          @KubeScheduler = kubescheduler
        end

        def deserialize(params)
          @KubeAPIServer = params['KubeAPIServer']
          @KubeControllerManager = params['KubeControllerManager']
          @KubeScheduler = params['KubeScheduler']
        end
      end

      # 集群网络相关的参数
      class ClusterNetworkSettings < TencentCloud::Common::AbstractModel
        # @param ClusterCIDR: 用于分配集群容器和服务 IP 的 CIDR，不得与 VPC CIDR 冲突，也不得与同 VPC 内其他集群 CIDR 冲突
        # @type ClusterCIDR: String
        # @param IgnoreClusterCIDRConflict: 是否忽略 ClusterCIDR 冲突错误, 默认不忽略
        # @type IgnoreClusterCIDRConflict: Boolean
        # @param MaxNodePodNum: 集群中每个Node上最大的Pod数量(默认为256)
        # @type MaxNodePodNum: Integer
        # @param MaxClusterServiceNum: 集群最大的service数量(默认为256)
        # @type MaxClusterServiceNum: Integer
        # @param Ipvs: 是否启用IPVS(默认不开启)
        # @type Ipvs: Boolean
        # @param VpcId: 集群的VPCID（如果创建空集群，为必传值，否则自动设置为和集群的节点保持一致）
        # @type VpcId: String
        # @param Cni: 网络插件是否启用CNI(默认开启)
        # @type Cni: Boolean

        attr_accessor :ClusterCIDR, :IgnoreClusterCIDRConflict, :MaxNodePodNum, :MaxClusterServiceNum, :Ipvs, :VpcId, :Cni
        
        def initialize(clustercidr=nil, ignoreclustercidrconflict=nil, maxnodepodnum=nil, maxclusterservicenum=nil, ipvs=nil, vpcid=nil, cni=nil)
          @ClusterCIDR = clustercidr
          @IgnoreClusterCIDRConflict = ignoreclustercidrconflict
          @MaxNodePodNum = maxnodepodnum
          @MaxClusterServiceNum = maxclusterservicenum
          @Ipvs = ipvs
          @VpcId = vpcid
          @Cni = cni
        end

        def deserialize(params)
          @ClusterCIDR = params['ClusterCIDR']
          @IgnoreClusterCIDRConflict = params['IgnoreClusterCIDRConflict']
          @MaxNodePodNum = params['MaxNodePodNum']
          @MaxClusterServiceNum = params['MaxClusterServiceNum']
          @Ipvs = params['Ipvs']
          @VpcId = params['VpcId']
          @Cni = params['Cni']
        end
      end

      # CreateClusterAsGroup请求参数结构体
      class CreateClusterAsGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AutoScalingGroupPara: 伸缩组创建透传参数，json化字符串格式，详见[伸缩组创建实例](https://cloud.tencent.com/document/api/377/20440)接口。LaunchConfigurationId由LaunchConfigurePara参数创建，不支持填写
        # @type AutoScalingGroupPara: String
        # @param LaunchConfigurePara: 启动配置创建透传参数，json化字符串格式，详见[创建启动配置](https://cloud.tencent.com/document/api/377/20447)接口。另外ImageId参数由于集群维度已经有的ImageId信息，这个字段不需要填写。UserData字段设置通过UserScript设置，这个字段不需要填写。
        # @type LaunchConfigurePara: String
        # @param InstanceAdvancedSettings: 节点高级配置信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param Labels: 节点Label数组
        # @type Labels: Array

        attr_accessor :ClusterId, :AutoScalingGroupPara, :LaunchConfigurePara, :InstanceAdvancedSettings, :Labels
        
        def initialize(clusterid=nil, autoscalinggrouppara=nil, launchconfigurepara=nil, instanceadvancedsettings=nil, labels=nil)
          @ClusterId = clusterid
          @AutoScalingGroupPara = autoscalinggrouppara
          @LaunchConfigurePara = launchconfigurepara
          @InstanceAdvancedSettings = instanceadvancedsettings
          @Labels = labels
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AutoScalingGroupPara = params['AutoScalingGroupPara']
          @LaunchConfigurePara = params['LaunchConfigurePara']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettings])
          end
          @Labels = params['Labels']
        end
      end

      # CreateClusterAsGroup返回参数结构体
      class CreateClusterAsGroupResponse < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: 启动配置ID
        # @type LaunchConfigurationId: String
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LaunchConfigurationId, :AutoScalingGroupId, :RequestId
        
        def initialize(launchconfigurationid=nil, autoscalinggroupid=nil, requestid=nil)
          @LaunchConfigurationId = launchconfigurationid
          @AutoScalingGroupId = autoscalinggroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateClusterEndpoint请求参数结构体
      class CreateClusterEndpointRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SubnetId: 集群端口所在的子网ID  (仅在开启非外网访问时需要填，必须为集群所在VPC内的子网)
        # @type SubnetId: String
        # @param IsExtranet: 是否为外网访问（TRUE 外网访问 FALSE 内网访问，默认值： FALSE）
        # @type IsExtranet: Boolean

        attr_accessor :ClusterId, :SubnetId, :IsExtranet
        
        def initialize(clusterid=nil, subnetid=nil, isextranet=nil)
          @ClusterId = clusterid
          @SubnetId = subnetid
          @IsExtranet = isextranet
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SubnetId = params['SubnetId']
          @IsExtranet = params['IsExtranet']
        end
      end

      # CreateClusterEndpoint返回参数结构体
      class CreateClusterEndpointResponse < TencentCloud::Common::AbstractModel
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

      # CreateClusterEndpointVip请求参数结构体
      class CreateClusterEndpointVipRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SecurityPolicies: 安全策略放通单个IP或CIDR(例如: "192.168.1.0/24",默认为拒绝所有)
        # @type SecurityPolicies: Array

        attr_accessor :ClusterId, :SecurityPolicies
        
        def initialize(clusterid=nil, securitypolicies=nil)
          @ClusterId = clusterid
          @SecurityPolicies = securitypolicies
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SecurityPolicies = params['SecurityPolicies']
        end
      end

      # CreateClusterEndpointVip返回参数结构体
      class CreateClusterEndpointVipResponse < TencentCloud::Common::AbstractModel
        # @param RequestFlowId: 请求任务的FlowId
        # @type RequestFlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestFlowId, :RequestId
        
        def initialize(requestflowid=nil, requestid=nil)
          @RequestFlowId = requestflowid
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestFlowId = params['RequestFlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateClusterInstances请求参数结构体
      class CreateClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID，请填写 查询集群列表 接口中返回的 clusterId 字段
        # @type ClusterId: String
        # @param RunInstancePara: CVM创建透传参数，json化字符串格式，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。
        # @type RunInstancePara: String
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`

        attr_accessor :ClusterId, :RunInstancePara, :InstanceAdvancedSettings
        
        def initialize(clusterid=nil, runinstancepara=nil, instanceadvancedsettings=nil)
          @ClusterId = clusterid
          @RunInstancePara = runinstancepara
          @InstanceAdvancedSettings = instanceadvancedsettings
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RunInstancePara = params['RunInstancePara']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettings])
          end
        end
      end

      # CreateClusterInstances返回参数结构体
      class CreateClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 节点实例ID
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIdSet, :RequestId
        
        def initialize(instanceidset=nil, requestid=nil)
          @InstanceIdSet = instanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterCIDRSettings: 集群容器网络配置信息
        # @type ClusterCIDRSettings: :class:`Tencentcloud::Tke.v20180525.models.ClusterCIDRSettings`
        # @param ClusterType: 集群类型，托管集群：MANAGED_CLUSTER，独立集群：INDEPENDENT_CLUSTER。
        # @type ClusterType: String
        # @param RunInstancesForNode: CVM创建透传参数，json化字符串格式，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。总机型(包括地域)数量不超过10个，相同机型(地域)购买多台机器可以通过设置参数中RunInstances中InstanceCount来实现。
        # @type RunInstancesForNode: Array
        # @param ClusterBasicSettings: 集群的基本配置信息
        # @type ClusterBasicSettings: :class:`Tencentcloud::Tke.v20180525.models.ClusterBasicSettings`
        # @param ClusterAdvancedSettings: 集群高级配置信息
        # @type ClusterAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.ClusterAdvancedSettings`
        # @param InstanceAdvancedSettings: 节点高级配置信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param ExistedInstancesForNode: 已存在实例的配置信息。所有实例必须在同一个VPC中，最大数量不超过100。
        # @type ExistedInstancesForNode: Array
        # @param InstanceDataDiskMountSettings: CVM类型和其对应的数据盘挂载配置信息
        # @type InstanceDataDiskMountSettings: Array

        attr_accessor :ClusterCIDRSettings, :ClusterType, :RunInstancesForNode, :ClusterBasicSettings, :ClusterAdvancedSettings, :InstanceAdvancedSettings, :ExistedInstancesForNode, :InstanceDataDiskMountSettings
        
        def initialize(clustercidrsettings=nil, clustertype=nil, runinstancesfornode=nil, clusterbasicsettings=nil, clusteradvancedsettings=nil, instanceadvancedsettings=nil, existedinstancesfornode=nil, instancedatadiskmountsettings=nil)
          @ClusterCIDRSettings = clustercidrsettings
          @ClusterType = clustertype
          @RunInstancesForNode = runinstancesfornode
          @ClusterBasicSettings = clusterbasicsettings
          @ClusterAdvancedSettings = clusteradvancedsettings
          @InstanceAdvancedSettings = instanceadvancedsettings
          @ExistedInstancesForNode = existedinstancesfornode
          @InstanceDataDiskMountSettings = instancedatadiskmountsettings
        end

        def deserialize(params)
          unless params['ClusterCIDRSettings'].nil?
            @ClusterCIDRSettings = ClusterCIDRSettings.new.deserialize(params[ClusterCIDRSettings])
          end
          @ClusterType = params['ClusterType']
          @RunInstancesForNode = params['RunInstancesForNode']
          unless params['ClusterBasicSettings'].nil?
            @ClusterBasicSettings = ClusterBasicSettings.new.deserialize(params[ClusterBasicSettings])
          end
          unless params['ClusterAdvancedSettings'].nil?
            @ClusterAdvancedSettings = ClusterAdvancedSettings.new.deserialize(params[ClusterAdvancedSettings])
          end
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettings])
          end
          @ExistedInstancesForNode = params['ExistedInstancesForNode']
          @InstanceDataDiskMountSettings = params['InstanceDataDiskMountSettings']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId
        
        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateClusterRoute请求参数结构体
      class CreateClusterRouteRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param DestinationCidrBlock: 目的端CIDR。
        # @type DestinationCidrBlock: String
        # @param GatewayIp: 下一跳地址。
        # @type GatewayIp: String

        attr_accessor :RouteTableName, :DestinationCidrBlock, :GatewayIp
        
        def initialize(routetablename=nil, destinationcidrblock=nil, gatewayip=nil)
          @RouteTableName = routetablename
          @DestinationCidrBlock = destinationcidrblock
          @GatewayIp = gatewayip
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @GatewayIp = params['GatewayIp']
        end
      end

      # CreateClusterRoute返回参数结构体
      class CreateClusterRouteResponse < TencentCloud::Common::AbstractModel
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

      # CreateClusterRouteTable请求参数结构体
      class CreateClusterRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称
        # @type RouteTableName: String
        # @param RouteTableCidrBlock: 路由表CIDR
        # @type RouteTableCidrBlock: String
        # @param VpcId: 路由表绑定的VPC
        # @type VpcId: String
        # @param IgnoreClusterCidrConflict: 是否忽略CIDR冲突
        # @type IgnoreClusterCidrConflict: Integer

        attr_accessor :RouteTableName, :RouteTableCidrBlock, :VpcId, :IgnoreClusterCidrConflict
        
        def initialize(routetablename=nil, routetablecidrblock=nil, vpcid=nil, ignoreclustercidrconflict=nil)
          @RouteTableName = routetablename
          @RouteTableCidrBlock = routetablecidrblock
          @VpcId = vpcid
          @IgnoreClusterCidrConflict = ignoreclustercidrconflict
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
          @RouteTableCidrBlock = params['RouteTableCidrBlock']
          @VpcId = params['VpcId']
          @IgnoreClusterCidrConflict = params['IgnoreClusterCidrConflict']
        end
      end

      # CreateClusterRouteTable返回参数结构体
      class CreateClusterRouteTableResponse < TencentCloud::Common::AbstractModel
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
        # @param MountTarget: 挂载目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountTarget: String

        attr_accessor :DiskType, :FileSystem, :DiskSize, :AutoFormatAndMount, :MountTarget
        
        def initialize(disktype=nil, filesystem=nil, disksize=nil, autoformatandmount=nil, mounttarget=nil)
          @DiskType = disktype
          @FileSystem = filesystem
          @DiskSize = disksize
          @AutoFormatAndMount = autoformatandmount
          @MountTarget = mounttarget
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @FileSystem = params['FileSystem']
          @DiskSize = params['DiskSize']
          @AutoFormatAndMount = params['AutoFormatAndMount']
          @MountTarget = params['MountTarget']
        end
      end

      # DeleteClusterAsGroups请求参数结构体
      class DeleteClusterAsGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID，通过[DescribeClusters](https://cloud.tencent.com/document/api/457/31862)接口获取。
        # @type ClusterId: String
        # @param AutoScalingGroupIds: 集群伸缩组ID的列表
        # @type AutoScalingGroupIds: Array
        # @param KeepInstance: 是否保留伸缩组中的节点(默认值： false(不保留))
        # @type KeepInstance: Boolean

        attr_accessor :ClusterId, :AutoScalingGroupIds, :KeepInstance
        
        def initialize(clusterid=nil, autoscalinggroupids=nil, keepinstance=nil)
          @ClusterId = clusterid
          @AutoScalingGroupIds = autoscalinggroupids
          @KeepInstance = keepinstance
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AutoScalingGroupIds = params['AutoScalingGroupIds']
          @KeepInstance = params['KeepInstance']
        end
      end

      # DeleteClusterAsGroups返回参数结构体
      class DeleteClusterAsGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClusterEndpoint请求参数结构体
      class DeleteClusterEndpointRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param IsExtranet: 是否为外网访问（TRUE 外网访问 FALSE 内网访问，默认值： FALSE）
        # @type IsExtranet: Boolean

        attr_accessor :ClusterId, :IsExtranet
        
        def initialize(clusterid=nil, isextranet=nil)
          @ClusterId = clusterid
          @IsExtranet = isextranet
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @IsExtranet = params['IsExtranet']
        end
      end

      # DeleteClusterEndpoint返回参数结构体
      class DeleteClusterEndpointResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClusterEndpointVip请求参数结构体
      class DeleteClusterEndpointVipRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteClusterEndpointVip返回参数结构体
      class DeleteClusterEndpointVipResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClusterInstances请求参数结构体
      class DeleteClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 主机InstanceId列表
        # @type InstanceIds: Array
        # @param InstanceDeleteMode: 集群实例删除时的策略：terminate（销毁实例，仅支持按量计费云主机实例） retain （仅移除，保留实例）
        # @type InstanceDeleteMode: String
        # @param ForceDelete: 是否强制删除(当节点在初始化时，可以指定参数为TRUE)
        # @type ForceDelete: Boolean

        attr_accessor :ClusterId, :InstanceIds, :InstanceDeleteMode, :ForceDelete
        
        def initialize(clusterid=nil, instanceids=nil, instancedeletemode=nil, forcedelete=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @InstanceDeleteMode = instancedeletemode
          @ForceDelete = forcedelete
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @InstanceDeleteMode = params['InstanceDeleteMode']
          @ForceDelete = params['ForceDelete']
        end
      end

      # DeleteClusterInstances返回参数结构体
      class DeleteClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param SuccInstanceIds: 删除成功的实例ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccInstanceIds: Array
        # @param FailedInstanceIds: 删除失败的实例ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedInstanceIds: Array
        # @param NotFoundInstanceIds: 未匹配到的实例ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotFoundInstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccInstanceIds, :FailedInstanceIds, :NotFoundInstanceIds, :RequestId
        
        def initialize(succinstanceids=nil, failedinstanceids=nil, notfoundinstanceids=nil, requestid=nil)
          @SuccInstanceIds = succinstanceids
          @FailedInstanceIds = failedinstanceids
          @NotFoundInstanceIds = notfoundinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccInstanceIds = params['SuccInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @NotFoundInstanceIds = params['NotFoundInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceDeleteMode: 集群实例删除时的策略：terminate（销毁实例，仅支持按量计费云主机实例） retain （仅移除，保留实例）
        # @type InstanceDeleteMode: String
        # @param ResourceDeleteOptions: 集群删除时资源的删除策略，目前支持CBS（默认保留CBS）
        # @type ResourceDeleteOptions: Array

        attr_accessor :ClusterId, :InstanceDeleteMode, :ResourceDeleteOptions
        
        def initialize(clusterid=nil, instancedeletemode=nil, resourcedeleteoptions=nil)
          @ClusterId = clusterid
          @InstanceDeleteMode = instancedeletemode
          @ResourceDeleteOptions = resourcedeleteoptions
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceDeleteMode = params['InstanceDeleteMode']
          @ResourceDeleteOptions = params['ResourceDeleteOptions']
        end
      end

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClusterRoute请求参数结构体
      class DeleteClusterRouteRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param GatewayIp: 下一跳地址。
        # @type GatewayIp: String
        # @param DestinationCidrBlock: 目的端CIDR。
        # @type DestinationCidrBlock: String

        attr_accessor :RouteTableName, :GatewayIp, :DestinationCidrBlock
        
        def initialize(routetablename=nil, gatewayip=nil, destinationcidrblock=nil)
          @RouteTableName = routetablename
          @GatewayIp = gatewayip
          @DestinationCidrBlock = destinationcidrblock
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
          @GatewayIp = params['GatewayIp']
          @DestinationCidrBlock = params['DestinationCidrBlock']
        end
      end

      # DeleteClusterRoute返回参数结构体
      class DeleteClusterRouteResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClusterRouteTable请求参数结构体
      class DeleteClusterRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称
        # @type RouteTableName: String

        attr_accessor :RouteTableName
        
        def initialize(routetablename=nil)
          @RouteTableName = routetablename
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
        end
      end

      # DeleteClusterRouteTable返回参数结构体
      class DeleteClusterRouteTableResponse < TencentCloud::Common::AbstractModel
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

      # DescribeClusterAsGroupOption请求参数结构体
      class DescribeClusterAsGroupOptionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterAsGroupOption返回参数结构体
      class DescribeClusterAsGroupOptionResponse < TencentCloud::Common::AbstractModel
        # @param ClusterAsGroupOption: 集群弹性伸缩属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterAsGroupOption: :class:`Tencentcloud::Tke.v20180525.models.ClusterAsGroupOption`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterAsGroupOption, :RequestId
        
        def initialize(clusterasgroupoption=nil, requestid=nil)
          @ClusterAsGroupOption = clusterasgroupoption
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterAsGroupOption'].nil?
            @ClusterAsGroupOption = ClusterAsGroupOption.new.deserialize(params[ClusterAsGroupOption])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterAsGroups请求参数结构体
      class DescribeClusterAsGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AutoScalingGroupIds: 伸缩组ID列表，如果为空，表示拉取集群关联的所有伸缩组。
        # @type AutoScalingGroupIds: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ClusterId, :AutoScalingGroupIds, :Offset, :Limit
        
        def initialize(clusterid=nil, autoscalinggroupids=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @AutoScalingGroupIds = autoscalinggroupids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AutoScalingGroupIds = params['AutoScalingGroupIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusterAsGroups返回参数结构体
      class DescribeClusterAsGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群关联的伸缩组总数
        # @type TotalCount: Integer
        # @param ClusterAsGroupSet: 集群关联的伸缩组列表
        # @type ClusterAsGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterAsGroupSet, :RequestId
        
        def initialize(totalcount=nil, clusterasgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterAsGroupSet = clusterasgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ClusterAsGroupSet = params['ClusterAsGroupSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterEndpointStatus请求参数结构体
      class DescribeClusterEndpointStatusRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param IsExtranet: 是否为外网访问（TRUE 外网访问 FALSE 内网访问，默认值： FALSE）
        # @type IsExtranet: Boolean

        attr_accessor :ClusterId, :IsExtranet
        
        def initialize(clusterid=nil, isextranet=nil)
          @ClusterId = clusterid
          @IsExtranet = isextranet
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @IsExtranet = params['IsExtranet']
        end
      end

      # DescribeClusterEndpointStatus返回参数结构体
      class DescribeClusterEndpointStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 查询集群访问端口状态（Created 开启成功，Creating 开启中中，NotFound 未开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeClusterEndpointVipStatus请求参数结构体
      class DescribeClusterEndpointVipStatusRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterEndpointVipStatus返回参数结构体
      class DescribeClusterEndpointVipStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 端口操作状态 (Creating 创建中  CreateFailed 创建失败 Created 创建完成 Deleting 删除中 DeletedFailed 删除失败 Deleted 已删除 NotFound 未发现操作 )
        # @type Status: String
        # @param ErrorMsg: 操作失败的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorMsg, :RequestId
        
        def initialize(status=nil, errormsg=nil, requestid=nil)
          @Status = status
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorMsg = params['ErrorMsg']
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
        # @param InstanceIds: 需要获取的节点实例Id列表。如果为空，表示拉取集群下所有节点实例。
        # @type InstanceIds: Array
        # @param InstanceRole: 节点角色, MASTER, WORKER, ETCD, MASTER_ETCD,ALL, 默认为WORKER。默认为WORKER类型。
        # @type InstanceRole: String

        attr_accessor :ClusterId, :Offset, :Limit, :InstanceIds, :InstanceRole
        
        def initialize(clusterid=nil, offset=nil, limit=nil, instanceids=nil, instancerole=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @InstanceIds = instanceids
          @InstanceRole = instancerole
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIds = params['InstanceIds']
          @InstanceRole = params['InstanceRole']
        end
      end

      # DescribeClusterInstances返回参数结构体
      class DescribeClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群中实例总数
        # @type TotalCount: Integer
        # @param InstanceSet: 集群中实例列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId
        
        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceSet = params['InstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterRouteTables请求参数结构体
      class DescribeClusterRouteTablesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeClusterRouteTables返回参数结构体
      class DescribeClusterRouteTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RouteTableSet: 集群路由表对象。
        # @type RouteTableSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteTableSet, :RequestId
        
        def initialize(totalcount=nil, routetableset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteTableSet = routetableset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RouteTableSet = params['RouteTableSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterRoutes请求参数结构体
      class DescribeClusterRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String

        attr_accessor :RouteTableName
        
        def initialize(routetablename=nil)
          @RouteTableName = routetablename
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
        end
      end

      # DescribeClusterRoutes返回参数结构体
      class DescribeClusterRoutesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RouteSet: 集群路由对象。
        # @type RouteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteSet, :RequestId
        
        def initialize(totalcount=nil, routeset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteSet = routeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RouteSet = params['RouteSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterSecurity请求参数结构体
      class DescribeClusterSecurityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID，请填写 查询集群列表 接口中返回的 clusterId 字段
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterSecurity返回参数结构体
      class DescribeClusterSecurityResponse < TencentCloud::Common::AbstractModel
        # @param UserName: 集群的账号名称
        # @type UserName: String
        # @param Password: 集群的访问密码
        # @type Password: String
        # @param CertificationAuthority: 集群访问CA证书
        # @type CertificationAuthority: String
        # @param ClusterExternalEndpoint: 集群访问的地址
        # @type ClusterExternalEndpoint: String
        # @param Domain: 集群访问的域名
        # @type Domain: String
        # @param PgwEndpoint: 集群Endpoint地址
        # @type PgwEndpoint: String
        # @param SecurityPolicy: 集群访问策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityPolicy: Array
        # @param Kubeconfig: 集群Kubeconfig文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kubeconfig: String
        # @param JnsGwEndpoint: 集群JnsGw的访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JnsGwEndpoint: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserName, :Password, :CertificationAuthority, :ClusterExternalEndpoint, :Domain, :PgwEndpoint, :SecurityPolicy, :Kubeconfig, :JnsGwEndpoint, :RequestId
        
        def initialize(username=nil, password=nil, certificationauthority=nil, clusterexternalendpoint=nil, domain=nil, pgwendpoint=nil, securitypolicy=nil, kubeconfig=nil, jnsgwendpoint=nil, requestid=nil)
          @UserName = username
          @Password = password
          @CertificationAuthority = certificationauthority
          @ClusterExternalEndpoint = clusterexternalendpoint
          @Domain = domain
          @PgwEndpoint = pgwendpoint
          @SecurityPolicy = securitypolicy
          @Kubeconfig = kubeconfig
          @JnsGwEndpoint = jnsgwendpoint
          @RequestId = requestid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
          @CertificationAuthority = params['CertificationAuthority']
          @ClusterExternalEndpoint = params['ClusterExternalEndpoint']
          @Domain = params['Domain']
          @PgwEndpoint = params['PgwEndpoint']
          @SecurityPolicy = params['SecurityPolicy']
          @Kubeconfig = params['Kubeconfig']
          @JnsGwEndpoint = params['JnsGwEndpoint']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表(为空时，
        # 表示获取账号下所有集群)
        # @type ClusterIds: Array
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer
        # @param Filters: 过滤条件,当前只支持按照单个条件ClusterName进行过滤
        # @type Filters: Array

        attr_accessor :ClusterIds, :Offset, :Limit, :Filters
        
        def initialize(clusterids=nil, offset=nil, limit=nil, filters=nil)
          @ClusterIds = clusterids
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filters = params['Filters']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群总个数
        # @type TotalCount: Integer
        # @param Clusters: 集群信息列表
        # @type Clusters: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Clusters, :RequestId
        
        def initialize(totalcount=nil, clusters=nil, requestid=nil)
          @TotalCount = totalcount
          @Clusters = clusters
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Clusters = params['Clusters']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExistedInstances请求参数结构体
      class DescribeExistedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID，请填写查询集群列表 接口中返回的 ClusterId 字段（仅通过ClusterId获取需要过滤条件中的VPCID。节点状态比较时会使用该地域下所有集群中的节点进行比较。参数不支持同时指定InstanceIds和ClusterId。
        # @type ClusterId: String
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如：ins-xxxxxxxx。（此参数的具体格式可参考API简介的id.N一节）。每次请求的实例的上限为100。参数不支持同时指定InstanceIds和Filters。
        # @type InstanceIds: Array
        # @param Filters: 过滤条件,字段和详见[CVM查询实例](https://cloud.tencent.com/document/api/213/15728)如果设置了ClusterId，会附加集群的VPCID作为查询字段，在此情况下如果在Filter中指定了"vpc-id"作为过滤字段，指定的VPCID必须与集群的VPCID相同。
        # @type Filters: Array
        # @param VagueIpAddress: 实例IP进行过滤(同时支持内网IP和外网IP)
        # @type VagueIpAddress: String
        # @param VagueInstanceName: 实例名称进行过滤
        # @type VagueInstanceName: String
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ClusterId, :InstanceIds, :Filters, :VagueIpAddress, :VagueInstanceName, :Offset, :Limit
        
        def initialize(clusterid=nil, instanceids=nil, filters=nil, vagueipaddress=nil, vagueinstancename=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @Filters = filters
          @VagueIpAddress = vagueipaddress
          @VagueInstanceName = vagueinstancename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @Filters = params['Filters']
          @VagueIpAddress = params['VagueIpAddress']
          @VagueInstanceName = params['VagueInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeExistedInstances返回参数结构体
      class DescribeExistedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ExistedInstanceSet: 已经存在的实例信息数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExistedInstanceSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExistedInstanceSet, :TotalCount, :RequestId
        
        def initialize(existedinstanceset=nil, totalcount=nil, requestid=nil)
          @ExistedInstanceSet = existedinstanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ExistedInstanceSet = params['ExistedInstanceSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 镜像数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ImageInstanceSet: 镜像信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageInstanceSet, :RequestId
        
        def initialize(totalcount=nil, imageinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageInstanceSet = imageinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ImageInstanceSet = params['ImageInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 地域的数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RegionInstanceSet: 地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionInstanceSet, :RequestId
        
        def initialize(totalcount=nil, regioninstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionInstanceSet = regioninstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RegionInstanceSet = params['RegionInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRouteTableConflicts请求参数结构体
      class DescribeRouteTableConflictsRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableCidrBlock: 路由表CIDR
        # @type RouteTableCidrBlock: String
        # @param VpcId: 路由表绑定的VPC
        # @type VpcId: String

        attr_accessor :RouteTableCidrBlock, :VpcId
        
        def initialize(routetablecidrblock=nil, vpcid=nil)
          @RouteTableCidrBlock = routetablecidrblock
          @VpcId = vpcid
        end

        def deserialize(params)
          @RouteTableCidrBlock = params['RouteTableCidrBlock']
          @VpcId = params['VpcId']
        end
      end

      # DescribeRouteTableConflicts返回参数结构体
      class DescribeRouteTableConflictsResponse < TencentCloud::Common::AbstractModel
        # @param HasConflict: 路由表是否冲突。
        # @type HasConflict: Boolean
        # @param RouteTableConflictSet: 路由表冲突列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableConflictSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HasConflict, :RouteTableConflictSet, :RequestId
        
        def initialize(hasconflict=nil, routetableconflictset=nil, requestid=nil)
          @HasConflict = hasconflict
          @RouteTableConflictSet = routetableconflictset
          @RequestId = requestid
        end

        def deserialize(params)
          @HasConflict = params['HasConflict']
          @RouteTableConflictSet = params['RouteTableConflictSet']
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例的增强服务启用情况与其设置，如云安全，云监控等实例 Agent
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 开启云安全服务。若不指定该参数，则默认开启云安全服务。
        # @type SecurityService: :class:`Tencentcloud::Tke.v20180525.models.RunSecurityServiceEnabled`
        # @param MonitorService: 开启云监控服务。若不指定该参数，则默认开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Tke.v20180525.models.RunMonitorServiceEnabled`

        attr_accessor :SecurityService, :MonitorService
        
        def initialize(securityservice=nil, monitorservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = RunSecurityServiceEnabled.new.deserialize(params[SecurityService])
          end
          unless params['MonitorService'].nil?
            @MonitorService = RunMonitorServiceEnabled.new.deserialize(params[MonitorService])
          end
        end
      end

      # 已经存在的实例信息
      class ExistedInstance < TencentCloud::Common::AbstractModel
        # @param Usable: 实例是否支持加入集群(TRUE 可以加入 FALSE 不能加入)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Usable: Boolean
        # @param UnusableReason: 实例不支持加入的原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnusableReason: String
        # @param AlreadyInCluster: 实例已经所在的集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlreadyInCluster: String
        # @param InstanceId: 实例ID形如：ins-xxxxxxxx。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param PrivateIpAddresses: 实例主网卡的内网IP列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddresses: Array
        # @param PublicIpAddresses: 实例主网卡的公网IP列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param CreatedTime: 创建时间。按照ISO8601标准表示，并且使用UTC时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param CPU: 实例的CPU核数，单位：核。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPU: Integer
        # @param Memory: 实例内存容量，单位：GB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param OsName: 操作系统名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsName: String
        # @param InstanceType: 实例机型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param AutoscalingGroupId: 伸缩组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalingGroupId: String
        # @param InstanceChargeType: 实例计费模式。取值范围： PREPAID：表示预付费，即包年包月 POSTPAID_BY_HOUR：表示后付费，即按量计费 CDHPAID：CDH付费，即只对CDH计费，不对CDH上的实例计费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargeType: String

        attr_accessor :Usable, :UnusableReason, :AlreadyInCluster, :InstanceId, :InstanceName, :PrivateIpAddresses, :PublicIpAddresses, :CreatedTime, :CPU, :Memory, :OsName, :InstanceType, :AutoscalingGroupId, :InstanceChargeType
        
        def initialize(usable=nil, unusablereason=nil, alreadyincluster=nil, instanceid=nil, instancename=nil, privateipaddresses=nil, publicipaddresses=nil, createdtime=nil, cpu=nil, memory=nil, osname=nil, instancetype=nil, autoscalinggroupid=nil, instancechargetype=nil)
          @Usable = usable
          @UnusableReason = unusablereason
          @AlreadyInCluster = alreadyincluster
          @InstanceId = instanceid
          @InstanceName = instancename
          @PrivateIpAddresses = privateipaddresses
          @PublicIpAddresses = publicipaddresses
          @CreatedTime = createdtime
          @CPU = cpu
          @Memory = memory
          @OsName = osname
          @InstanceType = instancetype
          @AutoscalingGroupId = autoscalinggroupid
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @Usable = params['Usable']
          @UnusableReason = params['UnusableReason']
          @AlreadyInCluster = params['AlreadyInCluster']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @PublicIpAddresses = params['PublicIpAddresses']
          @CreatedTime = params['CreatedTime']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @OsName = params['OsName']
          @InstanceType = params['InstanceType']
          @AutoscalingGroupId = params['AutoscalingGroupId']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # 不同角色的已存在节点配置参数
      class ExistedInstancesForNode < TencentCloud::Common::AbstractModel
        # @param NodeRole: 节点角色，取值:MASTER_ETCD, WORKER。MASTER_ETCD只有在创建 INDEPENDENT_CLUSTER 独立集群时需要指定。MASTER_ETCD节点数量为3～7，建议为奇数。MASTER_ETCD最小配置为4C8G。
        # @type NodeRole: String
        # @param ExistedInstancesPara: 已存在实例的重装参数
        # @type ExistedInstancesPara: :class:`Tencentcloud::Tke.v20180525.models.ExistedInstancesPara`
        # @param InstanceAdvancedSettingsOverride: 节点高级设置，会覆盖集群级别设置的InstanceAdvancedSettings（当前只对节点自定义参数ExtraArgs生效）
        # @type InstanceAdvancedSettingsOverride: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`

        attr_accessor :NodeRole, :ExistedInstancesPara, :InstanceAdvancedSettingsOverride
        
        def initialize(noderole=nil, existedinstancespara=nil, instanceadvancedsettingsoverride=nil)
          @NodeRole = noderole
          @ExistedInstancesPara = existedinstancespara
          @InstanceAdvancedSettingsOverride = instanceadvancedsettingsoverride
        end

        def deserialize(params)
          @NodeRole = params['NodeRole']
          unless params['ExistedInstancesPara'].nil?
            @ExistedInstancesPara = ExistedInstancesPara.new.deserialize(params[ExistedInstancesPara])
          end
          unless params['InstanceAdvancedSettingsOverride'].nil?
            @InstanceAdvancedSettingsOverride = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettingsOverride])
          end
        end
      end

      # 已存在实例的重装参数
      class ExistedInstancesPara < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 集群ID
        # @type InstanceIds: Array
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Tke.v20180525.models.EnhancedService`
        # @param LoginSettings: 节点登录信息（目前仅支持使用Password或者单个KeyIds）
        # @type LoginSettings: :class:`Tencentcloud::Tke.v20180525.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param HostName: 重装系统时，可以指定修改实例的HostName(集群为HostName模式时，此参数必传，规则名称除不支持大写字符外与[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口HostName一致)
        # @type HostName: String

        attr_accessor :InstanceIds, :InstanceAdvancedSettings, :EnhancedService, :LoginSettings, :SecurityGroupIds, :HostName
        
        def initialize(instanceids=nil, instanceadvancedsettings=nil, enhancedservice=nil, loginsettings=nil, securitygroupids=nil, hostname=nil)
          @InstanceIds = instanceids
          @InstanceAdvancedSettings = instanceadvancedsettings
          @EnhancedService = enhancedservice
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @HostName = hostname
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettings])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new.deserialize(params[EnhancedService])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new.deserialize(params[LoginSettings])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @HostName = params['HostName']
        end
      end

      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      # > 以[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口的`Filter`为例。若我们需要查询可用区（`zone`）为广州一区 ***并且*** 实例计费模式（`instance-charge-type`）为包年包月 ***或者*** 按量计费的实例时，可如下实现：
      # ```
      # Filters.0.Name=zone
      # &Filters.0.Values.0=ap-guangzhou-1
      # &Filters.1.Name=instance-charge-type
      # &Filters.1.Values.0=PREPAID
      # &Filters.1.Values.1=POSTPAID_BY_HOUR
      # ```
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # 镜像信息
      class ImageInstance < TencentCloud::Common::AbstractModel
        # @param Alias: 镜像别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param OsName: 操作系统名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsName: String
        # @param ImageId: 镜像ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param OsCustomizeType: 容器的镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsCustomizeType: String

        attr_accessor :Alias, :OsName, :ImageId, :OsCustomizeType
        
        def initialize(alias=nil, osname=nil, imageid=nil, oscustomizetype=nil)
          @Alias = alias
          @OsName = osname
          @ImageId = imageid
          @OsCustomizeType = oscustomizetype
        end

        def deserialize(params)
          @Alias = params['Alias']
          @OsName = params['OsName']
          @ImageId = params['ImageId']
          @OsCustomizeType = params['OsCustomizeType']
        end
      end

      # 集群的实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceRole: 节点角色, MASTER, WORKER, ETCD, MASTER_ETCD,ALL, 默认为WORKER
        # @type InstanceRole: String
        # @param FailedReason: 实例异常(或者处于初始化中)的原因
        # @type FailedReason: String
        # @param InstanceState: 实例的状态（running 运行中，initializing 初始化中，failed 异常）
        # @type InstanceState: String
        # @param DrainStatus: 实例是否封锁状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrainStatus: String
        # @param InstanceAdvancedSettings: 节点配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param CreatedTime: 添加时间
        # @type CreatedTime: String
        # @param LanIP: 节点内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanIP: String
        # @param NodePoolId: 资源池ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePoolId: String
        # @param AutoscalingGroupId: 自动伸缩组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalingGroupId: String

        attr_accessor :InstanceId, :InstanceRole, :FailedReason, :InstanceState, :DrainStatus, :InstanceAdvancedSettings, :CreatedTime, :LanIP, :NodePoolId, :AutoscalingGroupId
        
        def initialize(instanceid=nil, instancerole=nil, failedreason=nil, instancestate=nil, drainstatus=nil, instanceadvancedsettings=nil, createdtime=nil, lanip=nil, nodepoolid=nil, autoscalinggroupid=nil)
          @InstanceId = instanceid
          @InstanceRole = instancerole
          @FailedReason = failedreason
          @InstanceState = instancestate
          @DrainStatus = drainstatus
          @InstanceAdvancedSettings = instanceadvancedsettings
          @CreatedTime = createdtime
          @LanIP = lanip
          @NodePoolId = nodepoolid
          @AutoscalingGroupId = autoscalinggroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceRole = params['InstanceRole']
          @FailedReason = params['FailedReason']
          @InstanceState = params['InstanceState']
          @DrainStatus = params['DrainStatus']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new.deserialize(params[InstanceAdvancedSettings])
          end
          @CreatedTime = params['CreatedTime']
          @LanIP = params['LanIP']
          @NodePoolId = params['NodePoolId']
          @AutoscalingGroupId = params['AutoscalingGroupId']
        end
      end

      # 描述了k8s集群相关配置与信息。
      class InstanceAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param MountTarget: 数据盘挂载点, 默认不挂载数据盘. 已格式化的 ext3，ext4，xfs 文件系统的数据盘将直接挂载，其他文件系统或未格式化的数据盘将自动格式化为ext4 并挂载，请注意备份数据! 无数据盘或有多块数据盘的云主机此设置不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountTarget: String
        # @param DockerGraphPath: dockerd --graph 指定值, 默认为 /var/lib/docker
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerGraphPath: String
        # @param UserScript: base64 编码的用户脚本, 此脚本会在 k8s 组件运行后执行, 需要用户保证脚本的可重入及重试逻辑, 脚本及其生成的日志文件可在节点的 /data/ccs_userscript/ 路径查看, 如果要求节点需要在进行初始化完成后才可加入调度, 可配合 unschedulable 参数使用, 在 userScript 最后初始化完成后, 添加 kubectl uncordon nodename --kubeconfig=/root/.kube/config 命令使节点加入调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserScript: String
        # @param Unschedulable: 设置加入的节点是否参与调度，默认值为0，表示参与调度；非0表示不参与调度, 待节点初始化完成之后, 可执行kubectl uncordon nodename使node加入调度.
        # @type Unschedulable: Integer
        # @param Labels: 节点Label数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param DataDisks: 数据盘相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array
        # @param ExtraArgs: 节点相关的自定义参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.InstanceExtraArgs`

        attr_accessor :MountTarget, :DockerGraphPath, :UserScript, :Unschedulable, :Labels, :DataDisks, :ExtraArgs
        
        def initialize(mounttarget=nil, dockergraphpath=nil, userscript=nil, unschedulable=nil, labels=nil, datadisks=nil, extraargs=nil)
          @MountTarget = mounttarget
          @DockerGraphPath = dockergraphpath
          @UserScript = userscript
          @Unschedulable = unschedulable
          @Labels = labels
          @DataDisks = datadisks
          @ExtraArgs = extraargs
        end

        def deserialize(params)
          @MountTarget = params['MountTarget']
          @DockerGraphPath = params['DockerGraphPath']
          @UserScript = params['UserScript']
          @Unschedulable = params['Unschedulable']
          @Labels = params['Labels']
          @DataDisks = params['DataDisks']
          unless params['ExtraArgs'].nil?
            @ExtraArgs = InstanceExtraArgs.new.deserialize(params[ExtraArgs])
          end
        end
      end

      # CVM实例数据盘挂载配置
      class InstanceDataDiskMountSetting < TencentCloud::Common::AbstractModel
        # @param InstanceType: CVM实例类型
        # @type InstanceType: String
        # @param DataDisks: 数据盘挂载信息
        # @type DataDisks: Array
        # @param Zone: CVM实例所属可用区
        # @type Zone: String

        attr_accessor :InstanceType, :DataDisks, :Zone
        
        def initialize(instancetype=nil, datadisks=nil, zone=nil)
          @InstanceType = instancetype
          @DataDisks = datadisks
          @Zone = zone
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @DataDisks = params['DataDisks']
          @Zone = params['Zone']
        end
      end

      # 节点自定义参数
      class InstanceExtraArgs < TencentCloud::Common::AbstractModel
        # @param Kubelet: kubelet自定义参数
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

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：<br><li>Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) \` ~ ! @ # $ % ^ & *  - + = | { } [ ] : ; ' , . ? / ]中的特殊符号。<br><li>Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) \` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? /]中的特殊符号。<br><br>若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param KeyIds: 密钥ID列表。关联密钥后，就可以通过对应的私钥来访问实例；KeyId可通过接口[DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699)获取，密钥与密码不能同时指定，同时Windows操作系统不支持指定密钥。当前仅支持购买的时候指定一个密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyIds: Array
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为TRUE。取值范围：<br><li>TRUE：表示保持镜像的登录设置<br><li>FALSE：表示不保持镜像的登录设置<br><br>默认取值：FALSE。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepImageLogin: String

        attr_accessor :Password, :KeyIds, :KeepImageLogin
        
        def initialize(password=nil, keyids=nil, keepimagelogin=nil)
          @Password = password
          @KeyIds = keyids
          @KeepImageLogin = keepimagelogin
        end

        def deserialize(params)
          @Password = params['Password']
          @KeyIds = params['KeyIds']
          @KeepImageLogin = params['KeepImageLogin']
        end
      end

      # ModifyClusterAsGroupAttribute请求参数结构体
      class ModifyClusterAsGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterAsGroupAttribute: 集群关联的伸缩组属性
        # @type ClusterAsGroupAttribute: :class:`Tencentcloud::Tke.v20180525.models.ClusterAsGroupAttribute`

        attr_accessor :ClusterId, :ClusterAsGroupAttribute
        
        def initialize(clusterid=nil, clusterasgroupattribute=nil)
          @ClusterId = clusterid
          @ClusterAsGroupAttribute = clusterasgroupattribute
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ClusterAsGroupAttribute'].nil?
            @ClusterAsGroupAttribute = ClusterAsGroupAttribute.new.deserialize(params[ClusterAsGroupAttribute])
          end
        end
      end

      # ModifyClusterAsGroupAttribute返回参数结构体
      class ModifyClusterAsGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterAttribute请求参数结构体
      class ModifyClusterAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProjectId: 集群所属项目
        # @type ProjectId: Integer
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterDesc: 集群描述
        # @type ClusterDesc: String

        attr_accessor :ClusterId, :ProjectId, :ClusterName, :ClusterDesc
        
        def initialize(clusterid=nil, projectid=nil, clustername=nil, clusterdesc=nil)
          @ClusterId = clusterid
          @ProjectId = projectid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProjectId = params['ProjectId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
        end
      end

      # ModifyClusterAttribute返回参数结构体
      class ModifyClusterAttributeResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 集群所属项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterDesc: 集群描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDesc: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :ClusterName, :ClusterDesc, :RequestId
        
        def initialize(projectid=nil, clustername=nil, clusterdesc=nil, requestid=nil)
          @ProjectId = projectid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterEndpointSP请求参数结构体
      class ModifyClusterEndpointSPRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SecurityPolicies: 安全策略放通单个IP或CIDR(例如: "192.168.1.0/24",默认为拒绝所有)
        # @type SecurityPolicies: Array

        attr_accessor :ClusterId, :SecurityPolicies
        
        def initialize(clusterid=nil, securitypolicies=nil)
          @ClusterId = clusterid
          @SecurityPolicies = securitypolicies
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SecurityPolicies = params['SecurityPolicies']
        end
      end

      # ModifyClusterEndpointSP返回参数结构体
      class ModifyClusterEndpointSPResponse < TencentCloud::Common::AbstractModel
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

      # 地域属性信息
      class RegionInstance < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param Status: 地域状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param FeatureGates: 地域特性开关(按照JSON的形式返回所有属性)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureGates: String
        # @param Alias: 地域简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Remark: 地域白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :RegionName, :RegionId, :Status, :FeatureGates, :Alias, :Remark
        
        def initialize(regionname=nil, regionid=nil, status=nil, featuregates=nil, alias=nil, remark=nil)
          @RegionName = regionname
          @RegionId = regionid
          @Status = status
          @FeatureGates = featuregates
          @Alias = alias
          @Remark = remark
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @Status = params['Status']
          @FeatureGates = params['FeatureGates']
          @Alias = params['Alias']
          @Remark = params['Remark']
        end
      end

      # 资源删除选项
      class ResourceDeleteOption < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，例如CBS
        # @type ResourceType: String
        # @param DeleteMode: 集群删除时资源的删除模式：terminate（销毁），retain （保留）
        # @type DeleteMode: String

        attr_accessor :ResourceType, :DeleteMode
        
        def initialize(resourcetype=nil, deletemode=nil)
          @ResourceType = resourcetype
          @DeleteMode = deletemode
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @DeleteMode = params['DeleteMode']
        end
      end

      # 集群路由对象
      class RouteInfo < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param DestinationCidrBlock: 目的端CIDR。
        # @type DestinationCidrBlock: String
        # @param GatewayIp: 下一跳地址。
        # @type GatewayIp: String

        attr_accessor :RouteTableName, :DestinationCidrBlock, :GatewayIp
        
        def initialize(routetablename=nil, destinationcidrblock=nil, gatewayip=nil)
          @RouteTableName = routetablename
          @DestinationCidrBlock = destinationcidrblock
          @GatewayIp = gatewayip
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @GatewayIp = params['GatewayIp']
        end
      end

      # 路由表冲突对象
      class RouteTableConflict < TencentCloud::Common::AbstractModel
        # @param RouteTableType: 路由表类型。
        # @type RouteTableType: String
        # @param RouteTableCidrBlock: 路由表CIDR。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableCidrBlock: String
        # @param RouteTableName: 路由表名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableName: String
        # @param RouteTableId: 路由表ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableId: String

        attr_accessor :RouteTableType, :RouteTableCidrBlock, :RouteTableName, :RouteTableId
        
        def initialize(routetabletype=nil, routetablecidrblock=nil, routetablename=nil, routetableid=nil)
          @RouteTableType = routetabletype
          @RouteTableCidrBlock = routetablecidrblock
          @RouteTableName = routetablename
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @RouteTableType = params['RouteTableType']
          @RouteTableCidrBlock = params['RouteTableCidrBlock']
          @RouteTableName = params['RouteTableName']
          @RouteTableId = params['RouteTableId']
        end
      end

      # 集群路由表对象
      class RouteTableInfo < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param RouteTableCidrBlock: 路由表CIDR。
        # @type RouteTableCidrBlock: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String

        attr_accessor :RouteTableName, :RouteTableCidrBlock, :VpcId
        
        def initialize(routetablename=nil, routetablecidrblock=nil, vpcid=nil)
          @RouteTableName = routetablename
          @RouteTableCidrBlock = routetablecidrblock
          @VpcId = vpcid
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
          @RouteTableCidrBlock = params['RouteTableCidrBlock']
          @VpcId = params['VpcId']
        end
      end

      # 不同角色的节点配置参数
      class RunInstancesForNode < TencentCloud::Common::AbstractModel
        # @param NodeRole: 节点角色，取值:MASTER_ETCD, WORKER。MASTER_ETCD只有在创建 INDEPENDENT_CLUSTER 独立集群时需要指定。MASTER_ETCD节点数量为3～7，建议为奇数。MASTER_ETCD节点最小配置为4C8G。
        # @type NodeRole: String
        # @param RunInstancesPara: CVM创建透传参数，json化字符串格式，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口，传入公共参数外的其他参数即可，其中ImageId会替换为TKE集群OS对应的镜像。
        # @type RunInstancesPara: Array
        # @param InstanceAdvancedSettingsOverrides: 节点高级设置，该参数会覆盖集群级别设置的InstanceAdvancedSettings，和上边的RunInstancesPara按照顺序一一对应（当前只对节点自定义参数ExtraArgs生效）。
        # @type InstanceAdvancedSettingsOverrides: Array

        attr_accessor :NodeRole, :RunInstancesPara, :InstanceAdvancedSettingsOverrides
        
        def initialize(noderole=nil, runinstancespara=nil, instanceadvancedsettingsoverrides=nil)
          @NodeRole = noderole
          @RunInstancesPara = runinstancespara
          @InstanceAdvancedSettingsOverrides = instanceadvancedsettingsoverrides
        end

        def deserialize(params)
          @NodeRole = params['NodeRole']
          @RunInstancesPara = params['RunInstancesPara']
          @InstanceAdvancedSettingsOverrides = params['InstanceAdvancedSettingsOverrides']
        end
      end

      # 描述了 “云监控” 服务相关的信息
      class RunMonitorServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[云监控](/document/product/248)服务。取值范围：<br><li>TRUE：表示开启云监控服务<br><li>FALSE：表示不开启云监控服务<br><br>默认取值：TRUE。
        # @type Enabled: Boolean

        attr_accessor :Enabled
        
        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 描述了 “云安全” 服务相关的信息
      class RunSecurityServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[云安全](/document/product/296)服务。取值范围：<br><li>TRUE：表示开启云安全服务<br><li>FALSE：表示不开启云安全服务<br><br>默认取值：TRUE。
        # @type Enabled: Boolean

        attr_accessor :Enabled
        
        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
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
        # @param ResourceType: 标签绑定的资源类型，当前支持类型："cluster"
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
          @Tags = params['Tags']
        end
      end

    end
  end
end

