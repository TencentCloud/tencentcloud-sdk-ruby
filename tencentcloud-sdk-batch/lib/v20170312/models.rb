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
  module Batch
    module V20170312
      # 计算环境的创建或销毁活动
      class Activity < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动ID
        # @type ActivityId: String
        # @param ComputeNodeId: 计算节点ID
        # @type ComputeNodeId: String
        # @param ComputeNodeActivityType: 计算节点活动类型，创建或者销毁
        # @type ComputeNodeActivityType: String
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param Cause: 起因
        # @type Cause: String
        # @param ActivityState: 活动状态
        # @type ActivityState: String
        # @param StateReason: 状态原因
        # @type StateReason: String
        # @param StartTime: 活动开始时间
        # @type StartTime: String
        # @param EndTime: 活动结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param InstanceId: 云服务器实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :ActivityId, :ComputeNodeId, :ComputeNodeActivityType, :EnvId, :Cause, :ActivityState, :StateReason, :StartTime, :EndTime, :InstanceId

        def initialize(activityid=nil, computenodeid=nil, computenodeactivitytype=nil, envid=nil, cause=nil, activitystate=nil, statereason=nil, starttime=nil, endtime=nil, instanceid=nil)
          @ActivityId = activityid
          @ComputeNodeId = computenodeid
          @ComputeNodeActivityType = computenodeactivitytype
          @EnvId = envid
          @Cause = cause
          @ActivityState = activitystate
          @StateReason = statereason
          @StartTime = starttime
          @EndTime = endtime
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @ComputeNodeId = params['ComputeNodeId']
          @ComputeNodeActivityType = params['ComputeNodeActivityType']
          @EnvId = params['EnvId']
          @Cause = params['Cause']
          @ActivityState = params['ActivityState']
          @StateReason = params['StateReason']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceId = params['InstanceId']
        end
      end

      # agent运行模式
      class AgentRunningMode < TencentCloud::Common::AbstractModel
        # @param Scene: 场景类型，支持WINDOWS
        # @type Scene: String
        # @param User: 运行Agent的User
        # @type User: String
        # @param Session: 运行Agent的Session
        # @type Session: String

        attr_accessor :Scene, :User, :Session

        def initialize(scene=nil, user=nil, session=nil)
          @Scene = scene
          @User = user
          @Session = session
        end

        def deserialize(params)
          @Scene = params['Scene']
          @User = params['User']
          @Session = params['Session']
        end
      end

      # 计算环境
      class AnonymousComputeEnv < TencentCloud::Common::AbstractModel
        # @param EnvType: 计算环境管理类型
        # @type EnvType: String
        # @param EnvData: 计算环境具体参数
        # @type EnvData: :class:`Tencentcloud::Batch.v20170312.models.EnvData`
        # @param MountDataDisks: 数据盘挂载选项
        # @type MountDataDisks: Array
        # @param AgentRunningMode: agent运行模式，适用于Windows系统
        # @type AgentRunningMode: :class:`Tencentcloud::Batch.v20170312.models.AgentRunningMode`

        attr_accessor :EnvType, :EnvData, :MountDataDisks, :AgentRunningMode

        def initialize(envtype=nil, envdata=nil, mountdatadisks=nil, agentrunningmode=nil)
          @EnvType = envtype
          @EnvData = envdata
          @MountDataDisks = mountdatadisks
          @AgentRunningMode = agentrunningmode
        end

        def deserialize(params)
          @EnvType = params['EnvType']
          unless params['EnvData'].nil?
            @EnvData = EnvData.new
            @EnvData.deserialize(params['EnvData'])
          end
          unless params['MountDataDisks'].nil?
            @MountDataDisks = []
            params['MountDataDisks'].each do |i|
              mountdatadisk_tmp = MountDataDisk.new
              mountdatadisk_tmp.deserialize(i)
              @MountDataDisks << mountdatadisk_tmp
            end
          end
          unless params['AgentRunningMode'].nil?
            @AgentRunningMode = AgentRunningMode.new
            @AgentRunningMode.deserialize(params['AgentRunningMode'])
          end
        end
      end

      # 应用程序信息
      class Application < TencentCloud::Common::AbstractModel
        # @param DeliveryForm: 应用程序的交付方式，包括PACKAGE、LOCAL 两种取值，分别指远程存储的软件包、计算环境本地。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliveryForm: String
        # @param Command: 任务执行命令。与Commands不能同时指定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: String
        # @param PackagePath: 应用程序软件包的远程存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackagePath: String
        # @param Docker: 应用使用Docker的相关配置。在使用Docker配置的情况下，DeliveryForm 为 LOCAL 表示直接使用Docker镜像内部的应用软件，通过Docker方式运行；DeliveryForm 为 PACKAGE，表示将远程应用包注入到Docker镜像后，通过Docker方式运行。为避免Docker不同版本的兼容性问题，Docker安装包及相关依赖由Batch统一负责，对于已安装Docker的自定义镜像，请卸载后再使用Docker特性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Docker: :class:`Tencentcloud::Batch.v20170312.models.Docker`
        # @param Commands: 任务执行命令信息。与Command不能同时指定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Commands: Array

        attr_accessor :DeliveryForm, :Command, :PackagePath, :Docker, :Commands

        def initialize(deliveryform=nil, command=nil, packagepath=nil, docker=nil, commands=nil)
          @DeliveryForm = deliveryform
          @Command = command
          @PackagePath = packagepath
          @Docker = docker
          @Commands = commands
        end

        def deserialize(params)
          @DeliveryForm = params['DeliveryForm']
          @Command = params['Command']
          @PackagePath = params['PackagePath']
          unless params['Docker'].nil?
            @Docker = Docker.new
            @Docker.deserialize(params['Docker'])
          end
          unless params['Commands'].nil?
            @Commands = []
            params['Commands'].each do |i|
              commandline_tmp = CommandLine.new
              commandline_tmp.deserialize(i)
              @Commands << commandline_tmp
            end
          end
        end
      end

      # AttachInstances请求参数结构体
      class AttachInstancesRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param Instances: 加入计算环境实例列表
        # @type Instances: Array

        attr_accessor :EnvId, :Instances

        def initialize(envid=nil, instances=nil)
          @EnvId = envid
          @Instances = instances
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @Instances << instance_tmp
            end
          end
        end
      end

      # AttachInstances返回参数结构体
      class AttachInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 授权认证信息
      class Authentication < TencentCloud::Common::AbstractModel
        # @param Scene: 授权场景，例如COS
        # @type Scene: String
        # @param SecretId: SecretId
        # @type SecretId: String
        # @param SecretKey: SecretKey
        # @type SecretKey: String

        attr_accessor :Scene, :SecretId, :SecretKey

        def initialize(scene=nil, secretid=nil, secretkey=nil)
          @Scene = scene
          @SecretId = secretid
          @SecretKey = secretkey
        end

        def deserialize(params)
          @Scene = params['Scene']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
        end
      end

      # 任务执行信息描述。
      class CommandLine < TencentCloud::Common::AbstractModel
        # @param Command: 任务执行命令。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: String

        attr_accessor :Command

        def initialize(command=nil)
          @Command = command
        end

        def deserialize(params)
          @Command = params['Command']
        end
      end

      # 计算环境创建信息。
      class ComputeEnvCreateInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境 ID
        # @type EnvId: String
        # @param EnvName: 计算环境名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvName: String
        # @param EnvDescription: 计算环境描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvDescription: String
        # @param EnvType: 计算环境类型，仅支持“MANAGED”类型
        # @type EnvType: String
        # @param EnvData: 计算环境参数
        # @type EnvData: :class:`Tencentcloud::Batch.v20170312.models.EnvData`
        # @param MountDataDisks: 数据盘挂载选项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountDataDisks: Array
        # @param InputMappings: 输入映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputMappings: Array
        # @param Authentications: 授权信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Authentications: Array
        # @param Notifications: 通知信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notifications: Array
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param Tags: 计算环境标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :EnvId, :EnvName, :EnvDescription, :EnvType, :EnvData, :MountDataDisks, :InputMappings, :Authentications, :Notifications, :DesiredComputeNodeCount, :Tags

        def initialize(envid=nil, envname=nil, envdescription=nil, envtype=nil, envdata=nil, mountdatadisks=nil, inputmappings=nil, authentications=nil, notifications=nil, desiredcomputenodecount=nil, tags=nil)
          @EnvId = envid
          @EnvName = envname
          @EnvDescription = envdescription
          @EnvType = envtype
          @EnvData = envdata
          @MountDataDisks = mountdatadisks
          @InputMappings = inputmappings
          @Authentications = authentications
          @Notifications = notifications
          @DesiredComputeNodeCount = desiredcomputenodecount
          @Tags = tags
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnvName = params['EnvName']
          @EnvDescription = params['EnvDescription']
          @EnvType = params['EnvType']
          unless params['EnvData'].nil?
            @EnvData = EnvData.new
            @EnvData.deserialize(params['EnvData'])
          end
          unless params['MountDataDisks'].nil?
            @MountDataDisks = []
            params['MountDataDisks'].each do |i|
              mountdatadisk_tmp = MountDataDisk.new
              mountdatadisk_tmp.deserialize(i)
              @MountDataDisks << mountdatadisk_tmp
            end
          end
          unless params['InputMappings'].nil?
            @InputMappings = []
            params['InputMappings'].each do |i|
              inputmapping_tmp = InputMapping.new
              inputmapping_tmp.deserialize(i)
              @InputMappings << inputmapping_tmp
            end
          end
          unless params['Authentications'].nil?
            @Authentications = []
            params['Authentications'].each do |i|
              authentication_tmp = Authentication.new
              authentication_tmp.deserialize(i)
              @Authentications << authentication_tmp
            end
          end
          unless params['Notifications'].nil?
            @Notifications = []
            params['Notifications'].each do |i|
              notification_tmp = Notification.new
              notification_tmp.deserialize(i)
              @Notifications << notification_tmp
            end
          end
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
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

      # 计算环境属性数据
      class ComputeEnvData < TencentCloud::Common::AbstractModel
        # @param InstanceTypes: CVM实例类型列表
        # @type InstanceTypes: Array

        attr_accessor :InstanceTypes

        def initialize(instancetypes=nil)
          @InstanceTypes = instancetypes
        end

        def deserialize(params)
          @InstanceTypes = params['InstanceTypes']
        end
      end

      # 计算环境信息
      class ComputeEnvView < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param EnvName: 计算环境名称
        # @type EnvName: String
        # @param Placement: 位置信息
        # @type Placement: :class:`Tencentcloud::Batch.v20170312.models.Placement`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ComputeNodeMetrics: 计算节点统计指标
        # @type ComputeNodeMetrics: :class:`Tencentcloud::Batch.v20170312.models.ComputeNodeMetrics`
        # @param EnvType: 计算环境类型
        # @type EnvType: String
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param ResourceType: 计算环境资源类型，当前为CVM和CPM（黑石）
        # @type ResourceType: String
        # @param NextAction: 下一步动作
        # @type NextAction: String
        # @param AttachedComputeNodeCount: 用户添加到计算环境中的计算节点个数
        # @type AttachedComputeNodeCount: Integer
        # @param Tags: 计算环境绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :EnvId, :EnvName, :Placement, :CreateTime, :ComputeNodeMetrics, :EnvType, :DesiredComputeNodeCount, :ResourceType, :NextAction, :AttachedComputeNodeCount, :Tags

        def initialize(envid=nil, envname=nil, placement=nil, createtime=nil, computenodemetrics=nil, envtype=nil, desiredcomputenodecount=nil, resourcetype=nil, nextaction=nil, attachedcomputenodecount=nil, tags=nil)
          @EnvId = envid
          @EnvName = envname
          @Placement = placement
          @CreateTime = createtime
          @ComputeNodeMetrics = computenodemetrics
          @EnvType = envtype
          @DesiredComputeNodeCount = desiredcomputenodecount
          @ResourceType = resourcetype
          @NextAction = nextaction
          @AttachedComputeNodeCount = attachedcomputenodecount
          @Tags = tags
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnvName = params['EnvName']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @CreateTime = params['CreateTime']
          unless params['ComputeNodeMetrics'].nil?
            @ComputeNodeMetrics = ComputeNodeMetrics.new
            @ComputeNodeMetrics.deserialize(params['ComputeNodeMetrics'])
          end
          @EnvType = params['EnvType']
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
          @ResourceType = params['ResourceType']
          @NextAction = params['NextAction']
          @AttachedComputeNodeCount = params['AttachedComputeNodeCount']
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

      # 计算节点
      class ComputeNode < TencentCloud::Common::AbstractModel
        # @param ComputeNodeId: 计算节点ID
        # @type ComputeNodeId: String
        # @param ComputeNodeInstanceId: 计算节点实例ID，对于CVM场景，即为CVM的InstanceId
        # @type ComputeNodeInstanceId: String
        # @param ComputeNodeState: 计算节点状态
        # @type ComputeNodeState: String
        # @param Cpu: CPU核数
        # @type Cpu: Integer
        # @param Mem: 内存容量，单位GiB
        # @type Mem: Integer
        # @param ResourceCreatedTime: 资源创建完成时间
        # @type ResourceCreatedTime: String
        # @param TaskInstanceNumAvailable: 计算节点运行  TaskInstance 可用容量。0表示计算节点忙碌。
        # @type TaskInstanceNumAvailable: Integer
        # @param AgentVersion: Batch Agent 版本
        # @type AgentVersion: String
        # @param PrivateIpAddresses: 实例内网IP
        # @type PrivateIpAddresses: Array
        # @param PublicIpAddresses: 实例公网IP
        # @type PublicIpAddresses: Array
        # @param ResourceType: 计算环境资源类型，当前为CVM和CPM（黑石）
        # @type ResourceType: String
        # @param ResourceOrigin: 计算环境资源来源。<br>BATCH_CREATED：由批量计算创建的实例资源。<br>
        # USER_ATTACHED：用户添加到计算环境中的实例资源。
        # @type ResourceOrigin: String

        attr_accessor :ComputeNodeId, :ComputeNodeInstanceId, :ComputeNodeState, :Cpu, :Mem, :ResourceCreatedTime, :TaskInstanceNumAvailable, :AgentVersion, :PrivateIpAddresses, :PublicIpAddresses, :ResourceType, :ResourceOrigin

        def initialize(computenodeid=nil, computenodeinstanceid=nil, computenodestate=nil, cpu=nil, mem=nil, resourcecreatedtime=nil, taskinstancenumavailable=nil, agentversion=nil, privateipaddresses=nil, publicipaddresses=nil, resourcetype=nil, resourceorigin=nil)
          @ComputeNodeId = computenodeid
          @ComputeNodeInstanceId = computenodeinstanceid
          @ComputeNodeState = computenodestate
          @Cpu = cpu
          @Mem = mem
          @ResourceCreatedTime = resourcecreatedtime
          @TaskInstanceNumAvailable = taskinstancenumavailable
          @AgentVersion = agentversion
          @PrivateIpAddresses = privateipaddresses
          @PublicIpAddresses = publicipaddresses
          @ResourceType = resourcetype
          @ResourceOrigin = resourceorigin
        end

        def deserialize(params)
          @ComputeNodeId = params['ComputeNodeId']
          @ComputeNodeInstanceId = params['ComputeNodeInstanceId']
          @ComputeNodeState = params['ComputeNodeState']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @ResourceCreatedTime = params['ResourceCreatedTime']
          @TaskInstanceNumAvailable = params['TaskInstanceNumAvailable']
          @AgentVersion = params['AgentVersion']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @PublicIpAddresses = params['PublicIpAddresses']
          @ResourceType = params['ResourceType']
          @ResourceOrigin = params['ResourceOrigin']
        end
      end

      # 计算节点统计指标
      class ComputeNodeMetrics < TencentCloud::Common::AbstractModel
        # @param SubmittedCount: 已经完成提交的计算节点数量
        # @type SubmittedCount: Integer
        # @param CreatingCount: 创建中的计算节点数量
        # @type CreatingCount: Integer
        # @param CreationFailedCount: 创建失败的计算节点数量
        # @type CreationFailedCount: Integer
        # @param CreatedCount: 完成创建的计算节点数量
        # @type CreatedCount: Integer
        # @param RunningCount: 运行中的计算节点数量
        # @type RunningCount: Integer
        # @param DeletingCount: 销毁中的计算节点数量
        # @type DeletingCount: Integer
        # @param AbnormalCount: 异常的计算节点数量
        # @type AbnormalCount: Integer

        attr_accessor :SubmittedCount, :CreatingCount, :CreationFailedCount, :CreatedCount, :RunningCount, :DeletingCount, :AbnormalCount

        def initialize(submittedcount=nil, creatingcount=nil, creationfailedcount=nil, createdcount=nil, runningcount=nil, deletingcount=nil, abnormalcount=nil)
          @SubmittedCount = submittedcount
          @CreatingCount = creatingcount
          @CreationFailedCount = creationfailedcount
          @CreatedCount = createdcount
          @RunningCount = runningcount
          @DeletingCount = deletingcount
          @AbnormalCount = abnormalcount
        end

        def deserialize(params)
          @SubmittedCount = params['SubmittedCount']
          @CreatingCount = params['CreatingCount']
          @CreationFailedCount = params['CreationFailedCount']
          @CreatedCount = params['CreatedCount']
          @RunningCount = params['RunningCount']
          @DeletingCount = params['DeletingCount']
          @AbnormalCount = params['AbnormalCount']
        end
      end

      # 黑石私有网络
      class CpmVirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 黑石私有网络ID
        # @type VpcId: String
        # @param SubnetId: 黑石子网ID
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # CreateComputeEnv请求参数结构体
      class CreateComputeEnvRequest < TencentCloud::Common::AbstractModel
        # @param ComputeEnv: 计算环境信息
        # @type ComputeEnv: :class:`Tencentcloud::Batch.v20170312.models.NamedComputeEnv`
        # @param Placement: 位置信息
        # @type Placement: :class:`Tencentcloud::Batch.v20170312.models.Placement`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由用户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String

        attr_accessor :ComputeEnv, :Placement, :ClientToken

        def initialize(computeenv=nil, placement=nil, clienttoken=nil)
          @ComputeEnv = computeenv
          @Placement = placement
          @ClientToken = clienttoken
        end

        def deserialize(params)
          unless params['ComputeEnv'].nil?
            @ComputeEnv = NamedComputeEnv.new
            @ComputeEnv.deserialize(params['ComputeEnv'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ClientToken = params['ClientToken']
        end
      end

      # CreateComputeEnv返回参数结构体
      class CreateComputeEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :RequestId

        def initialize(envid=nil, requestid=nil)
          @EnvId = envid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCpmComputeEnv请求参数结构体
      class CreateCpmComputeEnvRequest < TencentCloud::Common::AbstractModel
        # @param ComputeEnv: 计算环境信息
        # @type ComputeEnv: :class:`Tencentcloud::Batch.v20170312.models.NamedCpmComputeEnv`
        # @param Placement: 位置信息
        # @type Placement: :class:`Tencentcloud::Batch.v20170312.models.Placement`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由用户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String

        attr_accessor :ComputeEnv, :Placement, :ClientToken

        def initialize(computeenv=nil, placement=nil, clienttoken=nil)
          @ComputeEnv = computeenv
          @Placement = placement
          @ClientToken = clienttoken
        end

        def deserialize(params)
          unless params['ComputeEnv'].nil?
            @ComputeEnv = NamedCpmComputeEnv.new
            @ComputeEnv.deserialize(params['ComputeEnv'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ClientToken = params['ClientToken']
        end
      end

      # CreateCpmComputeEnv返回参数结构体
      class CreateCpmComputeEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :RequestId

        def initialize(envid=nil, requestid=nil)
          @EnvId = envid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTaskTemplate请求参数结构体
      class CreateTaskTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TaskTemplateName: 任务模板名称
        # @type TaskTemplateName: String
        # @param TaskTemplateInfo: 任务模板内容，参数要求与任务一致
        # @type TaskTemplateInfo: :class:`Tencentcloud::Batch.v20170312.models.Task`
        # @param TaskTemplateDescription: 任务模板描述
        # @type TaskTemplateDescription: String
        # @param Tags: 标签列表。通过指定该参数可以支持绑定标签到任务模板。每个任务模板最多绑定10个标签。
        # @type Tags: Array

        attr_accessor :TaskTemplateName, :TaskTemplateInfo, :TaskTemplateDescription, :Tags

        def initialize(tasktemplatename=nil, tasktemplateinfo=nil, tasktemplatedescription=nil, tags=nil)
          @TaskTemplateName = tasktemplatename
          @TaskTemplateInfo = tasktemplateinfo
          @TaskTemplateDescription = tasktemplatedescription
          @Tags = tags
        end

        def deserialize(params)
          @TaskTemplateName = params['TaskTemplateName']
          unless params['TaskTemplateInfo'].nil?
            @TaskTemplateInfo = Task.new
            @TaskTemplateInfo.deserialize(params['TaskTemplateInfo'])
          end
          @TaskTemplateDescription = params['TaskTemplateDescription']
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

      # CreateTaskTemplate返回参数结构体
      class CreateTaskTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TaskTemplateId: 任务模板ID
        # @type TaskTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskTemplateId, :RequestId

        def initialize(tasktemplateid=nil, requestid=nil)
          @TaskTemplateId = tasktemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskTemplateId = params['TaskTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # 描述了数据盘的信息
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskSize: 数据盘大小，单位：GB。最小调整步长为10G，不同数据盘类型取值范围不同，具体限制详见：[存储概述](https://cloud.tencent.com/document/product/213/4952)。默认值为0，表示不购买数据盘。更多限制详见产品文档。
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型。数据盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br /><li>LOCAL_BASIC：本地硬盘<br /> <li>LOCAL_SSD：本地SSD硬盘<br /><li>LOCAL_NVME：本地NVME硬盘，与InstanceType强相关，不支持指定<br /><li>LOCAL_PRO：本地HDD硬盘，与InstanceType强相关，不支持指定<br /><li>CLOUD_BASIC：普通云硬盘<br /><li> CLOUD_PREMIUM：高性能云硬盘<br /><li>CLOUD_SSD：SSD云硬盘<br /><li> CLOUD_HSSD：增强型SSD云硬盘<br /> <li>CLOUD_TSSD：极速型SSD云硬盘<br /><li>CLOUD_BSSD：通用型SSD云硬盘<br /><br />默认取值：LOCAL_BASIC。<br /><br />该参数对`ResizeInstanceDisk`接口无效。</li></li></li> </li> </li></li></li></li></li></li>
        # @type DiskType: String
        # @param DiskId: 数据盘ID。LOCAL_BASIC 和 LOCAL_SSD 类型没有ID，暂时不支持该参数。
        # 该参数目前仅用于`DescribeInstances`等查询类接口的返回参数，不可用于`RunInstances`等写接口的入参。
        # @type DiskId: String
        # @param DeleteWithInstance: 数据盘是否随子机销毁。取值范围：
        # <li>true：子机销毁时，销毁数据盘，只支持按小时后付费云盘</li>
        # <li>
        #   false：子机销毁时，保留数据盘<br />
        #   默认取值：true<br />
        #   该参数目前仅用于 `RunInstances` 接口。
        # </li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteWithInstance: Boolean
        # @param SnapshotId: 数据盘快照ID。选择的数据盘快照大小需小于数据盘大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotId: String
        # @param Encrypt: 数据盘是加密。取值范围：
        # <li>true：加密</li>
        # <li>
        #   false：不加密<br />
        #   默认取值：false<br />
        #   该参数目前仅用于 `RunInstances` 接口。
        # </li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encrypt: Boolean
        # @param KmsKeyId: 自定义CMK对应的ID，取值为UUID或者类似kms-abcd1234。用于加密云盘。

        # 该参数目前仅用于 `RunInstances` 接口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsKeyId: String
        # @param ThroughputPerformance: 云硬盘性能，单位：MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThroughputPerformance: Integer
        # @param CdcId: 所属的独享集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param BurstPerformance: 突发性能

        #  <b>注：内测中。</b>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BurstPerformance: Boolean
        # @param DiskName: 磁盘名称，长度不超过128 个字符。

        # 该参数正在邀测中，暂未开放使用。
        # @type DiskName: String

        attr_accessor :DiskSize, :DiskType, :DiskId, :DeleteWithInstance, :SnapshotId, :Encrypt, :KmsKeyId, :ThroughputPerformance, :CdcId, :BurstPerformance, :DiskName

        def initialize(disksize=nil, disktype=nil, diskid=nil, deletewithinstance=nil, snapshotid=nil, encrypt=nil, kmskeyid=nil, throughputperformance=nil, cdcid=nil, burstperformance=nil, diskname=nil)
          @DiskSize = disksize
          @DiskType = disktype
          @DiskId = diskid
          @DeleteWithInstance = deletewithinstance
          @SnapshotId = snapshotid
          @Encrypt = encrypt
          @KmsKeyId = kmskeyid
          @ThroughputPerformance = throughputperformance
          @CdcId = cdcid
          @BurstPerformance = burstperformance
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          @DiskId = params['DiskId']
          @DeleteWithInstance = params['DeleteWithInstance']
          @SnapshotId = params['SnapshotId']
          @Encrypt = params['Encrypt']
          @KmsKeyId = params['KmsKeyId']
          @ThroughputPerformance = params['ThroughputPerformance']
          @CdcId = params['CdcId']
          @BurstPerformance = params['BurstPerformance']
          @DiskName = params['DiskName']
        end
      end

      # DeleteComputeEnv请求参数结构体
      class DeleteComputeEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DeleteComputeEnv返回参数结构体
      class DeleteComputeEnvResponse < TencentCloud::Common::AbstractModel
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

      # DeleteJob请求参数结构体
      class DeleteJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DeleteJob返回参数结构体
      class DeleteJobResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTaskTemplates请求参数结构体
      class DeleteTaskTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param TaskTemplateIds: 用于删除任务模板信息
        # @type TaskTemplateIds: Array

        attr_accessor :TaskTemplateIds

        def initialize(tasktemplateids=nil)
          @TaskTemplateIds = tasktemplateids
        end

        def deserialize(params)
          @TaskTemplateIds = params['TaskTemplateIds']
        end
      end

      # DeleteTaskTemplates返回参数结构体
      class DeleteTaskTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # 依赖关系
      class Dependence < TencentCloud::Common::AbstractModel
        # @param StartTask: 依赖关系的起点任务名称
        # @type StartTask: String
        # @param EndTask: 依赖关系的终点任务名称
        # @type EndTask: String

        attr_accessor :StartTask, :EndTask

        def initialize(starttask=nil, endtask=nil)
          @StartTask = starttask
          @EndTask = endtask
        end

        def deserialize(params)
          @StartTask = params['StartTask']
          @EndTask = params['EndTask']
        end
      end

      # DescribeAvailableCvmInstanceTypes请求参数结构体
      class DescribeAvailableCvmInstanceTypesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        # <li> instance-family String - 是否必填：否 -（过滤条件）按照机型系列过滤。实例机型系列形如：S1、I1、M1等。</li>
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeAvailableCvmInstanceTypes返回参数结构体
      class DescribeAvailableCvmInstanceTypesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceTypeConfigSet: 机型配置数组
        # @type InstanceTypeConfigSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceTypeConfigSet, :RequestId

        def initialize(instancetypeconfigset=nil, requestid=nil)
          @InstanceTypeConfigSet = instancetypeconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceTypeConfigSet'].nil?
            @InstanceTypeConfigSet = []
            params['InstanceTypeConfigSet'].each do |i|
              instancetypeconfig_tmp = InstanceTypeConfig.new
              instancetypeconfig_tmp.deserialize(i)
              @InstanceTypeConfigSet << instancetypeconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComputeEnvActivities请求参数结构体
      class DescribeComputeEnvActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # <li> compute-node-id - String - 是否必填：否 -（过滤条件）按照计算节点ID过滤。</li>
        # @type Filters: :class:`Tencentcloud::Batch.v20170312.models.Filter`

        attr_accessor :EnvId, :Offset, :Limit, :Filters

        def initialize(envid=nil, offset=nil, limit=nil, filters=nil)
          @EnvId = envid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # DescribeComputeEnvActivities返回参数结构体
      class DescribeComputeEnvActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param ActivitySet: 计算环境中的活动列表
        # @type ActivitySet: Array
        # @param TotalCount: 活动数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivitySet, :TotalCount, :RequestId

        def initialize(activityset=nil, totalcount=nil, requestid=nil)
          @ActivitySet = activityset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ActivitySet'].nil?
            @ActivitySet = []
            params['ActivitySet'].each do |i|
              activity_tmp = Activity.new
              activity_tmp.deserialize(i)
              @ActivitySet << activity_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeComputeEnvCreateInfo请求参数结构体
      class DescribeComputeEnvCreateInfoRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeComputeEnvCreateInfo返回参数结构体
      class DescribeComputeEnvCreateInfoResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境 ID
        # @type EnvId: String
        # @param EnvName: 计算环境名称
        # @type EnvName: String
        # @param EnvDescription: 计算环境描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvDescription: String
        # @param EnvType: 计算环境类型，仅支持“MANAGED”类型
        # @type EnvType: String
        # @param EnvData: 计算环境参数
        # @type EnvData: :class:`Tencentcloud::Batch.v20170312.models.EnvData`
        # @param MountDataDisks: 数据盘挂载选项
        # @type MountDataDisks: Array
        # @param InputMappings: 输入映射
        # @type InputMappings: Array
        # @param Authentications: 授权信息
        # @type Authentications: Array
        # @param Notifications: 通知信息
        # @type Notifications: Array
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param Tags: 计算环境绑定的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :EnvName, :EnvDescription, :EnvType, :EnvData, :MountDataDisks, :InputMappings, :Authentications, :Notifications, :DesiredComputeNodeCount, :Tags, :RequestId

        def initialize(envid=nil, envname=nil, envdescription=nil, envtype=nil, envdata=nil, mountdatadisks=nil, inputmappings=nil, authentications=nil, notifications=nil, desiredcomputenodecount=nil, tags=nil, requestid=nil)
          @EnvId = envid
          @EnvName = envname
          @EnvDescription = envdescription
          @EnvType = envtype
          @EnvData = envdata
          @MountDataDisks = mountdatadisks
          @InputMappings = inputmappings
          @Authentications = authentications
          @Notifications = notifications
          @DesiredComputeNodeCount = desiredcomputenodecount
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnvName = params['EnvName']
          @EnvDescription = params['EnvDescription']
          @EnvType = params['EnvType']
          unless params['EnvData'].nil?
            @EnvData = EnvData.new
            @EnvData.deserialize(params['EnvData'])
          end
          unless params['MountDataDisks'].nil?
            @MountDataDisks = []
            params['MountDataDisks'].each do |i|
              mountdatadisk_tmp = MountDataDisk.new
              mountdatadisk_tmp.deserialize(i)
              @MountDataDisks << mountdatadisk_tmp
            end
          end
          unless params['InputMappings'].nil?
            @InputMappings = []
            params['InputMappings'].each do |i|
              inputmapping_tmp = InputMapping.new
              inputmapping_tmp.deserialize(i)
              @InputMappings << inputmapping_tmp
            end
          end
          unless params['Authentications'].nil?
            @Authentications = []
            params['Authentications'].each do |i|
              authentication_tmp = Authentication.new
              authentication_tmp.deserialize(i)
              @Authentications << authentication_tmp
            end
          end
          unless params['Notifications'].nil?
            @Notifications = []
            params['Notifications'].each do |i|
              notification_tmp = Notification.new
              notification_tmp.deserialize(i)
              @Notifications << notification_tmp
            end
          end
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComputeEnvCreateInfos请求参数结构体
      class DescribeComputeEnvCreateInfosRequest < TencentCloud::Common::AbstractModel
        # @param EnvIds: 计算环境ID列表，与Filters参数不能同时指定。
        # @type EnvIds: Array
        # @param Filters: 过滤条件
        # <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        # <li> env-id - String - 是否必填：否 -（过滤条件）按照计算环境ID过滤。</li>
        # <li> env-name - String - 是否必填：否 -（过滤条件）按照计算环境名称过滤。</li>
        # 与EnvIds参数不能同时指定。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :EnvIds, :Filters, :Offset, :Limit

        def initialize(envids=nil, filters=nil, offset=nil, limit=nil)
          @EnvIds = envids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EnvIds = params['EnvIds']
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

      # DescribeComputeEnvCreateInfos返回参数结构体
      class DescribeComputeEnvCreateInfosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 计算环境数量
        # @type TotalCount: Integer
        # @param ComputeEnvCreateInfoSet: 计算环境创建信息列表
        # @type ComputeEnvCreateInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ComputeEnvCreateInfoSet, :RequestId

        def initialize(totalcount=nil, computeenvcreateinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @ComputeEnvCreateInfoSet = computeenvcreateinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ComputeEnvCreateInfoSet'].nil?
            @ComputeEnvCreateInfoSet = []
            params['ComputeEnvCreateInfoSet'].each do |i|
              computeenvcreateinfo_tmp = ComputeEnvCreateInfo.new
              computeenvcreateinfo_tmp.deserialize(i)
              @ComputeEnvCreateInfoSet << computeenvcreateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComputeEnv请求参数结构体
      class DescribeComputeEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeComputeEnv返回参数结构体
      class DescribeComputeEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param EnvName: 计算环境名称
        # @type EnvName: String
        # @param Placement: 位置信息
        # @type Placement: :class:`Tencentcloud::Batch.v20170312.models.Placement`
        # @param CreateTime: 计算环境创建时间
        # @type CreateTime: String
        # @param ComputeNodeSet: 计算节点列表信息
        # @type ComputeNodeSet: Array
        # @param ComputeNodeMetrics: 计算节点统计指标
        # @type ComputeNodeMetrics: :class:`Tencentcloud::Batch.v20170312.models.ComputeNodeMetrics`
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param EnvType: 计算环境类型
        # @type EnvType: String
        # @param ResourceType: 计算环境资源类型，当前为CVM和CPM（黑石）
        # @type ResourceType: String
        # @param NextAction: 下一步动作
        # @type NextAction: String
        # @param AttachedComputeNodeCount: 用户添加到计算环境中的计算节点个数
        # @type AttachedComputeNodeCount: Integer
        # @param Tags: 计算环境绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :EnvName, :Placement, :CreateTime, :ComputeNodeSet, :ComputeNodeMetrics, :DesiredComputeNodeCount, :EnvType, :ResourceType, :NextAction, :AttachedComputeNodeCount, :Tags, :RequestId

        def initialize(envid=nil, envname=nil, placement=nil, createtime=nil, computenodeset=nil, computenodemetrics=nil, desiredcomputenodecount=nil, envtype=nil, resourcetype=nil, nextaction=nil, attachedcomputenodecount=nil, tags=nil, requestid=nil)
          @EnvId = envid
          @EnvName = envname
          @Placement = placement
          @CreateTime = createtime
          @ComputeNodeSet = computenodeset
          @ComputeNodeMetrics = computenodemetrics
          @DesiredComputeNodeCount = desiredcomputenodecount
          @EnvType = envtype
          @ResourceType = resourcetype
          @NextAction = nextaction
          @AttachedComputeNodeCount = attachedcomputenodecount
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnvName = params['EnvName']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @CreateTime = params['CreateTime']
          unless params['ComputeNodeSet'].nil?
            @ComputeNodeSet = []
            params['ComputeNodeSet'].each do |i|
              computenode_tmp = ComputeNode.new
              computenode_tmp.deserialize(i)
              @ComputeNodeSet << computenode_tmp
            end
          end
          unless params['ComputeNodeMetrics'].nil?
            @ComputeNodeMetrics = ComputeNodeMetrics.new
            @ComputeNodeMetrics.deserialize(params['ComputeNodeMetrics'])
          end
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
          @EnvType = params['EnvType']
          @ResourceType = params['ResourceType']
          @NextAction = params['NextAction']
          @AttachedComputeNodeCount = params['AttachedComputeNodeCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComputeEnvs请求参数结构体
      class DescribeComputeEnvsRequest < TencentCloud::Common::AbstractModel
        # @param EnvIds: 计算环境ID列表，与Filters参数不能同时指定。
        # @type EnvIds: Array
        # @param Filters: 过滤条件
        # <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        # <li> env-id - String - 是否必填：否 -（过滤条件）按照计算环境ID过滤。</li>
        # <li> env-name - String - 是否必填：否 -（过滤条件）按照计算环境名称过滤。</li>
        # <li> resource-type - String - 是否必填：否 -（过滤条件）按照计算资源类型过滤，取值CVM或者CPM(黑石)。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        # <li>tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        # <li>tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        # 与EnvIds参数不能同时指定。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :EnvIds, :Filters, :Offset, :Limit

        def initialize(envids=nil, filters=nil, offset=nil, limit=nil)
          @EnvIds = envids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EnvIds = params['EnvIds']
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

      # DescribeComputeEnvs返回参数结构体
      class DescribeComputeEnvsResponse < TencentCloud::Common::AbstractModel
        # @param ComputeEnvSet: 计算环境列表
        # @type ComputeEnvSet: Array
        # @param TotalCount: 计算环境数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ComputeEnvSet, :TotalCount, :RequestId

        def initialize(computeenvset=nil, totalcount=nil, requestid=nil)
          @ComputeEnvSet = computeenvset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ComputeEnvSet'].nil?
            @ComputeEnvSet = []
            params['ComputeEnvSet'].each do |i|
              computeenvview_tmp = ComputeEnvView.new
              computeenvview_tmp.deserialize(i)
              @ComputeEnvSet << computeenvview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCpmOsInfo请求参数结构体
      class DescribeCpmOsInfoRequest < TencentCloud::Common::AbstractModel
        # @param DeviceClassCode: 黑石设备类型代号。 可以从[DescribeDeviceClass](https://cloud.tencent.com/document/api/386/32911)查询设备类型列表。
        # @type DeviceClassCode: String

        attr_accessor :DeviceClassCode

        def initialize(deviceclasscode=nil)
          @DeviceClassCode = deviceclasscode
        end

        def deserialize(params)
          @DeviceClassCode = params['DeviceClassCode']
        end
      end

      # DescribeCpmOsInfo返回参数结构体
      class DescribeCpmOsInfoResponse < TencentCloud::Common::AbstractModel
        # @param OsInfoSet: 操作系统信息列表。
        # @type OsInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OsInfoSet, :RequestId

        def initialize(osinfoset=nil, requestid=nil)
          @OsInfoSet = osinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OsInfoSet'].nil?
            @OsInfoSet = []
            params['OsInfoSet'].each do |i|
              osinfo_tmp = OsInfo.new
              osinfo_tmp.deserialize(i)
              @OsInfoSet << osinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCvmZoneInstanceConfigInfos请求参数结构体
      class DescribeCvmZoneInstanceConfigInfosRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        # <li> instance-family String - 是否必填：否 -（过滤条件）按照机型系列过滤。实例机型系列形如：S1、I1、M1等。</li>
        # <li> instance-type - String - 是否必填：否 - （过滤条件）按照机型过滤。</li>
        # <li> instance-charge-type - String - 是否必填：否 -（过滤条件）按照实例计费模式过滤。 ( POSTPAID_BY_HOUR：表示后付费，即按量计费机型 | SPOTPAID：表示竞价付费机型。 )  </li>
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeCvmZoneInstanceConfigInfos返回参数结构体
      class DescribeCvmZoneInstanceConfigInfosResponse < TencentCloud::Common::AbstractModel
        # @param InstanceTypeQuotaSet: 可用区机型配置列表。
        # @type InstanceTypeQuotaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceTypeQuotaSet, :RequestId

        def initialize(instancetypequotaset=nil, requestid=nil)
          @InstanceTypeQuotaSet = instancetypequotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceTypeQuotaSet'].nil?
            @InstanceTypeQuotaSet = []
            params['InstanceTypeQuotaSet'].each do |i|
              instancetypequotaitem_tmp = InstanceTypeQuotaItem.new
              instancetypequotaitem_tmp.deserialize(i)
              @InstanceTypeQuotaSet << instancetypequotaitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceCategories请求参数结构体
      class DescribeInstanceCategoriesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceCategories返回参数结构体
      class DescribeInstanceCategoriesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceCategorySet: CVM实例分类列表
        # @type InstanceCategorySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceCategorySet, :RequestId

        def initialize(instancecategoryset=nil, requestid=nil)
          @InstanceCategorySet = instancecategoryset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceCategorySet'].nil?
            @InstanceCategorySet = []
            params['InstanceCategorySet'].each do |i|
              instancecategoryitem_tmp = InstanceCategoryItem.new
              instancecategoryitem_tmp.deserialize(i)
              @InstanceCategorySet << instancecategoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJob请求参数结构体
      class DescribeJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业标识
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeJob返回参数结构体
      class DescribeJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param JobName: 作业名称
        # @type JobName: String
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param Priority: 作业优先级
        # @type Priority: Integer
        # @param JobState: 作业状态
        # @type JobState: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param TaskSet: 任务视图信息
        # @type TaskSet: Array
        # @param DependenceSet: 任务间依赖信息
        # @type DependenceSet: Array
        # @param TaskMetrics: 任务统计指标
        # @type TaskMetrics: :class:`Tencentcloud::Batch.v20170312.models.TaskMetrics`
        # @param TaskInstanceMetrics: 任务实例统计指标
        # @type TaskInstanceMetrics: :class:`Tencentcloud::Batch.v20170312.models.TaskInstanceMetrics`
        # @param StateReason: 作业失败原因
        # @type StateReason: String
        # @param Tags: 作业绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param NextAction: 下一步动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextAction: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :JobName, :Zone, :Priority, :JobState, :CreateTime, :EndTime, :TaskSet, :DependenceSet, :TaskMetrics, :TaskInstanceMetrics, :StateReason, :Tags, :NextAction, :RequestId

        def initialize(jobid=nil, jobname=nil, zone=nil, priority=nil, jobstate=nil, createtime=nil, endtime=nil, taskset=nil, dependenceset=nil, taskmetrics=nil, taskinstancemetrics=nil, statereason=nil, tags=nil, nextaction=nil, requestid=nil)
          @JobId = jobid
          @JobName = jobname
          @Zone = zone
          @Priority = priority
          @JobState = jobstate
          @CreateTime = createtime
          @EndTime = endtime
          @TaskSet = taskset
          @DependenceSet = dependenceset
          @TaskMetrics = taskmetrics
          @TaskInstanceMetrics = taskinstancemetrics
          @StateReason = statereason
          @Tags = tags
          @NextAction = nextaction
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @Zone = params['Zone']
          @Priority = params['Priority']
          @JobState = params['JobState']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              taskview_tmp = TaskView.new
              taskview_tmp.deserialize(i)
              @TaskSet << taskview_tmp
            end
          end
          unless params['DependenceSet'].nil?
            @DependenceSet = []
            params['DependenceSet'].each do |i|
              dependence_tmp = Dependence.new
              dependence_tmp.deserialize(i)
              @DependenceSet << dependence_tmp
            end
          end
          unless params['TaskMetrics'].nil?
            @TaskMetrics = TaskMetrics.new
            @TaskMetrics.deserialize(params['TaskMetrics'])
          end
          unless params['TaskInstanceMetrics'].nil?
            @TaskInstanceMetrics = TaskInstanceMetrics.new
            @TaskInstanceMetrics.deserialize(params['TaskInstanceMetrics'])
          end
          @StateReason = params['StateReason']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NextAction = params['NextAction']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobSubmitInfo请求参数结构体
      class DescribeJobSubmitInfoRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeJobSubmitInfo返回参数结构体
      class DescribeJobSubmitInfoResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param JobName: 作业名称
        # @type JobName: String
        # @param JobDescription: 作业描述
        # @type JobDescription: String
        # @param Priority: 作业优先级，任务（Task）和任务实例（TaskInstance）会继承作业优先级
        # @type Priority: Integer
        # @param Tasks: 任务信息
        # @type Tasks: Array
        # @param Dependences: 依赖信息
        # @type Dependences: Array
        # @param Tags: 作业绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :JobName, :JobDescription, :Priority, :Tasks, :Dependences, :Tags, :RequestId

        def initialize(jobid=nil, jobname=nil, jobdescription=nil, priority=nil, tasks=nil, dependences=nil, tags=nil, requestid=nil)
          @JobId = jobid
          @JobName = jobname
          @JobDescription = jobdescription
          @Priority = priority
          @Tasks = tasks
          @Dependences = dependences
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @JobDescription = params['JobDescription']
          @Priority = params['Priority']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          unless params['Dependences'].nil?
            @Dependences = []
            params['Dependences'].each do |i|
              dependence_tmp = Dependence.new
              dependence_tmp.deserialize(i)
              @Dependences << dependence_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobs请求参数结构体
      class DescribeJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 作业ID列表，与Filters参数不能同时指定。
        # @type JobIds: Array
        # @param Filters: 过滤条件
        # <li> job-id - String - 是否必填：否 -（过滤条件）按照作业ID过滤。</li>
        # <li> job-name - String - 是否必填：否 -（过滤条件）按照作业名称过滤。</li>
        # <li> job-state - String - 是否必填：否 -（过滤条件）按照作业状态过滤。</li>
        # <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        # 与JobIds参数不能同时指定。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :JobIds, :Filters, :Offset, :Limit

        def initialize(jobids=nil, filters=nil, offset=nil, limit=nil)
          @JobIds = jobids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @JobIds = params['JobIds']
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

      # DescribeJobs返回参数结构体
      class DescribeJobsResponse < TencentCloud::Common::AbstractModel
        # @param JobSet: 作业列表
        # @type JobSet: Array
        # @param TotalCount: 符合条件的作业数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobSet, :TotalCount, :RequestId

        def initialize(jobset=nil, totalcount=nil, requestid=nil)
          @JobSet = jobset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              jobview_tmp = JobView.new
              jobview_tmp.deserialize(i)
              @JobSet << jobview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLogs请求参数结构体
      class DescribeTaskLogsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskInstanceIndexes: 任务实例集合
        # @type TaskInstanceIndexes: Array
        # @param Offset: 起始任务实例
        # @type Offset: Integer
        # @param Limit: 最大任务实例数
        # @type Limit: Integer

        attr_accessor :JobId, :TaskName, :TaskInstanceIndexes, :Offset, :Limit

        def initialize(jobid=nil, taskname=nil, taskinstanceindexes=nil, offset=nil, limit=nil)
          @JobId = jobid
          @TaskName = taskname
          @TaskInstanceIndexes = taskinstanceindexes
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskName = params['TaskName']
          @TaskInstanceIndexes = params['TaskInstanceIndexes']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTaskLogs返回参数结构体
      class DescribeTaskLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务实例总数
        # @type TotalCount: Integer
        # @param TaskInstanceLogSet: 任务实例日志详情集合
        # @type TaskInstanceLogSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskInstanceLogSet, :RequestId

        def initialize(totalcount=nil, taskinstancelogset=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskInstanceLogSet = taskinstancelogset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskInstanceLogSet'].nil?
            @TaskInstanceLogSet = []
            params['TaskInstanceLogSet'].each do |i|
              taskinstancelog_tmp = TaskInstanceLog.new
              taskinstancelog_tmp.deserialize(i)
              @TaskInstanceLogSet << taskinstancelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTask请求参数结构体
      class DescribeTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量。默认取值100，最大取值1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，详情如下：
        # <li> task-instance-type - String - 是否必填： 否 - 按照任务实例状态进行过滤（SUBMITTED：已提交；PENDING：等待中；RUNNABLE：可运行；STARTING：启动中；RUNNING：运行中；SUCCEED：成功；FAILED：失败；FAILED_INTERRUPTED：失败后保留实例）。</li>
        # @type Filters: Array

        attr_accessor :JobId, :TaskName, :Offset, :Limit, :Filters

        def initialize(jobid=nil, taskname=nil, offset=nil, limit=nil, filters=nil)
          @JobId = jobid
          @TaskName = taskname
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskName = params['TaskName']
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

      # DescribeTask返回参数结构体
      class DescribeTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskState: 任务状态
        # @type TaskState: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param TaskInstanceTotalCount: 任务实例总数
        # @type TaskInstanceTotalCount: Integer
        # @param TaskInstanceSet: 任务实例信息
        # @type TaskInstanceSet: Array
        # @param TaskInstanceMetrics: 任务实例统计指标
        # @type TaskInstanceMetrics: :class:`Tencentcloud::Batch.v20170312.models.TaskInstanceMetrics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :TaskName, :TaskState, :CreateTime, :EndTime, :TaskInstanceTotalCount, :TaskInstanceSet, :TaskInstanceMetrics, :RequestId

        def initialize(jobid=nil, taskname=nil, taskstate=nil, createtime=nil, endtime=nil, taskinstancetotalcount=nil, taskinstanceset=nil, taskinstancemetrics=nil, requestid=nil)
          @JobId = jobid
          @TaskName = taskname
          @TaskState = taskstate
          @CreateTime = createtime
          @EndTime = endtime
          @TaskInstanceTotalCount = taskinstancetotalcount
          @TaskInstanceSet = taskinstanceset
          @TaskInstanceMetrics = taskinstancemetrics
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskName = params['TaskName']
          @TaskState = params['TaskState']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          @TaskInstanceTotalCount = params['TaskInstanceTotalCount']
          unless params['TaskInstanceSet'].nil?
            @TaskInstanceSet = []
            params['TaskInstanceSet'].each do |i|
              taskinstanceview_tmp = TaskInstanceView.new
              taskinstanceview_tmp.deserialize(i)
              @TaskInstanceSet << taskinstanceview_tmp
            end
          end
          unless params['TaskInstanceMetrics'].nil?
            @TaskInstanceMetrics = TaskInstanceMetrics.new
            @TaskInstanceMetrics.deserialize(params['TaskInstanceMetrics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskTemplates请求参数结构体
      class DescribeTaskTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param TaskTemplateIds: 任务模板ID列表，与Filters参数不能同时指定。
        # @type TaskTemplateIds: Array
        # @param Filters: 过滤条件
        # <li> task-template-name - String - 是否必填：否 -（过滤条件）按照任务模板名称过滤。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        # 与TaskTemplateIds参数不能同时指定。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :TaskTemplateIds, :Filters, :Offset, :Limit

        def initialize(tasktemplateids=nil, filters=nil, offset=nil, limit=nil)
          @TaskTemplateIds = tasktemplateids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TaskTemplateIds = params['TaskTemplateIds']
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

      # DescribeTaskTemplates返回参数结构体
      class DescribeTaskTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TaskTemplateSet: 任务模板列表
        # @type TaskTemplateSet: Array
        # @param TotalCount: 任务模板数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskTemplateSet, :TotalCount, :RequestId

        def initialize(tasktemplateset=nil, totalcount=nil, requestid=nil)
          @TaskTemplateSet = tasktemplateset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskTemplateSet'].nil?
            @TaskTemplateSet = []
            params['TaskTemplateSet'].each do |i|
              tasktemplateview_tmp = TaskTemplateView.new
              tasktemplateview_tmp.deserialize(i)
              @TaskTemplateSet << tasktemplateview_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DetachInstances请求参数结构体
      class DetachInstancesRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array

        attr_accessor :EnvId, :InstanceIds

        def initialize(envid=nil, instanceids=nil)
          @EnvId = envid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DetachInstances返回参数结构体
      class DetachInstancesResponse < TencentCloud::Common::AbstractModel
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

      # Docker容器信息
      class Docker < TencentCloud::Common::AbstractModel
        # @param Image: Docker Hub填写“[user/repo]:[tag]”，Tencent Registry填写“ccr.ccs.tencentyun.com/[namespace/repo]:[tag]”
        # @type Image: String
        # @param User: Docker Hub 用户名或 Tencent Registry 用户名；公共镜像可不填写此参数。
        # @type User: String
        # @param Password: Docker Hub 密码或 Tencent Registry 密码；公共镜像可不填写此参数。
        # @type Password: String
        # @param Server: Docker Hub 可以不填，但确保具有公网访问能力。或者是 Tencent Registry 服务地址“ccr.ccs.tencentyun.com”
        # @type Server: String
        # @param MaxRetryCount: 拉取Docker镜像重试次数。默认值：0。
        # @type MaxRetryCount: Integer
        # @param DelayOnRetry: 拉取Docker镜像失败时延迟时间。单位：秒。
        # @type DelayOnRetry: Integer
        # @param DockerRunOption: Docker命令运行参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerRunOption: String

        attr_accessor :Image, :User, :Password, :Server, :MaxRetryCount, :DelayOnRetry, :DockerRunOption

        def initialize(image=nil, user=nil, password=nil, server=nil, maxretrycount=nil, delayonretry=nil, dockerrunoption=nil)
          @Image = image
          @User = user
          @Password = password
          @Server = server
          @MaxRetryCount = maxretrycount
          @DelayOnRetry = delayonretry
          @DockerRunOption = dockerrunoption
        end

        def deserialize(params)
          @Image = params['Image']
          @User = params['User']
          @Password = params['Password']
          @Server = params['Server']
          @MaxRetryCount = params['MaxRetryCount']
          @DelayOnRetry = params['DelayOnRetry']
          @DockerRunOption = params['DockerRunOption']
        end
      end

      # 描述了实例的增强服务启用情况与其设置，如云安全，云监控等实例 Agent
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 开启云安全服务。若不指定该参数，则默认开启云安全服务。
        # @type SecurityService: :class:`Tencentcloud::Batch.v20170312.models.RunSecurityServiceEnabled`
        # @param MonitorService: 开启云监控服务。若不指定该参数，则默认开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Batch.v20170312.models.RunMonitorServiceEnabled`
        # @param AutomationService: 开启云自动化助手服务（TencentCloud Automation Tools，TAT）。若不指定该参数，则公共镜像默认开启云自动化助手服务，其他镜像默认不开启云自动化助手服务。
        # @type AutomationService: :class:`Tencentcloud::Batch.v20170312.models.RunAutomationServiceEnabled`

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

      # 计算环境数据
      class EnvData < TencentCloud::Common::AbstractModel
        # @param InstanceType: CVM实例类型，不能与InstanceTypes和InstanceTypeOptions同时出现。
        # @type InstanceType: String
        # @param ImageId: CVM镜像ID
        # @type ImageId: String
        # @param SystemDisk: 实例系统盘配置信息
        # @type SystemDisk: :class:`Tencentcloud::Batch.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息
        # @type DataDisks: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置，与Zones和VirtualPrivateClouds不能同时指定。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Batch.v20170312.models.VirtualPrivateCloud`
        # @param InternetAccessible: 公网带宽相关信息设置
        # @type InternetAccessible: :class:`Tencentcloud::Batch.v20170312.models.InternetAccessible`
        # @param InstanceName: CVM实例显示名称
        # @type InstanceName: String
        # @param LoginSettings: 实例登录设置
        # @type LoginSettings: :class:`Tencentcloud::Batch.v20170312.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组
        # @type SecurityGroupIds: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Batch.v20170312.models.EnhancedService`
        # @param InstanceChargeType: CVM实例计费类型<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数
        # @type InstanceMarketOptions: :class:`Tencentcloud::Batch.v20170312.models.InstanceMarketOptionsRequest`
        # @param InstanceTypes: CVM实例类型列表，不能与InstanceType和InstanceTypeOptions同时出现。指定该字段后，计算节点按照机型先后顺序依次尝试创建，直到实例创建成功，结束遍历过程。最多支持10个机型。
        # @type InstanceTypes: Array
        # @param InstanceTypeOptions: CVM实例机型配置。不能与InstanceType和InstanceTypes同时出现。
        # @type InstanceTypeOptions: :class:`Tencentcloud::Batch.v20170312.models.InstanceTypeOptions`
        # @param Zones: 可用区列表，支持跨可用区创建CVM实例。与VirtualPrivateCloud和VirtualPrivateClouds不能同时指定。
        # @type Zones: Array
        # @param VirtualPrivateClouds: 私有网络列表，支持跨私有网络创建CVM实例。与VirtualPrivateCloud和Zones不能同时指定。
        # @type VirtualPrivateClouds: Array

        attr_accessor :InstanceType, :ImageId, :SystemDisk, :DataDisks, :VirtualPrivateCloud, :InternetAccessible, :InstanceName, :LoginSettings, :SecurityGroupIds, :EnhancedService, :InstanceChargeType, :InstanceMarketOptions, :InstanceTypes, :InstanceTypeOptions, :Zones, :VirtualPrivateClouds

        def initialize(instancetype=nil, imageid=nil, systemdisk=nil, datadisks=nil, virtualprivatecloud=nil, internetaccessible=nil, instancename=nil, loginsettings=nil, securitygroupids=nil, enhancedservice=nil, instancechargetype=nil, instancemarketoptions=nil, instancetypes=nil, instancetypeoptions=nil, zones=nil, virtualprivateclouds=nil)
          @InstanceType = instancetype
          @ImageId = imageid
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @VirtualPrivateCloud = virtualprivatecloud
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @EnhancedService = enhancedservice
          @InstanceChargeType = instancechargetype
          @InstanceMarketOptions = instancemarketoptions
          @InstanceTypes = instancetypes
          @InstanceTypeOptions = instancetypeoptions
          @Zones = zones
          @VirtualPrivateClouds = virtualprivateclouds
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @ImageId = params['ImageId']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceName = params['InstanceName']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @InstanceTypes = params['InstanceTypes']
          unless params['InstanceTypeOptions'].nil?
            @InstanceTypeOptions = InstanceTypeOptions.new
            @InstanceTypeOptions.deserialize(params['InstanceTypeOptions'])
          end
          @Zones = params['Zones']
          unless params['VirtualPrivateClouds'].nil?
            @VirtualPrivateClouds = []
            params['VirtualPrivateClouds'].each do |i|
              virtualprivatecloud_tmp = VirtualPrivateCloud.new
              virtualprivatecloud_tmp.deserialize(i)
              @VirtualPrivateClouds << virtualprivatecloud_tmp
            end
          end
        end
      end

      # 黑石计算环境数据
      class EnvDataCpm < TencentCloud::Common::AbstractModel
        # @param Zones: 黑石可用区名称列表。如ap-guangzhou-bls-1, 可通过黑石接口[DescribeRegions]( https://cloud.tencent.com/document/api/386/33564)接口获取。不是Batch可用区名称。目前仅支持一个可用区名称。
        # @type Zones: Array
        # @param InstanceTypes: 购买的机型ID。通过黑石接口[DescribeDeviceClass]( https://cloud.tencent.com/document/api/386/32911)查询设备型号，获取机型信息。
        # @type InstanceTypes: Array
        # @param TimeUnit: 购买时长单位，取值：m(月)。
        # @type TimeUnit: String
        # @param TimeSpan: 购买时长。
        # @type TimeSpan: Integer
        # @param RaidId: RAID类型ID。通过黑石接口[DescribeDeviceClassPartition]( https://cloud.tencent.com/document/api/386/32910)查询机型RAID方式以及系统盘大小，获取RAID信息。
        # @type RaidId: Integer
        # @param OsTypeId: 部署服务器的操作系统ID。通过批量计算接口DescribeCpmOsInfo查询操作系统信息。
        # @type OsTypeId: Integer
        # @param VirtualPrivateClouds: 黑石VPC列表，目前仅支持一个VPC。
        # @type VirtualPrivateClouds: Array
        # @param NeedSecurityAgent: 是否安装安全Agent，取值：1(安装) 0(不安装)，默认取值0。
        # @type NeedSecurityAgent: Integer
        # @param NeedMonitorAgent: 是否安装监控Agent，取值：1(安装) 0(不安装)，默认取值0。
        # @type NeedMonitorAgent: Integer
        # @param AutoRenewFlag: 自动续费标志位，取值：1(自动续费) 0(不自动续费)，默认取值0。
        # @type AutoRenewFlag: Integer
        # @param IsZoning: 数据盘是否格式化，取值：1(格式化) 0(不格式化)，默认取值为1。
        # @type IsZoning: Integer
        # @param FileSystem: 指定数据盘的文件系统格式，当前支持 ext4和xfs选项， 默认为ext4。 参数适用于数据盘和Linux， 且在IsZoning为1时生效。
        # @type FileSystem: String
        # @param Password: 设置Linux root或Windows Administrator的密码。若不设置此参数，默认情况下会随机生成密码，并以站内信方式通知到用户。
        # @type Password: String
        # @param ApplyEip: 是否分配弹性公网IP，取值：1(分配) 0(不分配)，默认取值0。
        # @type ApplyEip: Integer
        # @param EipPayMode: 弹性公网IP计费模式，取值：flow(按流量计费) bandwidth(按带宽计费)，默认取值flow。
        # @type EipPayMode: String
        # @param EipBandwidth: 弹性公网IP带宽限制，单位Mb。
        # @type EipBandwidth: Integer
        # @param ImageId: 自定义镜像ID，取值生效时用自定义镜像部署物理机。
        # @type ImageId: String
        # @param SysRootSpace: 系统盘根分区大小，单位为G，默认取值10G。通过黑石接口[DescribeDeviceClassPartition]( https://cloud.tencent.com/document/api/386/32910)查询机型RAID方式以及系统盘大小，获取根分区信息。
        # @type SysRootSpace: Integer
        # @param SysDataSpace: /data分区大小，单位为G。如果系统盘还有剩余大小，会分配给/data分区。（特殊情况：如果剩余空间不足10G，并且没有指定/data分区，则剩余空间会分配给Root分区）。
        # @type SysDataSpace: Integer
        # @param HyperThreading: 是否开启超线程，取值：1(开启) 0(关闭)，默认取值1。
        # @type HyperThreading: Integer
        # @param LanIps: 指定的内网IP列表，不指定时自动分配。
        # @type LanIps: Array

        attr_accessor :Zones, :InstanceTypes, :TimeUnit, :TimeSpan, :RaidId, :OsTypeId, :VirtualPrivateClouds, :NeedSecurityAgent, :NeedMonitorAgent, :AutoRenewFlag, :IsZoning, :FileSystem, :Password, :ApplyEip, :EipPayMode, :EipBandwidth, :ImageId, :SysRootSpace, :SysDataSpace, :HyperThreading, :LanIps

        def initialize(zones=nil, instancetypes=nil, timeunit=nil, timespan=nil, raidid=nil, ostypeid=nil, virtualprivateclouds=nil, needsecurityagent=nil, needmonitoragent=nil, autorenewflag=nil, iszoning=nil, filesystem=nil, password=nil, applyeip=nil, eippaymode=nil, eipbandwidth=nil, imageid=nil, sysrootspace=nil, sysdataspace=nil, hyperthreading=nil, lanips=nil)
          @Zones = zones
          @InstanceTypes = instancetypes
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @RaidId = raidid
          @OsTypeId = ostypeid
          @VirtualPrivateClouds = virtualprivateclouds
          @NeedSecurityAgent = needsecurityagent
          @NeedMonitorAgent = needmonitoragent
          @AutoRenewFlag = autorenewflag
          @IsZoning = iszoning
          @FileSystem = filesystem
          @Password = password
          @ApplyEip = applyeip
          @EipPayMode = eippaymode
          @EipBandwidth = eipbandwidth
          @ImageId = imageid
          @SysRootSpace = sysrootspace
          @SysDataSpace = sysdataspace
          @HyperThreading = hyperthreading
          @LanIps = lanips
        end

        def deserialize(params)
          @Zones = params['Zones']
          @InstanceTypes = params['InstanceTypes']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @RaidId = params['RaidId']
          @OsTypeId = params['OsTypeId']
          unless params['VirtualPrivateClouds'].nil?
            @VirtualPrivateClouds = []
            params['VirtualPrivateClouds'].each do |i|
              cpmvirtualprivatecloud_tmp = CpmVirtualPrivateCloud.new
              cpmvirtualprivatecloud_tmp.deserialize(i)
              @VirtualPrivateClouds << cpmvirtualprivatecloud_tmp
            end
          end
          @NeedSecurityAgent = params['NeedSecurityAgent']
          @NeedMonitorAgent = params['NeedMonitorAgent']
          @AutoRenewFlag = params['AutoRenewFlag']
          @IsZoning = params['IsZoning']
          @FileSystem = params['FileSystem']
          @Password = params['Password']
          @ApplyEip = params['ApplyEip']
          @EipPayMode = params['EipPayMode']
          @EipBandwidth = params['EipBandwidth']
          @ImageId = params['ImageId']
          @SysRootSpace = params['SysRootSpace']
          @SysDataSpace = params['SysDataSpace']
          @HyperThreading = params['HyperThreading']
          @LanIps = params['LanIps']
        end
      end

      # 环境变量
      class EnvVar < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量名称
        # @type Name: String
        # @param Value: 环境变量取值
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

      # 事件配置
      class EventConfig < TencentCloud::Common::AbstractModel
        # @param EventName: 事件类型，包括：<br/><li>“JOB_RUNNING”：作业运行，适用于"SubmitJob"。</li><li>“JOB_SUCCEED”：作业成功，适用于"SubmitJob"。</li><li>“JOB_FAILED”：作业失败，适用于"SubmitJob"。</li><li>“JOB_FAILED_INTERRUPTED”：作业失败，保留实例，适用于"SubmitJob"。</li><li>“TASK_RUNNING”：任务运行，适用于"SubmitJob"。</li><li>“TASK_SUCCEED”：任务成功，适用于"SubmitJob"。</li><li>“TASK_FAILED”：任务失败，适用于"SubmitJob"。</li><li>“TASK_FAILED_INTERRUPTED”：任务失败，保留实例，适用于"SubmitJob"。</li><li>“TASK_INSTANCE_RUNNING”：任务实例运行，适用于"SubmitJob"。</li><li>“TASK_INSTANCE_SUCCEED”：任务实例成功，适用于"SubmitJob"。</li><li>“TASK_INSTANCE_FAILED”：任务实例失败，适用于"SubmitJob"。</li><li>“TASK_INSTANCE_FAILED_INTERRUPTED”：任务实例失败，保留实例，适用于"SubmitJob"。</li><li>“COMPUTE_ENV_CREATED”：计算环境已创建，适用于"CreateComputeEnv"。</li><li>“COMPUTE_ENV_DELETED”：计算环境已删除，适用于"CreateComputeEnv"。</li><li>“COMPUTE_NODE_CREATED”：计算节点已创建，适用于"CreateComputeEnv"和"SubmitJob"。</li><li>“COMPUTE_NODE_CREATION_FAILED”：计算节点创建失败，适用于"CreateComputeEnv"和"SubmitJob"。</li><li>“COMPUTE_NODE_RUNNING”：计算节点运行中，适用于"CreateComputeEnv"和"SubmitJob"。</li><li>“COMPUTE_NODE_ABNORMAL”：计算节点异常，适用于"CreateComputeEnv"和"SubmitJob"。</li><li>“COMPUTE_NODE_DELETING”：计算节点已删除，适用于"CreateComputeEnv"和"SubmitJob"。</li>
        # @type EventName: String
        # @param EventVars: 自定义键值对
        # @type EventVars: Array

        attr_accessor :EventName, :EventVars

        def initialize(eventname=nil, eventvars=nil)
          @EventName = eventname
          @EventVars = eventvars
        end

        def deserialize(params)
          @EventName = params['EventName']
          unless params['EventVars'].nil?
            @EventVars = []
            params['EventVars'].each do |i|
              eventvar_tmp = EventVar.new
              eventvar_tmp.deserialize(i)
              @EventVars << eventvar_tmp
            end
          end
        end
      end

      # 自定义键值对
      class EventVar < TencentCloud::Common::AbstractModel
        # @param Name: 自定义键
        # @type Name: String
        # @param Value: 自定义值
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

      # 扩展数据
      class Externals < TencentCloud::Common::AbstractModel
        # @param ReleaseAddress: 释放地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseAddress: Boolean
        # @param UnsupportNetworks: 不支持的网络类型，取值范围：<br><li>BASIC：基础网络<br><li>VPC1.0：私有网络VPC1.0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnsupportNetworks: Array
        # @param StorageBlockAttr: HDD本地存储属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageBlockAttr: :class:`Tencentcloud::Batch.v20170312.models.StorageBlock`

        attr_accessor :ReleaseAddress, :UnsupportNetworks, :StorageBlockAttr

        def initialize(releaseaddress=nil, unsupportnetworks=nil, storageblockattr=nil)
          @ReleaseAddress = releaseaddress
          @UnsupportNetworks = unsupportnetworks
          @StorageBlockAttr = storageblockattr
        end

        def deserialize(params)
          @ReleaseAddress = params['ReleaseAddress']
          @UnsupportNetworks = params['UnsupportNetworks']
          unless params['StorageBlockAttr'].nil?
            @StorageBlockAttr = StorageBlock.new
            @StorageBlockAttr.deserialize(params['StorageBlockAttr'])
          end
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

      # 输入映射
      class InputMapping < TencentCloud::Common::AbstractModel
        # @param SourcePath: 源端路径
        # @type SourcePath: String
        # @param DestinationPath: 目的端路径
        # @type DestinationPath: String
        # @param MountOptionParameter: 挂载配置项参数
        # @type MountOptionParameter: String

        attr_accessor :SourcePath, :DestinationPath, :MountOptionParameter

        def initialize(sourcepath=nil, destinationpath=nil, mountoptionparameter=nil)
          @SourcePath = sourcepath
          @DestinationPath = destinationpath
          @MountOptionParameter = mountoptionparameter
        end

        def deserialize(params)
          @SourcePath = params['SourcePath']
          @DestinationPath = params['DestinationPath']
          @MountOptionParameter = params['MountOptionParameter']
        end
      end

      # 描述实例的信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param LoginSettings: 实例登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Batch.v20170312.models.LoginSettings`

        attr_accessor :InstanceId, :ImageId, :LoginSettings

        def initialize(instanceid=nil, imageid=nil, loginsettings=nil)
          @InstanceId = instanceid
          @ImageId = imageid
          @LoginSettings = loginsettings
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ImageId = params['ImageId']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
        end
      end

      # 实例分类列表
      class InstanceCategoryItem < TencentCloud::Common::AbstractModel
        # @param InstanceCategory: 实例类型名
        # @type InstanceCategory: String
        # @param InstanceFamilySet: 实例族列表
        # @type InstanceFamilySet: Array

        attr_accessor :InstanceCategory, :InstanceFamilySet

        def initialize(instancecategory=nil, instancefamilyset=nil)
          @InstanceCategory = instancecategory
          @InstanceFamilySet = instancefamilyset
        end

        def deserialize(params)
          @InstanceCategory = params['InstanceCategory']
          @InstanceFamilySet = params['InstanceFamilySet']
        end
      end

      # 竞价请求相关选项
      class InstanceMarketOptionsRequest < TencentCloud::Common::AbstractModel
        # @param SpotOptions: 竞价相关选项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpotOptions: :class:`Tencentcloud::Batch.v20170312.models.SpotMarketOptions`
        # @param MarketType: 市场选项类型，当前只支持取值：spot
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarketType: String

        attr_accessor :SpotOptions, :MarketType

        def initialize(spotoptions=nil, markettype=nil)
          @SpotOptions = spotoptions
          @MarketType = markettype
        end

        def deserialize(params)
          unless params['SpotOptions'].nil?
            @SpotOptions = SpotMarketOptions.new
            @SpotOptions.deserialize(params['SpotOptions'])
          end
          @MarketType = params['MarketType']
        end
      end

      # 批量计算可用的InstanceTypeConfig信息
      class InstanceTypeConfig < TencentCloud::Common::AbstractModel
        # @param Mem: 内存容量，单位：`GB`。
        # @type Mem: Integer
        # @param Cpu: CPU核数，单位：核。
        # @type Cpu: Integer
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param Zone: 可用区。
        # @type Zone: String
        # @param InstanceFamily: 实例机型系列。
        # @type InstanceFamily: String

        attr_accessor :Mem, :Cpu, :InstanceType, :Zone, :InstanceFamily

        def initialize(mem=nil, cpu=nil, instancetype=nil, zone=nil, instancefamily=nil)
          @Mem = mem
          @Cpu = cpu
          @InstanceType = instancetype
          @Zone = zone
          @InstanceFamily = instancefamily
        end

        def deserialize(params)
          @Mem = params['Mem']
          @Cpu = params['Cpu']
          @InstanceType = params['InstanceType']
          @Zone = params['Zone']
          @InstanceFamily = params['InstanceFamily']
        end
      end

      # 实例机型配置。
      class InstanceTypeOptions < TencentCloud::Common::AbstractModel
        # @param CPU: CPU核数。
        # @type CPU: Integer
        # @param Memory: 内存值，单位GB。
        # @type Memory: Integer
        # @param InstanceCategories: 实例机型类别，可选参数：“ALL”、“GENERAL”、“GENERAL_2”、“GENERAL_3”、“COMPUTE”、“COMPUTE_2”和“COMPUTE_3”。默认值“ALL”。
        # @type InstanceCategories: Array

        attr_accessor :CPU, :Memory, :InstanceCategories

        def initialize(cpu=nil, memory=nil, instancecategories=nil)
          @CPU = cpu
          @Memory = memory
          @InstanceCategories = instancecategories
        end

        def deserialize(params)
          @CPU = params['CPU']
          @Memory = params['Memory']
          @InstanceCategories = params['InstanceCategories']
        end
      end

      # 描述实例机型配额信息。
      class InstanceTypeQuotaItem < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区。
        # @type Zone: String
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param InstanceChargeType: 实例计费模式。取值范围： <br><li>PREPAID：表示预付费，即包年包月<br></li>POSTPAID_BY_HOUR：表示后付费，即按量计费<br><li>CDHPAID：表示[专用宿主机](https://cloud.tencent.com/document/product/416)付费，即只对`专用宿主机`计费，不对`专用宿主机`上的实例计费。<br></li>`SPOTPAID`：表示竞价实例付费。
        # @type InstanceChargeType: String
        # @param NetworkCard: 网卡类型，例如：25代表25G网卡
        # @type NetworkCard: Integer
        # @param Externals: 扩展属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Externals: :class:`Tencentcloud::Batch.v20170312.models.Externals`
        # @param Cpu: 实例的CPU核数，单位：核。
        # @type Cpu: Integer
        # @param Memory: 实例内存容量，单位：`GB`。
        # @type Memory: Integer
        # @param InstanceFamily: 实例机型系列。
        # @type InstanceFamily: String
        # @param TypeName: 机型名称。
        # @type TypeName: String
        # @param LocalDiskTypeList: 本地磁盘规格列表。当该参数返回为空值时，表示当前情况下无法创建本地盘。
        # @type LocalDiskTypeList: Array
        # @param Status: 实例是否售卖。取值范围： <br><li>SELL：表示实例可购买<br></li>SOLD_OUT：表示实例已售罄。
        # @type Status: String
        # @param Price: 实例的售卖价格。
        # @type Price: :class:`Tencentcloud::Batch.v20170312.models.ItemPrice`
        # @param SoldOutReason: 售罄原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoldOutReason: String
        # @param InstanceBandwidth: 内网带宽，单位Gbps。
        # @type InstanceBandwidth: Float
        # @param InstancePps: 网络收发包能力，单位万PPS。
        # @type InstancePps: Integer
        # @param StorageBlockAmount: 本地存储块数量。
        # @type StorageBlockAmount: Integer
        # @param CpuType: 处理器型号。
        # @type CpuType: String
        # @param Gpu: 实例的GPU数量。
        # @type Gpu: Integer
        # @param Fpga: 实例的FPGA数量。
        # @type Fpga: Integer
        # @param Remark: 实例备注信息。
        # @type Remark: String
        # @param GpuCount: 实例机型映射的物理GPU卡数，单位：卡。vGPU卡型小于1，直通卡型大于等于1。vGPU是通过分片虚拟化技术，将物理GPU卡重新划分，同一块GPU卡经虚拟化分割后可分配至不同的实例使用。直通卡型会将GPU设备直接挂载给实例使用。
        # @type GpuCount: Float
        # @param Frequency: 实例的CPU主频信息
        # @type Frequency: String
        # @param StatusCategory: 描述库存情况。取值范围：
        # <li> EnoughStock：表示对应库存非常充足</li>
        # <li>NormalStock：表示对应库存供应有保障</li>
        # <li> UnderStock：表示对应库存即将售罄</li>
        # <li>WithoutStock：表示对应库存已经售罄</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCategory: String

        attr_accessor :Zone, :InstanceType, :InstanceChargeType, :NetworkCard, :Externals, :Cpu, :Memory, :InstanceFamily, :TypeName, :LocalDiskTypeList, :Status, :Price, :SoldOutReason, :InstanceBandwidth, :InstancePps, :StorageBlockAmount, :CpuType, :Gpu, :Fpga, :Remark, :GpuCount, :Frequency, :StatusCategory

        def initialize(zone=nil, instancetype=nil, instancechargetype=nil, networkcard=nil, externals=nil, cpu=nil, memory=nil, instancefamily=nil, typename=nil, localdisktypelist=nil, status=nil, price=nil, soldoutreason=nil, instancebandwidth=nil, instancepps=nil, storageblockamount=nil, cputype=nil, gpu=nil, fpga=nil, remark=nil, gpucount=nil, frequency=nil, statuscategory=nil)
          @Zone = zone
          @InstanceType = instancetype
          @InstanceChargeType = instancechargetype
          @NetworkCard = networkcard
          @Externals = externals
          @Cpu = cpu
          @Memory = memory
          @InstanceFamily = instancefamily
          @TypeName = typename
          @LocalDiskTypeList = localdisktypelist
          @Status = status
          @Price = price
          @SoldOutReason = soldoutreason
          @InstanceBandwidth = instancebandwidth
          @InstancePps = instancepps
          @StorageBlockAmount = storageblockamount
          @CpuType = cputype
          @Gpu = gpu
          @Fpga = fpga
          @Remark = remark
          @GpuCount = gpucount
          @Frequency = frequency
          @StatusCategory = statuscategory
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceChargeType = params['InstanceChargeType']
          @NetworkCard = params['NetworkCard']
          unless params['Externals'].nil?
            @Externals = Externals.new
            @Externals.deserialize(params['Externals'])
          end
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @InstanceFamily = params['InstanceFamily']
          @TypeName = params['TypeName']
          unless params['LocalDiskTypeList'].nil?
            @LocalDiskTypeList = []
            params['LocalDiskTypeList'].each do |i|
              localdisktype_tmp = LocalDiskType.new
              localdisktype_tmp.deserialize(i)
              @LocalDiskTypeList << localdisktype_tmp
            end
          end
          @Status = params['Status']
          unless params['Price'].nil?
            @Price = ItemPrice.new
            @Price.deserialize(params['Price'])
          end
          @SoldOutReason = params['SoldOutReason']
          @InstanceBandwidth = params['InstanceBandwidth']
          @InstancePps = params['InstancePps']
          @StorageBlockAmount = params['StorageBlockAmount']
          @CpuType = params['CpuType']
          @Gpu = params['Gpu']
          @Fpga = params['Fpga']
          @Remark = params['Remark']
          @GpuCount = params['GpuCount']
          @Frequency = params['Frequency']
          @StatusCategory = params['StatusCategory']
        end
      end

      # 描述了实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：<br><li>BANDWIDTH_PREPAID：预付费按带宽结算</li><li>TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费</li><li>BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费</li><li>BANDWIDTH_PACKAGE：带宽包用户</li>默认取值：非带宽包用户默认与子机付费类型保持一致，比如子机付费类型为预付费，网络计费类型默认为预付费；子机付费类型为后付费，网络计费类型默认为后付费。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见[购买网络带宽](https://cloud.tencent.com/document/product/213/12523)。
        # @type InternetMaxBandwidthOut: Integer
        # @param PublicIpAssigned: 是否分配公网IP。取值范围：<br><li>true：表示分配公网IP</li><li>false：表示不分配公网IP</li><br>当公网带宽大于0Mbps时，可自由选择开通与否，默认开通公网IP；当公网带宽为0，则不允许分配公网IP。该参数仅在RunInstances接口中作为入参使用。
        # @type PublicIpAssigned: Boolean
        # @param BandwidthPackageId: 带宽包ID。可通过[`DescribeBandwidthPackages`](https://cloud.tencent.com/document/api/215/19209)接口返回值中的`BandwidthPackageId`获取。该参数仅在RunInstances接口中作为入参使用。
        # @type BandwidthPackageId: String

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :PublicIpAssigned, :BandwidthPackageId

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, publicipassigned=nil, bandwidthpackageid=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @PublicIpAssigned = publicipassigned
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @PublicIpAssigned = params['PublicIpAssigned']
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # 描述了单项的价格信息
      class ItemPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 后续合计费用的原价，后付费模式使用，单位：元。<br><li>如返回了其他时间区间项，如UnitPriceSecondStep，则本项代表时间区间在(0, 96)小时；若未返回其他时间区间项，则本项代表全时段，即(0, ∞)小时</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param ChargeUnit: 后续计价单元，后付费模式使用，可取值范围： <br><li>HOUR：表示计价单元是按每小时来计算。当前涉及该计价单元的场景有：实例按小时后付费（POSTPAID_BY_HOUR）、带宽按小时后付费（BANDWIDTH_POSTPAID_BY_HOUR）：</li><li>GB：表示计价单元是按每GB来计算。当前涉及该计价单元的场景有：流量按小时后付费（TRAFFIC_POSTPAID_BY_HOUR）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeUnit: String
        # @param OriginalPrice: 预支合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 预支合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param Discount: 折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param UnitPriceDiscount: 后续合计费用的折扣价，后付费模式使用，单位：元<br><li>如返回了其他时间区间项，如UnitPriceDiscountSecondStep，则本项代表时间区间在(0, 96)小时；若未返回其他时间区间项，则本项代表全时段，即(0, ∞)小时</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param UnitPriceSecondStep: 使用时间区间在(96, 360)小时的后续合计费用的原价，后付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceSecondStep: Float
        # @param UnitPriceDiscountSecondStep: 使用时间区间在(96, 360)小时的后续合计费用的折扣价，后付费模式使用，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscountSecondStep: Float
        # @param UnitPriceThirdStep: 使用时间区间在(360, ∞)小时的后续合计费用的原价，后付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceThirdStep: Float
        # @param UnitPriceDiscountThirdStep: 使用时间区间在(360, ∞)小时的后续合计费用的折扣价，后付费模式使用，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscountThirdStep: Float
        # @param OriginalPriceThreeYear: 预支三年合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceThreeYear: Float
        # @param DiscountPriceThreeYear: 预支三年合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceThreeYear: Float
        # @param DiscountThreeYear: 预支三年应用的折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountThreeYear: Float
        # @param OriginalPriceFiveYear: 预支五年合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceFiveYear: Float
        # @param DiscountPriceFiveYear: 预支五年合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceFiveYear: Float
        # @param DiscountFiveYear: 预支五年应用的折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountFiveYear: Float
        # @param OriginalPriceOneYear: 预支一年合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceOneYear: Float
        # @param DiscountPriceOneYear: 预支一年合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceOneYear: Float
        # @param DiscountOneYear: 预支一年应用的折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountOneYear: Float

        attr_accessor :UnitPrice, :ChargeUnit, :OriginalPrice, :DiscountPrice, :Discount, :UnitPriceDiscount, :UnitPriceSecondStep, :UnitPriceDiscountSecondStep, :UnitPriceThirdStep, :UnitPriceDiscountThirdStep, :OriginalPriceThreeYear, :DiscountPriceThreeYear, :DiscountThreeYear, :OriginalPriceFiveYear, :DiscountPriceFiveYear, :DiscountFiveYear, :OriginalPriceOneYear, :DiscountPriceOneYear, :DiscountOneYear

        def initialize(unitprice=nil, chargeunit=nil, originalprice=nil, discountprice=nil, discount=nil, unitpricediscount=nil, unitpricesecondstep=nil, unitpricediscountsecondstep=nil, unitpricethirdstep=nil, unitpricediscountthirdstep=nil, originalpricethreeyear=nil, discountpricethreeyear=nil, discountthreeyear=nil, originalpricefiveyear=nil, discountpricefiveyear=nil, discountfiveyear=nil, originalpriceoneyear=nil, discountpriceoneyear=nil, discountoneyear=nil)
          @UnitPrice = unitprice
          @ChargeUnit = chargeunit
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Discount = discount
          @UnitPriceDiscount = unitpricediscount
          @UnitPriceSecondStep = unitpricesecondstep
          @UnitPriceDiscountSecondStep = unitpricediscountsecondstep
          @UnitPriceThirdStep = unitpricethirdstep
          @UnitPriceDiscountThirdStep = unitpricediscountthirdstep
          @OriginalPriceThreeYear = originalpricethreeyear
          @DiscountPriceThreeYear = discountpricethreeyear
          @DiscountThreeYear = discountthreeyear
          @OriginalPriceFiveYear = originalpricefiveyear
          @DiscountPriceFiveYear = discountpricefiveyear
          @DiscountFiveYear = discountfiveyear
          @OriginalPriceOneYear = originalpriceoneyear
          @DiscountPriceOneYear = discountpriceoneyear
          @DiscountOneYear = discountoneyear
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @ChargeUnit = params['ChargeUnit']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Discount = params['Discount']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @UnitPriceSecondStep = params['UnitPriceSecondStep']
          @UnitPriceDiscountSecondStep = params['UnitPriceDiscountSecondStep']
          @UnitPriceThirdStep = params['UnitPriceThirdStep']
          @UnitPriceDiscountThirdStep = params['UnitPriceDiscountThirdStep']
          @OriginalPriceThreeYear = params['OriginalPriceThreeYear']
          @DiscountPriceThreeYear = params['DiscountPriceThreeYear']
          @DiscountThreeYear = params['DiscountThreeYear']
          @OriginalPriceFiveYear = params['OriginalPriceFiveYear']
          @DiscountPriceFiveYear = params['DiscountPriceFiveYear']
          @DiscountFiveYear = params['DiscountFiveYear']
          @OriginalPriceOneYear = params['OriginalPriceOneYear']
          @DiscountPriceOneYear = params['DiscountPriceOneYear']
          @DiscountOneYear = params['DiscountOneYear']
        end
      end

      # 作业
      class Job < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务信息
        # @type Tasks: Array
        # @param JobName: 作业名称
        # @type JobName: String
        # @param JobDescription: 作业描述
        # @type JobDescription: String
        # @param Priority: 作业优先级，任务（Task）和任务实例（TaskInstance）会继承作业优先级
        # @type Priority: Integer
        # @param Dependences: 依赖信息
        # @type Dependences: Array
        # @param Notifications: 通知信息
        # @type Notifications: Array
        # @param TaskExecutionDependOn: 对于存在依赖关系的任务中，后序任务执行对于前序任务的依赖条件。取值范围包括 PRE_TASK_SUCCEED，PRE_TASK_AT_LEAST_PARTLY_SUCCEED，PRE_TASK_FINISHED，默认值为PRE_TASK_SUCCEED。
        # @type TaskExecutionDependOn: String
        # @param StateIfCreateCvmFailed: 表示创建 CVM 失败按照何种策略处理。取值范围包括 FAILED，RUNNABLE。FAILED 表示创建 CVM 失败按照一次执行失败处理，RUNNABLE 表示创建 CVM 失败按照继续等待处理。默认值为FAILED。StateIfCreateCvmFailed对于提交的指定计算环境的作业无效。
        # @type StateIfCreateCvmFailed: String
        # @param Tags: 标签列表。通过指定该参数可以支持绑定标签到作业。每个作业最多绑定10个标签。
        # @type Tags: Array
        # @param NotificationTarget: 表示通知信息的通知目标类型。
        # 取值范围：CMQ，TDMQ_CMQ。
        # CMQ:表示向腾讯云CMQ发送消息。
        # TDMQ_CMQ：表示向腾讯云TDMQ_CMQ发送消息。<br/>默认值为CMQ。<br/>注：腾讯云计划于2022年6月前正式下线消息队列 CMQ，建议使用TDMQ_CMQ。参考文档：[CMQ迁移到TDMQ_CMQ](https://cloud.tencent.com/document/product/406/60860)
        # @type NotificationTarget: String

        attr_accessor :Tasks, :JobName, :JobDescription, :Priority, :Dependences, :Notifications, :TaskExecutionDependOn, :StateIfCreateCvmFailed, :Tags, :NotificationTarget

        def initialize(tasks=nil, jobname=nil, jobdescription=nil, priority=nil, dependences=nil, notifications=nil, taskexecutiondependon=nil, stateifcreatecvmfailed=nil, tags=nil, notificationtarget=nil)
          @Tasks = tasks
          @JobName = jobname
          @JobDescription = jobdescription
          @Priority = priority
          @Dependences = dependences
          @Notifications = notifications
          @TaskExecutionDependOn = taskexecutiondependon
          @StateIfCreateCvmFailed = stateifcreatecvmfailed
          @Tags = tags
          @NotificationTarget = notificationtarget
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @JobName = params['JobName']
          @JobDescription = params['JobDescription']
          @Priority = params['Priority']
          unless params['Dependences'].nil?
            @Dependences = []
            params['Dependences'].each do |i|
              dependence_tmp = Dependence.new
              dependence_tmp.deserialize(i)
              @Dependences << dependence_tmp
            end
          end
          unless params['Notifications'].nil?
            @Notifications = []
            params['Notifications'].each do |i|
              notification_tmp = Notification.new
              notification_tmp.deserialize(i)
              @Notifications << notification_tmp
            end
          end
          @TaskExecutionDependOn = params['TaskExecutionDependOn']
          @StateIfCreateCvmFailed = params['StateIfCreateCvmFailed']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NotificationTarget = params['NotificationTarget']
        end
      end

      # 作业信息
      class JobView < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param JobName: 作业名称
        # @type JobName: String
        # @param JobState: 作业状态
        # @type JobState: String
        # @param Priority: 作业优先级
        # @type Priority: Integer
        # @param Placement: 位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Placement: :class:`Tencentcloud::Batch.v20170312.models.Placement`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param TaskMetrics: 任务统计指标
        # @type TaskMetrics: :class:`Tencentcloud::Batch.v20170312.models.TaskMetrics`
        # @param Tags: 作业绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :JobId, :JobName, :JobState, :Priority, :Placement, :CreateTime, :EndTime, :TaskMetrics, :Tags

        def initialize(jobid=nil, jobname=nil, jobstate=nil, priority=nil, placement=nil, createtime=nil, endtime=nil, taskmetrics=nil, tags=nil)
          @JobId = jobid
          @JobName = jobname
          @JobState = jobstate
          @Priority = priority
          @Placement = placement
          @CreateTime = createtime
          @EndTime = endtime
          @TaskMetrics = taskmetrics
          @Tags = tags
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @JobState = params['JobState']
          @Priority = params['Priority']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          unless params['TaskMetrics'].nil?
            @TaskMetrics = TaskMetrics.new
            @TaskMetrics.deserialize(params['TaskMetrics'])
          end
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

      # 本地磁盘规格
      class LocalDiskType < TencentCloud::Common::AbstractModel
        # @param Type: 本地磁盘类型。
        # @type Type: String
        # @param PartitionType: 本地磁盘属性。
        # @type PartitionType: String
        # @param MinSize: 本地磁盘最小值。
        # @type MinSize: Integer
        # @param MaxSize: 本地磁盘最大值。
        # @type MaxSize: Integer
        # @param Required: 购买时本地盘是否为必选。取值范围：<br><li>REQUIRED：表示必选<br><li>OPTIONAL：表示可选。
        # @type Required: String

        attr_accessor :Type, :PartitionType, :MinSize, :MaxSize, :Required

        def initialize(type=nil, partitiontype=nil, minsize=nil, maxsize=nil, required=nil)
          @Type = type
          @PartitionType = partitiontype
          @MinSize = minsize
          @MaxSize = maxsize
          @Required = required
        end

        def deserialize(params)
          @Type = params['Type']
          @PartitionType = params['PartitionType']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @Required = params['Required']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：<br><li>Linux实例密码必须8到16位，至少包括两项[a-z，A-Z]、[0-9] 和 [( ) ` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? \/ ]中的特殊符号。<br><li>Windows实例密码必须12到16位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) ` ~ ! @ # $ % ^ & * - + = { } [ ] : ; ' , . ? \/]中的特殊符号。<br><br>若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # @type Password: String
        # @param KeyIds: 密钥ID列表。关联密钥后，就可以通过对应的私钥来访问实例；KeyId可通过接口DescribeKeyPairs获取，密钥与密码不能同时指定，同时Windows操作系统不支持指定密钥。当前仅支持购买的时候指定一个密钥。
        # @type KeyIds: Array
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为TRUE。取值范围：<br><li>TRUE：表示保持镜像的登录设置<br><li>FALSE：表示不保持镜像的登录设置<br><br>默认取值：FALSE。
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

      # ModifyComputeEnv请求参数结构体
      class ModifyComputeEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param EnvName: 计算环境名称
        # @type EnvName: String
        # @param EnvDescription: 计算环境描述
        # @type EnvDescription: String
        # @param EnvData: 计算环境属性数据
        # @type EnvData: :class:`Tencentcloud::Batch.v20170312.models.ComputeEnvData`

        attr_accessor :EnvId, :DesiredComputeNodeCount, :EnvName, :EnvDescription, :EnvData

        def initialize(envid=nil, desiredcomputenodecount=nil, envname=nil, envdescription=nil, envdata=nil)
          @EnvId = envid
          @DesiredComputeNodeCount = desiredcomputenodecount
          @EnvName = envname
          @EnvDescription = envdescription
          @EnvData = envdata
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
          @EnvName = params['EnvName']
          @EnvDescription = params['EnvDescription']
          unless params['EnvData'].nil?
            @EnvData = ComputeEnvData.new
            @EnvData.deserialize(params['EnvData'])
          end
        end
      end

      # ModifyComputeEnv返回参数结构体
      class ModifyComputeEnvResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTaskTemplate请求参数结构体
      class ModifyTaskTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TaskTemplateId: 任务模板ID
        # @type TaskTemplateId: String
        # @param TaskTemplateName: 任务模板名称
        # @type TaskTemplateName: String
        # @param TaskTemplateDescription: 任务模板描述
        # @type TaskTemplateDescription: String
        # @param TaskTemplateInfo: 任务模板信息
        # @type TaskTemplateInfo: :class:`Tencentcloud::Batch.v20170312.models.Task`

        attr_accessor :TaskTemplateId, :TaskTemplateName, :TaskTemplateDescription, :TaskTemplateInfo

        def initialize(tasktemplateid=nil, tasktemplatename=nil, tasktemplatedescription=nil, tasktemplateinfo=nil)
          @TaskTemplateId = tasktemplateid
          @TaskTemplateName = tasktemplatename
          @TaskTemplateDescription = tasktemplatedescription
          @TaskTemplateInfo = tasktemplateinfo
        end

        def deserialize(params)
          @TaskTemplateId = params['TaskTemplateId']
          @TaskTemplateName = params['TaskTemplateName']
          @TaskTemplateDescription = params['TaskTemplateDescription']
          unless params['TaskTemplateInfo'].nil?
            @TaskTemplateInfo = Task.new
            @TaskTemplateInfo.deserialize(params['TaskTemplateInfo'])
          end
        end
      end

      # ModifyTaskTemplate返回参数结构体
      class ModifyTaskTemplateResponse < TencentCloud::Common::AbstractModel
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

      # 数据盘挂载选项
      class MountDataDisk < TencentCloud::Common::AbstractModel
        # @param LocalPath: 挂载点，Linux系统合法路径，或Windows系统盘符,比如"H:\\"
        # @type LocalPath: String
        # @param FileSystemType: 文件系统类型，Linux系统下支持"EXT3"和"EXT4"两种，默认"EXT3"；Windows系统下仅支持"NTFS"
        # @type FileSystemType: String

        attr_accessor :LocalPath, :FileSystemType

        def initialize(localpath=nil, filesystemtype=nil)
          @LocalPath = localpath
          @FileSystemType = filesystemtype
        end

        def deserialize(params)
          @LocalPath = params['LocalPath']
          @FileSystemType = params['FileSystemType']
        end
      end

      # 计算环境
      class NamedComputeEnv < TencentCloud::Common::AbstractModel
        # @param EnvName: 计算环境名称
        # @type EnvName: String
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param EnvDescription: 计算环境描述
        # @type EnvDescription: String
        # @param EnvType: 计算环境管理类型
        # @type EnvType: String
        # @param EnvData: 计算环境具体参数
        # @type EnvData: :class:`Tencentcloud::Batch.v20170312.models.EnvData`
        # @param MountDataDisks: 数据盘挂载选项
        # @type MountDataDisks: Array
        # @param Authentications: 授权信息
        # @type Authentications: Array
        # @param InputMappings: 输入映射信息
        # @type InputMappings: Array
        # @param AgentRunningMode: agent运行模式，适用于Windows系统
        # @type AgentRunningMode: :class:`Tencentcloud::Batch.v20170312.models.AgentRunningMode`
        # @param Notifications: 通知信息
        # @type Notifications: Array
        # @param ActionIfComputeNodeInactive: 非活跃节点处理策略，默认“RECREATE”，即对于实例创建失败或异常退还的计算节点，定期重新创建实例资源。
        # @type ActionIfComputeNodeInactive: String
        # @param ResourceMaxRetryCount: 对于实例创建失败或异常退还的计算节点，定期重新创建实例资源的最大重试次数，最大值100，如果不设置的话，系统会设置一个默认值，当前为7
        # @type ResourceMaxRetryCount: Integer
        # @param Tags: 标签列表。通过指定该参数可以支持绑定标签到计算环境。每个计算环境最多绑定10个标签。
        # @type Tags: Array
        # @param NotificationTarget: 表示通知信息的通知目标类型。
        # 取值范围：CMQ，TDMQ_CMQ。
        # CMQ:表示向腾讯云CMQ发送消息。
        # TDMQ_CMQ：表示向腾讯云TDMQ_CMQ发送消息。<br/>默认值为CMQ。<br/>注：腾讯云计划于2022年6月前正式下线消息队列 CMQ，建议使用TDMQ_CMQ。参考文档：[CMQ迁移到TDMQ_CMQ](https://cloud.tencent.com/document/product/406/60860)
        # @type NotificationTarget: String

        attr_accessor :EnvName, :DesiredComputeNodeCount, :EnvDescription, :EnvType, :EnvData, :MountDataDisks, :Authentications, :InputMappings, :AgentRunningMode, :Notifications, :ActionIfComputeNodeInactive, :ResourceMaxRetryCount, :Tags, :NotificationTarget

        def initialize(envname=nil, desiredcomputenodecount=nil, envdescription=nil, envtype=nil, envdata=nil, mountdatadisks=nil, authentications=nil, inputmappings=nil, agentrunningmode=nil, notifications=nil, actionifcomputenodeinactive=nil, resourcemaxretrycount=nil, tags=nil, notificationtarget=nil)
          @EnvName = envname
          @DesiredComputeNodeCount = desiredcomputenodecount
          @EnvDescription = envdescription
          @EnvType = envtype
          @EnvData = envdata
          @MountDataDisks = mountdatadisks
          @Authentications = authentications
          @InputMappings = inputmappings
          @AgentRunningMode = agentrunningmode
          @Notifications = notifications
          @ActionIfComputeNodeInactive = actionifcomputenodeinactive
          @ResourceMaxRetryCount = resourcemaxretrycount
          @Tags = tags
          @NotificationTarget = notificationtarget
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
          @EnvDescription = params['EnvDescription']
          @EnvType = params['EnvType']
          unless params['EnvData'].nil?
            @EnvData = EnvData.new
            @EnvData.deserialize(params['EnvData'])
          end
          unless params['MountDataDisks'].nil?
            @MountDataDisks = []
            params['MountDataDisks'].each do |i|
              mountdatadisk_tmp = MountDataDisk.new
              mountdatadisk_tmp.deserialize(i)
              @MountDataDisks << mountdatadisk_tmp
            end
          end
          unless params['Authentications'].nil?
            @Authentications = []
            params['Authentications'].each do |i|
              authentication_tmp = Authentication.new
              authentication_tmp.deserialize(i)
              @Authentications << authentication_tmp
            end
          end
          unless params['InputMappings'].nil?
            @InputMappings = []
            params['InputMappings'].each do |i|
              inputmapping_tmp = InputMapping.new
              inputmapping_tmp.deserialize(i)
              @InputMappings << inputmapping_tmp
            end
          end
          unless params['AgentRunningMode'].nil?
            @AgentRunningMode = AgentRunningMode.new
            @AgentRunningMode.deserialize(params['AgentRunningMode'])
          end
          unless params['Notifications'].nil?
            @Notifications = []
            params['Notifications'].each do |i|
              notification_tmp = Notification.new
              notification_tmp.deserialize(i)
              @Notifications << notification_tmp
            end
          end
          @ActionIfComputeNodeInactive = params['ActionIfComputeNodeInactive']
          @ResourceMaxRetryCount = params['ResourceMaxRetryCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NotificationTarget = params['NotificationTarget']
        end
      end

      # 黑石计算环境
      class NamedCpmComputeEnv < TencentCloud::Common::AbstractModel
        # @param EnvName: 计算环境名称
        # @type EnvName: String
        # @param EnvData: 计算环境具体参数
        # @type EnvData: :class:`Tencentcloud::Batch.v20170312.models.EnvDataCpm`
        # @param DesiredComputeNodeCount: 计算节点期望个数
        # @type DesiredComputeNodeCount: Integer
        # @param EnvDescription: 计算环境描述
        # @type EnvDescription: String
        # @param EnvType: 计算环境管理类型， 取值MANAGED。
        # @type EnvType: String
        # @param Authentications: 授权信息
        # @type Authentications: Array
        # @param InputMappings: 输入映射信息
        # @type InputMappings: Array
        # @param Notifications: 通知信息
        # @type Notifications: :class:`Tencentcloud::Batch.v20170312.models.Notification`
        # @param ActionIfComputeNodeInactive: 非活跃节点处理策略，默认“RECREATE”，即对于实例创建失败或异常退还的计算节点，定期重新创建实例资源。
        # @type ActionIfComputeNodeInactive: String
        # @param ResourceMaxRetryCount: 对于实例创建失败或异常退还的计算节点，定期重新创建实例资源的最大重试次数，最大值100，如果不设置的话，系统会设置一个默认值，当前为7。
        # @type ResourceMaxRetryCount: Integer
        # @param Tags: 标签列表。通过指定该参数可以支持绑定标签到黑石计算环境。每个黑石计算环境最多绑定10个标签。
        # @type Tags: Array
        # @param NotificationTarget: 表示通知信息的通知目标类型。
        # 取值范围：CMQ，TDMQ_CMQ。
        # CMQ:表示向腾讯云CMQ发送消息。
        # TDMQ_CMQ：表示向腾讯云TDMQ_CMQ发送消息。<br/>默认值为CMQ。<br/>注：腾讯云计划于2022年6月前正式下线消息队列 CMQ，建议使用TDMQ_CMQ。参考文档：[CMQ迁移到TDMQ_CMQ](https://cloud.tencent.com/document/product/406/60860)
        # @type NotificationTarget: String

        attr_accessor :EnvName, :EnvData, :DesiredComputeNodeCount, :EnvDescription, :EnvType, :Authentications, :InputMappings, :Notifications, :ActionIfComputeNodeInactive, :ResourceMaxRetryCount, :Tags, :NotificationTarget

        def initialize(envname=nil, envdata=nil, desiredcomputenodecount=nil, envdescription=nil, envtype=nil, authentications=nil, inputmappings=nil, notifications=nil, actionifcomputenodeinactive=nil, resourcemaxretrycount=nil, tags=nil, notificationtarget=nil)
          @EnvName = envname
          @EnvData = envdata
          @DesiredComputeNodeCount = desiredcomputenodecount
          @EnvDescription = envdescription
          @EnvType = envtype
          @Authentications = authentications
          @InputMappings = inputmappings
          @Notifications = notifications
          @ActionIfComputeNodeInactive = actionifcomputenodeinactive
          @ResourceMaxRetryCount = resourcemaxretrycount
          @Tags = tags
          @NotificationTarget = notificationtarget
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          unless params['EnvData'].nil?
            @EnvData = EnvDataCpm.new
            @EnvData.deserialize(params['EnvData'])
          end
          @DesiredComputeNodeCount = params['DesiredComputeNodeCount']
          @EnvDescription = params['EnvDescription']
          @EnvType = params['EnvType']
          unless params['Authentications'].nil?
            @Authentications = []
            params['Authentications'].each do |i|
              authentication_tmp = Authentication.new
              authentication_tmp.deserialize(i)
              @Authentications << authentication_tmp
            end
          end
          unless params['InputMappings'].nil?
            @InputMappings = []
            params['InputMappings'].each do |i|
              inputmapping_tmp = InputMapping.new
              inputmapping_tmp.deserialize(i)
              @InputMappings << inputmapping_tmp
            end
          end
          unless params['Notifications'].nil?
            @Notifications = Notification.new
            @Notifications.deserialize(params['Notifications'])
          end
          @ActionIfComputeNodeInactive = params['ActionIfComputeNodeInactive']
          @ResourceMaxRetryCount = params['ResourceMaxRetryCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NotificationTarget = params['NotificationTarget']
        end
      end

      # 通知信息
      class Notification < TencentCloud::Common::AbstractModel
        # @param TopicName: CMQ主题名字，要求主题名有效且关联订阅
        # @type TopicName: String
        # @param EventConfigs: 事件配置
        # @type EventConfigs: Array

        attr_accessor :TopicName, :EventConfigs

        def initialize(topicname=nil, eventconfigs=nil)
          @TopicName = topicname
          @EventConfigs = eventconfigs
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          unless params['EventConfigs'].nil?
            @EventConfigs = []
            params['EventConfigs'].each do |i|
              eventconfig_tmp = EventConfig.new
              eventconfig_tmp.deserialize(i)
              @EventConfigs << eventconfig_tmp
            end
          end
        end
      end

      # 操作系统类型
      class OsInfo < TencentCloud::Common::AbstractModel
        # @param OsTypeId: 操作系统ID。
        # @type OsTypeId: Integer
        # @param OsName: 操作系统名称。
        # @type OsName: String
        # @param OsDescription: 操作系统名称描述。
        # @type OsDescription: String
        # @param OsEnglishDescription: 操作系统英文名称。
        # @type OsEnglishDescription: String
        # @param OsClass: 操作系统的分类，如CentOs Debian。
        # @type OsClass: String
        # @param ImageTag: 标识镜像分类。public:公共镜像; private: 专属镜像。
        # @type ImageTag: String
        # @param MaxPartitionSize: 操作系统，ext4文件下所支持的最大的磁盘大小。单位为T。
        # @type MaxPartitionSize: Integer

        attr_accessor :OsTypeId, :OsName, :OsDescription, :OsEnglishDescription, :OsClass, :ImageTag, :MaxPartitionSize

        def initialize(ostypeid=nil, osname=nil, osdescription=nil, osenglishdescription=nil, osclass=nil, imagetag=nil, maxpartitionsize=nil)
          @OsTypeId = ostypeid
          @OsName = osname
          @OsDescription = osdescription
          @OsEnglishDescription = osenglishdescription
          @OsClass = osclass
          @ImageTag = imagetag
          @MaxPartitionSize = maxpartitionsize
        end

        def deserialize(params)
          @OsTypeId = params['OsTypeId']
          @OsName = params['OsName']
          @OsDescription = params['OsDescription']
          @OsEnglishDescription = params['OsEnglishDescription']
          @OsClass = params['OsClass']
          @ImageTag = params['ImageTag']
          @MaxPartitionSize = params['MaxPartitionSize']
        end
      end

      # 输出映射
      class OutputMapping < TencentCloud::Common::AbstractModel
        # @param SourcePath: 源端路径
        # @type SourcePath: String
        # @param DestinationPath: 目的端路径
        # @type DestinationPath: String
        # @param OutputMappingOption: 输出映射选项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputMappingOption: :class:`Tencentcloud::Batch.v20170312.models.OutputMappingOption`

        attr_accessor :SourcePath, :DestinationPath, :OutputMappingOption

        def initialize(sourcepath=nil, destinationpath=nil, outputmappingoption=nil)
          @SourcePath = sourcepath
          @DestinationPath = destinationpath
          @OutputMappingOption = outputmappingoption
        end

        def deserialize(params)
          @SourcePath = params['SourcePath']
          @DestinationPath = params['DestinationPath']
          unless params['OutputMappingOption'].nil?
            @OutputMappingOption = OutputMappingOption.new
            @OutputMappingOption.deserialize(params['OutputMappingOption'])
          end
        end
      end

      # 输出映射配置
      class OutputMappingConfig < TencentCloud::Common::AbstractModel
        # @param Scene: 存储类型，仅支持COS
        # @type Scene: String
        # @param WorkerNum: 并行worker数量
        # @type WorkerNum: Integer
        # @param WorkerPartSize: worker分块大小，单位MB
        # @type WorkerPartSize: Integer

        attr_accessor :Scene, :WorkerNum, :WorkerPartSize

        def initialize(scene=nil, workernum=nil, workerpartsize=nil)
          @Scene = scene
          @WorkerNum = workernum
          @WorkerPartSize = workerpartsize
        end

        def deserialize(params)
          @Scene = params['Scene']
          @WorkerNum = params['WorkerNum']
          @WorkerPartSize = params['WorkerPartSize']
        end
      end

      # 输出映射选项
      class OutputMappingOption < TencentCloud::Common::AbstractModel
        # @param Workspace: 容器场景下,输出选项从实例映射到容器内的实例侧的工作空间。
        # BATCH_WORKSPACE: 工作空间为BATCH在实例内定义的工作空间，BATCH侧保证作业之间的隔离。（默认）
        # GLOBAL_WORKSPACE: 工作空间为实例操作系统空间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workspace: String

        attr_accessor :Workspace

        def initialize(workspace=nil)
          @Workspace = workspace
        end

        def deserialize(params)
          @Workspace = params['Workspace']
        end
      end

      # 描述了实例的抽象位置，包括其所在的可用区，所属的项目，宿主机（仅专用宿主机产品可用），母机IP等
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区名称。该参数可以通过调用  [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer
        # @param HostIds: 实例所属的专用宿主机ID列表，仅用于入参。如果您有购买专用宿主机并且指定了该参数，则您购买的实例就会随机的部署在这些专用宿主机上。
        # @type HostIds: Array
        # @param HostId: 实例所属的专用宿主机ID，仅用于出参。
        # @type HostId: String

        attr_accessor :Zone, :ProjectId, :HostIds, :HostId

        def initialize(zone=nil, projectid=nil, hostids=nil, hostid=nil)
          @Zone = zone
          @ProjectId = projectid
          @HostIds = hostids
          @HostId = hostid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @HostIds = params['HostIds']
          @HostId = params['HostId']
        end
      end

      # 重定向信息
      class RedirectInfo < TencentCloud::Common::AbstractModel
        # @param StdoutRedirectPath: 标准输出重定向路径
        # @type StdoutRedirectPath: String
        # @param StderrRedirectPath: 标准错误重定向路径
        # @type StderrRedirectPath: String
        # @param StdoutRedirectFileName: 标准输出重定向文件名，支持三个占位符${BATCH_JOB_ID}、${BATCH_TASK_NAME}、${BATCH_TASK_INSTANCE_INDEX}
        # @type StdoutRedirectFileName: String
        # @param StderrRedirectFileName: 标准错误重定向文件名，支持三个占位符${BATCH_JOB_ID}、${BATCH_TASK_NAME}、${BATCH_TASK_INSTANCE_INDEX}
        # @type StderrRedirectFileName: String

        attr_accessor :StdoutRedirectPath, :StderrRedirectPath, :StdoutRedirectFileName, :StderrRedirectFileName

        def initialize(stdoutredirectpath=nil, stderrredirectpath=nil, stdoutredirectfilename=nil, stderrredirectfilename=nil)
          @StdoutRedirectPath = stdoutredirectpath
          @StderrRedirectPath = stderrredirectpath
          @StdoutRedirectFileName = stdoutredirectfilename
          @StderrRedirectFileName = stderrredirectfilename
        end

        def deserialize(params)
          @StdoutRedirectPath = params['StdoutRedirectPath']
          @StderrRedirectPath = params['StderrRedirectPath']
          @StdoutRedirectFileName = params['StdoutRedirectFileName']
          @StderrRedirectFileName = params['StderrRedirectFileName']
        end
      end

      # 本地重定向信息
      class RedirectLocalInfo < TencentCloud::Common::AbstractModel
        # @param StdoutLocalPath: 标准输出重定向本地路径
        # @type StdoutLocalPath: String
        # @param StderrLocalPath: 标准错误重定向本地路径
        # @type StderrLocalPath: String
        # @param StdoutLocalFileName: 标准输出重定向本地文件名，支持三个占位符${BATCH_JOB_ID}、${BATCH_TASK_NAME}、${BATCH_TASK_INSTANCE_INDEX}
        # @type StdoutLocalFileName: String
        # @param StderrLocalFileName: 标准错误重定向本地文件名，支持三个占位符${BATCH_JOB_ID}、${BATCH_TASK_NAME}、${BATCH_TASK_INSTANCE_INDEX}
        # @type StderrLocalFileName: String

        attr_accessor :StdoutLocalPath, :StderrLocalPath, :StdoutLocalFileName, :StderrLocalFileName

        def initialize(stdoutlocalpath=nil, stderrlocalpath=nil, stdoutlocalfilename=nil, stderrlocalfilename=nil)
          @StdoutLocalPath = stdoutlocalpath
          @StderrLocalPath = stderrlocalpath
          @StdoutLocalFileName = stdoutlocalfilename
          @StderrLocalFileName = stderrlocalfilename
        end

        def deserialize(params)
          @StdoutLocalPath = params['StdoutLocalPath']
          @StderrLocalPath = params['StderrLocalPath']
          @StdoutLocalFileName = params['StdoutLocalFileName']
          @StderrLocalFileName = params['StderrLocalFileName']
        end
      end

      # RetryJobs请求参数结构体
      class RetryJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 作业ID列表。
        # @type JobIds: Array

        attr_accessor :JobIds

        def initialize(jobids=nil)
          @JobIds = jobids
        end

        def deserialize(params)
          @JobIds = params['JobIds']
        end
      end

      # RetryJobs返回参数结构体
      class RetryJobsResponse < TencentCloud::Common::AbstractModel
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

      # 描述了 “云自动化助手” 服务相关的信息
      class RunAutomationServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启云自动化助手。取值范围：<br><li>true：表示开启云自动化助手服务<br><li>false：表示不开启云自动化助手服务<br><br>默认取值：false。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 描述了 “云监控” 服务相关的信息
      class RunMonitorServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[云监控](/document/product/248)服务。取值范围：<br><li>true：表示开启云监控服务<br><li>false：表示不开启云监控服务<br><br>默认取值：true。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Enabled: 是否开启[云安全](/document/product/296)服务。取值范围：<br><li>true：表示开启云安全服务<br><li>false：表示不开启云安全服务<br><br>默认取值：true。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 竞价相关选项
      class SpotMarketOptions < TencentCloud::Common::AbstractModel
        # @param MaxPrice: 竞价出价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPrice: String
        # @param SpotInstanceType: 竞价请求类型，当前仅支持类型：one-time
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpotInstanceType: String

        attr_accessor :MaxPrice, :SpotInstanceType

        def initialize(maxprice=nil, spotinstancetype=nil)
          @MaxPrice = maxprice
          @SpotInstanceType = spotinstancetype
        end

        def deserialize(params)
          @MaxPrice = params['MaxPrice']
          @SpotInstanceType = params['SpotInstanceType']
        end
      end

      # HDD的本地存储信息
      class StorageBlock < TencentCloud::Common::AbstractModel
        # @param Type: HDD本地存储类型，值为：LOCAL_PRO.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param MinSize: HDD本地存储的最小容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinSize: Integer
        # @param MaxSize: HDD本地存储的最大容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSize: Integer

        attr_accessor :Type, :MinSize, :MaxSize

        def initialize(type=nil, minsize=nil, maxsize=nil)
          @Type = type
          @MinSize = minsize
          @MaxSize = maxsize
        end

        def deserialize(params)
          @Type = params['Type']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
        end
      end

      # SubmitJob请求参数结构体
      class SubmitJobRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 作业所提交的位置信息。通过该参数可以指定作业关联CVM所属可用区等信息。
        # @type Placement: :class:`Tencentcloud::Batch.v20170312.models.Placement`
        # @param Job: 作业信息
        # @type Job: :class:`Tencentcloud::Batch.v20170312.models.Job`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由用户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String

        attr_accessor :Placement, :Job, :ClientToken

        def initialize(placement=nil, job=nil, clienttoken=nil)
          @Placement = placement
          @Job = job
          @ClientToken = clienttoken
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          @ClientToken = params['ClientToken']
        end
      end

      # SubmitJob返回参数结构体
      class SubmitJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 当通过本接口来提交作业时会返回该参数，表示一个作业ID。返回作业ID列表并不代表作业解析/运行成功，可根据 DescribeJob 接口查询其状态。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br>
        # <li>LOCAL_BASIC：本地硬盘</li>
        # <li>LOCAL_SSD：本地SSD硬盘</li>
        # <li>CLOUD_BASIC：普通云硬盘</li>
        # <li>CLOUD_SSD：SSD云硬盘</li>
        # <li>CLOUD_PREMIUM：高性能云硬盘</li>
        # <li>CLOUD_BSSD：通用性SSD云硬盘</li>
        # <li>CLOUD_HSSD：增强型SSD云硬盘</li>
        # <li>CLOUD_TSSD：极速型SSD云硬盘</li><br>
        # 默认取值：当前有库存的硬盘类型。
        # @type DiskType: String
        # @param DiskId: 系统盘ID。LOCAL_BASIC 和 LOCAL_SSD 类型没有ID。暂时不支持该参数。
        # 该参数目前仅用于`DescribeInstances`等查询类接口的返回参数，不可用于`RunInstances`等写接口的入参。
        # @type DiskId: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 50
        # @type DiskSize: Integer
        # @param CdcId: 所属的独享集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param DiskName: 磁盘名称，长度不超过128 个字符。

        # 该参数正在邀测中，暂未开放使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskName: String

        attr_accessor :DiskType, :DiskId, :DiskSize, :CdcId, :DiskName

        def initialize(disktype=nil, diskid=nil, disksize=nil, cdcid=nil, diskname=nil)
          @DiskType = disktype
          @DiskId = diskid
          @DiskSize = disksize
          @CdcId = cdcid
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @CdcId = params['CdcId']
          @DiskName = params['DiskName']
        end
      end

      # 标签。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 任务
      class Task < TencentCloud::Common::AbstractModel
        # @param Application: 应用程序信息
        # @type Application: :class:`Tencentcloud::Batch.v20170312.models.Application`
        # @param TaskName: 任务名称，在一个作业内部唯一
        # @type TaskName: String
        # @param TaskInstanceNum: 任务实例运行个数，默认为1
        # @type TaskInstanceNum: Integer
        # @param ComputeEnv: 运行环境信息，ComputeEnv 和 EnvId 必须指定一个（且只有一个）参数。
        # @type ComputeEnv: :class:`Tencentcloud::Batch.v20170312.models.AnonymousComputeEnv`
        # @param EnvId: 计算环境ID，ComputeEnv 和 EnvId 必须指定一个（且只有一个）参数。
        # @type EnvId: String
        # @param RedirectInfo: 重定向信息
        # @type RedirectInfo: :class:`Tencentcloud::Batch.v20170312.models.RedirectInfo`
        # @param RedirectLocalInfo: 重定向本地信息
        # @type RedirectLocalInfo: :class:`Tencentcloud::Batch.v20170312.models.RedirectLocalInfo`
        # @param InputMappings: 输入映射
        # @type InputMappings: Array
        # @param OutputMappings: 输出映射
        # @type OutputMappings: Array
        # @param OutputMappingConfigs: 输出映射配置
        # @type OutputMappingConfigs: Array
        # @param EnvVars: 自定义环境变量
        # @type EnvVars: Array
        # @param Authentications: 授权信息
        # @type Authentications: Array
        # @param FailedAction: TaskInstance失败后处理方式，取值包括TERMINATE（默认）、INTERRUPT、FAST_INTERRUPT。
        # @type FailedAction: String
        # @param MaxRetryCount: 任务失败后的最大重试次数，默认为0
        # @type MaxRetryCount: Integer
        # @param Timeout: 任务启动后的超时时间，单位秒，默认为86400秒
        # @type Timeout: Integer
        # @param MaxConcurrentNum: 任务最大并发数限制，默认没有限制。
        # @type MaxConcurrentNum: Integer
        # @param RestartComputeNode: 任务完成后，重启计算节点。适用于指定计算环境执行任务。
        # @type RestartComputeNode: Boolean
        # @param ResourceMaxRetryCount: 启动任务过程中，创建计算资源如CVM失败后的最大重试次数，默认为0。最大值100。
        # 计算资源创建重试的等待时间间隔策略设置如下：
        # [1, 3]: 等待600 s发起重试；
        # [4, 10]: 等待900 s发起重试；
        # [11, 50]: 等待1800 s发起重试；
        # [51, 100]: 等待3600 s发起重试；
        # [a, b]表示重试次数区间，每次重试的等待时间随着重试次数的增加而递增。
        # 例如，计算资源创建重试8次的耗时为：3*600 + 5*900 = 6300 s
        # @type ResourceMaxRetryCount: Integer

        attr_accessor :Application, :TaskName, :TaskInstanceNum, :ComputeEnv, :EnvId, :RedirectInfo, :RedirectLocalInfo, :InputMappings, :OutputMappings, :OutputMappingConfigs, :EnvVars, :Authentications, :FailedAction, :MaxRetryCount, :Timeout, :MaxConcurrentNum, :RestartComputeNode, :ResourceMaxRetryCount

        def initialize(application=nil, taskname=nil, taskinstancenum=nil, computeenv=nil, envid=nil, redirectinfo=nil, redirectlocalinfo=nil, inputmappings=nil, outputmappings=nil, outputmappingconfigs=nil, envvars=nil, authentications=nil, failedaction=nil, maxretrycount=nil, timeout=nil, maxconcurrentnum=nil, restartcomputenode=nil, resourcemaxretrycount=nil)
          @Application = application
          @TaskName = taskname
          @TaskInstanceNum = taskinstancenum
          @ComputeEnv = computeenv
          @EnvId = envid
          @RedirectInfo = redirectinfo
          @RedirectLocalInfo = redirectlocalinfo
          @InputMappings = inputmappings
          @OutputMappings = outputmappings
          @OutputMappingConfigs = outputmappingconfigs
          @EnvVars = envvars
          @Authentications = authentications
          @FailedAction = failedaction
          @MaxRetryCount = maxretrycount
          @Timeout = timeout
          @MaxConcurrentNum = maxconcurrentnum
          @RestartComputeNode = restartcomputenode
          @ResourceMaxRetryCount = resourcemaxretrycount
        end

        def deserialize(params)
          unless params['Application'].nil?
            @Application = Application.new
            @Application.deserialize(params['Application'])
          end
          @TaskName = params['TaskName']
          @TaskInstanceNum = params['TaskInstanceNum']
          unless params['ComputeEnv'].nil?
            @ComputeEnv = AnonymousComputeEnv.new
            @ComputeEnv.deserialize(params['ComputeEnv'])
          end
          @EnvId = params['EnvId']
          unless params['RedirectInfo'].nil?
            @RedirectInfo = RedirectInfo.new
            @RedirectInfo.deserialize(params['RedirectInfo'])
          end
          unless params['RedirectLocalInfo'].nil?
            @RedirectLocalInfo = RedirectLocalInfo.new
            @RedirectLocalInfo.deserialize(params['RedirectLocalInfo'])
          end
          unless params['InputMappings'].nil?
            @InputMappings = []
            params['InputMappings'].each do |i|
              inputmapping_tmp = InputMapping.new
              inputmapping_tmp.deserialize(i)
              @InputMappings << inputmapping_tmp
            end
          end
          unless params['OutputMappings'].nil?
            @OutputMappings = []
            params['OutputMappings'].each do |i|
              outputmapping_tmp = OutputMapping.new
              outputmapping_tmp.deserialize(i)
              @OutputMappings << outputmapping_tmp
            end
          end
          unless params['OutputMappingConfigs'].nil?
            @OutputMappingConfigs = []
            params['OutputMappingConfigs'].each do |i|
              outputmappingconfig_tmp = OutputMappingConfig.new
              outputmappingconfig_tmp.deserialize(i)
              @OutputMappingConfigs << outputmappingconfig_tmp
            end
          end
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
          unless params['Authentications'].nil?
            @Authentications = []
            params['Authentications'].each do |i|
              authentication_tmp = Authentication.new
              authentication_tmp.deserialize(i)
              @Authentications << authentication_tmp
            end
          end
          @FailedAction = params['FailedAction']
          @MaxRetryCount = params['MaxRetryCount']
          @Timeout = params['Timeout']
          @MaxConcurrentNum = params['MaxConcurrentNum']
          @RestartComputeNode = params['RestartComputeNode']
          @ResourceMaxRetryCount = params['ResourceMaxRetryCount']
        end
      end

      # 任务实例日志详情。
      class TaskInstanceLog < TencentCloud::Common::AbstractModel
        # @param TaskInstanceIndex: 任务实例
        # @type TaskInstanceIndex: Integer
        # @param StdoutLog: 标准输出日志（Base64编码，解码后最大日志长度2048字节）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StdoutLog: String
        # @param StderrLog: 标准错误日志（Base64编码，解码后最大日志长度2048字节）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StderrLog: String
        # @param StdoutRedirectPath: 标准输出重定向路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StdoutRedirectPath: String
        # @param StderrRedirectPath: 标准错误重定向路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StderrRedirectPath: String
        # @param StdoutRedirectFileName: 标准输出重定向文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StdoutRedirectFileName: String
        # @param StderrRedirectFileName: 标准错误重定向文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StderrRedirectFileName: String

        attr_accessor :TaskInstanceIndex, :StdoutLog, :StderrLog, :StdoutRedirectPath, :StderrRedirectPath, :StdoutRedirectFileName, :StderrRedirectFileName

        def initialize(taskinstanceindex=nil, stdoutlog=nil, stderrlog=nil, stdoutredirectpath=nil, stderrredirectpath=nil, stdoutredirectfilename=nil, stderrredirectfilename=nil)
          @TaskInstanceIndex = taskinstanceindex
          @StdoutLog = stdoutlog
          @StderrLog = stderrlog
          @StdoutRedirectPath = stdoutredirectpath
          @StderrRedirectPath = stderrredirectpath
          @StdoutRedirectFileName = stdoutredirectfilename
          @StderrRedirectFileName = stderrredirectfilename
        end

        def deserialize(params)
          @TaskInstanceIndex = params['TaskInstanceIndex']
          @StdoutLog = params['StdoutLog']
          @StderrLog = params['StderrLog']
          @StdoutRedirectPath = params['StdoutRedirectPath']
          @StderrRedirectPath = params['StderrRedirectPath']
          @StdoutRedirectFileName = params['StdoutRedirectFileName']
          @StderrRedirectFileName = params['StderrRedirectFileName']
        end
      end

      # 任务实例统计指标
      class TaskInstanceMetrics < TencentCloud::Common::AbstractModel
        # @param SubmittedCount: Submitted个数
        # @type SubmittedCount: Integer
        # @param PendingCount: Pending个数
        # @type PendingCount: Integer
        # @param RunnableCount: Runnable个数
        # @type RunnableCount: Integer
        # @param StartingCount: Starting个数
        # @type StartingCount: Integer
        # @param RunningCount: Running个数
        # @type RunningCount: Integer
        # @param SucceedCount: Succeed个数
        # @type SucceedCount: Integer
        # @param FailedInterruptedCount: FailedInterrupted个数
        # @type FailedInterruptedCount: Integer
        # @param FailedCount: Failed个数
        # @type FailedCount: Integer

        attr_accessor :SubmittedCount, :PendingCount, :RunnableCount, :StartingCount, :RunningCount, :SucceedCount, :FailedInterruptedCount, :FailedCount

        def initialize(submittedcount=nil, pendingcount=nil, runnablecount=nil, startingcount=nil, runningcount=nil, succeedcount=nil, failedinterruptedcount=nil, failedcount=nil)
          @SubmittedCount = submittedcount
          @PendingCount = pendingcount
          @RunnableCount = runnablecount
          @StartingCount = startingcount
          @RunningCount = runningcount
          @SucceedCount = succeedcount
          @FailedInterruptedCount = failedinterruptedcount
          @FailedCount = failedcount
        end

        def deserialize(params)
          @SubmittedCount = params['SubmittedCount']
          @PendingCount = params['PendingCount']
          @RunnableCount = params['RunnableCount']
          @StartingCount = params['StartingCount']
          @RunningCount = params['RunningCount']
          @SucceedCount = params['SucceedCount']
          @FailedInterruptedCount = params['FailedInterruptedCount']
          @FailedCount = params['FailedCount']
        end
      end

      # 任务实例视图信息
      class TaskInstanceView < TencentCloud::Common::AbstractModel
        # @param TaskInstanceIndex: 任务实例索引
        # @type TaskInstanceIndex: Integer
        # @param TaskInstanceState: 任务实例状态
        # @type TaskInstanceState: String
        # @param ExitCode: 应用程序执行结束的exit code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExitCode: Integer
        # @param StateReason: 任务实例状态原因，任务实例失败时，会记录失败原因
        # @type StateReason: String
        # @param ComputeNodeInstanceId: 任务实例运行时所在计算节点（例如CVM）的InstanceId。任务实例未运行或者完结时，本字段为空。任务实例重试时，本字段会随之变化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeNodeInstanceId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param LaunchTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaunchTime: String
        # @param RunningTime: 开始运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param RedirectInfo: 重定向信息
        # @type RedirectInfo: :class:`Tencentcloud::Batch.v20170312.models.RedirectInfo`
        # @param StateDetailedReason: 任务实例状态原因详情，任务实例失败时，会记录失败原因
        # @type StateDetailedReason: String

        attr_accessor :TaskInstanceIndex, :TaskInstanceState, :ExitCode, :StateReason, :ComputeNodeInstanceId, :CreateTime, :LaunchTime, :RunningTime, :EndTime, :RedirectInfo, :StateDetailedReason

        def initialize(taskinstanceindex=nil, taskinstancestate=nil, exitcode=nil, statereason=nil, computenodeinstanceid=nil, createtime=nil, launchtime=nil, runningtime=nil, endtime=nil, redirectinfo=nil, statedetailedreason=nil)
          @TaskInstanceIndex = taskinstanceindex
          @TaskInstanceState = taskinstancestate
          @ExitCode = exitcode
          @StateReason = statereason
          @ComputeNodeInstanceId = computenodeinstanceid
          @CreateTime = createtime
          @LaunchTime = launchtime
          @RunningTime = runningtime
          @EndTime = endtime
          @RedirectInfo = redirectinfo
          @StateDetailedReason = statedetailedreason
        end

        def deserialize(params)
          @TaskInstanceIndex = params['TaskInstanceIndex']
          @TaskInstanceState = params['TaskInstanceState']
          @ExitCode = params['ExitCode']
          @StateReason = params['StateReason']
          @ComputeNodeInstanceId = params['ComputeNodeInstanceId']
          @CreateTime = params['CreateTime']
          @LaunchTime = params['LaunchTime']
          @RunningTime = params['RunningTime']
          @EndTime = params['EndTime']
          unless params['RedirectInfo'].nil?
            @RedirectInfo = RedirectInfo.new
            @RedirectInfo.deserialize(params['RedirectInfo'])
          end
          @StateDetailedReason = params['StateDetailedReason']
        end
      end

      # 任务统计指标
      class TaskMetrics < TencentCloud::Common::AbstractModel
        # @param SubmittedCount: Submitted个数
        # @type SubmittedCount: Integer
        # @param PendingCount: Pending个数
        # @type PendingCount: Integer
        # @param RunnableCount: Runnable个数
        # @type RunnableCount: Integer
        # @param StartingCount: Starting个数
        # @type StartingCount: Integer
        # @param RunningCount: Running个数
        # @type RunningCount: Integer
        # @param SucceedCount: Succeed个数
        # @type SucceedCount: Integer
        # @param FailedInterruptedCount: FailedInterrupted个数
        # @type FailedInterruptedCount: Integer
        # @param FailedCount: Failed个数
        # @type FailedCount: Integer

        attr_accessor :SubmittedCount, :PendingCount, :RunnableCount, :StartingCount, :RunningCount, :SucceedCount, :FailedInterruptedCount, :FailedCount

        def initialize(submittedcount=nil, pendingcount=nil, runnablecount=nil, startingcount=nil, runningcount=nil, succeedcount=nil, failedinterruptedcount=nil, failedcount=nil)
          @SubmittedCount = submittedcount
          @PendingCount = pendingcount
          @RunnableCount = runnablecount
          @StartingCount = startingcount
          @RunningCount = runningcount
          @SucceedCount = succeedcount
          @FailedInterruptedCount = failedinterruptedcount
          @FailedCount = failedcount
        end

        def deserialize(params)
          @SubmittedCount = params['SubmittedCount']
          @PendingCount = params['PendingCount']
          @RunnableCount = params['RunnableCount']
          @StartingCount = params['StartingCount']
          @RunningCount = params['RunningCount']
          @SucceedCount = params['SucceedCount']
          @FailedInterruptedCount = params['FailedInterruptedCount']
          @FailedCount = params['FailedCount']
        end
      end

      # 任务模板信息
      class TaskTemplateView < TencentCloud::Common::AbstractModel
        # @param TaskTemplateId: 任务模板ID
        # @type TaskTemplateId: String
        # @param TaskTemplateName: 任务模板名称
        # @type TaskTemplateName: String
        # @param TaskTemplateDescription: 任务模板描述
        # @type TaskTemplateDescription: String
        # @param TaskTemplateInfo: 任务模板信息
        # @type TaskTemplateInfo: :class:`Tencentcloud::Batch.v20170312.models.Task`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Tags: 任务模板绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :TaskTemplateId, :TaskTemplateName, :TaskTemplateDescription, :TaskTemplateInfo, :CreateTime, :Tags

        def initialize(tasktemplateid=nil, tasktemplatename=nil, tasktemplatedescription=nil, tasktemplateinfo=nil, createtime=nil, tags=nil)
          @TaskTemplateId = tasktemplateid
          @TaskTemplateName = tasktemplatename
          @TaskTemplateDescription = tasktemplatedescription
          @TaskTemplateInfo = tasktemplateinfo
          @CreateTime = createtime
          @Tags = tags
        end

        def deserialize(params)
          @TaskTemplateId = params['TaskTemplateId']
          @TaskTemplateName = params['TaskTemplateName']
          @TaskTemplateDescription = params['TaskTemplateDescription']
          unless params['TaskTemplateInfo'].nil?
            @TaskTemplateInfo = Task.new
            @TaskTemplateInfo.deserialize(params['TaskTemplateInfo'])
          end
          @CreateTime = params['CreateTime']
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

      # 任务视图信息
      class TaskView < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskState: 任务状态
        # @type TaskState: String
        # @param CreateTime: 开始时间
        # @type CreateTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :TaskName, :TaskState, :CreateTime, :EndTime

        def initialize(taskname=nil, taskstate=nil, createtime=nil, endtime=nil)
          @TaskName = taskname
          @TaskState = taskstate
          @CreateTime = createtime
          @EndTime = endtime
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskState = params['TaskState']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
        end
      end

      # TerminateComputeNode请求参数结构体
      class TerminateComputeNodeRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param ComputeNodeId: 计算节点ID
        # @type ComputeNodeId: String

        attr_accessor :EnvId, :ComputeNodeId

        def initialize(envid=nil, computenodeid=nil)
          @EnvId = envid
          @ComputeNodeId = computenodeid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ComputeNodeId = params['ComputeNodeId']
        end
      end

      # TerminateComputeNode返回参数结构体
      class TerminateComputeNodeResponse < TencentCloud::Common::AbstractModel
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

      # TerminateComputeNodes请求参数结构体
      class TerminateComputeNodesRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 计算环境ID
        # @type EnvId: String
        # @param ComputeNodeIds: 计算节点ID列表
        # @type ComputeNodeIds: Array

        attr_accessor :EnvId, :ComputeNodeIds

        def initialize(envid=nil, computenodeids=nil)
          @EnvId = envid
          @ComputeNodeIds = computenodeids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ComputeNodeIds = params['ComputeNodeIds']
        end
      end

      # TerminateComputeNodes返回参数结构体
      class TerminateComputeNodesResponse < TencentCloud::Common::AbstractModel
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

      # TerminateJob请求参数结构体
      class TerminateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # TerminateJob返回参数结构体
      class TerminateJobResponse < TencentCloud::Common::AbstractModel
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

      # TerminateTaskInstance请求参数结构体
      class TerminateTaskInstanceRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskInstanceIndex: 任务实例索引
        # @type TaskInstanceIndex: Integer

        attr_accessor :JobId, :TaskName, :TaskInstanceIndex

        def initialize(jobid=nil, taskname=nil, taskinstanceindex=nil)
          @JobId = jobid
          @TaskName = taskname
          @TaskInstanceIndex = taskinstanceindex
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskName = params['TaskName']
          @TaskInstanceIndex = params['TaskInstanceIndex']
        end
      end

      # TerminateTaskInstance返回参数结构体
      class TerminateTaskInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 描述了VPC相关信息，包括子网，IP信息等
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID，形如`vpc-xxx`。有效的VpcId可通过登录[控制台](https://console.cloud.tencent.com/vpc/vpc?rid=1)查询；也可以调用接口 [DescribeVpcEx](/document/api/215/1372) ，从接口返回中的`unVpcId`字段获取。若在创建子机时VpcId与SubnetId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如`subnet-xxx`。有效的私有网络子网ID可通过登录[控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口  [DescribeSubnets](/document/api/215/15784) ，从接口返回中的`unSubnetId`字段获取。若在创建子机时SubnetId与VpcId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type SubnetId: String
        # @param AsVpcGateway: 是否用作公网网关。公网网关只有在实例拥有公网IP以及处于私有网络下时才能正常使用。取值范围：<li>true：表示用作公网网关</li><li>false：表示不作为公网网关</li>默认取值：false。
        # @type AsVpcGateway: Boolean
        # @param PrivateIpAddresses: 私有网络子网 IP 数组，在创建实例、修改实例vpc属性操作中可使用此参数。当前仅批量创建多台实例时支持传入相同子网的多个 IP。
        # @type PrivateIpAddresses: Array
        # @param Ipv6AddressCount: 为弹性网卡指定随机生成的 IPv6 地址数量。
        # @type Ipv6AddressCount: Integer

        attr_accessor :VpcId, :SubnetId, :AsVpcGateway, :PrivateIpAddresses, :Ipv6AddressCount

        def initialize(vpcid=nil, subnetid=nil, asvpcgateway=nil, privateipaddresses=nil, ipv6addresscount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @AsVpcGateway = asvpcgateway
          @PrivateIpAddresses = privateipaddresses
          @Ipv6AddressCount = ipv6addresscount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AsVpcGateway = params['AsVpcGateway']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @Ipv6AddressCount = params['Ipv6AddressCount']
        end
      end

    end
  end
end

