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
      # AcquireClusterAdminRole请求参数结构体
      class AcquireClusterAdminRoleRequest < TencentCloud::Common::AbstractModel
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

      # AcquireClusterAdminRole返回参数结构体
      class AcquireClusterAdminRoleResponse < TencentCloud::Common::AbstractModel
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

      # AddClusterCIDR请求参数结构体
      class AddClusterCIDRRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterCIDRs: 增加的ClusterCIDR
        # @type ClusterCIDRs: Array
        # @param IgnoreClusterCIDRConflict: 是否忽略ClusterCIDR与VPC路由表的冲突
        # @type IgnoreClusterCIDRConflict: Boolean

        attr_accessor :ClusterId, :ClusterCIDRs, :IgnoreClusterCIDRConflict
        
        def initialize(clusterid=nil, clustercidrs=nil, ignoreclustercidrconflict=nil)
          @ClusterId = clusterid
          @ClusterCIDRs = clustercidrs
          @IgnoreClusterCIDRConflict = ignoreclustercidrconflict
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterCIDRs = params['ClusterCIDRs']
          @IgnoreClusterCIDRConflict = params['IgnoreClusterCIDRConflict']
        end
      end

      # AddClusterCIDR返回参数结构体
      class AddClusterCIDRResponse < TencentCloud::Common::AbstractModel
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

      # AddExistedInstances请求参数结构体
      class AddExistedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例列表，不支持竞价实例
        # @type InstanceIds: Array
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息(默认值)
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Tke.v20180525.models.EnhancedService`
        # @param LoginSettings: 节点登录信息（目前仅支持使用Password或者单个KeyIds）
        # @type LoginSettings: :class:`Tencentcloud::Tke.v20180525.models.LoginSettings`
        # @param HostName: 重装系统时，可以指定修改实例的HostName(集群为HostName模式时，此参数必传，规则名称除不支持大写字符外与[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口HostName一致)
        # @type HostName: String
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。（目前仅支持设置单个sgId）
        # @type SecurityGroupIds: Array
        # @param NodePool: 节点池选项
        # @type NodePool: :class:`Tencentcloud::Tke.v20180525.models.NodePoolOption`
        # @param SkipValidateOptions: 校验规则相关选项，可配置跳过某些校验规则。目前支持GlobalRouteCIDRCheck（跳过GlobalRouter的相关校验），VpcCniCIDRCheck（跳过VpcCni相关校验）
        # @type SkipValidateOptions: Array
        # @param InstanceAdvancedSettingsOverrides: 参数InstanceAdvancedSettingsOverride数组用于定制化地配置各台instance，与InstanceIds顺序对应。当传入InstanceAdvancedSettingsOverrides数组时，将覆盖默认参数InstanceAdvancedSettings；当没有传入参数InstanceAdvancedSettingsOverrides时，InstanceAdvancedSettings参数对每台instance生效。

        # 参数InstanceAdvancedSettingsOverride数组的长度应与InstanceIds数组一致；当长度大于InstanceIds数组长度时将报错；当长度小于InstanceIds数组时，没有对应配置的instace将使用默认配置。
        # @type InstanceAdvancedSettingsOverrides: Array
        # @param ImageId: 节点镜像（节点选项时，该参数是必传参数）
        # @type ImageId: String

        attr_accessor :ClusterId, :InstanceIds, :InstanceAdvancedSettings, :EnhancedService, :LoginSettings, :HostName, :SecurityGroupIds, :NodePool, :SkipValidateOptions, :InstanceAdvancedSettingsOverrides, :ImageId
        
        def initialize(clusterid=nil, instanceids=nil, instanceadvancedsettings=nil, enhancedservice=nil, loginsettings=nil, hostname=nil, securitygroupids=nil, nodepool=nil, skipvalidateoptions=nil, instanceadvancedsettingsoverrides=nil, imageid=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @InstanceAdvancedSettings = instanceadvancedsettings
          @EnhancedService = enhancedservice
          @LoginSettings = loginsettings
          @HostName = hostname
          @SecurityGroupIds = securitygroupids
          @NodePool = nodepool
          @SkipValidateOptions = skipvalidateoptions
          @InstanceAdvancedSettingsOverrides = instanceadvancedsettingsoverrides
          @ImageId = imageid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @HostName = params['HostName']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['NodePool'].nil?
            @NodePool = NodePoolOption.new
            @NodePool.deserialize(params['NodePool'])
          end
          @SkipValidateOptions = params['SkipValidateOptions']
          unless params['InstanceAdvancedSettingsOverrides'].nil?
            @InstanceAdvancedSettingsOverrides = []
            params['InstanceAdvancedSettingsOverrides'].each do |i|
              instanceadvancedsettings_tmp = InstanceAdvancedSettings.new
              instanceadvancedsettings_tmp.deserialize(i)
              @InstanceAdvancedSettingsOverrides << instanceadvancedsettings_tmp
            end
          end
          @ImageId = params['ImageId']
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
        # @param FailedReasons: 失败的节点的失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedReasons: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedInstanceIds, :SuccInstanceIds, :TimeoutInstanceIds, :FailedReasons, :RequestId
        
        def initialize(failedinstanceids=nil, succinstanceids=nil, timeoutinstanceids=nil, failedreasons=nil, requestid=nil)
          @FailedInstanceIds = failedinstanceids
          @SuccInstanceIds = succinstanceids
          @TimeoutInstanceIds = timeoutinstanceids
          @FailedReasons = failedreasons
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedInstanceIds = params['FailedInstanceIds']
          @SuccInstanceIds = params['SuccInstanceIds']
          @TimeoutInstanceIds = params['TimeoutInstanceIds']
          @FailedReasons = params['FailedReasons']
          @RequestId = params['RequestId']
        end
      end

      # AddNodeToNodePool请求参数结构体
      class AddNodeToNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param InstanceIds: 节点id
        # @type InstanceIds: Array

        attr_accessor :ClusterId, :NodePoolId, :InstanceIds
        
        def initialize(clusterid=nil, nodepoolid=nil, instanceids=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AddNodeToNodePool返回参数结构体
      class AddNodeToNodePoolResponse < TencentCloud::Common::AbstractModel
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

      # AddVpcCniSubnets请求参数结构体
      class AddVpcCniSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SubnetIds: 为集群容器网络增加的子网列表
        # @type SubnetIds: Array
        # @param VpcId: 集群所属的VPC的ID
        # @type VpcId: String

        attr_accessor :ClusterId, :SubnetIds, :VpcId
        
        def initialize(clusterid=nil, subnetids=nil, vpcid=nil)
          @ClusterId = clusterid
          @SubnetIds = subnetids
          @VpcId = vpcid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SubnetIds = params['SubnetIds']
          @VpcId = params['VpcId']
        end
      end

      # AddVpcCniSubnets返回参数结构体
      class AddVpcCniSubnetsResponse < TencentCloud::Common::AbstractModel
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

      # app所支持的chart
      class AppChart < TencentCloud::Common::AbstractModel
        # @param Name: chart名称
        # @type Name: String
        # @param Label: chart的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param LatestVersion: chart的版本
        # @type LatestVersion: String

        attr_accessor :Name, :Label, :LatestVersion
        
        def initialize(name=nil, label=nil, latestversion=nil)
          @Name = name
          @Label = label
          @LatestVersion = latestversion
        end

        def deserialize(params)
          @Name = params['Name']
          @Label = params['Label']
          @LatestVersion = params['LatestVersion']
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

      # 自动变配集群等级
      class AutoUpgradeClusterLevel < TencentCloud::Common::AbstractModel
        # @param IsAutoUpgrade: 是否开启自动变配集群等级
        # @type IsAutoUpgrade: Boolean

        attr_accessor :IsAutoUpgrade
        
        def initialize(isautoupgrade=nil)
          @IsAutoUpgrade = isautoupgrade
        end

        def deserialize(params)
          @IsAutoUpgrade = params['IsAutoUpgrade']
        end
      end

      # 自动扩所容的节点
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

      # cuDNN的版本信息
      class CUDNN < TencentCloud::Common::AbstractModel
        # @param Version: cuDNN的版本
        # @type Version: String
        # @param Name: cuDNN的名字
        # @type Name: String
        # @param DocName: cuDNN的Doc名字
        # @type DocName: String
        # @param DevName: cuDNN的Dev名字
        # @type DevName: String

        attr_accessor :Version, :Name, :DocName, :DevName
        
        def initialize(version=nil, name=nil, docname=nil, devname=nil)
          @Version = version
          @Name = name
          @DocName = docname
          @DevName = devname
        end

        def deserialize(params)
          @Version = params['Version']
          @Name = params['Name']
          @DocName = params['DocName']
          @DevName = params['DevName']
        end
      end

      # cloudrun安全特性能力
      class Capabilities < TencentCloud::Common::AbstractModel
        # @param Add: 启用安全能力项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Add: Array
        # @param Drop: 禁用安全能力向列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Drop: Array

        attr_accessor :Add, :Drop
        
        def initialize(add=nil, drop=nil)
          @Add = add
          @Drop = drop
        end

        def deserialize(params)
          @Add = params['Add']
          @Drop = params['Drop']
        end
      end

      # EKS Instnace CBS volume
      class CbsVolume < TencentCloud::Common::AbstractModel
        # @param Name: cbs volume 数据卷名称
        # @type Name: String
        # @param CbsDiskId: 腾讯云cbs盘Id
        # @type CbsDiskId: String

        attr_accessor :Name, :CbsDiskId
        
        def initialize(name=nil, cbsdiskid=nil)
          @Name = name
          @CbsDiskId = cbsdiskid
        end

        def deserialize(params)
          @Name = params['Name']
          @CbsDiskId = params['CbsDiskId']
        end
      end

      # CheckEdgeClusterCIDR请求参数结构体
      class CheckEdgeClusterCIDRRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 集群的vpc-id
        # @type VpcId: String
        # @param PodCIDR: 集群的pod CIDR
        # @type PodCIDR: String
        # @param ServiceCIDR: 集群的service CIDR
        # @type ServiceCIDR: String

        attr_accessor :VpcId, :PodCIDR, :ServiceCIDR
        
        def initialize(vpcid=nil, podcidr=nil, servicecidr=nil)
          @VpcId = vpcid
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
        end
      end

      # CheckEdgeClusterCIDR返回参数结构体
      class CheckEdgeClusterCIDRResponse < TencentCloud::Common::AbstractModel
        # @param ConflictCode: 返回码，具体如下
        # -1 内部错误
        # 0 没冲突
        # 1 vpc 和 serviceCIDR 冲突
        # 2 vpc 和 podCIDR 冲突
        # 3 serviceCIDR  和 podCIDR 冲突
        # @type ConflictCode: Integer
        # @param ConflictMsg: CIDR冲突描述信息。
        # @type ConflictMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConflictCode, :ConflictMsg, :RequestId
        
        def initialize(conflictcode=nil, conflictmsg=nil, requestid=nil)
          @ConflictCode = conflictcode
          @ConflictMsg = conflictmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ConflictCode = params['ConflictCode']
          @ConflictMsg = params['ConflictMsg']
          @RequestId = params['RequestId']
        end
      end

      # CheckInstancesUpgradeAble请求参数结构体
      class CheckInstancesUpgradeAbleRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 节点列表，空为全部节点
        # @type InstanceIds: Array
        # @param UpgradeType: 升级类型
        # @type UpgradeType: String
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Filter: 过滤
        # @type Filter: Array

        attr_accessor :ClusterId, :InstanceIds, :UpgradeType, :Offset, :Limit, :Filter
        
        def initialize(clusterid=nil, instanceids=nil, upgradetype=nil, offset=nil, limit=nil, filter=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @UpgradeType = upgradetype
          @Offset = offset
          @Limit = limit
          @Filter = filter
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @UpgradeType = params['UpgradeType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filter << filter_tmp
            end
          end
        end
      end

      # CheckInstancesUpgradeAble返回参数结构体
      class CheckInstancesUpgradeAbleResponse < TencentCloud::Common::AbstractModel
        # @param ClusterVersion: 集群master当前小版本
        # @type ClusterVersion: String
        # @param LatestVersion: 集群master对应的大版本目前最新小版本
        # @type LatestVersion: String
        # @param UpgradeAbleInstances: 可升级节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeAbleInstances: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterVersion, :LatestVersion, :UpgradeAbleInstances, :Total, :RequestId
        
        def initialize(clusterversion=nil, latestversion=nil, upgradeableinstances=nil, total=nil, requestid=nil)
          @ClusterVersion = clusterversion
          @LatestVersion = latestversion
          @UpgradeAbleInstances = upgradeableinstances
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterVersion = params['ClusterVersion']
          @LatestVersion = params['LatestVersion']
          unless params['UpgradeAbleInstances'].nil?
            @UpgradeAbleInstances = []
            params['UpgradeAbleInstances'].each do |i|
              upgradeableinstancesitem_tmp = UpgradeAbleInstancesItem.new
              upgradeableinstancesitem_tmp.deserialize(i)
              @UpgradeAbleInstances << upgradeableinstancesitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
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
        # @param ClusterStatus: 集群状态 (Running 运行中  Creating 创建中 Idling 闲置中  Abnormal 异常  )
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
        # @param EnableExternalNode: 集群是否开启第三方节点支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableExternalNode: Boolean
        # @param ClusterLevel: 集群等级，针对托管集群生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterLevel: String
        # @param AutoUpgradeClusterLevel: 自动变配集群等级，针对托管集群生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoUpgradeClusterLevel: Boolean
        # @param QGPUShareEnable: 是否开启QGPU共享
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QGPUShareEnable: Boolean
        # @param RuntimeVersion: 运行时版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeVersion: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDescription, :ClusterVersion, :ClusterOs, :ClusterType, :ClusterNetworkSettings, :ClusterNodeNum, :ProjectId, :TagSpecification, :ClusterStatus, :Property, :ClusterMaterNodeNum, :ImageId, :OsCustomizeType, :ContainerRuntime, :CreatedTime, :DeletionProtection, :EnableExternalNode, :ClusterLevel, :AutoUpgradeClusterLevel, :QGPUShareEnable, :RuntimeVersion
        
        def initialize(clusterid=nil, clustername=nil, clusterdescription=nil, clusterversion=nil, clusteros=nil, clustertype=nil, clusternetworksettings=nil, clusternodenum=nil, projectid=nil, tagspecification=nil, clusterstatus=nil, property=nil, clustermaternodenum=nil, imageid=nil, oscustomizetype=nil, containerruntime=nil, createdtime=nil, deletionprotection=nil, enableexternalnode=nil, clusterlevel=nil, autoupgradeclusterlevel=nil, qgpushareenable=nil, runtimeversion=nil)
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
          @EnableExternalNode = enableexternalnode
          @ClusterLevel = clusterlevel
          @AutoUpgradeClusterLevel = autoupgradeclusterlevel
          @QGPUShareEnable = qgpushareenable
          @RuntimeVersion = runtimeversion
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDescription = params['ClusterDescription']
          @ClusterVersion = params['ClusterVersion']
          @ClusterOs = params['ClusterOs']
          @ClusterType = params['ClusterType']
          unless params['ClusterNetworkSettings'].nil?
            @ClusterNetworkSettings = ClusterNetworkSettings.new
            @ClusterNetworkSettings.deserialize(params['ClusterNetworkSettings'])
          end
          @ClusterNodeNum = params['ClusterNodeNum']
          @ProjectId = params['ProjectId']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @ClusterStatus = params['ClusterStatus']
          @Property = params['Property']
          @ClusterMaterNodeNum = params['ClusterMaterNodeNum']
          @ImageId = params['ImageId']
          @OsCustomizeType = params['OsCustomizeType']
          @ContainerRuntime = params['ContainerRuntime']
          @CreatedTime = params['CreatedTime']
          @DeletionProtection = params['DeletionProtection']
          @EnableExternalNode = params['EnableExternalNode']
          @ClusterLevel = params['ClusterLevel']
          @AutoUpgradeClusterLevel = params['AutoUpgradeClusterLevel']
          @QGPUShareEnable = params['QGPUShareEnable']
          @RuntimeVersion = params['RuntimeVersion']
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
        # @param KubeProxyMode: 集群的网络代理模型，目前tke集群支持的网络代理模式有三种：iptables,ipvs,ipvs-bpf，此参数仅在使用ipvs-bpf模式时使用，三种网络模式的参数设置关系如下：
        # iptables模式：IPVS和KubeProxyMode都不设置
        # ipvs模式: 设置IPVS为true, KubeProxyMode不设置
        # ipvs-bpf模式: 设置KubeProxyMode为kube-proxy-bpf
        # 使用ipvs-bpf的网络模式需要满足以下条件：
        # 1. 集群版本必须为1.14及以上；
        # 2. 系统镜像必须是: Tencent Linux 2.4；
        # @type KubeProxyMode: String
        # @param AuditEnabled: 是否开启审计开关
        # @type AuditEnabled: Boolean
        # @param AuditLogsetId: 审计日志上传到的logset日志集
        # @type AuditLogsetId: String
        # @param AuditLogTopicId: 审计日志上传到的topic
        # @type AuditLogTopicId: String
        # @param VpcCniType: 区分共享网卡多IP模式和独立网卡模式，共享网卡多 IP 模式填写"tke-route-eni"，独立网卡模式填写"tke-direct-eni"，默认为共享网卡模式
        # @type VpcCniType: String
        # @param RuntimeVersion: 运行时版本
        # @type RuntimeVersion: String
        # @param EnableCustomizedPodCIDR: 是否开节点podCIDR大小的自定义模式
        # @type EnableCustomizedPodCIDR: Boolean
        # @param BasePodNumber: 自定义模式下的基础pod数量
        # @type BasePodNumber: Integer
        # @param CiliumMode: 启用 CiliumMode 的模式，空值表示不启用，“clusterIP” 表示启用 Cilium 支持 ClusterIP
        # @type CiliumMode: String
        # @param IsDualStack: 集群VPC-CNI模式下是否是双栈集群，默认false，表明非双栈集群。
        # @type IsDualStack: Boolean
        # @param QGPUShareEnable: 是否开启QGPU共享
        # @type QGPUShareEnable: Boolean

        attr_accessor :IPVS, :AsEnabled, :ContainerRuntime, :NodeNameType, :ExtraArgs, :NetworkType, :IsNonStaticIpMode, :DeletionProtection, :KubeProxyMode, :AuditEnabled, :AuditLogsetId, :AuditLogTopicId, :VpcCniType, :RuntimeVersion, :EnableCustomizedPodCIDR, :BasePodNumber, :CiliumMode, :IsDualStack, :QGPUShareEnable
        
        def initialize(ipvs=nil, asenabled=nil, containerruntime=nil, nodenametype=nil, extraargs=nil, networktype=nil, isnonstaticipmode=nil, deletionprotection=nil, kubeproxymode=nil, auditenabled=nil, auditlogsetid=nil, auditlogtopicid=nil, vpccnitype=nil, runtimeversion=nil, enablecustomizedpodcidr=nil, basepodnumber=nil, ciliummode=nil, isdualstack=nil, qgpushareenable=nil)
          @IPVS = ipvs
          @AsEnabled = asenabled
          @ContainerRuntime = containerruntime
          @NodeNameType = nodenametype
          @ExtraArgs = extraargs
          @NetworkType = networktype
          @IsNonStaticIpMode = isnonstaticipmode
          @DeletionProtection = deletionprotection
          @KubeProxyMode = kubeproxymode
          @AuditEnabled = auditenabled
          @AuditLogsetId = auditlogsetid
          @AuditLogTopicId = auditlogtopicid
          @VpcCniType = vpccnitype
          @RuntimeVersion = runtimeversion
          @EnableCustomizedPodCIDR = enablecustomizedpodcidr
          @BasePodNumber = basepodnumber
          @CiliumMode = ciliummode
          @IsDualStack = isdualstack
          @QGPUShareEnable = qgpushareenable
        end

        def deserialize(params)
          @IPVS = params['IPVS']
          @AsEnabled = params['AsEnabled']
          @ContainerRuntime = params['ContainerRuntime']
          @NodeNameType = params['NodeNameType']
          unless params['ExtraArgs'].nil?
            @ExtraArgs = ClusterExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
          @NetworkType = params['NetworkType']
          @IsNonStaticIpMode = params['IsNonStaticIpMode']
          @DeletionProtection = params['DeletionProtection']
          @KubeProxyMode = params['KubeProxyMode']
          @AuditEnabled = params['AuditEnabled']
          @AuditLogsetId = params['AuditLogsetId']
          @AuditLogTopicId = params['AuditLogTopicId']
          @VpcCniType = params['VpcCniType']
          @RuntimeVersion = params['RuntimeVersion']
          @EnableCustomizedPodCIDR = params['EnableCustomizedPodCIDR']
          @BasePodNumber = params['BasePodNumber']
          @CiliumMode = params['CiliumMode']
          @IsDualStack = params['IsDualStack']
          @QGPUShareEnable = params['QGPUShareEnable']
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
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
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
            @AutoScalingGroupRange = AutoScalingGroupRange.new
            @AutoScalingGroupRange.deserialize(params['AutoScalingGroupRange'])
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
        # @param ClusterOs: 集群操作系统，支持设置公共镜像(字段传相应镜像ID)和自定义镜像(字段传相应镜像Name)，详情参考：https://cloud.tencent.com/document/product/457/68289
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
        # @param NeedWorkSecurityGroup: 是否开启节点的默认安全组(默认: 否，Alpha特性)
        # @type NeedWorkSecurityGroup: Boolean
        # @param SubnetId: 当选择Cilium Overlay网络插件时，TKE会从该子网获取2个IP用来创建内网负载均衡
        # @type SubnetId: String
        # @param ClusterLevel: 集群等级，针对托管集群生效
        # @type ClusterLevel: String
        # @param AutoUpgradeClusterLevel: 自动变配集群等级，针对托管集群生效
        # @type AutoUpgradeClusterLevel: :class:`Tencentcloud::Tke.v20180525.models.AutoUpgradeClusterLevel`

        attr_accessor :ClusterOs, :ClusterVersion, :ClusterName, :ClusterDescription, :VpcId, :ProjectId, :TagSpecification, :OsCustomizeType, :NeedWorkSecurityGroup, :SubnetId, :ClusterLevel, :AutoUpgradeClusterLevel
        
        def initialize(clusteros=nil, clusterversion=nil, clustername=nil, clusterdescription=nil, vpcid=nil, projectid=nil, tagspecification=nil, oscustomizetype=nil, needworksecuritygroup=nil, subnetid=nil, clusterlevel=nil, autoupgradeclusterlevel=nil)
          @ClusterOs = clusteros
          @ClusterVersion = clusterversion
          @ClusterName = clustername
          @ClusterDescription = clusterdescription
          @VpcId = vpcid
          @ProjectId = projectid
          @TagSpecification = tagspecification
          @OsCustomizeType = oscustomizetype
          @NeedWorkSecurityGroup = needworksecuritygroup
          @SubnetId = subnetid
          @ClusterLevel = clusterlevel
          @AutoUpgradeClusterLevel = autoupgradeclusterlevel
        end

        def deserialize(params)
          @ClusterOs = params['ClusterOs']
          @ClusterVersion = params['ClusterVersion']
          @ClusterName = params['ClusterName']
          @ClusterDescription = params['ClusterDescription']
          @VpcId = params['VpcId']
          @ProjectId = params['ProjectId']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @OsCustomizeType = params['OsCustomizeType']
          @NeedWorkSecurityGroup = params['NeedWorkSecurityGroup']
          @SubnetId = params['SubnetId']
          @ClusterLevel = params['ClusterLevel']
          unless params['AutoUpgradeClusterLevel'].nil?
            @AutoUpgradeClusterLevel = AutoUpgradeClusterLevel.new
            @AutoUpgradeClusterLevel.deserialize(params['AutoUpgradeClusterLevel'])
          end
        end
      end

      # 集群容器网络相关参数
      class ClusterCIDRSettings < TencentCloud::Common::AbstractModel
        # @param ClusterCIDR: 用于分配集群容器和服务 IP 的 CIDR，不得与 VPC CIDR 冲突，也不得与同 VPC 内其他集群 CIDR 冲突。且网段范围必须在内网网段内，例如:10.1.0.0/14, 192.168.0.1/18,172.16.0.0/16。
        # @type ClusterCIDR: String
        # @param IgnoreClusterCIDRConflict: 是否忽略 ClusterCIDR 冲突错误, 默认不忽略
        # @type IgnoreClusterCIDRConflict: Boolean
        # @param MaxNodePodNum: 集群中每个Node上最大的Pod数量。取值范围16～256。不为2的幂值时会向上取最接近的2的幂值。
        # @type MaxNodePodNum: Integer
        # @param MaxClusterServiceNum: 集群最大的service数量。取值范围32～32768，不为2的幂值时会向上取最接近的2的幂值。默认值256
        # @type MaxClusterServiceNum: Integer
        # @param ServiceCIDR: 用于分配集群服务 IP 的 CIDR，不得与 VPC CIDR 冲突，也不得与同 VPC 内其他集群 CIDR 冲突。且网段范围必须在内网网段内，例如:10.1.0.0/14, 192.168.0.1/18,172.16.0.0/16。
        # @type ServiceCIDR: String
        # @param EniSubnetIds: VPC-CNI网络模式下，弹性网卡的子网Id。
        # @type EniSubnetIds: Array
        # @param ClaimExpiredSeconds: VPC-CNI网络模式下，弹性网卡IP的回收时间，取值范围[300,15768000)
        # @type ClaimExpiredSeconds: Integer
        # @param IgnoreServiceCIDRConflict: 是否忽略 ServiceCIDR 冲突错误, 仅在 VPC-CNI 模式生效，默认不忽略
        # @type IgnoreServiceCIDRConflict: Boolean

        attr_accessor :ClusterCIDR, :IgnoreClusterCIDRConflict, :MaxNodePodNum, :MaxClusterServiceNum, :ServiceCIDR, :EniSubnetIds, :ClaimExpiredSeconds, :IgnoreServiceCIDRConflict
        
        def initialize(clustercidr=nil, ignoreclustercidrconflict=nil, maxnodepodnum=nil, maxclusterservicenum=nil, servicecidr=nil, enisubnetids=nil, claimexpiredseconds=nil, ignoreservicecidrconflict=nil)
          @ClusterCIDR = clustercidr
          @IgnoreClusterCIDRConflict = ignoreclustercidrconflict
          @MaxNodePodNum = maxnodepodnum
          @MaxClusterServiceNum = maxclusterservicenum
          @ServiceCIDR = servicecidr
          @EniSubnetIds = enisubnetids
          @ClaimExpiredSeconds = claimexpiredseconds
          @IgnoreServiceCIDRConflict = ignoreservicecidrconflict
        end

        def deserialize(params)
          @ClusterCIDR = params['ClusterCIDR']
          @IgnoreClusterCIDRConflict = params['IgnoreClusterCIDRConflict']
          @MaxNodePodNum = params['MaxNodePodNum']
          @MaxClusterServiceNum = params['MaxClusterServiceNum']
          @ServiceCIDR = params['ServiceCIDR']
          @EniSubnetIds = params['EniSubnetIds']
          @ClaimExpiredSeconds = params['ClaimExpiredSeconds']
          @IgnoreServiceCIDRConflict = params['IgnoreServiceCIDRConflict']
        end
      end

      # 集群创建过程
      class ClusterCondition < TencentCloud::Common::AbstractModel
        # @param Type: 集群创建过程类型
        # @type Type: String
        # @param Status: 集群创建过程状态
        # @type Status: String
        # @param LastProbeTime: 最后一次探测到该状态的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastProbeTime: String
        # @param LastTransitionTime: 最后一次转换到该过程的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTransitionTime: String
        # @param Reason: 转换到该过程的简明原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Message: 转换到该过程的更多信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Type, :Status, :LastProbeTime, :LastTransitionTime, :Reason, :Message
        
        def initialize(type=nil, status=nil, lastprobetime=nil, lasttransitiontime=nil, reason=nil, message=nil)
          @Type = type
          @Status = status
          @LastProbeTime = lastprobetime
          @LastTransitionTime = lasttransitiontime
          @Reason = reason
          @Message = message
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
          @LastProbeTime = params['LastProbeTime']
          @LastTransitionTime = params['LastTransitionTime']
          @Reason = params['Reason']
          @Message = params['Message']
        end
      end

      # 接入k8s 的认证信息
      class ClusterCredential < TencentCloud::Common::AbstractModel
        # @param CACert: CA 根证书
        # @type CACert: String
        # @param Token: 认证用的Token
        # @type Token: String

        attr_accessor :CACert, :Token
        
        def initialize(cacert=nil, token=nil)
          @CACert = cacert
          @Token = token
        end

        def deserialize(params)
          @CACert = params['CACert']
          @Token = params['Token']
        end
      end

      # 集群master自定义参数
      class ClusterExtraArgs < TencentCloud::Common::AbstractModel
        # @param KubeAPIServer: kube-apiserver自定义参数，参数格式为["k1=v1", "k1=v2"]， 例如["max-requests-inflight=500","feature-gates=PodShareProcessNamespace=true,DynamicKubeletConfig=true"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeAPIServer: Array
        # @param KubeControllerManager: kube-controller-manager自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeControllerManager: Array
        # @param KubeScheduler: kube-scheduler自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeScheduler: Array
        # @param Etcd: etcd自定义参数，只支持独立集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Etcd: Array

        attr_accessor :KubeAPIServer, :KubeControllerManager, :KubeScheduler, :Etcd
        
        def initialize(kubeapiserver=nil, kubecontrollermanager=nil, kubescheduler=nil, etcd=nil)
          @KubeAPIServer = kubeapiserver
          @KubeControllerManager = kubecontrollermanager
          @KubeScheduler = kubescheduler
          @Etcd = etcd
        end

        def deserialize(params)
          @KubeAPIServer = params['KubeAPIServer']
          @KubeControllerManager = params['KubeControllerManager']
          @KubeScheduler = params['KubeScheduler']
          @Etcd = params['Etcd']
        end
      end

      # 弹性容器集群内网访问LB信息
      class ClusterInternalLB < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启内网访问LB
        # @type Enabled: Boolean
        # @param SubnetId: 内网访问LB关联的子网Id
        # @type SubnetId: String

        attr_accessor :Enabled, :SubnetId
        
        def initialize(enabled=nil, subnetid=nil)
          @Enabled = enabled
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @SubnetId = params['SubnetId']
        end
      end

      # 托管集群等级属性
      class ClusterLevelAttribute < TencentCloud::Common::AbstractModel
        # @param Name: 集群等级
        # @type Name: String
        # @param Alias: 等级名称
        # @type Alias: String
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param PodCount: Pod数量
        # @type PodCount: Integer
        # @param ConfigMapCount: Configmap数量
        # @type ConfigMapCount: Integer
        # @param CRDCount: CRD数量
        # @type CRDCount: Integer
        # @param Enable: 是否启用
        # @type Enable: Boolean
        # @param OtherCount: 其他资源数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherCount: Integer

        attr_accessor :Name, :Alias, :NodeCount, :PodCount, :ConfigMapCount, :CRDCount, :Enable, :OtherCount
        
        def initialize(name=nil, _alias=nil, nodecount=nil, podcount=nil, configmapcount=nil, crdcount=nil, enable=nil, othercount=nil)
          @Name = name
          @Alias = _alias
          @NodeCount = nodecount
          @PodCount = podcount
          @ConfigMapCount = configmapcount
          @CRDCount = crdcount
          @Enable = enable
          @OtherCount = othercount
        end

        def deserialize(params)
          @Name = params['Name']
          @Alias = params['Alias']
          @NodeCount = params['NodeCount']
          @PodCount = params['PodCount']
          @ConfigMapCount = params['ConfigMapCount']
          @CRDCount = params['CRDCount']
          @Enable = params['Enable']
          @OtherCount = params['OtherCount']
        end
      end

      # 集群等级变配记录
      class ClusterLevelChangeRecord < TencentCloud::Common::AbstractModel
        # @param ID: 记录ID
        # @type ID: String
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param Status: 变配状态：trading 发货中,upgrading 变配中,success 变配成功,failed 变配失败。
        # @type Status: String
        # @param Message: 状态描述
        # @type Message: String
        # @param OldLevel: 变配前规模
        # @type OldLevel: String
        # @param NewLevel: 变配后规模
        # @type NewLevel: String
        # @param TriggerType: 变配触发类型：manual 手动,auto 自动
        # @type TriggerType: String
        # @param StartedAt: 开始时间
        # @type StartedAt: String
        # @param EndedAt: 结束时间
        # @type EndedAt: String

        attr_accessor :ID, :ClusterID, :Status, :Message, :OldLevel, :NewLevel, :TriggerType, :StartedAt, :EndedAt
        
        def initialize(id=nil, clusterid=nil, status=nil, message=nil, oldlevel=nil, newlevel=nil, triggertype=nil, startedat=nil, endedat=nil)
          @ID = id
          @ClusterID = clusterid
          @Status = status
          @Message = message
          @OldLevel = oldlevel
          @NewLevel = newlevel
          @TriggerType = triggertype
          @StartedAt = startedat
          @EndedAt = endedat
        end

        def deserialize(params)
          @ID = params['ID']
          @ClusterID = params['ClusterID']
          @Status = params['Status']
          @Message = params['Message']
          @OldLevel = params['OldLevel']
          @NewLevel = params['NewLevel']
          @TriggerType = params['TriggerType']
          @StartedAt = params['StartedAt']
          @EndedAt = params['EndedAt']
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
        # @param KubeProxyMode: service的网络模式，当前参数只适用于ipvs+bpf模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeProxyMode: String
        # @param ServiceCIDR: 用于分配service的IP range，不得与 VPC CIDR 冲突，也不得与同 VPC 内其他集群 CIDR 冲突
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCIDR: String
        # @param Subnets: 集群关联的容器子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subnets: Array
        # @param IgnoreServiceCIDRConflict: 是否忽略 ServiceCIDR 冲突错误, 仅在 VPC-CNI 模式生效，默认不忽略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreServiceCIDRConflict: Boolean
        # @param IsDualStack: 集群VPC-CNI模式是否为非双栈集群，默认false，非双栈。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDualStack: Boolean
        # @param Ipv6ServiceCIDR: 用于分配service的IP range，由系统自动分配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6ServiceCIDR: String

        attr_accessor :ClusterCIDR, :IgnoreClusterCIDRConflict, :MaxNodePodNum, :MaxClusterServiceNum, :Ipvs, :VpcId, :Cni, :KubeProxyMode, :ServiceCIDR, :Subnets, :IgnoreServiceCIDRConflict, :IsDualStack, :Ipv6ServiceCIDR
        
        def initialize(clustercidr=nil, ignoreclustercidrconflict=nil, maxnodepodnum=nil, maxclusterservicenum=nil, ipvs=nil, vpcid=nil, cni=nil, kubeproxymode=nil, servicecidr=nil, subnets=nil, ignoreservicecidrconflict=nil, isdualstack=nil, ipv6servicecidr=nil)
          @ClusterCIDR = clustercidr
          @IgnoreClusterCIDRConflict = ignoreclustercidrconflict
          @MaxNodePodNum = maxnodepodnum
          @MaxClusterServiceNum = maxclusterservicenum
          @Ipvs = ipvs
          @VpcId = vpcid
          @Cni = cni
          @KubeProxyMode = kubeproxymode
          @ServiceCIDR = servicecidr
          @Subnets = subnets
          @IgnoreServiceCIDRConflict = ignoreservicecidrconflict
          @IsDualStack = isdualstack
          @Ipv6ServiceCIDR = ipv6servicecidr
        end

        def deserialize(params)
          @ClusterCIDR = params['ClusterCIDR']
          @IgnoreClusterCIDRConflict = params['IgnoreClusterCIDRConflict']
          @MaxNodePodNum = params['MaxNodePodNum']
          @MaxClusterServiceNum = params['MaxClusterServiceNum']
          @Ipvs = params['Ipvs']
          @VpcId = params['VpcId']
          @Cni = params['Cni']
          @KubeProxyMode = params['KubeProxyMode']
          @ServiceCIDR = params['ServiceCIDR']
          @Subnets = params['Subnets']
          @IgnoreServiceCIDRConflict = params['IgnoreServiceCIDRConflict']
          @IsDualStack = params['IsDualStack']
          @Ipv6ServiceCIDR = params['Ipv6ServiceCIDR']
        end
      end

      # 弹性容器集群公网访问负载均衡信息
      class ClusterPublicLB < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启公网访问LB
        # @type Enabled: Boolean
        # @param AllowFromCidrs: 允许访问的来源CIDR列表
        # @type AllowFromCidrs: Array
        # @param SecurityPolicies: 安全策略放通单个IP或CIDR(例如: "192.168.1.0/24",默认为拒绝所有)
        # @type SecurityPolicies: Array
        # @param ExtraParam: 外网访问相关的扩展参数，格式为json
        # @type ExtraParam: String
        # @param SecurityGroup: 新内外网功能，需要传递安全组
        # @type SecurityGroup: String

        attr_accessor :Enabled, :AllowFromCidrs, :SecurityPolicies, :ExtraParam, :SecurityGroup
        
        def initialize(enabled=nil, allowfromcidrs=nil, securitypolicies=nil, extraparam=nil, securitygroup=nil)
          @Enabled = enabled
          @AllowFromCidrs = allowfromcidrs
          @SecurityPolicies = securitypolicies
          @ExtraParam = extraparam
          @SecurityGroup = securitygroup
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @AllowFromCidrs = params['AllowFromCidrs']
          @SecurityPolicies = params['SecurityPolicies']
          @ExtraParam = params['ExtraParam']
          @SecurityGroup = params['SecurityGroup']
        end
      end

      # 集群状态信息
      class ClusterStatus < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterState: 集群状态
        # @type ClusterState: String
        # @param ClusterInstanceState: 集群下机器实例的状态
        # @type ClusterInstanceState: String
        # @param ClusterBMonitor: 集群是否开启监控
        # @type ClusterBMonitor: Boolean
        # @param ClusterInitNodeNum: 集群创建中的节点数，-1表示获取节点状态超时，-2表示获取节点状态失败
        # @type ClusterInitNodeNum: Integer
        # @param ClusterRunningNodeNum: 集群运行中的节点数，-1表示获取节点状态超时，-2表示获取节点状态失败
        # @type ClusterRunningNodeNum: Integer
        # @param ClusterFailedNodeNum: 集群异常的节点数，-1表示获取节点状态超时，-2表示获取节点状态失败
        # @type ClusterFailedNodeNum: Integer
        # @param ClusterClosedNodeNum: 集群已关机的节点数，-1表示获取节点状态超时，-2表示获取节点状态失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterClosedNodeNum: Integer
        # @param ClusterClosingNodeNum: 集群关机中的节点数，-1表示获取节点状态超时，-2表示获取节点状态失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterClosingNodeNum: Integer
        # @param ClusterDeletionProtection: 集群是否开启删除保护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDeletionProtection: Boolean
        # @param ClusterAuditEnabled: 集群是否可审计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterAuditEnabled: Boolean

        attr_accessor :ClusterId, :ClusterState, :ClusterInstanceState, :ClusterBMonitor, :ClusterInitNodeNum, :ClusterRunningNodeNum, :ClusterFailedNodeNum, :ClusterClosedNodeNum, :ClusterClosingNodeNum, :ClusterDeletionProtection, :ClusterAuditEnabled
        
        def initialize(clusterid=nil, clusterstate=nil, clusterinstancestate=nil, clusterbmonitor=nil, clusterinitnodenum=nil, clusterrunningnodenum=nil, clusterfailednodenum=nil, clusterclosednodenum=nil, clusterclosingnodenum=nil, clusterdeletionprotection=nil, clusterauditenabled=nil)
          @ClusterId = clusterid
          @ClusterState = clusterstate
          @ClusterInstanceState = clusterinstancestate
          @ClusterBMonitor = clusterbmonitor
          @ClusterInitNodeNum = clusterinitnodenum
          @ClusterRunningNodeNum = clusterrunningnodenum
          @ClusterFailedNodeNum = clusterfailednodenum
          @ClusterClosedNodeNum = clusterclosednodenum
          @ClusterClosingNodeNum = clusterclosingnodenum
          @ClusterDeletionProtection = clusterdeletionprotection
          @ClusterAuditEnabled = clusterauditenabled
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterState = params['ClusterState']
          @ClusterInstanceState = params['ClusterInstanceState']
          @ClusterBMonitor = params['ClusterBMonitor']
          @ClusterInitNodeNum = params['ClusterInitNodeNum']
          @ClusterRunningNodeNum = params['ClusterRunningNodeNum']
          @ClusterFailedNodeNum = params['ClusterFailedNodeNum']
          @ClusterClosedNodeNum = params['ClusterClosedNodeNum']
          @ClusterClosingNodeNum = params['ClusterClosingNodeNum']
          @ClusterDeletionProtection = params['ClusterDeletionProtection']
          @ClusterAuditEnabled = params['ClusterAuditEnabled']
        end
      end

      # 集群版本信息
      class ClusterVersion < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Versions: 集群主版本号列表，例如1.18.4
        # @type Versions: Array

        attr_accessor :ClusterId, :Versions
        
        def initialize(clusterid=nil, versions=nil)
          @ClusterId = clusterid
          @Versions = versions
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Versions = params['Versions']
        end
      end

      # 账户UIN与客户端证书CommonName的映射
      class CommonName < TencentCloud::Common::AbstractModel
        # @param SubaccountUin: 子账户UIN
        # @type SubaccountUin: String
        # @param CN: 子账户客户端证书中的CommonName字段
        # @type CN: String

        attr_accessor :SubaccountUin, :CN
        
        def initialize(subaccountuin=nil, cn=nil)
          @SubaccountUin = subaccountuin
          @CN = cn
        end

        def deserialize(params)
          @SubaccountUin = params['SubaccountUin']
          @CN = params['CN']
        end
      end

      # EKS Instance Container容器
      class Container < TencentCloud::Common::AbstractModel
        # @param Image: 镜像
        # @type Image: String
        # @param Name: 容器名
        # @type Name: String
        # @param Commands: 容器启动命令
        # @type Commands: Array
        # @param Args: 容器启动参数
        # @type Args: Array
        # @param EnvironmentVars: 容器内操作系统的环境变量
        # @type EnvironmentVars: Array
        # @param Cpu: CPU，制改容器最多可使用的核数，该值不可超过容器实例的总核数。单位：核。
        # @type Cpu: Float
        # @param Memory: 内存，限制该容器最多可使用的内存值，该值不可超过容器实例的总内存值。单位：GiB
        # @type Memory: Float
        # @param VolumeMounts: 数据卷挂载信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeMounts: Array
        # @param CurrentState: 当前状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentState: :class:`Tencentcloud::Tke.v20180525.models.ContainerState`
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param WorkingDir: 容器工作目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkingDir: String
        # @param LivenessProbe: 存活探针
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessProbe: :class:`Tencentcloud::Tke.v20180525.models.LivenessOrReadinessProbe`
        # @param ReadinessProbe: 就绪探针
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadinessProbe: :class:`Tencentcloud::Tke.v20180525.models.LivenessOrReadinessProbe`
        # @param GpuLimit: Gpu限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuLimit: Integer
        # @param SecurityContext: 容器的安全上下文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityContext: :class:`Tencentcloud::Tke.v20180525.models.SecurityContext`

        attr_accessor :Image, :Name, :Commands, :Args, :EnvironmentVars, :Cpu, :Memory, :VolumeMounts, :CurrentState, :RestartCount, :WorkingDir, :LivenessProbe, :ReadinessProbe, :GpuLimit, :SecurityContext
        
        def initialize(image=nil, name=nil, commands=nil, args=nil, environmentvars=nil, cpu=nil, memory=nil, volumemounts=nil, currentstate=nil, restartcount=nil, workingdir=nil, livenessprobe=nil, readinessprobe=nil, gpulimit=nil, securitycontext=nil)
          @Image = image
          @Name = name
          @Commands = commands
          @Args = args
          @EnvironmentVars = environmentvars
          @Cpu = cpu
          @Memory = memory
          @VolumeMounts = volumemounts
          @CurrentState = currentstate
          @RestartCount = restartcount
          @WorkingDir = workingdir
          @LivenessProbe = livenessprobe
          @ReadinessProbe = readinessprobe
          @GpuLimit = gpulimit
          @SecurityContext = securitycontext
        end

        def deserialize(params)
          @Image = params['Image']
          @Name = params['Name']
          @Commands = params['Commands']
          @Args = params['Args']
          unless params['EnvironmentVars'].nil?
            @EnvironmentVars = []
            params['EnvironmentVars'].each do |i|
              environmentvariable_tmp = EnvironmentVariable.new
              environmentvariable_tmp.deserialize(i)
              @EnvironmentVars << environmentvariable_tmp
            end
          end
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          unless params['VolumeMounts'].nil?
            @VolumeMounts = []
            params['VolumeMounts'].each do |i|
              volumemount_tmp = VolumeMount.new
              volumemount_tmp.deserialize(i)
              @VolumeMounts << volumemount_tmp
            end
          end
          unless params['CurrentState'].nil?
            @CurrentState = ContainerState.new
            @CurrentState.deserialize(params['CurrentState'])
          end
          @RestartCount = params['RestartCount']
          @WorkingDir = params['WorkingDir']
          unless params['LivenessProbe'].nil?
            @LivenessProbe = LivenessOrReadinessProbe.new
            @LivenessProbe.deserialize(params['LivenessProbe'])
          end
          unless params['ReadinessProbe'].nil?
            @ReadinessProbe = LivenessOrReadinessProbe.new
            @ReadinessProbe.deserialize(params['ReadinessProbe'])
          end
          @GpuLimit = params['GpuLimit']
          unless params['SecurityContext'].nil?
            @SecurityContext = SecurityContext.new
            @SecurityContext.deserialize(params['SecurityContext'])
          end
        end
      end

      # 容器状态
      class ContainerState < TencentCloud::Common::AbstractModel
        # @param StartTime: 容器运行开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param State: 容器状态：created, running, exited, unknown
        # @type State: String
        # @param FinishTime: 容器运行结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishTime: String
        # @param ExitCode: 容器运行退出码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExitCode: Integer
        # @param Reason: 容器状态 Reason
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Message: 容器状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param RestartCount: 容器重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer

        attr_accessor :StartTime, :State, :FinishTime, :ExitCode, :Reason, :Message, :RestartCount
        
        def initialize(starttime=nil, state=nil, finishtime=nil, exitcode=nil, reason=nil, message=nil, restartcount=nil)
          @StartTime = starttime
          @State = state
          @FinishTime = finishtime
          @ExitCode = exitcode
          @Reason = reason
          @Message = message
          @RestartCount = restartcount
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @State = params['State']
          @FinishTime = params['FinishTime']
          @ExitCode = params['ExitCode']
          @Reason = params['Reason']
          @Message = params['Message']
          @RestartCount = params['RestartCount']
        end
      end

      # 集群中控制器的状态描述
      class ControllerStatus < TencentCloud::Common::AbstractModel
        # @param Name: 控制器的名字
        # @type Name: String
        # @param Enabled: 控制器是否开启
        # @type Enabled: Boolean

        attr_accessor :Name, :Enabled
        
        def initialize(name=nil, enabled=nil)
          @Name = name
          @Enabled = enabled
        end

        def deserialize(params)
          @Name = params['Name']
          @Enabled = params['Enabled']
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
        # @param Domain: 设置域名
        # @type Domain: String
        # @param SecurityGroup: 使用的安全组，只有外网访问需要传递
        # @type SecurityGroup: String
        # @param ExtensiveParameters: 创建lb参数，只有外网访问需要设置
        # @type ExtensiveParameters: String

        attr_accessor :ClusterId, :SubnetId, :IsExtranet, :Domain, :SecurityGroup, :ExtensiveParameters
        
        def initialize(clusterid=nil, subnetid=nil, isextranet=nil, domain=nil, securitygroup=nil, extensiveparameters=nil)
          @ClusterId = clusterid
          @SubnetId = subnetid
          @IsExtranet = isextranet
          @Domain = domain
          @SecurityGroup = securitygroup
          @ExtensiveParameters = extensiveparameters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SubnetId = params['SubnetId']
          @IsExtranet = params['IsExtranet']
          @Domain = params['Domain']
          @SecurityGroup = params['SecurityGroup']
          @ExtensiveParameters = params['ExtensiveParameters']
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
        # @param RunInstancePara: CVM创建透传参数，json化字符串格式，如需要保证扩展集群节点请求幂等性需要在此参数添加ClientToken字段，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。
        # @type RunInstancePara: String
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param SkipValidateOptions: 校验规则相关选项，可配置跳过某些校验规则。目前支持GlobalRouteCIDRCheck（跳过GlobalRouter的相关校验），VpcCniCIDRCheck（跳过VpcCni相关校验）
        # @type SkipValidateOptions: Array

        attr_accessor :ClusterId, :RunInstancePara, :InstanceAdvancedSettings, :SkipValidateOptions
        
        def initialize(clusterid=nil, runinstancepara=nil, instanceadvancedsettings=nil, skipvalidateoptions=nil)
          @ClusterId = clusterid
          @RunInstancePara = runinstancepara
          @InstanceAdvancedSettings = instanceadvancedsettings
          @SkipValidateOptions = skipvalidateoptions
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RunInstancePara = params['RunInstancePara']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          @SkipValidateOptions = params['SkipValidateOptions']
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

      # CreateClusterNodePoolFromExistingAsg请求参数结构体
      class CreateClusterNodePoolFromExistingAsgRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AutoscalingGroupId: 伸缩组ID
        # @type AutoscalingGroupId: String

        attr_accessor :ClusterId, :AutoscalingGroupId
        
        def initialize(clusterid=nil, autoscalinggroupid=nil)
          @ClusterId = clusterid
          @AutoscalingGroupId = autoscalinggroupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AutoscalingGroupId = params['AutoscalingGroupId']
        end
      end

      # CreateClusterNodePoolFromExistingAsg返回参数结构体
      class CreateClusterNodePoolFromExistingAsgResponse < TencentCloud::Common::AbstractModel
        # @param NodePoolId: 节点池ID
        # @type NodePoolId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateClusterNodePool请求参数结构体
      class CreateClusterNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: cluster id
        # @type ClusterId: String
        # @param AutoScalingGroupPara: AutoScalingGroupPara AS组参数
        # @type AutoScalingGroupPara: String
        # @param LaunchConfigurePara: LaunchConfigurePara 运行参数
        # @type LaunchConfigurePara: String
        # @param InstanceAdvancedSettings: InstanceAdvancedSettings 示例参数
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param EnableAutoscale: 是否启用自动伸缩
        # @type EnableAutoscale: Boolean
        # @param Name: 节点池名称
        # @type Name: String
        # @param Labels: Labels标签
        # @type Labels: Array
        # @param Taints: Taints互斥
        # @type Taints: Array
        # @param ContainerRuntime: 节点池纬度运行时类型及版本
        # @type ContainerRuntime: String
        # @param RuntimeVersion: 运行时版本
        # @type RuntimeVersion: String
        # @param NodePoolOs: 节点池os，当为自定义镜像时，传镜像id；否则为公共镜像的osName
        # @type NodePoolOs: String
        # @param OsCustomizeType: 容器的镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        # @type OsCustomizeType: String
        # @param Tags: 资源标签
        # @type Tags: Array
        # @param DeletionProtection: 删除保护开关
        # @type DeletionProtection: Boolean

        attr_accessor :ClusterId, :AutoScalingGroupPara, :LaunchConfigurePara, :InstanceAdvancedSettings, :EnableAutoscale, :Name, :Labels, :Taints, :ContainerRuntime, :RuntimeVersion, :NodePoolOs, :OsCustomizeType, :Tags, :DeletionProtection
        
        def initialize(clusterid=nil, autoscalinggrouppara=nil, launchconfigurepara=nil, instanceadvancedsettings=nil, enableautoscale=nil, name=nil, labels=nil, taints=nil, containerruntime=nil, runtimeversion=nil, nodepoolos=nil, oscustomizetype=nil, tags=nil, deletionprotection=nil)
          @ClusterId = clusterid
          @AutoScalingGroupPara = autoscalinggrouppara
          @LaunchConfigurePara = launchconfigurepara
          @InstanceAdvancedSettings = instanceadvancedsettings
          @EnableAutoscale = enableautoscale
          @Name = name
          @Labels = labels
          @Taints = taints
          @ContainerRuntime = containerruntime
          @RuntimeVersion = runtimeversion
          @NodePoolOs = nodepoolos
          @OsCustomizeType = oscustomizetype
          @Tags = tags
          @DeletionProtection = deletionprotection
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AutoScalingGroupPara = params['AutoScalingGroupPara']
          @LaunchConfigurePara = params['LaunchConfigurePara']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          @EnableAutoscale = params['EnableAutoscale']
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
          @ContainerRuntime = params['ContainerRuntime']
          @RuntimeVersion = params['RuntimeVersion']
          @NodePoolOs = params['NodePoolOs']
          @OsCustomizeType = params['OsCustomizeType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DeletionProtection = params['DeletionProtection']
        end
      end

      # CreateClusterNodePool返回参数结构体
      class CreateClusterNodePoolResponse < TencentCloud::Common::AbstractModel
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ExistedInstancesForNode: 已存在实例的配置信息。所有实例必须在同一个VPC中，最大数量不超过100，不支持添加竞价实例。
        # @type ExistedInstancesForNode: Array
        # @param InstanceDataDiskMountSettings: CVM类型和其对应的数据盘挂载配置信息
        # @type InstanceDataDiskMountSettings: Array
        # @param ExtensionAddons: 需要安装的扩展组件信息
        # @type ExtensionAddons: Array

        attr_accessor :ClusterCIDRSettings, :ClusterType, :RunInstancesForNode, :ClusterBasicSettings, :ClusterAdvancedSettings, :InstanceAdvancedSettings, :ExistedInstancesForNode, :InstanceDataDiskMountSettings, :ExtensionAddons
        
        def initialize(clustercidrsettings=nil, clustertype=nil, runinstancesfornode=nil, clusterbasicsettings=nil, clusteradvancedsettings=nil, instanceadvancedsettings=nil, existedinstancesfornode=nil, instancedatadiskmountsettings=nil, extensionaddons=nil)
          @ClusterCIDRSettings = clustercidrsettings
          @ClusterType = clustertype
          @RunInstancesForNode = runinstancesfornode
          @ClusterBasicSettings = clusterbasicsettings
          @ClusterAdvancedSettings = clusteradvancedsettings
          @InstanceAdvancedSettings = instanceadvancedsettings
          @ExistedInstancesForNode = existedinstancesfornode
          @InstanceDataDiskMountSettings = instancedatadiskmountsettings
          @ExtensionAddons = extensionaddons
        end

        def deserialize(params)
          unless params['ClusterCIDRSettings'].nil?
            @ClusterCIDRSettings = ClusterCIDRSettings.new
            @ClusterCIDRSettings.deserialize(params['ClusterCIDRSettings'])
          end
          @ClusterType = params['ClusterType']
          unless params['RunInstancesForNode'].nil?
            @RunInstancesForNode = []
            params['RunInstancesForNode'].each do |i|
              runinstancesfornode_tmp = RunInstancesForNode.new
              runinstancesfornode_tmp.deserialize(i)
              @RunInstancesForNode << runinstancesfornode_tmp
            end
          end
          unless params['ClusterBasicSettings'].nil?
            @ClusterBasicSettings = ClusterBasicSettings.new
            @ClusterBasicSettings.deserialize(params['ClusterBasicSettings'])
          end
          unless params['ClusterAdvancedSettings'].nil?
            @ClusterAdvancedSettings = ClusterAdvancedSettings.new
            @ClusterAdvancedSettings.deserialize(params['ClusterAdvancedSettings'])
          end
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          unless params['ExistedInstancesForNode'].nil?
            @ExistedInstancesForNode = []
            params['ExistedInstancesForNode'].each do |i|
              existedinstancesfornode_tmp = ExistedInstancesForNode.new
              existedinstancesfornode_tmp.deserialize(i)
              @ExistedInstancesForNode << existedinstancesfornode_tmp
            end
          end
          unless params['InstanceDataDiskMountSettings'].nil?
            @InstanceDataDiskMountSettings = []
            params['InstanceDataDiskMountSettings'].each do |i|
              instancedatadiskmountsetting_tmp = InstanceDataDiskMountSetting.new
              instancedatadiskmountsetting_tmp.deserialize(i)
              @InstanceDataDiskMountSettings << instancedatadiskmountsetting_tmp
            end
          end
          unless params['ExtensionAddons'].nil?
            @ExtensionAddons = []
            params['ExtensionAddons'].each do |i|
              extensionaddon_tmp = ExtensionAddon.new
              extensionaddon_tmp.deserialize(i)
              @ExtensionAddons << extensionaddon_tmp
            end
          end
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

      # CreateECMInstances请求参数结构体
      class CreateECMInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群id
        # @type ClusterID: String
        # @param ModuleId: 模块id
        # @type ModuleId: String
        # @param ZoneInstanceCountISPSet: 需要创建实例的可用区及创建数目及运营商的列表
        # @type ZoneInstanceCountISPSet: Array
        # @param Password: 密码
        # @type Password: String
        # @param InternetMaxBandwidthOut: 公网带宽
        # @type InternetMaxBandwidthOut: Integer
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param EnhancedService: 增强服务，包括云镜和云监控
        # @type EnhancedService: :class:`Tencentcloud::Tke.v20180525.models.ECMEnhancedService`
        # @param UserData: 用户自定义脚本
        # @type UserData: String
        # @param External: 实例扩展信息
        # @type External: String
        # @param SecurityGroupIds: 实例所属安全组
        # @type SecurityGroupIds: Array

        attr_accessor :ClusterID, :ModuleId, :ZoneInstanceCountISPSet, :Password, :InternetMaxBandwidthOut, :ImageId, :InstanceName, :HostName, :EnhancedService, :UserData, :External, :SecurityGroupIds
        
        def initialize(clusterid=nil, moduleid=nil, zoneinstancecountispset=nil, password=nil, internetmaxbandwidthout=nil, imageid=nil, instancename=nil, hostname=nil, enhancedservice=nil, userdata=nil, external=nil, securitygroupids=nil)
          @ClusterID = clusterid
          @ModuleId = moduleid
          @ZoneInstanceCountISPSet = zoneinstancecountispset
          @Password = password
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @ImageId = imageid
          @InstanceName = instancename
          @HostName = hostname
          @EnhancedService = enhancedservice
          @UserData = userdata
          @External = external
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @ModuleId = params['ModuleId']
          unless params['ZoneInstanceCountISPSet'].nil?
            @ZoneInstanceCountISPSet = []
            params['ZoneInstanceCountISPSet'].each do |i|
              ecmzoneinstancecountisp_tmp = ECMZoneInstanceCountISP.new
              ecmzoneinstancecountisp_tmp.deserialize(i)
              @ZoneInstanceCountISPSet << ecmzoneinstancecountisp_tmp
            end
          end
          @Password = params['Password']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @ImageId = params['ImageId']
          @InstanceName = params['InstanceName']
          @HostName = params['HostName']
          unless params['EnhancedService'].nil?
            @EnhancedService = ECMEnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @UserData = params['UserData']
          @External = params['External']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateECMInstances返回参数结构体
      class CreateECMInstancesResponse < TencentCloud::Common::AbstractModel
        # @param EcmIdSet: ecm id 列表
        # @type EcmIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EcmIdSet, :RequestId
        
        def initialize(ecmidset=nil, requestid=nil)
          @EcmIdSet = ecmidset
          @RequestId = requestid
        end

        def deserialize(params)
          @EcmIdSet = params['EcmIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateEKSCluster请求参数结构体
      class CreateEKSClusterRequest < TencentCloud::Common::AbstractModel
        # @param K8SVersion: k8s版本号。可为1.14.4, 1.12.8。
        # @type K8SVersion: String
        # @param VpcId: vpc 的Id
        # @type VpcId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param SubnetIds: 子网Id 列表
        # @type SubnetIds: Array
        # @param ClusterDesc: 集群描述信息
        # @type ClusterDesc: String
        # @param ServiceSubnetId: Serivce 所在子网Id
        # @type ServiceSubnetId: String
        # @param DnsServers: 集群自定义的Dns服务器信息
        # @type DnsServers: Array
        # @param ExtraParam: 扩展参数。须是map[string]string 的json 格式。
        # @type ExtraParam: String
        # @param EnableVpcCoreDNS: 是否在用户集群内开启Dns。默认为true
        # @type EnableVpcCoreDNS: Boolean
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到集群实例。
        # @type TagSpecification: Array
        # @param SubnetInfos: 子网信息列表
        # @type SubnetInfos: Array

        attr_accessor :K8SVersion, :VpcId, :ClusterName, :SubnetIds, :ClusterDesc, :ServiceSubnetId, :DnsServers, :ExtraParam, :EnableVpcCoreDNS, :TagSpecification, :SubnetInfos
        
        def initialize(k8sversion=nil, vpcid=nil, clustername=nil, subnetids=nil, clusterdesc=nil, servicesubnetid=nil, dnsservers=nil, extraparam=nil, enablevpccoredns=nil, tagspecification=nil, subnetinfos=nil)
          @K8SVersion = k8sversion
          @VpcId = vpcid
          @ClusterName = clustername
          @SubnetIds = subnetids
          @ClusterDesc = clusterdesc
          @ServiceSubnetId = servicesubnetid
          @DnsServers = dnsservers
          @ExtraParam = extraparam
          @EnableVpcCoreDNS = enablevpccoredns
          @TagSpecification = tagspecification
          @SubnetInfos = subnetinfos
        end

        def deserialize(params)
          @K8SVersion = params['K8SVersion']
          @VpcId = params['VpcId']
          @ClusterName = params['ClusterName']
          @SubnetIds = params['SubnetIds']
          @ClusterDesc = params['ClusterDesc']
          @ServiceSubnetId = params['ServiceSubnetId']
          unless params['DnsServers'].nil?
            @DnsServers = []
            params['DnsServers'].each do |i|
              dnsserverconf_tmp = DnsServerConf.new
              dnsserverconf_tmp.deserialize(i)
              @DnsServers << dnsserverconf_tmp
            end
          end
          @ExtraParam = params['ExtraParam']
          @EnableVpcCoreDNS = params['EnableVpcCoreDNS']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          unless params['SubnetInfos'].nil?
            @SubnetInfos = []
            params['SubnetInfos'].each do |i|
              subnetinfos_tmp = SubnetInfos.new
              subnetinfos_tmp.deserialize(i)
              @SubnetInfos << subnetinfos_tmp
            end
          end
        end
      end

      # CreateEKSCluster返回参数结构体
      class CreateEKSClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 弹性集群Id
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

      # CreateEKSContainerInstances请求参数结构体
      class CreateEKSContainerInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Containers: 容器组
        # @type Containers: Array
        # @param EksCiName: EKS Container Instance容器实例名称
        # @type EksCiName: String
        # @param SecurityGroupIds: 指定新创建实例所属于的安全组Id
        # @type SecurityGroupIds: Array
        # @param SubnetId: 实例所属子网Id
        # @type SubnetId: String
        # @param VpcId: 实例所属VPC的Id
        # @type VpcId: String
        # @param Memory: 内存，单位：GiB。可参考[资源规格](https://cloud.tencent.com/document/product/457/39808)文档
        # @type Memory: Float
        # @param Cpu: CPU，单位：核。可参考[资源规格](https://cloud.tencent.com/document/product/457/39808)文档
        # @type Cpu: Float
        # @param RestartPolicy: 实例重启策略： Always(总是重启)、Never(从不重启)、OnFailure(失败时重启)，默认：Always。
        # @type RestartPolicy: String
        # @param ImageRegistryCredentials: 镜像仓库凭证数组
        # @type ImageRegistryCredentials: Array
        # @param EksCiVolume: 数据卷，包含NfsVolume数组和CbsVolume数组
        # @type EksCiVolume: :class:`Tencentcloud::Tke.v20180525.models.EksCiVolume`
        # @param Replicas: 实例副本数，默认为1
        # @type Replicas: Integer
        # @param InitContainers: Init 容器
        # @type InitContainers: Array
        # @param DnsConfig: 自定义DNS配置
        # @type DnsConfig: :class:`Tencentcloud::Tke.v20180525.models.DNSConfig`
        # @param ExistedEipIds: 用来绑定容器实例的已有EIP的列表。如传值，需要保证数值和Replicas相等。
        # 另外此参数和AutoCreateEipAttribute互斥。
        # @type ExistedEipIds: Array
        # @param AutoCreateEipAttribute: 自动创建EIP的可选参数。若传此参数，则会自动创建EIP。
        # 另外此参数和ExistedEipIds互斥
        # @type AutoCreateEipAttribute: :class:`Tencentcloud::Tke.v20180525.models.EipAttribute`
        # @param AutoCreateEip: 是否为容器实例自动创建EIP，默认为false。若传true，则此参数和ExistedEipIds互斥
        # @type AutoCreateEip: Boolean
        # @param CpuType: Pod 所需的 CPU 资源型号，如果不填写则默认不强制指定 CPU 类型。目前支持型号如下：
        # intel
        # amd
        # - 支持优先级顺序写法，如 “amd,intel” 表示优先创建 amd 资源 Pod，如果所选地域可用区 amd 资源不足，则会创建 intel 资源 Pod。
        # @type CpuType: String
        # @param GpuType: 容器实例所需的 GPU 资源型号，目前支持型号如下：
        # 1/4\*V100
        # 1/2\*V100
        # V100
        # 1/4\*T4
        # 1/2\*T4
        # T4
        # @type GpuType: String
        # @param GpuCount: Pod 所需的 GPU 数量，如填写，请确保为支持的规格。默认单位为卡，无需再次注明。
        # @type GpuCount: Integer
        # @param CamRoleName: 为容器实例关联 CAM 角色，value 填写 CAM 角色名称，容器实例可获取该 CAM 角色包含的权限策略，方便 容器实例 内的程序进行如购买资源、读写存储等云资源操作。
        # @type CamRoleName: String

        attr_accessor :Containers, :EksCiName, :SecurityGroupIds, :SubnetId, :VpcId, :Memory, :Cpu, :RestartPolicy, :ImageRegistryCredentials, :EksCiVolume, :Replicas, :InitContainers, :DnsConfig, :ExistedEipIds, :AutoCreateEipAttribute, :AutoCreateEip, :CpuType, :GpuType, :GpuCount, :CamRoleName
        
        def initialize(containers=nil, eksciname=nil, securitygroupids=nil, subnetid=nil, vpcid=nil, memory=nil, cpu=nil, restartpolicy=nil, imageregistrycredentials=nil, ekscivolume=nil, replicas=nil, initcontainers=nil, dnsconfig=nil, existedeipids=nil, autocreateeipattribute=nil, autocreateeip=nil, cputype=nil, gputype=nil, gpucount=nil, camrolename=nil)
          @Containers = containers
          @EksCiName = eksciname
          @SecurityGroupIds = securitygroupids
          @SubnetId = subnetid
          @VpcId = vpcid
          @Memory = memory
          @Cpu = cpu
          @RestartPolicy = restartpolicy
          @ImageRegistryCredentials = imageregistrycredentials
          @EksCiVolume = ekscivolume
          @Replicas = replicas
          @InitContainers = initcontainers
          @DnsConfig = dnsconfig
          @ExistedEipIds = existedeipids
          @AutoCreateEipAttribute = autocreateeipattribute
          @AutoCreateEip = autocreateeip
          @CpuType = cputype
          @GpuType = gputype
          @GpuCount = gpucount
          @CamRoleName = camrolename
        end

        def deserialize(params)
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          @EksCiName = params['EksCiName']
          @SecurityGroupIds = params['SecurityGroupIds']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Memory = params['Memory']
          @Cpu = params['Cpu']
          @RestartPolicy = params['RestartPolicy']
          unless params['ImageRegistryCredentials'].nil?
            @ImageRegistryCredentials = []
            params['ImageRegistryCredentials'].each do |i|
              imageregistrycredential_tmp = ImageRegistryCredential.new
              imageregistrycredential_tmp.deserialize(i)
              @ImageRegistryCredentials << imageregistrycredential_tmp
            end
          end
          unless params['EksCiVolume'].nil?
            @EksCiVolume = EksCiVolume.new
            @EksCiVolume.deserialize(params['EksCiVolume'])
          end
          @Replicas = params['Replicas']
          unless params['InitContainers'].nil?
            @InitContainers = []
            params['InitContainers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @InitContainers << container_tmp
            end
          end
          unless params['DnsConfig'].nil?
            @DnsConfig = DNSConfig.new
            @DnsConfig.deserialize(params['DnsConfig'])
          end
          @ExistedEipIds = params['ExistedEipIds']
          unless params['AutoCreateEipAttribute'].nil?
            @AutoCreateEipAttribute = EipAttribute.new
            @AutoCreateEipAttribute.deserialize(params['AutoCreateEipAttribute'])
          end
          @AutoCreateEip = params['AutoCreateEip']
          @CpuType = params['CpuType']
          @GpuType = params['GpuType']
          @GpuCount = params['GpuCount']
          @CamRoleName = params['CamRoleName']
        end
      end

      # CreateEKSContainerInstances返回参数结构体
      class CreateEKSContainerInstancesResponse < TencentCloud::Common::AbstractModel
        # @param EksCiIds: EKS Container Instance Id集合，格式为eksci-xxx，是容器实例的唯一标识。
        # @type EksCiIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EksCiIds, :RequestId
        
        def initialize(eksciids=nil, requestid=nil)
          @EksCiIds = eksciids
          @RequestId = requestid
        end

        def deserialize(params)
          @EksCiIds = params['EksCiIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateEdgeCVMInstances请求参数结构体
      class CreateEdgeCVMInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群id
        # @type ClusterID: String
        # @param RunInstancePara: CVM创建透传参数，json化字符串格式，如需要保证扩展集群节点请求幂等性需要在此参数添加ClientToken字段，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。
        # @type RunInstancePara: String
        # @param CvmRegion: CVM所属Region
        # @type CvmRegion: String
        # @param CvmCount: CVM数量
        # @type CvmCount: Integer
        # @param External: 实例扩展信息
        # @type External: String
        # @param UserScript: 用户自定义脚本
        # @type UserScript: String
        # @param EnableEni: 是否开启弹性网卡功能
        # @type EnableEni: Boolean

        attr_accessor :ClusterID, :RunInstancePara, :CvmRegion, :CvmCount, :External, :UserScript, :EnableEni
        
        def initialize(clusterid=nil, runinstancepara=nil, cvmregion=nil, cvmcount=nil, external=nil, userscript=nil, enableeni=nil)
          @ClusterID = clusterid
          @RunInstancePara = runinstancepara
          @CvmRegion = cvmregion
          @CvmCount = cvmcount
          @External = external
          @UserScript = userscript
          @EnableEni = enableeni
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @RunInstancePara = params['RunInstancePara']
          @CvmRegion = params['CvmRegion']
          @CvmCount = params['CvmCount']
          @External = params['External']
          @UserScript = params['UserScript']
          @EnableEni = params['EnableEni']
        end
      end

      # CreateEdgeCVMInstances返回参数结构体
      class CreateEdgeCVMInstancesResponse < TencentCloud::Common::AbstractModel
        # @param CvmIdSet: cvm id 列表
        # @type CvmIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CvmIdSet, :RequestId
        
        def initialize(cvmidset=nil, requestid=nil)
          @CvmIdSet = cvmidset
          @RequestId = requestid
        end

        def deserialize(params)
          @CvmIdSet = params['CvmIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateEdgeLogConfig请求参数结构体
      class CreateEdgeLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param LogConfig: 日志采集配置的json表达
        # @type LogConfig: String
        # @param LogsetId: CLS日志集ID
        # @type LogsetId: String

        attr_accessor :ClusterId, :LogConfig, :LogsetId
        
        def initialize(clusterid=nil, logconfig=nil, logsetid=nil)
          @ClusterId = clusterid
          @LogConfig = logconfig
          @LogsetId = logsetid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @LogConfig = params['LogConfig']
          @LogsetId = params['LogsetId']
        end
      end

      # CreateEdgeLogConfig返回参数结构体
      class CreateEdgeLogConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateImageCache请求参数结构体
      class CreateImageCacheRequest < TencentCloud::Common::AbstractModel
        # @param Images: 用于制作镜像缓存的容器镜像列表
        # @type Images: Array
        # @param SubnetId: 实例所属子网Id
        # @type SubnetId: String
        # @param VpcId: 实例所属VPC Id
        # @type VpcId: String
        # @param ImageCacheName: 镜像缓存名称
        # @type ImageCacheName: String
        # @param SecurityGroupIds: 安全组Id
        # @type SecurityGroupIds: Array
        # @param ImageRegistryCredentials: 镜像仓库凭证数组
        # @type ImageRegistryCredentials: Array
        # @param ExistedEipId: 用来绑定容器实例的已有EIP
        # @type ExistedEipId: String
        # @param AutoCreateEip: 是否为容器实例自动创建EIP，默认为false。若传true，则此参数和ExistedEipIds互斥
        # @type AutoCreateEip: Boolean
        # @param AutoCreateEipAttribute: 自动创建EIP的可选参数。若传此参数，则会自动创建EIP。
        # 另外此参数和ExistedEipIds互斥
        # @type AutoCreateEipAttribute: :class:`Tencentcloud::Tke.v20180525.models.EipAttribute`
        # @param ImageCacheSize: 镜像缓存的大小。默认为20 GiB。取值范围参考[云硬盘类型](https://cloud.tencent.com/document/product/362/2353)中的高性能云盘类型的大小限制。
        # @type ImageCacheSize: Integer
        # @param RetentionDays: 镜像缓存保留时间天数，过期将会自动清理，默认为0，永不过期。
        # @type RetentionDays: Integer

        attr_accessor :Images, :SubnetId, :VpcId, :ImageCacheName, :SecurityGroupIds, :ImageRegistryCredentials, :ExistedEipId, :AutoCreateEip, :AutoCreateEipAttribute, :ImageCacheSize, :RetentionDays
        
        def initialize(images=nil, subnetid=nil, vpcid=nil, imagecachename=nil, securitygroupids=nil, imageregistrycredentials=nil, existedeipid=nil, autocreateeip=nil, autocreateeipattribute=nil, imagecachesize=nil, retentiondays=nil)
          @Images = images
          @SubnetId = subnetid
          @VpcId = vpcid
          @ImageCacheName = imagecachename
          @SecurityGroupIds = securitygroupids
          @ImageRegistryCredentials = imageregistrycredentials
          @ExistedEipId = existedeipid
          @AutoCreateEip = autocreateeip
          @AutoCreateEipAttribute = autocreateeipattribute
          @ImageCacheSize = imagecachesize
          @RetentionDays = retentiondays
        end

        def deserialize(params)
          @Images = params['Images']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @ImageCacheName = params['ImageCacheName']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['ImageRegistryCredentials'].nil?
            @ImageRegistryCredentials = []
            params['ImageRegistryCredentials'].each do |i|
              imageregistrycredential_tmp = ImageRegistryCredential.new
              imageregistrycredential_tmp.deserialize(i)
              @ImageRegistryCredentials << imageregistrycredential_tmp
            end
          end
          @ExistedEipId = params['ExistedEipId']
          @AutoCreateEip = params['AutoCreateEip']
          unless params['AutoCreateEipAttribute'].nil?
            @AutoCreateEipAttribute = EipAttribute.new
            @AutoCreateEipAttribute.deserialize(params['AutoCreateEipAttribute'])
          end
          @ImageCacheSize = params['ImageCacheSize']
          @RetentionDays = params['RetentionDays']
        end
      end

      # CreateImageCache返回参数结构体
      class CreateImageCacheResponse < TencentCloud::Common::AbstractModel
        # @param ImageCacheId: 镜像缓存Id
        # @type ImageCacheId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageCacheId, :RequestId
        
        def initialize(imagecacheid=nil, requestid=nil)
          @ImageCacheId = imagecacheid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageCacheId = params['ImageCacheId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheusAlertPolicy请求参数结构体
      class CreatePrometheusAlertPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AlertRule: 告警配置
        # @type AlertRule: :class:`Tencentcloud::Tke.v20180525.models.PrometheusAlertPolicyItem`

        attr_accessor :InstanceId, :AlertRule
        
        def initialize(instanceid=nil, alertrule=nil)
          @InstanceId = instanceid
          @AlertRule = alertrule
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AlertRule'].nil?
            @AlertRule = PrometheusAlertPolicyItem.new
            @AlertRule.deserialize(params['AlertRule'])
          end
        end
      end

      # CreatePrometheusAlertPolicy返回参数结构体
      class CreatePrometheusAlertPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Id: 告警id
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId
        
        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheusAlertRule请求参数结构体
      class CreatePrometheusAlertRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AlertRule: 告警配置
        # @type AlertRule: :class:`Tencentcloud::Tke.v20180525.models.PrometheusAlertRuleDetail`

        attr_accessor :InstanceId, :AlertRule
        
        def initialize(instanceid=nil, alertrule=nil)
          @InstanceId = instanceid
          @AlertRule = alertrule
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AlertRule'].nil?
            @AlertRule = PrometheusAlertRuleDetail.new
            @AlertRule.deserialize(params['AlertRule'])
          end
        end
      end

      # CreatePrometheusAlertRule返回参数结构体
      class CreatePrometheusAlertRuleResponse < TencentCloud::Common::AbstractModel
        # @param Id: 告警id
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId
        
        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheusClusterAgent请求参数结构体
      class CreatePrometheusClusterAgentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Agents: agent列表
        # @type Agents: Array

        attr_accessor :InstanceId, :Agents
        
        def initialize(instanceid=nil, agents=nil)
          @InstanceId = instanceid
          @Agents = agents
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              prometheusclusteragentbasic_tmp = PrometheusClusterAgentBasic.new
              prometheusclusteragentbasic_tmp.deserialize(i)
              @Agents << prometheusclusteragentbasic_tmp
            end
          end
        end
      end

      # CreatePrometheusClusterAgent返回参数结构体
      class CreatePrometheusClusterAgentResponse < TencentCloud::Common::AbstractModel
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

      # CreatePrometheusConfig请求参数结构体
      class CreatePrometheusConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ServiceMonitors: ServiceMonitors配置
        # @type ServiceMonitors: Array
        # @param PodMonitors: PodMonitors配置
        # @type PodMonitors: Array
        # @param RawJobs: prometheus原生Job配置
        # @type RawJobs: Array

        attr_accessor :InstanceId, :ClusterType, :ClusterId, :ServiceMonitors, :PodMonitors, :RawJobs
        
        def initialize(instanceid=nil, clustertype=nil, clusterid=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil)
          @InstanceId = instanceid
          @ClusterType = clustertype
          @ClusterId = clusterid
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
        end
      end

      # CreatePrometheusConfig返回参数结构体
      class CreatePrometheusConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreatePrometheusDashboard请求参数结构体
      class CreatePrometheusDashboardRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DashboardName: 面板组名称
        # @type DashboardName: String
        # @param Contents: 面板列表
        # 每一项是一个grafana dashboard的json定义
        # @type Contents: Array

        attr_accessor :InstanceId, :DashboardName, :Contents
        
        def initialize(instanceid=nil, dashboardname=nil, contents=nil)
          @InstanceId = instanceid
          @DashboardName = dashboardname
          @Contents = contents
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DashboardName = params['DashboardName']
          @Contents = params['Contents']
        end
      end

      # CreatePrometheusDashboard返回参数结构体
      class CreatePrometheusDashboardResponse < TencentCloud::Common::AbstractModel
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

      # CreatePrometheusGlobalNotification请求参数结构体
      class CreatePrometheusGlobalNotificationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Notification: 告警通知渠道
        # @type Notification: :class:`Tencentcloud::Tke.v20180525.models.PrometheusNotificationItem`

        attr_accessor :InstanceId, :Notification
        
        def initialize(instanceid=nil, notification=nil)
          @InstanceId = instanceid
          @Notification = notification
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Notification'].nil?
            @Notification = PrometheusNotificationItem.new
            @Notification.deserialize(params['Notification'])
          end
        end
      end

      # CreatePrometheusGlobalNotification返回参数结构体
      class CreatePrometheusGlobalNotificationResponse < TencentCloud::Common::AbstractModel
        # @param Id: 全局告警通知渠道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId
        
        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheusRecordRuleYaml请求参数结构体
      class CreatePrometheusRecordRuleYamlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Content: yaml的内容
        # @type Content: String

        attr_accessor :InstanceId, :Content
        
        def initialize(instanceid=nil, content=nil)
          @InstanceId = instanceid
          @Content = content
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Content = params['Content']
        end
      end

      # CreatePrometheusRecordRuleYaml返回参数结构体
      class CreatePrometheusRecordRuleYamlResponse < TencentCloud::Common::AbstractModel
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

      # CreatePrometheusTemp请求参数结构体
      class CreatePrometheusTempRequest < TencentCloud::Common::AbstractModel
        # @param Template: 模板设置
        # @type Template: :class:`Tencentcloud::Tke.v20180525.models.PrometheusTemp`

        attr_accessor :Template
        
        def initialize(template=nil)
          @Template = template
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = PrometheusTemp.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # CreatePrometheusTemp返回参数结构体
      class CreatePrometheusTempResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreatePrometheusTemplate请求参数结构体
      class CreatePrometheusTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Template: 模板设置
        # @type Template: :class:`Tencentcloud::Tke.v20180525.models.PrometheusTemplate`

        attr_accessor :Template
        
        def initialize(template=nil)
          @Template = template
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = PrometheusTemplate.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # CreatePrometheusTemplate返回参数结构体
      class CreatePrometheusTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateTKEEdgeCluster请求参数结构体
      class CreateTKEEdgeClusterRequest < TencentCloud::Common::AbstractModel
        # @param K8SVersion: k8s版本号
        # @type K8SVersion: String
        # @param VpcId: vpc 的Id
        # @type VpcId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param PodCIDR: 集群pod cidr
        # @type PodCIDR: String
        # @param ServiceCIDR: 集群service cidr
        # @type ServiceCIDR: String
        # @param ClusterDesc: 集群描述信息
        # @type ClusterDesc: String
        # @param ClusterAdvancedSettings: 集群高级设置
        # @type ClusterAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterAdvancedSettings`
        # @param MaxNodePodNum: 节点上最大Pod数量
        # @type MaxNodePodNum: Integer
        # @param PublicLB: 边缘计算集群公网访问LB信息
        # @type PublicLB: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterPublicLB`
        # @param ClusterLevel: 集群的级别
        # @type ClusterLevel: String
        # @param AutoUpgradeClusterLevel: 集群是否支持自动升配
        # @type AutoUpgradeClusterLevel: Boolean
        # @param ChargeType: 集群计费方式
        # @type ChargeType: String

        attr_accessor :K8SVersion, :VpcId, :ClusterName, :PodCIDR, :ServiceCIDR, :ClusterDesc, :ClusterAdvancedSettings, :MaxNodePodNum, :PublicLB, :ClusterLevel, :AutoUpgradeClusterLevel, :ChargeType
        
        def initialize(k8sversion=nil, vpcid=nil, clustername=nil, podcidr=nil, servicecidr=nil, clusterdesc=nil, clusteradvancedsettings=nil, maxnodepodnum=nil, publiclb=nil, clusterlevel=nil, autoupgradeclusterlevel=nil, chargetype=nil)
          @K8SVersion = k8sversion
          @VpcId = vpcid
          @ClusterName = clustername
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
          @ClusterDesc = clusterdesc
          @ClusterAdvancedSettings = clusteradvancedsettings
          @MaxNodePodNum = maxnodepodnum
          @PublicLB = publiclb
          @ClusterLevel = clusterlevel
          @AutoUpgradeClusterLevel = autoupgradeclusterlevel
          @ChargeType = chargetype
        end

        def deserialize(params)
          @K8SVersion = params['K8SVersion']
          @VpcId = params['VpcId']
          @ClusterName = params['ClusterName']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
          @ClusterDesc = params['ClusterDesc']
          unless params['ClusterAdvancedSettings'].nil?
            @ClusterAdvancedSettings = EdgeClusterAdvancedSettings.new
            @ClusterAdvancedSettings.deserialize(params['ClusterAdvancedSettings'])
          end
          @MaxNodePodNum = params['MaxNodePodNum']
          unless params['PublicLB'].nil?
            @PublicLB = EdgeClusterPublicLB.new
            @PublicLB.deserialize(params['PublicLB'])
          end
          @ClusterLevel = params['ClusterLevel']
          @AutoUpgradeClusterLevel = params['AutoUpgradeClusterLevel']
          @ChargeType = params['ChargeType']
        end
      end

      # CreateTKEEdgeCluster返回参数结构体
      class CreateTKEEdgeClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 边缘计算集群Id
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

      # 自定义驱动信息
      class CustomDriver < TencentCloud::Common::AbstractModel
        # @param Address: 自定义GPU驱动地址链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String

        attr_accessor :Address
        
        def initialize(address=nil)
          @Address = address
        end

        def deserialize(params)
          @Address = params['Address']
        end
      end

      # 自定义DNS配置
      class DNSConfig < TencentCloud::Common::AbstractModel
        # @param Nameservers: DNS 服务器IP地址列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nameservers: Array
        # @param Searches: DNS搜索域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Searches: Array
        # @param Options: 对象选项列表，每个对象由name和value（可选）构成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Options: Array

        attr_accessor :Nameservers, :Searches, :Options
        
        def initialize(nameservers=nil, searches=nil, options=nil)
          @Nameservers = nameservers
          @Searches = searches
          @Options = options
        end

        def deserialize(params)
          @Nameservers = params['Nameservers']
          @Searches = params['Searches']
          unless params['Options'].nil?
            @Options = []
            params['Options'].each do |i|
              dnsconfigoption_tmp = DNSConfigOption.new
              dnsconfigoption_tmp.deserialize(i)
              @Options << dnsconfigoption_tmp
            end
          end
        end
      end

      # DNS配置选项
      class DNSConfigOption < TencentCloud::Common::AbstractModel
        # @param Name: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 项值
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param DiskPartition: 挂载设备名或分区名，当且仅当添加已有节点时需要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskPartition: String

        attr_accessor :DiskType, :FileSystem, :DiskSize, :AutoFormatAndMount, :MountTarget, :DiskPartition
        
        def initialize(disktype=nil, filesystem=nil, disksize=nil, autoformatandmount=nil, mounttarget=nil, diskpartition=nil)
          @DiskType = disktype
          @FileSystem = filesystem
          @DiskSize = disksize
          @AutoFormatAndMount = autoformatandmount
          @MountTarget = mounttarget
          @DiskPartition = diskpartition
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @FileSystem = params['FileSystem']
          @DiskSize = params['DiskSize']
          @AutoFormatAndMount = params['AutoFormatAndMount']
          @MountTarget = params['MountTarget']
          @DiskPartition = params['DiskPartition']
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

      # DeleteClusterNodePool请求参数结构体
      class DeleteClusterNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 节点池对应的 ClusterId
        # @type ClusterId: String
        # @param NodePoolIds: 需要删除的节点池 Id 列表
        # @type NodePoolIds: Array
        # @param KeepInstance: 删除节点池时是否保留节点池内节点(节点仍然会被移出集群，但对应的实例不会被销毁)
        # @type KeepInstance: Boolean

        attr_accessor :ClusterId, :NodePoolIds, :KeepInstance
        
        def initialize(clusterid=nil, nodepoolids=nil, keepinstance=nil)
          @ClusterId = clusterid
          @NodePoolIds = nodepoolids
          @KeepInstance = keepinstance
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolIds = params['NodePoolIds']
          @KeepInstance = params['KeepInstance']
        end
      end

      # DeleteClusterNodePool返回参数结构体
      class DeleteClusterNodePoolResponse < TencentCloud::Common::AbstractModel
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
          unless params['ResourceDeleteOptions'].nil?
            @ResourceDeleteOptions = []
            params['ResourceDeleteOptions'].each do |i|
              resourcedeleteoption_tmp = ResourceDeleteOption.new
              resourcedeleteoption_tmp.deserialize(i)
              @ResourceDeleteOptions << resourcedeleteoption_tmp
            end
          end
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

      # DeleteECMInstances请求参数结构体
      class DeleteECMInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param EcmIdSet: ecm id集合
        # @type EcmIdSet: Array

        attr_accessor :ClusterID, :EcmIdSet
        
        def initialize(clusterid=nil, ecmidset=nil)
          @ClusterID = clusterid
          @EcmIdSet = ecmidset
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @EcmIdSet = params['EcmIdSet']
        end
      end

      # DeleteECMInstances返回参数结构体
      class DeleteECMInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEKSCluster请求参数结构体
      class DeleteEKSClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 弹性集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteEKSCluster返回参数结构体
      class DeleteEKSClusterResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEKSContainerInstances请求参数结构体
      class DeleteEKSContainerInstancesRequest < TencentCloud::Common::AbstractModel
        # @param EksCiIds: 需要删除的EksCi的Id。 最大数量不超过20
        # @type EksCiIds: Array
        # @param ReleaseAutoCreatedEip: 是否释放为EksCi自动创建的Eip
        # @type ReleaseAutoCreatedEip: Boolean

        attr_accessor :EksCiIds, :ReleaseAutoCreatedEip
        
        def initialize(eksciids=nil, releaseautocreatedeip=nil)
          @EksCiIds = eksciids
          @ReleaseAutoCreatedEip = releaseautocreatedeip
        end

        def deserialize(params)
          @EksCiIds = params['EksCiIds']
          @ReleaseAutoCreatedEip = params['ReleaseAutoCreatedEip']
        end
      end

      # DeleteEKSContainerInstances返回参数结构体
      class DeleteEKSContainerInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeCVMInstances请求参数结构体
      class DeleteEdgeCVMInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param CvmIdSet: cvm id集合
        # @type CvmIdSet: Array

        attr_accessor :ClusterID, :CvmIdSet
        
        def initialize(clusterid=nil, cvmidset=nil)
          @ClusterID = clusterid
          @CvmIdSet = cvmidset
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @CvmIdSet = params['CvmIdSet']
        end
      end

      # DeleteEdgeCVMInstances返回参数结构体
      class DeleteEdgeCVMInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeClusterInstances请求参数结构体
      class DeleteEdgeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 待删除实例ID数组
        # @type InstanceIds: Array

        attr_accessor :ClusterId, :InstanceIds
        
        def initialize(clusterid=nil, instanceids=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DeleteEdgeClusterInstances返回参数结构体
      class DeleteEdgeClusterInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageCaches请求参数结构体
      class DeleteImageCachesRequest < TencentCloud::Common::AbstractModel
        # @param ImageCacheIds: 镜像缓存Id数组
        # @type ImageCacheIds: Array

        attr_accessor :ImageCacheIds
        
        def initialize(imagecacheids=nil)
          @ImageCacheIds = imagecacheids
        end

        def deserialize(params)
          @ImageCacheIds = params['ImageCacheIds']
        end
      end

      # DeleteImageCaches返回参数结构体
      class DeleteImageCachesResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusAlertPolicy请求参数结构体
      class DeletePrometheusAlertPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AlertIds: 告警策略id列表
        # @type AlertIds: Array
        # @param Names: 告警策略名称
        # @type Names: Array

        attr_accessor :InstanceId, :AlertIds, :Names
        
        def initialize(instanceid=nil, alertids=nil, names=nil)
          @InstanceId = instanceid
          @AlertIds = alertids
          @Names = names
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AlertIds = params['AlertIds']
          @Names = params['Names']
        end
      end

      # DeletePrometheusAlertPolicy返回参数结构体
      class DeletePrometheusAlertPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusAlertRule请求参数结构体
      class DeletePrometheusAlertRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AlertIds: 告警规则id列表
        # @type AlertIds: Array

        attr_accessor :InstanceId, :AlertIds
        
        def initialize(instanceid=nil, alertids=nil)
          @InstanceId = instanceid
          @AlertIds = alertids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AlertIds = params['AlertIds']
        end
      end

      # DeletePrometheusAlertRule返回参数结构体
      class DeletePrometheusAlertRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusClusterAgent请求参数结构体
      class DeletePrometheusClusterAgentRequest < TencentCloud::Common::AbstractModel
        # @param Agents: agent列表
        # @type Agents: Array
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :Agents, :InstanceId
        
        def initialize(agents=nil, instanceid=nil)
          @Agents = agents
          @InstanceId = instanceid
        end

        def deserialize(params)
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              prometheusagentinfo_tmp = PrometheusAgentInfo.new
              prometheusagentinfo_tmp.deserialize(i)
              @Agents << prometheusagentinfo_tmp
            end
          end
          @InstanceId = params['InstanceId']
        end
      end

      # DeletePrometheusClusterAgent返回参数结构体
      class DeletePrometheusClusterAgentResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusConfig请求参数结构体
      class DeletePrometheusConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ServiceMonitors: 要删除的ServiceMonitor名字列表
        # @type ServiceMonitors: Array
        # @param PodMonitors: 要删除的PodMonitor名字列表
        # @type PodMonitors: Array
        # @param RawJobs: 要删除的RawJobs名字列表
        # @type RawJobs: Array

        attr_accessor :InstanceId, :ClusterType, :ClusterId, :ServiceMonitors, :PodMonitors, :RawJobs
        
        def initialize(instanceid=nil, clustertype=nil, clusterid=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil)
          @InstanceId = instanceid
          @ClusterType = clustertype
          @ClusterId = clusterid
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @ServiceMonitors = params['ServiceMonitors']
          @PodMonitors = params['PodMonitors']
          @RawJobs = params['RawJobs']
        end
      end

      # DeletePrometheusConfig返回参数结构体
      class DeletePrometheusConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusRecordRuleYaml请求参数结构体
      class DeletePrometheusRecordRuleYamlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Names: 聚合规则列表
        # @type Names: Array

        attr_accessor :InstanceId, :Names
        
        def initialize(instanceid=nil, names=nil)
          @InstanceId = instanceid
          @Names = names
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Names = params['Names']
        end
      end

      # DeletePrometheusRecordRuleYaml返回参数结构体
      class DeletePrometheusRecordRuleYamlResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusTemp请求参数结构体
      class DeletePrometheusTempRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeletePrometheusTemp返回参数结构体
      class DeletePrometheusTempResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusTempSync请求参数结构体
      class DeletePrometheusTempSyncRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param Targets: 取消同步的对象列表
        # @type Targets: Array

        attr_accessor :TemplateId, :Targets
        
        def initialize(templateid=nil, targets=nil)
          @TemplateId = templateid
          @Targets = targets
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustemplatesynctarget_tmp = PrometheusTemplateSyncTarget.new
              prometheustemplatesynctarget_tmp.deserialize(i)
              @Targets << prometheustemplatesynctarget_tmp
            end
          end
        end
      end

      # DeletePrometheusTempSync返回参数结构体
      class DeletePrometheusTempSyncResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusTemplate请求参数结构体
      class DeletePrometheusTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeletePrometheusTemplate返回参数结构体
      class DeletePrometheusTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrometheusTemplateSync请求参数结构体
      class DeletePrometheusTemplateSyncRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param Targets: 取消同步的对象列表
        # @type Targets: Array

        attr_accessor :TemplateId, :Targets
        
        def initialize(templateid=nil, targets=nil)
          @TemplateId = templateid
          @Targets = targets
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustemplatesynctarget_tmp = PrometheusTemplateSyncTarget.new
              prometheustemplatesynctarget_tmp.deserialize(i)
              @Targets << prometheustemplatesynctarget_tmp
            end
          end
        end
      end

      # DeletePrometheusTemplateSync返回参数结构体
      class DeletePrometheusTemplateSyncResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTKEEdgeCluster请求参数结构体
      class DeleteTKEEdgeClusterRequest < TencentCloud::Common::AbstractModel
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

      # DeleteTKEEdgeCluster返回参数结构体
      class DeleteTKEEdgeClusterResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAvailableClusterVersion请求参数结构体
      class DescribeAvailableClusterVersionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 Id
        # @type ClusterId: String
        # @param ClusterIds: 集群 Id 列表
        # @type ClusterIds: Array

        attr_accessor :ClusterId, :ClusterIds
        
        def initialize(clusterid=nil, clusterids=nil)
          @ClusterId = clusterid
          @ClusterIds = clusterids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterIds = params['ClusterIds']
        end
      end

      # DescribeAvailableClusterVersion返回参数结构体
      class DescribeAvailableClusterVersionResponse < TencentCloud::Common::AbstractModel
        # @param Versions: 可升级的集群版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param Clusters: 集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clusters: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Versions, :Clusters, :RequestId
        
        def initialize(versions=nil, clusters=nil, requestid=nil)
          @Versions = versions
          @Clusters = clusters
          @RequestId = requestid
        end

        def deserialize(params)
          @Versions = params['Versions']
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              clusterversion_tmp = ClusterVersion.new
              clusterversion_tmp.deserialize(i)
              @Clusters << clusterversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailableTKEEdgeVersion请求参数结构体
      class DescribeAvailableTKEEdgeVersionRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAvailableTKEEdgeVersion返回参数结构体
      class DescribeAvailableTKEEdgeVersionResponse < TencentCloud::Common::AbstractModel
        # @param Versions: 版本列表
        # @type Versions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Versions, :RequestId
        
        def initialize(versions=nil, requestid=nil)
          @Versions = versions
          @RequestId = requestid
        end

        def deserialize(params)
          @Versions = params['Versions']
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
            @ClusterAsGroupOption = ClusterAsGroupOption.new
            @ClusterAsGroupOption.deserialize(params['ClusterAsGroupOption'])
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
          unless params['ClusterAsGroupSet'].nil?
            @ClusterAsGroupSet = []
            params['ClusterAsGroupSet'].each do |i|
              clusterasgroup_tmp = ClusterAsGroup.new
              clusterasgroup_tmp.deserialize(i)
              @ClusterAsGroupSet << clusterasgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterAuthenticationOptions请求参数结构体
      class DescribeClusterAuthenticationOptionsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterAuthenticationOptions返回参数结构体
      class DescribeClusterAuthenticationOptionsResponse < TencentCloud::Common::AbstractModel
        # @param ServiceAccounts: ServiceAccount认证配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceAccounts: :class:`Tencentcloud::Tke.v20180525.models.ServiceAccountAuthenticationOptions`
        # @param LatestOperationState: 最近一次修改操作结果，返回值可能为：Updating，Success，Failed，TimeOut
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationState: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceAccounts, :LatestOperationState, :RequestId
        
        def initialize(serviceaccounts=nil, latestoperationstate=nil, requestid=nil)
          @ServiceAccounts = serviceaccounts
          @LatestOperationState = latestoperationstate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceAccounts'].nil?
            @ServiceAccounts = ServiceAccountAuthenticationOptions.new
            @ServiceAccounts.deserialize(params['ServiceAccounts'])
          end
          @LatestOperationState = params['LatestOperationState']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterCommonNames请求参数结构体
      class DescribeClusterCommonNamesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SubaccountUins: 子账户列表，不可超出最大值50
        # @type SubaccountUins: Array
        # @param RoleIds: 角色ID列表，不可超出最大值50
        # @type RoleIds: Array

        attr_accessor :ClusterId, :SubaccountUins, :RoleIds
        
        def initialize(clusterid=nil, subaccountuins=nil, roleids=nil)
          @ClusterId = clusterid
          @SubaccountUins = subaccountuins
          @RoleIds = roleids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SubaccountUins = params['SubaccountUins']
          @RoleIds = params['RoleIds']
        end
      end

      # DescribeClusterCommonNames返回参数结构体
      class DescribeClusterCommonNamesResponse < TencentCloud::Common::AbstractModel
        # @param CommonNames: 子账户Uin与其客户端证书的CN字段映射
        # @type CommonNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommonNames, :RequestId
        
        def initialize(commonnames=nil, requestid=nil)
          @CommonNames = commonnames
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CommonNames'].nil?
            @CommonNames = []
            params['CommonNames'].each do |i|
              commonname_tmp = CommonName.new
              commonname_tmp.deserialize(i)
              @CommonNames << commonname_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterControllers请求参数结构体
      class DescribeClusterControllersRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterControllers返回参数结构体
      class DescribeClusterControllersResponse < TencentCloud::Common::AbstractModel
        # @param ControllerStatusSet: 描述集群中各个控制器的状态
        # @type ControllerStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ControllerStatusSet, :RequestId
        
        def initialize(controllerstatusset=nil, requestid=nil)
          @ControllerStatusSet = controllerstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ControllerStatusSet'].nil?
            @ControllerStatusSet = []
            params['ControllerStatusSet'].each do |i|
              controllerstatus_tmp = ControllerStatus.new
              controllerstatus_tmp.deserialize(i)
              @ControllerStatusSet << controllerstatus_tmp
            end
          end
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
        # @param Status: 查询集群访问端口状态（Created 开启成功，Creating 开启中，NotFound 未开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrorMsg: 开启访问入口失败信息
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

      # DescribeClusterEndpoints请求参数结构体
      class DescribeClusterEndpointsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterEndpoints返回参数结构体
      class DescribeClusterEndpointsResponse < TencentCloud::Common::AbstractModel
        # @param CertificationAuthority: 集群APIServer的CA证书
        # @type CertificationAuthority: String
        # @param ClusterExternalEndpoint: 集群APIServer的外网访问地址
        # @type ClusterExternalEndpoint: String
        # @param ClusterIntranetEndpoint: 集群APIServer的内网访问地址
        # @type ClusterIntranetEndpoint: String
        # @param ClusterDomain: 集群APIServer的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDomain: String
        # @param ClusterExternalACL: 集群APIServer的外网访问ACL列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterExternalACL: Array
        # @param ClusterExternalDomain: 外网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterExternalDomain: String
        # @param ClusterIntranetDomain: 内网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIntranetDomain: String
        # @param SecurityGroup: 外网安全组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroup: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificationAuthority, :ClusterExternalEndpoint, :ClusterIntranetEndpoint, :ClusterDomain, :ClusterExternalACL, :ClusterExternalDomain, :ClusterIntranetDomain, :SecurityGroup, :RequestId
        
        def initialize(certificationauthority=nil, clusterexternalendpoint=nil, clusterintranetendpoint=nil, clusterdomain=nil, clusterexternalacl=nil, clusterexternaldomain=nil, clusterintranetdomain=nil, securitygroup=nil, requestid=nil)
          @CertificationAuthority = certificationauthority
          @ClusterExternalEndpoint = clusterexternalendpoint
          @ClusterIntranetEndpoint = clusterintranetendpoint
          @ClusterDomain = clusterdomain
          @ClusterExternalACL = clusterexternalacl
          @ClusterExternalDomain = clusterexternaldomain
          @ClusterIntranetDomain = clusterintranetdomain
          @SecurityGroup = securitygroup
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificationAuthority = params['CertificationAuthority']
          @ClusterExternalEndpoint = params['ClusterExternalEndpoint']
          @ClusterIntranetEndpoint = params['ClusterIntranetEndpoint']
          @ClusterDomain = params['ClusterDomain']
          @ClusterExternalACL = params['ClusterExternalACL']
          @ClusterExternalDomain = params['ClusterExternalDomain']
          @ClusterIntranetDomain = params['ClusterIntranetDomain']
          @SecurityGroup = params['SecurityGroup']
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
        # @param Filters: 过滤条件列表；Name的可选值为nodepool-id、nodepool-instance-type；Name为nodepool-id表示根据节点池id过滤机器，Value的值为具体的节点池id，Name为nodepool-instance-type表示节点加入节点池的方式，Value的值为MANUALLY_ADDED（手动加入节点池）、AUTOSCALING_ADDED（伸缩组扩容方式加入节点池）、ALL（手动加入节点池 和 伸缩组扩容方式加入节点池）
        # @type Filters: Array

        attr_accessor :ClusterId, :Offset, :Limit, :InstanceIds, :InstanceRole, :Filters
        
        def initialize(clusterid=nil, offset=nil, limit=nil, instanceids=nil, instancerole=nil, filters=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @InstanceIds = instanceids
          @InstanceRole = instancerole
          @Filters = filters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIds = params['InstanceIds']
          @InstanceRole = params['InstanceRole']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
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
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterKubeconfig请求参数结构体
      class DescribeClusterKubeconfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param IsExtranet: 默认false 获取内网，是否获取外网访问的kubeconfig
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

      # DescribeClusterKubeconfig返回参数结构体
      class DescribeClusterKubeconfigResponse < TencentCloud::Common::AbstractModel
        # @param Kubeconfig: 子账户kubeconfig文件，可用于直接访问集群kube-apiserver
        # @type Kubeconfig: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Kubeconfig, :RequestId
        
        def initialize(kubeconfig=nil, requestid=nil)
          @Kubeconfig = kubeconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @Kubeconfig = params['Kubeconfig']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterLevelAttribute请求参数结构体
      class DescribeClusterLevelAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群ID，变配时使用
        # @type ClusterID: String

        attr_accessor :ClusterID
        
        def initialize(clusterid=nil)
          @ClusterID = clusterid
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
        end
      end

      # DescribeClusterLevelAttribute返回参数结构体
      class DescribeClusterLevelAttributeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Items: 集群规模
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              clusterlevelattribute_tmp = ClusterLevelAttribute.new
              clusterlevelattribute_tmp.deserialize(i)
              @Items << clusterlevelattribute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterLevelChangeRecords请求参数结构体
      class DescribeClusterLevelChangeRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param StartAt: 开始时间
        # @type StartAt: String
        # @param EndAt: 结束时间
        # @type EndAt: String
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20
        # @type Limit: Integer

        attr_accessor :ClusterID, :StartAt, :EndAt, :Offset, :Limit
        
        def initialize(clusterid=nil, startat=nil, endat=nil, offset=nil, limit=nil)
          @ClusterID = clusterid
          @StartAt = startat
          @EndAt = endat
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @StartAt = params['StartAt']
          @EndAt = params['EndAt']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusterLevelChangeRecords返回参数结构体
      class DescribeClusterLevelChangeRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Items: 集群规模
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              clusterlevelchangerecord_tmp = ClusterLevelChangeRecord.new
              clusterlevelchangerecord_tmp.deserialize(i)
              @Items << clusterlevelchangerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterNodePoolDetail请求参数结构体
      class DescribeClusterNodePoolDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NodePoolId: 节点池id
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

      # DescribeClusterNodePoolDetail返回参数结构体
      class DescribeClusterNodePoolDetailResponse < TencentCloud::Common::AbstractModel
        # @param NodePool: 节点池详情
        # @type NodePool: :class:`Tencentcloud::Tke.v20180525.models.NodePool`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodePool, :RequestId
        
        def initialize(nodepool=nil, requestid=nil)
          @NodePool = nodepool
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodePool'].nil?
            @NodePool = NodePool.new
            @NodePool.deserialize(params['NodePool'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterNodePools请求参数结构体
      class DescribeClusterNodePoolsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: ClusterId（集群id）
        # @type ClusterId: String
        # @param Filters: ·  NodePoolsName
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

        attr_accessor :ClusterId, :Filters
        
        def initialize(clusterid=nil, filters=nil)
          @ClusterId = clusterid
          @Filters = filters
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
        end
      end

      # DescribeClusterNodePools返回参数结构体
      class DescribeClusterNodePoolsResponse < TencentCloud::Common::AbstractModel
        # @param NodePoolSet: NodePools（节点池列表）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePoolSet: Array
        # @param TotalCount: 资源总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodePoolSet, :TotalCount, :RequestId
        
        def initialize(nodepoolset=nil, totalcount=nil, requestid=nil)
          @NodePoolSet = nodepoolset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodePoolSet'].nil?
            @NodePoolSet = []
            params['NodePoolSet'].each do |i|
              nodepool_tmp = NodePool.new
              nodepool_tmp.deserialize(i)
              @NodePoolSet << nodepool_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
          unless params['RouteTableSet'].nil?
            @RouteTableSet = []
            params['RouteTableSet'].each do |i|
              routetableinfo_tmp = RouteTableInfo.new
              routetableinfo_tmp.deserialize(i)
              @RouteTableSet << routetableinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterRoutes请求参数结构体
      class DescribeClusterRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param Filters: 过滤条件,当前只支持按照单个条件GatewayIP进行过滤（可选）
        # @type Filters: Array

        attr_accessor :RouteTableName, :Filters
        
        def initialize(routetablename=nil, filters=nil)
          @RouteTableName = routetablename
          @Filters = filters
        end

        def deserialize(params)
          @RouteTableName = params['RouteTableName']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
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
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              routeinfo_tmp = RouteInfo.new
              routeinfo_tmp.deserialize(i)
              @RouteSet << routeinfo_tmp
            end
          end
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

      # DescribeClusterStatus请求参数结构体
      class DescribeClusterStatusRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表，不传默认拉取所有集群
        # @type ClusterIds: Array

        attr_accessor :ClusterIds
        
        def initialize(clusterids=nil)
          @ClusterIds = clusterids
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
        end
      end

      # DescribeClusterStatus返回参数结构体
      class DescribeClusterStatusResponse < TencentCloud::Common::AbstractModel
        # @param ClusterStatusSet: 集群状态列表
        # @type ClusterStatusSet: Array
        # @param TotalCount: 集群个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterStatusSet, :TotalCount, :RequestId
        
        def initialize(clusterstatusset=nil, totalcount=nil, requestid=nil)
          @ClusterStatusSet = clusterstatusset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterStatusSet'].nil?
            @ClusterStatusSet = []
            params['ClusterStatusSet'].each do |i|
              clusterstatus_tmp = ClusterStatus.new
              clusterstatus_tmp.deserialize(i)
              @ClusterStatusSet << clusterstatus_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param Filters: ·  ClusterName
        #     按照【集群名】进行过滤。
        #     类型：String
        #     必选：否

        # ·  ClusterType
        #     按照【集群类型】进行过滤。
        #     类型：String
        #     必选：否

        # ·  ClusterStatus
        #     按照【集群状态】进行过滤。
        #     类型：String
        #     必选：否

        # ·  Tags
        #     按照【标签键值对】进行过滤。
        #     类型：String
        #     必选：否

        # ·  vpc-id
        #     按照【VPC】进行过滤。
        #     类型：String
        #     必选：否

        # ·  tag-key
        #     按照【标签键】进行过滤。
        #     类型：String
        #     必选：否

        # ·  tag-value
        #     按照【标签值】进行过滤。
        #     类型：String
        #     必选：否

        # ·  tag:tag-key
        #     按照【标签键值对】进行过滤。
        #     类型：String
        #     必选：否
        # @type Filters: Array
        # @param ClusterType: 集群类型，例如：MANAGED_CLUSTER
        # @type ClusterType: String

        attr_accessor :ClusterIds, :Offset, :Limit, :Filters, :ClusterType
        
        def initialize(clusterids=nil, offset=nil, limit=nil, filters=nil, clustertype=nil)
          @ClusterIds = clusterids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ClusterType = clustertype
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
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
          @ClusterType = params['ClusterType']
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
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @Clusters << cluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeECMInstances请求参数结构体
      class DescribeECMInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群id
        # @type ClusterID: String
        # @param Filters: 过滤条件
        # 仅支持ecm-id过滤
        # @type Filters: Array

        attr_accessor :ClusterID, :Filters
        
        def initialize(clusterid=nil, filters=nil)
          @ClusterID = clusterid
          @Filters = filters
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeECMInstances返回参数结构体
      class DescribeECMInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的实例相关信息列表的长度
        # @type TotalCount: Integer
        # @param InstanceInfoSet: 返回的实例相关信息列表
        # @type InstanceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceInfoSet, :RequestId
        
        def initialize(totalcount=nil, instanceinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceInfoSet = instanceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceInfoSet = params['InstanceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEKSClusterCredential请求参数结构体
      class DescribeEKSClusterCredentialRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeEKSClusterCredential返回参数结构体
      class DescribeEKSClusterCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Addresses: 集群的接入地址信息
        # @type Addresses: Array
        # @param Credential: 集群的认证信息（token只有请求是主账号才返回，子账户请使用返回的kubeconfig）
        # @type Credential: :class:`Tencentcloud::Tke.v20180525.models.ClusterCredential`
        # @param PublicLB: 集群的公网访问信息
        # @type PublicLB: :class:`Tencentcloud::Tke.v20180525.models.ClusterPublicLB`
        # @param InternalLB: 集群的内网访问信息
        # @type InternalLB: :class:`Tencentcloud::Tke.v20180525.models.ClusterInternalLB`
        # @param ProxyLB: 标记是否新的内外网功能
        # @type ProxyLB: Boolean
        # @param Kubeconfig: 连接用户集群k8s 的Config
        # @type Kubeconfig: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Addresses, :Credential, :PublicLB, :InternalLB, :ProxyLB, :Kubeconfig, :RequestId
        
        def initialize(addresses=nil, credential=nil, publiclb=nil, internallb=nil, proxylb=nil, kubeconfig=nil, requestid=nil)
          @Addresses = addresses
          @Credential = credential
          @PublicLB = publiclb
          @InternalLB = internallb
          @ProxyLB = proxylb
          @Kubeconfig = kubeconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Addresses'].nil?
            @Addresses = []
            params['Addresses'].each do |i|
              ipaddress_tmp = IPAddress.new
              ipaddress_tmp.deserialize(i)
              @Addresses << ipaddress_tmp
            end
          end
          unless params['Credential'].nil?
            @Credential = ClusterCredential.new
            @Credential.deserialize(params['Credential'])
          end
          unless params['PublicLB'].nil?
            @PublicLB = ClusterPublicLB.new
            @PublicLB.deserialize(params['PublicLB'])
          end
          unless params['InternalLB'].nil?
            @InternalLB = ClusterInternalLB.new
            @InternalLB.deserialize(params['InternalLB'])
          end
          @ProxyLB = params['ProxyLB']
          @Kubeconfig = params['Kubeconfig']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEKSClusters请求参数结构体
      class DescribeEKSClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表(为空时，
        # 表示获取账号下所有集群)
        # @type ClusterIds: Array
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20
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
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeEKSClusters返回参数结构体
      class DescribeEKSClustersResponse < TencentCloud::Common::AbstractModel
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
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              ekscluster_tmp = EksCluster.new
              ekscluster_tmp.deserialize(i)
              @Clusters << ekscluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEKSContainerInstanceEvent请求参数结构体
      class DescribeEKSContainerInstanceEventRequest < TencentCloud::Common::AbstractModel
        # @param EksCiId: 容器实例id
        # @type EksCiId: String
        # @param Limit: 最大事件数量。默认为50，最大取值100。
        # @type Limit: Integer

        attr_accessor :EksCiId, :Limit
        
        def initialize(eksciid=nil, limit=nil)
          @EksCiId = eksciid
          @Limit = limit
        end

        def deserialize(params)
          @EksCiId = params['EksCiId']
          @Limit = params['Limit']
        end
      end

      # DescribeEKSContainerInstanceEvent返回参数结构体
      class DescribeEKSContainerInstanceEventResponse < TencentCloud::Common::AbstractModel
        # @param Events: 事件集合
        # @type Events: Array
        # @param EksCiId: 容器实例id
        # @type EksCiId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :EksCiId, :RequestId
        
        def initialize(events=nil, eksciid=nil, requestid=nil)
          @Events = events
          @EksCiId = eksciid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @Events << event_tmp
            end
          end
          @EksCiId = params['EksCiId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEKSContainerInstanceRegions请求参数结构体
      class DescribeEKSContainerInstanceRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEKSContainerInstanceRegions返回参数结构体
      class DescribeEKSContainerInstanceRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Regions: EKS Container Instance支持的地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regions: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Regions, :TotalCount, :RequestId
        
        def initialize(regions=nil, totalcount=nil, requestid=nil)
          @Regions = regions
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Regions'].nil?
            @Regions = []
            params['Regions'].each do |i|
              eksciregioninfo_tmp = EksCiRegionInfo.new
              eksciregioninfo_tmp.deserialize(i)
              @Regions << eksciregioninfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEKSContainerInstances请求参数结构体
      class DescribeEKSContainerInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 限定此次返回资源的数量。如果不设定，默认返回20，最大不能超过100
        # @type Limit: Integer
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Filters: 过滤条件，可条件：
        # (1)实例名称
        # KeyName: eks-ci-name
        # 类型：String

        # (2)实例状态
        # KeyName: status
        # 类型：String
        # 可选值："Pending", "Running", "Succeeded", "Failed"

        # (3)内网ip
        # KeyName: private-ip
        # 类型：String

        # (4)EIP地址
        # KeyName: eip-address
        # 类型：String

        # (5)VpcId
        # KeyName: vpc-id
        # 类型：String
        # @type Filters: Array
        # @param EksCiIds: 容器实例 ID 数组
        # @type EksCiIds: Array

        attr_accessor :Limit, :Offset, :Filters, :EksCiIds
        
        def initialize(limit=nil, offset=nil, filters=nil, eksciids=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @EksCiIds = eksciids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @EksCiIds = params['EksCiIds']
        end
      end

      # DescribeEKSContainerInstances返回参数结构体
      class DescribeEKSContainerInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 容器组总数
        # @type TotalCount: Integer
        # @param EksCis: 容器组列表
        # @type EksCis: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EksCis, :RequestId
        
        def initialize(totalcount=nil, ekscis=nil, requestid=nil)
          @TotalCount = totalcount
          @EksCis = ekscis
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EksCis'].nil?
            @EksCis = []
            params['EksCis'].each do |i|
              eksci_tmp = EksCi.new
              eksci_tmp.deserialize(i)
              @EksCis << eksci_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeAvailableExtraArgs请求参数结构体
      class DescribeEdgeAvailableExtraArgsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterVersion: 集群版本
        # @type ClusterVersion: String

        attr_accessor :ClusterVersion
        
        def initialize(clusterversion=nil)
          @ClusterVersion = clusterversion
        end

        def deserialize(params)
          @ClusterVersion = params['ClusterVersion']
        end
      end

      # DescribeEdgeAvailableExtraArgs返回参数结构体
      class DescribeEdgeAvailableExtraArgsResponse < TencentCloud::Common::AbstractModel
        # @param ClusterVersion: 集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterVersion: String
        # @param AvailableExtraArgs: 可用的自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.EdgeAvailableExtraArgs`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterVersion, :AvailableExtraArgs, :RequestId
        
        def initialize(clusterversion=nil, availableextraargs=nil, requestid=nil)
          @ClusterVersion = clusterversion
          @AvailableExtraArgs = availableextraargs
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterVersion = params['ClusterVersion']
          unless params['AvailableExtraArgs'].nil?
            @AvailableExtraArgs = EdgeAvailableExtraArgs.new
            @AvailableExtraArgs.deserialize(params['AvailableExtraArgs'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeCVMInstances请求参数结构体
      class DescribeEdgeCVMInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群id
        # @type ClusterID: String
        # @param Filters: 过滤条件
        # 仅支持cvm-id过滤
        # @type Filters: Array

        attr_accessor :ClusterID, :Filters
        
        def initialize(clusterid=nil, filters=nil)
          @ClusterID = clusterid
          @Filters = filters
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeEdgeCVMInstances返回参数结构体
      class DescribeEdgeCVMInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的实例相关信息列表的长度
        # @type TotalCount: Integer
        # @param InstanceInfoSet: 返回的实例相关信息列表
        # @type InstanceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceInfoSet, :RequestId
        
        def initialize(totalcount=nil, instanceinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceInfoSet = instanceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceInfoSet = params['InstanceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeClusterExtraArgs请求参数结构体
      class DescribeEdgeClusterExtraArgsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeEdgeClusterExtraArgs返回参数结构体
      class DescribeEdgeClusterExtraArgsResponse < TencentCloud::Common::AbstractModel
        # @param ClusterExtraArgs: 集群自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterExtraArgs`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterExtraArgs, :RequestId
        
        def initialize(clusterextraargs=nil, requestid=nil)
          @ClusterExtraArgs = clusterextraargs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterExtraArgs'].nil?
            @ClusterExtraArgs = EdgeClusterExtraArgs.new
            @ClusterExtraArgs.deserialize(params['ClusterExtraArgs'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeClusterInstances请求参数结构体
      class DescribeEdgeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群id
        # @type ClusterID: String
        # @param Limit: 查询总数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Filters: 过滤条件，仅支持NodeName过滤
        # @type Filters: Array

        attr_accessor :ClusterID, :Limit, :Offset, :Filters
        
        def initialize(clusterid=nil, limit=nil, offset=nil, filters=nil)
          @ClusterID = clusterid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeEdgeClusterInstances返回参数结构体
      class DescribeEdgeClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该集群总数
        # @type TotalCount: Integer
        # @param InstanceInfoSet: 节点信息集合
        # @type InstanceInfoSet: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceInfoSet, :RequestId
        
        def initialize(totalcount=nil, instanceinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceInfoSet = instanceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceInfoSet = params['InstanceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeLogSwitches请求参数结构体
      class DescribeEdgeLogSwitchesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表
        # @type ClusterIds: Array

        attr_accessor :ClusterIds
        
        def initialize(clusterids=nil)
          @ClusterIds = clusterids
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
        end
      end

      # DescribeEdgeLogSwitches返回参数结构体
      class DescribeEdgeLogSwitchesResponse < TencentCloud::Common::AbstractModel
        # @param SwitchSet: 集群日志开关集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SwitchSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SwitchSet, :RequestId
        
        def initialize(switchset=nil, requestid=nil)
          @SwitchSet = switchset
          @RequestId = requestid
        end

        def deserialize(params)
          @SwitchSet = params['SwitchSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEksContainerInstanceLog请求参数结构体
      class DescribeEksContainerInstanceLogRequest < TencentCloud::Common::AbstractModel
        # @param EksCiId: Eks Container Instance Id，即容器实例Id
        # @type EksCiId: String
        # @param ContainerName: 容器名称，单容器的实例可选填。如果为多容器实例，请指定容器名称。
        # @type ContainerName: String
        # @param Tail: 返回最新日志行数，默认500，最大2000。日志内容最大返回 1M 数据。
        # @type Tail: Integer
        # @param StartTime: UTC时间，RFC3339标准
        # @type StartTime: String
        # @param Previous: 是否是查上一个容器（如果容器退出重启了）
        # @type Previous: Boolean
        # @param SinceSeconds: 查询最近多少秒内的日志
        # @type SinceSeconds: Integer
        # @param LimitBytes: 日志总大小限制
        # @type LimitBytes: Integer

        attr_accessor :EksCiId, :ContainerName, :Tail, :StartTime, :Previous, :SinceSeconds, :LimitBytes
        
        def initialize(eksciid=nil, containername=nil, tail=nil, starttime=nil, previous=nil, sinceseconds=nil, limitbytes=nil)
          @EksCiId = eksciid
          @ContainerName = containername
          @Tail = tail
          @StartTime = starttime
          @Previous = previous
          @SinceSeconds = sinceseconds
          @LimitBytes = limitbytes
        end

        def deserialize(params)
          @EksCiId = params['EksCiId']
          @ContainerName = params['ContainerName']
          @Tail = params['Tail']
          @StartTime = params['StartTime']
          @Previous = params['Previous']
          @SinceSeconds = params['SinceSeconds']
          @LimitBytes = params['LimitBytes']
        end
      end

      # DescribeEksContainerInstanceLog返回参数结构体
      class DescribeEksContainerInstanceLogResponse < TencentCloud::Common::AbstractModel
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param LogContent: 日志内容
        # @type LogContent: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerName, :LogContent, :RequestId
        
        def initialize(containername=nil, logcontent=nil, requestid=nil)
          @ContainerName = containername
          @LogContent = logcontent
          @RequestId = requestid
        end

        def deserialize(params)
          @ContainerName = params['ContainerName']
          @LogContent = params['LogContent']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnableVpcCniProgress请求参数结构体
      class DescribeEnableVpcCniProgressRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 开启vpc-cni的集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeEnableVpcCniProgress返回参数结构体
      class DescribeEnableVpcCniProgressResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务进度的描述：Running/Succeed/Failed
        # @type Status: String
        # @param ErrorMessage: 当任务进度为Failed时，对任务状态的进一步描述，例如IPAMD组件安装失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorMessage, :RequestId
        
        def initialize(status=nil, errormessage=nil, requestid=nil)
          @Status = status
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorMessage = params['ErrorMessage']
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
        # @param IpAddresses: 根据多个实例IP进行过滤
        # @type IpAddresses: Array

        attr_accessor :ClusterId, :InstanceIds, :Filters, :VagueIpAddress, :VagueInstanceName, :Offset, :Limit, :IpAddresses
        
        def initialize(clusterid=nil, instanceids=nil, filters=nil, vagueipaddress=nil, vagueinstancename=nil, offset=nil, limit=nil, ipaddresses=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @Filters = filters
          @VagueIpAddress = vagueipaddress
          @VagueInstanceName = vagueinstancename
          @Offset = offset
          @Limit = limit
          @IpAddresses = ipaddresses
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @VagueIpAddress = params['VagueIpAddress']
          @VagueInstanceName = params['VagueInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IpAddresses = params['IpAddresses']
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
          unless params['ExistedInstanceSet'].nil?
            @ExistedInstanceSet = []
            params['ExistedInstanceSet'].each do |i|
              existedinstance_tmp = ExistedInstance.new
              existedinstance_tmp.deserialize(i)
              @ExistedInstanceSet << existedinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExternalClusterSpec请求参数结构体
      class DescribeExternalClusterSpecRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 注册集群ID
        # @type ClusterId: String
        # @param IsExtranet: 默认false 获取内网，是否获取外网版注册命令
        # @type IsExtranet: Boolean
        # @param IsRefreshExpirationTime: 默认false 不刷新有效时间 ，true刷新有效时间
        # @type IsRefreshExpirationTime: Boolean

        attr_accessor :ClusterId, :IsExtranet, :IsRefreshExpirationTime
        
        def initialize(clusterid=nil, isextranet=nil, isrefreshexpirationtime=nil)
          @ClusterId = clusterid
          @IsExtranet = isextranet
          @IsRefreshExpirationTime = isrefreshexpirationtime
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @IsExtranet = params['IsExtranet']
          @IsRefreshExpirationTime = params['IsRefreshExpirationTime']
        end
      end

      # DescribeExternalClusterSpec返回参数结构体
      class DescribeExternalClusterSpecResponse < TencentCloud::Common::AbstractModel
        # @param Spec: 导入第三方集群YAML定义
        # @type Spec: String
        # @param Expiration: agent.yaml文件过期时间字符串，时区UTC
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Spec, :Expiration, :RequestId
        
        def initialize(spec=nil, expiration=nil, requestid=nil)
          @Spec = spec
          @Expiration = expiration
          @RequestId = requestid
        end

        def deserialize(params)
          @Spec = params['Spec']
          @Expiration = params['Expiration']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageCaches请求参数结构体
      class DescribeImageCachesRequest < TencentCloud::Common::AbstractModel
        # @param ImageCacheIds: 镜像缓存Id数组
        # @type ImageCacheIds: Array
        # @param ImageCacheNames: 镜像缓存名称数组
        # @type ImageCacheNames: Array
        # @param Limit: 限定此次返回资源的数量。如果不设定，默认返回20，最大不能超过50
        # @type Limit: Integer
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Filters: 过滤条件，可选条件：
        # (1)实例名称
        # KeyName: image-cache-name
        # 类型：String
        # @type Filters: Array

        attr_accessor :ImageCacheIds, :ImageCacheNames, :Limit, :Offset, :Filters
        
        def initialize(imagecacheids=nil, imagecachenames=nil, limit=nil, offset=nil, filters=nil)
          @ImageCacheIds = imagecacheids
          @ImageCacheNames = imagecachenames
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ImageCacheIds = params['ImageCacheIds']
          @ImageCacheNames = params['ImageCacheNames']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeImageCaches返回参数结构体
      class DescribeImageCachesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 镜像缓存总数
        # @type TotalCount: Integer
        # @param ImageCaches: 镜像缓存信息列表
        # @type ImageCaches: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageCaches, :RequestId
        
        def initialize(totalcount=nil, imagecaches=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageCaches = imagecaches
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImageCaches'].nil?
            @ImageCaches = []
            params['ImageCaches'].each do |i|
              imagecache_tmp = ImageCache.new
              imagecache_tmp.deserialize(i)
              @ImageCaches << imagecache_tmp
            end
          end
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
          unless params['ImageInstanceSet'].nil?
            @ImageInstanceSet = []
            params['ImageInstanceSet'].each do |i|
              imageinstance_tmp = ImageInstance.new
              imageinstance_tmp.deserialize(i)
              @ImageInstanceSet << imageinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusAgentInstances请求参数结构体
      class DescribePrometheusAgentInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # 可以是tke, eks, edge的集群id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribePrometheusAgentInstances返回参数结构体
      class DescribePrometheusAgentInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 关联该集群的实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :RequestId
        
        def initialize(instances=nil, requestid=nil)
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @Instances = params['Instances']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusAgents请求参数结构体
      class DescribePrometheusAgentsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Offset: 用于分页
        # @type Offset: Integer
        # @param Limit: 用于分页
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit
        
        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrometheusAgents返回参数结构体
      class DescribePrometheusAgentsResponse < TencentCloud::Common::AbstractModel
        # @param Agents: 被关联集群信息
        # @type Agents: Array
        # @param Total: 被关联集群总量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agents, :Total, :RequestId
        
        def initialize(agents=nil, total=nil, requestid=nil)
          @Agents = agents
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              prometheusagentoverview_tmp = PrometheusAgentOverview.new
              prometheusagentoverview_tmp.deserialize(i)
              @Agents << prometheusagentoverview_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusAlertHistory请求参数结构体
      class DescribePrometheusAlertHistoryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param RuleName: 告警名称
        # @type RuleName: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Labels: label集合
        # @type Labels: String
        # @param Offset: 分片
        # @type Offset: Integer
        # @param Limit: 分片
        # @type Limit: Integer

        attr_accessor :InstanceId, :RuleName, :StartTime, :EndTime, :Labels, :Offset, :Limit
        
        def initialize(instanceid=nil, rulename=nil, starttime=nil, endtime=nil, labels=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @RuleName = rulename
          @StartTime = starttime
          @EndTime = endtime
          @Labels = labels
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RuleName = params['RuleName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Labels = params['Labels']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrometheusAlertHistory返回参数结构体
      class DescribePrometheusAlertHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Items: 告警历史
        # @type Items: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :RequestId
        
        def initialize(items=nil, total=nil, requestid=nil)
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              prometheusalerthistoryitem_tmp = PrometheusAlertHistoryItem.new
              prometheusalerthistoryitem_tmp.deserialize(i)
              @Items << prometheusalerthistoryitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusAlertPolicy请求参数结构体
      class DescribePrometheusAlertPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 分页
        # @type Limit: Integer
        # @param Filters: 过滤
        # 支持ID，Name
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters
        
        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        end
      end

      # DescribePrometheusAlertPolicy返回参数结构体
      class DescribePrometheusAlertPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AlertRules: 告警详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRules: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlertRules, :Total, :RequestId
        
        def initialize(alertrules=nil, total=nil, requestid=nil)
          @AlertRules = alertrules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlertRules'].nil?
            @AlertRules = []
            params['AlertRules'].each do |i|
              prometheusalertpolicyitem_tmp = PrometheusAlertPolicyItem.new
              prometheusalertpolicyitem_tmp.deserialize(i)
              @AlertRules << prometheusalertpolicyitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusAlertRule请求参数结构体
      class DescribePrometheusAlertRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 分页
        # @type Limit: Integer
        # @param Filters: 过滤
        # 支持ID，Name
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters
        
        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        end
      end

      # DescribePrometheusAlertRule返回参数结构体
      class DescribePrometheusAlertRuleResponse < TencentCloud::Common::AbstractModel
        # @param AlertRules: 告警详情
        # @type AlertRules: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlertRules, :Total, :RequestId
        
        def initialize(alertrules=nil, total=nil, requestid=nil)
          @AlertRules = alertrules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlertRules'].nil?
            @AlertRules = []
            params['AlertRules'].each do |i|
              prometheusalertruledetail_tmp = PrometheusAlertRuleDetail.new
              prometheusalertruledetail_tmp.deserialize(i)
              @AlertRules << prometheusalertruledetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusClusterAgents请求参数结构体
      class DescribePrometheusClusterAgentsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Offset: 用于分页
        # @type Offset: Integer
        # @param Limit: 用于分页
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit
        
        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrometheusClusterAgents返回参数结构体
      class DescribePrometheusClusterAgentsResponse < TencentCloud::Common::AbstractModel
        # @param Agents: 被关联集群信息
        # @type Agents: Array
        # @param Total: 被关联集群总量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agents, :Total, :RequestId
        
        def initialize(agents=nil, total=nil, requestid=nil)
          @Agents = agents
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              prometheusagentoverview_tmp = PrometheusAgentOverview.new
              prometheusagentoverview_tmp.deserialize(i)
              @Agents << prometheusagentoverview_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusConfig请求参数结构体
      class DescribePrometheusConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String

        attr_accessor :InstanceId, :ClusterId, :ClusterType
        
        def initialize(instanceid=nil, clusterid=nil, clustertype=nil)
          @InstanceId = instanceid
          @ClusterId = clusterid
          @ClusterType = clustertype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterId = params['ClusterId']
          @ClusterType = params['ClusterType']
        end
      end

      # DescribePrometheusConfig返回参数结构体
      class DescribePrometheusConfigResponse < TencentCloud::Common::AbstractModel
        # @param Config: 全局配置
        # @type Config: String
        # @param ServiceMonitors: ServiceMonitor配置
        # @type ServiceMonitors: Array
        # @param PodMonitors: PodMonitor配置
        # @type PodMonitors: Array
        # @param RawJobs: 原生Job
        # @type RawJobs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Config, :ServiceMonitors, :PodMonitors, :RawJobs, :RequestId
        
        def initialize(config=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil, requestid=nil)
          @Config = config
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
          @RequestId = requestid
        end

        def deserialize(params)
          @Config = params['Config']
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusGlobalConfig请求参数结构体
      class DescribePrometheusGlobalConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例级别抓取配置
        # @type InstanceId: String
        # @param DisableStatistics: 是否禁用统计
        # @type DisableStatistics: Boolean

        attr_accessor :InstanceId, :DisableStatistics
        
        def initialize(instanceid=nil, disablestatistics=nil)
          @InstanceId = instanceid
          @DisableStatistics = disablestatistics
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DisableStatistics = params['DisableStatistics']
        end
      end

      # DescribePrometheusGlobalConfig返回参数结构体
      class DescribePrometheusGlobalConfigResponse < TencentCloud::Common::AbstractModel
        # @param Config: 配置内容
        # @type Config: String
        # @param ServiceMonitors: ServiceMonitors列表以及对应targets信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceMonitors: Array
        # @param PodMonitors: PodMonitors列表以及对应targets信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodMonitors: Array
        # @param RawJobs: RawJobs列表以及对应targets信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawJobs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Config, :ServiceMonitors, :PodMonitors, :RawJobs, :RequestId
        
        def initialize(config=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil, requestid=nil)
          @Config = config
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
          @RequestId = requestid
        end

        def deserialize(params)
          @Config = params['Config']
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusGlobalNotification请求参数结构体
      class DescribePrometheusGlobalNotificationRequest < TencentCloud::Common::AbstractModel
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

      # DescribePrometheusGlobalNotification返回参数结构体
      class DescribePrometheusGlobalNotificationResponse < TencentCloud::Common::AbstractModel
        # @param Notification: 全局告警通知渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notification: :class:`Tencentcloud::Tke.v20180525.models.PrometheusNotificationItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Notification, :RequestId
        
        def initialize(notification=nil, requestid=nil)
          @Notification = notification
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Notification'].nil?
            @Notification = PrometheusNotificationItem.new
            @Notification.deserialize(params['Notification'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusInstanceInitStatus请求参数结构体
      class DescribePrometheusInstanceInitStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePrometheusInstanceInitStatus返回参数结构体
      class DescribePrometheusInstanceInitStatusResponse < TencentCloud::Common::AbstractModel
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

      # DescribePrometheusInstance请求参数结构体
      class DescribePrometheusInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribePrometheusInstance返回参数结构体
      class DescribePrometheusInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param COSBucket: cos桶名称
        # @type COSBucket: String
        # @param QueryAddress: 数据查询地址
        # @type QueryAddress: String
        # @param Grafana: 实例中grafana相关的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grafana: :class:`Tencentcloud::Tke.v20180525.models.PrometheusGrafanaInfo`
        # @param AlertManagerUrl: 用户自定义alertmanager
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertManagerUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Name, :VpcId, :SubnetId, :COSBucket, :QueryAddress, :Grafana, :AlertManagerUrl, :RequestId
        
        def initialize(instanceid=nil, name=nil, vpcid=nil, subnetid=nil, cosbucket=nil, queryaddress=nil, grafana=nil, alertmanagerurl=nil, requestid=nil)
          @InstanceId = instanceid
          @Name = name
          @VpcId = vpcid
          @SubnetId = subnetid
          @COSBucket = cosbucket
          @QueryAddress = queryaddress
          @Grafana = grafana
          @AlertManagerUrl = alertmanagerurl
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @COSBucket = params['COSBucket']
          @QueryAddress = params['QueryAddress']
          unless params['Grafana'].nil?
            @Grafana = PrometheusGrafanaInfo.new
            @Grafana.deserialize(params['Grafana'])
          end
          @AlertManagerUrl = params['AlertManagerUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusInstancesOverview请求参数结构体
      class DescribePrometheusInstancesOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 用于分页
        # @type Offset: Integer
        # @param Limit: 用于分页
        # @type Limit: Integer
        # @param Filters: 过滤实例，目前支持：
        # ID: 通过实例ID来过滤
        # Name: 通过实例名称来过滤
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters
        
        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
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
        end
      end

      # DescribePrometheusInstancesOverview返回参数结构体
      class DescribePrometheusInstancesOverviewResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 实例列表
        # @type Instances: Array
        # @param Total: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :Total, :RequestId
        
        def initialize(instances=nil, total=nil, requestid=nil)
          @Instances = instances
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              prometheusinstancesoverview_tmp = PrometheusInstancesOverview.new
              prometheusinstancesoverview_tmp.deserialize(i)
              @Instances << prometheusinstancesoverview_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusOverviews请求参数结构体
      class DescribePrometheusOverviewsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 用于分页
        # @type Offset: Integer
        # @param Limit: 用于分页
        # @type Limit: Integer
        # @param Filters: 过滤实例，目前支持：
        # ID: 通过实例ID来过滤
        # Name: 通过实例名称来过滤
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters
        
        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
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
        end
      end

      # DescribePrometheusOverviews返回参数结构体
      class DescribePrometheusOverviewsResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 实例列表
        # @type Instances: Array
        # @param Total: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :Total, :RequestId
        
        def initialize(instances=nil, total=nil, requestid=nil)
          @Instances = instances
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              prometheusinstanceoverview_tmp = PrometheusInstanceOverview.new
              prometheusinstanceoverview_tmp.deserialize(i)
              @Instances << prometheusinstanceoverview_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusRecordRules请求参数结构体
      class DescribePrometheusRecordRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 分页
        # @type Limit: Integer
        # @param Filters: 过滤
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters
        
        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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
        end
      end

      # DescribePrometheusRecordRules返回参数结构体
      class DescribePrometheusRecordRulesResponse < TencentCloud::Common::AbstractModel
        # @param Records: 聚合规则
        # @type Records: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :Total, :RequestId
        
        def initialize(records=nil, total=nil, requestid=nil)
          @Records = records
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              prometheusrecordruleyamlitem_tmp = PrometheusRecordRuleYamlItem.new
              prometheusrecordruleyamlitem_tmp.deserialize(i)
              @Records << prometheusrecordruleyamlitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusTargets请求参数结构体
      class DescribePrometheusTargetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Filters: 过滤条件，当前支持
        # Name=state
        # Value=up, down, unknown
        # @type Filters: Array

        attr_accessor :InstanceId, :ClusterType, :ClusterId, :Filters
        
        def initialize(instanceid=nil, clustertype=nil, clusterid=nil, filters=nil)
          @InstanceId = instanceid
          @ClusterType = clustertype
          @ClusterId = clusterid
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribePrometheusTargets返回参数结构体
      class DescribePrometheusTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Jobs: 所有Job的targets信息
        # @type Jobs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Jobs, :RequestId
        
        def initialize(jobs=nil, requestid=nil)
          @Jobs = jobs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Jobs'].nil?
            @Jobs = []
            params['Jobs'].each do |i|
              prometheusjobtargets_tmp = PrometheusJobTargets.new
              prometheusjobtargets_tmp.deserialize(i)
              @Jobs << prometheusjobtargets_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusTemp请求参数结构体
      class DescribePrometheusTempRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 模糊过滤条件，支持
        # Level 按模板级别过滤
        # Name 按名称过滤
        # Describe 按描述过滤
        # ID 按templateId过滤
        # @type Filters: Array
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 总数限制
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
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

      # DescribePrometheusTemp返回参数结构体
      class DescribePrometheusTempResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板列表
        # @type Templates: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :Total, :RequestId
        
        def initialize(templates=nil, total=nil, requestid=nil)
          @Templates = templates
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              prometheustemp_tmp = PrometheusTemp.new
              prometheustemp_tmp.deserialize(i)
              @Templates << prometheustemp_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusTempSync请求参数结构体
      class DescribePrometheusTempSyncRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribePrometheusTempSync返回参数结构体
      class DescribePrometheusTempSyncResponse < TencentCloud::Common::AbstractModel
        # @param Targets: 同步目标详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Targets, :RequestId
        
        def initialize(targets=nil, requestid=nil)
          @Targets = targets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustemplatesynctarget_tmp = PrometheusTemplateSyncTarget.new
              prometheustemplatesynctarget_tmp.deserialize(i)
              @Targets << prometheustemplatesynctarget_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusTemplateSync请求参数结构体
      class DescribePrometheusTemplateSyncRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribePrometheusTemplateSync返回参数结构体
      class DescribePrometheusTemplateSyncResponse < TencentCloud::Common::AbstractModel
        # @param Targets: 同步目标详情
        # @type Targets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Targets, :RequestId
        
        def initialize(targets=nil, requestid=nil)
          @Targets = targets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustemplatesynctarget_tmp = PrometheusTemplateSyncTarget.new
              prometheustemplatesynctarget_tmp.deserialize(i)
              @Targets << prometheustemplatesynctarget_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheusTemplates请求参数结构体
      class DescribePrometheusTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 模糊过滤条件，支持
        # Level 按模板级别过滤
        # Name 按名称过滤
        # Describe 按描述过滤
        # ID 按templateId过滤
        # @type Filters: Array
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 总数限制
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
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

      # DescribePrometheusTemplates返回参数结构体
      class DescribePrometheusTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板列表
        # @type Templates: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :Total, :RequestId
        
        def initialize(templates=nil, total=nil, requestid=nil)
          @Templates = templates
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              prometheustemplate_tmp = PrometheusTemplate.new
              prometheustemplate_tmp.deserialize(i)
              @Templates << prometheustemplate_tmp
            end
          end
          @Total = params['Total']
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
          unless params['RegionInstanceSet'].nil?
            @RegionInstanceSet = []
            params['RegionInstanceSet'].each do |i|
              regioninstance_tmp = RegionInstance.new
              regioninstance_tmp.deserialize(i)
              @RegionInstanceSet << regioninstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUsage请求参数结构体
      class DescribeResourceUsageRequest < TencentCloud::Common::AbstractModel
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

      # DescribeResourceUsage返回参数结构体
      class DescribeResourceUsageResponse < TencentCloud::Common::AbstractModel
        # @param CRDUsage: CRD使用量
        # @type CRDUsage: :class:`Tencentcloud::Tke.v20180525.models.ResourceUsage`
        # @param PodUsage: Pod使用量
        # @type PodUsage: Integer
        # @param ConfigMapUsage: ConfigMap使用量
        # @type ConfigMapUsage: Integer
        # @param OtherUsage: 其他资源使用量
        # @type OtherUsage: :class:`Tencentcloud::Tke.v20180525.models.ResourceUsage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CRDUsage, :PodUsage, :ConfigMapUsage, :OtherUsage, :RequestId
        
        def initialize(crdusage=nil, podusage=nil, configmapusage=nil, otherusage=nil, requestid=nil)
          @CRDUsage = crdusage
          @PodUsage = podusage
          @ConfigMapUsage = configmapusage
          @OtherUsage = otherusage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CRDUsage'].nil?
            @CRDUsage = ResourceUsage.new
            @CRDUsage.deserialize(params['CRDUsage'])
          end
          @PodUsage = params['PodUsage']
          @ConfigMapUsage = params['ConfigMapUsage']
          unless params['OtherUsage'].nil?
            @OtherUsage = ResourceUsage.new
            @OtherUsage.deserialize(params['OtherUsage'])
          end
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
          unless params['RouteTableConflictSet'].nil?
            @RouteTableConflictSet = []
            params['RouteTableConflictSet'].each do |i|
              routetableconflict_tmp = RouteTableConflict.new
              routetableconflict_tmp.deserialize(i)
              @RouteTableConflictSet << routetableconflict_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTKEEdgeClusterCredential请求参数结构体
      class DescribeTKEEdgeClusterCredentialRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeTKEEdgeClusterCredential返回参数结构体
      class DescribeTKEEdgeClusterCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Addresses: 集群的接入地址信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Addresses: Array
        # @param Credential: 集群的认证信息
        # @type Credential: :class:`Tencentcloud::Tke.v20180525.models.ClusterCredential`
        # @param PublicLB: 集群的公网访问信息
        # @type PublicLB: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterPublicLB`
        # @param InternalLB: 集群的内网访问信息
        # @type InternalLB: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterInternalLB`
        # @param CoreDns: 集群的CoreDns部署信息
        # @type CoreDns: String
        # @param HealthRegion: 集群的健康检查多地域部署信息
        # @type HealthRegion: String
        # @param Health: 集群的健康检查部署信息
        # @type Health: String
        # @param GridDaemon: 是否部署GridDaemon以支持headless service
        # @type GridDaemon: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Addresses, :Credential, :PublicLB, :InternalLB, :CoreDns, :HealthRegion, :Health, :GridDaemon, :RequestId
        
        def initialize(addresses=nil, credential=nil, publiclb=nil, internallb=nil, coredns=nil, healthregion=nil, health=nil, griddaemon=nil, requestid=nil)
          @Addresses = addresses
          @Credential = credential
          @PublicLB = publiclb
          @InternalLB = internallb
          @CoreDns = coredns
          @HealthRegion = healthregion
          @Health = health
          @GridDaemon = griddaemon
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Addresses'].nil?
            @Addresses = []
            params['Addresses'].each do |i|
              ipaddress_tmp = IPAddress.new
              ipaddress_tmp.deserialize(i)
              @Addresses << ipaddress_tmp
            end
          end
          unless params['Credential'].nil?
            @Credential = ClusterCredential.new
            @Credential.deserialize(params['Credential'])
          end
          unless params['PublicLB'].nil?
            @PublicLB = EdgeClusterPublicLB.new
            @PublicLB.deserialize(params['PublicLB'])
          end
          unless params['InternalLB'].nil?
            @InternalLB = EdgeClusterInternalLB.new
            @InternalLB.deserialize(params['InternalLB'])
          end
          @CoreDns = params['CoreDns']
          @HealthRegion = params['HealthRegion']
          @Health = params['Health']
          @GridDaemon = params['GridDaemon']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTKEEdgeClusterStatus请求参数结构体
      class DescribeTKEEdgeClusterStatusRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 边缘计算容器集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeTKEEdgeClusterStatus返回参数结构体
      class DescribeTKEEdgeClusterStatusResponse < TencentCloud::Common::AbstractModel
        # @param Phase: 集群当前状态
        # @type Phase: String
        # @param Conditions: 集群过程数组
        # @type Conditions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Phase, :Conditions, :RequestId
        
        def initialize(phase=nil, conditions=nil, requestid=nil)
          @Phase = phase
          @Conditions = conditions
          @RequestId = requestid
        end

        def deserialize(params)
          @Phase = params['Phase']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              clustercondition_tmp = ClusterCondition.new
              clustercondition_tmp.deserialize(i)
              @Conditions << clustercondition_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTKEEdgeClusters请求参数结构体
      class DescribeTKEEdgeClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表(为空时，
        # 表示获取账号下所有集群)
        # @type ClusterIds: Array
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20
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
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeTKEEdgeClusters返回参数结构体
      class DescribeTKEEdgeClustersResponse < TencentCloud::Common::AbstractModel
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
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              edgecluster_tmp = EdgeCluster.new
              edgecluster_tmp.deserialize(i)
              @Clusters << edgecluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTKEEdgeExternalKubeconfig请求参数结构体
      class DescribeTKEEdgeExternalKubeconfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeTKEEdgeExternalKubeconfig返回参数结构体
      class DescribeTKEEdgeExternalKubeconfigResponse < TencentCloud::Common::AbstractModel
        # @param Kubeconfig: kubeconfig文件内容
        # @type Kubeconfig: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Kubeconfig, :RequestId
        
        def initialize(kubeconfig=nil, requestid=nil)
          @Kubeconfig = kubeconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @Kubeconfig = params['Kubeconfig']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTKEEdgeScript请求参数结构体
      class DescribeTKEEdgeScriptRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Interface: 网卡名
        # @type Interface: String
        # @param NodeName: 节点名字
        # @type NodeName: String
        # @param Config: json格式的节点配置
        # @type Config: String
        # @param ScriptVersion: 可以下载某个历史版本的edgectl脚本，默认下载最新版本，edgectl版本信息可以在脚本里查看
        # @type ScriptVersion: String

        attr_accessor :ClusterId, :Interface, :NodeName, :Config, :ScriptVersion
        
        def initialize(clusterid=nil, interface=nil, nodename=nil, config=nil, scriptversion=nil)
          @ClusterId = clusterid
          @Interface = interface
          @NodeName = nodename
          @Config = config
          @ScriptVersion = scriptversion
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Interface = params['Interface']
          @NodeName = params['NodeName']
          @Config = params['Config']
          @ScriptVersion = params['ScriptVersion']
        end
      end

      # DescribeTKEEdgeScript返回参数结构体
      class DescribeTKEEdgeScriptResponse < TencentCloud::Common::AbstractModel
        # @param Link: 下载链接
        # @type Link: String
        # @param Token: 下载需要的token
        # @type Token: String
        # @param Command: 下载命令
        # @type Command: String
        # @param ScriptVersion: edgectl脚本版本，默认拉取最新版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Link, :Token, :Command, :ScriptVersion, :RequestId
        
        def initialize(link=nil, token=nil, command=nil, scriptversion=nil, requestid=nil)
          @Link = link
          @Token = token
          @Command = command
          @ScriptVersion = scriptversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Link = params['Link']
          @Token = params['Token']
          @Command = params['Command']
          @ScriptVersion = params['ScriptVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVersions请求参数结构体
      class DescribeVersionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVersions返回参数结构体
      class DescribeVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 版本数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param VersionInstanceSet: 版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VersionInstanceSet, :RequestId
        
        def initialize(totalcount=nil, versioninstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @VersionInstanceSet = versioninstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VersionInstanceSet'].nil?
            @VersionInstanceSet = []
            params['VersionInstanceSet'].each do |i|
              versioninstance_tmp = VersionInstance.new
              versioninstance_tmp.deserialize(i)
              @VersionInstanceSet << versioninstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcCniPodLimits请求参数结构体
      class DescribeVpcCniPodLimitsRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 查询的机型所在可用区，如：ap-guangzhou-3，默认为空，即不按可用区过滤信息
        # @type Zone: String
        # @param InstanceFamily: 查询的实例机型系列信息，如：S5，默认为空，即不按机型系列过滤信息
        # @type InstanceFamily: String
        # @param InstanceType: 查询的实例机型信息，如：S5.LARGE8，默认为空，即不按机型过滤信息
        # @type InstanceType: String

        attr_accessor :Zone, :InstanceFamily, :InstanceType
        
        def initialize(zone=nil, instancefamily=nil, instancetype=nil)
          @Zone = zone
          @InstanceFamily = instancefamily
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceFamily = params['InstanceFamily']
          @InstanceType = params['InstanceType']
        end
      end

      # DescribeVpcCniPodLimits返回参数结构体
      class DescribeVpcCniPodLimitsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 机型数据数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param PodLimitsInstanceSet: 机型信息及其可支持的最大VPC-CNI模式Pod数量信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodLimitsInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PodLimitsInstanceSet, :RequestId
        
        def initialize(totalcount=nil, podlimitsinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @PodLimitsInstanceSet = podlimitsinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PodLimitsInstanceSet'].nil?
            @PodLimitsInstanceSet = []
            params['PodLimitsInstanceSet'].each do |i|
              podlimitsinstance_tmp = PodLimitsInstance.new
              podlimitsinstance_tmp.deserialize(i)
              @PodLimitsInstanceSet << podlimitsinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableClusterAudit请求参数结构体
      class DisableClusterAuditRequest < TencentCloud::Common::AbstractModel
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

      # DisableClusterAudit返回参数结构体
      class DisableClusterAuditResponse < TencentCloud::Common::AbstractModel
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

      # DisableClusterDeletionProtection请求参数结构体
      class DisableClusterDeletionProtectionRequest < TencentCloud::Common::AbstractModel
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

      # DisableClusterDeletionProtection返回参数结构体
      class DisableClusterDeletionProtectionResponse < TencentCloud::Common::AbstractModel
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

      # DisableEventPersistence请求参数结构体
      class DisableEventPersistenceRequest < TencentCloud::Common::AbstractModel
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

      # DisableEventPersistence返回参数结构体
      class DisableEventPersistenceResponse < TencentCloud::Common::AbstractModel
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

      # DisableVpcCniNetworkType请求参数结构体
      class DisableVpcCniNetworkTypeRequest < TencentCloud::Common::AbstractModel
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

      # DisableVpcCniNetworkType返回参数结构体
      class DisableVpcCniNetworkTypeResponse < TencentCloud::Common::AbstractModel
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

      # Eks 自定义域名服务器 配置
      class DnsServerConf < TencentCloud::Common::AbstractModel
        # @param Domain: 域名。空字符串表示所有域名。
        # @type Domain: String
        # @param DnsServers: dns 服务器地址列表。地址格式 ip:port
        # @type DnsServers: Array

        attr_accessor :Domain, :DnsServers
        
        def initialize(domain=nil, dnsservers=nil)
          @Domain = domain
          @DnsServers = dnsservers
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DnsServers = params['DnsServers']
        end
      end

      # GPU驱动和CUDA的版本信息
      class DriverVersion < TencentCloud::Common::AbstractModel
        # @param Version: GPU驱动或者CUDA的版本
        # @type Version: String
        # @param Name: GPU驱动或者CUDA的名字
        # @type Name: String

        attr_accessor :Version, :Name
        
        def initialize(version=nil, name=nil)
          @Version = version
          @Name = name
        end

        def deserialize(params)
          @Version = params['Version']
          @Name = params['Name']
        end
      end

      # ECM增强服务
      class ECMEnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 是否开启云监控服务
        # @type SecurityService: :class:`Tencentcloud::Tke.v20180525.models.ECMRunMonitorServiceEnabled`
        # @param MonitorService: 是否开启云镜服务
        # @type MonitorService: :class:`Tencentcloud::Tke.v20180525.models.ECMRunSecurityServiceEnabled`

        attr_accessor :SecurityService, :MonitorService
        
        def initialize(securityservice=nil, monitorservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = ECMRunMonitorServiceEnabled.new
            @SecurityService.deserialize(params['SecurityService'])
          end
          unless params['MonitorService'].nil?
            @MonitorService = ECMRunSecurityServiceEnabled.new
            @MonitorService.deserialize(params['MonitorService'])
          end
        end
      end

      # ECM云监控服务
      class ECMRunMonitorServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启
        # @type Enabled: Boolean

        attr_accessor :Enabled
        
        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # ECM云镜服务
      class ECMRunSecurityServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启
        # @type Enabled: Boolean
        # @param Version: 云镜版本：0 基础版，1 专业版
        # @type Version: Integer

        attr_accessor :Enabled, :Version
        
        def initialize(enabled=nil, version=nil)
          @Enabled = enabled
          @Version = version
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Version = params['Version']
        end
      end

      # ECM实例可用区及对应的实例创建数目及运营商的组合
      class ECMZoneInstanceCountISP < TencentCloud::Common::AbstractModel
        # @param Zone: 创建实例的可用区
        # @type Zone: String
        # @param InstanceCount: 在当前可用区欲创建的实例数目
        # @type InstanceCount: Integer
        # @param ISP: 运营商
        # @type ISP: String

        attr_accessor :Zone, :InstanceCount, :ISP
        
        def initialize(zone=nil, instancecount=nil, isp=nil)
          @Zone = zone
          @InstanceCount = instancecount
          @ISP = isp
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceCount = params['InstanceCount']
          @ISP = params['ISP']
        end
      end

      # 边缘容器参数描述
      class EdgeArgsFlag < TencentCloud::Common::AbstractModel
        # @param Name: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 参数类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Usage: 参数描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Usage: String
        # @param Default: 参数默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: String
        # @param Constraint: 参数可选范围（目前包含range和in两种，"[]"代表range，如"[1, 5]"表示参数必须>=1且 <=5, "()"代表in， 如"('aa', 'bb')"表示参数只能为字符串'aa'或者'bb'，该参数为空表示不校验）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Constraint: String

        attr_accessor :Name, :Type, :Usage, :Default, :Constraint
        
        def initialize(name=nil, type=nil, usage=nil, default=nil, constraint=nil)
          @Name = name
          @Type = type
          @Usage = usage
          @Default = default
          @Constraint = constraint
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Usage = params['Usage']
          @Default = params['Default']
          @Constraint = params['Constraint']
        end
      end

      # 边缘容器集群可用的自定义参数
      class EdgeAvailableExtraArgs < TencentCloud::Common::AbstractModel
        # @param KubeAPIServer: kube-apiserver可用的自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeAPIServer: Array
        # @param KubeControllerManager: kube-controller-manager可用的自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeControllerManager: Array
        # @param KubeScheduler: kube-scheduler可用的自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeScheduler: Array
        # @param Kubelet: kubelet可用的自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kubelet: Array

        attr_accessor :KubeAPIServer, :KubeControllerManager, :KubeScheduler, :Kubelet
        
        def initialize(kubeapiserver=nil, kubecontrollermanager=nil, kubescheduler=nil, kubelet=nil)
          @KubeAPIServer = kubeapiserver
          @KubeControllerManager = kubecontrollermanager
          @KubeScheduler = kubescheduler
          @Kubelet = kubelet
        end

        def deserialize(params)
          unless params['KubeAPIServer'].nil?
            @KubeAPIServer = []
            params['KubeAPIServer'].each do |i|
              edgeargsflag_tmp = EdgeArgsFlag.new
              edgeargsflag_tmp.deserialize(i)
              @KubeAPIServer << edgeargsflag_tmp
            end
          end
          unless params['KubeControllerManager'].nil?
            @KubeControllerManager = []
            params['KubeControllerManager'].each do |i|
              edgeargsflag_tmp = EdgeArgsFlag.new
              edgeargsflag_tmp.deserialize(i)
              @KubeControllerManager << edgeargsflag_tmp
            end
          end
          unless params['KubeScheduler'].nil?
            @KubeScheduler = []
            params['KubeScheduler'].each do |i|
              edgeargsflag_tmp = EdgeArgsFlag.new
              edgeargsflag_tmp.deserialize(i)
              @KubeScheduler << edgeargsflag_tmp
            end
          end
          unless params['Kubelet'].nil?
            @Kubelet = []
            params['Kubelet'].each do |i|
              edgeargsflag_tmp = EdgeArgsFlag.new
              edgeargsflag_tmp.deserialize(i)
              @Kubelet << edgeargsflag_tmp
            end
          end
        end
      end

      # 边缘计算集群信息
      class EdgeCluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param PodCIDR: 集群pod cidr
        # @type PodCIDR: String
        # @param ServiceCIDR: 集群 service cidr
        # @type ServiceCIDR: String
        # @param K8SVersion: k8s 版本号
        # @type K8SVersion: String
        # @param Status: 集群状态
        # @type Status: String
        # @param ClusterDesc: 集群描述信息
        # @type ClusterDesc: String
        # @param CreatedTime: 集群创建时间
        # @type CreatedTime: String
        # @param EdgeClusterVersion: 边缘集群版本
        # @type EdgeClusterVersion: String
        # @param MaxNodePodNum: 节点最大Pod数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNodePodNum: Integer
        # @param ClusterAdvancedSettings: 集群高级设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterAdvancedSettings`

        attr_accessor :ClusterId, :ClusterName, :VpcId, :PodCIDR, :ServiceCIDR, :K8SVersion, :Status, :ClusterDesc, :CreatedTime, :EdgeClusterVersion, :MaxNodePodNum, :ClusterAdvancedSettings
        
        def initialize(clusterid=nil, clustername=nil, vpcid=nil, podcidr=nil, servicecidr=nil, k8sversion=nil, status=nil, clusterdesc=nil, createdtime=nil, edgeclusterversion=nil, maxnodepodnum=nil, clusteradvancedsettings=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @VpcId = vpcid
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
          @K8SVersion = k8sversion
          @Status = status
          @ClusterDesc = clusterdesc
          @CreatedTime = createdtime
          @EdgeClusterVersion = edgeclusterversion
          @MaxNodePodNum = maxnodepodnum
          @ClusterAdvancedSettings = clusteradvancedsettings
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @VpcId = params['VpcId']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
          @K8SVersion = params['K8SVersion']
          @Status = params['Status']
          @ClusterDesc = params['ClusterDesc']
          @CreatedTime = params['CreatedTime']
          @EdgeClusterVersion = params['EdgeClusterVersion']
          @MaxNodePodNum = params['MaxNodePodNum']
          unless params['ClusterAdvancedSettings'].nil?
            @ClusterAdvancedSettings = EdgeClusterAdvancedSettings.new
            @ClusterAdvancedSettings.deserialize(params['ClusterAdvancedSettings'])
          end
        end
      end

      # 边缘容器集群高级配置
      class EdgeClusterAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param ExtraArgs: 集群自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterExtraArgs`
        # @param Runtime: 运行时类型，支持"docker"和"containerd"，默认为docker
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param ProxyMode: 集群kube-proxy转发模式，支持"iptables"和"ipvs"，默认为iptables
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyMode: String

        attr_accessor :ExtraArgs, :Runtime, :ProxyMode
        
        def initialize(extraargs=nil, runtime=nil, proxymode=nil)
          @ExtraArgs = extraargs
          @Runtime = runtime
          @ProxyMode = proxymode
        end

        def deserialize(params)
          unless params['ExtraArgs'].nil?
            @ExtraArgs = EdgeClusterExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
          @Runtime = params['Runtime']
          @ProxyMode = params['ProxyMode']
        end
      end

      # 边缘容器集群master自定义参数
      class EdgeClusterExtraArgs < TencentCloud::Common::AbstractModel
        # @param KubeAPIServer: kube-apiserver自定义参数，参数格式为["k1=v1", "k1=v2"]， 例如["max-requests-inflight=500","feature-gates=PodShareProcessNamespace=true,DynamicKubeletConfig=true"]
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

      # 边缘计算集群内网访问LB信息
      class EdgeClusterInternalLB < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启内网访问LB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param SubnetId: 内网访问LB关联的子网Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: Array

        attr_accessor :Enabled, :SubnetId
        
        def initialize(enabled=nil, subnetid=nil)
          @Enabled = enabled
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @SubnetId = params['SubnetId']
        end
      end

      # 边缘计算集群公网访问负载均衡信息
      class EdgeClusterPublicLB < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启公网访问LB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param AllowFromCidrs: 允许访问的公网cidr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowFromCidrs: Array

        attr_accessor :Enabled, :AllowFromCidrs
        
        def initialize(enabled=nil, allowfromcidrs=nil)
          @Enabled = enabled
          @AllowFromCidrs = allowfromcidrs
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @AllowFromCidrs = params['AllowFromCidrs']
        end
      end

      # 用以帮助用户自动创建EIP的配置
      class EipAttribute < TencentCloud::Common::AbstractModel
        # @param DeletePolicy: 容器实例删除后，EIP是否释放。
        # Never表示不释放，其他任意值（包括空字符串）表示释放。
        # @type DeletePolicy: String
        # @param InternetServiceProvider: EIP线路类型。默认值：BGP。
        # 已开通静态单线IP白名单的用户，可选值：
        # CMCC：中国移动
        # CTCC：中国电信
        # CUCC：中国联通
        # 注意：仅部分地域支持静态单线IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetServiceProvider: String
        # @param InternetMaxBandwidthOut: EIP出带宽上限，单位：Mbps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :DeletePolicy, :InternetServiceProvider, :InternetMaxBandwidthOut
        
        def initialize(deletepolicy=nil, internetserviceprovider=nil, internetmaxbandwidthout=nil)
          @DeletePolicy = deletepolicy
          @InternetServiceProvider = internetserviceprovider
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @DeletePolicy = params['DeletePolicy']
          @InternetServiceProvider = params['InternetServiceProvider']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # EksContainerInstance实例类型
      class EksCi < TencentCloud::Common::AbstractModel
        # @param EksCiId: EKS Cotainer Instance Id
        # @type EksCiId: String
        # @param EksCiName: EKS Cotainer Instance Name
        # @type EksCiName: String
        # @param Memory: 内存大小
        # @type Memory: Float
        # @param Cpu: CPU大小
        # @type Cpu: Float
        # @param SecurityGroupIds: 安全组ID
        # @type SecurityGroupIds: Array
        # @param RestartPolicy: 容器组的重启策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartPolicy: String
        # @param Status: 返回容器组创建状态：Pending，Running，Succeeded，Failed。其中：
        # Failed （运行失败）指的容器组退出，RestartPolilcy为Never， 有容器exitCode非0；
        # Succeeded（运行成功）指的是容器组退出了，RestartPolicy为Never或onFailure，所有容器exitCode都为0；
        # Failed和Succeeded这两种状态都会停止运行，停止计费。
        # Pending是创建中，Running是 运行中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreationTime: 接到请求后的系统创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param SucceededTime: 容器全部成功退出后的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SucceededTime: String
        # @param Containers: 容器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Containers: Array
        # @param EksCiVolume: 数据卷信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EksCiVolume: :class:`Tencentcloud::Tke.v20180525.models.EksCiVolume`
        # @param SecurityContext: 容器组运行的安全上下文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityContext: :class:`Tencentcloud::Tke.v20180525.models.SecurityContext`
        # @param PrivateIp: 内网ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param EipAddress: 容器实例绑定的Eip地址，注意可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EipAddress: String
        # @param GpuType: GPU类型。如无使用GPU则不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param CpuType: CPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuType: String
        # @param GpuCount: GPU卡数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuCount: Integer
        # @param VpcId: 实例所属VPC的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 实例所属子网Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param InitContainers: 初始化容器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitContainers: Array
        # @param CamRoleName: 为容器实例关联 CAM 角色，value 填写 CAM 角色名称，容器实例可获取该 CAM 角色包含的权限策略，方便 容器实例 内的程序进行如购买资源、读写存储等云资源操作。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CamRoleName: String
        # @param AutoCreatedEipId: 自动为用户创建的EipId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoCreatedEipId: String
        # @param PersistStatus: 容器状态是否持久化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersistStatus: Boolean

        attr_accessor :EksCiId, :EksCiName, :Memory, :Cpu, :SecurityGroupIds, :RestartPolicy, :Status, :CreationTime, :SucceededTime, :Containers, :EksCiVolume, :SecurityContext, :PrivateIp, :EipAddress, :GpuType, :CpuType, :GpuCount, :VpcId, :SubnetId, :InitContainers, :CamRoleName, :AutoCreatedEipId, :PersistStatus
        
        def initialize(eksciid=nil, eksciname=nil, memory=nil, cpu=nil, securitygroupids=nil, restartpolicy=nil, status=nil, creationtime=nil, succeededtime=nil, containers=nil, ekscivolume=nil, securitycontext=nil, privateip=nil, eipaddress=nil, gputype=nil, cputype=nil, gpucount=nil, vpcid=nil, subnetid=nil, initcontainers=nil, camrolename=nil, autocreatedeipid=nil, persiststatus=nil)
          @EksCiId = eksciid
          @EksCiName = eksciname
          @Memory = memory
          @Cpu = cpu
          @SecurityGroupIds = securitygroupids
          @RestartPolicy = restartpolicy
          @Status = status
          @CreationTime = creationtime
          @SucceededTime = succeededtime
          @Containers = containers
          @EksCiVolume = ekscivolume
          @SecurityContext = securitycontext
          @PrivateIp = privateip
          @EipAddress = eipaddress
          @GpuType = gputype
          @CpuType = cputype
          @GpuCount = gpucount
          @VpcId = vpcid
          @SubnetId = subnetid
          @InitContainers = initcontainers
          @CamRoleName = camrolename
          @AutoCreatedEipId = autocreatedeipid
          @PersistStatus = persiststatus
        end

        def deserialize(params)
          @EksCiId = params['EksCiId']
          @EksCiName = params['EksCiName']
          @Memory = params['Memory']
          @Cpu = params['Cpu']
          @SecurityGroupIds = params['SecurityGroupIds']
          @RestartPolicy = params['RestartPolicy']
          @Status = params['Status']
          @CreationTime = params['CreationTime']
          @SucceededTime = params['SucceededTime']
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          unless params['EksCiVolume'].nil?
            @EksCiVolume = EksCiVolume.new
            @EksCiVolume.deserialize(params['EksCiVolume'])
          end
          unless params['SecurityContext'].nil?
            @SecurityContext = SecurityContext.new
            @SecurityContext.deserialize(params['SecurityContext'])
          end
          @PrivateIp = params['PrivateIp']
          @EipAddress = params['EipAddress']
          @GpuType = params['GpuType']
          @CpuType = params['CpuType']
          @GpuCount = params['GpuCount']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['InitContainers'].nil?
            @InitContainers = []
            params['InitContainers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @InitContainers << container_tmp
            end
          end
          @CamRoleName = params['CamRoleName']
          @AutoCreatedEipId = params['AutoCreatedEipId']
          @PersistStatus = params['PersistStatus']
        end
      end

      # EksCi地域信息
      class EksCiRegionInfo < TencentCloud::Common::AbstractModel
        # @param Alias: 地域别名，形如gz
        # @type Alias: String
        # @param RegionName: 地域名，形如ap-guangzhou
        # @type RegionName: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer

        attr_accessor :Alias, :RegionName, :RegionId
        
        def initialize(_alias=nil, regionname=nil, regionid=nil)
          @Alias = _alias
          @RegionName = regionname
          @RegionId = regionid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
        end
      end

      # EKS Instance Volume,  可选包括CbsVolume和NfsVolume
      class EksCiVolume < TencentCloud::Common::AbstractModel
        # @param CbsVolumes: Cbs Volume
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CbsVolumes: Array
        # @param NfsVolumes: Nfs Volume
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NfsVolumes: Array

        attr_accessor :CbsVolumes, :NfsVolumes
        
        def initialize(cbsvolumes=nil, nfsvolumes=nil)
          @CbsVolumes = cbsvolumes
          @NfsVolumes = nfsvolumes
        end

        def deserialize(params)
          unless params['CbsVolumes'].nil?
            @CbsVolumes = []
            params['CbsVolumes'].each do |i|
              cbsvolume_tmp = CbsVolume.new
              cbsvolume_tmp.deserialize(i)
              @CbsVolumes << cbsvolume_tmp
            end
          end
          unless params['NfsVolumes'].nil?
            @NfsVolumes = []
            params['NfsVolumes'].each do |i|
              nfsvolume_tmp = NfsVolume.new
              nfsvolume_tmp.deserialize(i)
              @NfsVolumes << nfsvolume_tmp
            end
          end
        end
      end

      # 弹性集群信息
      class EksCluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param K8SVersion: k8s 版本号
        # @type K8SVersion: String
        # @param Status: 集群状态(running运行中，initializing 初始化中，failed异常)
        # @type Status: String
        # @param ClusterDesc: 集群描述信息
        # @type ClusterDesc: String
        # @param CreatedTime: 集群创建时间
        # @type CreatedTime: String
        # @param ServiceSubnetId: Service 子网Id
        # @type ServiceSubnetId: String
        # @param DnsServers: 集群的自定义dns 服务器信息
        # @type DnsServers: Array
        # @param NeedDeleteCbs: 将来删除集群时是否要删除cbs。默认为 FALSE
        # @type NeedDeleteCbs: Boolean
        # @param EnableVpcCoreDNS: 是否在用户集群内开启Dns。默认为TRUE
        # @type EnableVpcCoreDNS: Boolean
        # @param TagSpecification: 标签描述列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSpecification: Array

        attr_accessor :ClusterId, :ClusterName, :VpcId, :SubnetIds, :K8SVersion, :Status, :ClusterDesc, :CreatedTime, :ServiceSubnetId, :DnsServers, :NeedDeleteCbs, :EnableVpcCoreDNS, :TagSpecification
        
        def initialize(clusterid=nil, clustername=nil, vpcid=nil, subnetids=nil, k8sversion=nil, status=nil, clusterdesc=nil, createdtime=nil, servicesubnetid=nil, dnsservers=nil, needdeletecbs=nil, enablevpccoredns=nil, tagspecification=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @VpcId = vpcid
          @SubnetIds = subnetids
          @K8SVersion = k8sversion
          @Status = status
          @ClusterDesc = clusterdesc
          @CreatedTime = createdtime
          @ServiceSubnetId = servicesubnetid
          @DnsServers = dnsservers
          @NeedDeleteCbs = needdeletecbs
          @EnableVpcCoreDNS = enablevpccoredns
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @K8SVersion = params['K8SVersion']
          @Status = params['Status']
          @ClusterDesc = params['ClusterDesc']
          @CreatedTime = params['CreatedTime']
          @ServiceSubnetId = params['ServiceSubnetId']
          unless params['DnsServers'].nil?
            @DnsServers = []
            params['DnsServers'].each do |i|
              dnsserverconf_tmp = DnsServerConf.new
              dnsserverconf_tmp.deserialize(i)
              @DnsServers << dnsserverconf_tmp
            end
          end
          @NeedDeleteCbs = params['NeedDeleteCbs']
          @EnableVpcCoreDNS = params['EnableVpcCoreDNS']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
        end
      end

      # EnableClusterAudit请求参数结构体
      class EnableClusterAuditRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param LogsetId: CLS日志集ID
        # @type LogsetId: String
        # @param TopicId: CLS日志主题ID
        # @type TopicId: String

        attr_accessor :ClusterId, :LogsetId, :TopicId
        
        def initialize(clusterid=nil, logsetid=nil, topicid=nil)
          @ClusterId = clusterid
          @LogsetId = logsetid
          @TopicId = topicid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
        end
      end

      # EnableClusterAudit返回参数结构体
      class EnableClusterAuditResponse < TencentCloud::Common::AbstractModel
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

      # EnableClusterDeletionProtection请求参数结构体
      class EnableClusterDeletionProtectionRequest < TencentCloud::Common::AbstractModel
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

      # EnableClusterDeletionProtection返回参数结构体
      class EnableClusterDeletionProtectionResponse < TencentCloud::Common::AbstractModel
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

      # EnableEventPersistence请求参数结构体
      class EnableEventPersistenceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param LogsetId: cls服务的logsetID
        # @type LogsetId: String
        # @param TopicId: cls服务的topicID
        # @type TopicId: String

        attr_accessor :ClusterId, :LogsetId, :TopicId
        
        def initialize(clusterid=nil, logsetid=nil, topicid=nil)
          @ClusterId = clusterid
          @LogsetId = logsetid
          @TopicId = topicid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
        end
      end

      # EnableEventPersistence返回参数结构体
      class EnableEventPersistenceResponse < TencentCloud::Common::AbstractModel
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

      # EnableVpcCniNetworkType请求参数结构体
      class EnableVpcCniNetworkTypeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VpcCniType: 开启vpc-cni的模式，tke-route-eni开启的是策略路由模式，tke-direct-eni开启的是独立网卡模式
        # @type VpcCniType: String
        # @param EnableStaticIp: 是否开启固定IP模式
        # @type EnableStaticIp: Boolean
        # @param Subnets: 使用的容器子网
        # @type Subnets: Array
        # @param ExpiredSeconds: 在固定IP模式下，Pod销毁后退还IP的时间，传参必须大于300；不传默认IP永不销毁。
        # @type ExpiredSeconds: Integer

        attr_accessor :ClusterId, :VpcCniType, :EnableStaticIp, :Subnets, :ExpiredSeconds
        
        def initialize(clusterid=nil, vpccnitype=nil, enablestaticip=nil, subnets=nil, expiredseconds=nil)
          @ClusterId = clusterid
          @VpcCniType = vpccnitype
          @EnableStaticIp = enablestaticip
          @Subnets = subnets
          @ExpiredSeconds = expiredseconds
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VpcCniType = params['VpcCniType']
          @EnableStaticIp = params['EnableStaticIp']
          @Subnets = params['Subnets']
          @ExpiredSeconds = params['ExpiredSeconds']
        end
      end

      # EnableVpcCniNetworkType返回参数结构体
      class EnableVpcCniNetworkTypeResponse < TencentCloud::Common::AbstractModel
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

      # 描述了实例的增强服务启用情况与其设置，如云安全，云监控等实例 Agent
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 开启云安全服务。若不指定该参数，则默认开启云安全服务。
        # @type SecurityService: :class:`Tencentcloud::Tke.v20180525.models.RunSecurityServiceEnabled`
        # @param MonitorService: 开启云监控服务。若不指定该参数，则默认开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Tke.v20180525.models.RunMonitorServiceEnabled`
        # @param AutomationService: 开启云自动化助手服务。若不指定该参数，则默认不开启云自动化助手服务。
        # @type AutomationService: :class:`Tencentcloud::Tke.v20180525.models.RunAutomationServiceEnabled`

        attr_accessor :SecurityService, :MonitorService, :AutomationService
        
        def initialize(securityservice=nil, monitorservice=nil, automationservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
          @AutomationService = automationservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = RunSecurityServiceEnabled.new
            @SecurityService.deserialize(params['SecurityService'])
          end
          unless params['MonitorService'].nil?
            @MonitorService = RunMonitorServiceEnabled.new
            @MonitorService.deserialize(params['MonitorService'])
          end
          unless params['AutomationService'].nil?
            @AutomationService = RunAutomationServiceEnabled.new
            @AutomationService.deserialize(params['AutomationService'])
          end
        end
      end

      # EnvironmentVariable
      class EnvironmentVariable < TencentCloud::Common::AbstractModel
        # @param Name: key
        # @type Name: String
        # @param Value: val
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

      # 服务事件
      class Event < TencentCloud::Common::AbstractModel
        # @param PodName: pod名称
        # @type PodName: String
        # @param Reason: 事件原因内容
        # @type Reason: String
        # @param Type: 事件类型
        # @type Type: String
        # @param Count: 事件出现次数
        # @type Count: Integer
        # @param FirstTimestamp: 事件第一次出现时间
        # @type FirstTimestamp: String
        # @param LastTimestamp: 事件最后一次出现时间
        # @type LastTimestamp: String
        # @param Message: 事件内容
        # @type Message: String

        attr_accessor :PodName, :Reason, :Type, :Count, :FirstTimestamp, :LastTimestamp, :Message
        
        def initialize(podname=nil, reason=nil, type=nil, count=nil, firsttimestamp=nil, lasttimestamp=nil, message=nil)
          @PodName = podname
          @Reason = reason
          @Type = type
          @Count = count
          @FirstTimestamp = firsttimestamp
          @LastTimestamp = lasttimestamp
          @Message = message
        end

        def deserialize(params)
          @PodName = params['PodName']
          @Reason = params['Reason']
          @Type = params['Type']
          @Count = params['Count']
          @FirstTimestamp = params['FirstTimestamp']
          @LastTimestamp = params['LastTimestamp']
          @Message = params['Message']
        end
      end

      # 探针在容器内执行检测命令参数类型
      class Exec < TencentCloud::Common::AbstractModel
        # @param Commands: 容器内检测的命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Commands: Array

        attr_accessor :Commands
        
        def initialize(commands=nil)
          @Commands = commands
        end

        def deserialize(params)
          @Commands = params['Commands']
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
        # @param IPv6Addresses: 实例的IPv6地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Addresses: Array

        attr_accessor :Usable, :UnusableReason, :AlreadyInCluster, :InstanceId, :InstanceName, :PrivateIpAddresses, :PublicIpAddresses, :CreatedTime, :CPU, :Memory, :OsName, :InstanceType, :AutoscalingGroupId, :InstanceChargeType, :IPv6Addresses
        
        def initialize(usable=nil, unusablereason=nil, alreadyincluster=nil, instanceid=nil, instancename=nil, privateipaddresses=nil, publicipaddresses=nil, createdtime=nil, cpu=nil, memory=nil, osname=nil, instancetype=nil, autoscalinggroupid=nil, instancechargetype=nil, ipv6addresses=nil)
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
          @IPv6Addresses = ipv6addresses
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
          @IPv6Addresses = params['IPv6Addresses']
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
        # @param DesiredPodNumbers: 自定义模式集群，可指定每个节点的pod数量
        # @type DesiredPodNumbers: Array

        attr_accessor :NodeRole, :ExistedInstancesPara, :InstanceAdvancedSettingsOverride, :DesiredPodNumbers
        
        def initialize(noderole=nil, existedinstancespara=nil, instanceadvancedsettingsoverride=nil, desiredpodnumbers=nil)
          @NodeRole = noderole
          @ExistedInstancesPara = existedinstancespara
          @InstanceAdvancedSettingsOverride = instanceadvancedsettingsoverride
          @DesiredPodNumbers = desiredpodnumbers
        end

        def deserialize(params)
          @NodeRole = params['NodeRole']
          unless params['ExistedInstancesPara'].nil?
            @ExistedInstancesPara = ExistedInstancesPara.new
            @ExistedInstancesPara.deserialize(params['ExistedInstancesPara'])
          end
          unless params['InstanceAdvancedSettingsOverride'].nil?
            @InstanceAdvancedSettingsOverride = InstanceAdvancedSettings.new
            @InstanceAdvancedSettingsOverride.deserialize(params['InstanceAdvancedSettingsOverride'])
          end
          @DesiredPodNumbers = params['DesiredPodNumbers']
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
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @HostName = params['HostName']
        end
      end

      # 创建集群时，选择安装的扩展组件的信息
      class ExtensionAddon < TencentCloud::Common::AbstractModel
        # @param AddonName: 扩展组件名称
        # @type AddonName: String
        # @param AddonParam: 扩展组件信息(扩展组件资源对象的json字符串描述)
        # @type AddonParam: String

        attr_accessor :AddonName, :AddonParam
        
        def initialize(addonname=nil, addonparam=nil)
          @AddonName = addonname
          @AddonParam = addonparam
        end

        def deserialize(params)
          @AddonName = params['AddonName']
          @AddonParam = params['AddonParam']
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

      # ForwardApplicationRequestV3请求参数结构体
      class ForwardApplicationRequestV3Request < TencentCloud::Common::AbstractModel
        # @param Method: 请求集群addon的访问
        # @type Method: String
        # @param Path: 请求集群addon的路径
        # @type Path: String
        # @param Accept: 请求集群addon后允许接收的数据格式
        # @type Accept: String
        # @param ContentType: 请求集群addon的数据格式
        # @type ContentType: String
        # @param RequestBody: 请求集群addon的数据
        # @type RequestBody: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param EncodedBody: 是否编码请求内容
        # @type EncodedBody: String

        attr_accessor :Method, :Path, :Accept, :ContentType, :RequestBody, :ClusterName, :EncodedBody
        
        def initialize(method=nil, path=nil, accept=nil, contenttype=nil, requestbody=nil, clustername=nil, encodedbody=nil)
          @Method = method
          @Path = path
          @Accept = accept
          @ContentType = contenttype
          @RequestBody = requestbody
          @ClusterName = clustername
          @EncodedBody = encodedbody
        end

        def deserialize(params)
          @Method = params['Method']
          @Path = params['Path']
          @Accept = params['Accept']
          @ContentType = params['ContentType']
          @RequestBody = params['RequestBody']
          @ClusterName = params['ClusterName']
          @EncodedBody = params['EncodedBody']
        end
      end

      # ForwardApplicationRequestV3返回参数结构体
      class ForwardApplicationRequestV3Response < TencentCloud::Common::AbstractModel
        # @param ResponseBody: 请求集群addon后返回的数据
        # @type ResponseBody: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseBody, :RequestId
        
        def initialize(responsebody=nil, requestid=nil)
          @ResponseBody = responsebody
          @RequestId = requestid
        end

        def deserialize(params)
          @ResponseBody = params['ResponseBody']
          @RequestId = params['RequestId']
        end
      end

      # ForwardTKEEdgeApplicationRequestV3请求参数结构体
      class ForwardTKEEdgeApplicationRequestV3Request < TencentCloud::Common::AbstractModel
        # @param Method: 请求集群addon的访问
        # @type Method: String
        # @param Path: 请求集群addon的路径
        # @type Path: String
        # @param Accept: 请求集群addon后允许接收的数据格式
        # @type Accept: String
        # @param ContentType: 请求集群addon的数据格式
        # @type ContentType: String
        # @param RequestBody: 请求集群addon的数据
        # @type RequestBody: String
        # @param ClusterName: 集群名称，例如cls-1234abcd
        # @type ClusterName: String
        # @param EncodedBody: 是否编码请求内容
        # @type EncodedBody: String

        attr_accessor :Method, :Path, :Accept, :ContentType, :RequestBody, :ClusterName, :EncodedBody
        
        def initialize(method=nil, path=nil, accept=nil, contenttype=nil, requestbody=nil, clustername=nil, encodedbody=nil)
          @Method = method
          @Path = path
          @Accept = accept
          @ContentType = contenttype
          @RequestBody = requestbody
          @ClusterName = clustername
          @EncodedBody = encodedbody
        end

        def deserialize(params)
          @Method = params['Method']
          @Path = params['Path']
          @Accept = params['Accept']
          @ContentType = params['ContentType']
          @RequestBody = params['RequestBody']
          @ClusterName = params['ClusterName']
          @EncodedBody = params['EncodedBody']
        end
      end

      # ForwardTKEEdgeApplicationRequestV3返回参数结构体
      class ForwardTKEEdgeApplicationRequestV3Response < TencentCloud::Common::AbstractModel
        # @param ResponseBody: 请求集群addon后返回的数据
        # @type ResponseBody: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseBody, :RequestId
        
        def initialize(responsebody=nil, requestid=nil)
          @ResponseBody = responsebody
          @RequestId = requestid
        end

        def deserialize(params)
          @ResponseBody = params['ResponseBody']
          @RequestId = params['RequestId']
        end
      end

      # GPU相关的参数，包括驱动版本，CUDA版本，cuDNN版本以及是否开启MIG
      class GPUArgs < TencentCloud::Common::AbstractModel
        # @param MIGEnable: 是否启用MIG特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MIGEnable: Boolean
        # @param Driver: GPU驱动版本信息
        # @type Driver: :class:`Tencentcloud::Tke.v20180525.models.DriverVersion`
        # @param CUDA: CUDA版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CUDA: :class:`Tencentcloud::Tke.v20180525.models.DriverVersion`
        # @param CUDNN: cuDNN版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CUDNN: :class:`Tencentcloud::Tke.v20180525.models.CUDNN`
        # @param CustomDriver: 自定义GPU驱动信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomDriver: :class:`Tencentcloud::Tke.v20180525.models.CustomDriver`

        attr_accessor :MIGEnable, :Driver, :CUDA, :CUDNN, :CustomDriver
        
        def initialize(migenable=nil, driver=nil, cuda=nil, cudnn=nil, customdriver=nil)
          @MIGEnable = migenable
          @Driver = driver
          @CUDA = cuda
          @CUDNN = cudnn
          @CustomDriver = customdriver
        end

        def deserialize(params)
          @MIGEnable = params['MIGEnable']
          unless params['Driver'].nil?
            @Driver = DriverVersion.new
            @Driver.deserialize(params['Driver'])
          end
          unless params['CUDA'].nil?
            @CUDA = DriverVersion.new
            @CUDA.deserialize(params['CUDA'])
          end
          unless params['CUDNN'].nil?
            @CUDNN = CUDNN.new
            @CUDNN.deserialize(params['CUDNN'])
          end
          unless params['CustomDriver'].nil?
            @CustomDriver = CustomDriver.new
            @CustomDriver.deserialize(params['CustomDriver'])
          end
        end
      end

      # GetClusterLevelPrice请求参数结构体
      class GetClusterLevelPriceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterLevel: 集群规格，托管集群询价
        # @type ClusterLevel: String

        attr_accessor :ClusterLevel
        
        def initialize(clusterlevel=nil)
          @ClusterLevel = clusterlevel
        end

        def deserialize(params)
          @ClusterLevel = params['ClusterLevel']
        end
      end

      # GetClusterLevelPrice返回参数结构体
      class GetClusterLevelPriceResponse < TencentCloud::Common::AbstractModel
        # @param Cost: 询价结果，单位：分，打折后
        # @type Cost: Integer
        # @param TotalCost: 询价结果，单位：分，折扣前
        # @type TotalCost: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cost, :TotalCost, :RequestId
        
        def initialize(cost=nil, totalcost=nil, requestid=nil)
          @Cost = cost
          @TotalCost = totalcost
          @RequestId = requestid
        end

        def deserialize(params)
          @Cost = params['Cost']
          @TotalCost = params['TotalCost']
          @RequestId = params['RequestId']
        end
      end

      # GetMostSuitableImageCache请求参数结构体
      class GetMostSuitableImageCacheRequest < TencentCloud::Common::AbstractModel
        # @param Images: 容器镜像列表
        # @type Images: Array

        attr_accessor :Images
        
        def initialize(images=nil)
          @Images = images
        end

        def deserialize(params)
          @Images = params['Images']
        end
      end

      # GetMostSuitableImageCache返回参数结构体
      class GetMostSuitableImageCacheResponse < TencentCloud::Common::AbstractModel
        # @param Found: 是否有匹配的镜像缓存
        # @type Found: Boolean
        # @param ImageCache: 匹配的镜像缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageCache: :class:`Tencentcloud::Tke.v20180525.models.ImageCache`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Found, :ImageCache, :RequestId
        
        def initialize(found=nil, imagecache=nil, requestid=nil)
          @Found = found
          @ImageCache = imagecache
          @RequestId = requestid
        end

        def deserialize(params)
          @Found = params['Found']
          unless params['ImageCache'].nil?
            @ImageCache = ImageCache.new
            @ImageCache.deserialize(params['ImageCache'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTkeAppChartList请求参数结构体
      class GetTkeAppChartListRequest < TencentCloud::Common::AbstractModel
        # @param Kind: app类型，取值log,scheduler,network,storage,monitor,dns,image,other,invisible
        # @type Kind: String
        # @param Arch: app支持的操作系统，取值arm32、arm64、amd64
        # @type Arch: String
        # @param ClusterType: 集群类型，取值tke、eks
        # @type ClusterType: String

        attr_accessor :Kind, :Arch, :ClusterType
        
        def initialize(kind=nil, arch=nil, clustertype=nil)
          @Kind = kind
          @Arch = arch
          @ClusterType = clustertype
        end

        def deserialize(params)
          @Kind = params['Kind']
          @Arch = params['Arch']
          @ClusterType = params['ClusterType']
        end
      end

      # GetTkeAppChartList返回参数结构体
      class GetTkeAppChartListResponse < TencentCloud::Common::AbstractModel
        # @param AppCharts: 所支持的chart列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppCharts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppCharts, :RequestId
        
        def initialize(appcharts=nil, requestid=nil)
          @AppCharts = appcharts
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppCharts'].nil?
            @AppCharts = []
            params['AppCharts'].each do |i|
              appchart_tmp = AppChart.new
              appchart_tmp.deserialize(i)
              @AppCharts << appchart_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetUpgradeInstanceProgress请求参数结构体
      class GetUpgradeInstanceProgressRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Limit: 最多获取多少个节点的进度
        # @type Limit: Integer
        # @param Offset: 从第几个节点开始获取进度
        # @type Offset: Integer

        attr_accessor :ClusterId, :Limit, :Offset
        
        def initialize(clusterid=nil, limit=nil, offset=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # GetUpgradeInstanceProgress返回参数结构体
      class GetUpgradeInstanceProgressResponse < TencentCloud::Common::AbstractModel
        # @param Total: 升级节点总数
        # @type Total: Integer
        # @param Done: 已升级节点总数
        # @type Done: Integer
        # @param LifeState: 升级任务生命周期
        # process 运行中
        # paused 已停止
        # pauing 正在停止
        # done  已完成
        # timeout 已超时
        # aborted 已取消
        # @type LifeState: String
        # @param Instances: 各节点升级进度详情
        # @type Instances: Array
        # @param ClusterStatus: 集群当前状态
        # @type ClusterStatus: :class:`Tencentcloud::Tke.v20180525.models.InstanceUpgradeClusterStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Done, :LifeState, :Instances, :ClusterStatus, :RequestId
        
        def initialize(total=nil, done=nil, lifestate=nil, instances=nil, clusterstatus=nil, requestid=nil)
          @Total = total
          @Done = done
          @LifeState = lifestate
          @Instances = instances
          @ClusterStatus = clusterstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Done = params['Done']
          @LifeState = params['LifeState']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceupgradeprogressitem_tmp = InstanceUpgradeProgressItem.new
              instanceupgradeprogressitem_tmp.deserialize(i)
              @Instances << instanceupgradeprogressitem_tmp
            end
          end
          unless params['ClusterStatus'].nil?
            @ClusterStatus = InstanceUpgradeClusterStatus.new
            @ClusterStatus.deserialize(params['ClusterStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Probe中的HttpGet
      class HttpGet < TencentCloud::Common::AbstractModel
        # @param Path: HttpGet检测的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Port: HttpGet检测的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Scheme: HTTP or HTTPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheme: String

        attr_accessor :Path, :Port, :Scheme
        
        def initialize(path=nil, port=nil, scheme=nil)
          @Path = path
          @Port = port
          @Scheme = scheme
        end

        def deserialize(params)
          @Path = params['Path']
          @Port = params['Port']
          @Scheme = params['Scheme']
        end
      end

      # IP 地址
      class IPAddress < TencentCloud::Common::AbstractModel
        # @param Type: Ip 地址的类型。可为 advertise, public 等
        # @type Type: String
        # @param Ip: Ip 地址
        # @type Ip: String
        # @param Port: 网络端口
        # @type Port: Integer

        attr_accessor :Type, :Ip, :Port
        
        def initialize(type=nil, ip=nil, port=nil)
          @Type = type
          @Ip = ip
          @Port = port
        end

        def deserialize(params)
          @Type = params['Type']
          @Ip = params['Ip']
          @Port = params['Port']
        end
      end

      # 镜像缓存的信息
      class ImageCache < TencentCloud::Common::AbstractModel
        # @param ImageCacheId: 镜像缓存Id
        # @type ImageCacheId: String
        # @param ImageCacheName: 镜像缓存名称
        # @type ImageCacheName: String
        # @param ImageCacheSize: 镜像缓存大小。单位：GiB
        # @type ImageCacheSize: Integer
        # @param Images: 镜像缓存包含的镜像列表
        # @type Images: Array
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param ExpireDateTime: 到期时间
        # @type ExpireDateTime: String
        # @param Events: 镜像缓存事件信息
        # @type Events: Array
        # @param LastMatchedTime: 最新一次匹配到镜像缓存的时间
        # @type LastMatchedTime: String
        # @param SnapshotId: 镜像缓存对应的快照Id
        # @type SnapshotId: String
        # @param Status: 镜像缓存状态，可能取值：
        # Pending：创建中
        # Ready：创建完成
        # Failed：创建失败
        # Updating：更新中
        # UpdateFailed：更新失败
        # 只有状态为Ready时，才能正常使用镜像缓存
        # @type Status: String

        attr_accessor :ImageCacheId, :ImageCacheName, :ImageCacheSize, :Images, :CreationTime, :ExpireDateTime, :Events, :LastMatchedTime, :SnapshotId, :Status
        
        def initialize(imagecacheid=nil, imagecachename=nil, imagecachesize=nil, images=nil, creationtime=nil, expiredatetime=nil, events=nil, lastmatchedtime=nil, snapshotid=nil, status=nil)
          @ImageCacheId = imagecacheid
          @ImageCacheName = imagecachename
          @ImageCacheSize = imagecachesize
          @Images = images
          @CreationTime = creationtime
          @ExpireDateTime = expiredatetime
          @Events = events
          @LastMatchedTime = lastmatchedtime
          @SnapshotId = snapshotid
          @Status = status
        end

        def deserialize(params)
          @ImageCacheId = params['ImageCacheId']
          @ImageCacheName = params['ImageCacheName']
          @ImageCacheSize = params['ImageCacheSize']
          @Images = params['Images']
          @CreationTime = params['CreationTime']
          @ExpireDateTime = params['ExpireDateTime']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              imagecacheevent_tmp = ImageCacheEvent.new
              imagecacheevent_tmp.deserialize(i)
              @Events << imagecacheevent_tmp
            end
          end
          @LastMatchedTime = params['LastMatchedTime']
          @SnapshotId = params['SnapshotId']
          @Status = params['Status']
        end
      end

      # 镜像缓存的事件
      class ImageCacheEvent < TencentCloud::Common::AbstractModel
        # @param ImageCacheId: 镜像缓存Id
        # @type ImageCacheId: String
        # @param Type: 事件类型, Normal或者Warning
        # @type Type: String
        # @param Reason: 事件原因简述
        # @type Reason: String
        # @param Message: 事件原因详述
        # @type Message: String
        # @param FirstTimestamp: 事件第一次出现时间
        # @type FirstTimestamp: String
        # @param LastTimestamp: 事件最后一次出现时间
        # @type LastTimestamp: String

        attr_accessor :ImageCacheId, :Type, :Reason, :Message, :FirstTimestamp, :LastTimestamp
        
        def initialize(imagecacheid=nil, type=nil, reason=nil, message=nil, firsttimestamp=nil, lasttimestamp=nil)
          @ImageCacheId = imagecacheid
          @Type = type
          @Reason = reason
          @Message = message
          @FirstTimestamp = firsttimestamp
          @LastTimestamp = lasttimestamp
        end

        def deserialize(params)
          @ImageCacheId = params['ImageCacheId']
          @Type = params['Type']
          @Reason = params['Reason']
          @Message = params['Message']
          @FirstTimestamp = params['FirstTimestamp']
          @LastTimestamp = params['LastTimestamp']
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
        
        def initialize(_alias=nil, osname=nil, imageid=nil, oscustomizetype=nil)
          @Alias = _alias
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

      # 从镜像仓库拉取镜像的凭据
      class ImageRegistryCredential < TencentCloud::Common::AbstractModel
        # @param Server: 镜像仓库地址
        # @type Server: String
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码
        # @type Password: String
        # @param Name: ImageRegistryCredential的名字
        # @type Name: String

        attr_accessor :Server, :Username, :Password, :Name
        
        def initialize(server=nil, username=nil, password=nil, name=nil)
          @Server = server
          @Username = username
          @Password = password
          @Name = name
        end

        def deserialize(params)
          @Server = params['Server']
          @Username = params['Username']
          @Password = params['Password']
          @Name = params['Name']
        end
      end

      # InstallEdgeLogAgent请求参数结构体
      class InstallEdgeLogAgentRequest < TencentCloud::Common::AbstractModel
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

      # InstallEdgeLogAgent返回参数结构体
      class InstallEdgeLogAgentResponse < TencentCloud::Common::AbstractModel
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

      # InstallLogAgent请求参数结构体
      class InstallLogAgentRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: TKE集群ID
        # @type ClusterId: String
        # @param KubeletRootDir: kubelet根目录
        # @type KubeletRootDir: String

        attr_accessor :ClusterId, :KubeletRootDir
        
        def initialize(clusterid=nil, kubeletrootdir=nil)
          @ClusterId = clusterid
          @KubeletRootDir = kubeletrootdir
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @KubeletRootDir = params['KubeletRootDir']
        end
      end

      # InstallLogAgent返回参数结构体
      class InstallLogAgentResponse < TencentCloud::Common::AbstractModel
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
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          @CreatedTime = params['CreatedTime']
          @LanIP = params['LanIP']
          @NodePoolId = params['NodePoolId']
          @AutoscalingGroupId = params['AutoscalingGroupId']
        end
      end

      # 描述了k8s集群相关配置与信息。
      class InstanceAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param MountTarget: 数据盘挂载点, 默认不挂载数据盘. 已格式化的 ext3，ext4，xfs 文件系统的数据盘将直接挂载，其他文件系统或未格式化的数据盘将自动格式化为ext4 (tlinux系统格式化成xfs)并挂载，请注意备份数据! 无数据盘或有多块数据盘的云主机此设置不生效。
        # 注意，注意，多盘场景请使用下方的DataDisks数据结构，设置对应的云盘类型、云盘大小、挂载路径、是否格式化等信息。
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
        # @param DataDisks: 多盘数据盘挂载信息：新建节点时请确保购买CVM的参数传递了购买多个数据盘的信息，如CreateClusterInstances API的RunInstancesPara下的DataDisks也需要设置购买多个数据盘, 具体可以参考CreateClusterInstances接口的添加集群节点(多块数据盘)样例；添加已有节点时，请确保填写的分区信息在节点上真实存在
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array
        # @param ExtraArgs: 节点相关的自定义参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.InstanceExtraArgs`
        # @param DesiredPodNumber: 该节点属于podCIDR大小自定义模式时，可指定节点上运行的pod数量上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredPodNumber: Integer
        # @param GPUArgs: GPU驱动相关参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUArgs: :class:`Tencentcloud::Tke.v20180525.models.GPUArgs`
        # @param PreStartUserScript: base64 编码的用户脚本，在初始化节点之前执行，目前只对添加已有节点生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreStartUserScript: String
        # @param Taints: 节点污点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Taints: Array

        attr_accessor :MountTarget, :DockerGraphPath, :UserScript, :Unschedulable, :Labels, :DataDisks, :ExtraArgs, :DesiredPodNumber, :GPUArgs, :PreStartUserScript, :Taints
        
        def initialize(mounttarget=nil, dockergraphpath=nil, userscript=nil, unschedulable=nil, labels=nil, datadisks=nil, extraargs=nil, desiredpodnumber=nil, gpuargs=nil, prestartuserscript=nil, taints=nil)
          @MountTarget = mounttarget
          @DockerGraphPath = dockergraphpath
          @UserScript = userscript
          @Unschedulable = unschedulable
          @Labels = labels
          @DataDisks = datadisks
          @ExtraArgs = extraargs
          @DesiredPodNumber = desiredpodnumber
          @GPUArgs = gpuargs
          @PreStartUserScript = prestartuserscript
          @Taints = taints
        end

        def deserialize(params)
          @MountTarget = params['MountTarget']
          @DockerGraphPath = params['DockerGraphPath']
          @UserScript = params['UserScript']
          @Unschedulable = params['Unschedulable']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['ExtraArgs'].nil?
            @ExtraArgs = InstanceExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
          @DesiredPodNumber = params['DesiredPodNumber']
          unless params['GPUArgs'].nil?
            @GPUArgs = GPUArgs.new
            @GPUArgs.deserialize(params['GPUArgs'])
          end
          @PreStartUserScript = params['PreStartUserScript']
          unless params['Taints'].nil?
            @Taints = []
            params['Taints'].each do |i|
              taint_tmp = Taint.new
              taint_tmp.deserialize(i)
              @Taints << taint_tmp
            end
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
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @Zone = params['Zone']
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

      # 节点升级过程中集群当前状态
      class InstanceUpgradeClusterStatus < TencentCloud::Common::AbstractModel
        # @param PodTotal: pod总数
        # @type PodTotal: Integer
        # @param NotReadyPod: NotReady pod总数
        # @type NotReadyPod: Integer

        attr_accessor :PodTotal, :NotReadyPod
        
        def initialize(podtotal=nil, notreadypod=nil)
          @PodTotal = podtotal
          @NotReadyPod = notreadypod
        end

        def deserialize(params)
          @PodTotal = params['PodTotal']
          @NotReadyPod = params['NotReadyPod']
        end
      end

      # 某个节点升级前检查结果
      class InstanceUpgradePreCheckResult < TencentCloud::Common::AbstractModel
        # @param CheckPass: 检查是否通过
        # @type CheckPass: Boolean
        # @param Items: 检查项数组
        # @type Items: Array
        # @param SinglePods: 本节点独立pod列表
        # @type SinglePods: Array

        attr_accessor :CheckPass, :Items, :SinglePods
        
        def initialize(checkpass=nil, items=nil, singlepods=nil)
          @CheckPass = checkpass
          @Items = items
          @SinglePods = singlepods
        end

        def deserialize(params)
          @CheckPass = params['CheckPass']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instanceupgradeprecheckresultitem_tmp = InstanceUpgradePreCheckResultItem.new
              instanceupgradeprecheckresultitem_tmp.deserialize(i)
              @Items << instanceupgradeprecheckresultitem_tmp
            end
          end
          @SinglePods = params['SinglePods']
        end
      end

      # 节点升级检查项结果
      class InstanceUpgradePreCheckResultItem < TencentCloud::Common::AbstractModel
        # @param Namespace: 工作负载的命名空间
        # @type Namespace: String
        # @param WorkLoadKind: 工作负载类型
        # @type WorkLoadKind: String
        # @param WorkLoadName: 工作负载名称
        # @type WorkLoadName: String
        # @param Before: 驱逐节点前工作负载running的pod数目
        # @type Before: Integer
        # @param After: 驱逐节点后工作负载running的pod数目
        # @type After: Integer
        # @param Pods: 工作负载在本节点上的pod列表
        # @type Pods: Array

        attr_accessor :Namespace, :WorkLoadKind, :WorkLoadName, :Before, :After, :Pods
        
        def initialize(namespace=nil, workloadkind=nil, workloadname=nil, before=nil, after=nil, pods=nil)
          @Namespace = namespace
          @WorkLoadKind = workloadkind
          @WorkLoadName = workloadname
          @Before = before
          @After = after
          @Pods = pods
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @WorkLoadKind = params['WorkLoadKind']
          @WorkLoadName = params['WorkLoadName']
          @Before = params['Before']
          @After = params['After']
          @Pods = params['Pods']
        end
      end

      # 某个节点的升级进度
      class InstanceUpgradeProgressItem < TencentCloud::Common::AbstractModel
        # @param InstanceID: 节点instanceID
        # @type InstanceID: String
        # @param LifeState: 任务生命周期
        # process 运行中
        # paused 已停止
        # pauing 正在停止
        # done  已完成
        # timeout 已超时
        # aborted 已取消
        # pending 还未开始
        # @type LifeState: String
        # @param StartAt: 升级开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartAt: String
        # @param EndAt: 升级结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndAt: String
        # @param CheckResult: 升级前检查结果
        # @type CheckResult: :class:`Tencentcloud::Tke.v20180525.models.InstanceUpgradePreCheckResult`
        # @param Detail: 升级步骤详情
        # @type Detail: Array

        attr_accessor :InstanceID, :LifeState, :StartAt, :EndAt, :CheckResult, :Detail
        
        def initialize(instanceid=nil, lifestate=nil, startat=nil, endat=nil, checkresult=nil, detail=nil)
          @InstanceID = instanceid
          @LifeState = lifestate
          @StartAt = startat
          @EndAt = endat
          @CheckResult = checkresult
          @Detail = detail
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @LifeState = params['LifeState']
          @StartAt = params['StartAt']
          @EndAt = params['EndAt']
          unless params['CheckResult'].nil?
            @CheckResult = InstanceUpgradePreCheckResult.new
            @CheckResult.deserialize(params['CheckResult'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              taskstepinfo_tmp = TaskStepInfo.new
              taskstepinfo_tmp.deserialize(i)
              @Detail << taskstepinfo_tmp
            end
          end
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

      # 健康探针
      class LivenessOrReadinessProbe < TencentCloud::Common::AbstractModel
        # @param Probe: 探针参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Probe: :class:`Tencentcloud::Tke.v20180525.models.Probe`
        # @param HttpGet: HttpGet检测参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpGet: :class:`Tencentcloud::Tke.v20180525.models.HttpGet`
        # @param Exec: 容器内检测命令参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exec: :class:`Tencentcloud::Tke.v20180525.models.Exec`
        # @param TcpSocket: TcpSocket检测的端口参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcpSocket: :class:`Tencentcloud::Tke.v20180525.models.TcpSocket`

        attr_accessor :Probe, :HttpGet, :Exec, :TcpSocket
        
        def initialize(probe=nil, httpget=nil, exec=nil, tcpsocket=nil)
          @Probe = probe
          @HttpGet = httpget
          @Exec = exec
          @TcpSocket = tcpsocket
        end

        def deserialize(params)
          unless params['Probe'].nil?
            @Probe = Probe.new
            @Probe.deserialize(params['Probe'])
          end
          unless params['HttpGet'].nil?
            @HttpGet = HttpGet.new
            @HttpGet.deserialize(params['HttpGet'])
          end
          unless params['Exec'].nil?
            @Exec = Exec.new
            @Exec.deserialize(params['Exec'])
          end
          unless params['TcpSocket'].nil?
            @TcpSocket = TcpSocket.new
            @TcpSocket.deserialize(params['TcpSocket'])
          end
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
            @ClusterAsGroupAttribute = ClusterAsGroupAttribute.new
            @ClusterAsGroupAttribute.deserialize(params['ClusterAsGroupAttribute'])
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

      # ModifyClusterAsGroupOptionAttribute请求参数结构体
      class ModifyClusterAsGroupOptionAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterAsGroupOption: 集群弹性伸缩属性
        # @type ClusterAsGroupOption: :class:`Tencentcloud::Tke.v20180525.models.ClusterAsGroupOption`

        attr_accessor :ClusterId, :ClusterAsGroupOption
        
        def initialize(clusterid=nil, clusterasgroupoption=nil)
          @ClusterId = clusterid
          @ClusterAsGroupOption = clusterasgroupoption
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ClusterAsGroupOption'].nil?
            @ClusterAsGroupOption = ClusterAsGroupOption.new
            @ClusterAsGroupOption.deserialize(params['ClusterAsGroupOption'])
          end
        end
      end

      # ModifyClusterAsGroupOptionAttribute返回参数结构体
      class ModifyClusterAsGroupOptionAttributeResponse < TencentCloud::Common::AbstractModel
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
        # @param ClusterLevel: 集群等级
        # @type ClusterLevel: String
        # @param AutoUpgradeClusterLevel: 自动变配集群等级
        # @type AutoUpgradeClusterLevel: :class:`Tencentcloud::Tke.v20180525.models.AutoUpgradeClusterLevel`
        # @param QGPUShareEnable: 是否开启QGPU共享
        # @type QGPUShareEnable: Boolean

        attr_accessor :ClusterId, :ProjectId, :ClusterName, :ClusterDesc, :ClusterLevel, :AutoUpgradeClusterLevel, :QGPUShareEnable
        
        def initialize(clusterid=nil, projectid=nil, clustername=nil, clusterdesc=nil, clusterlevel=nil, autoupgradeclusterlevel=nil, qgpushareenable=nil)
          @ClusterId = clusterid
          @ProjectId = projectid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @ClusterLevel = clusterlevel
          @AutoUpgradeClusterLevel = autoupgradeclusterlevel
          @QGPUShareEnable = qgpushareenable
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProjectId = params['ProjectId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @ClusterLevel = params['ClusterLevel']
          unless params['AutoUpgradeClusterLevel'].nil?
            @AutoUpgradeClusterLevel = AutoUpgradeClusterLevel.new
            @AutoUpgradeClusterLevel.deserialize(params['AutoUpgradeClusterLevel'])
          end
          @QGPUShareEnable = params['QGPUShareEnable']
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
        # @param ClusterLevel: 集群等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterLevel: String
        # @param AutoUpgradeClusterLevel: 自动变配集群等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoUpgradeClusterLevel: :class:`Tencentcloud::Tke.v20180525.models.AutoUpgradeClusterLevel`
        # @param QGPUShareEnable: 是否开启QGPU共享
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QGPUShareEnable: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :ClusterName, :ClusterDesc, :ClusterLevel, :AutoUpgradeClusterLevel, :QGPUShareEnable, :RequestId
        
        def initialize(projectid=nil, clustername=nil, clusterdesc=nil, clusterlevel=nil, autoupgradeclusterlevel=nil, qgpushareenable=nil, requestid=nil)
          @ProjectId = projectid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @ClusterLevel = clusterlevel
          @AutoUpgradeClusterLevel = autoupgradeclusterlevel
          @QGPUShareEnable = qgpushareenable
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @ClusterLevel = params['ClusterLevel']
          unless params['AutoUpgradeClusterLevel'].nil?
            @AutoUpgradeClusterLevel = AutoUpgradeClusterLevel.new
            @AutoUpgradeClusterLevel.deserialize(params['AutoUpgradeClusterLevel'])
          end
          @QGPUShareEnable = params['QGPUShareEnable']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterAuthenticationOptions请求参数结构体
      class ModifyClusterAuthenticationOptionsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ServiceAccounts: ServiceAccount认证配置
        # @type ServiceAccounts: :class:`Tencentcloud::Tke.v20180525.models.ServiceAccountAuthenticationOptions`

        attr_accessor :ClusterId, :ServiceAccounts
        
        def initialize(clusterid=nil, serviceaccounts=nil)
          @ClusterId = clusterid
          @ServiceAccounts = serviceaccounts
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ServiceAccounts'].nil?
            @ServiceAccounts = ServiceAccountAuthenticationOptions.new
            @ServiceAccounts.deserialize(params['ServiceAccounts'])
          end
        end
      end

      # ModifyClusterAuthenticationOptions返回参数结构体
      class ModifyClusterAuthenticationOptionsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterEndpointSP请求参数结构体
      class ModifyClusterEndpointSPRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SecurityPolicies: 安全策略放通单个IP或CIDR(例如: "192.168.1.0/24",默认为拒绝所有)
        # @type SecurityPolicies: Array
        # @param SecurityGroup: 修改外网访问安全组
        # @type SecurityGroup: String

        attr_accessor :ClusterId, :SecurityPolicies, :SecurityGroup
        
        def initialize(clusterid=nil, securitypolicies=nil, securitygroup=nil)
          @ClusterId = clusterid
          @SecurityPolicies = securitypolicies
          @SecurityGroup = securitygroup
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SecurityPolicies = params['SecurityPolicies']
          @SecurityGroup = params['SecurityGroup']
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

      # ModifyClusterNodePool请求参数结构体
      class ModifyClusterNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NodePoolId: 节点池ID
        # @type NodePoolId: String
        # @param Name: 名称
        # @type Name: String
        # @param MaxNodesNum: 最大节点数
        # @type MaxNodesNum: Integer
        # @param MinNodesNum: 最小节点数
        # @type MinNodesNum: Integer
        # @param Labels: 标签
        # @type Labels: Array
        # @param Taints: 污点
        # @type Taints: Array
        # @param EnableAutoscale: 是否开启伸缩
        # @type EnableAutoscale: Boolean
        # @param OsName: 操作系统名称
        # @type OsName: String
        # @param OsCustomizeType: 镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        # @type OsCustomizeType: String
        # @param ExtraArgs: 节点自定义参数
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.InstanceExtraArgs`
        # @param Tags: 资源标签
        # @type Tags: Array
        # @param Unschedulable: 设置加入的节点是否参与调度，默认值为0，表示参与调度；非0表示不参与调度, 待节点初始化完成之后, 可执行kubectl uncordon nodename使node加入调度.
        # @type Unschedulable: Integer
        # @param DeletionProtection: 删除保护开关
        # @type DeletionProtection: Boolean

        attr_accessor :ClusterId, :NodePoolId, :Name, :MaxNodesNum, :MinNodesNum, :Labels, :Taints, :EnableAutoscale, :OsName, :OsCustomizeType, :ExtraArgs, :Tags, :Unschedulable, :DeletionProtection
        
        def initialize(clusterid=nil, nodepoolid=nil, name=nil, maxnodesnum=nil, minnodesnum=nil, labels=nil, taints=nil, enableautoscale=nil, osname=nil, oscustomizetype=nil, extraargs=nil, tags=nil, unschedulable=nil, deletionprotection=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @Name = name
          @MaxNodesNum = maxnodesnum
          @MinNodesNum = minnodesnum
          @Labels = labels
          @Taints = taints
          @EnableAutoscale = enableautoscale
          @OsName = osname
          @OsCustomizeType = oscustomizetype
          @ExtraArgs = extraargs
          @Tags = tags
          @Unschedulable = unschedulable
          @DeletionProtection = deletionprotection
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @Name = params['Name']
          @MaxNodesNum = params['MaxNodesNum']
          @MinNodesNum = params['MinNodesNum']
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
          @EnableAutoscale = params['EnableAutoscale']
          @OsName = params['OsName']
          @OsCustomizeType = params['OsCustomizeType']
          unless params['ExtraArgs'].nil?
            @ExtraArgs = InstanceExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Unschedulable = params['Unschedulable']
          @DeletionProtection = params['DeletionProtection']
        end
      end

      # ModifyClusterNodePool返回参数结构体
      class ModifyClusterNodePoolResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNodePoolDesiredCapacityAboutAsg请求参数结构体
      class ModifyNodePoolDesiredCapacityAboutAsgRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param DesiredCapacity: 节点池所关联的伸缩组的期望实例数
        # @type DesiredCapacity: Integer

        attr_accessor :ClusterId, :NodePoolId, :DesiredCapacity
        
        def initialize(clusterid=nil, nodepoolid=nil, desiredcapacity=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @DesiredCapacity = desiredcapacity
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @DesiredCapacity = params['DesiredCapacity']
        end
      end

      # ModifyNodePoolDesiredCapacityAboutAsg返回参数结构体
      class ModifyNodePoolDesiredCapacityAboutAsgResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNodePoolInstanceTypes请求参数结构体
      class ModifyNodePoolInstanceTypesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param InstanceTypes: 机型列表
        # @type InstanceTypes: Array

        attr_accessor :ClusterId, :NodePoolId, :InstanceTypes
        
        def initialize(clusterid=nil, nodepoolid=nil, instancetypes=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @InstanceTypes = instancetypes
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @InstanceTypes = params['InstanceTypes']
        end
      end

      # ModifyNodePoolInstanceTypes返回参数结构体
      class ModifyNodePoolInstanceTypesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusAgentExternalLabels请求参数结构体
      class ModifyPrometheusAgentExternalLabelsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ExternalLabels: 新的external_labels
        # @type ExternalLabels: Array

        attr_accessor :InstanceId, :ClusterId, :ExternalLabels
        
        def initialize(instanceid=nil, clusterid=nil, externallabels=nil)
          @InstanceId = instanceid
          @ClusterId = clusterid
          @ExternalLabels = externallabels
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterId = params['ClusterId']
          unless params['ExternalLabels'].nil?
            @ExternalLabels = []
            params['ExternalLabels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @ExternalLabels << label_tmp
            end
          end
        end
      end

      # ModifyPrometheusAgentExternalLabels返回参数结构体
      class ModifyPrometheusAgentExternalLabelsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusAlertPolicy请求参数结构体
      class ModifyPrometheusAlertPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AlertRule: 告警配置
        # @type AlertRule: :class:`Tencentcloud::Tke.v20180525.models.PrometheusAlertPolicyItem`

        attr_accessor :InstanceId, :AlertRule
        
        def initialize(instanceid=nil, alertrule=nil)
          @InstanceId = instanceid
          @AlertRule = alertrule
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AlertRule'].nil?
            @AlertRule = PrometheusAlertPolicyItem.new
            @AlertRule.deserialize(params['AlertRule'])
          end
        end
      end

      # ModifyPrometheusAlertPolicy返回参数结构体
      class ModifyPrometheusAlertPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusAlertRule请求参数结构体
      class ModifyPrometheusAlertRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AlertRule: 告警配置
        # @type AlertRule: :class:`Tencentcloud::Tke.v20180525.models.PrometheusAlertRuleDetail`

        attr_accessor :InstanceId, :AlertRule
        
        def initialize(instanceid=nil, alertrule=nil)
          @InstanceId = instanceid
          @AlertRule = alertrule
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AlertRule'].nil?
            @AlertRule = PrometheusAlertRuleDetail.new
            @AlertRule.deserialize(params['AlertRule'])
          end
        end
      end

      # ModifyPrometheusAlertRule返回参数结构体
      class ModifyPrometheusAlertRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusConfig请求参数结构体
      class ModifyPrometheusConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ServiceMonitors: ServiceMonitors配置
        # @type ServiceMonitors: Array
        # @param PodMonitors: PodMonitors配置
        # @type PodMonitors: Array
        # @param RawJobs: prometheus原生Job配置
        # @type RawJobs: Array

        attr_accessor :InstanceId, :ClusterType, :ClusterId, :ServiceMonitors, :PodMonitors, :RawJobs
        
        def initialize(instanceid=nil, clustertype=nil, clusterid=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil)
          @InstanceId = instanceid
          @ClusterType = clustertype
          @ClusterId = clusterid
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
        end
      end

      # ModifyPrometheusConfig返回参数结构体
      class ModifyPrometheusConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusGlobalNotification请求参数结构体
      class ModifyPrometheusGlobalNotificationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Notification: 告警通知渠道
        # @type Notification: :class:`Tencentcloud::Tke.v20180525.models.PrometheusNotificationItem`

        attr_accessor :InstanceId, :Notification
        
        def initialize(instanceid=nil, notification=nil)
          @InstanceId = instanceid
          @Notification = notification
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Notification'].nil?
            @Notification = PrometheusNotificationItem.new
            @Notification.deserialize(params['Notification'])
          end
        end
      end

      # ModifyPrometheusGlobalNotification返回参数结构体
      class ModifyPrometheusGlobalNotificationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusRecordRuleYaml请求参数结构体
      class ModifyPrometheusRecordRuleYamlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 聚合实例名称
        # @type Name: String
        # @param Content: 新的内容
        # @type Content: String

        attr_accessor :InstanceId, :Name, :Content
        
        def initialize(instanceid=nil, name=nil, content=nil)
          @InstanceId = instanceid
          @Name = name
          @Content = content
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Content = params['Content']
        end
      end

      # ModifyPrometheusRecordRuleYaml返回参数结构体
      class ModifyPrometheusRecordRuleYamlResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusTemp请求参数结构体
      class ModifyPrometheusTempRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param Template: 修改内容
        # @type Template: :class:`Tencentcloud::Tke.v20180525.models.PrometheusTempModify`

        attr_accessor :TemplateId, :Template
        
        def initialize(templateid=nil, template=nil)
          @TemplateId = templateid
          @Template = template
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Template'].nil?
            @Template = PrometheusTempModify.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # ModifyPrometheusTemp返回参数结构体
      class ModifyPrometheusTempResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrometheusTemplate请求参数结构体
      class ModifyPrometheusTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param Template: 修改内容
        # @type Template: :class:`Tencentcloud::Tke.v20180525.models.PrometheusTemplateModify`

        attr_accessor :TemplateId, :Template
        
        def initialize(templateid=nil, template=nil)
          @TemplateId = templateid
          @Template = template
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Template'].nil?
            @Template = PrometheusTemplateModify.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # ModifyPrometheusTemplate返回参数结构体
      class ModifyPrometheusTemplateResponse < TencentCloud::Common::AbstractModel
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

      # EKS Instance Nfs Volume
      class NfsVolume < TencentCloud::Common::AbstractModel
        # @param Name: nfs volume 数据卷名称
        # @type Name: String
        # @param Server: NFS 服务器地址
        # @type Server: String
        # @param Path: NFS 数据卷路径
        # @type Path: String
        # @param ReadOnly: 默认为 False
        # @type ReadOnly: Boolean

        attr_accessor :Name, :Server, :Path, :ReadOnly
        
        def initialize(name=nil, server=nil, path=nil, readonly=nil)
          @Name = name
          @Server = server
          @Path = path
          @ReadOnly = readonly
        end

        def deserialize(params)
          @Name = params['Name']
          @Server = params['Server']
          @Path = params['Path']
          @ReadOnly = params['ReadOnly']
        end
      end

      # 节点统计列表
      class NodeCountSummary < TencentCloud::Common::AbstractModel
        # @param ManuallyAdded: 手动管理的节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManuallyAdded: :class:`Tencentcloud::Tke.v20180525.models.ManuallyAdded`
        # @param AutoscalingAdded: 自动管理的节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoscalingAdded: :class:`Tencentcloud::Tke.v20180525.models.AutoscalingAdded`

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

      # 节点池描述
      class NodePool < TencentCloud::Common::AbstractModel
        # @param NodePoolId: NodePoolId 资源池id
        # @type NodePoolId: String
        # @param Name: Name 资源池名称
        # @type Name: String
        # @param ClusterInstanceId: ClusterInstanceId 集群实例id
        # @type ClusterInstanceId: String
        # @param LifeState: LifeState 状态，当前节点池生命周期状态包括：creating，normal，updating，deleting，deleted
        # @type LifeState: String
        # @param LaunchConfigurationId: LaunchConfigurationId 配置
        # @type LaunchConfigurationId: String
        # @param AutoscalingGroupId: AutoscalingGroupId 分组id
        # @type AutoscalingGroupId: String
        # @param Labels: Labels 标签
        # @type Labels: Array
        # @param Taints: Taints 污点标记
        # @type Taints: Array
        # @param NodeCountSummary: NodeCountSummary 节点列表
        # @type NodeCountSummary: :class:`Tencentcloud::Tke.v20180525.models.NodeCountSummary`
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
        # @param OsCustomizeType: 容器的镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsCustomizeType: String
        # @param ImageId: 镜像id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param DesiredPodNum: 集群属于节点podCIDR大小自定义模式时，节点池需要带上pod数量属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredPodNum: Integer
        # @param UserScript: 用户自定义脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserScript: String
        # @param Tags: 资源标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DeletionProtection: 删除保护开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionProtection: Boolean

        attr_accessor :NodePoolId, :Name, :ClusterInstanceId, :LifeState, :LaunchConfigurationId, :AutoscalingGroupId, :Labels, :Taints, :NodeCountSummary, :AutoscalingGroupStatus, :MaxNodesNum, :MinNodesNum, :DesiredNodesNum, :NodePoolOs, :OsCustomizeType, :ImageId, :DesiredPodNum, :UserScript, :Tags, :DeletionProtection
        
        def initialize(nodepoolid=nil, name=nil, clusterinstanceid=nil, lifestate=nil, launchconfigurationid=nil, autoscalinggroupid=nil, labels=nil, taints=nil, nodecountsummary=nil, autoscalinggroupstatus=nil, maxnodesnum=nil, minnodesnum=nil, desirednodesnum=nil, nodepoolos=nil, oscustomizetype=nil, imageid=nil, desiredpodnum=nil, userscript=nil, tags=nil, deletionprotection=nil)
          @NodePoolId = nodepoolid
          @Name = name
          @ClusterInstanceId = clusterinstanceid
          @LifeState = lifestate
          @LaunchConfigurationId = launchconfigurationid
          @AutoscalingGroupId = autoscalinggroupid
          @Labels = labels
          @Taints = taints
          @NodeCountSummary = nodecountsummary
          @AutoscalingGroupStatus = autoscalinggroupstatus
          @MaxNodesNum = maxnodesnum
          @MinNodesNum = minnodesnum
          @DesiredNodesNum = desirednodesnum
          @NodePoolOs = nodepoolos
          @OsCustomizeType = oscustomizetype
          @ImageId = imageid
          @DesiredPodNum = desiredpodnum
          @UserScript = userscript
          @Tags = tags
          @DeletionProtection = deletionprotection
        end

        def deserialize(params)
          @NodePoolId = params['NodePoolId']
          @Name = params['Name']
          @ClusterInstanceId = params['ClusterInstanceId']
          @LifeState = params['LifeState']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @AutoscalingGroupId = params['AutoscalingGroupId']
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
          unless params['NodeCountSummary'].nil?
            @NodeCountSummary = NodeCountSummary.new
            @NodeCountSummary.deserialize(params['NodeCountSummary'])
          end
          @AutoscalingGroupStatus = params['AutoscalingGroupStatus']
          @MaxNodesNum = params['MaxNodesNum']
          @MinNodesNum = params['MinNodesNum']
          @DesiredNodesNum = params['DesiredNodesNum']
          @NodePoolOs = params['NodePoolOs']
          @OsCustomizeType = params['OsCustomizeType']
          @ImageId = params['ImageId']
          @DesiredPodNum = params['DesiredPodNum']
          @UserScript = params['UserScript']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DeletionProtection = params['DeletionProtection']
        end
      end

      # 加入存量节点时的节点池选项
      class NodePoolOption < TencentCloud::Common::AbstractModel
        # @param AddToNodePool: 是否加入节点池
        # @type AddToNodePool: Boolean
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param InheritConfigurationFromNodePool: 是否继承节点池相关配置
        # @type InheritConfigurationFromNodePool: Boolean

        attr_accessor :AddToNodePool, :NodePoolId, :InheritConfigurationFromNodePool
        
        def initialize(addtonodepool=nil, nodepoolid=nil, inheritconfigurationfromnodepool=nil)
          @AddToNodePool = addtonodepool
          @NodePoolId = nodepoolid
          @InheritConfigurationFromNodePool = inheritconfigurationfromnodepool
        end

        def deserialize(params)
          @AddToNodePool = params['AddToNodePool']
          @NodePoolId = params['NodePoolId']
          @InheritConfigurationFromNodePool = params['InheritConfigurationFromNodePool']
        end
      end

      # 某机型可支持的最大 VPC-CNI 模式的 Pod 数量
      class PodLimitsByType < TencentCloud::Common::AbstractModel
        # @param TKERouteENINonStaticIP: TKE共享网卡非固定IP模式可支持的Pod数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TKERouteENINonStaticIP: Integer
        # @param TKERouteENIStaticIP: TKE共享网卡固定IP模式可支持的Pod数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TKERouteENIStaticIP: Integer
        # @param TKEDirectENI: TKE独立网卡模式可支持的Pod数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TKEDirectENI: Integer

        attr_accessor :TKERouteENINonStaticIP, :TKERouteENIStaticIP, :TKEDirectENI
        
        def initialize(tkerouteeninonstaticip=nil, tkerouteenistaticip=nil, tkedirecteni=nil)
          @TKERouteENINonStaticIP = tkerouteeninonstaticip
          @TKERouteENIStaticIP = tkerouteenistaticip
          @TKEDirectENI = tkedirecteni
        end

        def deserialize(params)
          @TKERouteENINonStaticIP = params['TKERouteENINonStaticIP']
          @TKERouteENIStaticIP = params['TKERouteENIStaticIP']
          @TKEDirectENI = params['TKEDirectENI']
        end
      end

      # 机型信息和其可支持的最大VPC-CNI模式Pod数量信息
      class PodLimitsInstance < TencentCloud::Common::AbstractModel
        # @param Zone: 机型所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param InstanceFamily: 机型所属机型族
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceFamily: String
        # @param InstanceType: 实例机型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param PodLimits: 机型可支持的最大VPC-CNI模式Pod数量信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodLimits: :class:`Tencentcloud::Tke.v20180525.models.PodLimitsByType`

        attr_accessor :Zone, :InstanceFamily, :InstanceType, :PodLimits
        
        def initialize(zone=nil, instancefamily=nil, instancetype=nil, podlimits=nil)
          @Zone = zone
          @InstanceFamily = instancefamily
          @InstanceType = instancetype
          @PodLimits = podlimits
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceFamily = params['InstanceFamily']
          @InstanceType = params['InstanceType']
          unless params['PodLimits'].nil?
            @PodLimits = PodLimitsByType.new
            @PodLimits.deserialize(params['PodLimits'])
          end
        end
      end

      # 健康检查探测参数
      class Probe < TencentCloud::Common::AbstractModel
        # @param InitialDelaySeconds: Number of seconds after the container has started before liveness probes are initiated.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param TimeoutSeconds: Number of seconds after which the probe times out.
        # Defaults to 1 second. Minimum value is 1.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutSeconds: Integer
        # @param PeriodSeconds: How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodSeconds: Integer
        # @param SuccessThreshold: Minimum consecutive successes for the probe to be considered successful after having failed.Defaults to 1. Must be 1 for liveness. Minimum value is 1.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessThreshold: Integer
        # @param FailureThreshold: Minimum consecutive failures for the probe to be considered failed after having succeeded.Defaults to 3. Minimum value is 1.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureThreshold: Integer

        attr_accessor :InitialDelaySeconds, :TimeoutSeconds, :PeriodSeconds, :SuccessThreshold, :FailureThreshold
        
        def initialize(initialdelayseconds=nil, timeoutseconds=nil, periodseconds=nil, successthreshold=nil, failurethreshold=nil)
          @InitialDelaySeconds = initialdelayseconds
          @TimeoutSeconds = timeoutseconds
          @PeriodSeconds = periodseconds
          @SuccessThreshold = successthreshold
          @FailureThreshold = failurethreshold
        end

        def deserialize(params)
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @TimeoutSeconds = params['TimeoutSeconds']
          @PeriodSeconds = params['PeriodSeconds']
          @SuccessThreshold = params['SuccessThreshold']
          @FailureThreshold = params['FailureThreshold']
        end
      end

      # 托管Prometheus agent信息
      class PrometheusAgentInfo < TencentCloud::Common::AbstractModel
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Describe: 备注
        # @type Describe: String

        attr_accessor :ClusterType, :ClusterId, :Describe
        
        def initialize(clustertype=nil, clusterid=nil, describe=nil)
          @ClusterType = clustertype
          @ClusterId = clusterid
          @Describe = describe
        end

        def deserialize(params)
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @Describe = params['Describe']
        end
      end

      # 托管prometheus agent概览
      class PrometheusAgentOverview < TencentCloud::Common::AbstractModel
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Status: agent状态
        # normal = 正常
        # abnormal = 异常
        # @type Status: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ExternalLabels: 额外labels
        # 本集群的所有指标都会带上这几个label
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalLabels: Array

        attr_accessor :ClusterType, :ClusterId, :Status, :ClusterName, :ExternalLabels
        
        def initialize(clustertype=nil, clusterid=nil, status=nil, clustername=nil, externallabels=nil)
          @ClusterType = clustertype
          @ClusterId = clusterid
          @Status = status
          @ClusterName = clustername
          @ExternalLabels = externallabels
        end

        def deserialize(params)
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @Status = params['Status']
          @ClusterName = params['ClusterName']
          unless params['ExternalLabels'].nil?
            @ExternalLabels = []
            params['ExternalLabels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @ExternalLabels << label_tmp
            end
          end
        end
      end

      # prometheus告警历史
      class PrometheusAlertHistoryItem < TencentCloud::Common::AbstractModel
        # @param RuleName: 告警名称
        # @type RuleName: String
        # @param StartTime: 告警开始时间
        # @type StartTime: String
        # @param Content: 告警内容
        # @type Content: String
        # @param State: 告警状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param RuleItem: 触发的规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleItem: String
        # @param TopicId: 告警渠道的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 告警渠道的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String

        attr_accessor :RuleName, :StartTime, :Content, :State, :RuleItem, :TopicId, :TopicName
        
        def initialize(rulename=nil, starttime=nil, content=nil, state=nil, ruleitem=nil, topicid=nil, topicname=nil)
          @RuleName = rulename
          @StartTime = starttime
          @Content = content
          @State = state
          @RuleItem = ruleitem
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @StartTime = params['StartTime']
          @Content = params['Content']
          @State = params['State']
          @RuleItem = params['RuleItem']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # 告警渠道使用自建alertmanager的配置
      class PrometheusAlertManagerConfig < TencentCloud::Common::AbstractModel
        # @param Url: alertmanager url
        # @type Url: String
        # @param ClusterType: alertmanager部署所在集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param ClusterId: alertmanager部署所在集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :Url, :ClusterType, :ClusterId
        
        def initialize(url=nil, clustertype=nil, clusterid=nil)
          @Url = url
          @ClusterType = clustertype
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Url = params['Url']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
        end
      end

      # 托管prometheus告警策略实例
      class PrometheusAlertPolicyItem < TencentCloud::Common::AbstractModel
        # @param Name: 策略名称
        # @type Name: String
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param Id: 告警策略 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param TemplateId: 如果该告警来自模板下发，则TemplateId为模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param Notification: 告警渠道，模板中使用可能返回null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notification: :class:`Tencentcloud::Tke.v20180525.models.PrometheusNotificationItem`
        # @param UpdatedAt: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param ClusterId: 如果告警策略来源于用户集群CRD资源定义，则ClusterId为所属集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :Name, :Rules, :Id, :TemplateId, :Notification, :UpdatedAt, :ClusterId
        
        def initialize(name=nil, rules=nil, id=nil, templateid=nil, notification=nil, updatedat=nil, clusterid=nil)
          @Name = name
          @Rules = rules
          @Id = id
          @TemplateId = templateid
          @Notification = notification
          @UpdatedAt = updatedat
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              prometheusalertrule_tmp = PrometheusAlertRule.new
              prometheusalertrule_tmp.deserialize(i)
              @Rules << prometheusalertrule_tmp
            end
          end
          @Id = params['Id']
          @TemplateId = params['TemplateId']
          unless params['Notification'].nil?
            @Notification = PrometheusNotificationItem.new
            @Notification.deserialize(params['Notification'])
          end
          @UpdatedAt = params['UpdatedAt']
          @ClusterId = params['ClusterId']
        end
      end

      # Prometheus告警规则
      class PrometheusAlertRule < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param Rule: prometheus语句
        # @type Rule: String
        # @param Labels: 额外标签
        # @type Labels: Array
        # @param Template: 告警发送模板
        # @type Template: String
        # @param For: 持续时间
        # @type For: String
        # @param Describe: 该条规则的描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param Annotations: 参考prometheus rule中的annotations
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Annotations: Array
        # @param RuleState: 告警规则状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleState: Integer

        attr_accessor :Name, :Rule, :Labels, :Template, :For, :Describe, :Annotations, :RuleState
        
        def initialize(name=nil, rule=nil, labels=nil, template=nil, _for=nil, describe=nil, annotations=nil, rulestate=nil)
          @Name = name
          @Rule = rule
          @Labels = labels
          @Template = template
          @For = _for
          @Describe = describe
          @Annotations = annotations
          @RuleState = rulestate
        end

        def deserialize(params)
          @Name = params['Name']
          @Rule = params['Rule']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          @Template = params['Template']
          @For = params['For']
          @Describe = params['Describe']
          unless params['Annotations'].nil?
            @Annotations = []
            params['Annotations'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Annotations << label_tmp
            end
          end
          @RuleState = params['RuleState']
        end
      end

      # 托管prometheus告警配置实例
      class PrometheusAlertRuleDetail < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param UpdatedAt: 最后修改时间
        # @type UpdatedAt: String
        # @param Notification: 告警渠道
        # @type Notification: :class:`Tencentcloud::Tke.v20180525.models.PrometheusNotification`
        # @param Id: 告警 id
        # @type Id: String
        # @param TemplateId: 如果该告警来至模板下发，则TemplateId为模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param Interval: 计算周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interval: String

        attr_accessor :Name, :Rules, :UpdatedAt, :Notification, :Id, :TemplateId, :Interval
        
        def initialize(name=nil, rules=nil, updatedat=nil, notification=nil, id=nil, templateid=nil, interval=nil)
          @Name = name
          @Rules = rules
          @UpdatedAt = updatedat
          @Notification = notification
          @Id = id
          @TemplateId = templateid
          @Interval = interval
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              prometheusalertrule_tmp = PrometheusAlertRule.new
              prometheusalertrule_tmp.deserialize(i)
              @Rules << prometheusalertrule_tmp
            end
          end
          @UpdatedAt = params['UpdatedAt']
          unless params['Notification'].nil?
            @Notification = PrometheusNotification.new
            @Notification.deserialize(params['Notification'])
          end
          @Id = params['Id']
          @TemplateId = params['TemplateId']
          @Interval = params['Interval']
        end
      end

      # 与云监控融合托管prometheus实例，关联集群基础信息
      class PrometheusClusterAgentBasic < TencentCloud::Common::AbstractModel
        # @param Region: 集群ID
        # @type Region: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param EnableExternal: 是否开启公网CLB
        # @type EnableExternal: Boolean
        # @param InClusterPodConfig: 集群内部署组件的pod配置
        # @type InClusterPodConfig: :class:`Tencentcloud::Tke.v20180525.models.PrometheusClusterAgentPodConfig`
        # @param ExternalLabels: 该集群采集的所有指标都会带上这些labels
        # @type ExternalLabels: Array
        # @param NotInstallBasicScrape: 是否安装默认采集配置
        # @type NotInstallBasicScrape: Boolean
        # @param NotScrape: 是否采集指标，true代表drop所有指标，false代表采集默认指标
        # @type NotScrape: Boolean

        attr_accessor :Region, :ClusterType, :ClusterId, :EnableExternal, :InClusterPodConfig, :ExternalLabels, :NotInstallBasicScrape, :NotScrape
        
        def initialize(region=nil, clustertype=nil, clusterid=nil, enableexternal=nil, inclusterpodconfig=nil, externallabels=nil, notinstallbasicscrape=nil, notscrape=nil)
          @Region = region
          @ClusterType = clustertype
          @ClusterId = clusterid
          @EnableExternal = enableexternal
          @InClusterPodConfig = inclusterpodconfig
          @ExternalLabels = externallabels
          @NotInstallBasicScrape = notinstallbasicscrape
          @NotScrape = notscrape
        end

        def deserialize(params)
          @Region = params['Region']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @EnableExternal = params['EnableExternal']
          unless params['InClusterPodConfig'].nil?
            @InClusterPodConfig = PrometheusClusterAgentPodConfig.new
            @InClusterPodConfig.deserialize(params['InClusterPodConfig'])
          end
          unless params['ExternalLabels'].nil?
            @ExternalLabels = []
            params['ExternalLabels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @ExternalLabels << label_tmp
            end
          end
          @NotInstallBasicScrape = params['NotInstallBasicScrape']
          @NotScrape = params['NotScrape']
        end
      end

      # 关联集群时在集群内部署组件的pod额外配置
      class PrometheusClusterAgentPodConfig < TencentCloud::Common::AbstractModel
        # @param HostNet: 是否使用HostNetWork
        # @type HostNet: Boolean
        # @param NodeSelector: 指定pod运行节点
        # @type NodeSelector: Array
        # @param Tolerations: 容忍污点
        # @type Tolerations: Array

        attr_accessor :HostNet, :NodeSelector, :Tolerations
        
        def initialize(hostnet=nil, nodeselector=nil, tolerations=nil)
          @HostNet = hostnet
          @NodeSelector = nodeselector
          @Tolerations = tolerations
        end

        def deserialize(params)
          @HostNet = params['HostNet']
          unless params['NodeSelector'].nil?
            @NodeSelector = []
            params['NodeSelector'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @NodeSelector << label_tmp
            end
          end
          unless params['Tolerations'].nil?
            @Tolerations = []
            params['Tolerations'].each do |i|
              toleration_tmp = Toleration.new
              toleration_tmp.deserialize(i)
              @Tolerations << toleration_tmp
            end
          end
        end
      end

      # prometheus配置
      class PrometheusConfigItem < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Config: 配置内容
        # @type Config: String
        # @param TemplateId: 用于出参，如果该配置来至模板，则为模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String

        attr_accessor :Name, :Config, :TemplateId
        
        def initialize(name=nil, config=nil, templateid=nil)
          @Name = name
          @Config = config
          @TemplateId = templateid
        end

        def deserialize(params)
          @Name = params['Name']
          @Config = params['Config']
          @TemplateId = params['TemplateId']
        end
      end

      # 托管prometheus中grafana的信息
      class PrometheusGrafanaInfo < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param Domain: 域名，只有开启外网访问才有效果
        # @type Domain: String
        # @param Address: 内网地址，或者外网地址
        # @type Address: String
        # @param Internet: 是否开启了外网访问
        # close = 未开启外网访问
        # opening = 正在开启外网访问
        # open  = 已开启外网访问
        # @type Internet: String
        # @param AdminUser: grafana管理员用户名
        # @type AdminUser: String

        attr_accessor :Enabled, :Domain, :Address, :Internet, :AdminUser
        
        def initialize(enabled=nil, domain=nil, address=nil, internet=nil, adminuser=nil)
          @Enabled = enabled
          @Domain = domain
          @Address = address
          @Internet = internet
          @AdminUser = adminuser
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Domain = params['Domain']
          @Address = params['Address']
          @Internet = params['Internet']
          @AdminUser = params['AdminUser']
        end
      end

      # 托管prometheus实例概览
      class PrometheusInstanceOverview < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param VpcId: 实例vpcId
        # @type VpcId: String
        # @param SubnetId: 实例子网Id
        # @type SubnetId: String
        # @param Status: 实例当前的状态
        # prepare_env = 初始化环境
        # install_suit = 安装组件
        # running = 运行中
        # @type Status: String
        # @param COSBucket: COS桶存储
        # @type COSBucket: String
        # @param GrafanaURL: grafana默认地址，如果开启外网访问得为域名，否则为内网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaURL: String
        # @param BoundTotal: 关联集群总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundTotal: Integer
        # @param BoundNormal: 运行正常的集群数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundNormal: Integer

        attr_accessor :InstanceId, :Name, :VpcId, :SubnetId, :Status, :COSBucket, :GrafanaURL, :BoundTotal, :BoundNormal
        
        def initialize(instanceid=nil, name=nil, vpcid=nil, subnetid=nil, status=nil, cosbucket=nil, grafanaurl=nil, boundtotal=nil, boundnormal=nil)
          @InstanceId = instanceid
          @Name = name
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @COSBucket = cosbucket
          @GrafanaURL = grafanaurl
          @BoundTotal = boundtotal
          @BoundNormal = boundnormal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @COSBucket = params['COSBucket']
          @GrafanaURL = params['GrafanaURL']
          @BoundTotal = params['BoundTotal']
          @BoundNormal = params['BoundNormal']
        end
      end

      # 托管prometheusV2实例概览
      class PrometheusInstancesOverview < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param InstanceStatus: 运行状态（1:正在创建；2:运行中；3:异常；4:重启中；5:销毁中； 6:已停机； 7: 已删除）
        # @type InstanceStatus: Integer
        # @param ChargeStatus: 计费状态（1:正常；2:过期; 3:销毁; 4:分配中; 5:分配失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeStatus: Integer
        # @param EnableGrafana: 是否开启 Grafana（0:不开启，1:开启）
        # @type EnableGrafana: Integer
        # @param GrafanaURL: Grafana 面板 URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrafanaURL: String
        # @param InstanceChargeType: 实例付费类型（1:试用版；2:预付费）
        # @type InstanceChargeType: Integer
        # @param SpecName: 规格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param DataRetentionTime: 存储周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataRetentionTime: Integer
        # @param ExpireTime: 购买的实例过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AutoRenewFlag: 自动续费标记(0:不自动续费；1:开启自动续费；2:禁止自动续费；-1:无效)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param BoundTotal: 绑定集群总数
        # @type BoundTotal: Integer
        # @param BoundNormal: 绑定集群正常状态总数
        # @type BoundNormal: Integer

        attr_accessor :InstanceId, :InstanceName, :VpcId, :SubnetId, :InstanceStatus, :ChargeStatus, :EnableGrafana, :GrafanaURL, :InstanceChargeType, :SpecName, :DataRetentionTime, :ExpireTime, :AutoRenewFlag, :BoundTotal, :BoundNormal
        
        def initialize(instanceid=nil, instancename=nil, vpcid=nil, subnetid=nil, instancestatus=nil, chargestatus=nil, enablegrafana=nil, grafanaurl=nil, instancechargetype=nil, specname=nil, dataretentiontime=nil, expiretime=nil, autorenewflag=nil, boundtotal=nil, boundnormal=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceStatus = instancestatus
          @ChargeStatus = chargestatus
          @EnableGrafana = enablegrafana
          @GrafanaURL = grafanaurl
          @InstanceChargeType = instancechargetype
          @SpecName = specname
          @DataRetentionTime = dataretentiontime
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @BoundTotal = boundtotal
          @BoundNormal = boundnormal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceStatus = params['InstanceStatus']
          @ChargeStatus = params['ChargeStatus']
          @EnableGrafana = params['EnableGrafana']
          @GrafanaURL = params['GrafanaURL']
          @InstanceChargeType = params['InstanceChargeType']
          @SpecName = params['SpecName']
          @DataRetentionTime = params['DataRetentionTime']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @BoundTotal = params['BoundTotal']
          @BoundNormal = params['BoundNormal']
        end
      end

      # prometheus一个job的targets
      class PrometheusJobTargets < TencentCloud::Common::AbstractModel
        # @param Targets: 该Job的targets列表
        # @type Targets: Array
        # @param JobName: job的名称
        # @type JobName: String
        # @param Total: targets总数
        # @type Total: Integer
        # @param Up: 健康的target总数
        # @type Up: Integer

        attr_accessor :Targets, :JobName, :Total, :Up
        
        def initialize(targets=nil, jobname=nil, total=nil, up=nil)
          @Targets = targets
          @JobName = jobname
          @Total = total
          @Up = up
        end

        def deserialize(params)
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustarget_tmp = PrometheusTarget.new
              prometheustarget_tmp.deserialize(i)
              @Targets << prometheustarget_tmp
            end
          end
          @JobName = params['JobName']
          @Total = params['Total']
          @Up = params['Up']
        end
      end

      # amp告警渠道配置
      class PrometheusNotification < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param RepeatInterval: 收敛时间
        # @type RepeatInterval: String
        # @param TimeRangeStart: 生效起始时间
        # @type TimeRangeStart: String
        # @param TimeRangeEnd: 生效结束时间
        # @type TimeRangeEnd: String
        # @param NotifyWay: 告警通知方式。目前有SMS、EMAIL、CALL、WECHAT方式。
        # 分别代表：短信、邮件、电话、微信
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyWay: Array
        # @param ReceiverGroups: 告警接收组（用户组）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverGroups: Array
        # @param PhoneNotifyOrder: 电话告警顺序。
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNotifyOrder: Array
        # @param PhoneCircleTimes: 电话告警次数。
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCircleTimes: Integer
        # @param PhoneInnerInterval: 电话告警轮内间隔。单位：秒
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneInnerInterval: Integer
        # @param PhoneCircleInterval: 电话告警轮外间隔。单位：秒
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCircleInterval: Integer
        # @param PhoneArriveNotice: 电话告警触达通知
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneArriveNotice: Boolean
        # @param Type: 通道类型，默认为amp，支持以下
        # amp
        # webhook
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param WebHook: 如果Type为webhook, 则该字段为必填项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebHook: String

        attr_accessor :Enabled, :RepeatInterval, :TimeRangeStart, :TimeRangeEnd, :NotifyWay, :ReceiverGroups, :PhoneNotifyOrder, :PhoneCircleTimes, :PhoneInnerInterval, :PhoneCircleInterval, :PhoneArriveNotice, :Type, :WebHook
        
        def initialize(enabled=nil, repeatinterval=nil, timerangestart=nil, timerangeend=nil, notifyway=nil, receivergroups=nil, phonenotifyorder=nil, phonecircletimes=nil, phoneinnerinterval=nil, phonecircleinterval=nil, phonearrivenotice=nil, type=nil, webhook=nil)
          @Enabled = enabled
          @RepeatInterval = repeatinterval
          @TimeRangeStart = timerangestart
          @TimeRangeEnd = timerangeend
          @NotifyWay = notifyway
          @ReceiverGroups = receivergroups
          @PhoneNotifyOrder = phonenotifyorder
          @PhoneCircleTimes = phonecircletimes
          @PhoneInnerInterval = phoneinnerinterval
          @PhoneCircleInterval = phonecircleinterval
          @PhoneArriveNotice = phonearrivenotice
          @Type = type
          @WebHook = webhook
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @RepeatInterval = params['RepeatInterval']
          @TimeRangeStart = params['TimeRangeStart']
          @TimeRangeEnd = params['TimeRangeEnd']
          @NotifyWay = params['NotifyWay']
          @ReceiverGroups = params['ReceiverGroups']
          @PhoneNotifyOrder = params['PhoneNotifyOrder']
          @PhoneCircleTimes = params['PhoneCircleTimes']
          @PhoneInnerInterval = params['PhoneInnerInterval']
          @PhoneCircleInterval = params['PhoneCircleInterval']
          @PhoneArriveNotice = params['PhoneArriveNotice']
          @Type = params['Type']
          @WebHook = params['WebHook']
        end
      end

      # 告警通知渠道配置
      class PrometheusNotificationItem < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param Type: 通道类型，默认为amp，支持以下
        # amp
        # webhook
        # alertmanager
        # @type Type: String
        # @param WebHook: 如果Type为webhook, 则该字段为必填项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebHook: String
        # @param AlertManager: 如果Type为alertmanager, 则该字段为必填项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertManager: :class:`Tencentcloud::Tke.v20180525.models.PrometheusAlertManagerConfig`
        # @param RepeatInterval: 收敛时间
        # @type RepeatInterval: String
        # @param TimeRangeStart: 生效起始时间
        # @type TimeRangeStart: String
        # @param TimeRangeEnd: 生效结束时间
        # @type TimeRangeEnd: String
        # @param NotifyWay: 告警通知方式。目前有SMS、EMAIL、CALL、WECHAT方式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotifyWay: Array
        # @param ReceiverGroups: 告警接收组（用户组）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverGroups: Array
        # @param PhoneNotifyOrder: 电话告警顺序。
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNotifyOrder: Array
        # @param PhoneCircleTimes: 电话告警次数。
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCircleTimes: Integer
        # @param PhoneInnerInterval: 电话告警轮内间隔。单位：秒
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneInnerInterval: Integer
        # @param PhoneCircleInterval: 电话告警轮外间隔。单位：秒
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCircleInterval: Integer
        # @param PhoneArriveNotice: 电话告警触达通知
        # 注：NotifyWay选择CALL，采用该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneArriveNotice: Boolean

        attr_accessor :Enabled, :Type, :WebHook, :AlertManager, :RepeatInterval, :TimeRangeStart, :TimeRangeEnd, :NotifyWay, :ReceiverGroups, :PhoneNotifyOrder, :PhoneCircleTimes, :PhoneInnerInterval, :PhoneCircleInterval, :PhoneArriveNotice
        
        def initialize(enabled=nil, type=nil, webhook=nil, alertmanager=nil, repeatinterval=nil, timerangestart=nil, timerangeend=nil, notifyway=nil, receivergroups=nil, phonenotifyorder=nil, phonecircletimes=nil, phoneinnerinterval=nil, phonecircleinterval=nil, phonearrivenotice=nil)
          @Enabled = enabled
          @Type = type
          @WebHook = webhook
          @AlertManager = alertmanager
          @RepeatInterval = repeatinterval
          @TimeRangeStart = timerangestart
          @TimeRangeEnd = timerangeend
          @NotifyWay = notifyway
          @ReceiverGroups = receivergroups
          @PhoneNotifyOrder = phonenotifyorder
          @PhoneCircleTimes = phonecircletimes
          @PhoneInnerInterval = phoneinnerinterval
          @PhoneCircleInterval = phonecircleinterval
          @PhoneArriveNotice = phonearrivenotice
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Type = params['Type']
          @WebHook = params['WebHook']
          unless params['AlertManager'].nil?
            @AlertManager = PrometheusAlertManagerConfig.new
            @AlertManager.deserialize(params['AlertManager'])
          end
          @RepeatInterval = params['RepeatInterval']
          @TimeRangeStart = params['TimeRangeStart']
          @TimeRangeEnd = params['TimeRangeEnd']
          @NotifyWay = params['NotifyWay']
          @ReceiverGroups = params['ReceiverGroups']
          @PhoneNotifyOrder = params['PhoneNotifyOrder']
          @PhoneCircleTimes = params['PhoneCircleTimes']
          @PhoneInnerInterval = params['PhoneInnerInterval']
          @PhoneCircleInterval = params['PhoneCircleInterval']
          @PhoneArriveNotice = params['PhoneArriveNotice']
        end
      end

      # prometheus聚合规则实例详情，包含所属集群ID
      class PrometheusRecordRuleYamlItem < TencentCloud::Common::AbstractModel
        # @param Name: 实例名称
        # @type Name: String
        # @param UpdateTime: 最近更新时间
        # @type UpdateTime: String
        # @param TemplateId: Yaml内容
        # @type TemplateId: String
        # @param Content: 如果该聚合规则来至模板，则TemplateId为模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param ClusterId: 该聚合规则如果来源于用户集群crd资源定义，则ClusterId为所属集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :Name, :UpdateTime, :TemplateId, :Content, :ClusterId
        
        def initialize(name=nil, updatetime=nil, templateid=nil, content=nil, clusterid=nil)
          @Name = name
          @UpdateTime = updatetime
          @TemplateId = templateid
          @Content = content
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Name = params['Name']
          @UpdateTime = params['UpdateTime']
          @TemplateId = params['TemplateId']
          @Content = params['Content']
          @ClusterId = params['ClusterId']
        end
      end

      # prometheus一个抓取目标的信息
      class PrometheusTarget < TencentCloud::Common::AbstractModel
        # @param Url: 抓取目标的URL
        # @type Url: String
        # @param State: target当前状态,当前支持
        # up = 健康
        # down = 不健康
        # unknown = 未知
        # @type State: String
        # @param Labels: target的元label
        # @type Labels: Array
        # @param LastScrape: 上一次抓取的时间
        # @type LastScrape: String
        # @param ScrapeDuration: 上一次抓取的耗时，单位是s
        # @type ScrapeDuration: Float
        # @param Error: 上一次抓取如果错误，该字段存储错误信息
        # @type Error: String

        attr_accessor :Url, :State, :Labels, :LastScrape, :ScrapeDuration, :Error
        
        def initialize(url=nil, state=nil, labels=nil, lastscrape=nil, scrapeduration=nil, error=nil)
          @Url = url
          @State = state
          @Labels = labels
          @LastScrape = lastscrape
          @ScrapeDuration = scrapeduration
          @Error = error
        end

        def deserialize(params)
          @Url = params['Url']
          @State = params['State']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          @LastScrape = params['LastScrape']
          @ScrapeDuration = params['ScrapeDuration']
          @Error = params['Error']
        end
      end

      # 模板实例
      class PrometheusTemp < TencentCloud::Common::AbstractModel
        # @param Name: 模板名称
        # @type Name: String
        # @param Level: 模板维度，支持以下类型
        # instance 实例级别
        # cluster 集群级别
        # @type Level: String
        # @param Describe: 模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param RecordRules: 当Level为instance时有效，
        # 模板中的聚合规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordRules: Array
        # @param ServiceMonitors: 当Level为cluster时有效，
        # 模板中的ServiceMonitor规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceMonitors: Array
        # @param PodMonitors: 当Level为cluster时有效，
        # 模板中的PodMonitors规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodMonitors: Array
        # @param RawJobs: 当Level为cluster时有效，
        # 模板中的RawJobs规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawJobs: Array
        # @param TemplateId: 模板的ID, 用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param UpdateTime: 最近更新时间，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Version: 当前版本，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param IsDefault: 是否系统提供的默认模板，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Boolean
        # @param AlertDetailRules: 当Level为instance时有效，
        # 模板中的告警配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertDetailRules: Array
        # @param TargetsTotal: 关联实例数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetsTotal: Integer

        attr_accessor :Name, :Level, :Describe, :RecordRules, :ServiceMonitors, :PodMonitors, :RawJobs, :TemplateId, :UpdateTime, :Version, :IsDefault, :AlertDetailRules, :TargetsTotal
        
        def initialize(name=nil, level=nil, describe=nil, recordrules=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil, templateid=nil, updatetime=nil, version=nil, isdefault=nil, alertdetailrules=nil, targetstotal=nil)
          @Name = name
          @Level = level
          @Describe = describe
          @RecordRules = recordrules
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
          @TemplateId = templateid
          @UpdateTime = updatetime
          @Version = version
          @IsDefault = isdefault
          @AlertDetailRules = alertdetailrules
          @TargetsTotal = targetstotal
        end

        def deserialize(params)
          @Name = params['Name']
          @Level = params['Level']
          @Describe = params['Describe']
          unless params['RecordRules'].nil?
            @RecordRules = []
            params['RecordRules'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RecordRules << prometheusconfigitem_tmp
            end
          end
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
          @TemplateId = params['TemplateId']
          @UpdateTime = params['UpdateTime']
          @Version = params['Version']
          @IsDefault = params['IsDefault']
          unless params['AlertDetailRules'].nil?
            @AlertDetailRules = []
            params['AlertDetailRules'].each do |i|
              prometheusalertpolicyitem_tmp = PrometheusAlertPolicyItem.new
              prometheusalertpolicyitem_tmp.deserialize(i)
              @AlertDetailRules << prometheusalertpolicyitem_tmp
            end
          end
          @TargetsTotal = params['TargetsTotal']
        end
      end

      # 云原生Prometheus模板可修改项
      class PrometheusTempModify < TencentCloud::Common::AbstractModel
        # @param Name: 修改名称
        # @type Name: String
        # @param Describe: 修改描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param ServiceMonitors: 当Level为cluster时有效，
        # 模板中的ServiceMonitor规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceMonitors: Array
        # @param PodMonitors: 当Level为cluster时有效，
        # 模板中的PodMonitors规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodMonitors: Array
        # @param RawJobs: 当Level为cluster时有效，
        # 模板中的RawJobs规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawJobs: Array
        # @param RecordRules: 当Level为instance时有效，
        # 模板中的聚合规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordRules: Array
        # @param AlertDetailRules: 修改内容，只有当模板类型是Alert时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertDetailRules: Array

        attr_accessor :Name, :Describe, :ServiceMonitors, :PodMonitors, :RawJobs, :RecordRules, :AlertDetailRules
        
        def initialize(name=nil, describe=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil, recordrules=nil, alertdetailrules=nil)
          @Name = name
          @Describe = describe
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
          @RecordRules = recordrules
          @AlertDetailRules = alertdetailrules
        end

        def deserialize(params)
          @Name = params['Name']
          @Describe = params['Describe']
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
          unless params['RecordRules'].nil?
            @RecordRules = []
            params['RecordRules'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RecordRules << prometheusconfigitem_tmp
            end
          end
          unless params['AlertDetailRules'].nil?
            @AlertDetailRules = []
            params['AlertDetailRules'].each do |i|
              prometheusalertpolicyitem_tmp = PrometheusAlertPolicyItem.new
              prometheusalertpolicyitem_tmp.deserialize(i)
              @AlertDetailRules << prometheusalertpolicyitem_tmp
            end
          end
        end
      end

      # 模板实例
      class PrometheusTemplate < TencentCloud::Common::AbstractModel
        # @param Name: 模板名称
        # @type Name: String
        # @param Level: 模板维度，支持以下类型
        # instance 实例级别
        # cluster 集群级别
        # @type Level: String
        # @param Describe: 模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param AlertRules: 当Level为instance时有效，
        # 模板中的告警配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRules: Array
        # @param RecordRules: 当Level为instance时有效，
        # 模板中的聚合规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordRules: Array
        # @param ServiceMonitors: 当Level为cluster时有效，
        # 模板中的ServiceMonitor规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceMonitors: Array
        # @param PodMonitors: 当Level为cluster时有效，
        # 模板中的PodMonitors规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodMonitors: Array
        # @param RawJobs: 当Level为cluster时有效，
        # 模板中的RawJobs规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawJobs: Array
        # @param TemplateId: 模板的ID, 用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param UpdateTime: 最近更新时间，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Version: 当前版本，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param IsDefault: 是否系统提供的默认模板，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Boolean
        # @param AlertDetailRules: 当Level为instance时有效，
        # 模板中的告警配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertDetailRules: Array

        attr_accessor :Name, :Level, :Describe, :AlertRules, :RecordRules, :ServiceMonitors, :PodMonitors, :RawJobs, :TemplateId, :UpdateTime, :Version, :IsDefault, :AlertDetailRules
        
        def initialize(name=nil, level=nil, describe=nil, alertrules=nil, recordrules=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil, templateid=nil, updatetime=nil, version=nil, isdefault=nil, alertdetailrules=nil)
          @Name = name
          @Level = level
          @Describe = describe
          @AlertRules = alertrules
          @RecordRules = recordrules
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
          @TemplateId = templateid
          @UpdateTime = updatetime
          @Version = version
          @IsDefault = isdefault
          @AlertDetailRules = alertdetailrules
        end

        def deserialize(params)
          @Name = params['Name']
          @Level = params['Level']
          @Describe = params['Describe']
          unless params['AlertRules'].nil?
            @AlertRules = []
            params['AlertRules'].each do |i|
              prometheusalertrule_tmp = PrometheusAlertRule.new
              prometheusalertrule_tmp.deserialize(i)
              @AlertRules << prometheusalertrule_tmp
            end
          end
          unless params['RecordRules'].nil?
            @RecordRules = []
            params['RecordRules'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RecordRules << prometheusconfigitem_tmp
            end
          end
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
          @TemplateId = params['TemplateId']
          @UpdateTime = params['UpdateTime']
          @Version = params['Version']
          @IsDefault = params['IsDefault']
          unless params['AlertDetailRules'].nil?
            @AlertDetailRules = []
            params['AlertDetailRules'].each do |i|
              prometheusalertruledetail_tmp = PrometheusAlertRuleDetail.new
              prometheusalertruledetail_tmp.deserialize(i)
              @AlertDetailRules << prometheusalertruledetail_tmp
            end
          end
        end
      end

      # 云原生Prometheus模板可修改项
      class PrometheusTemplateModify < TencentCloud::Common::AbstractModel
        # @param Name: 修改名称
        # @type Name: String
        # @param Describe: 修改描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param AlertRules: 修改内容，只有当模板类型是Alert时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRules: Array
        # @param RecordRules: 当Level为instance时有效，
        # 模板中的聚合规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordRules: Array
        # @param ServiceMonitors: 当Level为cluster时有效，
        # 模板中的ServiceMonitor规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceMonitors: Array
        # @param PodMonitors: 当Level为cluster时有效，
        # 模板中的PodMonitors规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodMonitors: Array
        # @param RawJobs: 当Level为cluster时有效，
        # 模板中的RawJobs规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawJobs: Array
        # @param AlertDetailRules: 修改内容，只有当模板类型是Alert时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertDetailRules: Array

        attr_accessor :Name, :Describe, :AlertRules, :RecordRules, :ServiceMonitors, :PodMonitors, :RawJobs, :AlertDetailRules
        
        def initialize(name=nil, describe=nil, alertrules=nil, recordrules=nil, servicemonitors=nil, podmonitors=nil, rawjobs=nil, alertdetailrules=nil)
          @Name = name
          @Describe = describe
          @AlertRules = alertrules
          @RecordRules = recordrules
          @ServiceMonitors = servicemonitors
          @PodMonitors = podmonitors
          @RawJobs = rawjobs
          @AlertDetailRules = alertdetailrules
        end

        def deserialize(params)
          @Name = params['Name']
          @Describe = params['Describe']
          unless params['AlertRules'].nil?
            @AlertRules = []
            params['AlertRules'].each do |i|
              prometheusalertrule_tmp = PrometheusAlertRule.new
              prometheusalertrule_tmp.deserialize(i)
              @AlertRules << prometheusalertrule_tmp
            end
          end
          unless params['RecordRules'].nil?
            @RecordRules = []
            params['RecordRules'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RecordRules << prometheusconfigitem_tmp
            end
          end
          unless params['ServiceMonitors'].nil?
            @ServiceMonitors = []
            params['ServiceMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @ServiceMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['PodMonitors'].nil?
            @PodMonitors = []
            params['PodMonitors'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @PodMonitors << prometheusconfigitem_tmp
            end
          end
          unless params['RawJobs'].nil?
            @RawJobs = []
            params['RawJobs'].each do |i|
              prometheusconfigitem_tmp = PrometheusConfigItem.new
              prometheusconfigitem_tmp.deserialize(i)
              @RawJobs << prometheusconfigitem_tmp
            end
          end
          unless params['AlertDetailRules'].nil?
            @AlertDetailRules = []
            params['AlertDetailRules'].each do |i|
              prometheusalertruledetail_tmp = PrometheusAlertRuleDetail.new
              prometheusalertruledetail_tmp.deserialize(i)
              @AlertDetailRules << prometheusalertruledetail_tmp
            end
          end
        end
      end

      # 云原生Prometheus模板同步目标
      class PrometheusTemplateSyncTarget < TencentCloud::Common::AbstractModel
        # @param Region: 目标所在地域
        # @type Region: String
        # @param InstanceId: 目标实例
        # @type InstanceId: String
        # @param ClusterId: 集群id，只有当采集模板的Level为cluster的时候需要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param SyncTime: 最后一次同步时间， 用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncTime: String
        # @param Version: 当前使用的模板版本，用于出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param ClusterType: 集群类型，只有当采集模板的Level为cluster的时候需要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param InstanceName: 用于出参，实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param ClusterName: 用于出参，集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String

        attr_accessor :Region, :InstanceId, :ClusterId, :SyncTime, :Version, :ClusterType, :InstanceName, :ClusterName
        
        def initialize(region=nil, instanceid=nil, clusterid=nil, synctime=nil, version=nil, clustertype=nil, instancename=nil, clustername=nil)
          @Region = region
          @InstanceId = instanceid
          @ClusterId = clusterid
          @SyncTime = synctime
          @Version = version
          @ClusterType = clustertype
          @InstanceName = instancename
          @ClusterName = clustername
        end

        def deserialize(params)
          @Region = params['Region']
          @InstanceId = params['InstanceId']
          @ClusterId = params['ClusterId']
          @SyncTime = params['SyncTime']
          @Version = params['Version']
          @ClusterType = params['ClusterType']
          @InstanceName = params['InstanceName']
          @ClusterName = params['ClusterName']
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
        
        def initialize(regionname=nil, regionid=nil, status=nil, featuregates=nil, _alias=nil, remark=nil)
          @RegionName = regionname
          @RegionId = regionid
          @Status = status
          @FeatureGates = featuregates
          @Alias = _alias
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

      # RemoveNodeFromNodePool请求参数结构体
      class RemoveNodeFromNodePoolRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param InstanceIds: 节点id列表，一次最多支持100台
        # @type InstanceIds: Array

        attr_accessor :ClusterId, :NodePoolId, :InstanceIds
        
        def initialize(clusterid=nil, nodepoolid=nil, instanceids=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # RemoveNodeFromNodePool返回参数结构体
      class RemoveNodeFromNodePoolResponse < TencentCloud::Common::AbstractModel
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

      # 集群资源使用量
      class ResourceUsage < TencentCloud::Common::AbstractModel
        # @param Name: 资源类型
        # @type Name: String
        # @param Usage: 资源使用量
        # @type Usage: Integer
        # @param Details: 资源使用详情
        # @type Details: Array

        attr_accessor :Name, :Usage, :Details
        
        def initialize(name=nil, usage=nil, details=nil)
          @Name = name
          @Usage = usage
          @Details = details
        end

        def deserialize(params)
          @Name = params['Name']
          @Usage = params['Usage']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              resourceusagedetail_tmp = ResourceUsageDetail.new
              resourceusagedetail_tmp.deserialize(i)
              @Details << resourceusagedetail_tmp
            end
          end
        end
      end

      # 资源使用明细
      class ResourceUsageDetail < TencentCloud::Common::AbstractModel
        # @param Name: 资源名称
        # @type Name: String
        # @param Usage: 资源使用量
        # @type Usage: Integer

        attr_accessor :Name, :Usage
        
        def initialize(name=nil, usage=nil)
          @Name = name
          @Usage = usage
        end

        def deserialize(params)
          @Name = params['Name']
          @Usage = params['Usage']
        end
      end

      # RestartEKSContainerInstances请求参数结构体
      class RestartEKSContainerInstancesRequest < TencentCloud::Common::AbstractModel
        # @param EksCiIds: EKS instance ids
        # @type EksCiIds: Array

        attr_accessor :EksCiIds
        
        def initialize(eksciids=nil)
          @EksCiIds = eksciids
        end

        def deserialize(params)
          @EksCiIds = params['EksCiIds']
        end
      end

      # RestartEKSContainerInstances返回参数结构体
      class RestartEKSContainerInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 描述了 “云自动化助手” 服务相关的信息
      class RunAutomationServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启云自动化助手。取值范围：<br><li>TRUE：表示开启云自动化助手服务<br><li>FALSE：表示不开启云自动化助手服务<br><br>默认取值：FALSE。
        # @type Enabled: Boolean

        attr_accessor :Enabled
        
        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
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
          unless params['InstanceAdvancedSettingsOverrides'].nil?
            @InstanceAdvancedSettingsOverrides = []
            params['InstanceAdvancedSettingsOverrides'].each do |i|
              instanceadvancedsettings_tmp = InstanceAdvancedSettings.new
              instanceadvancedsettings_tmp.deserialize(i)
              @InstanceAdvancedSettingsOverrides << instanceadvancedsettings_tmp
            end
          end
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

      # RunPrometheusInstance请求参数结构体
      class RunPrometheusInstanceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # RunPrometheusInstance返回参数结构体
      class RunPrometheusInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ScaleInClusterMaster请求参数结构体
      class ScaleInClusterMasterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群实例ID
        # @type ClusterId: String
        # @param ScaleInMasters: master缩容选项
        # @type ScaleInMasters: Array

        attr_accessor :ClusterId, :ScaleInMasters
        
        def initialize(clusterid=nil, scaleinmasters=nil)
          @ClusterId = clusterid
          @ScaleInMasters = scaleinmasters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ScaleInMasters'].nil?
            @ScaleInMasters = []
            params['ScaleInMasters'].each do |i|
              scaleinmaster_tmp = ScaleInMaster.new
              scaleinmaster_tmp.deserialize(i)
              @ScaleInMasters << scaleinmaster_tmp
            end
          end
        end
      end

      # ScaleInClusterMaster返回参数结构体
      class ScaleInClusterMasterResponse < TencentCloud::Common::AbstractModel
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

      # master节点缩容参数
      class ScaleInMaster < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param NodeRole: 缩容的实例角色：MASTER,ETCD,MASTER_ETCD
        # @type NodeRole: String
        # @param InstanceDeleteMode: 实例的保留模式
        # @type InstanceDeleteMode: String

        attr_accessor :InstanceId, :NodeRole, :InstanceDeleteMode
        
        def initialize(instanceid=nil, noderole=nil, instancedeletemode=nil)
          @InstanceId = instanceid
          @NodeRole = noderole
          @InstanceDeleteMode = instancedeletemode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeRole = params['NodeRole']
          @InstanceDeleteMode = params['InstanceDeleteMode']
        end
      end

      # ScaleOutClusterMaster请求参数结构体
      class ScaleOutClusterMasterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群实例ID
        # @type ClusterId: String
        # @param RunInstancesForNode: 新建节点参数
        # @type RunInstancesForNode: Array
        # @param ExistedInstancesForNode: 添加已有节点相关参数
        # @type ExistedInstancesForNode: Array
        # @param InstanceAdvancedSettings: 实例高级设置
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param ExtraArgs: 集群master组件自定义参数
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.ClusterExtraArgs`

        attr_accessor :ClusterId, :RunInstancesForNode, :ExistedInstancesForNode, :InstanceAdvancedSettings, :ExtraArgs
        
        def initialize(clusterid=nil, runinstancesfornode=nil, existedinstancesfornode=nil, instanceadvancedsettings=nil, extraargs=nil)
          @ClusterId = clusterid
          @RunInstancesForNode = runinstancesfornode
          @ExistedInstancesForNode = existedinstancesfornode
          @InstanceAdvancedSettings = instanceadvancedsettings
          @ExtraArgs = extraargs
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['RunInstancesForNode'].nil?
            @RunInstancesForNode = []
            params['RunInstancesForNode'].each do |i|
              runinstancesfornode_tmp = RunInstancesForNode.new
              runinstancesfornode_tmp.deserialize(i)
              @RunInstancesForNode << runinstancesfornode_tmp
            end
          end
          unless params['ExistedInstancesForNode'].nil?
            @ExistedInstancesForNode = []
            params['ExistedInstancesForNode'].each do |i|
              existedinstancesfornode_tmp = ExistedInstancesForNode.new
              existedinstancesfornode_tmp.deserialize(i)
              @ExistedInstancesForNode << existedinstancesfornode_tmp
            end
          end
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          unless params['ExtraArgs'].nil?
            @ExtraArgs = ClusterExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
        end
      end

      # ScaleOutClusterMaster返回参数结构体
      class ScaleOutClusterMasterResponse < TencentCloud::Common::AbstractModel
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

      # cloudrun安全特性
      class SecurityContext < TencentCloud::Common::AbstractModel
        # @param Capabilities: 安全能力清单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Capabilities: :class:`Tencentcloud::Tke.v20180525.models.Capabilities`

        attr_accessor :Capabilities
        
        def initialize(capabilities=nil)
          @Capabilities = capabilities
        end

        def deserialize(params)
          unless params['Capabilities'].nil?
            @Capabilities = Capabilities.new
            @Capabilities.deserialize(params['Capabilities'])
          end
        end
      end

      # ServiceAccount认证相关配置
      class ServiceAccountAuthenticationOptions < TencentCloud::Common::AbstractModel
        # @param Issuer: service-account-issuer
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Issuer: String
        # @param JWKSURI: service-account-jwks-uri
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JWKSURI: String
        # @param AutoCreateDiscoveryAnonymousAuth: 如果为true，则会自动创建允许匿名用户访问'/.well-known/openid-configuration'和/openid/v1/jwks的rbac规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoCreateDiscoveryAnonymousAuth: Boolean

        attr_accessor :Issuer, :JWKSURI, :AutoCreateDiscoveryAnonymousAuth
        
        def initialize(issuer=nil, jwksuri=nil, autocreatediscoveryanonymousauth=nil)
          @Issuer = issuer
          @JWKSURI = jwksuri
          @AutoCreateDiscoveryAnonymousAuth = autocreatediscoveryanonymousauth
        end

        def deserialize(params)
          @Issuer = params['Issuer']
          @JWKSURI = params['JWKSURI']
          @AutoCreateDiscoveryAnonymousAuth = params['AutoCreateDiscoveryAnonymousAuth']
        end
      end

      # SetNodePoolNodeProtection请求参数结构体
      class SetNodePoolNodeProtectionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NodePoolId: 节点池id
        # @type NodePoolId: String
        # @param InstanceIds: 节点id
        # @type InstanceIds: Array
        # @param ProtectedFromScaleIn: 节点是否需要移出保护
        # @type ProtectedFromScaleIn: Boolean

        attr_accessor :ClusterId, :NodePoolId, :InstanceIds, :ProtectedFromScaleIn
        
        def initialize(clusterid=nil, nodepoolid=nil, instanceids=nil, protectedfromscalein=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @InstanceIds = instanceids
          @ProtectedFromScaleIn = protectedfromscalein
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodePoolId = params['NodePoolId']
          @InstanceIds = params['InstanceIds']
          @ProtectedFromScaleIn = params['ProtectedFromScaleIn']
        end
      end

      # SetNodePoolNodeProtection返回参数结构体
      class SetNodePoolNodeProtectionResponse < TencentCloud::Common::AbstractModel
        # @param SucceedInstanceIds: 成功设置的节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SucceedInstanceIds: Array
        # @param FailedInstanceIds: 没有成功设置的节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SucceedInstanceIds, :FailedInstanceIds, :RequestId
        
        def initialize(succeedinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SucceedInstanceIds = succeedinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SucceedInstanceIds = params['SucceedInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 子网信息
      class SubnetInfos < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param Name: 子网节点名称
        # @type Name: String
        # @param SecurityGroups: 安全组id
        # @type SecurityGroups: Array

        attr_accessor :SubnetId, :Name, :SecurityGroups
        
        def initialize(subnetid=nil, name=nil, securitygroups=nil)
          @SubnetId = subnetid
          @Name = name
          @SecurityGroups = securitygroups
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Name = params['Name']
          @SecurityGroups = params['SecurityGroups']
        end
      end

      # SyncPrometheusTemp请求参数结构体
      class SyncPrometheusTempRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 实例id
        # @type TemplateId: String
        # @param Targets: 同步目标
        # @type Targets: Array

        attr_accessor :TemplateId, :Targets
        
        def initialize(templateid=nil, targets=nil)
          @TemplateId = templateid
          @Targets = targets
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustemplatesynctarget_tmp = PrometheusTemplateSyncTarget.new
              prometheustemplatesynctarget_tmp.deserialize(i)
              @Targets << prometheustemplatesynctarget_tmp
            end
          end
        end
      end

      # SyncPrometheusTemp返回参数结构体
      class SyncPrometheusTempResponse < TencentCloud::Common::AbstractModel
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

      # SyncPrometheusTemplate请求参数结构体
      class SyncPrometheusTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 实例id
        # @type TemplateId: String
        # @param Targets: 同步目标
        # @type Targets: Array

        attr_accessor :TemplateId, :Targets
        
        def initialize(templateid=nil, targets=nil)
          @TemplateId = templateid
          @Targets = targets
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              prometheustemplatesynctarget_tmp = PrometheusTemplateSyncTarget.new
              prometheustemplatesynctarget_tmp.deserialize(i)
              @Targets << prometheustemplatesynctarget_tmp
            end
          end
        end
      end

      # SyncPrometheusTemplate返回参数结构体
      class SyncPrometheusTemplateResponse < TencentCloud::Common::AbstractModel
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
        # @param Key: Key
        # @type Key: String
        # @param Value: Value
        # @type Value: String
        # @param Effect: Effect
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

      # 任务步骤信息
      class TaskStepInfo < TencentCloud::Common::AbstractModel
        # @param Step: 步骤名称
        # @type Step: String
        # @param LifeState: 生命周期
        # pending : 步骤未开始
        # running: 步骤执行中
        # success: 步骤成功完成
        # failed: 步骤失败
        # @type LifeState: String
        # @param StartAt: 步骤开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartAt: String
        # @param EndAt: 步骤结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndAt: String
        # @param FailedMsg: 若步骤生命周期为failed,则此字段显示错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedMsg: String

        attr_accessor :Step, :LifeState, :StartAt, :EndAt, :FailedMsg
        
        def initialize(step=nil, lifestate=nil, startat=nil, endat=nil, failedmsg=nil)
          @Step = step
          @LifeState = lifestate
          @StartAt = startat
          @EndAt = endat
          @FailedMsg = failedmsg
        end

        def deserialize(params)
          @Step = params['Step']
          @LifeState = params['LifeState']
          @StartAt = params['StartAt']
          @EndAt = params['EndAt']
          @FailedMsg = params['FailedMsg']
        end
      end

      # 探针使用TcpSocket检测容器
      class TcpSocket < TencentCloud::Common::AbstractModel
        # @param Port: TcpSocket检测的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer

        attr_accessor :Port
        
        def initialize(port=nil)
          @Port = port
        end

        def deserialize(params)
          @Port = params['Port']
        end
      end

      # kubernetes Taint
      class Toleration < TencentCloud::Common::AbstractModel
        # @param Key: 容忍应用到的 taint key
        # @type Key: String
        # @param Operator: 键与值的关系
        # @type Operator: String
        # @param Effect: 要匹配的污点效果
        # @type Effect: String

        attr_accessor :Key, :Operator, :Effect
        
        def initialize(key=nil, operator=nil, effect=nil)
          @Key = key
          @Operator = operator
          @Effect = effect
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Effect = params['Effect']
        end
      end

      # UninstallEdgeLogAgent请求参数结构体
      class UninstallEdgeLogAgentRequest < TencentCloud::Common::AbstractModel
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

      # UninstallEdgeLogAgent返回参数结构体
      class UninstallEdgeLogAgentResponse < TencentCloud::Common::AbstractModel
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

      # UninstallLogAgent请求参数结构体
      class UninstallLogAgentRequest < TencentCloud::Common::AbstractModel
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

      # UninstallLogAgent返回参数结构体
      class UninstallLogAgentResponse < TencentCloud::Common::AbstractModel
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

      # UpdateClusterVersion请求参数结构体
      class UpdateClusterVersionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 Id
        # @type ClusterId: String
        # @param DstVersion: 需要升级到的版本
        # @type DstVersion: String
        # @param ExtraArgs: 集群自定义参数
        # @type ExtraArgs: :class:`Tencentcloud::Tke.v20180525.models.ClusterExtraArgs`
        # @param MaxNotReadyPercent: 可容忍的最大不可用pod数目
        # @type MaxNotReadyPercent: Float
        # @param SkipPreCheck: 是否跳过预检查阶段
        # @type SkipPreCheck: Boolean

        attr_accessor :ClusterId, :DstVersion, :ExtraArgs, :MaxNotReadyPercent, :SkipPreCheck
        
        def initialize(clusterid=nil, dstversion=nil, extraargs=nil, maxnotreadypercent=nil, skipprecheck=nil)
          @ClusterId = clusterid
          @DstVersion = dstversion
          @ExtraArgs = extraargs
          @MaxNotReadyPercent = maxnotreadypercent
          @SkipPreCheck = skipprecheck
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DstVersion = params['DstVersion']
          unless params['ExtraArgs'].nil?
            @ExtraArgs = ClusterExtraArgs.new
            @ExtraArgs.deserialize(params['ExtraArgs'])
          end
          @MaxNotReadyPercent = params['MaxNotReadyPercent']
          @SkipPreCheck = params['SkipPreCheck']
        end
      end

      # UpdateClusterVersion返回参数结构体
      class UpdateClusterVersionResponse < TencentCloud::Common::AbstractModel
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

      # UpdateEKSCluster请求参数结构体
      class UpdateEKSClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 弹性集群Id
        # @type ClusterId: String
        # @param ClusterName: 弹性集群名称
        # @type ClusterName: String
        # @param ClusterDesc: 弹性集群描述信息
        # @type ClusterDesc: String
        # @param SubnetIds: 子网Id 列表
        # @type SubnetIds: Array
        # @param PublicLB: 弹性容器集群公网访问LB信息
        # @type PublicLB: :class:`Tencentcloud::Tke.v20180525.models.ClusterPublicLB`
        # @param InternalLB: 弹性容器集群内网访问LB信息
        # @type InternalLB: :class:`Tencentcloud::Tke.v20180525.models.ClusterInternalLB`
        # @param ServiceSubnetId: Service 子网Id
        # @type ServiceSubnetId: String
        # @param DnsServers: 集群自定义的dns 服务器信息
        # @type DnsServers: Array
        # @param ClearDnsServer: 是否清空自定义dns 服务器设置。为1 表示 是。其他表示 否。
        # @type ClearDnsServer: String
        # @param NeedDeleteCbs: 将来删除集群时是否要删除cbs。默认为 FALSE
        # @type NeedDeleteCbs: Boolean
        # @param ProxyLB: 标记是否是新的内外网。默认为false
        # @type ProxyLB: Boolean
        # @param ExtraParam: 扩展参数。须是map[string]string 的json 格式。
        # @type ExtraParam: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDesc, :SubnetIds, :PublicLB, :InternalLB, :ServiceSubnetId, :DnsServers, :ClearDnsServer, :NeedDeleteCbs, :ProxyLB, :ExtraParam
        
        def initialize(clusterid=nil, clustername=nil, clusterdesc=nil, subnetids=nil, publiclb=nil, internallb=nil, servicesubnetid=nil, dnsservers=nil, cleardnsserver=nil, needdeletecbs=nil, proxylb=nil, extraparam=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @SubnetIds = subnetids
          @PublicLB = publiclb
          @InternalLB = internallb
          @ServiceSubnetId = servicesubnetid
          @DnsServers = dnsservers
          @ClearDnsServer = cleardnsserver
          @NeedDeleteCbs = needdeletecbs
          @ProxyLB = proxylb
          @ExtraParam = extraparam
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @SubnetIds = params['SubnetIds']
          unless params['PublicLB'].nil?
            @PublicLB = ClusterPublicLB.new
            @PublicLB.deserialize(params['PublicLB'])
          end
          unless params['InternalLB'].nil?
            @InternalLB = ClusterInternalLB.new
            @InternalLB.deserialize(params['InternalLB'])
          end
          @ServiceSubnetId = params['ServiceSubnetId']
          unless params['DnsServers'].nil?
            @DnsServers = []
            params['DnsServers'].each do |i|
              dnsserverconf_tmp = DnsServerConf.new
              dnsserverconf_tmp.deserialize(i)
              @DnsServers << dnsserverconf_tmp
            end
          end
          @ClearDnsServer = params['ClearDnsServer']
          @NeedDeleteCbs = params['NeedDeleteCbs']
          @ProxyLB = params['ProxyLB']
          @ExtraParam = params['ExtraParam']
        end
      end

      # UpdateEKSCluster返回参数结构体
      class UpdateEKSClusterResponse < TencentCloud::Common::AbstractModel
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

      # UpdateEKSContainerInstance请求参数结构体
      class UpdateEKSContainerInstanceRequest < TencentCloud::Common::AbstractModel
        # @param EksCiId: 容器实例 ID
        # @type EksCiId: String
        # @param RestartPolicy: 实例重启策略： Always(总是重启)、Never(从不重启)、OnFailure(失败时重启)
        # @type RestartPolicy: String
        # @param EksCiVolume: 数据卷，包含NfsVolume数组和CbsVolume数组
        # @type EksCiVolume: :class:`Tencentcloud::Tke.v20180525.models.EksCiVolume`
        # @param Containers: 容器组
        # @type Containers: Array
        # @param InitContainers: Init 容器组
        # @type InitContainers: Array
        # @param Name: 容器实例名称
        # @type Name: String
        # @param ImageRegistryCredentials: 镜像仓库凭证数组
        # @type ImageRegistryCredentials: Array

        attr_accessor :EksCiId, :RestartPolicy, :EksCiVolume, :Containers, :InitContainers, :Name, :ImageRegistryCredentials
        
        def initialize(eksciid=nil, restartpolicy=nil, ekscivolume=nil, containers=nil, initcontainers=nil, name=nil, imageregistrycredentials=nil)
          @EksCiId = eksciid
          @RestartPolicy = restartpolicy
          @EksCiVolume = ekscivolume
          @Containers = containers
          @InitContainers = initcontainers
          @Name = name
          @ImageRegistryCredentials = imageregistrycredentials
        end

        def deserialize(params)
          @EksCiId = params['EksCiId']
          @RestartPolicy = params['RestartPolicy']
          unless params['EksCiVolume'].nil?
            @EksCiVolume = EksCiVolume.new
            @EksCiVolume.deserialize(params['EksCiVolume'])
          end
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          unless params['InitContainers'].nil?
            @InitContainers = []
            params['InitContainers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @InitContainers << container_tmp
            end
          end
          @Name = params['Name']
          unless params['ImageRegistryCredentials'].nil?
            @ImageRegistryCredentials = []
            params['ImageRegistryCredentials'].each do |i|
              imageregistrycredential_tmp = ImageRegistryCredential.new
              imageregistrycredential_tmp.deserialize(i)
              @ImageRegistryCredentials << imageregistrycredential_tmp
            end
          end
        end
      end

      # UpdateEKSContainerInstance返回参数结构体
      class UpdateEKSContainerInstanceResponse < TencentCloud::Common::AbstractModel
        # @param EksCiId: 容器实例 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EksCiId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EksCiId, :RequestId
        
        def initialize(eksciid=nil, requestid=nil)
          @EksCiId = eksciid
          @RequestId = requestid
        end

        def deserialize(params)
          @EksCiId = params['EksCiId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateImageCache请求参数结构体
      class UpdateImageCacheRequest < TencentCloud::Common::AbstractModel
        # @param ImageCacheId: 镜像缓存Id
        # @type ImageCacheId: String
        # @param ImageCacheName: 镜像缓存名称
        # @type ImageCacheName: String

        attr_accessor :ImageCacheId, :ImageCacheName
        
        def initialize(imagecacheid=nil, imagecachename=nil)
          @ImageCacheId = imagecacheid
          @ImageCacheName = imagecachename
        end

        def deserialize(params)
          @ImageCacheId = params['ImageCacheId']
          @ImageCacheName = params['ImageCacheName']
        end
      end

      # UpdateImageCache返回参数结构体
      class UpdateImageCacheResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTKEEdgeCluster请求参数结构体
      class UpdateTKEEdgeClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 边缘计算集群ID
        # @type ClusterId: String
        # @param ClusterName: 边缘计算集群名称
        # @type ClusterName: String
        # @param ClusterDesc: 边缘计算集群描述信息
        # @type ClusterDesc: String
        # @param PodCIDR: 边缘计算集群的pod cidr
        # @type PodCIDR: String
        # @param ServiceCIDR: 边缘计算集群的service cidr
        # @type ServiceCIDR: String
        # @param PublicLB: 边缘计算集群公网访问LB信息
        # @type PublicLB: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterPublicLB`
        # @param InternalLB: 边缘计算集群内网访问LB信息
        # @type InternalLB: :class:`Tencentcloud::Tke.v20180525.models.EdgeClusterInternalLB`
        # @param CoreDns: 边缘计算集群的CoreDns部署信息
        # @type CoreDns: String
        # @param HealthRegion: 边缘计算集群的健康检查多地域部署信息
        # @type HealthRegion: String
        # @param Health: 边缘计算集群的健康检查部署信息
        # @type Health: String
        # @param GridDaemon: 边缘计算集群的GridDaemon部署信息
        # @type GridDaemon: String
        # @param AutoUpgradeClusterLevel: 边缘集群开启自动升配
        # @type AutoUpgradeClusterLevel: Boolean
        # @param ClusterLevel: 边缘集群的集群规模
        # @type ClusterLevel: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDesc, :PodCIDR, :ServiceCIDR, :PublicLB, :InternalLB, :CoreDns, :HealthRegion, :Health, :GridDaemon, :AutoUpgradeClusterLevel, :ClusterLevel
        
        def initialize(clusterid=nil, clustername=nil, clusterdesc=nil, podcidr=nil, servicecidr=nil, publiclb=nil, internallb=nil, coredns=nil, healthregion=nil, health=nil, griddaemon=nil, autoupgradeclusterlevel=nil, clusterlevel=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
          @PublicLB = publiclb
          @InternalLB = internallb
          @CoreDns = coredns
          @HealthRegion = healthregion
          @Health = health
          @GridDaemon = griddaemon
          @AutoUpgradeClusterLevel = autoupgradeclusterlevel
          @ClusterLevel = clusterlevel
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
          unless params['PublicLB'].nil?
            @PublicLB = EdgeClusterPublicLB.new
            @PublicLB.deserialize(params['PublicLB'])
          end
          unless params['InternalLB'].nil?
            @InternalLB = EdgeClusterInternalLB.new
            @InternalLB.deserialize(params['InternalLB'])
          end
          @CoreDns = params['CoreDns']
          @HealthRegion = params['HealthRegion']
          @Health = params['Health']
          @GridDaemon = params['GridDaemon']
          @AutoUpgradeClusterLevel = params['AutoUpgradeClusterLevel']
          @ClusterLevel = params['ClusterLevel']
        end
      end

      # UpdateTKEEdgeCluster返回参数结构体
      class UpdateTKEEdgeClusterResponse < TencentCloud::Common::AbstractModel
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

      # 可升级节点信息
      class UpgradeAbleInstancesItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 节点Id
        # @type InstanceId: String
        # @param Version: 节点的当前版本
        # @type Version: String
        # @param LatestVersion: 当前版本的最新小版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestVersion: String

        attr_accessor :InstanceId, :Version, :LatestVersion
        
        def initialize(instanceid=nil, version=nil, latestversion=nil)
          @InstanceId = instanceid
          @Version = version
          @LatestVersion = latestversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Version = params['Version']
          @LatestVersion = params['LatestVersion']
        end
      end

      # UpgradeClusterInstances请求参数结构体
      class UpgradeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Operation: create 表示开始一次升级任务
        # pause 表示停止任务
        # resume表示继续任务
        # abort表示终止任务
        # @type Operation: String
        # @param UpgradeType: 升级类型，只有Operation是create需要设置
        # reset 大版本重装升级
        # hot 小版本热升级
        # major 大版本原地升级
        # @type UpgradeType: String
        # @param InstanceIds: 需要升级的节点列表
        # @type InstanceIds: Array
        # @param ResetParam: 当节点重新加入集群时候所使用的参数，参考添加已有节点接口
        # @type ResetParam: :class:`Tencentcloud::Tke.v20180525.models.UpgradeNodeResetParam`
        # @param SkipPreCheck: 是否忽略节点升级前检查
        # @type SkipPreCheck: Boolean
        # @param MaxNotReadyPercent: 最大可容忍的不可用Pod比例
        # @type MaxNotReadyPercent: Float

        attr_accessor :ClusterId, :Operation, :UpgradeType, :InstanceIds, :ResetParam, :SkipPreCheck, :MaxNotReadyPercent
        
        def initialize(clusterid=nil, operation=nil, upgradetype=nil, instanceids=nil, resetparam=nil, skipprecheck=nil, maxnotreadypercent=nil)
          @ClusterId = clusterid
          @Operation = operation
          @UpgradeType = upgradetype
          @InstanceIds = instanceids
          @ResetParam = resetparam
          @SkipPreCheck = skipprecheck
          @MaxNotReadyPercent = maxnotreadypercent
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Operation = params['Operation']
          @UpgradeType = params['UpgradeType']
          @InstanceIds = params['InstanceIds']
          unless params['ResetParam'].nil?
            @ResetParam = UpgradeNodeResetParam.new
            @ResetParam.deserialize(params['ResetParam'])
          end
          @SkipPreCheck = params['SkipPreCheck']
          @MaxNotReadyPercent = params['MaxNotReadyPercent']
        end
      end

      # UpgradeClusterInstances返回参数结构体
      class UpgradeClusterInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 节点升级重装参数
      class UpgradeNodeResetParam < TencentCloud::Common::AbstractModel
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tke.v20180525.models.InstanceAdvancedSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Tke.v20180525.models.EnhancedService`
        # @param LoginSettings: 节点登录信息（目前仅支持使用Password或者单个KeyIds）
        # @type LoginSettings: :class:`Tencentcloud::Tke.v20180525.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。（目前仅支持设置单个sgId）
        # @type SecurityGroupIds: Array

        attr_accessor :InstanceAdvancedSettings, :EnhancedService, :LoginSettings, :SecurityGroupIds
        
        def initialize(instanceadvancedsettings=nil, enhancedservice=nil, loginsettings=nil, securitygroupids=nil)
          @InstanceAdvancedSettings = instanceadvancedsettings
          @EnhancedService = enhancedservice
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # 版本信息
      class VersionInstance < TencentCloud::Common::AbstractModel
        # @param Name: 版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Version: 版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Remark: Remark
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Name, :Version, :Remark
        
        def initialize(name=nil, version=nil, remark=nil)
          @Name = name
          @Version = version
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @Remark = params['Remark']
        end
      end

      # 数据卷挂载路径信息
      class VolumeMount < TencentCloud::Common::AbstractModel
        # @param Name: volume名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param MountPath: 挂载路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountPath: String
        # @param ReadOnly: 是否只读
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnly: Boolean
        # @param SubPath: 子路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubPath: String
        # @param MountPropagation: 传播挂载方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountPropagation: String
        # @param SubPathExpr: 子路径表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubPathExpr: String

        attr_accessor :Name, :MountPath, :ReadOnly, :SubPath, :MountPropagation, :SubPathExpr
        
        def initialize(name=nil, mountpath=nil, readonly=nil, subpath=nil, mountpropagation=nil, subpathexpr=nil)
          @Name = name
          @MountPath = mountpath
          @ReadOnly = readonly
          @SubPath = subpath
          @MountPropagation = mountpropagation
          @SubPathExpr = subpathexpr
        end

        def deserialize(params)
          @Name = params['Name']
          @MountPath = params['MountPath']
          @ReadOnly = params['ReadOnly']
          @SubPath = params['SubPath']
          @MountPropagation = params['MountPropagation']
          @SubPathExpr = params['SubPathExpr']
        end
      end

    end
  end
end

