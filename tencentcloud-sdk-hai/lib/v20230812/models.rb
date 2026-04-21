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
  module Hai
    module V20230812
      # 应用信息
      class ApplicationInfo < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用id
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # @type ApplicationName: String
        # @param Description: 应用描述
        # @type Description: String
        # @param ConfigEnvironment: 应用的环境配置
        # @type ConfigEnvironment: String
        # @param MinSystemDiskSize: 系统盘大小下限，单位GB
        # @type MinSystemDiskSize: Integer
        # @param ApplicationType: 应用类型，目前该项取值可以为PUBLIC_APPLICATION（公共应用）；PRIVATE_APPLICATION（自定义应用）；COMMUNITY_APPLICATION（社区应用）
        # @type ApplicationType: String
        # @param ApplicationState: 应用状态：CREATING-创建中；ONLINE -正常在线；DELETING -删除中；ARREARS - 欠费隔离
        # 示例值：ONLINE
        # @type ApplicationState: String
        # @param CreateTime: 应用创建时间，格式：%Y-%m-%d %H:%M:%S
        # @type CreateTime: String
        # @param ApplicationSize: 应用大小，单位GB
        # @type ApplicationSize: Integer

        attr_accessor :ApplicationId, :ApplicationName, :Description, :ConfigEnvironment, :MinSystemDiskSize, :ApplicationType, :ApplicationState, :CreateTime, :ApplicationSize

        def initialize(applicationid=nil, applicationname=nil, description=nil, configenvironment=nil, minsystemdisksize=nil, applicationtype=nil, applicationstate=nil, createtime=nil, applicationsize=nil)
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @Description = description
          @ConfigEnvironment = configenvironment
          @MinSystemDiskSize = minsystemdisksize
          @ApplicationType = applicationtype
          @ApplicationState = applicationstate
          @CreateTime = createtime
          @ApplicationSize = applicationsize
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @Description = params['Description']
          @ConfigEnvironment = params['ConfigEnvironment']
          @MinSystemDiskSize = params['MinSystemDiskSize']
          @ApplicationType = params['ApplicationType']
          @ApplicationState = params['ApplicationState']
          @CreateTime = params['CreateTime']
          @ApplicationSize = params['ApplicationSize']
        end
      end

      # cos挂载信息
      class COSStorage < TencentCloud::Common::AbstractModel
        # @param URI: cos桶uri
        # @type URI: String

        attr_accessor :URI

        def initialize(uri=nil)
          @URI = uri
        end

        def deserialize(params)
          @URI = params['URI']
        end
      end

      # 服务调用信息
      class CallInfo < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param PublicEndpoint: 服务调用地址
        # @type PublicEndpoint: String
        # @param ApiKey: 服务调用的API_KEY
        # @type ApiKey: String
        # @param VpcEndpoint: 内网调用地址
        # @type VpcEndpoint: String

        attr_accessor :ServiceId, :PublicEndpoint, :ApiKey, :VpcEndpoint

        def initialize(serviceid=nil, publicendpoint=nil, apikey=nil, vpcendpoint=nil)
          @ServiceId = serviceid
          @PublicEndpoint = publicendpoint
          @ApiKey = apikey
          @VpcEndpoint = vpcendpoint
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @PublicEndpoint = params['PublicEndpoint']
          @ApiKey = params['ApiKey']
          @VpcEndpoint = params['VpcEndpoint']
        end
      end

      # 算力详情
      class ComputeDetail < TencentCloud::Common::AbstractModel
        # @param BundleType: 算力套餐ID
        # @type BundleType: String
        # @param Count: 节点数量
        # @type Count: Integer
        # @param GPUCount: 显卡数量
        # @type GPUCount: String
        # @param GPUMemory: 显存
        # @type GPUMemory: String
        # @param GPUPerformance: 算力
        # @type GPUPerformance: String
        # @param CPU: CPU核数
        # @type CPU: String
        # @param Memory: 内存
        # @type Memory: String

        attr_accessor :BundleType, :Count, :GPUCount, :GPUMemory, :GPUPerformance, :CPU, :Memory

        def initialize(bundletype=nil, count=nil, gpucount=nil, gpumemory=nil, gpuperformance=nil, cpu=nil, memory=nil)
          @BundleType = bundletype
          @Count = count
          @GPUCount = gpucount
          @GPUMemory = gpumemory
          @GPUPerformance = gpuperformance
          @CPU = cpu
          @Memory = memory
        end

        def deserialize(params)
          @BundleType = params['BundleType']
          @Count = params['Count']
          @GPUCount = params['GPUCount']
          @GPUMemory = params['GPUMemory']
          @GPUPerformance = params['GPUPerformance']
          @CPU = params['CPU']
          @Memory = params['Memory']
        end
      end

      # 资源相关信息
      class ComputeInfo < TencentCloud::Common::AbstractModel
        # @param ComputeResources: 资源类型及数量
        # @type ComputeResources: Array
        # @param Replicas: 副本数
        # @type Replicas: Integer

        attr_accessor :ComputeResources, :Replicas

        def initialize(computeresources=nil, replicas=nil)
          @ComputeResources = computeresources
          @Replicas = replicas
        end

        def deserialize(params)
          unless params['ComputeResources'].nil?
            @ComputeResources = []
            params['ComputeResources'].each do |i|
              computeresource_tmp = ComputeResource.new
              computeresource_tmp.deserialize(i)
              @ComputeResources << computeresource_tmp
            end
          end
          @Replicas = params['Replicas']
        end
      end

      # 推理服务的算力资源
      class ComputeResource < TencentCloud::Common::AbstractModel
        # @param BundleType: 算力套餐的类型
        # @type BundleType: String
        # @param Count: 节点数量
        # @type Count: Integer

        attr_accessor :BundleType, :Count

        def initialize(bundletype=nil, count=nil)
          @BundleType = bundletype
          @Count = count
        end

        def deserialize(params)
          @BundleType = params['BundleType']
          @Count = params['Count']
        end
      end

      # 容器信息
      class ContainerInfo < TencentCloud::Common::AbstractModel
        # @param Image: <p>镜像相关信息</p>
        # @type Image: :class:`Tencentcloud::Hai.v20230812.models.ImageInfo`
        # @param Port: <p>服务监听端口</p>
        # @type Port: String
        # @param Scripts: <p>启动命令</p>
        # @type Scripts: Array
        # @param Envs: <p>环境变量列表</p>
        # @type Envs: Array
        # @param Storages: <p>存储挂载配置</p>
        # @type Storages: Array
        # @param Probe: <p>探针信息</p>
        # @type Probe: :class:`Tencentcloud::Hai.v20230812.models.ProbeInfo`

        attr_accessor :Image, :Port, :Scripts, :Envs, :Storages, :Probe

        def initialize(image=nil, port=nil, scripts=nil, envs=nil, storages=nil, probe=nil)
          @Image = image
          @Port = port
          @Scripts = scripts
          @Envs = envs
          @Storages = storages
          @Probe = probe
        end

        def deserialize(params)
          unless params['Image'].nil?
            @Image = ImageInfo.new
            @Image.deserialize(params['Image'])
          end
          @Port = params['Port']
          @Scripts = params['Scripts']
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              envparam_tmp = EnvParam.new
              envparam_tmp.deserialize(i)
              @Envs << envparam_tmp
            end
          end
          unless params['Storages'].nil?
            @Storages = []
            params['Storages'].each do |i|
              storageinfo_tmp = StorageInfo.new
              storageinfo_tmp.deserialize(i)
              @Storages << storageinfo_tmp
            end
          end
          unless params['Probe'].nil?
            @Probe = ProbeInfo.new
            @Probe.deserialize(params['Probe'])
          end
        end
      end

      # CreateApplication请求参数结构体
      class CreateApplicationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要制作自定义应用的HAI实例ID
        # @type InstanceId: String
        # @param ApplicationName: 自定义应用的应用名称
        # @type ApplicationName: String
        # @param ApplicationDescription: 自定义应用的描述
        # @type ApplicationDescription: String

        attr_accessor :InstanceId, :ApplicationName, :ApplicationDescription

        def initialize(instanceid=nil, applicationname=nil, applicationdescription=nil)
          @InstanceId = instanceid
          @ApplicationName = applicationname
          @ApplicationDescription = applicationdescription
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApplicationName = params['ApplicationName']
          @ApplicationDescription = params['ApplicationDescription']
        end
      end

      # CreateApplication返回参数结构体
      class CreateApplicationResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: HAI自定义应用ID
        # @type ApplicationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateInferServiceByTemplate请求参数结构体
      class CreateInferServiceByTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: <p>模版ID</p>
        # @type TemplateId: String
        # @param ServiceName: <p>服务名称</p>
        # @type ServiceName: String
        # @param Replicas: <p>副本数</p>
        # @type Replicas: Integer
        # @param ServiceChargeType: <p>付费方式，POSTPAID_BY_HOUR按量后付费</p>
        # @type ServiceChargeType: String
        # @param HyperParam: <p>描述了服务的超参数配置</p>
        # @type HyperParam: :class:`Tencentcloud::Hai.v20230812.models.HyperParam`
        # @param NetworkSetting: <p>网络设置</p>
        # @type NetworkSetting: :class:`Tencentcloud::Hai.v20230812.models.NetworkSetting`

        attr_accessor :TemplateId, :ServiceName, :Replicas, :ServiceChargeType, :HyperParam, :NetworkSetting

        def initialize(templateid=nil, servicename=nil, replicas=nil, servicechargetype=nil, hyperparam=nil, networksetting=nil)
          @TemplateId = templateid
          @ServiceName = servicename
          @Replicas = replicas
          @ServiceChargeType = servicechargetype
          @HyperParam = hyperparam
          @NetworkSetting = networksetting
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @ServiceName = params['ServiceName']
          @Replicas = params['Replicas']
          @ServiceChargeType = params['ServiceChargeType']
          unless params['HyperParam'].nil?
            @HyperParam = HyperParam.new
            @HyperParam.deserialize(params['HyperParam'])
          end
          unless params['NetworkSetting'].nil?
            @NetworkSetting = NetworkSetting.new
            @NetworkSetting.deserialize(params['NetworkSetting'])
          end
        end
      end

      # CreateInferServiceByTemplate返回参数结构体
      class CreateInferServiceByTemplateResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: <p>服务ID</p>
        # @type ServiceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :RequestId

        def initialize(serviceid=nil, requestid=nil)
          @ServiceId = serviceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMuskPrompt请求参数结构体
      class CreateMuskPromptRequest < TencentCloud::Common::AbstractModel
        # @param WorkgroupId: workgroup id
        # @type WorkgroupId: String
        # @param WorkflowId: workflow id
        # @type WorkflowId: String
        # @param PromptParams: prompt 参数
        # @type PromptParams: String

        attr_accessor :WorkgroupId, :WorkflowId, :PromptParams

        def initialize(workgroupid=nil, workflowid=nil, promptparams=nil)
          @WorkgroupId = workgroupid
          @WorkflowId = workflowid
          @PromptParams = promptparams
        end

        def deserialize(params)
          @WorkgroupId = params['WorkgroupId']
          @WorkflowId = params['WorkflowId']
          @PromptParams = params['PromptParams']
        end
      end

      # CreateMuskPrompt返回参数结构体
      class CreateMuskPromptResponse < TencentCloud::Common::AbstractModel
        # @param PromptId: prompt id
        # @type PromptId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PromptId, :RequestId

        def initialize(promptid=nil, requestid=nil)
          @PromptId = promptid
          @RequestId = requestid
        end

        def deserialize(params)
          @PromptId = params['PromptId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteService请求参数结构体
      class DeleteServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
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

      # DeployInferService请求参数结构体
      class DeployInferServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceMetaData: 服务元数据信息，如服务名
        # @type ServiceMetaData: :class:`Tencentcloud::Hai.v20230812.models.ServiceMetaData`
        # @param ComputeInfo: 资源相关信息
        # @type ComputeInfo: :class:`Tencentcloud::Hai.v20230812.models.ComputeInfo`
        # @param DeploymentConfigs: 服务部署信息
        # @type DeploymentConfigs: Array
        # @param HyperParam: 服务超参数配置
        # @type HyperParam: :class:`Tencentcloud::Hai.v20230812.models.HyperParam`
        # @param NetworkSetting: 网络设置
        # @type NetworkSetting: :class:`Tencentcloud::Hai.v20230812.models.NetworkSetting`

        attr_accessor :ServiceMetaData, :ComputeInfo, :DeploymentConfigs, :HyperParam, :NetworkSetting

        def initialize(servicemetadata=nil, computeinfo=nil, deploymentconfigs=nil, hyperparam=nil, networksetting=nil)
          @ServiceMetaData = servicemetadata
          @ComputeInfo = computeinfo
          @DeploymentConfigs = deploymentconfigs
          @HyperParam = hyperparam
          @NetworkSetting = networksetting
        end

        def deserialize(params)
          unless params['ServiceMetaData'].nil?
            @ServiceMetaData = ServiceMetaData.new
            @ServiceMetaData.deserialize(params['ServiceMetaData'])
          end
          unless params['ComputeInfo'].nil?
            @ComputeInfo = ComputeInfo.new
            @ComputeInfo.deserialize(params['ComputeInfo'])
          end
          unless params['DeploymentConfigs'].nil?
            @DeploymentConfigs = []
            params['DeploymentConfigs'].each do |i|
              deploymentconfig_tmp = DeploymentConfig.new
              deploymentconfig_tmp.deserialize(i)
              @DeploymentConfigs << deploymentconfig_tmp
            end
          end
          unless params['HyperParam'].nil?
            @HyperParam = HyperParam.new
            @HyperParam.deserialize(params['HyperParam'])
          end
          unless params['NetworkSetting'].nil?
            @NetworkSetting = NetworkSetting.new
            @NetworkSetting.deserialize(params['NetworkSetting'])
          end
        end
      end

      # DeployInferService返回参数结构体
      class DeployInferServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :RequestId

        def initialize(serviceid=nil, requestid=nil)
          @ServiceId = serviceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @RequestId = params['RequestId']
        end
      end

      # 服务部署信息
      class DeploymentConfig < TencentCloud::Common::AbstractModel
        # @param Container: 容器配置
        # @type Container: :class:`Tencentcloud::Hai.v20230812.models.ContainerInfo`
        # @param ContainerCount: 容器数量
        # @type ContainerCount: Integer

        attr_accessor :Container, :ContainerCount

        def initialize(container=nil, containercount=nil)
          @Container = container
          @ContainerCount = containercount
        end

        def deserialize(params)
          unless params['Container'].nil?
            @Container = ContainerInfo.new
            @Container.deserialize(params['Container'])
          end
          @ContainerCount = params['ContainerCount']
        end
      end

      # DescribeApplications请求参数结构体
      class DescribeApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationIds: 应用id列表。单次请求数量上限为100个。
        # @type ApplicationIds: Array
        # @param Filters: 过滤器，跟ApplicationIds不能共用，支持的filter主要有：application-id: 精确匹配;scene-id: 精确匹配，通过调用接口 [DescribeScenes](https://cloud.tencent.com/document/api/1721/101608)获取;application-name: 模糊匹配;application-type: 精确匹配，枚举类型如下：PUBLIC_APPLICATION（公共应用）/ PRIVATE_APPLICATION（自定义应用）/ COMMUNITY_APPLICATION（社区应用）;
        # @type Filters: Array
        # @param Offset: 偏移量，不得小于0，默认为0
        # @type Offset: Integer
        # @param Limit: 返回量，不得大于100，默认为20
        # @type Limit: Integer
        # @param OrderField: 应用列表排序的依据字段。取值范围："CREATED_TIME"：依据应用的创建时间排序。 "APPLICATION_SIZE"：依据应用的大小排序。默认按应用的创建时间排序。
        # @type OrderField: String
        # @param Order: 输出应用列表的排列顺序。取值范围："ASC"：升序排列。 "DESC"：降序排列。默认按降序排列。
        # @type Order: String

        attr_accessor :ApplicationIds, :Filters, :Offset, :Limit, :OrderField, :Order

        def initialize(applicationids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, order=nil)
          @ApplicationIds = applicationids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @ApplicationIds = params['ApplicationIds']
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
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeApplications返回参数结构体
      class DescribeApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 应用总数
        # @type TotalCount: Integer
        # @param ApplicationSet: 分页返回的应用列表
        # @type ApplicationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              applicationinfo_tmp = ApplicationInfo.new
              applicationinfo_tmp.deserialize(i)
              @ApplicationSet << applicationinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployTemplates请求参数结构体
      class DescribeDeployTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DescribeDeployTemplates返回参数结构体
      class DescribeDeployTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TemplateSet: 模板列表
        # @type TemplateSet: Array
        # @param EngineTypes: 支持的推理引擎
        # @type EngineTypes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateSet, :EngineTypes, :RequestId

        def initialize(templateset=nil, enginetypes=nil, requestid=nil)
          @TemplateSet = templateset
          @EngineTypes = enginetypes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplateSet'].nil?
            @TemplateSet = []
            params['TemplateSet'].each do |i|
              templatedetail_tmp = TemplateDetail.new
              templatedetail_tmp.deserialize(i)
              @TemplateSet << templatedetail_tmp
            end
          end
          @EngineTypes = params['EngineTypes']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNetworkStatus请求参数结构体
      class DescribeInstanceNetworkStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID数组，单次请求最多不超过100个实例；实例ID通过调用接口[DescribeInstances](https://cloud.tencent.com/document/api/1721/101612)获取。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstanceNetworkStatus返回参数结构体
      class DescribeInstanceNetworkStatusResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果集长度
        # @type TotalCount: Integer
        # @param NetworkStatusSet: 查询结果集
        # @type NetworkStatusSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NetworkStatusSet, :RequestId

        def initialize(totalcount=nil, networkstatusset=nil, requestid=nil)
          @TotalCount = totalcount
          @NetworkStatusSet = networkstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NetworkStatusSet'].nil?
            @NetworkStatusSet = []
            params['NetworkStatusSet'].each do |i|
              networkstatus_tmp = NetworkStatus.new
              networkstatus_tmp.deserialize(i)
              @NetworkStatusSet << networkstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例元组，数量上限100
        # @type InstanceIds: Array
        # @param Filters: 描述键值对过滤器，用于条件过滤查询。目前支持的过滤器有： instance-id，实例id； instance-state，实例状态：RUNNING，PENDING，STOPPED，ARREARS，STOPPED_NO_CHARGE； charge-type，付费方式：PREPAID_BY_MONTH，POSTPAID_BY_HOUR； public-ip-address，公网IP过滤
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0，不得大于100
        # @type Offset: Integer
        # @param Limit: 返回量，默认为20，不能小于0
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Filters, :Offset, :Limit

        def initialize(instanceids=nil, filters=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
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

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param InstanceSet: 分页实例详情
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
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModels请求参数结构体
      class DescribeModelsRequest < TencentCloud::Common::AbstractModel
        # @param ModelIds: 模型id
        # @type ModelIds: Array
        # @param Filters: 过滤器。Name的可选值有scene-id
        # @type Filters: Array
        # @param Offset: 偏移量，不得小于0，默认为0
        # @type Offset: Integer
        # @param Limit: 返回量，不得大于100，默认为20
        # @type Limit: Integer

        attr_accessor :ModelIds, :Filters, :Offset, :Limit

        def initialize(modelids=nil, filters=nil, offset=nil, limit=nil)
          @ModelIds = modelids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ModelIds = params['ModelIds']
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

      # DescribeModels返回参数结构体
      class DescribeModelsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 模型总数
        # @type TotalCount: Integer
        # @param ModelSet: 分页返回的模型列表
        # @type ModelSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ModelSet, :RequestId

        def initialize(totalcount=nil, modelset=nil, requestid=nil)
          @TotalCount = totalcount
          @ModelSet = modelset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ModelSet'].nil?
            @ModelSet = []
            params['ModelSet'].each do |i|
              modeldetail_tmp = ModelDetail.new
              modeldetail_tmp.deserialize(i)
              @ModelSet << modeldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMuskPrompts请求参数结构体
      class DescribeMuskPromptsRequest < TencentCloud::Common::AbstractModel
        # @param WorkgroupId: workgroup id
        # @type WorkgroupId: String
        # @param WorkflowId: workflow id
        # @type WorkflowId: String
        # @param Offset: offset
        # @type Offset: Integer
        # @param Limit: limit
        # @type Limit: Integer
        # @param Filters: 过滤参数 支持过滤的键值： PromptId，Status
        # @type Filters: Array

        attr_accessor :WorkgroupId, :WorkflowId, :Offset, :Limit, :Filters

        def initialize(workgroupid=nil, workflowid=nil, offset=nil, limit=nil, filters=nil)
          @WorkgroupId = workgroupid
          @WorkflowId = workflowid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @WorkgroupId = params['WorkgroupId']
          @WorkflowId = params['WorkflowId']
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

      # DescribeMuskPrompts返回参数结构体
      class DescribeMuskPromptsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: total count
        # @type TotalCount: Integer
        # @param MuskPromptInfos: prompt列表详情
        # @type MuskPromptInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MuskPromptInfos, :RequestId

        def initialize(totalcount=nil, muskpromptinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @MuskPromptInfos = muskpromptinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MuskPromptInfos'].nil?
            @MuskPromptInfos = []
            params['MuskPromptInfos'].each do |i|
              muskpromptinfo_tmp = MuskPromptInfo.new
              muskpromptinfo_tmp.deserialize(i)
              @MuskPromptInfos << muskpromptinfo_tmp
            end
          end
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
        # @param RegionSet: 地域列表
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
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScenes请求参数结构体
      class DescribeScenesRequest < TencentCloud::Common::AbstractModel
        # @param SceneIds: 场景id列表，单次能查询100个场景id
        # @type SceneIds: Array

        attr_accessor :SceneIds

        def initialize(sceneids=nil)
          @SceneIds = sceneids
        end

        def deserialize(params)
          @SceneIds = params['SceneIds']
        end
      end

      # DescribeScenes返回参数结构体
      class DescribeScenesResponse < TencentCloud::Common::AbstractModel
        # @param SceneSet: 场景详情
        # @type SceneSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SceneSet, :RequestId

        def initialize(sceneset=nil, requestid=nil)
          @SceneSet = sceneset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SceneSet'].nil?
            @SceneSet = []
            params['SceneSet'].each do |i|
              sceneinfo_tmp = SceneInfo.new
              sceneinfo_tmp.deserialize(i)
              @SceneSet << sceneinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceLoginSettings请求参数结构体
      class DescribeServiceLoginSettingsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID通过调用接口[DescribeInstances](https://cloud.tencent.com/document/api/1721/101612)获取。
        # @type InstanceId: String
        # @param ServiceName: 服务名称
        # @type ServiceName: String

        attr_accessor :InstanceId, :ServiceName

        def initialize(instanceid=nil, servicename=nil)
          @InstanceId = instanceid
          @ServiceName = servicename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceName = params['ServiceName']
        end
      end

      # DescribeServiceLoginSettings返回参数结构体
      class DescribeServiceLoginSettingsResponse < TencentCloud::Common::AbstractModel
        # @param LoginSettings: 服务登录配置详情
        # @type LoginSettings: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginSettings, :RequestId

        def initialize(loginsettings=nil, requestid=nil)
          @LoginSettings = loginsettings
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoginSettings'].nil?
            @LoginSettings = []
            params['LoginSettings'].each do |i|
              loginsetting_tmp = LoginSetting.new
              loginsetting_tmp.deserialize(i)
              @LoginSettings << loginsetting_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServicesCallInfo请求参数结构体
      class DescribeServicesCallInfoRequest < TencentCloud::Common::AbstractModel
        # @param ServiceIds: 推理服务ID列表
        # @type ServiceIds: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :ServiceIds, :Limit, :Offset

        def initialize(serviceids=nil, limit=nil, offset=nil)
          @ServiceIds = serviceids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceIds = params['ServiceIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServicesCallInfo返回参数结构体
      class DescribeServicesCallInfoResponse < TencentCloud::Common::AbstractModel
        # @param CallInfoSet: 调用信息
        # @type CallInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallInfoSet, :RequestId

        def initialize(callinfoset=nil, requestid=nil)
          @CallInfoSet = callinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CallInfoSet'].nil?
            @CallInfoSet = []
            params['CallInfoSet'].each do |i|
              callinfo_tmp = CallInfo.new
              callinfo_tmp.deserialize(i)
              @CallInfoSet << callinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServices请求参数结构体
      class DescribeServicesRequest < TencentCloud::Common::AbstractModel
        # @param ServiceIds: 服务列表
        # @type ServiceIds: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :ServiceIds, :Limit, :Offset

        def initialize(serviceids=nil, limit=nil, offset=nil)
          @ServiceIds = serviceids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceIds = params['ServiceIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServices返回参数结构体
      class DescribeServicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ServiceInfoSet: 服务列表
        # @type ServiceInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ServiceInfoSet, :RequestId

        def initialize(totalcount=nil, serviceinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @ServiceInfoSet = serviceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceInfoSet'].nil?
            @ServiceInfoSet = []
            params['ServiceInfoSet'].each do |i|
              servicedetail_tmp = ServiceDetail.new
              servicedetail_tmp.deserialize(i)
              @ServiceInfoSet << servicedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 环境变量键值对
      class EnvParam < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量名
        # @type Name: String
        # @param Value: 环境变量值
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

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # - 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # - 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # HiCache信息
      class HiCacheInfo < TencentCloud::Common::AbstractModel
        # @param HiCacheLevel: HiCache缓存等级
        # @type HiCacheLevel: String

        attr_accessor :HiCacheLevel

        def initialize(hicachelevel=nil)
          @HiCacheLevel = hicachelevel
        end

        def deserialize(params)
          @HiCacheLevel = params['HiCacheLevel']
        end
      end

      # http配置信息
      class HttpConfig < TencentCloud::Common::AbstractModel
        # @param Path: <p>指定健康检查的URL路径</p>
        # @type Path: String
        # @param Port: <p>指定健康检查的端口</p>
        # @type Port: Integer

        attr_accessor :Path, :Port

        def initialize(path=nil, port=nil)
          @Path = path
          @Port = port
        end

        def deserialize(params)
          @Path = params['Path']
          @Port = params['Port']
        end
      end

      # 描述了服务的超参数配置
      class HyperParam < TencentCloud::Common::AbstractModel
        # @param HiCache: HiCache缓存
        # @type HiCache: :class:`Tencentcloud::Hai.v20230812.models.HiCacheInfo`

        attr_accessor :HiCache

        def initialize(hicache=nil)
          @HiCache = hicache
        end

        def deserialize(params)
          unless params['HiCache'].nil?
            @HiCache = HiCacheInfo.new
            @HiCache.deserialize(params['HiCache'])
          end
        end
      end

      # 镜像相关配置
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageRegistryUrl: <p>tcr仓库地址</p>
        # @type ImageRegistryUrl: String
        # @param ImageRegistryUsername: <p>仓库用户名</p>
        # @type ImageRegistryUsername: String
        # @param ImageRegistryPassword: <p>仓库密码</p>
        # @type ImageRegistryPassword: String

        attr_accessor :ImageRegistryUrl, :ImageRegistryUsername, :ImageRegistryPassword

        def initialize(imageregistryurl=nil, imageregistryusername=nil, imageregistrypassword=nil)
          @ImageRegistryUrl = imageregistryurl
          @ImageRegistryUsername = imageregistryusername
          @ImageRegistryPassword = imageregistrypassword
        end

        def deserialize(params)
          @ImageRegistryUrl = params['ImageRegistryUrl']
          @ImageRegistryUsername = params['ImageRegistryUsername']
          @ImageRegistryPassword = params['ImageRegistryPassword']
        end
      end

      # InquirePriceRunInstances请求参数结构体
      class InquirePriceRunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID通过调用接口[DescribeApplications](https://cloud.tencent.com/document/api/1721/101609)获取。
        # @type ApplicationId: String
        # @param BundleType: 算力套餐类型, 枚举：XL,XL_2X, 3XL, 3XL_2X, 4XL, 24GB_A.
        # @type BundleType: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Hai.v20230812.models.SystemDisk`
        # @param InstanceCount: 购买实例数量，单次请求实例数量上限为10。
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称，名称长度限制为128个字符。
        # @type InstanceName: String
        # @param ClientToken: 幂等请求token
        # @type ClientToken: String
        # @param DryRun: DryRun为True就是只验接口连通性，默认为False
        # @type DryRun: Boolean
        # @param InstanceChargeType: 付费方式，POSTPAID_BY_HOUR按量后付费，PREPAID_BY_MONTH预付费按月，PREPAID_BY_DAY预付费按天
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费参数
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Hai.v20230812.models.InstanceChargePrepaid`

        attr_accessor :ApplicationId, :BundleType, :SystemDisk, :InstanceCount, :InstanceName, :ClientToken, :DryRun, :InstanceChargeType, :InstanceChargePrepaid

        def initialize(applicationid=nil, bundletype=nil, systemdisk=nil, instancecount=nil, instancename=nil, clienttoken=nil, dryrun=nil, instancechargetype=nil, instancechargeprepaid=nil)
          @ApplicationId = applicationid
          @BundleType = bundletype
          @SystemDisk = systemdisk
          @InstanceCount = instancecount
          @InstanceName = instancename
          @ClientToken = clienttoken
          @DryRun = dryrun
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @BundleType = params['BundleType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
        end
      end

      # InquirePriceRunInstances返回参数结构体
      class InquirePriceRunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 发货参数对应的价格组合，当DryRun=True，会返回空
        # @type Price: :class:`Tencentcloud::Hai.v20230812.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceUpdateServiceConfigs请求参数结构体
      class InquirePriceUpdateServiceConfigsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # InquirePriceUpdateServiceConfigs返回参数结构体
      class InquirePriceUpdateServiceConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Price: 发货参数对应的价格组合。
        # @type Price: :class:`Tencentcloud::Hai.v20230812.models.ServicePriceDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = ServicePriceDetail.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceState: 实例状态：
        # PENDING：表示创建中
        # LAUNCH_FAILED：表示创建失败
        # RUNNING：表示运行中
        # ARREARS：表示待回收
        # STOPPED_NO_CHARGE：表示关机不收费
        # TERMINATING：表示销毁中
        # TERMINATED：表示已销毁
        # @type InstanceState: String
        # @param ApplicationName: 应用名称
        # @type ApplicationName: String
        # @param BundleName: 算力套餐名称
        # @type BundleName: String
        # @param GPUCount: 实例所包含的GPU卡数
        # @type GPUCount: Integer
        # @param GPUPerformance: 算力
        # @type GPUPerformance: String
        # @param GPUMemory: 显存，单位：GB
        # @type GPUMemory: String
        # @param CPU: CPU核数，单位：核
        # @type CPU: String
        # @param Memory: 内存，单位：GB
        # @type Memory: String
        # @param SystemDisk: 系统盘数据
        # @type SystemDisk: :class:`Tencentcloud::Hai.v20230812.models.SystemDisk`
        # @param PrivateIpAddresses: 内网ip地址
        # @type PrivateIpAddresses: Array
        # @param PublicIpAddresses: 公网ip地址
        # @type PublicIpAddresses: Array
        # @param SecurityGroupIds: 安全组ID
        # @type SecurityGroupIds: Array
        # @param LatestOperation: 实例最新操作
        # @type LatestOperation: String
        # @param LatestOperationState: 实例最新操作状态：
        # SUCCESS：表示操作成功
        # OPERATING：表示操作执行中
        # FAILED：表示操作失败
        # @type LatestOperationState: String
        # @param CreateTime: 实例创建时间，时间格式："YYYY-MM-DD HH:MM:SS"
        # @type CreateTime: String
        # @param MaxOutBandwidth: 公网出带宽上限，默认10Mbps，单位：Mbps
        # @type MaxOutBandwidth: String
        # @param MaxFreeTraffic: 每月免费流量，默认500G，单位：GB
        # @type MaxFreeTraffic: String
        # @param ConfigurationEnvironment: 应用配置环境
        # @type ConfigurationEnvironment: String
        # @param LoginServices: 实例包含的登录服务详情
        # @type LoginServices: Array
        # @param OSType: 应用服务的操作系统类型；参数：linux、windows
        # @type OSType: String

        attr_accessor :InstanceId, :InstanceName, :InstanceState, :ApplicationName, :BundleName, :GPUCount, :GPUPerformance, :GPUMemory, :CPU, :Memory, :SystemDisk, :PrivateIpAddresses, :PublicIpAddresses, :SecurityGroupIds, :LatestOperation, :LatestOperationState, :CreateTime, :MaxOutBandwidth, :MaxFreeTraffic, :ConfigurationEnvironment, :LoginServices, :OSType

        def initialize(instanceid=nil, instancename=nil, instancestate=nil, applicationname=nil, bundlename=nil, gpucount=nil, gpuperformance=nil, gpumemory=nil, cpu=nil, memory=nil, systemdisk=nil, privateipaddresses=nil, publicipaddresses=nil, securitygroupids=nil, latestoperation=nil, latestoperationstate=nil, createtime=nil, maxoutbandwidth=nil, maxfreetraffic=nil, configurationenvironment=nil, loginservices=nil, ostype=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceState = instancestate
          @ApplicationName = applicationname
          @BundleName = bundlename
          @GPUCount = gpucount
          @GPUPerformance = gpuperformance
          @GPUMemory = gpumemory
          @CPU = cpu
          @Memory = memory
          @SystemDisk = systemdisk
          @PrivateIpAddresses = privateipaddresses
          @PublicIpAddresses = publicipaddresses
          @SecurityGroupIds = securitygroupids
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @CreateTime = createtime
          @MaxOutBandwidth = maxoutbandwidth
          @MaxFreeTraffic = maxfreetraffic
          @ConfigurationEnvironment = configurationenvironment
          @LoginServices = loginservices
          @OSType = ostype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceState = params['InstanceState']
          @ApplicationName = params['ApplicationName']
          @BundleName = params['BundleName']
          @GPUCount = params['GPUCount']
          @GPUPerformance = params['GPUPerformance']
          @GPUMemory = params['GPUMemory']
          @CPU = params['CPU']
          @Memory = params['Memory']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @PublicIpAddresses = params['PublicIpAddresses']
          @SecurityGroupIds = params['SecurityGroupIds']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @CreateTime = params['CreateTime']
          @MaxOutBandwidth = params['MaxOutBandwidth']
          @MaxFreeTraffic = params['MaxFreeTraffic']
          @ConfigurationEnvironment = params['ConfigurationEnvironment']
          unless params['LoginServices'].nil?
            @LoginServices = []
            params['LoginServices'].each do |i|
              loginservice_tmp = LoginService.new
              loginservice_tmp.deserialize(i)
              @LoginServices << loginservice_tmp
            end
          end
          @OSType = params['OSType']
        end
      end

      # 实例预付费入参
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 时长，默认值：1
        # @type Period: Integer
        # @param RenewFlag: 续费标志可选参数：
        # NOTIFY_AND_MANUAL_RENEW：表示默认状态(用户未设置，即初始状态：若用户有预付费不停服特权，也会对该值进行自动续费)
        # NOTIFY_AND_AUTO_RENEW：表示自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：表示明确不自动续费(用户设置)
        # 默认值：NOTIFY_AND_MANUAL_RENEW
        # @type RenewFlag: String
        # @param TimeUnit: 时长单位，枚举： MONTH, DAY, HOUR；释义：月，日，小时
        # @type TimeUnit: String

        attr_accessor :Period, :RenewFlag, :TimeUnit

        def initialize(period=nil, renewflag=nil, timeunit=nil)
          @Period = period
          @RenewFlag = renewflag
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
          @TimeUnit = params['TimeUnit']
        end
      end

      # 套餐价格
      class ItemPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 原单价，元
        # @type UnitPrice: Float
        # @param DiscountUnitPrice: 折扣后单价，元
        # @type DiscountUnitPrice: Float
        # @param Discount: 折扣
        # @type Discount: Float
        # @param ChargeUnit: 单位：时/月
        # @type ChargeUnit: String
        # @param Amount: 商品数量
        # @type Amount: Integer
        # @param OriginPrice: 原价
        # @type OriginPrice: Float
        # @param DiscountPrice: 折扣价
        # @type DiscountPrice: Float

        attr_accessor :UnitPrice, :DiscountUnitPrice, :Discount, :ChargeUnit, :Amount, :OriginPrice, :DiscountPrice

        def initialize(unitprice=nil, discountunitprice=nil, discount=nil, chargeunit=nil, amount=nil, originprice=nil, discountprice=nil)
          @UnitPrice = unitprice
          @DiscountUnitPrice = discountunitprice
          @Discount = discount
          @ChargeUnit = chargeunit
          @Amount = amount
          @OriginPrice = originprice
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @DiscountUnitPrice = params['DiscountUnitPrice']
          @Discount = params['Discount']
          @ChargeUnit = params['ChargeUnit']
          @Amount = params['Amount']
          @OriginPrice = params['OriginPrice']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # 分实例价格
      class ItemPriceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstancePrice: 实例价格详情
        # @type InstancePrice: :class:`Tencentcloud::Hai.v20230812.models.ItemPrice`
        # @param CloudDiskPrice: 磁盘价格详情
        # @type CloudDiskPrice: :class:`Tencentcloud::Hai.v20230812.models.ItemPrice`
        # @param InstanceTotalPrice: 该实例的总价钱
        # @type InstanceTotalPrice: :class:`Tencentcloud::Hai.v20230812.models.ItemPrice`

        attr_accessor :InstanceId, :InstancePrice, :CloudDiskPrice, :InstanceTotalPrice

        def initialize(instanceid=nil, instanceprice=nil, clouddiskprice=nil, instancetotalprice=nil)
          @InstanceId = instanceid
          @InstancePrice = instanceprice
          @CloudDiskPrice = clouddiskprice
          @InstanceTotalPrice = instancetotalprice
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['InstancePrice'].nil?
            @InstancePrice = ItemPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['CloudDiskPrice'].nil?
            @CloudDiskPrice = ItemPrice.new
            @CloudDiskPrice.deserialize(params['CloudDiskPrice'])
          end
          unless params['InstanceTotalPrice'].nil?
            @InstanceTotalPrice = ItemPrice.new
            @InstanceTotalPrice.deserialize(params['InstanceTotalPrice'])
          end
        end
      end

      # 登录服务详情
      class LoginService < TencentCloud::Common::AbstractModel
        # @param ServiceName: 登录方式名称
        # @type ServiceName: String

        attr_accessor :ServiceName

        def initialize(servicename=nil)
          @ServiceName = servicename
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
        end
      end

      # 某服务的登录配置
      class LoginSetting < TencentCloud::Common::AbstractModel
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param Url: 服务登录url
        # @type Url: String

        attr_accessor :ServiceName, :Url

        def initialize(servicename=nil, url=nil)
          @ServiceName = servicename
          @Url = url
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @Url = params['Url']
        end
      end

      # 模型详情
      class ModelDetail < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param Description: 应用描述
        # @type Description: String
        # @param CommunityUrl: 官方社区链接
        # @type CommunityUrl: String
        # @param GuideUrl: 最佳实践链接
        # @type GuideUrl: String
        # @param ModelState: 模型状态
        # @type ModelState: String
        # @param Tags: 应用对应的标签，如机器学习
        # @type Tags: Array
        # @param ConfigEnvironment: 配置环境
        # @type ConfigEnvironment: String

        attr_accessor :ModelName, :ModelId, :Description, :CommunityUrl, :GuideUrl, :ModelState, :Tags, :ConfigEnvironment

        def initialize(modelname=nil, modelid=nil, description=nil, communityurl=nil, guideurl=nil, modelstate=nil, tags=nil, configenvironment=nil)
          @ModelName = modelname
          @ModelId = modelid
          @Description = description
          @CommunityUrl = communityurl
          @GuideUrl = guideurl
          @ModelState = modelstate
          @Tags = tags
          @ConfigEnvironment = configenvironment
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @ModelId = params['ModelId']
          @Description = params['Description']
          @CommunityUrl = params['CommunityUrl']
          @GuideUrl = params['GuideUrl']
          @ModelState = params['ModelState']
          @Tags = params['Tags']
          @ConfigEnvironment = params['ConfigEnvironment']
        end
      end

      # musk prompt详情
      class MuskPromptInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowId: workflow id
        # @type WorkflowId: String
        # @param WorkgroupId: workgroup id
        # @type WorkgroupId: String
        # @param PromptId: prompt id
        # @type PromptId: String
        # @param OutputResource: 生成的内容
        # @type OutputResource: Array
        # @param Status: prompt status
        # 0: 执行中
        # 1: 执行成功
        # 2: 执行失败
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Cost: 任务执行耗时，单位毫秒
        # @type Cost: Integer
        # @param ErrorMessage: 任务执行失败错误信息
        # @type ErrorMessage: String

        attr_accessor :WorkflowId, :WorkgroupId, :PromptId, :OutputResource, :Status, :CreateTime, :UpdateTime, :Cost, :ErrorMessage

        def initialize(workflowid=nil, workgroupid=nil, promptid=nil, outputresource=nil, status=nil, createtime=nil, updatetime=nil, cost=nil, errormessage=nil)
          @WorkflowId = workflowid
          @WorkgroupId = workgroupid
          @PromptId = promptid
          @OutputResource = outputresource
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Cost = cost
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkgroupId = params['WorkgroupId']
          @PromptId = params['PromptId']
          @OutputResource = params['OutputResource']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Cost = params['Cost']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 推理集群的网络设置
      class NetworkSetting < TencentCloud::Common::AbstractModel
        # @param PublicEndpointEnable: 公网访问
        # @type PublicEndpointEnable: Boolean
        # @param VpcEndpointEnable: 内网访问
        # @type VpcEndpointEnable: Boolean
        # @param VpcId: vpc内网ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :PublicEndpointEnable, :VpcEndpointEnable, :VpcId, :SubnetId

        def initialize(publicendpointenable=nil, vpcendpointenable=nil, vpcid=nil, subnetid=nil)
          @PublicEndpointEnable = publicendpointenable
          @VpcEndpointEnable = vpcendpointenable
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @PublicEndpointEnable = params['PublicEndpointEnable']
          @VpcEndpointEnable = params['VpcEndpointEnable']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # HAI 实例的网络配置和消耗情况
      class NetworkStatus < TencentCloud::Common::AbstractModel
        # @param InstanceId: HAI 的实例 ID
        # @type InstanceId: String
        # @param AddressIp: 公网 IP 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIp: String
        # @param Bandwidth: 出带宽上限，单位Mbps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param TotalTrafficAmount: 流量包总量，单位GB
        # @type TotalTrafficAmount: Float
        # @param RemainingTrafficAmount: 流量包剩余量，单位GB
        # @type RemainingTrafficAmount: Float

        attr_accessor :InstanceId, :AddressIp, :Bandwidth, :TotalTrafficAmount, :RemainingTrafficAmount

        def initialize(instanceid=nil, addressip=nil, bandwidth=nil, totaltrafficamount=nil, remainingtrafficamount=nil)
          @InstanceId = instanceid
          @AddressIp = addressip
          @Bandwidth = bandwidth
          @TotalTrafficAmount = totaltrafficamount
          @RemainingTrafficAmount = remainingtrafficamount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AddressIp = params['AddressIp']
          @Bandwidth = params['Bandwidth']
          @TotalTrafficAmount = params['TotalTrafficAmount']
          @RemainingTrafficAmount = params['RemainingTrafficAmount']
        end
      end

      # 费用数据结构体
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格信息
        # @type InstancePrice: :class:`Tencentcloud::Hai.v20230812.models.ItemPrice`
        # @param CloudDiskPrice: 云盘价格信息
        # @type CloudDiskPrice: :class:`Tencentcloud::Hai.v20230812.models.ItemPrice`
        # @param PriceDetailSet: 分实例价格
        # @type PriceDetailSet: Array

        attr_accessor :InstancePrice, :CloudDiskPrice, :PriceDetailSet

        def initialize(instanceprice=nil, clouddiskprice=nil, pricedetailset=nil)
          @InstancePrice = instanceprice
          @CloudDiskPrice = clouddiskprice
          @PriceDetailSet = pricedetailset
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = ItemPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['CloudDiskPrice'].nil?
            @CloudDiskPrice = ItemPrice.new
            @CloudDiskPrice.deserialize(params['CloudDiskPrice'])
          end
          unless params['PriceDetailSet'].nil?
            @PriceDetailSet = []
            params['PriceDetailSet'].each do |i|
              itempricedetail_tmp = ItemPriceDetail.new
              itempricedetail_tmp.deserialize(i)
              @PriceDetailSet << itempricedetail_tmp
            end
          end
        end
      end

      # 探针配置信息
      class ProbeConfig < TencentCloud::Common::AbstractModel
        # @param HttpGet: <p>HTTP GET请求进行健康检查</p>
        # @type HttpGet: :class:`Tencentcloud::Hai.v20230812.models.HttpConfig`
        # @param InitialDelaySeconds: <p>容器启动后，等待多少秒开始第一次探测</p>
        # @type InitialDelaySeconds: Integer
        # @param PeriodSeconds: <p>每次执行探测的间隔时间（秒）</p>
        # @type PeriodSeconds: Integer
        # @param TimeoutSeconds: <p>每次探测等待响应的超时时间（秒）</p>
        # @type TimeoutSeconds: Integer
        # @param SuccessThreshold: <p>探测失败后，最小连续成功次数才被认为成功</p>
        # @type SuccessThreshold: Integer
        # @param FailureThreshold: <p>探测失败后，Kubernetes的重试次数</p>
        # @type FailureThreshold: Integer

        attr_accessor :HttpGet, :InitialDelaySeconds, :PeriodSeconds, :TimeoutSeconds, :SuccessThreshold, :FailureThreshold

        def initialize(httpget=nil, initialdelayseconds=nil, periodseconds=nil, timeoutseconds=nil, successthreshold=nil, failurethreshold=nil)
          @HttpGet = httpget
          @InitialDelaySeconds = initialdelayseconds
          @PeriodSeconds = periodseconds
          @TimeoutSeconds = timeoutseconds
          @SuccessThreshold = successthreshold
          @FailureThreshold = failurethreshold
        end

        def deserialize(params)
          unless params['HttpGet'].nil?
            @HttpGet = HttpConfig.new
            @HttpGet.deserialize(params['HttpGet'])
          end
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @PeriodSeconds = params['PeriodSeconds']
          @TimeoutSeconds = params['TimeoutSeconds']
          @SuccessThreshold = params['SuccessThreshold']
          @FailureThreshold = params['FailureThreshold']
        end
      end

      # 探针信息
      class ProbeInfo < TencentCloud::Common::AbstractModel
        # @param LivenessProbe: <p>存活探针</p>
        # @type LivenessProbe: :class:`Tencentcloud::Hai.v20230812.models.ProbeConfig`
        # @param ReadinessProbe: <p>就绪探针</p>
        # @type ReadinessProbe: :class:`Tencentcloud::Hai.v20230812.models.ProbeConfig`
        # @param StartupProbe: <p>启动探针</p>
        # @type StartupProbe: :class:`Tencentcloud::Hai.v20230812.models.ProbeConfig`

        attr_accessor :LivenessProbe, :ReadinessProbe, :StartupProbe

        def initialize(livenessprobe=nil, readinessprobe=nil, startupprobe=nil)
          @LivenessProbe = livenessprobe
          @ReadinessProbe = readinessprobe
          @StartupProbe = startupprobe
        end

        def deserialize(params)
          unless params['LivenessProbe'].nil?
            @LivenessProbe = ProbeConfig.new
            @LivenessProbe.deserialize(params['LivenessProbe'])
          end
          unless params['ReadinessProbe'].nil?
            @ReadinessProbe = ProbeConfig.new
            @ReadinessProbe.deserialize(params['ReadinessProbe'])
          end
          unless params['StartupProbe'].nil?
            @StartupProbe = ProbeConfig.new
            @StartupProbe.deserialize(params['StartupProbe'])
          end
        end
      end

      # 地域列表
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param RegionState: 地域是否可用状态
        # AVAILABLE：可用
        # @type RegionState: String
        # @param ScholarRocketSupportState: 学术加速是否支持：
        # NO_NEED_SUPPORT表示不需支持；NOT_SUPPORT_YET表示暂未支持；ALREADY_SUPPORT表示已经支持。
        # @type ScholarRocketSupportState: String

        attr_accessor :Region, :RegionName, :RegionState, :ScholarRocketSupportState

        def initialize(region=nil, regionname=nil, regionstate=nil, scholarrocketsupportstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
          @ScholarRocketSupportState = scholarrocketsupportstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
          @ScholarRocketSupportState = params['ScholarRocketSupportState']
        end
      end

      # ResetInstancesPassword请求参数结构体
      class ResetInstancesPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param Password: 实例密码必须8-30位，推荐使用12位以上密码，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：<br><li>小写字母：[a-z]</li><br><li>大写字母：[A-Z]</li><br><li>数字：0-9</li><br><li>特殊字符： ()\`\~!@#$%^&\*-+=\_|{}[]:;'<>,.?/</li>
        # @type Password: String
        # @param DryRun: 默认为False，True代表只验证接口连通性
        # @type DryRun: Boolean

        attr_accessor :InstanceIds, :Password, :DryRun

        def initialize(instanceids=nil, password=nil, dryrun=nil)
          @InstanceIds = instanceids
          @Password = password
          @DryRun = dryrun
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Password = params['Password']
          @DryRun = params['DryRun']
        end
      end

      # ResetInstancesPassword返回参数结构体
      class ResetInstancesPasswordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: task任务id
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

      # ResizeInstanceDisk请求参数结构体
      class ResizeInstanceDiskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要扩容云盘的HAI实例ID
        # @type InstanceId: String
        # @param DiskSize: 扩容云硬盘大小，单位为GB，必须大于当前云硬盘大小。
        # @type DiskSize: Integer

        attr_accessor :InstanceId, :DiskSize

        def initialize(instanceid=nil, disksize=nil)
          @InstanceId = instanceid
          @DiskSize = disksize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiskSize = params['DiskSize']
        end
      end

      # ResizeInstanceDisk返回参数结构体
      class ResizeInstanceDiskResponse < TencentCloud::Common::AbstractModel
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

      # RunInstances请求参数结构体
      class RunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID通过调用接口[DescribeApplications](https://cloud.tencent.com/document/api/1721/101609)获取。
        # @type ApplicationId: String
        # @param BundleType: 算力套餐类型, 枚举：XL,XL_2X, 3XL, 3XL_2X, 4XL, 24GB_A
        # @type BundleType: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Hai.v20230812.models.SystemDisk`
        # @param InstanceCount: 购买实例数量，单次请求实例数量上限为10.
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称，名称长度限制为128个字符.
        # @type InstanceName: String
        # @param ClientToken: 幂等请求的token
        # @type ClientToken: String
        # @param DryRun: DryRun为True就是只验接口连通性，默认为False
        # @type DryRun: Boolean

        attr_accessor :ApplicationId, :BundleType, :SystemDisk, :InstanceCount, :InstanceName, :ClientToken, :DryRun

        def initialize(applicationid=nil, bundletype=nil, systemdisk=nil, instancecount=nil, instancename=nil, clienttoken=nil, dryrun=nil)
          @ApplicationId = applicationid
          @BundleType = bundletype
          @SystemDisk = systemdisk
          @InstanceCount = instancecount
          @InstanceName = instancename
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @BundleType = params['BundleType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # RunInstances返回参数结构体
      class RunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 场景详情
      class SceneInfo < TencentCloud::Common::AbstractModel
        # @param SceneId: 场景id
        # @type SceneId: String
        # @param SceneName: 场景名
        # @type SceneName: String

        attr_accessor :SceneId, :SceneName

        def initialize(sceneid=nil, scenename=nil)
          @SceneId = sceneid
          @SceneName = scenename
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @SceneName = params['SceneName']
        end
      end

      # 服务详情
      class ServiceDetail < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param ServiceState: 服务状态
        # @type ServiceState: String
        # @param RunningReplicas: 运行中的副本数
        # @type RunningReplicas: Integer
        # @param TotalReplicas: 期望的副本总数
        # @type TotalReplicas: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ComputeSet: 算力套餐详情
        # @type ComputeSet: Array
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param DeploymentConfigs: 服务部署信息
        # @type DeploymentConfigs: Array
        # @param HyperParam: 服务超参数配置
        # @type HyperParam: :class:`Tencentcloud::Hai.v20230812.models.HyperParam`

        attr_accessor :ServiceId, :ServiceName, :ServiceState, :RunningReplicas, :TotalReplicas, :CreateTime, :ComputeSet, :ModelName, :DeploymentConfigs, :HyperParam

        def initialize(serviceid=nil, servicename=nil, servicestate=nil, runningreplicas=nil, totalreplicas=nil, createtime=nil, computeset=nil, modelname=nil, deploymentconfigs=nil, hyperparam=nil)
          @ServiceId = serviceid
          @ServiceName = servicename
          @ServiceState = servicestate
          @RunningReplicas = runningreplicas
          @TotalReplicas = totalreplicas
          @CreateTime = createtime
          @ComputeSet = computeset
          @ModelName = modelname
          @DeploymentConfigs = deploymentconfigs
          @HyperParam = hyperparam
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @ServiceState = params['ServiceState']
          @RunningReplicas = params['RunningReplicas']
          @TotalReplicas = params['TotalReplicas']
          @CreateTime = params['CreateTime']
          unless params['ComputeSet'].nil?
            @ComputeSet = []
            params['ComputeSet'].each do |i|
              computedetail_tmp = ComputeDetail.new
              computedetail_tmp.deserialize(i)
              @ComputeSet << computedetail_tmp
            end
          end
          @ModelName = params['ModelName']
          unless params['DeploymentConfigs'].nil?
            @DeploymentConfigs = []
            params['DeploymentConfigs'].each do |i|
              deploymentconfig_tmp = DeploymentConfig.new
              deploymentconfig_tmp.deserialize(i)
              @DeploymentConfigs << deploymentconfig_tmp
            end
          end
          unless params['HyperParam'].nil?
            @HyperParam = HyperParam.new
            @HyperParam.deserialize(params['HyperParam'])
          end
        end
      end

      # 服务元数据信息，如服务名
      class ServiceMetaData < TencentCloud::Common::AbstractModel
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param ServiceChargeType: 收费类型
        # @type ServiceChargeType: String

        attr_accessor :ServiceName, :ServiceChargeType

        def initialize(servicename=nil, servicechargetype=nil)
          @ServiceName = servicename
          @ServiceChargeType = servicechargetype
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @ServiceChargeType = params['ServiceChargeType']
        end
      end

      # 推理集群费用数据结构体
      class ServicePriceDetail < TencentCloud::Common::AbstractModel
        # @param ServicePrice: 推理集群价格信息
        # @type ServicePrice: :class:`Tencentcloud::Hai.v20230812.models.ItemPrice`

        attr_accessor :ServicePrice

        def initialize(serviceprice=nil)
          @ServicePrice = serviceprice
        end

        def deserialize(params)
          unless params['ServicePrice'].nil?
            @ServicePrice = ItemPrice.new
            @ServicePrice.deserialize(params['ServicePrice'])
          end
        end
      end

      # StartInstance请求参数结构体
      class StartInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1721/101612) API获取实例ID。
        # @type InstanceId: String
        # @param DryRun: 默认为False，True代表只验证接口连通性
        # @type DryRun: Boolean

        attr_accessor :InstanceId, :DryRun

        def initialize(instanceid=nil, dryrun=nil)
          @InstanceId = instanceid
          @DryRun = dryrun
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DryRun = params['DryRun']
        end
      end

      # StartInstance返回参数结构体
      class StartInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: task任务id
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

      # StopInstance请求参数结构体
      class StopInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1721/101612) API获取实例ID。
        # @type InstanceId: String
        # @param StopMode: hai实例关机的模式，目前仅支持关机不收费：
        # STOP_CHARGE -- 关闭hai实例，释放计算资源，停止收取计算资源的费用。
        # 注意：默认值为STOP_CHARGE
        # @type StopMode: String
        # @param DryRun: 默认为False，True代表只验证接口连通性
        # @type DryRun: Boolean

        attr_accessor :InstanceId, :StopMode, :DryRun

        def initialize(instanceid=nil, stopmode=nil, dryrun=nil)
          @InstanceId = instanceid
          @StopMode = stopmode
          @DryRun = dryrun
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StopMode = params['StopMode']
          @DryRun = params['DryRun']
        end
      end

      # StopInstance返回参数结构体
      class StopInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: task任务id
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

      # 存储信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param MountPath: 挂载路径
        # @type MountPath: String
        # @param COSStorage: cos挂载信息
        # @type COSStorage: :class:`Tencentcloud::Hai.v20230812.models.COSStorage`

        attr_accessor :MountPath, :COSStorage

        def initialize(mountpath=nil, cosstorage=nil)
          @MountPath = mountpath
          @COSStorage = cosstorage
        end

        def deserialize(params)
          @MountPath = params['MountPath']
          unless params['COSStorage'].nil?
            @COSStorage = COSStorage.new
            @COSStorage.deserialize(params['COSStorage'])
          end
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。取值范围：<li>CLOUD_PREMIUM：高性能云硬盘</li><li>CLOUD_HSSD：增强型SSD云盘</li>默认取值：当前有库存的硬盘类型。
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 80，取值范围：80-1000
        # @type DiskSize: Integer
        # @param DiskName: 系统盘分区盘符
        # @type DiskName: String

        attr_accessor :DiskType, :DiskSize, :DiskName

        def initialize(disktype=nil, disksize=nil, diskname=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskName = params['DiskName']
        end
      end

      # 模板详情
      class TemplateDetail < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param DeployMode: 部署方式
        # @type DeployMode: String
        # @param EngineType: 推理引擎
        # @type EngineType: String
        # @param ComputeSet: 算力详情
        # @type ComputeSet: Array
        # @param SupportFunc: 当前部署模板所支持的增强功能
        # @type SupportFunc: Array

        attr_accessor :TemplateId, :DeployMode, :EngineType, :ComputeSet, :SupportFunc

        def initialize(templateid=nil, deploymode=nil, enginetype=nil, computeset=nil, supportfunc=nil)
          @TemplateId = templateid
          @DeployMode = deploymode
          @EngineType = enginetype
          @ComputeSet = computeset
          @SupportFunc = supportfunc
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @DeployMode = params['DeployMode']
          @EngineType = params['EngineType']
          unless params['ComputeSet'].nil?
            @ComputeSet = []
            params['ComputeSet'].each do |i|
              computedetail_tmp = ComputeDetail.new
              computedetail_tmp.deserialize(i)
              @ComputeSet << computedetail_tmp
            end
          end
          @SupportFunc = params['SupportFunc']
        end
      end

      # TerminateInstances请求参数结构体
      class TerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1721/101612) API获取实例ID列表。单次能查询100个InstanceId。
        # @type InstanceIds: Array
        # @param DryRun: 默认为False，True代表只验证接口连通性
        # @type DryRun: Boolean

        attr_accessor :InstanceIds, :DryRun

        def initialize(instanceids=nil, dryrun=nil)
          @InstanceIds = instanceids
          @DryRun = dryrun
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @DryRun = params['DryRun']
        end
      end

      # TerminateInstances返回参数结构体
      class TerminateInstancesResponse < TencentCloud::Common::AbstractModel
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

      # UpdateServiceConfigs请求参数结构体
      class UpdateServiceConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: <p>服务ID</p>
        # @type ServiceId: String
        # @param TargetReplicas: <p>期望副本数</p>
        # @type TargetReplicas: Integer
        # @param DeploymentConfigs: <p>启动参数、环境变量等参数</p>
        # @type DeploymentConfigs: Array

        attr_accessor :ServiceId, :TargetReplicas, :DeploymentConfigs

        def initialize(serviceid=nil, targetreplicas=nil, deploymentconfigs=nil)
          @ServiceId = serviceid
          @TargetReplicas = targetreplicas
          @DeploymentConfigs = deploymentconfigs
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @TargetReplicas = params['TargetReplicas']
          unless params['DeploymentConfigs'].nil?
            @DeploymentConfigs = []
            params['DeploymentConfigs'].each do |i|
              deploymentconfig_tmp = DeploymentConfig.new
              deploymentconfig_tmp.deserialize(i)
              @DeploymentConfigs << deploymentconfig_tmp
            end
          end
        end
      end

      # UpdateServiceConfigs返回参数结构体
      class UpdateServiceConfigsResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

