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
  module Tia
    module V20180226
      # CreateJob请求参数结构体
      class CreateJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Cluster: 运行任务的集群，详见 [使用集群](https://cloud.tencent.com/document/product/851/17317)
        # @type Cluster: String
        # @param RuntimeVersion: 运行任务的环境，详见 [运行环境](https://cloud.tencent.com/document/product/851/17320)
        # @type RuntimeVersion: String
        # @param PackageDir: 挂载的路径，支持 NFS，[CFS](https://cloud.tencent.com/product/cfs) 和 [COS](https://cloud.tencent.com/product/cos)，其中 COS 只在 [TI-A 定制环境](https://cloud.tencent.com/document/product/851/17320#ti-a-.E5.AE.9A.E5.88.B6.E7.8E.AF.E5.A2.83) 中支持
        # @type PackageDir: Array
        # @param Command: 任务启动命令
        # @type Command: Array
        # @param Args: 任务启动参数
        # @type Args: Array
        # @param ScaleTier: 运行任务的配置信息，详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        # @type ScaleTier: String
        # @param MasterType: Master 机器类型，ScaleTier 取值为 `CUSTOM` 时必填，详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        # @type MasterType: String
        # @param WorkerType: Worker 机器类型，ScaleTier 取值为 `CUSTOM` 时必填，详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        # @type WorkerType: String
        # @param ParameterServerType: Parameter server 机器类型，ScaleTier 取值为 `CUSTOM` 时必填,详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        # @type ParameterServerType: String
        # @param WorkerCount: Worker 机器数量，ScaleTier 取值为 `CUSTOM` 时必填,详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        # @type WorkerCount: Integer
        # @param ParameterServerCount: Parameter server 机器数量，ScaleTier 取值为 `CUSTOM` 时必填,详见 [训练规模](https://cloud.tencent.com/document/product/851/17319)
        # @type ParameterServerCount: Integer
        # @param Debug: 启动 debug 模式，默认为 false
        # @type Debug: Boolean
        # @param RuntimeConf: 运行任务的其他配置信息
        # @type RuntimeConf: Array

        attr_accessor :Name, :Cluster, :RuntimeVersion, :PackageDir, :Command, :Args, :ScaleTier, :MasterType, :WorkerType, :ParameterServerType, :WorkerCount, :ParameterServerCount, :Debug, :RuntimeConf
        
        def initialize(name=nil, cluster=nil, runtimeversion=nil, packagedir=nil, command=nil, args=nil, scaletier=nil, mastertype=nil, workertype=nil, parameterservertype=nil, workercount=nil, parameterservercount=nil, debug=nil, runtimeconf=nil)
          @Name = name
          @Cluster = cluster
          @RuntimeVersion = runtimeversion
          @PackageDir = packagedir
          @Command = command
          @Args = args
          @ScaleTier = scaletier
          @MasterType = mastertype
          @WorkerType = workertype
          @ParameterServerType = parameterservertype
          @WorkerCount = workercount
          @ParameterServerCount = parameterservercount
          @Debug = debug
          @RuntimeConf = runtimeconf
        end

        def deserialize(params)
          @Name = params['Name']
          @Cluster = params['Cluster']
          @RuntimeVersion = params['RuntimeVersion']
          @PackageDir = params['PackageDir']
          @Command = params['Command']
          @Args = params['Args']
          @ScaleTier = params['ScaleTier']
          @MasterType = params['MasterType']
          @WorkerType = params['WorkerType']
          @ParameterServerType = params['ParameterServerType']
          @WorkerCount = params['WorkerCount']
          @ParameterServerCount = params['ParameterServerCount']
          @Debug = params['Debug']
          @RuntimeConf = params['RuntimeConf']
        end
      end

      # CreateJob返回参数结构体
      class CreateJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: 训练任务信息
        # @type Job: :class:`Tencentcloud::Tia.v20180226.models.Job`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId
        
        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = Job.new.deserialize(params['Job'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模型名称
        # @type Name: String
        # @param Model: 要部署的模型文件路径名
        # @type Model: String
        # @param Description: 关于模型的描述
        # @type Description: String
        # @param Cluster: 部署目标集群的名称，`集群模式` 必填
        # @type Cluster: String
        # @param RuntimeVersion: 运行环境镜像的标签，详见 [Serving 环境](https://cloud.tencent.com/document/product/851/17320#serving-.E7.8E.AF.E5.A2.83)
        # @type RuntimeVersion: String
        # @param Replicas: 要部署的模型副本数目，`集群模式` 选填
        # @type Replicas: Integer
        # @param Expose: 暴露外网或内网，默认暴露外网，`集群模式` 选填
        # @type Expose: String
        # @param ServType: 部署模式，取值 `serverless` 即为 `无服务器模式`，否则为 `集群模式` 下服务的运行规模，形如 `2U4G1P`，详见 [自定义的训练规模](https://cloud.tencent.com/document/product/851/17319#.E8.87.AA.E5.AE.9A.E4.B9.89.E7.9A.84.E8.AE.AD.E7.BB.83.E8.A7.84.E6.A8.A1)
        # @type ServType: String
        # @param RuntimeConf: `无服务器模式` 可选的其他配置信息，详见 [利用无服务器函数部署](https://cloud.tencent.com/document/product/851/17049#.E5.88.A9.E7.94.A8.E6.97.A0.E6.9C.8D.E5.8A.A1.E5.99.A8.E5.87.BD.E6.95.B0.E9.83.A8.E7.BD.B2)
        # @type RuntimeConf: Array

        attr_accessor :Name, :Model, :Description, :Cluster, :RuntimeVersion, :Replicas, :Expose, :ServType, :RuntimeConf
        
        def initialize(name=nil, model=nil, description=nil, cluster=nil, runtimeversion=nil, replicas=nil, expose=nil, servtype=nil, runtimeconf=nil)
          @Name = name
          @Model = model
          @Description = description
          @Cluster = cluster
          @RuntimeVersion = runtimeversion
          @Replicas = replicas
          @Expose = expose
          @ServType = servtype
          @RuntimeConf = runtimeconf
        end

        def deserialize(params)
          @Name = params['Name']
          @Model = params['Model']
          @Description = params['Description']
          @Cluster = params['Cluster']
          @RuntimeVersion = params['RuntimeVersion']
          @Replicas = params['Replicas']
          @Expose = params['Expose']
          @ServType = params['ServType']
          @RuntimeConf = params['RuntimeConf']
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
        # @param Model: 模型的详细信息
        # @type Model: :class:`Tencentcloud::Tia.v20180226.models.Model`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :RequestId
        
        def initialize(model=nil, requestid=nil)
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = Model.new.deserialize(params['Model'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteJob请求参数结构体
      class DeleteJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Cluster: 运行任务的集群
        # @type Cluster: String

        attr_accessor :Name, :Cluster
        
        def initialize(name=nil, cluster=nil)
          @Name = name
          @Cluster = cluster
        end

        def deserialize(params)
          @Name = params['Name']
          @Cluster = params['Cluster']
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

      # DeleteModel请求参数结构体
      class DeleteModelRequest < TencentCloud::Common::AbstractModel
        # @param Name: 要删除的模型名称
        # @type Name: String
        # @param Cluster: 要删除的模型所在的集群名称，`集群模式` 必填
        # @type Cluster: String
        # @param ServType: 模型类型，取值 `serverless` 即为 `无服务器模式`，否则为 `集群模式`
        # @type ServType: String

        attr_accessor :Name, :Cluster, :ServType
        
        def initialize(name=nil, cluster=nil, servtype=nil)
          @Name = name
          @Cluster = cluster
          @ServType = servtype
        end

        def deserialize(params)
          @Name = params['Name']
          @Cluster = params['Cluster']
          @ServType = params['ServType']
        end
      end

      # DeleteModel返回参数结构体
      class DeleteModelResponse < TencentCloud::Common::AbstractModel
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

      # DescribeJob请求参数结构体
      class DescribeJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Cluster: 运行任务的集群
        # @type Cluster: String

        attr_accessor :Name, :Cluster
        
        def initialize(name=nil, cluster=nil)
          @Name = name
          @Cluster = cluster
        end

        def deserialize(params)
          @Name = params['Name']
          @Cluster = params['Cluster']
        end
      end

      # DescribeJob返回参数结构体
      class DescribeJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: 训练任务信息
        # @type Job: :class:`Tencentcloud::Tia.v20180226.models.Job`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId
        
        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = Job.new.deserialize(params['Job'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModel请求参数结构体
      class DescribeModelRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模型名称
        # @type Name: String
        # @param Cluster: 模型所在集群名称，`集群模式` 必填
        # @type Cluster: String
        # @param ServType: 模型类型，取值 `serverless` 即为 `无服务器模式`，否则为 `集群模式`
        # @type ServType: String

        attr_accessor :Name, :Cluster, :ServType
        
        def initialize(name=nil, cluster=nil, servtype=nil)
          @Name = name
          @Cluster = cluster
          @ServType = servtype
        end

        def deserialize(params)
          @Name = params['Name']
          @Cluster = params['Cluster']
          @ServType = params['ServType']
        end
      end

      # DescribeModel返回参数结构体
      class DescribeModelResponse < TencentCloud::Common::AbstractModel
        # @param Model: 模型信息
        # @type Model: :class:`Tencentcloud::Tia.v20180226.models.Model`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :RequestId
        
        def initialize(model=nil, requestid=nil)
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = Model.new.deserialize(params['Model'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InstallAgent请求参数结构体
      class InstallAgentRequest < TencentCloud::Common::AbstractModel
        # @param Cluster: 集群名称
        # @type Cluster: String
        # @param TiaVersion: Agent版本, 用于私有集群的agent安装，默认为“private-training”
        # @type TiaVersion: String
        # @param Update: 是否允许更新Agent
        # @type Update: Boolean

        attr_accessor :Cluster, :TiaVersion, :Update
        
        def initialize(cluster=nil, tiaversion=nil, update=nil)
          @Cluster = cluster
          @TiaVersion = tiaversion
          @Update = update
        end

        def deserialize(params)
          @Cluster = params['Cluster']
          @TiaVersion = params['TiaVersion']
          @Update = params['Update']
        end
      end

      # InstallAgent返回参数结构体
      class InstallAgentResponse < TencentCloud::Common::AbstractModel
        # @param TiaVersion: Agent版本, 用于私有集群的agent安装
        # @type TiaVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TiaVersion, :RequestId
        
        def initialize(tiaversion=nil, requestid=nil)
          @TiaVersion = tiaversion
          @RequestId = requestid
        end

        def deserialize(params)
          @TiaVersion = params['TiaVersion']
          @RequestId = params['RequestId']
        end
      end

      # 训练任务信息
      class Job < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param CreateTime: 任务创建时间，格式为：2006-01-02 15:04:05.999999999 -0700 MST
        # @type CreateTime: String
        # @param StartTime: 任务开始时间，格式为：2006-01-02 15:04:05.999999999 -0700 MST
        # @type StartTime: String
        # @param EndTime: 任务结束时间，格式为：2006-01-02 15:04:05.999999999 -0700 MST
        # @type EndTime: String
        # @param State: 任务状态，可能的状态为Created（已创建），Running（运行中），Succeeded（运行完成：成功），Failed（运行完成：失败）
        # @type State: String
        # @param Message: 任务状态信息
        # @type Message: String
        # @param ScaleTier: 运行任务的配置信息
        # @type ScaleTier: String
        # @param MasterType: （ScaleTier为Custom时）master机器类型
        # @type MasterType: String
        # @param WorkerType: （ScaleTier为Custom时）worker机器类型
        # @type WorkerType: String
        # @param ParameterServerType: （ScaleTier为Custom时）parameter server机器类型
        # @type ParameterServerType: String
        # @param WorkerCount: （ScaleTier为Custom时）worker机器数量
        # @type WorkerCount: Integer
        # @param ParameterServerCount: （ScaleTier为Custom时）parameter server机器数量
        # @type ParameterServerCount: Integer
        # @param PackageDir: 挂载的路径
        # @type PackageDir: Array
        # @param Command: 任务启动命令
        # @type Command: Array
        # @param Args: 任务启动参数
        # @type Args: Array
        # @param Cluster: 运行任务的集群
        # @type Cluster: String
        # @param RuntimeVersion: 运行任务的环境
        # @type RuntimeVersion: String
        # @param DelTime: 任务删除时间，格式为：2006-01-02 15:04:05.999999999 -0700 MST
        # @type DelTime: String
        # @param AppId: 创建任务的AppId
        # @type AppId: Integer
        # @param Uin: 创建任务的Uin
        # @type Uin: String
        # @param Debug: 创建任务的Debug模式
        # @type Debug: Boolean
        # @param RuntimeConf: Runtime的额外配置信息
        # @type RuntimeConf: Array
        # @param Id: 任务Id
        # @type Id: String

        attr_accessor :Name, :CreateTime, :StartTime, :EndTime, :State, :Message, :ScaleTier, :MasterType, :WorkerType, :ParameterServerType, :WorkerCount, :ParameterServerCount, :PackageDir, :Command, :Args, :Cluster, :RuntimeVersion, :DelTime, :AppId, :Uin, :Debug, :RuntimeConf, :Id
        
        def initialize(name=nil, createtime=nil, starttime=nil, endtime=nil, state=nil, message=nil, scaletier=nil, mastertype=nil, workertype=nil, parameterservertype=nil, workercount=nil, parameterservercount=nil, packagedir=nil, command=nil, args=nil, cluster=nil, runtimeversion=nil, deltime=nil, appid=nil, uin=nil, debug=nil, runtimeconf=nil, id=nil)
          @Name = name
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @State = state
          @Message = message
          @ScaleTier = scaletier
          @MasterType = mastertype
          @WorkerType = workertype
          @ParameterServerType = parameterservertype
          @WorkerCount = workercount
          @ParameterServerCount = parameterservercount
          @PackageDir = packagedir
          @Command = command
          @Args = args
          @Cluster = cluster
          @RuntimeVersion = runtimeversion
          @DelTime = deltime
          @AppId = appid
          @Uin = uin
          @Debug = debug
          @RuntimeConf = runtimeconf
          @Id = id
        end

        def deserialize(params)
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @State = params['State']
          @Message = params['Message']
          @ScaleTier = params['ScaleTier']
          @MasterType = params['MasterType']
          @WorkerType = params['WorkerType']
          @ParameterServerType = params['ParameterServerType']
          @WorkerCount = params['WorkerCount']
          @ParameterServerCount = params['ParameterServerCount']
          @PackageDir = params['PackageDir']
          @Command = params['Command']
          @Args = params['Args']
          @Cluster = params['Cluster']
          @RuntimeVersion = params['RuntimeVersion']
          @DelTime = params['DelTime']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Debug = params['Debug']
          @RuntimeConf = params['RuntimeConf']
          @Id = params['Id']
        end
      end

      # ListJobs请求参数结构体
      class ListJobsRequest < TencentCloud::Common::AbstractModel
        # @param Cluster: 运行任务的集群
        # @type Cluster: String
        # @param Limit: 分页参数，返回数量
        # @type Limit: Integer
        # @param Offset: 分页参数，起始位置
        # @type Offset: Integer

        attr_accessor :Cluster, :Limit, :Offset
        
        def initialize(cluster=nil, limit=nil, offset=nil)
          @Cluster = cluster
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Cluster = params['Cluster']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListJobs返回参数结构体
      class ListJobsResponse < TencentCloud::Common::AbstractModel
        # @param Jobs: 训练任务列表
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
              @Jobs << Job.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListModels请求参数结构体
      class ListModelsRequest < TencentCloud::Common::AbstractModel
        # @param Cluster: 部署模型的集群， `集群模式` 必填
        # @type Cluster: String
        # @param Limit: 分页参数，返回数量上限
        # @type Limit: Integer
        # @param Offset: 分页参数，分页起始位置
        # @type Offset: Integer
        # @param ServType: 部署类型，取值 `serverless` 即为 `无服务器模式`，否则为 `集群模式`。
        # @type ServType: String

        attr_accessor :Cluster, :Limit, :Offset, :ServType
        
        def initialize(cluster=nil, limit=nil, offset=nil, servtype=nil)
          @Cluster = cluster
          @Limit = limit
          @Offset = offset
          @ServType = servtype
        end

        def deserialize(params)
          @Cluster = params['Cluster']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ServType = params['ServType']
        end
      end

      # ListModels返回参数结构体
      class ListModelsResponse < TencentCloud::Common::AbstractModel
        # @param Models: Model 数组，用以显示所有模型的信息
        # @type Models: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Models, :RequestId
        
        def initialize(models=nil, requestid=nil)
          @Models = models
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              @Models << Model.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 日志
      class Log < TencentCloud::Common::AbstractModel
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param Log: 日志内容
        # @type Log: String
        # @param Namespace: 空间名
        # @type Namespace: String
        # @param PodId: Pod Id
        # @type PodId: String
        # @param PodName: Pod名
        # @type PodName: String
        # @param Time: 日志日期，格式为“2018-07-02T09:10:04.916553368Z”
        # @type Time: String

        attr_accessor :ContainerName, :Log, :Namespace, :PodId, :PodName, :Time
        
        def initialize(containername=nil, log=nil, namespace=nil, podid=nil, podname=nil, time=nil)
          @ContainerName = containername
          @Log = log
          @Namespace = namespace
          @PodId = podid
          @PodName = podname
          @Time = time
        end

        def deserialize(params)
          @ContainerName = params['ContainerName']
          @Log = params['Log']
          @Namespace = params['Namespace']
          @PodId = params['PodId']
          @PodName = params['PodName']
          @Time = params['Time']
        end
      end

      # 用于描述模型的详细情况
      #         "Model": {
      #             "Name": "test-model",
      #             "Description": "test-model",
      #             "Cluster": "ap-beijing",
      #             "Model": "cos://test-1255502019.cos.ap-shanghai.myqcloud.com/example:/data/mnist",
      #             "RuntimeVersion": "tiaserv-1.6.0-cpu",
      #             "CreateTime": "2018-04-26 15:59:25 +0800 CST",
      #             "State": "Running",
      #             "ServingUrl": "140.143.51.230",
      #             "Message": "Deployment does not have minimum availability.",
      #             "AppId": 1255502019,
      #             "ServType": "1U2G0P"
      #         },
      class Model < TencentCloud::Common::AbstractModel
        # @param Name: 模型名称
        # @type Name: String
        # @param Description: 模型描述
        # @type Description: String
        # @param Cluster: 集群名称
        # @type Cluster: String
        # @param Model: 模型地址
        # @type Model: String
        # @param RuntimeVersion: 运行环境编号
        # @type RuntimeVersion: String
        # @param CreateTime: 模型创建时间
        # @type CreateTime: String
        # @param State: 模型运行状态
        # @type State: String
        # @param ServingUrl: 提供服务的url
        # @type ServingUrl: String
        # @param Message: 相关消息
        # @type Message: String
        # @param AppId: 编号
        # @type AppId: Integer
        # @param ServType: 机型
        # @type ServType: String
        # @param Expose: 模型暴露方式
        # @type Expose: String
        # @param Replicas: 部署副本数量
        # @type Replicas: Integer
        # @param Id: 模型Id
        # @type Id: String
        # @param Uin: 创建任务的Uin
        # @type Uin: String
        # @param DelTime: 模型删除时间，格式为：2006-01-02 15:04:05.999999999 -0700 MST
        # @type DelTime: String

        attr_accessor :Name, :Description, :Cluster, :Model, :RuntimeVersion, :CreateTime, :State, :ServingUrl, :Message, :AppId, :ServType, :Expose, :Replicas, :Id, :Uin, :DelTime
        
        def initialize(name=nil, description=nil, cluster=nil, model=nil, runtimeversion=nil, createtime=nil, state=nil, servingurl=nil, message=nil, appid=nil, servtype=nil, expose=nil, replicas=nil, id=nil, uin=nil, deltime=nil)
          @Name = name
          @Description = description
          @Cluster = cluster
          @Model = model
          @RuntimeVersion = runtimeversion
          @CreateTime = createtime
          @State = state
          @ServingUrl = servingurl
          @Message = message
          @AppId = appid
          @ServType = servtype
          @Expose = expose
          @Replicas = replicas
          @Id = id
          @Uin = uin
          @DelTime = deltime
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Cluster = params['Cluster']
          @Model = params['Model']
          @RuntimeVersion = params['RuntimeVersion']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @ServingUrl = params['ServingUrl']
          @Message = params['Message']
          @AppId = params['AppId']
          @ServType = params['ServType']
          @Expose = params['Expose']
          @Replicas = params['Replicas']
          @Id = params['Id']
          @Uin = params['Uin']
          @DelTime = params['DelTime']
        end
      end

      # QueryLogs请求参数结构体
      class QueryLogsRequest < TencentCloud::Common::AbstractModel
        # @param JobName: 任务的名称
        # @type JobName: String
        # @param Cluster: 任务所在集群的名称
        # @type Cluster: String
        # @param StartTime: 查询日志的开始时间，格式：2019-01-01 00:00:00
        # @type StartTime: String
        # @param EndTime: 查询日志的结束时间，格式：2019-01-01 00:00:00
        # @type EndTime: String
        # @param Limit: 单次要返回的日志条数上限
        # @type Limit: Integer
        # @param Context: 加载更多日志时使用，透传上次返回的 Context 值，获取后续的日志内容；使用 Context 翻页最多能获取 10000 条日志
        # @type Context: String

        attr_accessor :JobName, :Cluster, :StartTime, :EndTime, :Limit, :Context
        
        def initialize(jobname=nil, cluster=nil, starttime=nil, endtime=nil, limit=nil, context=nil)
          @JobName = jobname
          @Cluster = cluster
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @JobName = params['JobName']
          @Cluster = params['Cluster']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # QueryLogs返回参数结构体
      class QueryLogsResponse < TencentCloud::Common::AbstractModel
        # @param Context: 日志查询上下文，用于加载更多日志
        # @type Context: String
        # @param Logs: 日志内容列表
        # @type Logs: Array
        # @param Listover: 是否已经返回所有符合条件的日志
        # @type Listover: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Logs, :Listover, :RequestId
        
        def initialize(context=nil, logs=nil, listover=nil, requestid=nil)
          @Context = context
          @Logs = logs
          @Listover = listover
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          unless params['Logs'].nil?
            @Logs = []
            params['Logs'].each do |i|
              @Logs << Log.new.deserialize(i)
            end
          end
          @Listover = params['Listover']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

