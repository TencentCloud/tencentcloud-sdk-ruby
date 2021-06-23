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
  module Tiems
    module V20190416
      # 状态
      class Conditions < TencentCloud::Common::AbstractModel
        # @param Reason: 原因
        # @type Reason: String
        # @param Count: 具有相同原因的副本个数
        # @type Count: Integer

        attr_accessor :Reason, :Count
        
        def initialize(reason=nil, count=nil)
          @Reason = reason
          @Count = count
        end

        def deserialize(params)
          @Reason = params['Reason']
          @Count = params['Count']
        end
      end

      # 配置
      class Config < TencentCloud::Common::AbstractModel
        # @param Id: Id
        # @type Id: String
        # @param Name: 配置名
        # @type Name: String
        # @param ModelUri: 模型地址
        # @type ModelUri: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Runtime: 运行环境
        # @type Runtime: String
        # @param Version: 配置版本
        # @type Version: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Description: 配置描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Id, :Name, :ModelUri, :CreateTime, :Runtime, :Version, :UpdateTime, :Description
        
        def initialize(id=nil, name=nil, modeluri=nil, createtime=nil, runtime=nil, version=nil, updatetime=nil, description=nil)
          @Id = id
          @Name = name
          @ModelUri = modeluri
          @CreateTime = createtime
          @Runtime = runtime
          @Version = version
          @UpdateTime = updatetime
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ModelUri = params['ModelUri']
          @CreateTime = params['CreateTime']
          @Runtime = params['Runtime']
          @Version = params['Version']
          @UpdateTime = params['UpdateTime']
          @Description = params['Description']
        end
      end

      # CreateJob请求参数结构体
      class CreateJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param ResourceGroupId: 使用的资源组 Id，默认使用共享资源组
        # @type ResourceGroupId: String
        # @param Cpu: 处理器配置, 单位为1/1000核；范围[100, 256000]
        # @type Cpu: Integer
        # @param Memory: 内存配置, 单位为1M；范围[100, 256000]
        # @type Memory: Integer
        # @param Cluster: 运行集群
        # @type Cluster: String
        # @param PredictInput: 预测输入
        # @type PredictInput: :class:`Tencentcloud::Tiems.v20190416.models.PredictInput`
        # @param Description: 任务描述
        # @type Description: String
        # @param WorkerCount: 同时处理任务的 Worker 个数
        # @type WorkerCount: Integer
        # @param ConfigId: 使用的配置 Id
        # @type ConfigId: String
        # @param Gpu: GPU算力配置，单位为1/1000 卡，范围 [0, 256000]
        # @type Gpu: Integer
        # @param GpuMemory: 显存配置, 单位为1M，范围 [0, 256000]
        # @type GpuMemory: Integer
        # @param GpuType: GPU类型
        # @type GpuType: String
        # @param QuantizationInput: 量化输入
        # @type QuantizationInput: :class:`Tencentcloud::Tiems.v20190416.models.QuantizationInput`
        # @param LogTopicId: Cls日志主题ID
        # @type LogTopicId: String

        attr_accessor :Name, :ResourceGroupId, :Cpu, :Memory, :Cluster, :PredictInput, :Description, :WorkerCount, :ConfigId, :Gpu, :GpuMemory, :GpuType, :QuantizationInput, :LogTopicId
        
        def initialize(name=nil, resourcegroupid=nil, cpu=nil, memory=nil, cluster=nil, predictinput=nil, description=nil, workercount=nil, configid=nil, gpu=nil, gpumemory=nil, gputype=nil, quantizationinput=nil, logtopicid=nil)
          @Name = name
          @ResourceGroupId = resourcegroupid
          @Cpu = cpu
          @Memory = memory
          @Cluster = cluster
          @PredictInput = predictinput
          @Description = description
          @WorkerCount = workercount
          @ConfigId = configid
          @Gpu = gpu
          @GpuMemory = gpumemory
          @GpuType = gputype
          @QuantizationInput = quantizationinput
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          @Name = params['Name']
          @ResourceGroupId = params['ResourceGroupId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Cluster = params['Cluster']
          unless params['PredictInput'].nil?
            @PredictInput = PredictInput.new
            @PredictInput.deserialize(params['PredictInput'])
          end
          @Description = params['Description']
          @WorkerCount = params['WorkerCount']
          @ConfigId = params['ConfigId']
          @Gpu = params['Gpu']
          @GpuMemory = params['GpuMemory']
          @GpuType = params['GpuType']
          unless params['QuantizationInput'].nil?
            @QuantizationInput = QuantizationInput.new
            @QuantizationInput.deserialize(params['QuantizationInput'])
          end
          @LogTopicId = params['LogTopicId']
        end
      end

      # CreateJob返回参数结构体
      class CreateJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: 任务
        # @type Job: :class:`Tencentcloud::Tiems.v20190416.models.Job`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId
        
        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRsgAsGroup请求参数结构体
      class CreateRsgAsGroupRequest < TencentCloud::Common::AbstractModel
        # @param RsgId: 资源组 ID
        # @type RsgId: String
        # @param MaxSize: 伸缩组允许的最大节点数
        # @type MaxSize: Integer
        # @param MinSize: 伸缩组允许的最小节点数
        # @type MinSize: Integer
        # @param InstanceType: 伸缩组的节点规格
        # @type InstanceType: String
        # @param Cluster: 资源组所在的集群名
        # @type Cluster: String
        # @param Name: 伸缩组名称
        # @type Name: String
        # @param DesiredSize: 伸缩组期望的节点数
        # @type DesiredSize: Integer

        attr_accessor :RsgId, :MaxSize, :MinSize, :InstanceType, :Cluster, :Name, :DesiredSize
        
        def initialize(rsgid=nil, maxsize=nil, minsize=nil, instancetype=nil, cluster=nil, name=nil, desiredsize=nil)
          @RsgId = rsgid
          @MaxSize = maxsize
          @MinSize = minsize
          @InstanceType = instancetype
          @Cluster = cluster
          @Name = name
          @DesiredSize = desiredsize
        end

        def deserialize(params)
          @RsgId = params['RsgId']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @InstanceType = params['InstanceType']
          @Cluster = params['Cluster']
          @Name = params['Name']
          @DesiredSize = params['DesiredSize']
        end
      end

      # CreateRsgAsGroup返回参数结构体
      class CreateRsgAsGroupResponse < TencentCloud::Common::AbstractModel
        # @param RsgAsGroup: 所创建的资源组的伸缩组
        # @type RsgAsGroup: :class:`Tencentcloud::Tiems.v20190416.models.RsgAsGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RsgAsGroup, :RequestId
        
        def initialize(rsgasgroup=nil, requestid=nil)
          @RsgAsGroup = rsgasgroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RsgAsGroup'].nil?
            @RsgAsGroup = RsgAsGroup.new
            @RsgAsGroup.deserialize(params['RsgAsGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRuntime请求参数结构体
      class CreateRuntimeRequest < TencentCloud::Common::AbstractModel
        # @param Name: 全局唯一的运行环境名称
        # @type Name: String
        # @param Image: 运行环境镜像地址
        # @type Image: String
        # @param Framework: 运行环境框架
        # @type Framework: String
        # @param Description: 运行环境描述
        # @type Description: String
        # @param HealthCheckOn: 是否支持健康检查，默认为False
        # @type HealthCheckOn: Boolean

        attr_accessor :Name, :Image, :Framework, :Description, :HealthCheckOn
        
        def initialize(name=nil, image=nil, framework=nil, description=nil, healthcheckon=nil)
          @Name = name
          @Image = image
          @Framework = framework
          @Description = description
          @HealthCheckOn = healthcheckon
        end

        def deserialize(params)
          @Name = params['Name']
          @Image = params['Image']
          @Framework = params['Framework']
          @Description = params['Description']
          @HealthCheckOn = params['HealthCheckOn']
        end
      end

      # CreateRuntime返回参数结构体
      class CreateRuntimeResponse < TencentCloud::Common::AbstractModel
        # @param Runtime: 运行环境
        # @type Runtime: :class:`Tencentcloud::Tiems.v20190416.models.Runtime`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Runtime, :RequestId
        
        def initialize(runtime=nil, requestid=nil)
          @Runtime = runtime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Runtime'].nil?
            @Runtime = Runtime.new
            @Runtime.deserialize(params['Runtime'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceConfig请求参数结构体
      class CreateServiceConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 配置名称
        # @type Name: String
        # @param Runtime: 运行环境
        # @type Runtime: String
        # @param ModelUri: 模型地址，支持cos路径，格式为 cos://bucket名-appid.cos.region名.myqcloud.com/模型文件夹路径。为模型文件的上一层文件夹地址。
        # @type ModelUri: String
        # @param Description: 配置描述
        # @type Description: String

        attr_accessor :Name, :Runtime, :ModelUri, :Description
        
        def initialize(name=nil, runtime=nil, modeluri=nil, description=nil)
          @Name = name
          @Runtime = runtime
          @ModelUri = modeluri
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Runtime = params['Runtime']
          @ModelUri = params['ModelUri']
          @Description = params['Description']
        end
      end

      # CreateServiceConfig返回参数结构体
      class CreateServiceConfigResponse < TencentCloud::Common::AbstractModel
        # @param ServiceConfig: 服务配置
        # @type ServiceConfig: :class:`Tencentcloud::Tiems.v20190416.models.Config`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceConfig, :RequestId
        
        def initialize(serviceconfig=nil, requestid=nil)
          @ServiceConfig = serviceconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceConfig'].nil?
            @ServiceConfig = Config.new
            @ServiceConfig.deserialize(params['ServiceConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateService请求参数结构体
      class CreateServiceRequest < TencentCloud::Common::AbstractModel
        # @param Scaler: 扩缩容配置
        # @type Scaler: :class:`Tencentcloud::Tiems.v20190416.models.Scaler`
        # @param ServiceConfigId: 服务配置Id
        # @type ServiceConfigId: String
        # @param Name: 服务名称
        # @type Name: String
        # @param ScaleMode: 扩缩容方式，支持AUTO, MANUAL，分别表示自动扩缩容和手动扩缩容
        # @type ScaleMode: String
        # @param ResourceGroupId: 部署要使用的资源组Id，默认为共享资源组
        # @type ResourceGroupId: String
        # @param Cpu: 处理器配置, 单位为1/1000核；范围[100, 256000]
        # @type Cpu: Integer
        # @param Memory: 内存配置, 单位为1M；范围[100, 256000]
        # @type Memory: Integer
        # @param Cluster: 集群，不填则使用默认集群
        # @type Cluster: String
        # @param Authentication: 默认为空，表示不需要鉴权，TOKEN 表示选择 Token 鉴权方式
        # @type Authentication: String
        # @param Gpu: GPU算力配置，单位为1/1000 卡，范围 [0, 256000]
        # @type Gpu: Integer
        # @param GpuMemory: 显存配置, 单位为1M，范围 [0, 256000]
        # @type GpuMemory: Integer
        # @param Description: 备注
        # @type Description: String
        # @param GpuType: GPU类型
        # @type GpuType: String
        # @param LogTopicId: Cls日志主题ID
        # @type LogTopicId: String

        attr_accessor :Scaler, :ServiceConfigId, :Name, :ScaleMode, :ResourceGroupId, :Cpu, :Memory, :Cluster, :Authentication, :Gpu, :GpuMemory, :Description, :GpuType, :LogTopicId
        
        def initialize(scaler=nil, serviceconfigid=nil, name=nil, scalemode=nil, resourcegroupid=nil, cpu=nil, memory=nil, cluster=nil, authentication=nil, gpu=nil, gpumemory=nil, description=nil, gputype=nil, logtopicid=nil)
          @Scaler = scaler
          @ServiceConfigId = serviceconfigid
          @Name = name
          @ScaleMode = scalemode
          @ResourceGroupId = resourcegroupid
          @Cpu = cpu
          @Memory = memory
          @Cluster = cluster
          @Authentication = authentication
          @Gpu = gpu
          @GpuMemory = gpumemory
          @Description = description
          @GpuType = gputype
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          unless params['Scaler'].nil?
            @Scaler = Scaler.new
            @Scaler.deserialize(params['Scaler'])
          end
          @ServiceConfigId = params['ServiceConfigId']
          @Name = params['Name']
          @ScaleMode = params['ScaleMode']
          @ResourceGroupId = params['ResourceGroupId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Cluster = params['Cluster']
          @Authentication = params['Authentication']
          @Gpu = params['Gpu']
          @GpuMemory = params['GpuMemory']
          @Description = params['Description']
          @GpuType = params['GpuType']
          @LogTopicId = params['LogTopicId']
        end
      end

      # CreateService返回参数结构体
      class CreateServiceResponse < TencentCloud::Common::AbstractModel
        # @param Service: 服务
        # @type Service: :class:`Tencentcloud::Tiems.v20190416.models.ModelService`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Service, :RequestId
        
        def initialize(service=nil, requestid=nil)
          @Service = service
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Service'].nil?
            @Service = ModelService.new
            @Service.deserialize(params['Service'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 要删除的节点 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteJob请求参数结构体
      class DeleteJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 Id
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

      # DeleteResourceGroup请求参数结构体
      class DeleteResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 要删除的资源组 ID
        # @type ResourceGroupId: String

        attr_accessor :ResourceGroupId
        
        def initialize(resourcegroupid=nil)
          @ResourceGroupId = resourcegroupid
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
        end
      end

      # DeleteResourceGroup返回参数结构体
      class DeleteResourceGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRsgAsGroup请求参数结构体
      class DeleteRsgAsGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteRsgAsGroup返回参数结构体
      class DeleteRsgAsGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRuntime请求参数结构体
      class DeleteRuntimeRequest < TencentCloud::Common::AbstractModel
        # @param Runtime: 要删除的Runtime名
        # @type Runtime: String

        attr_accessor :Runtime
        
        def initialize(runtime=nil)
          @Runtime = runtime
        end

        def deserialize(params)
          @Runtime = params['Runtime']
        end
      end

      # DeleteRuntime返回参数结构体
      class DeleteRuntimeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteServiceConfig请求参数结构体
      class DeleteServiceConfigRequest < TencentCloud::Common::AbstractModel
        # @param ServiceConfigId: 服务配置Id
        # @type ServiceConfigId: String
        # @param ServiceConfigName: 服务配置名称
        # @type ServiceConfigName: String

        attr_accessor :ServiceConfigId, :ServiceConfigName
        
        def initialize(serviceconfigid=nil, serviceconfigname=nil)
          @ServiceConfigId = serviceconfigid
          @ServiceConfigName = serviceconfigname
        end

        def deserialize(params)
          @ServiceConfigId = params['ServiceConfigId']
          @ServiceConfigName = params['ServiceConfigName']
        end
      end

      # DeleteServiceConfig返回参数结构体
      class DeleteServiceConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteService请求参数结构体
      class DeleteServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务Id
        # @type ServiceId: String

        attr_accessor :ServiceId
        
        def initialize(serviceid=nil)
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
        end
      end

      # DeleteService返回参数结构体
      class DeleteServiceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选选项
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为200
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        # @type OrderField: String
        # @param ResourceGroupId: 要查询的资源组 ID
        # @type ResourceGroupId: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField, :ResourceGroupId
        
        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil, resourcegroupid=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @ResourceGroupId = resourcegroupid
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
          @Order = params['Order']
          @OrderField = params['OrderField']
          @ResourceGroupId = params['ResourceGroupId']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源组下节点总数
        # @type TotalCount: Integer
        # @param Instances: 资源组下节点列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId
        
        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @Instances << instance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceGroups请求参数结构体
      class DescribeResourceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选选项
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为200
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeResourceGroups返回参数结构体
      class DescribeResourceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源组总数
        # @type TotalCount: Integer
        # @param ResourceGroups: 资源组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceGroups, :RequestId
        
        def initialize(totalcount=nil, resourcegroups=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceGroups = resourcegroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceGroups'].nil?
            @ResourceGroups = []
            params['ResourceGroups'].each do |i|
              resourcegroup_tmp = ResourceGroup.new
              resourcegroup_tmp.deserialize(i)
              @ResourceGroups << resourcegroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRsgAsGroupActivities请求参数结构体
      class DescribeRsgAsGroupActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组 ID
        # @type Id: String
        # @param StartTime: 查询活动的开始时间
        # @type StartTime: String
        # @param EndTime: 查询互动的结束时间
        # @type EndTime: String
        # @param Filters: 筛选选项
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 200
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围："ASC", "DESC"
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        # @type OrderField: String

        attr_accessor :Id, :StartTime, :EndTime, :Filters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(id=nil, starttime=nil, endtime=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeRsgAsGroupActivities返回参数结构体
      class DescribeRsgAsGroupActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param RsgAsGroupActivitySet: 伸缩组活动数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RsgAsGroupActivitySet: Array
        # @param TotalCount: 所查询的伸缩组活动总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RsgAsGroupActivitySet, :TotalCount, :RequestId
        
        def initialize(rsgasgroupactivityset=nil, totalcount=nil, requestid=nil)
          @RsgAsGroupActivitySet = rsgasgroupactivityset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RsgAsGroupActivitySet'].nil?
            @RsgAsGroupActivitySet = []
            params['RsgAsGroupActivitySet'].each do |i|
              rsgasgroupactivity_tmp = RsgAsGroupActivity.new
              rsgasgroupactivity_tmp.deserialize(i)
              @RsgAsGroupActivitySet << rsgasgroupactivity_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRsgAsGroups请求参数结构体
      class DescribeRsgAsGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选选项
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 200
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围："ASC", "DESC"
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeRsgAsGroups返回参数结构体
      class DescribeRsgAsGroupsResponse < TencentCloud::Common::AbstractModel
        # @param RsgAsGroupSet: 所查询的伸缩组数组
        # @type RsgAsGroupSet: Array
        # @param TotalCount: 伸缩组数组总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RsgAsGroupSet, :TotalCount, :RequestId
        
        def initialize(rsgasgroupset=nil, totalcount=nil, requestid=nil)
          @RsgAsGroupSet = rsgasgroupset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RsgAsGroupSet'].nil?
            @RsgAsGroupSet = []
            params['RsgAsGroupSet'].each do |i|
              rsgasgroup_tmp = RsgAsGroup.new
              rsgasgroup_tmp.deserialize(i)
              @RsgAsGroupSet << rsgasgroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuntimes请求参数结构体
      class DescribeRuntimesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRuntimes返回参数结构体
      class DescribeRuntimesResponse < TencentCloud::Common::AbstractModel
        # @param Runtimes: TIEMS支持的运行环境列表
        # @type Runtimes: Array
        # @param UserAccess: 用户对runtime对权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAccess: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Runtimes, :UserAccess, :RequestId
        
        def initialize(runtimes=nil, useraccess=nil, requestid=nil)
          @Runtimes = runtimes
          @UserAccess = useraccess
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Runtimes'].nil?
            @Runtimes = []
            params['Runtimes'].each do |i|
              runtime_tmp = Runtime.new
              runtime_tmp.deserialize(i)
              @Runtimes << runtime_tmp
            end
          end
          @UserAccess = params['UserAccess']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceConfigs请求参数结构体
      class DescribeServiceConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选选项，支持按照name等进行筛选
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为1000
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        # @type OrderField: String
        # @param PageByName: 是否按照配置名分页
        # @type PageByName: Boolean

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField, :PageByName
        
        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil, pagebyname=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @PageByName = pagebyname
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
          @Order = params['Order']
          @OrderField = params['OrderField']
          @PageByName = params['PageByName']
        end
      end

      # DescribeServiceConfigs返回参数结构体
      class DescribeServiceConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ServiceConfigs: 服务配置
        # @type ServiceConfigs: Array
        # @param TotalCount: 服务配置总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceConfigs, :TotalCount, :RequestId
        
        def initialize(serviceconfigs=nil, totalcount=nil, requestid=nil)
          @ServiceConfigs = serviceconfigs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceConfigs'].nil?
            @ServiceConfigs = []
            params['ServiceConfigs'].each do |i|
              config_tmp = Config.new
              config_tmp.deserialize(i)
              @ServiceConfigs << config_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServices请求参数结构体
      class DescribeServicesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选选项，支持筛选的字段：id, region, zone, cluster, status, runtime, rsg_id
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CREATE_TIME" "UPDATE_TIME"
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeServices返回参数结构体
      class DescribeServicesResponse < TencentCloud::Common::AbstractModel
        # @param Services: 服务列表
        # @type Services: Array
        # @param TotalCount: 服务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Services, :TotalCount, :RequestId
        
        def initialize(services=nil, totalcount=nil, requestid=nil)
          @Services = services
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Services'].nil?
            @Services = []
            params['Services'].each do |i|
              modelservice_tmp = ModelService.new
              modelservice_tmp.deserialize(i)
              @Services << modelservice_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DisableRsgAsGroup请求参数结构体
      class DisableRsgAsGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DisableRsgAsGroup返回参数结构体
      class DisableRsgAsGroupResponse < TencentCloud::Common::AbstractModel
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

      # EnableRsgAsGroup请求参数结构体
      class EnableRsgAsGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # EnableRsgAsGroup返回参数结构体
      class EnableRsgAsGroupResponse < TencentCloud::Common::AbstractModel
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

      # 暴露信息
      class ExposeInfo < TencentCloud::Common::AbstractModel
        # @param ExposeType: 暴露方式，支持 EXTERNAL（外网暴露），VPC （VPC内网打通）
        # @type ExposeType: String
        # @param Ip: 暴露Ip。暴露方式为 EXTERNAL 为外网 Ip，暴露方式为 VPC 时为指定 Vpc 下的Vip
        # @type Ip: String
        # @param VpcId: 暴露方式为 VPC 时，打通的私有网络Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 暴露方式为 VPC 时，打通的子网Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param GateWayServiceId: GATEWAY 服务id，ExposeType = GATEWAY 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GateWayServiceId: String
        # @param GateWayAPIId: GATEWAY api id，ExposeType = GATEWAY 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GateWayAPIId: String
        # @param GateWayDomain: GATEWAY domain，ExposeType = GATEWAY 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GateWayDomain: String

        attr_accessor :ExposeType, :Ip, :VpcId, :SubnetId, :GateWayServiceId, :GateWayAPIId, :GateWayDomain
        
        def initialize(exposetype=nil, ip=nil, vpcid=nil, subnetid=nil, gatewayserviceid=nil, gatewayapiid=nil, gatewaydomain=nil)
          @ExposeType = exposetype
          @Ip = ip
          @VpcId = vpcid
          @SubnetId = subnetid
          @GateWayServiceId = gatewayserviceid
          @GateWayAPIId = gatewayapiid
          @GateWayDomain = gatewaydomain
        end

        def deserialize(params)
          @ExposeType = params['ExposeType']
          @Ip = params['Ip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @GateWayServiceId = params['GateWayServiceId']
          @GateWayAPIId = params['GateWayAPIId']
          @GateWayDomain = params['GateWayDomain']
        end
      end

      # ExposeService请求参数结构体
      class ExposeServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务Id
        # @type ServiceId: String
        # @param ExposeType: 暴露方式，支持 EXTERNAL（外网暴露），VPC （VPC内网打通）
        # @type ExposeType: String
        # @param VpcId: 暴露方式为 VPC 时，填写需要打通的私有网络Id
        # @type VpcId: String
        # @param SubnetId: 暴露方式为 VPC 时，填写需要打通的子网Id
        # @type SubnetId: String

        attr_accessor :ServiceId, :ExposeType, :VpcId, :SubnetId
        
        def initialize(serviceid=nil, exposetype=nil, vpcid=nil, subnetid=nil)
          @ServiceId = serviceid
          @ExposeType = exposetype
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ExposeType = params['ExposeType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # ExposeService返回参数结构体
      class ExposeServiceResponse < TencentCloud::Common::AbstractModel
        # @param Expose: 暴露方式
        # @type Expose: :class:`Tencentcloud::Tiems.v20190416.models.ExposeInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Expose, :RequestId
        
        def initialize(expose=nil, requestid=nil)
          @Expose = expose
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Expose'].nil?
            @Expose = ExposeInfo.new
            @Expose.deserialize(params['Expose'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 筛选项
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Values: 取值
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

      # 节点
      class Instance < TencentCloud::Common::AbstractModel
        # @param Id: 节点 ID
        # @type Id: String
        # @param Zone: 节点所在地区
        # @type Zone: String
        # @param InstanceType: 节点类型
        # @type InstanceType: String
        # @param InstanceChargeType: 节点充值类型
        # @type InstanceChargeType: String
        # @param Cpu: Cpu 核数
        # @type Cpu: Integer
        # @param Memory: 内存
        # @type Memory: Integer
        # @param Gpu: Gpu 核数
        # @type Gpu: Integer
        # @param State: 节点状态
        # @type State: String
        # @param AbnormalReason: 节点故障信息
        # @type AbnormalReason: String
        # @param Created: 创建时间
        # @type Created: String
        # @param Updated: 更新时间
        # @type Updated: String
        # @param DeadlineTime: 到期时间
        # @type DeadlineTime: String
        # @param ResourceGroupId: 所属资源组 ID
        # @type ResourceGroupId: String
        # @param RenewFlag: 自动续费标签
        # @type RenewFlag: String
        # @param Region: 节点所在地域
        # @type Region: String
        # @param CpuRequested: 当前 Cpu 申请使用量
        # @type CpuRequested: Integer
        # @param MemoryRequested: 当前 Memory 申请使用量
        # @type MemoryRequested: Integer
        # @param GpuRequested: 当前 Gpu 申请使用量
        # @type GpuRequested: Integer
        # @param RsgAsGroupId: 节点所在伸缩组 ID
        # @type RsgAsGroupId: String

        attr_accessor :Id, :Zone, :InstanceType, :InstanceChargeType, :Cpu, :Memory, :Gpu, :State, :AbnormalReason, :Created, :Updated, :DeadlineTime, :ResourceGroupId, :RenewFlag, :Region, :CpuRequested, :MemoryRequested, :GpuRequested, :RsgAsGroupId
        
        def initialize(id=nil, zone=nil, instancetype=nil, instancechargetype=nil, cpu=nil, memory=nil, gpu=nil, state=nil, abnormalreason=nil, created=nil, updated=nil, deadlinetime=nil, resourcegroupid=nil, renewflag=nil, region=nil, cpurequested=nil, memoryrequested=nil, gpurequested=nil, rsgasgroupid=nil)
          @Id = id
          @Zone = zone
          @InstanceType = instancetype
          @InstanceChargeType = instancechargetype
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @State = state
          @AbnormalReason = abnormalreason
          @Created = created
          @Updated = updated
          @DeadlineTime = deadlinetime
          @ResourceGroupId = resourcegroupid
          @RenewFlag = renewflag
          @Region = region
          @CpuRequested = cpurequested
          @MemoryRequested = memoryrequested
          @GpuRequested = gpurequested
          @RsgAsGroupId = rsgasgroupid
        end

        def deserialize(params)
          @Id = params['Id']
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceChargeType = params['InstanceChargeType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @State = params['State']
          @AbnormalReason = params['AbnormalReason']
          @Created = params['Created']
          @Updated = params['Updated']
          @DeadlineTime = params['DeadlineTime']
          @ResourceGroupId = params['ResourceGroupId']
          @RenewFlag = params['RenewFlag']
          @Region = params['Region']
          @CpuRequested = params['CpuRequested']
          @MemoryRequested = params['MemoryRequested']
          @GpuRequested = params['GpuRequested']
          @RsgAsGroupId = params['RsgAsGroupId']
        end
      end

      # 任务
      class Job < TencentCloud::Common::AbstractModel
        # @param Id: 任务 Id
        # @type Id: String
        # @param Cluster: 集群名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cluster: String
        # @param Region: Region 名
        # @type Region: String
        # @param Name: 任务名称
        # @type Name: String
        # @param Runtime: Worker 使用的运行环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param Description: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ConfigId: 配置 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param PredictInput: 预测输入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictInput: :class:`Tencentcloud::Tiems.v20190416.models.PredictInput`
        # @param Status: 任务状态
        # @type Status: :class:`Tencentcloud::Tiems.v20190416.models.JobStatus`
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param StartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CancelTime: 任务取消时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CancelTime: String
        # @param ResourceGroupId: 任务使用资源组 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param Cpu: 处理器配置, 单位为1/1000核；范围[100, 256000]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: 内存配置, 单位为1M；范围[100, 256000]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Gpu: GPU算力配置，单位为1/1000 卡，范围 [0, 256000]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param GpuMemory: 显存配置, 单位为1M，范围 [0, 256000]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuMemory: Integer
        # @param ResourceGroupName: 任务使用资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param GpuType: GPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param ConfigName: 配置名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigVersion: 配置版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param JobType: Job类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobType: String
        # @param QuantizationInput: 量化输入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuantizationInput: :class:`Tencentcloud::Tiems.v20190416.models.QuantizationInput`
        # @param LogTopicId: Cls日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String

        attr_accessor :Id, :Cluster, :Region, :Name, :Runtime, :Description, :ConfigId, :PredictInput, :Status, :CreateTime, :StartTime, :EndTime, :CancelTime, :ResourceGroupId, :Cpu, :Memory, :Gpu, :GpuMemory, :ResourceGroupName, :GpuType, :ConfigName, :ConfigVersion, :JobType, :QuantizationInput, :LogTopicId
        
        def initialize(id=nil, cluster=nil, region=nil, name=nil, runtime=nil, description=nil, configid=nil, predictinput=nil, status=nil, createtime=nil, starttime=nil, endtime=nil, canceltime=nil, resourcegroupid=nil, cpu=nil, memory=nil, gpu=nil, gpumemory=nil, resourcegroupname=nil, gputype=nil, configname=nil, configversion=nil, jobtype=nil, quantizationinput=nil, logtopicid=nil)
          @Id = id
          @Cluster = cluster
          @Region = region
          @Name = name
          @Runtime = runtime
          @Description = description
          @ConfigId = configid
          @PredictInput = predictinput
          @Status = status
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @CancelTime = canceltime
          @ResourceGroupId = resourcegroupid
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuMemory = gpumemory
          @ResourceGroupName = resourcegroupname
          @GpuType = gputype
          @ConfigName = configname
          @ConfigVersion = configversion
          @JobType = jobtype
          @QuantizationInput = quantizationinput
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          @Id = params['Id']
          @Cluster = params['Cluster']
          @Region = params['Region']
          @Name = params['Name']
          @Runtime = params['Runtime']
          @Description = params['Description']
          @ConfigId = params['ConfigId']
          unless params['PredictInput'].nil?
            @PredictInput = PredictInput.new
            @PredictInput.deserialize(params['PredictInput'])
          end
          unless params['Status'].nil?
            @Status = JobStatus.new
            @Status.deserialize(params['Status'])
          end
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CancelTime = params['CancelTime']
          @ResourceGroupId = params['ResourceGroupId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @GpuMemory = params['GpuMemory']
          @ResourceGroupName = params['ResourceGroupName']
          @GpuType = params['GpuType']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @JobType = params['JobType']
          unless params['QuantizationInput'].nil?
            @QuantizationInput = QuantizationInput.new
            @QuantizationInput.deserialize(params['QuantizationInput'])
          end
          @LogTopicId = params['LogTopicId']
        end
      end

      # 任务状态
      class JobStatus < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态
        # @type Status: String
        # @param Message: 错误时为错误描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param DesiredWorkers: 预期Worker数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredWorkers: Integer
        # @param CurrentWorkers: 当前Worker数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentWorkers: Integer
        # @param Replicas: 副本名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Array
        # @param ReplicaInfos: 副本实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicaInfos: Array

        attr_accessor :Status, :Message, :DesiredWorkers, :CurrentWorkers, :Replicas, :ReplicaInfos
        
        def initialize(status=nil, message=nil, desiredworkers=nil, currentworkers=nil, replicas=nil, replicainfos=nil)
          @Status = status
          @Message = message
          @DesiredWorkers = desiredworkers
          @CurrentWorkers = currentworkers
          @Replicas = replicas
          @ReplicaInfos = replicainfos
        end

        def deserialize(params)
          @Status = params['Status']
          @Message = params['Message']
          @DesiredWorkers = params['DesiredWorkers']
          @CurrentWorkers = params['CurrentWorkers']
          @Replicas = params['Replicas']
          unless params['ReplicaInfos'].nil?
            @ReplicaInfos = []
            params['ReplicaInfos'].each do |i|
              replicainfo_tmp = ReplicaInfo.new
              replicainfo_tmp.deserialize(i)
              @ReplicaInfos << replicainfo_tmp
            end
          end
        end
      end

      # 模型服务
      class ModelService < TencentCloud::Common::AbstractModel
        # @param Id: 服务ID
        # @type Id: String
        # @param Cluster: 运行集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cluster: String
        # @param Name: 服务名称
        # @type Name: String
        # @param Runtime: 运行环境
        # @type Runtime: String
        # @param ModelUri: 模型地址
        # @type ModelUri: String
        # @param Cpu: 处理器配置, 单位为1/1000核
        # @type Cpu: Integer
        # @param Memory: 内存配置, 单位为1M
        # @type Memory: Integer
        # @param Gpu: GPU 配置, 单位为1/1000 卡
        # @type Gpu: Integer
        # @param GpuMemory: 显存配置, 单位为1M
        # @type GpuMemory: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ScaleMode: 支持AUTO, MANUAL
        # @type ScaleMode: String
        # @param Scaler: 弹性伸缩配置
        # @type Scaler: :class:`Tencentcloud::Tiems.v20190416.models.Scaler`
        # @param Status: 服务状态
        # @type Status: :class:`Tencentcloud::Tiems.v20190416.models.ServiceStatus`
        # @param AccessToken: 访问密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessToken: String
        # @param ConfigId: 服务配置Id
        # @type ConfigId: String
        # @param ConfigName: 服务配置名
        # @type ConfigName: String
        # @param ServeSeconds: 服务运行时长
        # @type ServeSeconds: Integer
        # @param ConfigVersion: 配置版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param ResourceGroupId: 服务使用资源组 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param Exposes: 暴露方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exposes: Array
        # @param Region: Region 名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param ResourceGroupName: 服务使用资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param Description: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param GpuType: GPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param LogTopicId: Cls日志主题Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String

        attr_accessor :Id, :Cluster, :Name, :Runtime, :ModelUri, :Cpu, :Memory, :Gpu, :GpuMemory, :CreateTime, :UpdateTime, :ScaleMode, :Scaler, :Status, :AccessToken, :ConfigId, :ConfigName, :ServeSeconds, :ConfigVersion, :ResourceGroupId, :Exposes, :Region, :ResourceGroupName, :Description, :GpuType, :LogTopicId
        
        def initialize(id=nil, cluster=nil, name=nil, runtime=nil, modeluri=nil, cpu=nil, memory=nil, gpu=nil, gpumemory=nil, createtime=nil, updatetime=nil, scalemode=nil, scaler=nil, status=nil, accesstoken=nil, configid=nil, configname=nil, serveseconds=nil, configversion=nil, resourcegroupid=nil, exposes=nil, region=nil, resourcegroupname=nil, description=nil, gputype=nil, logtopicid=nil)
          @Id = id
          @Cluster = cluster
          @Name = name
          @Runtime = runtime
          @ModelUri = modeluri
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuMemory = gpumemory
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ScaleMode = scalemode
          @Scaler = scaler
          @Status = status
          @AccessToken = accesstoken
          @ConfigId = configid
          @ConfigName = configname
          @ServeSeconds = serveseconds
          @ConfigVersion = configversion
          @ResourceGroupId = resourcegroupid
          @Exposes = exposes
          @Region = region
          @ResourceGroupName = resourcegroupname
          @Description = description
          @GpuType = gputype
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          @Id = params['Id']
          @Cluster = params['Cluster']
          @Name = params['Name']
          @Runtime = params['Runtime']
          @ModelUri = params['ModelUri']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @GpuMemory = params['GpuMemory']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ScaleMode = params['ScaleMode']
          unless params['Scaler'].nil?
            @Scaler = Scaler.new
            @Scaler.deserialize(params['Scaler'])
          end
          unless params['Status'].nil?
            @Status = ServiceStatus.new
            @Status.deserialize(params['Status'])
          end
          @AccessToken = params['AccessToken']
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ServeSeconds = params['ServeSeconds']
          @ConfigVersion = params['ConfigVersion']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['Exposes'].nil?
            @Exposes = []
            params['Exposes'].each do |i|
              exposeinfo_tmp = ExposeInfo.new
              exposeinfo_tmp.deserialize(i)
              @Exposes << exposeinfo_tmp
            end
          end
          @Region = params['Region']
          @ResourceGroupName = params['ResourceGroupName']
          @Description = params['Description']
          @GpuType = params['GpuType']
          @LogTopicId = params['LogTopicId']
        end
      end

      # 配置项
      class Option < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Value: 取值
        # @type Value: Integer

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

      # 预测输入
      class PredictInput < TencentCloud::Common::AbstractModel
        # @param InputPath: 输入路径，支持 cos 格式路径文件夹或文件
        # @type InputPath: String
        # @param OutputPath: 输出路径，支持 cos 格式路径
        # @type OutputPath: String
        # @param InputDataFormat: 输入数据格式，目前支持：JSON
        # @type InputDataFormat: String
        # @param OutputDataFormat: 输出数据格式，目前支持：JSON
        # @type OutputDataFormat: String
        # @param BatchSize: 预测批大小，默认为 64
        # @type BatchSize: Integer
        # @param SignatureName: 模型签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignatureName: String

        attr_accessor :InputPath, :OutputPath, :InputDataFormat, :OutputDataFormat, :BatchSize, :SignatureName
        
        def initialize(inputpath=nil, outputpath=nil, inputdataformat=nil, outputdataformat=nil, batchsize=nil, signaturename=nil)
          @InputPath = inputpath
          @OutputPath = outputpath
          @InputDataFormat = inputdataformat
          @OutputDataFormat = outputdataformat
          @BatchSize = batchsize
          @SignatureName = signaturename
        end

        def deserialize(params)
          @InputPath = params['InputPath']
          @OutputPath = params['OutputPath']
          @InputDataFormat = params['InputDataFormat']
          @OutputDataFormat = params['OutputDataFormat']
          @BatchSize = params['BatchSize']
          @SignatureName = params['SignatureName']
        end
      end

      # 量化输入
      class QuantizationInput < TencentCloud::Common::AbstractModel
        # @param InputPath: 量化输入路径
        # @type InputPath: String
        # @param OutputPath: 量化输出路径
        # @type OutputPath: String
        # @param BatchSize: 量化批大小
        # @type BatchSize: Integer
        # @param Precision: 量化精度，支持：FP32，FP16，INT8
        # @type Precision: String
        # @param ConvertType: 转换类型
        # @type ConvertType: String

        attr_accessor :InputPath, :OutputPath, :BatchSize, :Precision, :ConvertType
        
        def initialize(inputpath=nil, outputpath=nil, batchsize=nil, precision=nil, converttype=nil)
          @InputPath = inputpath
          @OutputPath = outputpath
          @BatchSize = batchsize
          @Precision = precision
          @ConvertType = converttype
        end

        def deserialize(params)
          @InputPath = params['InputPath']
          @OutputPath = params['OutputPath']
          @BatchSize = params['BatchSize']
          @Precision = params['Precision']
          @ConvertType = params['ConvertType']
        end
      end

      # 实例信息
      class ReplicaInfo < TencentCloud::Common::AbstractModel
        # @param Name: 实例名称
        # @type Name: String
        # @param EniIp: 弹性网卡模式时，弹性网卡Ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniIp: String
        # @param Status: Normal: 正常运行中; Abnormal: 异常；Waiting：等待中
        # @type Status: String
        # @param Message: 当 status为 Abnormal 的时候，一些额外的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param StartTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Restarted: 重启次数
        # @type Restarted: Integer

        attr_accessor :Name, :EniIp, :Status, :Message, :StartTime, :CreateTime, :Restarted
        
        def initialize(name=nil, eniip=nil, status=nil, message=nil, starttime=nil, createtime=nil, restarted=nil)
          @Name = name
          @EniIp = eniip
          @Status = status
          @Message = message
          @StartTime = starttime
          @CreateTime = createtime
          @Restarted = restarted
        end

        def deserialize(params)
          @Name = params['Name']
          @EniIp = params['EniIp']
          @Status = params['Status']
          @Message = params['Message']
          @StartTime = params['StartTime']
          @CreateTime = params['CreateTime']
          @Restarted = params['Restarted']
        end
      end

      # 资源组
      class ResourceGroup < TencentCloud::Common::AbstractModel
        # @param Id: 资源组 Id
        # @type Id: String
        # @param Region: 地域
        # @type Region: String
        # @param Cluster: 集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cluster: String
        # @param Name: 资源组名称
        # @type Name: String
        # @param Description: 资源组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Created: 创建时间
        # @type Created: String
        # @param Updated: 更新时间
        # @type Updated: String
        # @param InstanceCount: 资源组主机数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param ServiceCount: 使用资源组的服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCount: Integer
        # @param JobCount: 使用资源组的任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobCount: Integer
        # @param Public: 资源组是否为公共资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Public: Boolean
        # @param InstanceType: 机器类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param Status: 资源组状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Gpu: 显卡总张数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param Cpu: 处理器总核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: 内存总量，单位为G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param GpuType: Gpu类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: Array
        # @param HasPrepaid: 该资源组下是否有预付费资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasPrepaid: Boolean
        # @param PayMode: 资源组是否允许预付费或后付费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String

        attr_accessor :Id, :Region, :Cluster, :Name, :Description, :Created, :Updated, :InstanceCount, :ServiceCount, :JobCount, :Public, :InstanceType, :Status, :Gpu, :Cpu, :Memory, :Zone, :GpuType, :HasPrepaid, :PayMode
        
        def initialize(id=nil, region=nil, cluster=nil, name=nil, description=nil, created=nil, updated=nil, instancecount=nil, servicecount=nil, jobcount=nil, public=nil, instancetype=nil, status=nil, gpu=nil, cpu=nil, memory=nil, zone=nil, gputype=nil, hasprepaid=nil, paymode=nil)
          @Id = id
          @Region = region
          @Cluster = cluster
          @Name = name
          @Description = description
          @Created = created
          @Updated = updated
          @InstanceCount = instancecount
          @ServiceCount = servicecount
          @JobCount = jobcount
          @Public = public
          @InstanceType = instancetype
          @Status = status
          @Gpu = gpu
          @Cpu = cpu
          @Memory = memory
          @Zone = zone
          @GpuType = gputype
          @HasPrepaid = hasprepaid
          @PayMode = paymode
        end

        def deserialize(params)
          @Id = params['Id']
          @Region = params['Region']
          @Cluster = params['Cluster']
          @Name = params['Name']
          @Description = params['Description']
          @Created = params['Created']
          @Updated = params['Updated']
          @InstanceCount = params['InstanceCount']
          @ServiceCount = params['ServiceCount']
          @JobCount = params['JobCount']
          @Public = params['Public']
          @InstanceType = params['InstanceType']
          @Status = params['Status']
          @Gpu = params['Gpu']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Zone = params['Zone']
          @GpuType = params['GpuType']
          @HasPrepaid = params['HasPrepaid']
          @PayMode = params['PayMode']
        end
      end

      # 伸缩组活动关联的节点
      class RsgAsActivityRelatedInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 节点 ID
        # @type InstanceId: String
        # @param InstanceStatus: 节点状态
        # @type InstanceStatus: String

        attr_accessor :InstanceId, :InstanceStatus
        
        def initialize(instanceid=nil, instancestatus=nil)
          @InstanceId = instanceid
          @InstanceStatus = instancestatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceStatus = params['InstanceStatus']
        end
      end

      # 资源组的伸缩组
      class RsgAsGroup < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组 ID
        # @type Id: String
        # @param Region: 伸缩组所在地域
        # @type Region: String
        # @param Zone: 伸缩组所在可用区
        # @type Zone: String
        # @param Cluster: 伸缩组所在集群
        # @type Cluster: String
        # @param RsgId: 伸缩组所在资源组 ID
        # @type RsgId: String
        # @param Name: 伸缩组名称
        # @type Name: String
        # @param MaxSize: 伸缩组允许的最大节点个数
        # @type MaxSize: Integer
        # @param MinSize: 伸缩组允许的最小节点个数
        # @type MinSize: Integer
        # @param CreateTime: 伸缩组创建时间
        # @type CreateTime: String
        # @param UpdateTime: 伸缩组更新时间
        # @type UpdateTime: String
        # @param Status: 伸缩组状态
        # @type Status: String
        # @param InstanceType: 伸缩组节点类型
        # @type InstanceType: String
        # @param InstanceCount: 伸缩组内节点个数
        # @type InstanceCount: Integer
        # @param DesiredSize: 伸缩组起始节点数
        # @type DesiredSize: Integer

        attr_accessor :Id, :Region, :Zone, :Cluster, :RsgId, :Name, :MaxSize, :MinSize, :CreateTime, :UpdateTime, :Status, :InstanceType, :InstanceCount, :DesiredSize
        
        def initialize(id=nil, region=nil, zone=nil, cluster=nil, rsgid=nil, name=nil, maxsize=nil, minsize=nil, createtime=nil, updatetime=nil, status=nil, instancetype=nil, instancecount=nil, desiredsize=nil)
          @Id = id
          @Region = region
          @Zone = zone
          @Cluster = cluster
          @RsgId = rsgid
          @Name = name
          @MaxSize = maxsize
          @MinSize = minsize
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @InstanceType = instancetype
          @InstanceCount = instancecount
          @DesiredSize = desiredsize
        end

        def deserialize(params)
          @Id = params['Id']
          @Region = params['Region']
          @Zone = params['Zone']
          @Cluster = params['Cluster']
          @RsgId = params['RsgId']
          @Name = params['Name']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @InstanceType = params['InstanceType']
          @InstanceCount = params['InstanceCount']
          @DesiredSize = params['DesiredSize']
        end
      end

      # 伸缩组活动信息
      class RsgAsGroupActivity < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组活动 ID
        # @type Id: String
        # @param RsgAsGroupId: 关联的伸缩组 ID
        # @type RsgAsGroupId: String
        # @param ActivityType: 活动类型
        # @type ActivityType: String
        # @param StatusCode: 状态的编码
        # @type StatusCode: String
        # @param StatusMessage: 状态的消息
        # @type StatusMessage: String
        # @param Cause: 活动原因
        # @type Cause: String
        # @param Description: 活动描述
        # @type Description: String
        # @param StartTime: 活动开始时间
        # @type StartTime: String
        # @param EndTime: 活动结束时间
        # @type EndTime: String
        # @param CreateTime: 活动创建时间
        # @type CreateTime: String
        # @param RsgAsActivityRelatedInstance: 活动相关联的节点
        # @type RsgAsActivityRelatedInstance: Array
        # @param StatusMessageSimplified: 简略的状态消息
        # @type StatusMessageSimplified: String

        attr_accessor :Id, :RsgAsGroupId, :ActivityType, :StatusCode, :StatusMessage, :Cause, :Description, :StartTime, :EndTime, :CreateTime, :RsgAsActivityRelatedInstance, :StatusMessageSimplified
        
        def initialize(id=nil, rsgasgroupid=nil, activitytype=nil, statuscode=nil, statusmessage=nil, cause=nil, description=nil, starttime=nil, endtime=nil, createtime=nil, rsgasactivityrelatedinstance=nil, statusmessagesimplified=nil)
          @Id = id
          @RsgAsGroupId = rsgasgroupid
          @ActivityType = activitytype
          @StatusCode = statuscode
          @StatusMessage = statusmessage
          @Cause = cause
          @Description = description
          @StartTime = starttime
          @EndTime = endtime
          @CreateTime = createtime
          @RsgAsActivityRelatedInstance = rsgasactivityrelatedinstance
          @StatusMessageSimplified = statusmessagesimplified
        end

        def deserialize(params)
          @Id = params['Id']
          @RsgAsGroupId = params['RsgAsGroupId']
          @ActivityType = params['ActivityType']
          @StatusCode = params['StatusCode']
          @StatusMessage = params['StatusMessage']
          @Cause = params['Cause']
          @Description = params['Description']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreateTime = params['CreateTime']
          unless params['RsgAsActivityRelatedInstance'].nil?
            @RsgAsActivityRelatedInstance = []
            params['RsgAsActivityRelatedInstance'].each do |i|
              rsgasactivityrelatedinstance_tmp = RsgAsActivityRelatedInstance.new
              rsgasactivityrelatedinstance_tmp.deserialize(i)
              @RsgAsActivityRelatedInstance << rsgasactivityrelatedinstance_tmp
            end
          end
          @StatusMessageSimplified = params['StatusMessageSimplified']
        end
      end

      # 运行环境
      class Runtime < TencentCloud::Common::AbstractModel
        # @param Name: 运行环境名称
        # @type Name: String
        # @param Framework: 运行环境框架
        # @type Framework: String
        # @param Description: 运行环境描述
        # @type Description: String
        # @param Public: 是否为公开运行环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Public: Boolean
        # @param HealthCheckOn: 是否打开健康检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckOn: Boolean
        # @param Image: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :Name, :Framework, :Description, :Public, :HealthCheckOn, :Image, :CreateTime
        
        def initialize(name=nil, framework=nil, description=nil, public=nil, healthcheckon=nil, image=nil, createtime=nil)
          @Name = name
          @Framework = framework
          @Description = description
          @Public = public
          @HealthCheckOn = healthcheckon
          @Image = image
          @CreateTime = createtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Framework = params['Framework']
          @Description = params['Description']
          @Public = params['Public']
          @HealthCheckOn = params['HealthCheckOn']
          @Image = params['Image']
          @CreateTime = params['CreateTime']
        end
      end

      # 扩缩容配置
      class Scaler < TencentCloud::Common::AbstractModel
        # @param MaxReplicas: 最大副本数，ScaleMode 为 MANUAL 时辞会此值会被置为 StartReplicas 取值
        # @type MaxReplicas: Integer
        # @param MinReplicas: 最小副本数，ScaleMode 为 MANUAL 时辞会此值会被置为 StartReplicas 取值
        # @type MinReplicas: Integer
        # @param StartReplicas: 起始副本数
        # @type StartReplicas: Integer
        # @param HpaMetrics: 扩缩容指标，选择自动扩缩容时至少需要选择一个指标，支持CPU-UTIL、MEMORY-UTIL
        # @type HpaMetrics: Array

        attr_accessor :MaxReplicas, :MinReplicas, :StartReplicas, :HpaMetrics
        
        def initialize(maxreplicas=nil, minreplicas=nil, startreplicas=nil, hpametrics=nil)
          @MaxReplicas = maxreplicas
          @MinReplicas = minreplicas
          @StartReplicas = startreplicas
          @HpaMetrics = hpametrics
        end

        def deserialize(params)
          @MaxReplicas = params['MaxReplicas']
          @MinReplicas = params['MinReplicas']
          @StartReplicas = params['StartReplicas']
          unless params['HpaMetrics'].nil?
            @HpaMetrics = []
            params['HpaMetrics'].each do |i|
              option_tmp = Option.new
              option_tmp.deserialize(i)
              @HpaMetrics << option_tmp
            end
          end
        end
      end

      # 服务状态
      class ServiceStatus < TencentCloud::Common::AbstractModel
        # @param DesiredReplicas: 预期副本数
        # @type DesiredReplicas: Integer
        # @param CurrentReplicas: 当前副本数
        # @type CurrentReplicas: Integer
        # @param Status: Normal：正常运行中；Abnormal：服务异常，例如容器启动失败等；Waiting：服务等待中，例如容器下载镜像过程等；Stopped：已停止 Stopping 停止中；Resuming：重启中；Updating：服务更新中
        # @type Status: String
        # @param Conditions: 服务处于当前状态的原因集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array
        # @param Replicas: 副本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Array
        # @param Message: 运行状态对额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param ReplicaInfos: 副本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicaInfos: Array

        attr_accessor :DesiredReplicas, :CurrentReplicas, :Status, :Conditions, :Replicas, :Message, :ReplicaInfos
        
        def initialize(desiredreplicas=nil, currentreplicas=nil, status=nil, conditions=nil, replicas=nil, message=nil, replicainfos=nil)
          @DesiredReplicas = desiredreplicas
          @CurrentReplicas = currentreplicas
          @Status = status
          @Conditions = conditions
          @Replicas = replicas
          @Message = message
          @ReplicaInfos = replicainfos
        end

        def deserialize(params)
          @DesiredReplicas = params['DesiredReplicas']
          @CurrentReplicas = params['CurrentReplicas']
          @Status = params['Status']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              conditions_tmp = Conditions.new
              conditions_tmp.deserialize(i)
              @Conditions << conditions_tmp
            end
          end
          @Replicas = params['Replicas']
          @Message = params['Message']
          unless params['ReplicaInfos'].nil?
            @ReplicaInfos = []
            params['ReplicaInfos'].each do |i|
              replicainfo_tmp = ReplicaInfo.new
              replicainfo_tmp.deserialize(i)
              @ReplicaInfos << replicainfo_tmp
            end
          end
        end
      end

      # UpdateJob请求参数结构体
      class UpdateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 Id
        # @type JobId: String
        # @param JobAction: 任务更新动作，支持：Cancel
        # @type JobAction: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :JobId, :JobAction, :Description
        
        def initialize(jobid=nil, jobaction=nil, description=nil)
          @JobId = jobid
          @JobAction = jobaction
          @Description = description
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobAction = params['JobAction']
          @Description = params['Description']
        end
      end

      # UpdateJob返回参数结构体
      class UpdateJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: 任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Tiems.v20190416.models.Job`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId
        
        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateRsgAsGroup请求参数结构体
      class UpdateRsgAsGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 伸缩组 ID
        # @type Id: String
        # @param Name: 重命名名称
        # @type Name: String
        # @param MaxSize: 伸缩组最大节点数
        # @type MaxSize: Integer
        # @param MinSize: 伸缩组最小节点数
        # @type MinSize: Integer
        # @param DesiredSize: 伸缩组期望的节点数
        # @type DesiredSize: Integer

        attr_accessor :Id, :Name, :MaxSize, :MinSize, :DesiredSize
        
        def initialize(id=nil, name=nil, maxsize=nil, minsize=nil, desiredsize=nil)
          @Id = id
          @Name = name
          @MaxSize = maxsize
          @MinSize = minsize
          @DesiredSize = desiredsize
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @DesiredSize = params['DesiredSize']
        end
      end

      # UpdateRsgAsGroup返回参数结构体
      class UpdateRsgAsGroupResponse < TencentCloud::Common::AbstractModel
        # @param RsgAsGroup: 资源组的伸缩组
        # @type RsgAsGroup: :class:`Tencentcloud::Tiems.v20190416.models.RsgAsGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RsgAsGroup, :RequestId
        
        def initialize(rsgasgroup=nil, requestid=nil)
          @RsgAsGroup = rsgasgroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RsgAsGroup'].nil?
            @RsgAsGroup = RsgAsGroup.new
            @RsgAsGroup.deserialize(params['RsgAsGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateService请求参数结构体
      class UpdateServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务Id
        # @type ServiceId: String
        # @param Scaler: 扩缩容配置
        # @type Scaler: :class:`Tencentcloud::Tiems.v20190416.models.Scaler`
        # @param ServiceConfigId: 服务配置Id
        # @type ServiceConfigId: String
        # @param ScaleMode: 支持AUTO, MANUAL，分别表示自动扩缩容，手动扩缩容
        # @type ScaleMode: String
        # @param ServiceAction: 支持STOP(停止) RESUME(重启)
        # @type ServiceAction: String
        # @param Description: 备注
        # @type Description: String
        # @param GpuType: GPU卡类型
        # @type GpuType: String
        # @param Cpu: 处理器配置，单位为 1/1000 核
        # @type Cpu: Integer
        # @param Memory: 内存配置，单位为1M
        # @type Memory: Integer
        # @param Gpu: 显卡配置，单位为 1/1000 卡
        # @type Gpu: Integer
        # @param LogTopicId: Cls日志主题ID
        # @type LogTopicId: String

        attr_accessor :ServiceId, :Scaler, :ServiceConfigId, :ScaleMode, :ServiceAction, :Description, :GpuType, :Cpu, :Memory, :Gpu, :LogTopicId
        
        def initialize(serviceid=nil, scaler=nil, serviceconfigid=nil, scalemode=nil, serviceaction=nil, description=nil, gputype=nil, cpu=nil, memory=nil, gpu=nil, logtopicid=nil)
          @ServiceId = serviceid
          @Scaler = scaler
          @ServiceConfigId = serviceconfigid
          @ScaleMode = scalemode
          @ServiceAction = serviceaction
          @Description = description
          @GpuType = gputype
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          unless params['Scaler'].nil?
            @Scaler = Scaler.new
            @Scaler.deserialize(params['Scaler'])
          end
          @ServiceConfigId = params['ServiceConfigId']
          @ScaleMode = params['ScaleMode']
          @ServiceAction = params['ServiceAction']
          @Description = params['Description']
          @GpuType = params['GpuType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @LogTopicId = params['LogTopicId']
        end
      end

      # UpdateService返回参数结构体
      class UpdateServiceResponse < TencentCloud::Common::AbstractModel
        # @param Service: 服务
        # @type Service: :class:`Tencentcloud::Tiems.v20190416.models.ModelService`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Service, :RequestId
        
        def initialize(service=nil, requestid=nil)
          @Service = service
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Service'].nil?
            @Service = ModelService.new
            @Service.deserialize(params['Service'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

