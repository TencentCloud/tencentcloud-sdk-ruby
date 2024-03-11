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

      # DescribeClusterInstances请求参数结构体
      class DescribeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤条件列表:
        # InstanceIds(实例ID),InstanceType(实例类型：Regular，Native，Virtual，External),VagueIpAddress(模糊匹配IP),Labels(k8s节点label),NodePoolNames(节点池名称),VagueInstanceName(模糊匹配节点名),InstanceStates(节点状态),Unschedulable(是否封锁),NodePoolIds(节点池ID)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param PayMode: 节点计费模式（已弃用）
        # @type PayMode: String
        # @param Memory: 节点内存容量，单位：`GB`
        # @type Memory: Integer
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
        # @param SecurityGroupIDs: 安全组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIDs: Array
        # @param VpcId: VPC 唯一 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网唯一 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param OsImage: OS的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsImage: String

        attr_accessor :MachineName, :MachineState, :Zone, :InstanceChargeType, :CreatedAt, :LoginStatus, :IsProtectedFromScaleIn, :DisplayName, :CPU, :GPU, :RenewFlag, :PayMode, :Memory, :InternetAccessible, :InstanceFamily, :LanIp, :InstanceType, :ExpiredTime, :SecurityGroupIDs, :VpcId, :SubnetId, :OsImage

        def initialize(machinename=nil, machinestate=nil, zone=nil, instancechargetype=nil, createdat=nil, loginstatus=nil, isprotectedfromscalein=nil, displayname=nil, cpu=nil, gpu=nil, renewflag=nil, paymode=nil, memory=nil, internetaccessible=nil, instancefamily=nil, lanip=nil, instancetype=nil, expiredtime=nil, securitygroupids=nil, vpcid=nil, subnetid=nil, osimage=nil)
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
          @InternetAccessible = internetaccessible
          @InstanceFamily = instancefamily
          @LanIp = lanip
          @InstanceType = instancetype
          @ExpiredTime = expiredtime
          @SecurityGroupIDs = securitygroupids
          @VpcId = vpcid
          @SubnetId = subnetid
          @OsImage = osimage
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
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceFamily = params['InstanceFamily']
          @LanIp = params['LanIp']
          @InstanceType = params['InstanceType']
          @ExpiredTime = params['ExpiredTime']
          @SecurityGroupIDs = params['SecurityGroupIDs']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @OsImage = params['OsImage']
        end
      end

      # 原生节点池信息
      class NativeNodePoolInfo < TencentCloud::Common::AbstractModel
        # @param SubnetIds: 子网列表
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
        # @param Taints: 节点污点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Taints: Array
        # @param DeletionProtection: 是否开启删除保护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionProtection: Boolean
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

        attr_accessor :ClusterId, :NodePoolId, :Taints, :DeletionProtection, :Type, :Labels, :LifeState, :CreatedAt, :Name, :Native, :Annotations, :Super, :Regular, :External

        def initialize(clusterid=nil, nodepoolid=nil, taints=nil, deletionprotection=nil, type=nil, labels=nil, lifestate=nil, createdat=nil, name=nil, native=nil, annotations=nil, _super=nil, regular=nil, external=nil)
          @ClusterId = clusterid
          @NodePoolId = nodepoolid
          @Taints = taints
          @DeletionProtection = deletionprotection
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
          unless params['Taints'].nil?
            @Taints = []
            params['Taints'].each do |i|
              taint_tmp = Taint.new
              taint_tmp.deserialize(i)
              @Taints << taint_tmp
            end
          end
          @DeletionProtection = params['DeletionProtection']
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

    end
  end
end

