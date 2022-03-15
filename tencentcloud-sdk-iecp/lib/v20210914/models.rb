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
  module Iecp
    module V20210914
      # 应用基本配置
      class ApplicationBasicConfig < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param WorkflowKind: 工作负载类型
        # @type WorkflowKind: String
        # @param Labels: 标签信息
        # @type Labels: Array
        # @param GridUniqKey: Grid唯一Key
        # @type GridUniqKey: String
        # @param NodeSelector: NodeSelector标签
        # @type NodeSelector: Array
        # @param Replicas: 实例数
        # @type Replicas: Integer
        # @param AvailableReplicas: 可用实例数
        # @type AvailableReplicas: Integer
        # @param EnableServiceLinks: 是否开启service环境变量注入pod
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableServiceLinks: Boolean

        attr_accessor :Name, :Namespace, :WorkflowKind, :Labels, :GridUniqKey, :NodeSelector, :Replicas, :AvailableReplicas, :EnableServiceLinks
        
        def initialize(name=nil, namespace=nil, workflowkind=nil, labels=nil, griduniqkey=nil, nodeselector=nil, replicas=nil, availablereplicas=nil, enableservicelinks=nil)
          @Name = name
          @Namespace = namespace
          @WorkflowKind = workflowkind
          @Labels = labels
          @GridUniqKey = griduniqkey
          @NodeSelector = nodeselector
          @Replicas = replicas
          @AvailableReplicas = availablereplicas
          @EnableServiceLinks = enableservicelinks
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @WorkflowKind = params['WorkflowKind']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          @GridUniqKey = params['GridUniqKey']
          unless params['NodeSelector'].nil?
            @NodeSelector = []
            params['NodeSelector'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @NodeSelector << label_tmp
            end
          end
          @Replicas = params['Replicas']
          @AvailableReplicas = params['AvailableReplicas']
          @EnableServiceLinks = params['EnableServiceLinks']
        end
      end

      # 应用基本信息
      class ApplicationBasicInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param ManageUrl: 管理URL地址
        # @type ManageUrl: String
        # @param Description: 描述信息
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AllowVisualModify: 是否允许可视化修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowVisualModify: Boolean

        attr_accessor :Name, :ManageUrl, :Description, :CreateTime, :AllowVisualModify
        
        def initialize(name=nil, manageurl=nil, description=nil, createtime=nil, allowvisualmodify=nil)
          @Name = name
          @ManageUrl = manageurl
          @Description = description
          @CreateTime = createtime
          @AllowVisualModify = allowvisualmodify
        end

        def deserialize(params)
          @Name = params['Name']
          @ManageUrl = params['ManageUrl']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @AllowVisualModify = params['AllowVisualModify']
        end
      end

      # 应用部署模式
      class ApplicationDeployMode < TencentCloud::Common::AbstractModel
        # @param Type: 1:指定节点部署 2:单元部署
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param ResourceID: 资源ID
        # @type ResourceID: Integer
        # @param ResourceName: 资源名
        # @type ResourceName: String

        attr_accessor :Type, :ResourceID, :ResourceName
        
        def initialize(type=nil, resourceid=nil, resourcename=nil)
          @Type = type
          @ResourceID = resourceid
          @ResourceName = resourcename
        end

        def deserialize(params)
          @Type = params['Type']
          @ResourceID = params['ResourceID']
          @ResourceName = params['ResourceName']
        end
      end

      # 应用状态
      class ApplicationStatusInfo < TencentCloud::Common::AbstractModel
        # @param Id: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Version: 应用版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Status: 应用状态(1:待部署 2:部署中 3:运行中 4:待更新 5:更新中 6:待删除 7:删除中 8:已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param ManageUrl: 管理地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManageUrl: String
        # @param WorkloadKind: 负载类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkloadKind: String
        # @param DeployMode: 应用部署模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployMode: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationDeployMode`
        # @param Replicas: 期望Pod数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param AvailableReplicas: 运行Pod数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableReplicas: Integer

        attr_accessor :Id, :Name, :Version, :Status, :StartTime, :ManageUrl, :WorkloadKind, :DeployMode, :Replicas, :AvailableReplicas
        
        def initialize(id=nil, name=nil, version=nil, status=nil, starttime=nil, manageurl=nil, workloadkind=nil, deploymode=nil, replicas=nil, availablereplicas=nil)
          @Id = id
          @Name = name
          @Version = version
          @Status = status
          @StartTime = starttime
          @ManageUrl = manageurl
          @WorkloadKind = workloadkind
          @DeployMode = deploymode
          @Replicas = replicas
          @AvailableReplicas = availablereplicas
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Version = params['Version']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @ManageUrl = params['ManageUrl']
          @WorkloadKind = params['WorkloadKind']
          unless params['DeployMode'].nil?
            @DeployMode = ApplicationDeployMode.new
            @DeployMode.deserialize(params['DeployMode'])
          end
          @Replicas = params['Replicas']
          @AvailableReplicas = params['AvailableReplicas']
        end
      end

      # 应用模板列表详情
      class ApplicationTemplate < TencentCloud::Common::AbstractModel
        # @param Id: 模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Source: 来源。1 自定义应用模板 ;  2 官方应用模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param WorkloadKind: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkloadKind: String
        # @param ManageUrl: 管理地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManageUrl: String
        # @param DistributeTime: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeTime: String

        attr_accessor :Id, :Name, :Source, :WorkloadKind, :ManageUrl, :DistributeTime
        
        def initialize(id=nil, name=nil, source=nil, workloadkind=nil, manageurl=nil, distributetime=nil)
          @Id = id
          @Name = name
          @Source = source
          @WorkloadKind = workloadkind
          @ManageUrl = manageurl
          @DistributeTime = distributetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Source = params['Source']
          @WorkloadKind = params['WorkloadKind']
          @ManageUrl = params['ManageUrl']
          @DistributeTime = params['DistributeTime']
        end
      end

      # ApplyMarketComponent请求参数结构体
      class ApplyMarketComponentRequest < TencentCloud::Common::AbstractModel
        # @param ID: 组件ID
        # @type ID: Integer

        attr_accessor :ID
        
        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # ApplyMarketComponent返回参数结构体
      class ApplyMarketComponentResponse < TencentCloud::Common::AbstractModel
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

      # ConfigMap基本信息
      class ConfigMapBasicInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :Name, :Namespace, :CreateTime
        
        def initialize(name=nil, namespace=nil, createtime=nil)
          @Name = name
          @Namespace = namespace
          @CreateTime = createtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @CreateTime = params['CreateTime']
        end
      end

      # 容器配置信息
      class Container < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param ImageVersion: 镜像版本
        # @type ImageVersion: String
        # @param ImagePullPolicy: 镜像拉取策略(Always|Never|IfNotPresent)
        # @type ImagePullPolicy: String
        # @param VolumeMounts: 卷挂载配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeMounts: Array
        # @param CpuRequest: cpu最低配置
        # @type CpuRequest: String
        # @param CpuLimit: cpu最高限制
        # @type CpuLimit: String
        # @param MemoryRequest: 内存最低要求
        # @type MemoryRequest: String
        # @param MemoryLimit: 内存最高要求
        # @type MemoryLimit: String
        # @param MemoryUnit: 内存单位
        # @type MemoryUnit: String
        # @param GpuLimit: gpu最高限制
        # @type GpuLimit: String
        # @param ResourceMapCloud: 资源配置
        # @type ResourceMapCloud: Array
        # @param Envs: 环境配置
        # @type Envs: Array
        # @param WorkingDir: 工作目录
        # @type WorkingDir: String
        # @param Commands: 命令
        # @type Commands: Array
        # @param Args: 参数
        # @type Args: Array
        # @param SecurityContext: 安全配置
        # @type SecurityContext: :class:`Tencentcloud::Iecp.v20210914.models.SecurityContext`
        # @param ReadinessProbe: 就绪探针配置
        # @type ReadinessProbe: :class:`Tencentcloud::Iecp.v20210914.models.Probe`

        attr_accessor :Name, :ImageName, :ImageVersion, :ImagePullPolicy, :VolumeMounts, :CpuRequest, :CpuLimit, :MemoryRequest, :MemoryLimit, :MemoryUnit, :GpuLimit, :ResourceMapCloud, :Envs, :WorkingDir, :Commands, :Args, :SecurityContext, :ReadinessProbe
        
        def initialize(name=nil, imagename=nil, imageversion=nil, imagepullpolicy=nil, volumemounts=nil, cpurequest=nil, cpulimit=nil, memoryrequest=nil, memorylimit=nil, memoryunit=nil, gpulimit=nil, resourcemapcloud=nil, envs=nil, workingdir=nil, commands=nil, args=nil, securitycontext=nil, readinessprobe=nil)
          @Name = name
          @ImageName = imagename
          @ImageVersion = imageversion
          @ImagePullPolicy = imagepullpolicy
          @VolumeMounts = volumemounts
          @CpuRequest = cpurequest
          @CpuLimit = cpulimit
          @MemoryRequest = memoryrequest
          @MemoryLimit = memorylimit
          @MemoryUnit = memoryunit
          @GpuLimit = gpulimit
          @ResourceMapCloud = resourcemapcloud
          @Envs = envs
          @WorkingDir = workingdir
          @Commands = commands
          @Args = args
          @SecurityContext = securitycontext
          @ReadinessProbe = readinessprobe
        end

        def deserialize(params)
          @Name = params['Name']
          @ImageName = params['ImageName']
          @ImageVersion = params['ImageVersion']
          @ImagePullPolicy = params['ImagePullPolicy']
          unless params['VolumeMounts'].nil?
            @VolumeMounts = []
            params['VolumeMounts'].each do |i|
              volumemount_tmp = VolumeMount.new
              volumemount_tmp.deserialize(i)
              @VolumeMounts << volumemount_tmp
            end
          end
          @CpuRequest = params['CpuRequest']
          @CpuLimit = params['CpuLimit']
          @MemoryRequest = params['MemoryRequest']
          @MemoryLimit = params['MemoryLimit']
          @MemoryUnit = params['MemoryUnit']
          @GpuLimit = params['GpuLimit']
          unless params['ResourceMapCloud'].nil?
            @ResourceMapCloud = []
            params['ResourceMapCloud'].each do |i|
              keyvalueobj_tmp = KeyValueObj.new
              keyvalueobj_tmp.deserialize(i)
              @ResourceMapCloud << keyvalueobj_tmp
            end
          end
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              env_tmp = Env.new
              env_tmp.deserialize(i)
              @Envs << env_tmp
            end
          end
          @WorkingDir = params['WorkingDir']
          @Commands = params['Commands']
          @Args = params['Args']
          unless params['SecurityContext'].nil?
            @SecurityContext = SecurityContext.new
            @SecurityContext.deserialize(params['SecurityContext'])
          end
          unless params['ReadinessProbe'].nil?
            @ReadinessProbe = Probe.new
            @ReadinessProbe.deserialize(params['ReadinessProbe'])
          end
        end
      end

      # 容器状态
      class ContainerStatus < TencentCloud::Common::AbstractModel
        # @param Name: 容器名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ID: 容器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Image: 镜像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param Status: 状态
        # @type Status: String

        attr_accessor :Name, :ID, :Image, :RestartCount, :Status
        
        def initialize(name=nil, id=nil, image=nil, restartcount=nil, status=nil)
          @Name = name
          @ID = id
          @Image = image
          @RestartCount = restartcount
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @ID = params['ID']
          @Image = params['Image']
          @RestartCount = params['RestartCount']
          @Status = params['Status']
        end
      end

      # CreateApplicationVisualization请求参数结构体
      class CreateApplicationVisualizationRequest < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 基本信息
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`
        # @param BasicConfig: 基本配置
        # @type BasicConfig: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicConfig`
        # @param Volumes: 卷列表
        # @type Volumes: Array
        # @param Service: 服务配置
        # @type Service: :class:`Tencentcloud::Iecp.v20210914.models.Service`
        # @param Job: Job配置
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`
        # @param CronJob: CronJob配置
        # @type CronJob: :class:`Tencentcloud::Iecp.v20210914.models.CronJob`
        # @param RestartPolicy: 重新运行策略
        # @type RestartPolicy: String
        # @param ImagePullSecrets: 镜像拉取密钥
        # @type ImagePullSecrets: Array
        # @param HorizontalPodAutoscaler: HPA配置
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Iecp.v20210914.models.HorizontalPodAutoscaler`
        # @param InitContainers: 初始化容器列表
        # @type InitContainers: Array
        # @param Containers: 容器列表
        # @type Containers: Array

        attr_accessor :BasicInfo, :BasicConfig, :Volumes, :Service, :Job, :CronJob, :RestartPolicy, :ImagePullSecrets, :HorizontalPodAutoscaler, :InitContainers, :Containers
        
        def initialize(basicinfo=nil, basicconfig=nil, volumes=nil, service=nil, job=nil, cronjob=nil, restartpolicy=nil, imagepullsecrets=nil, horizontalpodautoscaler=nil, initcontainers=nil, containers=nil)
          @BasicInfo = basicinfo
          @BasicConfig = basicconfig
          @Volumes = volumes
          @Service = service
          @Job = job
          @CronJob = cronjob
          @RestartPolicy = restartpolicy
          @ImagePullSecrets = imagepullsecrets
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @InitContainers = initcontainers
          @Containers = containers
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['BasicConfig'].nil?
            @BasicConfig = ApplicationBasicConfig.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
            end
          end
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          unless params['CronJob'].nil?
            @CronJob = CronJob.new
            @CronJob.deserialize(params['CronJob'])
          end
          @RestartPolicy = params['RestartPolicy']
          @ImagePullSecrets = params['ImagePullSecrets']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          unless params['InitContainers'].nil?
            @InitContainers = []
            params['InitContainers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @InitContainers << container_tmp
            end
          end
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
        end
      end

      # CreateApplicationVisualization返回参数结构体
      class CreateApplicationVisualizationResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :RequestId
        
        def initialize(applicationid=nil, requestid=nil)
          @ApplicationId = applicationid
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateConfigMap请求参数结构体
      class CreateConfigMapRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param ConfigMapName: ConfigMap名称
        # @type ConfigMapName: String
        # @param ConfigMapData: ConfigMap内容
        # @type ConfigMapData: Array
        # @param ConfigMapNamespace: ConfigMap命名空间,默认：default
        # @type ConfigMapNamespace: String

        attr_accessor :EdgeUnitID, :ConfigMapName, :ConfigMapData, :ConfigMapNamespace
        
        def initialize(edgeunitid=nil, configmapname=nil, configmapdata=nil, configmapnamespace=nil)
          @EdgeUnitID = edgeunitid
          @ConfigMapName = configmapname
          @ConfigMapData = configmapdata
          @ConfigMapNamespace = configmapnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @ConfigMapName = params['ConfigMapName']
          unless params['ConfigMapData'].nil?
            @ConfigMapData = []
            params['ConfigMapData'].each do |i|
              keyvalueobj_tmp = KeyValueObj.new
              keyvalueobj_tmp.deserialize(i)
              @ConfigMapData << keyvalueobj_tmp
            end
          end
          @ConfigMapNamespace = params['ConfigMapNamespace']
        end
      end

      # CreateConfigMap返回参数结构体
      class CreateConfigMapResponse < TencentCloud::Common::AbstractModel
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

      # CreateEdgeNodeGroup请求参数结构体
      class CreateEdgeNodeGroupRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Name: NodeGroup名称
        # @type Name: String
        # @param Namespace: 命名空间，不填默认为default
        # @type Namespace: String
        # @param Description: 描述
        # @type Description: String
        # @param NodeUnitTemplateIDs: 模版ID数组
        # @type NodeUnitTemplateIDs: Array

        attr_accessor :EdgeUnitId, :Name, :Namespace, :Description, :NodeUnitTemplateIDs
        
        def initialize(edgeunitid=nil, name=nil, namespace=nil, description=nil, nodeunittemplateids=nil)
          @EdgeUnitId = edgeunitid
          @Name = name
          @Namespace = namespace
          @Description = description
          @NodeUnitTemplateIDs = nodeunittemplateids
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Description = params['Description']
          @NodeUnitTemplateIDs = params['NodeUnitTemplateIDs']
        end
      end

      # CreateEdgeNodeGroup返回参数结构体
      class CreateEdgeNodeGroupResponse < TencentCloud::Common::AbstractModel
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

      # CreateEdgeNode请求参数结构体
      class CreateEdgeNodeRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Name: 节点名称
        # @type Name: String

        attr_accessor :EdgeUnitId, :Name
        
        def initialize(edgeunitid=nil, name=nil)
          @EdgeUnitId = edgeunitid
          @Name = name
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Name = params['Name']
        end
      end

      # CreateEdgeNode返回参数结构体
      class CreateEdgeNodeResponse < TencentCloud::Common::AbstractModel
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

      # CreateEdgeNodeUnitTemplate请求参数结构体
      class CreateEdgeNodeUnitTemplateRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Name: NodeUnit模板名称
        # @type Name: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String
        # @param Nodes: 包含的节点列表
        # @type Nodes: Array
        # @param Description: 描述
        # @type Description: String

        attr_accessor :EdgeUnitId, :Name, :Namespace, :Nodes, :Description
        
        def initialize(edgeunitid=nil, name=nil, namespace=nil, nodes=nil, description=nil)
          @EdgeUnitId = edgeunitid
          @Name = name
          @Namespace = namespace
          @Nodes = nodes
          @Description = description
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Nodes = params['Nodes']
          @Description = params['Description']
        end
      end

      # CreateEdgeNodeUnitTemplate返回参数结构体
      class CreateEdgeNodeUnitTemplateResponse < TencentCloud::Common::AbstractModel
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

      # CreateEdgeUnitApplicationVisualization请求参数结构体
      class CreateEdgeUnitApplicationVisualizationRequest < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 基本信息
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`
        # @param BasicConfig: 基本配置
        # @type BasicConfig: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicConfig`
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param Volumes: 卷列表
        # @type Volumes: Array
        # @param Service: 服务配置
        # @type Service: :class:`Tencentcloud::Iecp.v20210914.models.Service`
        # @param TemplateID: 模版ID
        # @type TemplateID: Integer
        # @param Job: Job配置
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`
        # @param CronJob: CronJob配置
        # @type CronJob: :class:`Tencentcloud::Iecp.v20210914.models.CronJob`
        # @param RestartPolicy: 重新运行策略
        # @type RestartPolicy: String
        # @param ImagePullSecrets: 镜像拉取密钥
        # @type ImagePullSecrets: Array
        # @param HorizontalPodAutoscaler: HPA配置
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Iecp.v20210914.models.HorizontalPodAutoscaler`
        # @param InitContainers: 初始化容器列表
        # @type InitContainers: Array
        # @param Containers: 容器列表
        # @type Containers: Array

        attr_accessor :BasicInfo, :BasicConfig, :EdgeUnitId, :Volumes, :Service, :TemplateID, :Job, :CronJob, :RestartPolicy, :ImagePullSecrets, :HorizontalPodAutoscaler, :InitContainers, :Containers
        
        def initialize(basicinfo=nil, basicconfig=nil, edgeunitid=nil, volumes=nil, service=nil, templateid=nil, job=nil, cronjob=nil, restartpolicy=nil, imagepullsecrets=nil, horizontalpodautoscaler=nil, initcontainers=nil, containers=nil)
          @BasicInfo = basicinfo
          @BasicConfig = basicconfig
          @EdgeUnitId = edgeunitid
          @Volumes = volumes
          @Service = service
          @TemplateID = templateid
          @Job = job
          @CronJob = cronjob
          @RestartPolicy = restartpolicy
          @ImagePullSecrets = imagepullsecrets
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @InitContainers = initcontainers
          @Containers = containers
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['BasicConfig'].nil?
            @BasicConfig = ApplicationBasicConfig.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          @EdgeUnitId = params['EdgeUnitId']
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
            end
          end
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          @TemplateID = params['TemplateID']
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          unless params['CronJob'].nil?
            @CronJob = CronJob.new
            @CronJob.deserialize(params['CronJob'])
          end
          @RestartPolicy = params['RestartPolicy']
          @ImagePullSecrets = params['ImagePullSecrets']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          unless params['InitContainers'].nil?
            @InitContainers = []
            params['InitContainers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @InitContainers << container_tmp
            end
          end
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
        end
      end

      # CreateEdgeUnitApplicationVisualization返回参数结构体
      class CreateEdgeUnitApplicationVisualizationResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :RequestId
        
        def initialize(applicationid=nil, requestid=nil)
          @ApplicationId = applicationid
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEdgeUnitApplicationYaml请求参数结构体
      class CreateEdgeUnitApplicationYamlRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param Yaml: base64后的Yaml配置
        # @type Yaml: String
        # @param BasicInfo: 基本信息
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`

        attr_accessor :EdgeUnitId, :Yaml, :BasicInfo
        
        def initialize(edgeunitid=nil, yaml=nil, basicinfo=nil)
          @EdgeUnitId = edgeunitid
          @Yaml = yaml
          @BasicInfo = basicinfo
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Yaml = params['Yaml']
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
        end
      end

      # CreateEdgeUnitApplicationYaml返回参数结构体
      class CreateEdgeUnitApplicationYamlResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :RequestId
        
        def initialize(applicationid=nil, requestid=nil)
          @ApplicationId = applicationid
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEdgeUnitCloud请求参数结构体
      class CreateEdgeUnitCloudRequest < TencentCloud::Common::AbstractModel
        # @param Name: 集群名称，长度小于32
        # @type Name: String
        # @param K8sVersion: k8s版本，仅支持1.16.7 和 1.18.2
        # @type K8sVersion: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param Description: 集群描述
        # @type Description: String
        # @param PodCIDR: 集群pod cidr， 默认  10.1.0.0/16
        # @type PodCIDR: String
        # @param ServiceCIDR: 集群service cidr, 默认 10.2.0.0/16
        # @type ServiceCIDR: String
        # @param OpenCloudMonitor: 是否开启监控。目前内存中权限开启联系产品开通白名单
        # @type OpenCloudMonitor: Boolean

        attr_accessor :Name, :K8sVersion, :VpcId, :Description, :PodCIDR, :ServiceCIDR, :OpenCloudMonitor
        
        def initialize(name=nil, k8sversion=nil, vpcid=nil, description=nil, podcidr=nil, servicecidr=nil, opencloudmonitor=nil)
          @Name = name
          @K8sVersion = k8sversion
          @VpcId = vpcid
          @Description = description
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
          @OpenCloudMonitor = opencloudmonitor
        end

        def deserialize(params)
          @Name = params['Name']
          @K8sVersion = params['K8sVersion']
          @VpcId = params['VpcId']
          @Description = params['Description']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
          @OpenCloudMonitor = params['OpenCloudMonitor']
        end
      end

      # CreateEdgeUnitCloud返回参数结构体
      class CreateEdgeUnitCloudResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: tke集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param EdgeUnitId: IECP集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdgeUnitId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :EdgeUnitId, :RequestId
        
        def initialize(clusterid=nil, edgeunitid=nil, requestid=nil)
          @ClusterId = clusterid
          @EdgeUnitId = edgeunitid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EdgeUnitId = params['EdgeUnitId']
          @RequestId = params['RequestId']
        end
      end

      # CreateNamespace请求参数结构体
      class CreateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Description: 描述信息
        # @type Description: String

        attr_accessor :EdgeUnitID, :Namespace, :Description
        
        def initialize(edgeunitid=nil, namespace=nil, description=nil)
          @EdgeUnitID = edgeunitid
          @Namespace = namespace
          @Description = description
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @Namespace = params['Namespace']
          @Description = params['Description']
        end
      end

      # CreateNamespace返回参数结构体
      class CreateNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # CreateSecret请求参数结构体
      class CreateSecretRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param SecretName: secret名
        # @type SecretName: String
        # @param SecretNamespace: 命名空间（默认:default）
        # @type SecretNamespace: String
        # @param SecretType: secret类型(取值范围:DockerConfigJson,Opaque 默认Opaque)
        # @type SecretType: String
        # @param DockerConfigJson: DockerConfig的序列化base64编码后的字符串
        # @type DockerConfigJson: String
        # @param CloudData: Opaque类型的Secret内容
        # @type CloudData: Array
        # @param DockerConfig: DockerConfig配置
        # @type DockerConfig: :class:`Tencentcloud::Iecp.v20210914.models.DockerConfig`

        attr_accessor :EdgeUnitID, :SecretName, :SecretNamespace, :SecretType, :DockerConfigJson, :CloudData, :DockerConfig
        
        def initialize(edgeunitid=nil, secretname=nil, secretnamespace=nil, secrettype=nil, dockerconfigjson=nil, clouddata=nil, dockerconfig=nil)
          @EdgeUnitID = edgeunitid
          @SecretName = secretname
          @SecretNamespace = secretnamespace
          @SecretType = secrettype
          @DockerConfigJson = dockerconfigjson
          @CloudData = clouddata
          @DockerConfig = dockerconfig
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @SecretName = params['SecretName']
          @SecretNamespace = params['SecretNamespace']
          @SecretType = params['SecretType']
          @DockerConfigJson = params['DockerConfigJson']
          unless params['CloudData'].nil?
            @CloudData = []
            params['CloudData'].each do |i|
              keyvalueobj_tmp = KeyValueObj.new
              keyvalueobj_tmp.deserialize(i)
              @CloudData << keyvalueobj_tmp
            end
          end
          unless params['DockerConfig'].nil?
            @DockerConfig = DockerConfig.new
            @DockerConfig.deserialize(params['DockerConfig'])
          end
        end
      end

      # CreateSecret返回参数结构体
      class CreateSecretResponse < TencentCloud::Common::AbstractModel
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

      # CreateUpdateNodeUnit请求参数结构体
      class CreateUpdateNodeUnitRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeGroupName: NodeUnit所属的NodeGroup名称
        # @type NodeGroupName: String
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String
        # @param NodeUnitName: NodeUnit名称，通过模版创建可不填
        # @type NodeUnitName: String
        # @param Nodes: NodeUnit包含的节点列表，通过模版创建可不填
        # @type Nodes: Array
        # @param NodeUnitTemplateIDs: NodeUnit模版ID列表
        # @type NodeUnitTemplateIDs: Array

        attr_accessor :EdgeUnitId, :NodeGroupName, :Namespace, :NodeUnitName, :Nodes, :NodeUnitTemplateIDs
        
        def initialize(edgeunitid=nil, nodegroupname=nil, namespace=nil, nodeunitname=nil, nodes=nil, nodeunittemplateids=nil)
          @EdgeUnitId = edgeunitid
          @NodeGroupName = nodegroupname
          @Namespace = namespace
          @NodeUnitName = nodeunitname
          @Nodes = nodes
          @NodeUnitTemplateIDs = nodeunittemplateids
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeGroupName = params['NodeGroupName']
          @Namespace = params['Namespace']
          @NodeUnitName = params['NodeUnitName']
          @Nodes = params['Nodes']
          @NodeUnitTemplateIDs = params['NodeUnitTemplateIDs']
        end
      end

      # CreateUpdateNodeUnit返回参数结构体
      class CreateUpdateNodeUnitResponse < TencentCloud::Common::AbstractModel
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

      # CronJob配置
      class CronJob < TencentCloud::Common::AbstractModel
        # @param Schedule: 调度配置
        # @type Schedule: String
        # @param StartingDeadlineSeconds: 运行时间
        # @type StartingDeadlineSeconds: Integer
        # @param ConcurrencyPolicy: job并行策略(Allow|Forbid|Replace)
        # @type ConcurrencyPolicy: String
        # @param Job: Job配置
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`

        attr_accessor :Schedule, :StartingDeadlineSeconds, :ConcurrencyPolicy, :Job
        
        def initialize(schedule=nil, startingdeadlineseconds=nil, concurrencypolicy=nil, job=nil)
          @Schedule = schedule
          @StartingDeadlineSeconds = startingdeadlineseconds
          @ConcurrencyPolicy = concurrencypolicy
          @Job = job
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @StartingDeadlineSeconds = params['StartingDeadlineSeconds']
          @ConcurrencyPolicy = params['ConcurrencyPolicy']
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
        end
      end

      # DeleteApplications请求参数结构体
      class DeleteApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationIds: 应用模板ID列表
        # @type ApplicationIds: Array

        attr_accessor :ApplicationIds
        
        def initialize(applicationids=nil)
          @ApplicationIds = applicationids
        end

        def deserialize(params)
          @ApplicationIds = params['ApplicationIds']
        end
      end

      # DeleteApplications返回参数结构体
      class DeleteApplicationsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteConfigMap请求参数结构体
      class DeleteConfigMapRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param ConfigMapName: ConfigMap名
        # @type ConfigMapName: String
        # @param ConfigMapNamespace: ConfigMap命名空间，默认：default
        # @type ConfigMapNamespace: String

        attr_accessor :EdgeUnitID, :ConfigMapName, :ConfigMapNamespace
        
        def initialize(edgeunitid=nil, configmapname=nil, configmapnamespace=nil)
          @EdgeUnitID = edgeunitid
          @ConfigMapName = configmapname
          @ConfigMapNamespace = configmapnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @ConfigMapName = params['ConfigMapName']
          @ConfigMapNamespace = params['ConfigMapNamespace']
        end
      end

      # DeleteConfigMap返回参数结构体
      class DeleteConfigMapResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeNodeGroup请求参数结构体
      class DeleteEdgeNodeGroupRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Name: NodeGroup名称
        # @type Name: String
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :Name, :Namespace
        
        def initialize(edgeunitid=nil, name=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @Name = name
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Name = params['Name']
          @Namespace = params['Namespace']
        end
      end

      # DeleteEdgeNodeGroup返回参数结构体
      class DeleteEdgeNodeGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeNodeUnitTemplates请求参数结构体
      class DeleteEdgeNodeUnitTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeUnitTemplateIDs: 删除的NodeUnit模板ID列表
        # @type NodeUnitTemplateIDs: Array

        attr_accessor :EdgeUnitId, :NodeUnitTemplateIDs
        
        def initialize(edgeunitid=nil, nodeunittemplateids=nil)
          @EdgeUnitId = edgeunitid
          @NodeUnitTemplateIDs = nodeunittemplateids
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeUnitTemplateIDs = params['NodeUnitTemplateIDs']
        end
      end

      # DeleteEdgeNodeUnitTemplates返回参数结构体
      class DeleteEdgeNodeUnitTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeNodes请求参数结构体
      class DeleteEdgeNodesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeIds: IECP边缘节点ID列表
        # @type NodeIds: Array

        attr_accessor :EdgeUnitId, :NodeIds
        
        def initialize(edgeunitid=nil, nodeids=nil)
          @EdgeUnitId = edgeunitid
          @NodeIds = nodeids
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeIds = params['NodeIds']
        end
      end

      # DeleteEdgeNodes返回参数结构体
      class DeleteEdgeNodesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeUnitApplications请求参数结构体
      class DeleteEdgeUnitApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param ApplicationIDs: 应用ID列表
        # @type ApplicationIDs: Array

        attr_accessor :EdgeUnitID, :ApplicationIDs
        
        def initialize(edgeunitid=nil, applicationids=nil)
          @EdgeUnitID = edgeunitid
          @ApplicationIDs = applicationids
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @ApplicationIDs = params['ApplicationIDs']
        end
      end

      # DeleteEdgeUnitApplications返回参数结构体
      class DeleteEdgeUnitApplicationsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeUnitCloud请求参数结构体
      class DeleteEdgeUnitCloudRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 边缘集群ID
        # @type EdgeUnitId: Integer

        attr_accessor :EdgeUnitId
        
        def initialize(edgeunitid=nil)
          @EdgeUnitId = edgeunitid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
        end
      end

      # DeleteEdgeUnitCloud返回参数结构体
      class DeleteEdgeUnitCloudResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeUnitDeployGridItem请求参数结构体
      class DeleteEdgeUnitDeployGridItemRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param WorkloadKind: 负载类型（StatefulSetGrid｜DeploymentGrid）
        # @type WorkloadKind: String
        # @param GridItemName: Grid部署名称
        # @type GridItemName: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :WorkloadKind, :GridItemName, :Namespace
        
        def initialize(edgeunitid=nil, workloadkind=nil, griditemname=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @WorkloadKind = workloadkind
          @GridItemName = griditemname
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @WorkloadKind = params['WorkloadKind']
          @GridItemName = params['GridItemName']
          @Namespace = params['Namespace']
        end
      end

      # DeleteEdgeUnitDeployGridItem返回参数结构体
      class DeleteEdgeUnitDeployGridItemResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEdgeUnitPod请求参数结构体
      class DeleteEdgeUnitPodRequest < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param PodName: Pod名称
        # @type PodName: String
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :ClusterID, :PodName, :Namespace
        
        def initialize(clusterid=nil, podname=nil, namespace=nil)
          @ClusterID = clusterid
          @PodName = podname
          @Namespace = namespace
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @PodName = params['PodName']
          @Namespace = params['Namespace']
        end
      end

      # DeleteEdgeUnitPod返回参数结构体
      class DeleteEdgeUnitPodResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNamespace请求参数结构体
      class DeleteNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :EdgeUnitID, :Namespace
        
        def initialize(edgeunitid=nil, namespace=nil)
          @EdgeUnitID = edgeunitid
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @Namespace = params['Namespace']
        end
      end

      # DeleteNamespace返回参数结构体
      class DeleteNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNodeUnit请求参数结构体
      class DeleteNodeUnitRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeGroupName: NodeUnit所属的NodeGroup名称
        # @type NodeGroupName: String
        # @param NodeUnitName: NodeUnit名称
        # @type NodeUnitName: String
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String
        # @param Nodes: NodeUnit包含的节点列表
        # @type Nodes: Array

        attr_accessor :EdgeUnitId, :NodeGroupName, :NodeUnitName, :Namespace, :Nodes
        
        def initialize(edgeunitid=nil, nodegroupname=nil, nodeunitname=nil, namespace=nil, nodes=nil)
          @EdgeUnitId = edgeunitid
          @NodeGroupName = nodegroupname
          @NodeUnitName = nodeunitname
          @Namespace = namespace
          @Nodes = nodes
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeGroupName = params['NodeGroupName']
          @NodeUnitName = params['NodeUnitName']
          @Namespace = params['Namespace']
          @Nodes = params['Nodes']
        end
      end

      # DeleteNodeUnit返回参数结构体
      class DeleteNodeUnitResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecret请求参数结构体
      class DeleteSecretRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param SecretName: secret名称
        # @type SecretName: String
        # @param SecretNamespace: secret命名空间（默认:default）
        # @type SecretNamespace: String

        attr_accessor :EdgeUnitID, :SecretName, :SecretNamespace
        
        def initialize(edgeunitid=nil, secretname=nil, secretnamespace=nil)
          @EdgeUnitID = edgeunitid
          @SecretName = secretname
          @SecretNamespace = secretnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @SecretName = params['SecretName']
          @SecretNamespace = params['SecretNamespace']
        end
      end

      # DeleteSecret返回参数结构体
      class DeleteSecretResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApplicationVisualization请求参数结构体
      class DescribeApplicationVisualizationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用模板ID
        # @type ApplicationId: Integer

        attr_accessor :ApplicationId
        
        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeApplicationVisualization返回参数结构体
      class DescribeApplicationVisualizationResponse < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`
        # @param BasicConfig: 基本配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicConfig: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicConfig`
        # @param Volumes: 卷配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Volumes: Array
        # @param InitContainers: 初始化容器配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitContainers: Array
        # @param Containers: 容器配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Containers: Array
        # @param Service: 服务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: :class:`Tencentcloud::Iecp.v20210914.models.Service`
        # @param Job: Job配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`
        # @param CronJob: CronJob配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronJob: :class:`Tencentcloud::Iecp.v20210914.models.CronJob`
        # @param RestartPolicy: 重启策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartPolicy: String
        # @param HorizontalPodAutoscaler: HPA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Iecp.v20210914.models.HorizontalPodAutoscaler`
        # @param ImagePullSecrets: 镜像拉取Secret
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImagePullSecrets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BasicInfo, :BasicConfig, :Volumes, :InitContainers, :Containers, :Service, :Job, :CronJob, :RestartPolicy, :HorizontalPodAutoscaler, :ImagePullSecrets, :RequestId
        
        def initialize(basicinfo=nil, basicconfig=nil, volumes=nil, initcontainers=nil, containers=nil, service=nil, job=nil, cronjob=nil, restartpolicy=nil, horizontalpodautoscaler=nil, imagepullsecrets=nil, requestid=nil)
          @BasicInfo = basicinfo
          @BasicConfig = basicconfig
          @Volumes = volumes
          @InitContainers = initcontainers
          @Containers = containers
          @Service = service
          @Job = job
          @CronJob = cronjob
          @RestartPolicy = restartpolicy
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @ImagePullSecrets = imagepullsecrets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['BasicConfig'].nil?
            @BasicConfig = ApplicationBasicConfig.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
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
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          unless params['CronJob'].nil?
            @CronJob = CronJob.new
            @CronJob.deserialize(params['CronJob'])
          end
          @RestartPolicy = params['RestartPolicy']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          @ImagePullSecrets = params['ImagePullSecrets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationYamlError请求参数结构体
      class DescribeApplicationYamlErrorRequest < TencentCloud::Common::AbstractModel
        # @param Yaml: Yaml配置
        # @type Yaml: String

        attr_accessor :Yaml
        
        def initialize(yaml=nil)
          @Yaml = yaml
        end

        def deserialize(params)
          @Yaml = params['Yaml']
        end
      end

      # DescribeApplicationYamlError返回参数结构体
      class DescribeApplicationYamlErrorResponse < TencentCloud::Common::AbstractModel
        # @param CheckPass: 是否通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPass: Boolean
        # @param ErrType: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrType: Integer
        # @param ErrInfo: 错误信息
        # @type ErrInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPass, :ErrType, :ErrInfo, :RequestId
        
        def initialize(checkpass=nil, errtype=nil, errinfo=nil, requestid=nil)
          @CheckPass = checkpass
          @ErrType = errtype
          @ErrInfo = errinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPass = params['CheckPass']
          @ErrType = params['ErrType']
          @ErrInfo = params['ErrInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationYaml请求参数结构体
      class DescribeApplicationYamlRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用模板ID
        # @type ApplicationId: Integer

        attr_accessor :ApplicationId
        
        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeApplicationYaml返回参数结构体
      class DescribeApplicationYamlResponse < TencentCloud::Common::AbstractModel
        # @param Yaml: base64 后的yaml
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Yaml, :RequestId
        
        def initialize(yaml=nil, requestid=nil)
          @Yaml = yaml
          @RequestId = requestid
        end

        def deserialize(params)
          @Yaml = params['Yaml']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplications请求参数结构体
      class DescribeApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param NamePattern: 模糊搜索字符串
        # @type NamePattern: String
        # @param Offset: 默认 0
        # @type Offset: Integer
        # @param Limit: 默认 20
        # @type Limit: Integer
        # @param Sort: 仅支持对 DistributeTime 字段排序，ASC/DESC
        # @type Sort: Array

        attr_accessor :NamePattern, :Offset, :Limit, :Sort
        
        def initialize(namepattern=nil, offset=nil, limit=nil, sort=nil)
          @NamePattern = namepattern
          @Offset = offset
          @Limit = limit
          @Sort = sort
        end

        def deserialize(params)
          @NamePattern = params['NamePattern']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Sort'].nil?
            @Sort = []
            params['Sort'].each do |i|
              fieldsort_tmp = FieldSort.new
              fieldsort_tmp.deserialize(i)
              @Sort << fieldsort_tmp
            end
          end
        end
      end

      # DescribeApplications返回参数结构体
      class DescribeApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApplicationSet: 详细列表
        # @type ApplicationSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplicationSet, :RequestId
        
        def initialize(totalcount=nil, applicationset=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplicationSet = applicationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApplicationSet'].nil?
            @ApplicationSet = []
            params['ApplicationSet'].each do |i|
              applicationtemplate_tmp = ApplicationTemplate.new
              applicationtemplate_tmp.deserialize(i)
              @ApplicationSet << applicationtemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigMap请求参数结构体
      class DescribeConfigMapRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param ConfigMapName: ConfigMap名称
        # @type ConfigMapName: String
        # @param ConfigMapNamespace: ConfigMap命名空间
        # @type ConfigMapNamespace: String

        attr_accessor :EdgeUnitID, :ConfigMapName, :ConfigMapNamespace
        
        def initialize(edgeunitid=nil, configmapname=nil, configmapnamespace=nil)
          @EdgeUnitID = edgeunitid
          @ConfigMapName = configmapname
          @ConfigMapNamespace = configmapnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @ConfigMapName = params['ConfigMapName']
          @ConfigMapNamespace = params['ConfigMapNamespace']
        end
      end

      # DescribeConfigMap返回参数结构体
      class DescribeConfigMapResponse < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Yaml: yaml配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String
        # @param Json: 配置项的json格式(base64编码)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Json: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Namespace, :CreateTime, :Yaml, :Json, :RequestId
        
        def initialize(name=nil, namespace=nil, createtime=nil, yaml=nil, json=nil, requestid=nil)
          @Name = name
          @Namespace = namespace
          @CreateTime = createtime
          @Yaml = yaml
          @Json = json
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @CreateTime = params['CreateTime']
          @Yaml = params['Yaml']
          @Json = params['Json']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigMapYamlError请求参数结构体
      class DescribeConfigMapYamlErrorRequest < TencentCloud::Common::AbstractModel
        # @param Yaml: yaml文件
        # @type Yaml: String

        attr_accessor :Yaml
        
        def initialize(yaml=nil)
          @Yaml = yaml
        end

        def deserialize(params)
          @Yaml = params['Yaml']
        end
      end

      # DescribeConfigMapYamlError返回参数结构体
      class DescribeConfigMapYamlErrorResponse < TencentCloud::Common::AbstractModel
        # @param CheckPass: 校验是通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPass: Boolean
        # @param ErrType: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrType: Integer
        # @param ErrInfo: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPass, :ErrType, :ErrInfo, :RequestId
        
        def initialize(checkpass=nil, errtype=nil, errinfo=nil, requestid=nil)
          @CheckPass = checkpass
          @ErrType = errtype
          @ErrInfo = errinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPass = params['CheckPass']
          @ErrType = params['ErrType']
          @ErrInfo = params['ErrInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigMaps请求参数结构体
      class DescribeConfigMapsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param Offset: 翻页偏移量
        # @type Offset: Integer
        # @param Limit: 每页大小(最大100)
        # @type Limit: Integer
        # @param ConfigMapNamespace: 命名空间
        # @type ConfigMapNamespace: String
        # @param NamePattern: 模糊匹配的名称
        # @type NamePattern: String
        # @param Sort: Sort.Fileld填写CreateTime Sort.Order(ASC|DESC) 默认ASC
        # @type Sort: :class:`Tencentcloud::Iecp.v20210914.models.FieldSort`

        attr_accessor :EdgeUnitID, :Offset, :Limit, :ConfigMapNamespace, :NamePattern, :Sort
        
        def initialize(edgeunitid=nil, offset=nil, limit=nil, configmapnamespace=nil, namepattern=nil, sort=nil)
          @EdgeUnitID = edgeunitid
          @Offset = offset
          @Limit = limit
          @ConfigMapNamespace = configmapnamespace
          @NamePattern = namepattern
          @Sort = sort
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConfigMapNamespace = params['ConfigMapNamespace']
          @NamePattern = params['NamePattern']
          unless params['Sort'].nil?
            @Sort = FieldSort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribeConfigMaps返回参数结构体
      class DescribeConfigMapsResponse < TencentCloud::Common::AbstractModel
        # @param Items: ConfigMap列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId
        
        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              configmapbasicinfo_tmp = ConfigMapBasicInfo.new
              configmapbasicinfo_tmp.deserialize(i)
              @Items << configmapbasicinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeAgentNodeInstaller请求参数结构体
      class DescribeEdgeAgentNodeInstallerRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeId: IECP边缘节点ID
        # @type NodeId: Integer

        attr_accessor :EdgeUnitId, :NodeId
        
        def initialize(edgeunitid=nil, nodeid=nil)
          @EdgeUnitId = edgeunitid
          @NodeId = nodeid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeId = params['NodeId']
        end
      end

      # DescribeEdgeAgentNodeInstaller返回参数结构体
      class DescribeEdgeAgentNodeInstallerResponse < TencentCloud::Common::AbstractModel
        # @param Online: 节点在线安装信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Online: :class:`Tencentcloud::Iecp.v20210914.models.EdgeNodeInstallerOnline`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Online, :RequestId
        
        def initialize(online=nil, requestid=nil)
          @Online = online
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Online'].nil?
            @Online = EdgeNodeInstallerOnline.new
            @Online.deserialize(params['Online'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeDefaultVpc请求参数结构体
      class DescribeEdgeDefaultVpcRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEdgeDefaultVpc返回参数结构体
      class DescribeEdgeDefaultVpcResponse < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcCidrBlock: 网络CIDR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcCidrBlock: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param SubnetCidrBlock: 子网CIDR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetCidrBlock: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcId, :VpcCidrBlock, :SubnetId, :SubnetCidrBlock, :RequestId
        
        def initialize(vpcid=nil, vpccidrblock=nil, subnetid=nil, subnetcidrblock=nil, requestid=nil)
          @VpcId = vpcid
          @VpcCidrBlock = vpccidrblock
          @SubnetId = subnetid
          @SubnetCidrBlock = subnetcidrblock
          @RequestId = requestid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetId = params['SubnetId']
          @SubnetCidrBlock = params['SubnetCidrBlock']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeNodePodContainers请求参数结构体
      class DescribeEdgeNodePodContainersRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeId: 节点ID
        # @type NodeId: Integer
        # @param PodName: Pod名称
        # @type PodName: String
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :NodeId, :PodName, :Namespace
        
        def initialize(edgeunitid=nil, nodeid=nil, podname=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @NodeId = nodeid
          @PodName = podname
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeId = params['NodeId']
          @PodName = params['PodName']
          @Namespace = params['Namespace']
        end
      end

      # DescribeEdgeNodePodContainers返回参数结构体
      class DescribeEdgeNodePodContainersResponse < TencentCloud::Common::AbstractModel
        # @param ContainerSet: Pod容器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerSet, :RequestId
        
        def initialize(containerset=nil, requestid=nil)
          @ContainerSet = containerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContainerSet'].nil?
            @ContainerSet = []
            params['ContainerSet'].each do |i|
              edgenodepodcontainerinfo_tmp = EdgeNodePodContainerInfo.new
              edgenodepodcontainerinfo_tmp.deserialize(i)
              @ContainerSet << edgenodepodcontainerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeNodePods请求参数结构体
      class DescribeEdgeNodePodsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeId: 节点ID
        # @type NodeId: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param PodNamePattern: Pod名称过滤串
        # @type PodNamePattern: String

        attr_accessor :EdgeUnitId, :NodeId, :Namespace, :PodNamePattern
        
        def initialize(edgeunitid=nil, nodeid=nil, namespace=nil, podnamepattern=nil)
          @EdgeUnitId = edgeunitid
          @NodeId = nodeid
          @Namespace = namespace
          @PodNamePattern = podnamepattern
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeId = params['NodeId']
          @Namespace = params['Namespace']
          @PodNamePattern = params['PodNamePattern']
        end
      end

      # DescribeEdgeNodePods返回参数结构体
      class DescribeEdgeNodePodsResponse < TencentCloud::Common::AbstractModel
        # @param PodSet: Pod列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PodSet, :RequestId
        
        def initialize(podset=nil, requestid=nil)
          @PodSet = podset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PodSet'].nil?
            @PodSet = []
            params['PodSet'].each do |i|
              edgenodepodinfo_tmp = EdgeNodePodInfo.new
              edgenodepodinfo_tmp.deserialize(i)
              @PodSet << edgenodepodinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeNode请求参数结构体
      class DescribeEdgeNodeRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeId: IECP边缘节点ID
        # @type NodeId: Integer

        attr_accessor :EdgeUnitId, :NodeId
        
        def initialize(edgeunitid=nil, nodeid=nil)
          @EdgeUnitId = edgeunitid
          @NodeId = nodeid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeId = params['NodeId']
        end
      end

      # DescribeEdgeNode返回参数结构体
      class DescribeEdgeNodeResponse < TencentCloud::Common::AbstractModel
        # @param Id: 节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Kind: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param Name: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 节点状态 （1健康｜2异常｜3离线｜4未激活）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CpuArchitecture: CPU体系结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuArchitecture: String
        # @param AiChipArchitecture: AI处理器体系结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiChipArchitecture: String
        # @param Ip: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Labels: 节点标签列表
        # @type Labels: Array
        # @param Resource: 节点资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Iecp.v20210914.models.EdgeNodeResourceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Kind, :Name, :Status, :CpuArchitecture, :AiChipArchitecture, :Ip, :Labels, :Resource, :RequestId
        
        def initialize(id=nil, kind=nil, name=nil, status=nil, cpuarchitecture=nil, aichiparchitecture=nil, ip=nil, labels=nil, resource=nil, requestid=nil)
          @Id = id
          @Kind = kind
          @Name = name
          @Status = status
          @CpuArchitecture = cpuarchitecture
          @AiChipArchitecture = aichiparchitecture
          @Ip = ip
          @Labels = labels
          @Resource = resource
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Kind = params['Kind']
          @Name = params['Name']
          @Status = params['Status']
          @CpuArchitecture = params['CpuArchitecture']
          @AiChipArchitecture = params['AiChipArchitecture']
          @Ip = params['Ip']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              edgenodelabel_tmp = EdgeNodeLabel.new
              edgenodelabel_tmp.deserialize(i)
              @Labels << edgenodelabel_tmp
            end
          end
          unless params['Resource'].nil?
            @Resource = EdgeNodeResourceInfo.new
            @Resource.deserialize(params['Resource'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeNodes请求参数结构体
      class DescribeEdgeNodesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NamePattern: 边缘节点名称模糊搜索串
        # @type NamePattern: String
        # @param NameMatchedList: 边缘节点名称列表，支持批量查询 ，优先于模糊查询
        # @type NameMatchedList: Array
        # @param Sort: 排序信息列表
        # @type Sort: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 页面大小Limit
        # @type Limit: Integer
        # @param NodeType: 节点类型
        # @type NodeType: Integer

        attr_accessor :EdgeUnitId, :NamePattern, :NameMatchedList, :Sort, :Offset, :Limit, :NodeType
        
        def initialize(edgeunitid=nil, namepattern=nil, namematchedlist=nil, sort=nil, offset=nil, limit=nil, nodetype=nil)
          @EdgeUnitId = edgeunitid
          @NamePattern = namepattern
          @NameMatchedList = namematchedlist
          @Sort = sort
          @Offset = offset
          @Limit = limit
          @NodeType = nodetype
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NamePattern = params['NamePattern']
          @NameMatchedList = params['NameMatchedList']
          unless params['Sort'].nil?
            @Sort = []
            params['Sort'].each do |i|
              sort_tmp = Sort.new
              sort_tmp.deserialize(i)
              @Sort << sort_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NodeType = params['NodeType']
        end
      end

      # DescribeEdgeNodes返回参数结构体
      class DescribeEdgeNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 边缘节点数量
        # @type TotalCount: Integer
        # @param NodeSet: 节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NodeSet, :RequestId
        
        def initialize(totalcount=nil, nodeset=nil, requestid=nil)
          @TotalCount = totalcount
          @NodeSet = nodeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              edgenodeinfo_tmp = EdgeNodeInfo.new
              edgenodeinfo_tmp.deserialize(i)
              @NodeSet << edgenodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeOperationLogs请求参数结构体
      class DescribeEdgeOperationLogsRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param Sort: 排序字段
        # @type Sort: Array
        # @param Module: 模块
        # @type Module: String
        # @param Condition: 过滤条件
        # @type Condition: :class:`Tencentcloud::Iecp.v20210914.models.OperationLogsCondition`

        attr_accessor :BeginTime, :EndTime, :Offset, :Limit, :Sort, :Module, :Condition
        
        def initialize(begintime=nil, endtime=nil, offset=nil, limit=nil, sort=nil, _module=nil, condition=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Sort = sort
          @Module = _module
          @Condition = condition
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Sort'].nil?
            @Sort = []
            params['Sort'].each do |i|
              fieldsort_tmp = FieldSort.new
              fieldsort_tmp.deserialize(i)
              @Sort << fieldsort_tmp
            end
          end
          @Module = params['Module']
          unless params['Condition'].nil?
            @Condition = OperationLogsCondition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # DescribeEdgeOperationLogs返回参数结构体
      class DescribeEdgeOperationLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param OperationLogSet: 操作日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationLogSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OperationLogSet, :RequestId
        
        def initialize(totalcount=nil, operationlogset=nil, requestid=nil)
          @TotalCount = totalcount
          @OperationLogSet = operationlogset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OperationLogSet'].nil?
            @OperationLogSet = []
            params['OperationLogSet'].each do |i|
              operationlog_tmp = OperationLog.new
              operationlog_tmp.deserialize(i)
              @OperationLogSet << operationlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgePod请求参数结构体
      class DescribeEdgePodRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Name: Pod名称
        # @type Name: String

        attr_accessor :EdgeUnitId, :Namespace, :Name
        
        def initialize(edgeunitid=nil, namespace=nil, name=nil)
          @EdgeUnitId = edgeunitid
          @Namespace = namespace
          @Name = name
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Namespace = params['Namespace']
          @Name = params['Name']
        end
      end

      # DescribeEdgePod返回参数结构体
      class DescribeEdgePodResponse < TencentCloud::Common::AbstractModel
        # @param Pod: Pod详情信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pod: :class:`Tencentcloud::Iecp.v20210914.models.EdgeNodePodInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Pod, :RequestId
        
        def initialize(pod=nil, requestid=nil)
          @Pod = pod
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Pod'].nil?
            @Pod = EdgeNodePodInfo.new
            @Pod.deserialize(params['Pod'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationEvents请求参数结构体
      class DescribeEdgeUnitApplicationEventsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer

        attr_accessor :EdgeUnitId, :ApplicationId
        
        def initialize(edgeunitid=nil, applicationid=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeEdgeUnitApplicationEvents返回参数结构体
      class DescribeEdgeUnitApplicationEventsResponse < TencentCloud::Common::AbstractModel
        # @param EventSet: 事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventSet, :RequestId
        
        def initialize(eventset=nil, requestid=nil)
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @EventSet << event_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationLogs请求参数结构体
      class DescribeEdgeUnitApplicationLogsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer
        # @param Limit: 最大条数
        # @type Limit: Integer
        # @param PodName: Pod名
        # @type PodName: String
        # @param ContainerName: 容器名
        # @type ContainerName: String

        attr_accessor :EdgeUnitId, :ApplicationId, :Limit, :PodName, :ContainerName
        
        def initialize(edgeunitid=nil, applicationid=nil, limit=nil, podname=nil, containername=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
          @Limit = limit
          @PodName = podname
          @ContainerName = containername
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
          @Limit = params['Limit']
          @PodName = params['PodName']
          @ContainerName = params['ContainerName']
        end
      end

      # DescribeEdgeUnitApplicationLogs返回参数结构体
      class DescribeEdgeUnitApplicationLogsResponse < TencentCloud::Common::AbstractModel
        # @param LogSet: 日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogSet, :RequestId
        
        def initialize(logset=nil, requestid=nil)
          @LogSet = logset
          @RequestId = requestid
        end

        def deserialize(params)
          @LogSet = params['LogSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationPodContainers请求参数结构体
      class DescribeEdgeUnitApplicationPodContainersRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer
        # @param PodName: Pod名
        # @type PodName: String

        attr_accessor :EdgeUnitId, :ApplicationId, :PodName
        
        def initialize(edgeunitid=nil, applicationid=nil, podname=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
          @PodName = podname
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
          @PodName = params['PodName']
        end
      end

      # DescribeEdgeUnitApplicationPodContainers返回参数结构体
      class DescribeEdgeUnitApplicationPodContainersResponse < TencentCloud::Common::AbstractModel
        # @param ContainerSet: 容器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerSet, :RequestId
        
        def initialize(containerset=nil, requestid=nil)
          @ContainerSet = containerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContainerSet'].nil?
            @ContainerSet = []
            params['ContainerSet'].each do |i|
              containerstatus_tmp = ContainerStatus.new
              containerstatus_tmp.deserialize(i)
              @ContainerSet << containerstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationPods请求参数结构体
      class DescribeEdgeUnitApplicationPodsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer

        attr_accessor :EdgeUnitId, :ApplicationId
        
        def initialize(edgeunitid=nil, applicationid=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeEdgeUnitApplicationPods返回参数结构体
      class DescribeEdgeUnitApplicationPodsResponse < TencentCloud::Common::AbstractModel
        # @param PodSet: Pod列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PodSet, :RequestId
        
        def initialize(podset=nil, requestid=nil)
          @PodSet = podset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PodSet'].nil?
            @PodSet = []
            params['PodSet'].each do |i|
              podstatus_tmp = PodStatus.new
              podstatus_tmp.deserialize(i)
              @PodSet << podstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationVisualization请求参数结构体
      class DescribeEdgeUnitApplicationVisualizationRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer

        attr_accessor :EdgeUnitId, :ApplicationId
        
        def initialize(edgeunitid=nil, applicationid=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeEdgeUnitApplicationVisualization返回参数结构体
      class DescribeEdgeUnitApplicationVisualizationResponse < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`
        # @param BasicConfig: 基本配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicConfig: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicConfig`
        # @param Volumes: 卷配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Volumes: Array
        # @param InitContainers: 初始化容器配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitContainers: Array
        # @param Containers: 容器配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Containers: Array
        # @param Service: 服务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: :class:`Tencentcloud::Iecp.v20210914.models.Service`
        # @param Job: Job配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`
        # @param CronJob: CronJob配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronJob: :class:`Tencentcloud::Iecp.v20210914.models.CronJob`
        # @param RestartPolicy: 重启策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartPolicy: String
        # @param HorizontalPodAutoscaler: HPA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Iecp.v20210914.models.HorizontalPodAutoscaler`
        # @param ImagePullSecrets: 镜像拉取Secret
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImagePullSecrets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BasicInfo, :BasicConfig, :Volumes, :InitContainers, :Containers, :Service, :Job, :CronJob, :RestartPolicy, :HorizontalPodAutoscaler, :ImagePullSecrets, :RequestId
        
        def initialize(basicinfo=nil, basicconfig=nil, volumes=nil, initcontainers=nil, containers=nil, service=nil, job=nil, cronjob=nil, restartpolicy=nil, horizontalpodautoscaler=nil, imagepullsecrets=nil, requestid=nil)
          @BasicInfo = basicinfo
          @BasicConfig = basicconfig
          @Volumes = volumes
          @InitContainers = initcontainers
          @Containers = containers
          @Service = service
          @Job = job
          @CronJob = cronjob
          @RestartPolicy = restartpolicy
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @ImagePullSecrets = imagepullsecrets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['BasicConfig'].nil?
            @BasicConfig = ApplicationBasicConfig.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
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
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          unless params['CronJob'].nil?
            @CronJob = CronJob.new
            @CronJob.deserialize(params['CronJob'])
          end
          @RestartPolicy = params['RestartPolicy']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          @ImagePullSecrets = params['ImagePullSecrets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationYamlError请求参数结构体
      class DescribeEdgeUnitApplicationYamlErrorRequest < TencentCloud::Common::AbstractModel
        # @param Yaml: Yaml配置
        # @type Yaml: String

        attr_accessor :Yaml
        
        def initialize(yaml=nil)
          @Yaml = yaml
        end

        def deserialize(params)
          @Yaml = params['Yaml']
        end
      end

      # DescribeEdgeUnitApplicationYamlError返回参数结构体
      class DescribeEdgeUnitApplicationYamlErrorResponse < TencentCloud::Common::AbstractModel
        # @param CheckPass: 是否通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPass: Boolean
        # @param ErrType: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrType: Integer
        # @param ErrInfo: 错误信息
        # @type ErrInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPass, :ErrType, :ErrInfo, :RequestId
        
        def initialize(checkpass=nil, errtype=nil, errinfo=nil, requestid=nil)
          @CheckPass = checkpass
          @ErrType = errtype
          @ErrInfo = errinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPass = params['CheckPass']
          @ErrType = params['ErrType']
          @ErrInfo = params['ErrInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplicationYaml请求参数结构体
      class DescribeEdgeUnitApplicationYamlRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer

        attr_accessor :EdgeUnitId, :ApplicationId
        
        def initialize(edgeunitid=nil, applicationid=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeEdgeUnitApplicationYaml返回参数结构体
      class DescribeEdgeUnitApplicationYamlResponse < TencentCloud::Common::AbstractModel
        # @param Yaml: Yaml配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Yaml, :RequestId
        
        def initialize(yaml=nil, requestid=nil)
          @Yaml = yaml
          @RequestId = requestid
        end

        def deserialize(params)
          @Yaml = params['Yaml']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitApplications请求参数结构体
      class DescribeEdgeUnitApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param Offset: 翻页偏移
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param NamePattern: 名称模糊匹配
        # @type NamePattern: String
        # @param Sort: 字段排序 (Sort.Filed为:StartTime）
        # @type Sort: Array
        # @param Namespace: 命名空间过滤
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :Offset, :Limit, :NamePattern, :Sort, :Namespace
        
        def initialize(edgeunitid=nil, offset=nil, limit=nil, namepattern=nil, sort=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @Offset = offset
          @Limit = limit
          @NamePattern = namepattern
          @Sort = sort
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NamePattern = params['NamePattern']
          unless params['Sort'].nil?
            @Sort = []
            params['Sort'].each do |i|
              fieldsort_tmp = FieldSort.new
              fieldsort_tmp.deserialize(i)
              @Sort << fieldsort_tmp
            end
          end
          @Namespace = params['Namespace']
        end
      end

      # DescribeEdgeUnitApplications返回参数结构体
      class DescribeEdgeUnitApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApplicationSet: 应用列表
        # @type ApplicationSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplicationSet, :RequestId
        
        def initialize(totalcount=nil, applicationset=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplicationSet = applicationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApplicationSet'].nil?
            @ApplicationSet = []
            params['ApplicationSet'].each do |i|
              applicationstatusinfo_tmp = ApplicationStatusInfo.new
              applicationstatusinfo_tmp.deserialize(i)
              @ApplicationSet << applicationstatusinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitCloud请求参数结构体
      class DescribeEdgeUnitCloudRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 边缘集群ID
        # @type EdgeUnitId: Integer

        attr_accessor :EdgeUnitId
        
        def initialize(edgeunitid=nil)
          @EdgeUnitId = edgeunitid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
        end
      end

      # DescribeEdgeUnitCloud返回参数结构体
      class DescribeEdgeUnitCloudResponse < TencentCloud::Common::AbstractModel
        # @param Name: 边缘集群名称
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param LiveTime: 集群最后探活时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveTime: String
        # @param MasterStatus: 集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterStatus: String
        # @param K8sVersion: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8sVersion: String
        # @param PodCIDR: pod cidr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodCIDR: String
        # @param ServiceCIDR: service cidr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCIDR: String
        # @param APIServerAddress: 集群内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APIServerAddress: String
        # @param APIServerExposeAddress: 集群外网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APIServerExposeAddress: String
        # @param UID: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UID: String
        # @param UnitID: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitID: Integer
        # @param Cluster: 集群标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cluster: String
        # @param Node: 节点统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Node: :class:`Tencentcloud::Iecp.v20210914.models.EdgeUnitStatisticItem`
        # @param Workload: 工作负载统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Workload: :class:`Tencentcloud::Iecp.v20210914.models.EdgeUnitStatisticItem`
        # @param Grid: Grid应用统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grid: :class:`Tencentcloud::Iecp.v20210914.models.EdgeUnitStatisticItem`
        # @param SubDevice: 设备统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubDevice: :class:`Tencentcloud::Iecp.v20210914.models.EdgeUnitStatisticItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :CreateTime, :UpdateTime, :LiveTime, :MasterStatus, :K8sVersion, :PodCIDR, :ServiceCIDR, :APIServerAddress, :APIServerExposeAddress, :UID, :UnitID, :Cluster, :Node, :Workload, :Grid, :SubDevice, :RequestId
        
        def initialize(name=nil, description=nil, createtime=nil, updatetime=nil, livetime=nil, masterstatus=nil, k8sversion=nil, podcidr=nil, servicecidr=nil, apiserveraddress=nil, apiserverexposeaddress=nil, uid=nil, unitid=nil, cluster=nil, node=nil, workload=nil, grid=nil, subdevice=nil, requestid=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LiveTime = livetime
          @MasterStatus = masterstatus
          @K8sVersion = k8sversion
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
          @APIServerAddress = apiserveraddress
          @APIServerExposeAddress = apiserverexposeaddress
          @UID = uid
          @UnitID = unitid
          @Cluster = cluster
          @Node = node
          @Workload = workload
          @Grid = grid
          @SubDevice = subdevice
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LiveTime = params['LiveTime']
          @MasterStatus = params['MasterStatus']
          @K8sVersion = params['K8sVersion']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
          @APIServerAddress = params['APIServerAddress']
          @APIServerExposeAddress = params['APIServerExposeAddress']
          @UID = params['UID']
          @UnitID = params['UnitID']
          @Cluster = params['Cluster']
          unless params['Node'].nil?
            @Node = EdgeUnitStatisticItem.new
            @Node.deserialize(params['Node'])
          end
          unless params['Workload'].nil?
            @Workload = EdgeUnitStatisticItem.new
            @Workload.deserialize(params['Workload'])
          end
          unless params['Grid'].nil?
            @Grid = EdgeUnitStatisticItem.new
            @Grid.deserialize(params['Grid'])
          end
          unless params['SubDevice'].nil?
            @SubDevice = EdgeUnitStatisticItem.new
            @SubDevice.deserialize(params['SubDevice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitDeployGridItem请求参数结构体
      class DescribeEdgeUnitDeployGridItemRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 边缘单元ID
        # @type EdgeUnitId: Integer
        # @param GridName: Grid名称
        # @type GridName: String
        # @param WorkloadKind: 负载类型（StatefulSetGrid｜DeploymentGrid）
        # @type WorkloadKind: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String
        # @param Order: 排序，默认ASC
        # @type Order: String

        attr_accessor :EdgeUnitId, :GridName, :WorkloadKind, :Namespace, :Order
        
        def initialize(edgeunitid=nil, gridname=nil, workloadkind=nil, namespace=nil, order=nil)
          @EdgeUnitId = edgeunitid
          @GridName = gridname
          @WorkloadKind = workloadkind
          @Namespace = namespace
          @Order = order
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @GridName = params['GridName']
          @WorkloadKind = params['WorkloadKind']
          @Namespace = params['Namespace']
          @Order = params['Order']
        end
      end

      # DescribeEdgeUnitDeployGridItem返回参数结构体
      class DescribeEdgeUnitDeployGridItemResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param DeploySet: Grid部署列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeploySet, :RequestId
        
        def initialize(totalcount=nil, deployset=nil, requestid=nil)
          @TotalCount = totalcount
          @DeploySet = deployset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeploySet'].nil?
            @DeploySet = []
            params['DeploySet'].each do |i|
              griditeminfo_tmp = GridItemInfo.new
              griditeminfo_tmp.deserialize(i)
              @DeploySet << griditeminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitDeployGridItemYaml请求参数结构体
      class DescribeEdgeUnitDeployGridItemYamlRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param WorkloadKind: 负载类型（StatefulSetGrid｜DeploymentGrid）
        # @type WorkloadKind: String
        # @param GridItemName: Grid部署项名称
        # @type GridItemName: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :WorkloadKind, :GridItemName, :Namespace
        
        def initialize(edgeunitid=nil, workloadkind=nil, griditemname=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @WorkloadKind = workloadkind
          @GridItemName = griditemname
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @WorkloadKind = params['WorkloadKind']
          @GridItemName = params['GridItemName']
          @Namespace = params['Namespace']
        end
      end

      # DescribeEdgeUnitDeployGridItemYaml返回参数结构体
      class DescribeEdgeUnitDeployGridItemYamlResponse < TencentCloud::Common::AbstractModel
        # @param Yaml: yaml，base64编码字符串
        # @type Yaml: String
        # @param Replicas: 对应类型的副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Yaml, :Replicas, :RequestId
        
        def initialize(yaml=nil, replicas=nil, requestid=nil)
          @Yaml = yaml
          @Replicas = replicas
          @RequestId = requestid
        end

        def deserialize(params)
          @Yaml = params['Yaml']
          @Replicas = params['Replicas']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitDeployGrid请求参数结构体
      class DescribeEdgeUnitDeployGridRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String
        # @param NamePattern: 模糊匹配
        # @type NamePattern: String
        # @param Offset: 分页offset，默认为0
        # @type Offset: Integer
        # @param Limit: 分页limit，默认为20
        # @type Limit: Integer
        # @param Order: 排序，默认为ASC
        # @type Order: String

        attr_accessor :EdgeUnitId, :Namespace, :NamePattern, :Offset, :Limit, :Order
        
        def initialize(edgeunitid=nil, namespace=nil, namepattern=nil, offset=nil, limit=nil, order=nil)
          @EdgeUnitId = edgeunitid
          @Namespace = namespace
          @NamePattern = namepattern
          @Offset = offset
          @Limit = limit
          @Order = order
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Namespace = params['Namespace']
          @NamePattern = params['NamePattern']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
        end
      end

      # DescribeEdgeUnitDeployGrid返回参数结构体
      class DescribeEdgeUnitDeployGridResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param GridSet: Grid列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GridSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :GridSet, :RequestId
        
        def initialize(totalcount=nil, gridset=nil, requestid=nil)
          @TotalCount = totalcount
          @GridSet = gridset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GridSet'].nil?
            @GridSet = []
            params['GridSet'].each do |i|
              gridinfo_tmp = GridInfo.new
              gridinfo_tmp.deserialize(i)
              @GridSet << gridinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitExtra请求参数结构体
      class DescribeEdgeUnitExtraRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer

        attr_accessor :EdgeUnitId
        
        def initialize(edgeunitid=nil)
          @EdgeUnitId = edgeunitid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
        end
      end

      # DescribeEdgeUnitExtra返回参数结构体
      class DescribeEdgeUnitExtraResponse < TencentCloud::Common::AbstractModel
        # @param APIServerType: APIServer类型
        # @type APIServerType: String
        # @param APIServerURL: 域名URL
        # @type APIServerURL: String
        # @param APIServerURLPort: 域名URL对应的端口
        # @type APIServerURLPort: String
        # @param APIServerResolveIP: 域名URL对应的端口
        # @type APIServerResolveIP: String
        # @param APIServerExposeAddress: 对外可访问的IP
        # @type APIServerExposeAddress: String
        # @param IsCreatePrometheus: 是否开启监控
        # @type IsCreatePrometheus: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :APIServerType, :APIServerURL, :APIServerURLPort, :APIServerResolveIP, :APIServerExposeAddress, :IsCreatePrometheus, :RequestId
        
        def initialize(apiservertype=nil, apiserverurl=nil, apiserverurlport=nil, apiserverresolveip=nil, apiserverexposeaddress=nil, iscreateprometheus=nil, requestid=nil)
          @APIServerType = apiservertype
          @APIServerURL = apiserverurl
          @APIServerURLPort = apiserverurlport
          @APIServerResolveIP = apiserverresolveip
          @APIServerExposeAddress = apiserverexposeaddress
          @IsCreatePrometheus = iscreateprometheus
          @RequestId = requestid
        end

        def deserialize(params)
          @APIServerType = params['APIServerType']
          @APIServerURL = params['APIServerURL']
          @APIServerURLPort = params['APIServerURLPort']
          @APIServerResolveIP = params['APIServerResolveIP']
          @APIServerExposeAddress = params['APIServerExposeAddress']
          @IsCreatePrometheus = params['IsCreatePrometheus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitGridEvents请求参数结构体
      class DescribeEdgeUnitGridEventsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param GridName: Grid名称
        # @type GridName: String
        # @param WorkloadKind: 负载类型（StatefulSetGrid｜DeploymentGrid）
        # @type WorkloadKind: String
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String
        # @param NodeUnit: NodeUnit名称
        # @type NodeUnit: String
        # @param PodName: Pod名称
        # @type PodName: String

        attr_accessor :EdgeUnitId, :GridName, :WorkloadKind, :Namespace, :NodeUnit, :PodName
        
        def initialize(edgeunitid=nil, gridname=nil, workloadkind=nil, namespace=nil, nodeunit=nil, podname=nil)
          @EdgeUnitId = edgeunitid
          @GridName = gridname
          @WorkloadKind = workloadkind
          @Namespace = namespace
          @NodeUnit = nodeunit
          @PodName = podname
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @GridName = params['GridName']
          @WorkloadKind = params['WorkloadKind']
          @Namespace = params['Namespace']
          @NodeUnit = params['NodeUnit']
          @PodName = params['PodName']
        end
      end

      # DescribeEdgeUnitGridEvents返回参数结构体
      class DescribeEdgeUnitGridEventsResponse < TencentCloud::Common::AbstractModel
        # @param EventSet: 事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventSet, :RequestId
        
        def initialize(eventset=nil, requestid=nil)
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              grideventinfo_tmp = GridEventInfo.new
              grideventinfo_tmp.deserialize(i)
              @EventSet << grideventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitGridPods请求参数结构体
      class DescribeEdgeUnitGridPodsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param GridName: Grid名称
        # @type GridName: String
        # @param WorkloadKind: 负载类型（StatefulSetGrid｜DeploymentGrid）
        # @type WorkloadKind: String
        # @param NodeUnit: NodeUnit名
        # @type NodeUnit: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :GridName, :WorkloadKind, :NodeUnit, :Namespace
        
        def initialize(edgeunitid=nil, gridname=nil, workloadkind=nil, nodeunit=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @GridName = gridname
          @WorkloadKind = workloadkind
          @NodeUnit = nodeunit
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @GridName = params['GridName']
          @WorkloadKind = params['WorkloadKind']
          @NodeUnit = params['NodeUnit']
          @Namespace = params['Namespace']
        end
      end

      # DescribeEdgeUnitGridPods返回参数结构体
      class DescribeEdgeUnitGridPodsResponse < TencentCloud::Common::AbstractModel
        # @param PodSet: Pod列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PodSet, :RequestId
        
        def initialize(podset=nil, requestid=nil)
          @PodSet = podset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PodSet'].nil?
            @PodSet = []
            params['PodSet'].each do |i|
              gridpodinfo_tmp = GridPodInfo.new
              gridpodinfo_tmp.deserialize(i)
              @PodSet << gridpodinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitMonitorStatus请求参数结构体
      class DescribeEdgeUnitMonitorStatusRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer

        attr_accessor :EdgeUnitId
        
        def initialize(edgeunitid=nil)
          @EdgeUnitId = edgeunitid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
        end
      end

      # DescribeEdgeUnitMonitorStatus返回参数结构体
      class DescribeEdgeUnitMonitorStatusResponse < TencentCloud::Common::AbstractModel
        # @param MonitorStatus: 监控状态描述：
        # "running" 单元监控正常运行
        # "deploying" 单元监控部署中
        # "norsc" 单元需要可用节点以部署监控
        # "abnormal" 单元监控异常
        # "none" 单元监控不可用
        # @type MonitorStatus: String
        # @param IsAvailable: 监控是否就绪
        # @type IsAvailable: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorStatus, :IsAvailable, :RequestId
        
        def initialize(monitorstatus=nil, isavailable=nil, requestid=nil)
          @MonitorStatus = monitorstatus
          @IsAvailable = isavailable
          @RequestId = requestid
        end

        def deserialize(params)
          @MonitorStatus = params['MonitorStatus']
          @IsAvailable = params['IsAvailable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitNodeGroup请求参数结构体
      class DescribeEdgeUnitNodeGroupRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String
        # @param Offset: 分页offset，默认为0
        # @type Offset: Integer
        # @param Limit: 分页limit，默认为20
        # @type Limit: Integer
        # @param NameFilter: 模糊匹配参数，精确匹配时失效
        # @type NameFilter: String
        # @param NameMatched: 精确匹配参数
        # @type NameMatched: String
        # @param Order: 按时间排序，ASC/DESC，默认为DESC
        # @type Order: String

        attr_accessor :EdgeUnitId, :Namespace, :Offset, :Limit, :NameFilter, :NameMatched, :Order
        
        def initialize(edgeunitid=nil, namespace=nil, offset=nil, limit=nil, namefilter=nil, namematched=nil, order=nil)
          @EdgeUnitId = edgeunitid
          @Namespace = namespace
          @Offset = offset
          @Limit = limit
          @NameFilter = namefilter
          @NameMatched = namematched
          @Order = order
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Namespace = params['Namespace']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NameFilter = params['NameFilter']
          @NameMatched = params['NameMatched']
          @Order = params['Order']
        end
      end

      # DescribeEdgeUnitNodeGroup返回参数结构体
      class DescribeEdgeUnitNodeGroupResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param NodeGroupInfo: NodeGroup数组
        # @type NodeGroupInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :NodeGroupInfo, :RequestId
        
        def initialize(total=nil, nodegroupinfo=nil, requestid=nil)
          @Total = total
          @NodeGroupInfo = nodegroupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['NodeGroupInfo'].nil?
            @NodeGroupInfo = []
            params['NodeGroupInfo'].each do |i|
              nodegroupinfo_tmp = NodeGroupInfo.new
              nodegroupinfo_tmp.deserialize(i)
              @NodeGroupInfo << nodegroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitNodeUnitTemplates请求参数结构体
      class DescribeEdgeUnitNodeUnitTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String
        # @param Offset: 分页查询offset，默认为0
        # @type Offset: Integer
        # @param Limit: 分页查询limit，默认为20
        # @type Limit: Integer
        # @param NameFilter: 模糊匹配，精确匹配时失效
        # @type NameFilter: String
        # @param NameMatched: 精确匹配
        # @type NameMatched: String
        # @param Order: 按时间排序顺序，默认为DESC
        # @type Order: String

        attr_accessor :EdgeUnitId, :Namespace, :Offset, :Limit, :NameFilter, :NameMatched, :Order
        
        def initialize(edgeunitid=nil, namespace=nil, offset=nil, limit=nil, namefilter=nil, namematched=nil, order=nil)
          @EdgeUnitId = edgeunitid
          @Namespace = namespace
          @Offset = offset
          @Limit = limit
          @NameFilter = namefilter
          @NameMatched = namematched
          @Order = order
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Namespace = params['Namespace']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NameFilter = params['NameFilter']
          @NameMatched = params['NameMatched']
          @Order = params['Order']
        end
      end

      # DescribeEdgeUnitNodeUnitTemplates返回参数结构体
      class DescribeEdgeUnitNodeUnitTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件的记录总数
        # @type Total: Integer
        # @param NodeUnitTemplates: NodeUnit模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeUnitTemplates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :NodeUnitTemplates, :RequestId
        
        def initialize(total=nil, nodeunittemplates=nil, requestid=nil)
          @Total = total
          @NodeUnitTemplates = nodeunittemplates
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['NodeUnitTemplates'].nil?
            @NodeUnitTemplates = []
            params['NodeUnitTemplates'].each do |i|
              nodeunittemplate_tmp = NodeUnitTemplate.new
              nodeunittemplate_tmp.deserialize(i)
              @NodeUnitTemplates << nodeunittemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeUnitsCloud请求参数结构体
      class DescribeEdgeUnitsCloudRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: limit值
        # @type Limit: Integer
        # @param NamePattern: 集群名称模糊匹配
        # @type NamePattern: String
        # @param Order: 排序，ASC/DESC(默认)
        # @type Order: String

        attr_accessor :Offset, :Limit, :NamePattern, :Order
        
        def initialize(offset=nil, limit=nil, namepattern=nil, order=nil)
          @Offset = offset
          @Limit = limit
          @NamePattern = namepattern
          @Order = order
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NamePattern = params['NamePattern']
          @Order = params['Order']
        end
      end

      # DescribeEdgeUnitsCloud返回参数结构体
      class DescribeEdgeUnitsCloudResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EdgeUnitSet: 集群详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdgeUnitSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EdgeUnitSet, :RequestId
        
        def initialize(totalcount=nil, edgeunitset=nil, requestid=nil)
          @TotalCount = totalcount
          @EdgeUnitSet = edgeunitset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EdgeUnitSet'].nil?
            @EdgeUnitSet = []
            params['EdgeUnitSet'].each do |i|
              edgecloudcluster_tmp = EdgeCloudCluster.new
              edgecloudcluster_tmp.deserialize(i)
              @EdgeUnitSet << edgecloudcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonitorMetrics请求参数结构体
      class DescribeMonitorMetricsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param QueryType: 查询维度
        # @type QueryType: String
        # @param StartTime: 起始时间Unix秒时间戳
        # @type StartTime: Integer
        # @param EndTime: 终止时间Unix秒时间戳
        # @type EndTime: Integer
        # @param Interval: 步长（分钟）
        # @type Interval: Integer
        # @param NodeName: 节点名称，查询节点监控时必填
        # @type NodeName: String
        # @param Namespace: 命名空间，不填则默认为default
        # @type Namespace: String
        # @param PodName: Pod名称，查询Pod监控时必填
        # @type PodName: String
        # @param WorkloadName: Workload名称，查询Workload监控时必填
        # @type WorkloadName: String

        attr_accessor :EdgeUnitId, :QueryType, :StartTime, :EndTime, :Interval, :NodeName, :Namespace, :PodName, :WorkloadName
        
        def initialize(edgeunitid=nil, querytype=nil, starttime=nil, endtime=nil, interval=nil, nodename=nil, namespace=nil, podname=nil, workloadname=nil)
          @EdgeUnitId = edgeunitid
          @QueryType = querytype
          @StartTime = starttime
          @EndTime = endtime
          @Interval = interval
          @NodeName = nodename
          @Namespace = namespace
          @PodName = podname
          @WorkloadName = workloadname
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @QueryType = params['QueryType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Interval = params['Interval']
          @NodeName = params['NodeName']
          @Namespace = params['Namespace']
          @PodName = params['PodName']
          @WorkloadName = params['WorkloadName']
        end
      end

      # DescribeMonitorMetrics返回参数结构体
      class DescribeMonitorMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Metrics: 查询监控指标结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metrics, :RequestId
        
        def initialize(metrics=nil, requestid=nil)
          @Metrics = metrics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              monitormetricscolumn_tmp = MonitorMetricsColumn.new
              monitormetricscolumn_tmp.deserialize(i)
              @Metrics << monitormetricscolumn_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespace请求参数结构体
      class DescribeNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param Namespace: 命名空间名
        # @type Namespace: String

        attr_accessor :EdgeUnitID, :Namespace
        
        def initialize(edgeunitid=nil, namespace=nil)
          @EdgeUnitID = edgeunitid
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @Namespace = params['Namespace']
        end
      end

      # DescribeNamespaceResources请求参数结构体
      class DescribeNamespaceResourcesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :EdgeUnitID, :Namespace
        
        def initialize(edgeunitid=nil, namespace=nil)
          @EdgeUnitID = edgeunitid
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @Namespace = params['Namespace']
        end
      end

      # DescribeNamespaceResources返回参数结构体
      class DescribeNamespaceResourcesResponse < TencentCloud::Common::AbstractModel
        # @param Resources: 资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Resources, :RequestId
        
        def initialize(resources=nil, requestid=nil)
          @Resources = resources
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              namespaceresource_tmp = NamespaceResource.new
              namespaceresource_tmp.deserialize(i)
              @Resources << namespaceresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespace返回参数结构体
      class DescribeNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param Status: 状态 (Active|Terminating)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Description: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Protected: 是否保护-不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protected: Boolean
        # @param Yaml: Yaml文件格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Namespace, :Status, :Description, :CreateTime, :Protected, :Yaml, :RequestId
        
        def initialize(namespace=nil, status=nil, description=nil, createtime=nil, protected=nil, yaml=nil, requestid=nil)
          @Namespace = namespace
          @Status = status
          @Description = description
          @CreateTime = createtime
          @Protected = protected
          @Yaml = yaml
          @RequestId = requestid
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Status = params['Status']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Protected = params['Protected']
          @Yaml = params['Yaml']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespaces请求参数结构体
      class DescribeNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: IECP边缘单元ID
        # @type EdgeUnitID: Integer
        # @param NamePattern: 边缘节点名称模糊搜索串
        # @type NamePattern: String

        attr_accessor :EdgeUnitID, :NamePattern
        
        def initialize(edgeunitid=nil, namepattern=nil)
          @EdgeUnitID = edgeunitid
          @NamePattern = namepattern
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @NamePattern = params['NamePattern']
        end
      end

      # DescribeNamespaces返回参数结构体
      class DescribeNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 命名空间信息列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId
        
        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              namespaceinfo_tmp = NamespaceInfo.new
              namespaceinfo_tmp.deserialize(i)
              @Items << namespaceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodeUnit请求参数结构体
      class DescribeNodeUnitRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeGroupName: NodeUnit所属的NodeGroup名称
        # @type NodeGroupName: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String
        # @param Limit: 分页查询limit，默认20
        # @type Limit: Integer
        # @param Offset: 分页查询offset，默认0
        # @type Offset: Integer
        # @param NameFilter: 模糊匹配
        # @type NameFilter: String

        attr_accessor :EdgeUnitId, :NodeGroupName, :Namespace, :Limit, :Offset, :NameFilter
        
        def initialize(edgeunitid=nil, nodegroupname=nil, namespace=nil, limit=nil, offset=nil, namefilter=nil)
          @EdgeUnitId = edgeunitid
          @NodeGroupName = nodegroupname
          @Namespace = namespace
          @Limit = limit
          @Offset = offset
          @NameFilter = namefilter
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeGroupName = params['NodeGroupName']
          @Namespace = params['Namespace']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @NameFilter = params['NameFilter']
        end
      end

      # DescribeNodeUnit返回参数结构体
      class DescribeNodeUnitResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的记录总数
        # @type TotalCount: Integer
        # @param NodeGridInfo: NodeUnit信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeGridInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NodeGridInfo, :RequestId
        
        def initialize(totalcount=nil, nodegridinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @NodeGridInfo = nodegridinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodeGridInfo'].nil?
            @NodeGridInfo = []
            params['NodeGridInfo'].each do |i|
              nodeunitinfo_tmp = NodeUnitInfo.new
              nodeunitinfo_tmp.deserialize(i)
              @NodeGridInfo << nodeunitinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodeUnitTemplateOnNodeGroup请求参数结构体
      class DescribeNodeUnitTemplateOnNodeGroupRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeGroupName: NodeGroup名称
        # @type NodeGroupName: String
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String
        # @param NodeUnitNamePattern: 名称模糊匹配
        # @type NodeUnitNamePattern: String
        # @param Offset: 分页查询offset，默认0
        # @type Offset: Integer
        # @param Limit: 分页查询limit，默认20
        # @type Limit: Integer
        # @param Order: 排序，默认DESC
        # @type Order: String

        attr_accessor :EdgeUnitId, :NodeGroupName, :Namespace, :NodeUnitNamePattern, :Offset, :Limit, :Order
        
        def initialize(edgeunitid=nil, nodegroupname=nil, namespace=nil, nodeunitnamepattern=nil, offset=nil, limit=nil, order=nil)
          @EdgeUnitId = edgeunitid
          @NodeGroupName = nodegroupname
          @Namespace = namespace
          @NodeUnitNamePattern = nodeunitnamepattern
          @Offset = offset
          @Limit = limit
          @Order = order
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeGroupName = params['NodeGroupName']
          @Namespace = params['Namespace']
          @NodeUnitNamePattern = params['NodeUnitNamePattern']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
        end
      end

      # DescribeNodeUnitTemplateOnNodeGroup返回参数结构体
      class DescribeNodeUnitTemplateOnNodeGroupResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param NodeUnitTemplates: NodeUnit模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeUnitTemplates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :NodeUnitTemplates, :RequestId
        
        def initialize(total=nil, nodeunittemplates=nil, requestid=nil)
          @Total = total
          @NodeUnitTemplates = nodeunittemplates
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['NodeUnitTemplates'].nil?
            @NodeUnitTemplates = []
            params['NodeUnitTemplates'].each do |i|
              nodegroupnodeunittemplateinfo_tmp = NodeGroupNodeUnitTemplateInfo.new
              nodegroupnodeunittemplateinfo_tmp.deserialize(i)
              @NodeUnitTemplates << nodegroupnodeunittemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecret请求参数结构体
      class DescribeSecretRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 边缘单元ID
        # @type EdgeUnitID: Integer
        # @param SecretName: secret名
        # @type SecretName: String
        # @param SecretNamespace: 命名空间(默认值:default）
        # @type SecretNamespace: String

        attr_accessor :EdgeUnitID, :SecretName, :SecretNamespace
        
        def initialize(edgeunitid=nil, secretname=nil, secretnamespace=nil)
          @EdgeUnitID = edgeunitid
          @SecretName = secretname
          @SecretNamespace = secretnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @SecretName = params['SecretName']
          @SecretNamespace = params['SecretNamespace']
        end
      end

      # DescribeSecret返回参数结构体
      class DescribeSecretResponse < TencentCloud::Common::AbstractModel
        # @param Name: Secret名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Yaml: secret的yaml格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String
        # @param Json: secret的json格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Json: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Namespace, :CreateTime, :Yaml, :Json, :RequestId
        
        def initialize(name=nil, namespace=nil, createtime=nil, yaml=nil, json=nil, requestid=nil)
          @Name = name
          @Namespace = namespace
          @CreateTime = createtime
          @Yaml = yaml
          @Json = json
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @CreateTime = params['CreateTime']
          @Yaml = params['Yaml']
          @Json = params['Json']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecretYamlError请求参数结构体
      class DescribeSecretYamlErrorRequest < TencentCloud::Common::AbstractModel
        # @param Yaml: yaml文件
        # @type Yaml: String

        attr_accessor :Yaml
        
        def initialize(yaml=nil)
          @Yaml = yaml
        end

        def deserialize(params)
          @Yaml = params['Yaml']
        end
      end

      # DescribeSecretYamlError返回参数结构体
      class DescribeSecretYamlErrorResponse < TencentCloud::Common::AbstractModel
        # @param CheckPass: 校验是通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPass: Boolean
        # @param ErrType: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrType: Integer
        # @param ErrInfo: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPass, :ErrType, :ErrInfo, :RequestId
        
        def initialize(checkpass=nil, errtype=nil, errinfo=nil, requestid=nil)
          @CheckPass = checkpass
          @ErrType = errtype
          @ErrInfo = errinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPass = params['CheckPass']
          @ErrType = params['ErrType']
          @ErrInfo = params['ErrInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecrets请求参数结构体
      class DescribeSecretsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 边缘单元ID
        # @type EdgeUnitID: Integer
        # @param Offset: 页号
        # @type Offset: Integer
        # @param Limit: 每页数目
        # @type Limit: Integer
        # @param SecretNamespace: 命名空间
        # @type SecretNamespace: String
        # @param NamePattern: Secret名(模糊匹配)
        # @type NamePattern: String
        # @param Sort: Sort.Field:CreateTime Sort.Order:ASC|DESC
        # @type Sort: :class:`Tencentcloud::Iecp.v20210914.models.FieldSort`
        # @param SecretType: Secret类型(DockerConfigJson或Opaque)
        # @type SecretType: String

        attr_accessor :EdgeUnitID, :Offset, :Limit, :SecretNamespace, :NamePattern, :Sort, :SecretType
        
        def initialize(edgeunitid=nil, offset=nil, limit=nil, secretnamespace=nil, namepattern=nil, sort=nil, secrettype=nil)
          @EdgeUnitID = edgeunitid
          @Offset = offset
          @Limit = limit
          @SecretNamespace = secretnamespace
          @NamePattern = namepattern
          @Sort = sort
          @SecretType = secrettype
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SecretNamespace = params['SecretNamespace']
          @NamePattern = params['NamePattern']
          unless params['Sort'].nil?
            @Sort = FieldSort.new
            @Sort.deserialize(params['Sort'])
          end
          @SecretType = params['SecretType']
        end
      end

      # DescribeSecrets返回参数结构体
      class DescribeSecretsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: Secret列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              secretitem_tmp = SecretItem.new
              secretitem_tmp.deserialize(i)
              @Items << secretitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # docker配置
      class DockerConfig < TencentCloud::Common::AbstractModel
        # @param RegistryDomain: 镜像仓库地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryDomain: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 密码
        # @type Password: String

        attr_accessor :RegistryDomain, :UserName, :Password
        
        def initialize(registrydomain=nil, username=nil, password=nil)
          @RegistryDomain = registrydomain
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @RegistryDomain = params['RegistryDomain']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # 获取边缘集群列表
      class EdgeCloudCluster < TencentCloud::Common::AbstractModel
        # @param EdgeId: IECP侧边缘集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdgeId: Integer
        # @param ClusterId: 边缘集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Region: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param K8SVersion: 集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8SVersion: String
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param ClusterDesc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDesc: String
        # @param Status: 集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param PodCIDR: pod cidr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodCIDR: String
        # @param ServiceCIDR: service cidr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCIDR: String
        # @param EdgeClusterVersion: 边缘版本类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdgeClusterVersion: String
        # @param UID: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UID: String

        attr_accessor :EdgeId, :ClusterId, :Region, :ClusterName, :K8SVersion, :VpcId, :ClusterDesc, :Status, :CreateTime, :PodCIDR, :ServiceCIDR, :EdgeClusterVersion, :UID
        
        def initialize(edgeid=nil, clusterid=nil, region=nil, clustername=nil, k8sversion=nil, vpcid=nil, clusterdesc=nil, status=nil, createtime=nil, podcidr=nil, servicecidr=nil, edgeclusterversion=nil, uid=nil)
          @EdgeId = edgeid
          @ClusterId = clusterid
          @Region = region
          @ClusterName = clustername
          @K8SVersion = k8sversion
          @VpcId = vpcid
          @ClusterDesc = clusterdesc
          @Status = status
          @CreateTime = createtime
          @PodCIDR = podcidr
          @ServiceCIDR = servicecidr
          @EdgeClusterVersion = edgeclusterversion
          @UID = uid
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          @ClusterId = params['ClusterId']
          @Region = params['Region']
          @ClusterName = params['ClusterName']
          @K8SVersion = params['K8SVersion']
          @VpcId = params['VpcId']
          @ClusterDesc = params['ClusterDesc']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @PodCIDR = params['PodCIDR']
          @ServiceCIDR = params['ServiceCIDR']
          @EdgeClusterVersion = params['EdgeClusterVersion']
          @UID = params['UID']
        end
      end

      # 边缘节点信息
      class EdgeNodeInfo < TencentCloud::Common::AbstractModel
        # @param Id: IECP边缘节点ID
        # @type Id: Integer
        # @param Name: 节点名称
        # @type Name: String
        # @param Status: 节点状态 （1健康｜2异常｜3离线｜4未激活）
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Resource: 节点资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Iecp.v20210914.models.EdgeNodeResourceInfo`
        # @param CpuArchitecture: CPU体系结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuArchitecture: String
        # @param Ip: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param OperatingSystem: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatingSystem: String
        # @param NodeUnits: 节点所属的NodeUnit
        # key：NodeUnit模版ID，Value：NodeUnit模版名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeUnits: :class:`Tencentcloud::Iecp.v20210914.models.KeyValueObj`

        attr_accessor :Id, :Name, :Status, :CreateTime, :Resource, :CpuArchitecture, :Ip, :OperatingSystem, :NodeUnits
        
        def initialize(id=nil, name=nil, status=nil, createtime=nil, resource=nil, cpuarchitecture=nil, ip=nil, operatingsystem=nil, nodeunits=nil)
          @Id = id
          @Name = name
          @Status = status
          @CreateTime = createtime
          @Resource = resource
          @CpuArchitecture = cpuarchitecture
          @Ip = ip
          @OperatingSystem = operatingsystem
          @NodeUnits = nodeunits
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          unless params['Resource'].nil?
            @Resource = EdgeNodeResourceInfo.new
            @Resource.deserialize(params['Resource'])
          end
          @CpuArchitecture = params['CpuArchitecture']
          @Ip = params['Ip']
          @OperatingSystem = params['OperatingSystem']
          unless params['NodeUnits'].nil?
            @NodeUnits = KeyValueObj.new
            @NodeUnits.deserialize(params['NodeUnits'])
          end
        end
      end

      # 节点在线安装信息
      class EdgeNodeInstallerOnline < TencentCloud::Common::AbstractModel
        # @param ScriptName: 节点安装脚本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptName: String
        # @param ScriptDownloadUrl: 节点安装脚本下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptDownloadUrl: String
        # @param Guide: 节点安装命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Guide: String

        attr_accessor :ScriptName, :ScriptDownloadUrl, :Guide
        
        def initialize(scriptname=nil, scriptdownloadurl=nil, guide=nil)
          @ScriptName = scriptname
          @ScriptDownloadUrl = scriptdownloadurl
          @Guide = guide
        end

        def deserialize(params)
          @ScriptName = params['ScriptName']
          @ScriptDownloadUrl = params['ScriptDownloadUrl']
          @Guide = params['Guide']
        end
      end

      # 边缘节点标签
      class EdgeNodeLabel < TencentCloud::Common::AbstractModel
        # @param Key: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Protected: 是否受保护
        # @type Protected: Boolean

        attr_accessor :Key, :Value, :Protected
        
        def initialize(key=nil, value=nil, protected=nil)
          @Key = key
          @Value = value
          @Protected = protected
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Protected = params['Protected']
        end
      end

      # 边缘节点Pod容器信息
      class EdgeNodePodContainerInfo < TencentCloud::Common::AbstractModel
        # @param Name: Pod名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Id: 容器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Image: 镜像（含版本号）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param CpuRequest: CPU Request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuRequest: String
        # @param CpuLimit: CPU Limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuLimit: String
        # @param MemoryRequest: Memory Request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryRequest: String
        # @param MemoryLimit: Memory Limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryLimit: String
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param Status: 容器状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Name, :Id, :Image, :CpuRequest, :CpuLimit, :MemoryRequest, :MemoryLimit, :RestartCount, :Status
        
        def initialize(name=nil, id=nil, image=nil, cpurequest=nil, cpulimit=nil, memoryrequest=nil, memorylimit=nil, restartcount=nil, status=nil)
          @Name = name
          @Id = id
          @Image = image
          @CpuRequest = cpurequest
          @CpuLimit = cpulimit
          @MemoryRequest = memoryrequest
          @MemoryLimit = memorylimit
          @RestartCount = restartcount
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Image = params['Image']
          @CpuRequest = params['CpuRequest']
          @CpuLimit = params['CpuLimit']
          @MemoryRequest = params['MemoryRequest']
          @MemoryLimit = params['MemoryLimit']
          @RestartCount = params['RestartCount']
          @Status = params['Status']
        end
      end

      # 边缘节点Pod信息
      class EdgeNodePodInfo < TencentCloud::Common::AbstractModel
        # @param Name: Pod名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: Pod状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param NodeIp: 所在节点IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeIp: String
        # @param Ip: 实例IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param CpuRequest: CPU Request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuRequest: String
        # @param MemoryRequest: Memory Request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryRequest: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param WorkloadType: 工作负载类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkloadType: String
        # @param WorkloadName: 工作负载名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkloadName: String
        # @param StartTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param ClusterID: 集群ID
        # @type ClusterID: String

        attr_accessor :Name, :Status, :NodeIp, :Ip, :CpuRequest, :MemoryRequest, :Namespace, :WorkloadType, :WorkloadName, :StartTime, :RestartCount, :ClusterID
        
        def initialize(name=nil, status=nil, nodeip=nil, ip=nil, cpurequest=nil, memoryrequest=nil, namespace=nil, workloadtype=nil, workloadname=nil, starttime=nil, restartcount=nil, clusterid=nil)
          @Name = name
          @Status = status
          @NodeIp = nodeip
          @Ip = ip
          @CpuRequest = cpurequest
          @MemoryRequest = memoryrequest
          @Namespace = namespace
          @WorkloadType = workloadtype
          @WorkloadName = workloadname
          @StartTime = starttime
          @RestartCount = restartcount
          @ClusterID = clusterid
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @NodeIp = params['NodeIp']
          @Ip = params['Ip']
          @CpuRequest = params['CpuRequest']
          @MemoryRequest = params['MemoryRequest']
          @Namespace = params['Namespace']
          @WorkloadType = params['WorkloadType']
          @WorkloadName = params['WorkloadName']
          @StartTime = params['StartTime']
          @RestartCount = params['RestartCount']
          @ClusterID = params['ClusterID']
        end
      end

      # 边缘节点资源信息
      class EdgeNodeResourceInfo < TencentCloud::Common::AbstractModel
        # @param AllocatedCPU: 可使用的CPU 单位: m核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocatedCPU: String
        # @param TotalCPU: CPU总量 单位:m核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCPU: String
        # @param AllocatedMemory: 已分配的内存 单位G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocatedMemory: String
        # @param TotalMemory: 内存总量 单位G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalMemory: String
        # @param AllocatedGPU: 已分配的GPU资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocatedGPU: String
        # @param TotalGPU: GPU总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalGPU: String
        # @param AvailableCPU: 可使用的CPU 单位: m核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableCPU: String
        # @param AvailableMemory: 可使用的内存 单位: G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableMemory: String
        # @param AvailableGPU: 可使用的GPU资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableGPU: String

        attr_accessor :AllocatedCPU, :TotalCPU, :AllocatedMemory, :TotalMemory, :AllocatedGPU, :TotalGPU, :AvailableCPU, :AvailableMemory, :AvailableGPU
        
        def initialize(allocatedcpu=nil, totalcpu=nil, allocatedmemory=nil, totalmemory=nil, allocatedgpu=nil, totalgpu=nil, availablecpu=nil, availablememory=nil, availablegpu=nil)
          @AllocatedCPU = allocatedcpu
          @TotalCPU = totalcpu
          @AllocatedMemory = allocatedmemory
          @TotalMemory = totalmemory
          @AllocatedGPU = allocatedgpu
          @TotalGPU = totalgpu
          @AvailableCPU = availablecpu
          @AvailableMemory = availablememory
          @AvailableGPU = availablegpu
        end

        def deserialize(params)
          @AllocatedCPU = params['AllocatedCPU']
          @TotalCPU = params['TotalCPU']
          @AllocatedMemory = params['AllocatedMemory']
          @TotalMemory = params['TotalMemory']
          @AllocatedGPU = params['AllocatedGPU']
          @TotalGPU = params['TotalGPU']
          @AvailableCPU = params['AvailableCPU']
          @AvailableMemory = params['AvailableMemory']
          @AvailableGPU = params['AvailableGPU']
        end
      end

      # 单元内的统计信息
      class EdgeUnitStatisticItem < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Online: 在线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Online: Integer
        # @param Abnormal: 异常数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Abnormal: Integer
        # @param Offline: 离线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offline: Integer
        # @param NotActive: 未激活
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotActive: Integer

        attr_accessor :Total, :Online, :Abnormal, :Offline, :NotActive
        
        def initialize(total=nil, online=nil, abnormal=nil, offline=nil, notactive=nil)
          @Total = total
          @Online = online
          @Abnormal = abnormal
          @Offline = offline
          @NotActive = notactive
        end

        def deserialize(params)
          @Total = params['Total']
          @Online = params['Online']
          @Abnormal = params['Abnormal']
          @Offline = params['Offline']
          @NotActive = params['NotActive']
        end
      end

      # 环境变量
      class Env < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Value: 值
        # @type Value: String
        # @param ValueFrom: 值引用
        # @type ValueFrom: :class:`Tencentcloud::Iecp.v20210914.models.EnvValueSelector`

        attr_accessor :Name, :Value, :ValueFrom
        
        def initialize(name=nil, value=nil, valuefrom=nil)
          @Name = name
          @Value = value
          @ValueFrom = valuefrom
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['ValueFrom'].nil?
            @ValueFrom = EnvValueSelector.new
            @ValueFrom.deserialize(params['ValueFrom'])
          end
        end
      end

      # 环境变量选择
      class EnvValueSelector < TencentCloud::Common::AbstractModel
        # @param Key: 健名
        # @type Key: String
        # @param ObjectName: 对象名
        # @type ObjectName: String
        # @param ObjectType: 对象值
        # @type ObjectType: String

        attr_accessor :Key, :ObjectName, :ObjectType
        
        def initialize(key=nil, objectname=nil, objecttype=nil)
          @Key = key
          @ObjectName = objectname
          @ObjectType = objecttype
        end

        def deserialize(params)
          @Key = params['Key']
          @ObjectName = params['ObjectName']
          @ObjectType = params['ObjectType']
        end
      end

      # 事件信息
      class Event < TencentCloud::Common::AbstractModel
        # @param FirstTime: 第一次出现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstTime: String
        # @param LastTime: 最后一次出现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTime: String
        # @param InvolvedObjectKind: 事件关联对象类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvolvedObjectKind: String
        # @param InvolvedObjectName: 事件关联对象名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvolvedObjectName: String
        # @param Type: 事件类型(Normal|Warning)
        # @type Type: String
        # @param Reason: 原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Message: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Count: 出现次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :FirstTime, :LastTime, :InvolvedObjectKind, :InvolvedObjectName, :Type, :Reason, :Message, :Count
        
        def initialize(firsttime=nil, lasttime=nil, involvedobjectkind=nil, involvedobjectname=nil, type=nil, reason=nil, message=nil, count=nil)
          @FirstTime = firsttime
          @LastTime = lasttime
          @InvolvedObjectKind = involvedobjectkind
          @InvolvedObjectName = involvedobjectname
          @Type = type
          @Reason = reason
          @Message = message
          @Count = count
        end

        def deserialize(params)
          @FirstTime = params['FirstTime']
          @LastTime = params['LastTime']
          @InvolvedObjectKind = params['InvolvedObjectKind']
          @InvolvedObjectName = params['InvolvedObjectName']
          @Type = params['Type']
          @Reason = params['Reason']
          @Message = params['Message']
          @Count = params['Count']
        end
      end

      # 字段排序
      class FieldSort < TencentCloud::Common::AbstractModel
        # @param Field: 字段名
        # @type Field: String
        # @param Order: 排序(ASC:升序 DESC:降序
        # @type Order: String

        attr_accessor :Field, :Order
        
        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # GetMarketComponentList请求参数结构体
      class GetMarketComponentListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页偏移，从0开始
        # @type Offset: Integer
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Filter: 名称模糊筛选
        # @type Filter: String
        # @param Order: 以名称排序，ASC、DESC
        # @type Order: String

        attr_accessor :Offset, :Limit, :Filter, :Order
        
        def initialize(offset=nil, limit=nil, filter=nil, order=nil)
          @Offset = offset
          @Limit = limit
          @Filter = filter
          @Order = order
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filter = params['Filter']
          @Order = params['Order']
        end
      end

      # GetMarketComponentList返回参数结构体
      class GetMarketComponentListResponse < TencentCloud::Common::AbstractModel
        # @param ComponentList: 组件列表
        # @type ComponentList: Array
        # @param TotalCount: 组件总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ComponentList, :TotalCount, :RequestId
        
        def initialize(componentlist=nil, totalcount=nil, requestid=nil)
          @ComponentList = componentlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ComponentList'].nil?
            @ComponentList = []
            params['ComponentList'].each do |i|
              marketcomponentinfo_tmp = MarketComponentInfo.new
              marketcomponentinfo_tmp.deserialize(i)
              @ComponentList << marketcomponentinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetMarketComponent请求参数结构体
      class GetMarketComponentRequest < TencentCloud::Common::AbstractModel
        # @param ID: 组件ID
        # @type ID: Integer

        attr_accessor :ID
        
        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # GetMarketComponent返回参数结构体
      class GetMarketComponentResponse < TencentCloud::Common::AbstractModel
        # @param ID: 组件ID
        # @type ID: Integer
        # @param AppName: 组件名称
        # @type AppName: String
        # @param Author: 发行组织
        # @type Author: String
        # @param ReleaseTime: 发布时间
        # @type ReleaseTime: String
        # @param Outline: 组件简介
        # @type Outline: String
        # @param Detail: 详细介绍链接
        # @type Detail: String
        # @param Icon: 图标连接
        # @type Icon: String
        # @param Version: 组件版本
        # @type Version: String
        # @param WorkloadVisualConfig: 组件可视化配置
        # @type WorkloadVisualConfig: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :AppName, :Author, :ReleaseTime, :Outline, :Detail, :Icon, :Version, :WorkloadVisualConfig, :RequestId
        
        def initialize(id=nil, appname=nil, author=nil, releasetime=nil, outline=nil, detail=nil, icon=nil, version=nil, workloadvisualconfig=nil, requestid=nil)
          @ID = id
          @AppName = appname
          @Author = author
          @ReleaseTime = releasetime
          @Outline = outline
          @Detail = detail
          @Icon = icon
          @Version = version
          @WorkloadVisualConfig = workloadvisualconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @AppName = params['AppName']
          @Author = params['Author']
          @ReleaseTime = params['ReleaseTime']
          @Outline = params['Outline']
          @Detail = params['Detail']
          @Icon = params['Icon']
          @Version = params['Version']
          @WorkloadVisualConfig = params['WorkloadVisualConfig']
          @RequestId = params['RequestId']
        end
      end

      # ServiceGroup中Grid信息
      class GridDetail < TencentCloud::Common::AbstractModel
        # @param Name: Grid名称
        # @type Name: String
        # @param Id: GridID
        # @type Id: Integer

        attr_accessor :Name, :Id
        
        def initialize(name=nil, id=nil)
          @Name = name
          @Id = id
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
        end
      end

      # Grid事件信息
      class GridEventInfo < TencentCloud::Common::AbstractModel
        # @param FirstTime: 首次出现时间
        # @type FirstTime: String
        # @param LastTime: 最后出现时间
        # @type LastTime: String
        # @param InvolvedObjectKind: 对象类型
        # @type InvolvedObjectKind: String
        # @param InvolvedObjectName: 对象名称
        # @type InvolvedObjectName: String
        # @param Type: 事件类型(Normal,Warning)
        # @type Type: String
        # @param Reason: 事件原因
        # @type Reason: String
        # @param Message: 事件内容
        # @type Message: String
        # @param Count: 次数
        # @type Count: Integer
        # @param NodeName: 节点名（Pod事件类型时有值）
        # @type NodeName: String
        # @param IP: 节点内部IP（Pod事件类型时有值）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String

        attr_accessor :FirstTime, :LastTime, :InvolvedObjectKind, :InvolvedObjectName, :Type, :Reason, :Message, :Count, :NodeName, :IP
        
        def initialize(firsttime=nil, lasttime=nil, involvedobjectkind=nil, involvedobjectname=nil, type=nil, reason=nil, message=nil, count=nil, nodename=nil, ip=nil)
          @FirstTime = firsttime
          @LastTime = lasttime
          @InvolvedObjectKind = involvedobjectkind
          @InvolvedObjectName = involvedobjectname
          @Type = type
          @Reason = reason
          @Message = message
          @Count = count
          @NodeName = nodename
          @IP = ip
        end

        def deserialize(params)
          @FirstTime = params['FirstTime']
          @LastTime = params['LastTime']
          @InvolvedObjectKind = params['InvolvedObjectKind']
          @InvolvedObjectName = params['InvolvedObjectName']
          @Type = params['Type']
          @Reason = params['Reason']
          @Message = params['Message']
          @Count = params['Count']
          @NodeName = params['NodeName']
          @IP = params['IP']
        end
      end

      # Grid信息
      class GridInfo < TencentCloud::Common::AbstractModel
        # @param Id: DeployGridId
        # @type Id: Integer
        # @param Name: 名称
        # @type Name: String
        # @param GridUniqKey: Key
        # @type GridUniqKey: String
        # @param Description: 描述
        # @type Description: String
        # @param WorkloadKind: 工作负载类型
        # @type WorkloadKind: String
        # @param StartTime: 启动时间
        # @type StartTime: String
        # @param Replicas: 副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param Publisher: 创建人
        # @type Publisher: String
        # @param Version: 版本信息
        # @type Version: String

        attr_accessor :Id, :Name, :GridUniqKey, :Description, :WorkloadKind, :StartTime, :Replicas, :Publisher, :Version
        
        def initialize(id=nil, name=nil, griduniqkey=nil, description=nil, workloadkind=nil, starttime=nil, replicas=nil, publisher=nil, version=nil)
          @Id = id
          @Name = name
          @GridUniqKey = griduniqkey
          @Description = description
          @WorkloadKind = workloadkind
          @StartTime = starttime
          @Replicas = replicas
          @Publisher = publisher
          @Version = version
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @GridUniqKey = params['GridUniqKey']
          @Description = params['Description']
          @WorkloadKind = params['WorkloadKind']
          @StartTime = params['StartTime']
          @Replicas = params['Replicas']
          @Publisher = params['Publisher']
          @Version = params['Version']
        end
      end

      # Grid部署应用信息
      class GridItemInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Replicas: 期望副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param AvailableReplicas: 可用副本数
        # @type AvailableReplicas: Integer
        # @param StartTime: 启动时间
        # @type StartTime: String
        # @param WorkloadKind: 工作负载类型
        # @type WorkloadKind: String

        attr_accessor :Name, :Replicas, :AvailableReplicas, :StartTime, :WorkloadKind
        
        def initialize(name=nil, replicas=nil, availablereplicas=nil, starttime=nil, workloadkind=nil)
          @Name = name
          @Replicas = replicas
          @AvailableReplicas = availablereplicas
          @StartTime = starttime
          @WorkloadKind = workloadkind
        end

        def deserialize(params)
          @Name = params['Name']
          @Replicas = params['Replicas']
          @AvailableReplicas = params['AvailableReplicas']
          @StartTime = params['StartTime']
          @WorkloadKind = params['WorkloadKind']
        end
      end

      # GridPod信息
      class GridPodInfo < TencentCloud::Common::AbstractModel
        # @param Name: Pod名称
        # @type Name: String
        # @param NameSpace: 命名空间
        # @type NameSpace: String
        # @param Status: 状态(Pending｜Running｜Succeeded｜Failed｜Unknown)
        # @type Status: String
        # @param NodeName: 节点名
        # @type NodeName: String
        # @param NodeIP: 节点IP
        # @type NodeIP: String
        # @param PodIP: Pod的IP
        # @type PodIP: String
        # @param StartTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param RunSec: 运行时长（秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunSec: Integer
        # @param RestartCount: 重启次数
        # @type RestartCount: Integer
        # @param ClusterID: 集群名称ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterID: String

        attr_accessor :Name, :NameSpace, :Status, :NodeName, :NodeIP, :PodIP, :StartTime, :RunSec, :RestartCount, :ClusterID
        
        def initialize(name=nil, namespace=nil, status=nil, nodename=nil, nodeip=nil, podip=nil, starttime=nil, runsec=nil, restartcount=nil, clusterid=nil)
          @Name = name
          @NameSpace = namespace
          @Status = status
          @NodeName = nodename
          @NodeIP = nodeip
          @PodIP = podip
          @StartTime = starttime
          @RunSec = runsec
          @RestartCount = restartcount
          @ClusterID = clusterid
        end

        def deserialize(params)
          @Name = params['Name']
          @NameSpace = params['NameSpace']
          @Status = params['Status']
          @NodeName = params['NodeName']
          @NodeIP = params['NodeIP']
          @PodIP = params['PodIP']
          @StartTime = params['StartTime']
          @RunSec = params['RunSec']
          @RestartCount = params['RestartCount']
          @ClusterID = params['ClusterID']
        end
      end

      # pod水平伸缩配置
      class HorizontalPodAutoscaler < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param MinReplicas: 最小实例数
        # @type MinReplicas: Integer
        # @param MaxReplicas: 最大实例数
        # @type MaxReplicas: Integer
        # @param ResourceMetricTarget: 资源目标指标
        # @type ResourceMetricTarget: Array

        attr_accessor :Name, :Namespace, :MinReplicas, :MaxReplicas, :ResourceMetricTarget
        
        def initialize(name=nil, namespace=nil, minreplicas=nil, maxreplicas=nil, resourcemetrictarget=nil)
          @Name = name
          @Namespace = namespace
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @ResourceMetricTarget = resourcemetrictarget
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          unless params['ResourceMetricTarget'].nil?
            @ResourceMetricTarget = []
            params['ResourceMetricTarget'].each do |i|
              resourcemetrictarget_tmp = ResourceMetricTarget.new
              resourcemetrictarget_tmp.deserialize(i)
              @ResourceMetricTarget << resourcemetrictarget_tmp
            end
          end
        end
      end

      # Http探测头
      class HttpHeader < TencentCloud::Common::AbstractModel
        # @param Name: HTTP头的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: HTTP头的值
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

      # HTTP探测配置
      class HttpProbe < TencentCloud::Common::AbstractModel
        # @param Path: 请求路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Port: 请求端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Host: 请求地址，默认Pod的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Scheme: 请求模式  HTTP|HTTPS，默认HTTP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheme: String
        # @param Headers: HTTP的请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array

        attr_accessor :Path, :Port, :Host, :Scheme, :Headers
        
        def initialize(path=nil, port=nil, host=nil, scheme=nil, headers=nil)
          @Path = path
          @Port = port
          @Host = host
          @Scheme = scheme
          @Headers = headers
        end

        def deserialize(params)
          @Path = params['Path']
          @Port = params['Port']
          @Host = params['Host']
          @Scheme = params['Scheme']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              httpheader_tmp = HttpHeader.new
              httpheader_tmp.deserialize(i)
              @Headers << httpheader_tmp
            end
          end
        end
      end

      # Job配置
      class Job < TencentCloud::Common::AbstractModel
        # @param Parallelism: 并发数
        # @type Parallelism: Integer
        # @param Completion: 完成数
        # @type Completion: Integer
        # @param ActiveDeadlineSeconds: 最大运行时间
        # @type ActiveDeadlineSeconds: Integer
        # @param BackOffLimit: 失败前重试次数
        # @type BackOffLimit: Integer

        attr_accessor :Parallelism, :Completion, :ActiveDeadlineSeconds, :BackOffLimit
        
        def initialize(parallelism=nil, completion=nil, activedeadlineseconds=nil, backofflimit=nil)
          @Parallelism = parallelism
          @Completion = completion
          @ActiveDeadlineSeconds = activedeadlineseconds
          @BackOffLimit = backofflimit
        end

        def deserialize(params)
          @Parallelism = params['Parallelism']
          @Completion = params['Completion']
          @ActiveDeadlineSeconds = params['ActiveDeadlineSeconds']
          @BackOffLimit = params['BackOffLimit']
        end
      end

      # KeyValue对象
      class KeyValueObj < TencentCloud::Common::AbstractModel
        # @param Key: Key值
        # @type Key: String
        # @param Value: Value值
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

      # 标签信息
      class Label < TencentCloud::Common::AbstractModel
        # @param Key: 健名
        # @type Key: String
        # @param Value: 健值
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

      # 组件市场的组件描述
      class MarketComponentInfo < TencentCloud::Common::AbstractModel
        # @param ID: 组件ID
        # @type ID: Integer
        # @param AppName: 组件名称
        # @type AppName: String
        # @param Author: 发布者
        # @type Author: String
        # @param ReleaseTime: 发布时间
        # @type ReleaseTime: String
        # @param Outline: 组件简介
        # @type Outline: String
        # @param Detail: 指向详细描述的url
        # @type Detail: String
        # @param Icon: 图标链接
        # @type Icon: String
        # @param Version: 组件版本
        # @type Version: String
        # @param WorkloadVisualConfig: 组件可视化信息
        # @type WorkloadVisualConfig: String
        # @param DetailUrl: 无
        # @type DetailUrl: String
        # @param Installed: 无
        # @type Installed: Boolean

        attr_accessor :ID, :AppName, :Author, :ReleaseTime, :Outline, :Detail, :Icon, :Version, :WorkloadVisualConfig, :DetailUrl, :Installed
        
        def initialize(id=nil, appname=nil, author=nil, releasetime=nil, outline=nil, detail=nil, icon=nil, version=nil, workloadvisualconfig=nil, detailurl=nil, installed=nil)
          @ID = id
          @AppName = appname
          @Author = author
          @ReleaseTime = releasetime
          @Outline = outline
          @Detail = detail
          @Icon = icon
          @Version = version
          @WorkloadVisualConfig = workloadvisualconfig
          @DetailUrl = detailurl
          @Installed = installed
        end

        def deserialize(params)
          @ID = params['ID']
          @AppName = params['AppName']
          @Author = params['Author']
          @ReleaseTime = params['ReleaseTime']
          @Outline = params['Outline']
          @Detail = params['Detail']
          @Icon = params['Icon']
          @Version = params['Version']
          @WorkloadVisualConfig = params['WorkloadVisualConfig']
          @DetailUrl = params['DetailUrl']
          @Installed = params['Installed']
        end
      end

      # ModifyApplicationBasicInfo请求参数结构体
      class ModifyApplicationBasicInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用模板ID
        # @type ApplicationId: Integer
        # @param BasicInfo: 应用模板基本信息
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`

        attr_accessor :ApplicationId, :BasicInfo
        
        def initialize(applicationid=nil, basicinfo=nil)
          @ApplicationId = applicationid
          @BasicInfo = basicinfo
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
        end
      end

      # ModifyApplicationBasicInfo返回参数结构体
      class ModifyApplicationBasicInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationVisualization请求参数结构体
      class ModifyApplicationVisualizationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer
        # @param BasicConfig: 应用配置
        # @type BasicConfig: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicConfig`
        # @param Volumes: 卷配置
        # @type Volumes: Array
        # @param InitContainers: 初始容器
        # @type InitContainers: Array
        # @param Containers: 容器配置
        # @type Containers: Array
        # @param Service: 服务配置
        # @type Service: :class:`Tencentcloud::Iecp.v20210914.models.Service`
        # @param Job: Job配置
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`
        # @param CronJob: CronJob配置
        # @type CronJob: :class:`Tencentcloud::Iecp.v20210914.models.CronJob`
        # @param RestartPolicy: 重启策略
        # @type RestartPolicy: String
        # @param ImagePullSecrets: 镜像拉取密钥
        # @type ImagePullSecrets: Array
        # @param HorizontalPodAutoscaler: HPA配置
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Iecp.v20210914.models.HorizontalPodAutoscaler`
        # @param InitContainer: 单个初始化容器
        # @type InitContainer: :class:`Tencentcloud::Iecp.v20210914.models.Container`

        attr_accessor :ApplicationId, :BasicConfig, :Volumes, :InitContainers, :Containers, :Service, :Job, :CronJob, :RestartPolicy, :ImagePullSecrets, :HorizontalPodAutoscaler, :InitContainer
        
        def initialize(applicationid=nil, basicconfig=nil, volumes=nil, initcontainers=nil, containers=nil, service=nil, job=nil, cronjob=nil, restartpolicy=nil, imagepullsecrets=nil, horizontalpodautoscaler=nil, initcontainer=nil)
          @ApplicationId = applicationid
          @BasicConfig = basicconfig
          @Volumes = volumes
          @InitContainers = initcontainers
          @Containers = containers
          @Service = service
          @Job = job
          @CronJob = cronjob
          @RestartPolicy = restartpolicy
          @ImagePullSecrets = imagepullsecrets
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @InitContainer = initcontainer
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          unless params['BasicConfig'].nil?
            @BasicConfig = ApplicationBasicConfig.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
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
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          unless params['CronJob'].nil?
            @CronJob = CronJob.new
            @CronJob.deserialize(params['CronJob'])
          end
          @RestartPolicy = params['RestartPolicy']
          @ImagePullSecrets = params['ImagePullSecrets']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          unless params['InitContainer'].nil?
            @InitContainer = Container.new
            @InitContainer.deserialize(params['InitContainer'])
          end
        end
      end

      # ModifyApplicationVisualization返回参数结构体
      class ModifyApplicationVisualizationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConfigMap请求参数结构体
      class ModifyConfigMapRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 单元ID
        # @type EdgeUnitID: Integer
        # @param ConfigMapName: ConfigMap名称
        # @type ConfigMapName: String
        # @param Yaml: Yaml配置
        # @type Yaml: String
        # @param ConfigMapNamespace: ConfigMap命名空间
        # @type ConfigMapNamespace: String

        attr_accessor :EdgeUnitID, :ConfigMapName, :Yaml, :ConfigMapNamespace
        
        def initialize(edgeunitid=nil, configmapname=nil, yaml=nil, configmapnamespace=nil)
          @EdgeUnitID = edgeunitid
          @ConfigMapName = configmapname
          @Yaml = yaml
          @ConfigMapNamespace = configmapnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @ConfigMapName = params['ConfigMapName']
          @Yaml = params['Yaml']
          @ConfigMapNamespace = params['ConfigMapNamespace']
        end
      end

      # ModifyConfigMap返回参数结构体
      class ModifyConfigMapResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeNodeLabels请求参数结构体
      class ModifyEdgeNodeLabelsRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeId: IECP边缘节点ID
        # @type NodeId: Integer
        # @param Labels: 标签列表
        # @type Labels: Array

        attr_accessor :EdgeUnitId, :NodeId, :Labels
        
        def initialize(edgeunitid=nil, nodeid=nil, labels=nil)
          @EdgeUnitId = edgeunitid
          @NodeId = nodeid
          @Labels = labels
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeId = params['NodeId']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              keyvalueobj_tmp = KeyValueObj.new
              keyvalueobj_tmp.deserialize(i)
              @Labels << keyvalueobj_tmp
            end
          end
        end
      end

      # ModifyEdgeNodeLabels返回参数结构体
      class ModifyEdgeNodeLabelsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeUnitApplicationBasicInfo请求参数结构体
      class ModifyEdgeUnitApplicationBasicInfoRequest < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 应用基本信息
        # @type BasicInfo: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicInfo`
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer

        attr_accessor :BasicInfo, :EdgeUnitId, :ApplicationId
        
        def initialize(basicinfo=nil, edgeunitid=nil, applicationid=nil)
          @BasicInfo = basicinfo
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = ApplicationBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # ModifyEdgeUnitApplicationBasicInfo返回参数结构体
      class ModifyEdgeUnitApplicationBasicInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeUnitApplicationVisualization请求参数结构体
      class ModifyEdgeUnitApplicationVisualizationRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer
        # @param BasicConfig: 应用配置
        # @type BasicConfig: :class:`Tencentcloud::Iecp.v20210914.models.ApplicationBasicConfig`
        # @param Volumes: 卷配置
        # @type Volumes: Array
        # @param InitContainers: 初始容器列表
        # @type InitContainers: Array
        # @param Containers: 容器配置
        # @type Containers: Array
        # @param Service: 服务配置
        # @type Service: :class:`Tencentcloud::Iecp.v20210914.models.Service`
        # @param Job: Job配置
        # @type Job: :class:`Tencentcloud::Iecp.v20210914.models.Job`
        # @param CronJob: CronJob配置
        # @type CronJob: :class:`Tencentcloud::Iecp.v20210914.models.CronJob`
        # @param RestartPolicy: 重启策略
        # @type RestartPolicy: String
        # @param ImagePullSecrets: 镜像拉取密钥
        # @type ImagePullSecrets: Array
        # @param HorizontalPodAutoscaler: HPA配置
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Iecp.v20210914.models.HorizontalPodAutoscaler`

        attr_accessor :EdgeUnitId, :ApplicationId, :BasicConfig, :Volumes, :InitContainers, :Containers, :Service, :Job, :CronJob, :RestartPolicy, :ImagePullSecrets, :HorizontalPodAutoscaler
        
        def initialize(edgeunitid=nil, applicationid=nil, basicconfig=nil, volumes=nil, initcontainers=nil, containers=nil, service=nil, job=nil, cronjob=nil, restartpolicy=nil, imagepullsecrets=nil, horizontalpodautoscaler=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
          @BasicConfig = basicconfig
          @Volumes = volumes
          @InitContainers = initcontainers
          @Containers = containers
          @Service = service
          @Job = job
          @CronJob = cronjob
          @RestartPolicy = restartpolicy
          @ImagePullSecrets = imagepullsecrets
          @HorizontalPodAutoscaler = horizontalpodautoscaler
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
          unless params['BasicConfig'].nil?
            @BasicConfig = ApplicationBasicConfig.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
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
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          unless params['CronJob'].nil?
            @CronJob = CronJob.new
            @CronJob.deserialize(params['CronJob'])
          end
          @RestartPolicy = params['RestartPolicy']
          @ImagePullSecrets = params['ImagePullSecrets']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
        end
      end

      # ModifyEdgeUnitApplicationVisualization返回参数结构体
      class ModifyEdgeUnitApplicationVisualizationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeUnitApplicationYaml请求参数结构体
      class ModifyEdgeUnitApplicationYamlRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer
        # @param Yaml: Yaml配置
        # @type Yaml: String

        attr_accessor :EdgeUnitId, :ApplicationId, :Yaml
        
        def initialize(edgeunitid=nil, applicationid=nil, yaml=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
          @Yaml = yaml
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
          @Yaml = params['Yaml']
        end
      end

      # ModifyEdgeUnitApplicationYaml返回参数结构体
      class ModifyEdgeUnitApplicationYamlResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeUnitDeployGridItem请求参数结构体
      class ModifyEdgeUnitDeployGridItemRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param GridItemName: Grid名称
        # @type GridItemName: String
        # @param WorkloadKind: 负载类型（StatefulSetGrid｜DeploymentGrid）
        # @type WorkloadKind: String
        # @param Replicas: 副本数
        # @type Replicas: Integer
        # @param Namespace: 命名空间，默认default
        # @type Namespace: String

        attr_accessor :EdgeUnitId, :GridItemName, :WorkloadKind, :Replicas, :Namespace
        
        def initialize(edgeunitid=nil, griditemname=nil, workloadkind=nil, replicas=nil, namespace=nil)
          @EdgeUnitId = edgeunitid
          @GridItemName = griditemname
          @WorkloadKind = workloadkind
          @Replicas = replicas
          @Namespace = namespace
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @GridItemName = params['GridItemName']
          @WorkloadKind = params['WorkloadKind']
          @Replicas = params['Replicas']
          @Namespace = params['Namespace']
        end
      end

      # ModifyEdgeUnitDeployGridItem返回参数结构体
      class ModifyEdgeUnitDeployGridItemResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEdgeUnit请求参数结构体
      class ModifyEdgeUnitRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 边缘集群ID
        # @type EdgeUnitId: Integer
        # @param Name: 边缘集群名称，64字符以内
        # @type Name: String
        # @param Description: 集群描述，200字符以内
        # @type Description: String

        attr_accessor :EdgeUnitId, :Name, :Description
        
        def initialize(edgeunitid=nil, name=nil, description=nil)
          @EdgeUnitId = edgeunitid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifyEdgeUnit返回参数结构体
      class ModifyEdgeUnitResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNodeUnitTemplate请求参数结构体
      class ModifyNodeUnitTemplateRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: IECP边缘单元ID
        # @type EdgeUnitId: Integer
        # @param NodeUnitTemplateID: NodeUnit模板ID
        # @type NodeUnitTemplateID: Integer
        # @param Nodes: 包含的节点列表
        # @type Nodes: Array

        attr_accessor :EdgeUnitId, :NodeUnitTemplateID, :Nodes
        
        def initialize(edgeunitid=nil, nodeunittemplateid=nil, nodes=nil)
          @EdgeUnitId = edgeunitid
          @NodeUnitTemplateID = nodeunittemplateid
          @Nodes = nodes
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @NodeUnitTemplateID = params['NodeUnitTemplateID']
          @Nodes = params['Nodes']
        end
      end

      # ModifyNodeUnitTemplate返回参数结构体
      class ModifyNodeUnitTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecret请求参数结构体
      class ModifySecretRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitID: 边缘单元ID
        # @type EdgeUnitID: Integer
        # @param SecretName: Secret名
        # @type SecretName: String
        # @param Yaml: Secret的Yaml格式
        # @type Yaml: String
        # @param SecretNamespace: Secret命名空间（默认:default）
        # @type SecretNamespace: String

        attr_accessor :EdgeUnitID, :SecretName, :Yaml, :SecretNamespace
        
        def initialize(edgeunitid=nil, secretname=nil, yaml=nil, secretnamespace=nil)
          @EdgeUnitID = edgeunitid
          @SecretName = secretname
          @Yaml = yaml
          @SecretNamespace = secretnamespace
        end

        def deserialize(params)
          @EdgeUnitID = params['EdgeUnitID']
          @SecretName = params['SecretName']
          @Yaml = params['Yaml']
          @SecretNamespace = params['SecretNamespace']
        end
      end

      # ModifySecret返回参数结构体
      class ModifySecretResponse < TencentCloud::Common::AbstractModel
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

      # 监控数据列
      class MonitorMetricsColumn < TencentCloud::Common::AbstractModel
        # @param ColumnName: 数据名称
        # @type ColumnName: String
        # @param ColumnData: 数据内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnData: Array
        # @param ColumnBelong: 数据所属，查询Workload类型时有值
        # @type ColumnBelong: String
        # @param MaxValue: 最大值
        # @type MaxValue: Float
        # @param MinValue: 最小值
        # @type MinValue: Float
        # @param AvgValue: 平均值
        # @type AvgValue: Float
        # @param ColumnTime: 时间戳数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnTime: Integer

        attr_accessor :ColumnName, :ColumnData, :ColumnBelong, :MaxValue, :MinValue, :AvgValue, :ColumnTime
        
        def initialize(columnname=nil, columndata=nil, columnbelong=nil, maxvalue=nil, minvalue=nil, avgvalue=nil, columntime=nil)
          @ColumnName = columnname
          @ColumnData = columndata
          @ColumnBelong = columnbelong
          @MaxValue = maxvalue
          @MinValue = minvalue
          @AvgValue = avgvalue
          @ColumnTime = columntime
        end

        def deserialize(params)
          @ColumnName = params['ColumnName']
          @ColumnData = params['ColumnData']
          @ColumnBelong = params['ColumnBelong']
          @MaxValue = params['MaxValue']
          @MinValue = params['MinValue']
          @AvgValue = params['AvgValue']
          @ColumnTime = params['ColumnTime']
        end
      end

      # 命名空间信息
      class NamespaceInfo < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param Status: 状态(Active|Terminating)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Description: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Protected: 是否保护(不允许删除)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protected: Boolean
        # @param Yaml: 对应的Yaml配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Yaml: String

        attr_accessor :Namespace, :Status, :Description, :CreateTime, :Protected, :Yaml
        
        def initialize(namespace=nil, status=nil, description=nil, createtime=nil, protected=nil, yaml=nil)
          @Namespace = namespace
          @Status = status
          @Description = description
          @CreateTime = createtime
          @Protected = protected
          @Yaml = yaml
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Status = params['Status']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Protected = params['Protected']
          @Yaml = params['Yaml']
        end
      end

      # 命名空间下资源描述
      class NamespaceResource < TencentCloud::Common::AbstractModel
        # @param Type: 类型(workload|grid|configmap|secret)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Count: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Names: 名称(最多返回5个）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Names: Array

        attr_accessor :Type, :Count, :Names
        
        def initialize(type=nil, count=nil, names=nil)
          @Type = type
          @Count = count
          @Names = names
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
          @Names = params['Names']
        end
      end

      # NodeGroup信息
      class NodeGroupInfo < TencentCloud::Common::AbstractModel
        # @param Description: 描述
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param NodeGroupName: NodeGroup名称
        # @type NodeGroupName: String
        # @param DeploymentGridList: DeploymentGrid数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploymentGridList: Array
        # @param StatefulSetGridList: StatefulSetGrid数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatefulSetGridList: Array
        # @param Protect: 是否平台保护
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protect: Boolean

        attr_accessor :Description, :CreateTime, :NodeGroupName, :DeploymentGridList, :StatefulSetGridList, :Protect
        
        def initialize(description=nil, createtime=nil, nodegroupname=nil, deploymentgridlist=nil, statefulsetgridlist=nil, protect=nil)
          @Description = description
          @CreateTime = createtime
          @NodeGroupName = nodegroupname
          @DeploymentGridList = deploymentgridlist
          @StatefulSetGridList = statefulsetgridlist
          @Protect = protect
        end

        def deserialize(params)
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @NodeGroupName = params['NodeGroupName']
          unless params['DeploymentGridList'].nil?
            @DeploymentGridList = []
            params['DeploymentGridList'].each do |i|
              griddetail_tmp = GridDetail.new
              griddetail_tmp.deserialize(i)
              @DeploymentGridList << griddetail_tmp
            end
          end
          unless params['StatefulSetGridList'].nil?
            @StatefulSetGridList = []
            params['StatefulSetGridList'].each do |i|
              griddetail_tmp = GridDetail.new
              griddetail_tmp.deserialize(i)
              @StatefulSetGridList << griddetail_tmp
            end
          end
          @Protect = params['Protect']
        end
      end

      # 指定NodeGroup中查询NodeUnit模版
      class NodeGroupNodeUnitTemplateInfo < TencentCloud::Common::AbstractModel
        # @param ID: 模版ID
        # @type ID: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Description: 描述
        # @type Description: String
        # @param NodeList: 包含节点列表
        # @type NodeList: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Relation: 是否关联
        # @type Relation: Boolean

        attr_accessor :ID, :Name, :Namespace, :Description, :NodeList, :UpdateTime, :CreateTime, :Relation
        
        def initialize(id=nil, name=nil, namespace=nil, description=nil, nodelist=nil, updatetime=nil, createtime=nil, relation=nil)
          @ID = id
          @Name = name
          @Namespace = namespace
          @Description = description
          @NodeList = nodelist
          @UpdateTime = updatetime
          @CreateTime = createtime
          @Relation = relation
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Description = params['Description']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              nodesimpleinfo_tmp = NodeSimpleInfo.new
              nodesimpleinfo_tmp.deserialize(i)
              @NodeList << nodesimpleinfo_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @Relation = params['Relation']
        end
      end

      # 节点基础信息
      class NodeSimpleInfo < TencentCloud::Common::AbstractModel
        # @param ID: 节点ID
        # @type ID: Integer
        # @param NodeName: 节点名称
        # @type NodeName: String

        attr_accessor :ID, :NodeName
        
        def initialize(id=nil, nodename=nil)
          @ID = id
          @NodeName = nodename
        end

        def deserialize(params)
          @ID = params['ID']
          @NodeName = params['NodeName']
        end
      end

      # NodeUnit信息
      class NodeUnitInfo < TencentCloud::Common::AbstractModel
        # @param Id: NodeUnitId
        # @type Id: Integer
        # @param NodeUnitName: NodeUnit名称
        # @type NodeUnitName: String
        # @param NodeList: 包含节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array

        attr_accessor :Id, :NodeUnitName, :NodeList
        
        def initialize(id=nil, nodeunitname=nil, nodelist=nil)
          @Id = id
          @NodeUnitName = nodeunitname
          @NodeList = nodelist
        end

        def deserialize(params)
          @Id = params['Id']
          @NodeUnitName = params['NodeUnitName']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              nodeunitnodeinfo_tmp = NodeUnitNodeInfo.new
              nodeunitnodeinfo_tmp.deserialize(i)
              @NodeList << nodeunitnodeinfo_tmp
            end
          end
        end
      end

      # NodeUnit中边缘节点信息
      class NodeUnitNodeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 节点ID
        # @type Id: Integer
        # @param Status: 节点状态  NodeStatusHealthy (健康)/NodeStatusAbnormal (异常)/NodeStatusOffline (下线)/NodeStatusNotActivated (未激活
        # @type Status: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param InternalIP: 内网节点IP
        # @type InternalIP: String

        attr_accessor :Id, :Status, :NodeName, :InternalIP
        
        def initialize(id=nil, status=nil, nodename=nil, internalip=nil)
          @Id = id
          @Status = status
          @NodeName = nodename
          @InternalIP = internalip
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @NodeName = params['NodeName']
          @InternalIP = params['InternalIP']
        end
      end

      # NodeUnit模版信息
      class NodeUnitTemplate < TencentCloud::Common::AbstractModel
        # @param ID: NodeUnit模版ID
        # @type ID: Integer
        # @param Name: NodeUnit模版名称
        # @type Name: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Description: 描述
        # @type Description: String
        # @param NodeList: 包含节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array
        # @param NodeGroups: NodeGroup列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeGroups: Array
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ID, :Name, :Namespace, :Description, :NodeList, :NodeGroups, :UpdateTime, :CreateTime
        
        def initialize(id=nil, name=nil, namespace=nil, description=nil, nodelist=nil, nodegroups=nil, updatetime=nil, createtime=nil)
          @ID = id
          @Name = name
          @Namespace = namespace
          @Description = description
          @NodeList = nodelist
          @NodeGroups = nodegroups
          @UpdateTime = updatetime
          @CreateTime = createtime
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Namespace = params['Namespace']
          @Description = params['Description']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              nodesimpleinfo_tmp = NodeSimpleInfo.new
              nodesimpleinfo_tmp.deserialize(i)
              @NodeList << nodesimpleinfo_tmp
            end
          end
          @NodeGroups = params['NodeGroups']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
        end
      end

      # 操作日志
      class OperationLog < TencentCloud::Common::AbstractModel
        # @param OperateTime: 操作时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateTime: String
        # @param Module: 模块名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Module: String
        # @param Description: 操作信息
        # @type Description: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param Status: 状态: 1:成功 2:失败
        # @type Status: Integer
        # @param OperatorUserID: 操作用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUserID: String
        # @param Action: 操作动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String

        attr_accessor :OperateTime, :Module, :Description, :UserId, :Status, :OperatorUserID, :Action
        
        def initialize(operatetime=nil, _module=nil, description=nil, userid=nil, status=nil, operatoruserid=nil, action=nil)
          @OperateTime = operatetime
          @Module = _module
          @Description = description
          @UserId = userid
          @Status = status
          @OperatorUserID = operatoruserid
          @Action = action
        end

        def deserialize(params)
          @OperateTime = params['OperateTime']
          @Module = params['Module']
          @Description = params['Description']
          @UserId = params['UserId']
          @Status = params['Status']
          @OperatorUserID = params['OperatorUserID']
          @Action = params['Action']
        end
      end

      # 操作日志状态查询条件
      class OperationLogsCondition < TencentCloud::Common::AbstractModel
        # @param Status: 状态列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Array

        attr_accessor :Status
        
        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # Pod状态信息
      class PodStatus < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param NameSpace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameSpace: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param IP: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param StartTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param RunSec: 运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunSec: Integer
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer

        attr_accessor :Name, :NameSpace, :Status, :IP, :StartTime, :RunSec, :RestartCount
        
        def initialize(name=nil, namespace=nil, status=nil, ip=nil, starttime=nil, runsec=nil, restartcount=nil)
          @Name = name
          @NameSpace = namespace
          @Status = status
          @IP = ip
          @StartTime = starttime
          @RunSec = runsec
          @RestartCount = restartcount
        end

        def deserialize(params)
          @Name = params['Name']
          @NameSpace = params['NameSpace']
          @Status = params['Status']
          @IP = params['IP']
          @StartTime = params['StartTime']
          @RunSec = params['RunSec']
          @RestartCount = params['RestartCount']
        end
      end

      # 端口配置
      class PortConfig < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议类型(tcp|udp)
        # @type Protocol: String
        # @param Port: 源端口
        # @type Port: Integer
        # @param TargetPort: 目标端口
        # @type TargetPort: Integer
        # @param NodePort: 节点端口
        # @type NodePort: Integer

        attr_accessor :Protocol, :Port, :TargetPort, :NodePort
        
        def initialize(protocol=nil, port=nil, targetport=nil, nodeport=nil)
          @Protocol = protocol
          @Port = port
          @TargetPort = targetport
          @NodePort = nodeport
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Port = params['Port']
          @TargetPort = params['TargetPort']
          @NodePort = params['NodePort']
        end
      end

      # 探针配置
      class Probe < TencentCloud::Common::AbstractModel
        # @param InitialDelaySeconds: 启动后，延迟探测时间 单位:秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param PeriodSeconds: 探测间隔，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodSeconds: Integer
        # @param TimeoutSeconds: 探测超时时间 单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutSeconds: Integer
        # @param SuccessThreshold: 失败后检查成功的最小连续成功次数。默认为1.活跃度必须为1。最小值为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessThreshold: Integer
        # @param FailureThreshold: 当Pod成功启动且检查失败时，放弃之前尝试次数。默认为3.最小值为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureThreshold: Integer
        # @param HttpProbe: HTTP探测配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpProbe: :class:`Tencentcloud::Iecp.v20210914.models.HttpProbe`
        # @param TcpProbe: TCP探测配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcpProbe: :class:`Tencentcloud::Iecp.v20210914.models.TcpProbe`

        attr_accessor :InitialDelaySeconds, :PeriodSeconds, :TimeoutSeconds, :SuccessThreshold, :FailureThreshold, :HttpProbe, :TcpProbe
        
        def initialize(initialdelayseconds=nil, periodseconds=nil, timeoutseconds=nil, successthreshold=nil, failurethreshold=nil, httpprobe=nil, tcpprobe=nil)
          @InitialDelaySeconds = initialdelayseconds
          @PeriodSeconds = periodseconds
          @TimeoutSeconds = timeoutseconds
          @SuccessThreshold = successthreshold
          @FailureThreshold = failurethreshold
          @HttpProbe = httpprobe
          @TcpProbe = tcpprobe
        end

        def deserialize(params)
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @PeriodSeconds = params['PeriodSeconds']
          @TimeoutSeconds = params['TimeoutSeconds']
          @SuccessThreshold = params['SuccessThreshold']
          @FailureThreshold = params['FailureThreshold']
          unless params['HttpProbe'].nil?
            @HttpProbe = HttpProbe.new
            @HttpProbe.deserialize(params['HttpProbe'])
          end
          unless params['TcpProbe'].nil?
            @TcpProbe = TcpProbe.new
            @TcpProbe.deserialize(params['TcpProbe'])
          end
        end
      end

      # RedeployEdgeUnitApplication请求参数结构体
      class RedeployEdgeUnitApplicationRequest < TencentCloud::Common::AbstractModel
        # @param EdgeUnitId: 单元ID
        # @type EdgeUnitId: Integer
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer

        attr_accessor :EdgeUnitId, :ApplicationId
        
        def initialize(edgeunitid=nil, applicationid=nil)
          @EdgeUnitId = edgeunitid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @EdgeUnitId = params['EdgeUnitId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # RedeployEdgeUnitApplication返回参数结构体
      class RedeployEdgeUnitApplicationResponse < TencentCloud::Common::AbstractModel
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

      # 资源目标指标
      class ResourceMetricTarget < TencentCloud::Common::AbstractModel
        # @param Type: 类型(cpu|memory)
        # @type Type: String
        # @param AverageValue: 平均值
        # @type AverageValue: Integer
        # @param Scale: 单位
        # @type Scale: String
        # @param AverageUtilization: 平均值
        # @type AverageUtilization: Integer

        attr_accessor :Type, :AverageValue, :Scale, :AverageUtilization
        
        def initialize(type=nil, averagevalue=nil, scale=nil, averageutilization=nil)
          @Type = type
          @AverageValue = averagevalue
          @Scale = scale
          @AverageUtilization = averageutilization
        end

        def deserialize(params)
          @Type = params['Type']
          @AverageValue = params['AverageValue']
          @Scale = params['Scale']
          @AverageUtilization = params['AverageUtilization']
        end
      end

      # Secret信息
      class SecretItem < TencentCloud::Common::AbstractModel
        # @param Name: Secret名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param SecretType: Secret类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretType: String

        attr_accessor :Name, :Namespace, :CreateTime, :SecretType
        
        def initialize(name=nil, namespace=nil, createtime=nil, secrettype=nil)
          @Name = name
          @Namespace = namespace
          @CreateTime = createtime
          @SecretType = secrettype
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @CreateTime = params['CreateTime']
          @SecretType = params['SecretType']
        end
      end

      # 安全能力
      class SecurityCapabilities < TencentCloud::Common::AbstractModel
        # @param Add: 允许操作列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Add: Array
        # @param Drop: 禁止操作列表
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

      # 安全上下文
      class SecurityContext < TencentCloud::Common::AbstractModel
        # @param Privilege: 是否开启特权模式
        # @type Privilege: Boolean
        # @param ProcMount: 目录/Proc挂载方式
        # @type ProcMount: String
        # @param Capabilities: 安全配置
        # @type Capabilities: :class:`Tencentcloud::Iecp.v20210914.models.SecurityCapabilities`

        attr_accessor :Privilege, :ProcMount, :Capabilities
        
        def initialize(privilege=nil, procmount=nil, capabilities=nil)
          @Privilege = privilege
          @ProcMount = procmount
          @Capabilities = capabilities
        end

        def deserialize(params)
          @Privilege = params['Privilege']
          @ProcMount = params['ProcMount']
          unless params['Capabilities'].nil?
            @Capabilities = SecurityCapabilities.new
            @Capabilities.deserialize(params['Capabilities'])
          end
        end
      end

      # 服务配置
      class Service < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型 (ClusterIP|NodePort)
        # @type Type: String
        # @param Ports: 端口配置
        # @type Ports: Array
        # @param Labels: 标签
        # @type Labels: Array
        # @param Namespace: 命名空间默认default
        # @type Namespace: String
        # @param ClusterIP: 服务IP
        # @type ClusterIP: String

        attr_accessor :Name, :Type, :Ports, :Labels, :Namespace, :ClusterIP
        
        def initialize(name=nil, type=nil, ports=nil, labels=nil, namespace=nil, clusterip=nil)
          @Name = name
          @Type = type
          @Ports = ports
          @Labels = labels
          @Namespace = namespace
          @ClusterIP = clusterip
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              portconfig_tmp = PortConfig.new
              portconfig_tmp.deserialize(i)
              @Ports << portconfig_tmp
            end
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          @Namespace = params['Namespace']
          @ClusterIP = params['ClusterIP']
        end
      end

      # 查询结果排序条件
      class Sort < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # @type Field: String
        # @param Order: 排序方式，升序ASC / 降序DESC
        # @type Order: String

        attr_accessor :Field, :Order
        
        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # TCP探测配置
      class TcpProbe < TencentCloud::Common::AbstractModel
        # @param Port: 连接端口
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

      # 卷
      class Volume < TencentCloud::Common::AbstractModel
        # @param Source: 来源(emptyDir|hostPath|configMap|secret|nfs)
        # @type Source: String
        # @param Name: 名称
        # @type Name: String
        # @param HostPath: Host挂载配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostPath: :class:`Tencentcloud::Iecp.v20210914.models.VolumeHostPath`
        # @param ConfigMap: ConfigMap挂载配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigMap: :class:`Tencentcloud::Iecp.v20210914.models.VolumeConfigMap`
        # @param Secret: Secret挂载配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Secret: :class:`Tencentcloud::Iecp.v20210914.models.VolumeConfigMap`
        # @param NFS: NFS挂载配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NFS: :class:`Tencentcloud::Iecp.v20210914.models.VolumeNFS`

        attr_accessor :Source, :Name, :HostPath, :ConfigMap, :Secret, :NFS
        
        def initialize(source=nil, name=nil, hostpath=nil, configmap=nil, secret=nil, nfs=nil)
          @Source = source
          @Name = name
          @HostPath = hostpath
          @ConfigMap = configmap
          @Secret = secret
          @NFS = nfs
        end

        def deserialize(params)
          @Source = params['Source']
          @Name = params['Name']
          unless params['HostPath'].nil?
            @HostPath = VolumeHostPath.new
            @HostPath.deserialize(params['HostPath'])
          end
          unless params['ConfigMap'].nil?
            @ConfigMap = VolumeConfigMap.new
            @ConfigMap.deserialize(params['ConfigMap'])
          end
          unless params['Secret'].nil?
            @Secret = VolumeConfigMap.new
            @Secret.deserialize(params['Secret'])
          end
          unless params['NFS'].nil?
            @NFS = VolumeNFS.new
            @NFS.deserialize(params['NFS'])
          end
        end
      end

      # ConfigMap挂载卷
      class VolumeConfigMap < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Items: Key列表配置
        # @type Items: Array

        attr_accessor :Name, :Items
        
        def initialize(name=nil, items=nil)
          @Name = name
          @Items = items
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              volumeconfigmapkeytopath_tmp = VolumeConfigMapKeyToPath.new
              volumeconfigmapkeytopath_tmp.deserialize(i)
              @Items << volumeconfigmapkeytopath_tmp
            end
          end
        end
      end

      # ConfigMap的key挂载到路径
      class VolumeConfigMapKeyToPath < TencentCloud::Common::AbstractModel
        # @param Key: 健名
        # @type Key: String
        # @param Path: 对应本地路径
        # @type Path: String
        # @param Mode: 对应权限模式
        # @type Mode: String

        attr_accessor :Key, :Path, :Mode
        
        def initialize(key=nil, path=nil, mode=nil)
          @Key = key
          @Path = path
          @Mode = mode
        end

        def deserialize(params)
          @Key = params['Key']
          @Path = params['Path']
          @Mode = params['Mode']
        end
      end

      # 数据卷主机路径，取值参考: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
      class VolumeHostPath < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Path: 路径
        # @type Path: String

        attr_accessor :Type, :Path
        
        def initialize(type=nil, path=nil)
          @Type = type
          @Path = path
        end

        def deserialize(params)
          @Type = params['Type']
          @Path = params['Path']
        end
      end

      # 数据挂载
      class VolumeMount < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param MountPath: 挂载路径
        # @type MountPath: String
        # @param SubPath: 子路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubPath: String
        # @param ReadOnly: 是否只读
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnly: Boolean

        attr_accessor :Name, :MountPath, :SubPath, :ReadOnly
        
        def initialize(name=nil, mountpath=nil, subpath=nil, readonly=nil)
          @Name = name
          @MountPath = mountpath
          @SubPath = subpath
          @ReadOnly = readonly
        end

        def deserialize(params)
          @Name = params['Name']
          @MountPath = params['MountPath']
          @SubPath = params['SubPath']
          @ReadOnly = params['ReadOnly']
        end
      end

      # NFS挂载卷
      class VolumeNFS < TencentCloud::Common::AbstractModel
        # @param Server: 服务地址
        # @type Server: String
        # @param ServerPath: 对应服务器路径
        # @type ServerPath: String
        # @param Path: 对应本地路径
        # @type Path: String

        attr_accessor :Server, :ServerPath, :Path
        
        def initialize(server=nil, serverpath=nil, path=nil)
          @Server = server
          @ServerPath = serverpath
          @Path = path
        end

        def deserialize(params)
          @Server = params['Server']
          @ServerPath = params['ServerPath']
          @Path = params['Path']
        end
      end

    end
  end
end

