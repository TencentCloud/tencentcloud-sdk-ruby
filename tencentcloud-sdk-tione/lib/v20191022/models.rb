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
  module Tione
    module V20191022
      # 算法配置
      class AlgorithmSpecification < TencentCloud::Common::AbstractModel
        # @param TrainingImageName: 镜像名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingImageName: String
        # @param TrainingInputMode: 输入模式File|Pipe
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingInputMode: String
        # @param AlgorithmName: 算法名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgorithmName: String

        attr_accessor :TrainingImageName, :TrainingInputMode, :AlgorithmName
        
        def initialize(trainingimagename=nil, traininginputmode=nil, algorithmname=nil)
          @TrainingImageName = trainingimagename
          @TrainingInputMode = traininginputmode
          @AlgorithmName = algorithmname
        end

        def deserialize(params)
          @TrainingImageName = params['TrainingImageName']
          @TrainingInputMode = params['TrainingInputMode']
          @AlgorithmName = params['AlgorithmName']
        end
      end

      # 计费标签
      class BillingLabel < TencentCloud::Common::AbstractModel
        # @param Label: 计费项标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param VolumeSize: 存储大小
        # @type VolumeSize: Integer
        # @param Status: 计费状态
        # None: 不计费
        # StorageOnly: 仅存储计费
        # Computing: 计算和存储都计费
        # @type Status: String

        attr_accessor :Label, :VolumeSize, :Status
        
        def initialize(label=nil, volumesize=nil, status=nil)
          @Label = label
          @VolumeSize = volumesize
          @Status = status
        end

        def deserialize(params)
          @Label = params['Label']
          @VolumeSize = params['VolumeSize']
          @Status = params['Status']
        end
      end

      # 接入CLS服务的配置
      class ClsConfig < TencentCloud::Common::AbstractModel
        # @param Type: 接入类型，可选项为free、customer
        # @type Type: String
        # @param LogSetId: 自定义CLS的日志集ID，只有当Type为customer时生效
        # @type LogSetId: String
        # @param TopicId: 自定义CLS的日志主题ID，只有当Type为customer时生效
        # @type TopicId: String

        attr_accessor :Type, :LogSetId, :TopicId
        
        def initialize(type=nil, logsetid=nil, topicid=nil)
          @Type = type
          @LogSetId = logsetid
          @TopicId = topicid
        end

        def deserialize(params)
          @Type = params['Type']
          @LogSetId = params['LogSetId']
          @TopicId = params['TopicId']
        end
      end

      # 存储库列表
      class CodeRepoSummary < TencentCloud::Common::AbstractModel
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param LastModifiedTime: 更新时间
        # @type LastModifiedTime: String
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String
        # @param GitConfig: Git配置
        # @type GitConfig: :class:`Tencentcloud::Tione.v20191022.models.GitConfig`
        # @param NoSecret: 是否有Git凭证
        # @type NoSecret: Boolean

        attr_accessor :CreationTime, :LastModifiedTime, :CodeRepositoryName, :GitConfig, :NoSecret
        
        def initialize(creationtime=nil, lastmodifiedtime=nil, coderepositoryname=nil, gitconfig=nil, nosecret=nil)
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
          @CodeRepositoryName = coderepositoryname
          @GitConfig = gitconfig
          @NoSecret = nosecret
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
          @CodeRepositoryName = params['CodeRepositoryName']
          unless params['GitConfig'].nil?
            @GitConfig = GitConfig.new.deserialize(params['GitConfig'])
          end
          @NoSecret = params['NoSecret']
        end
      end

      # cos路径
      class CosDataSource < TencentCloud::Common::AbstractModel
        # @param Bucket: cos桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param KeyPrefix: cos文件key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyPrefix: String
        # @param DataDistributionType: 分布式数据下载方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDistributionType: String
        # @param DataType: 数据类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataType: String

        attr_accessor :Bucket, :KeyPrefix, :DataDistributionType, :DataType
        
        def initialize(bucket=nil, keyprefix=nil, datadistributiontype=nil, datatype=nil)
          @Bucket = bucket
          @KeyPrefix = keyprefix
          @DataDistributionType = datadistributiontype
          @DataType = datatype
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @KeyPrefix = params['KeyPrefix']
          @DataDistributionType = params['DataDistributionType']
          @DataType = params['DataType']
        end
      end

      # CreateCodeRepository请求参数结构体
      class CreateCodeRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String
        # @param GitConfig: Git相关配置
        # @type GitConfig: :class:`Tencentcloud::Tione.v20191022.models.GitConfig`
        # @param GitSecret: Git凭证
        # @type GitSecret: :class:`Tencentcloud::Tione.v20191022.models.GitSecret`

        attr_accessor :CodeRepositoryName, :GitConfig, :GitSecret
        
        def initialize(coderepositoryname=nil, gitconfig=nil, gitsecret=nil)
          @CodeRepositoryName = coderepositoryname
          @GitConfig = gitconfig
          @GitSecret = gitsecret
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
          unless params['GitConfig'].nil?
            @GitConfig = GitConfig.new.deserialize(params['GitConfig'])
          end
          unless params['GitSecret'].nil?
            @GitSecret = GitSecret.new.deserialize(params['GitSecret'])
          end
        end
      end

      # CreateCodeRepository返回参数结构体
      class CreateCodeRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeRepositoryName, :RequestId
        
        def initialize(coderepositoryname=nil, requestid=nil)
          @CodeRepositoryName = coderepositoryname
          @RequestId = requestid
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
          @RequestId = params['RequestId']
        end
      end

      # CreateNotebookInstance请求参数结构体
      class CreateNotebookInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称，不能超过63个字符
        # 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        # @type NotebookInstanceName: String
        # @param InstanceType: Notebook算力类型
        # 参考https://cloud.tencent.com/document/product/851/41239
        # @type InstanceType: String
        # @param VolumeSizeInGB: 数据卷大小(GB)
        # 用户持久化Notebook实例的数据
        # @type VolumeSizeInGB: Integer
        # @param DirectInternetAccess: 外网访问权限，可取值Enabled/Disabled
        # 开启后，Notebook实例可以具有访问外网80，443端口的权限
        # @type DirectInternetAccess: String
        # @param RootAccess: Root用户权限，可取值Enabled/Disabled
        # 开启后，Notebook实例可以切换至root用户执行命令
        # @type RootAccess: String
        # @param SubnetId: 子网ID
        # 如果需要Notebook实例访问VPC内的资源，则需要选择对应的子网
        # @type SubnetId: String
        # @param LifecycleScriptsName: 生命周期脚本名称
        # 必须是已存在的生命周期脚本，具体参考https://cloud.tencent.com/document/product/851/43140
        # @type LifecycleScriptsName: String
        # @param DefaultCodeRepository: 默认存储库名称
        # 可以是已创建的存储库名称或者已https://开头的公共git库
        # 参考https://cloud.tencent.com/document/product/851/43139
        # @type DefaultCodeRepository: String
        # @param AdditionalCodeRepositories: 其他存储库列表
        # 每个元素可以是已创建的存储库名称或者已https://开头的公共git库
        # 参考https://cloud.tencent.com/document/product/851/43139
        # @type AdditionalCodeRepositories: Array
        # @param ClsAccess: 已弃用，请使用ClsConfig配置。
        # 是否开启CLS日志服务，可取值Enabled/Disabled，默认为Disabled
        # 开启后，Notebook运行的日志会收集到CLS中，CLS会产生费用，请根据需要选择
        # @type ClsAccess: String
        # @param StoppingCondition: 自动停止配置
        # 选择定时停止Notebook实例
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`
        # @param AutoStopping: 自动停止，可取值Enabled/Disabled
        # 取值为Disabled的时候StoppingCondition将被忽略
        # 取值为Enabled的时候读取StoppingCondition作为自动停止的配置
        # @type AutoStopping: String
        # @param ClsConfig: 接入日志的配置，默认接入免费日志
        # @type ClsConfig: :class:`Tencentcloud::Tione.v20191022.models.ClsConfig`

        attr_accessor :NotebookInstanceName, :InstanceType, :VolumeSizeInGB, :DirectInternetAccess, :RootAccess, :SubnetId, :LifecycleScriptsName, :DefaultCodeRepository, :AdditionalCodeRepositories, :ClsAccess, :StoppingCondition, :AutoStopping, :ClsConfig
        
        def initialize(notebookinstancename=nil, instancetype=nil, volumesizeingb=nil, directinternetaccess=nil, rootaccess=nil, subnetid=nil, lifecyclescriptsname=nil, defaultcoderepository=nil, additionalcoderepositories=nil, clsaccess=nil, stoppingcondition=nil, autostopping=nil, clsconfig=nil)
          @NotebookInstanceName = notebookinstancename
          @InstanceType = instancetype
          @VolumeSizeInGB = volumesizeingb
          @DirectInternetAccess = directinternetaccess
          @RootAccess = rootaccess
          @SubnetId = subnetid
          @LifecycleScriptsName = lifecyclescriptsname
          @DefaultCodeRepository = defaultcoderepository
          @AdditionalCodeRepositories = additionalcoderepositories
          @ClsAccess = clsaccess
          @StoppingCondition = stoppingcondition
          @AutoStopping = autostopping
          @ClsConfig = clsconfig
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
          @InstanceType = params['InstanceType']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          @DirectInternetAccess = params['DirectInternetAccess']
          @RootAccess = params['RootAccess']
          @SubnetId = params['SubnetId']
          @LifecycleScriptsName = params['LifecycleScriptsName']
          @DefaultCodeRepository = params['DefaultCodeRepository']
          @AdditionalCodeRepositories = params['AdditionalCodeRepositories']
          @ClsAccess = params['ClsAccess']
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
          @AutoStopping = params['AutoStopping']
          unless params['ClsConfig'].nil?
            @ClsConfig = ClsConfig.new.deserialize(params['ClsConfig'])
          end
        end
      end

      # CreateNotebookInstance返回参数结构体
      class CreateNotebookInstanceResponse < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名字
        # @type NotebookInstanceName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookInstanceName, :RequestId
        
        def initialize(notebookinstancename=nil, requestid=nil)
          @NotebookInstanceName = notebookinstancename
          @RequestId = requestid
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
          @RequestId = params['RequestId']
        end
      end

      # CreateNotebookLifecycleScript请求参数结构体
      class CreateNotebookLifecycleScriptRequest < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: Notebook生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String
        # @param CreateScript: 创建脚本，base64编码
        # base64后的脚本长度不能超过16384个字符
        # @type CreateScript: String
        # @param StartScript: 启动脚本，base64编码
        # base64后的脚本长度不能超过16384个字符
        # @type StartScript: String

        attr_accessor :NotebookLifecycleScriptsName, :CreateScript, :StartScript
        
        def initialize(notebooklifecyclescriptsname=nil, createscript=nil, startscript=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
          @CreateScript = createscript
          @StartScript = startscript
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
          @CreateScript = params['CreateScript']
          @StartScript = params['StartScript']
        end
      end

      # CreateNotebookLifecycleScript返回参数结构体
      class CreateNotebookLifecycleScriptResponse < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: 生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookLifecycleScriptsName, :RequestId
        
        def initialize(notebooklifecyclescriptsname=nil, requestid=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
          @RequestId = requestid
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
          @RequestId = params['RequestId']
        end
      end

      # CreatePresignedNotebookInstanceUrl请求参数结构体
      class CreatePresignedNotebookInstanceUrlRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        # @type NotebookInstanceName: String
        # @param SessionExpirationDurationInSeconds: session有效时间，秒，取值范围[1800, 43200]
        # @type SessionExpirationDurationInSeconds: Integer

        attr_accessor :NotebookInstanceName, :SessionExpirationDurationInSeconds
        
        def initialize(notebookinstancename=nil, sessionexpirationdurationinseconds=nil)
          @NotebookInstanceName = notebookinstancename
          @SessionExpirationDurationInSeconds = sessionexpirationdurationinseconds
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
          @SessionExpirationDurationInSeconds = params['SessionExpirationDurationInSeconds']
        end
      end

      # CreatePresignedNotebookInstanceUrl返回参数结构体
      class CreatePresignedNotebookInstanceUrlResponse < TencentCloud::Common::AbstractModel
        # @param AuthorizedUrl: 授权url
        # @type AuthorizedUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthorizedUrl, :RequestId
        
        def initialize(authorizedurl=nil, requestid=nil)
          @AuthorizedUrl = authorizedurl
          @RequestId = requestid
        end

        def deserialize(params)
          @AuthorizedUrl = params['AuthorizedUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateTrainingJob请求参数结构体
      class CreateTrainingJobRequest < TencentCloud::Common::AbstractModel
        # @param AlgorithmSpecification: 算法镜像配置
        # @type AlgorithmSpecification: :class:`Tencentcloud::Tione.v20191022.models.AlgorithmSpecification`
        # @param OutputDataConfig: 输出数据配置
        # @type OutputDataConfig: :class:`Tencentcloud::Tione.v20191022.models.OutputDataConfig`
        # @param ResourceConfig: 资源实例配置
        # @type ResourceConfig: :class:`Tencentcloud::Tione.v20191022.models.ResourceConfig`
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String
        # @param InputDataConfig: 输入数据配置
        # @type InputDataConfig: Array
        # @param StoppingCondition: 中止条件
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`
        # @param VpcConfig: 私有网络配置
        # @type VpcConfig: :class:`Tencentcloud::Tione.v20191022.models.VpcConfig`
        # @param HyperParameters: 算法超级参数
        # @type HyperParameters: String
        # @param EnvConfig: 环境变量配置
        # @type EnvConfig: Array
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param RetryWhenResourceInsufficient: 在资源不足（ResourceInsufficient）时后台不定时尝试重新创建训练任务。可取值Enabled/Disabled
        # 默认值为Disabled即不重新尝试。设为Enabled时重新尝试有一定的时间期限，定义在 StoppingCondition 中 MaxWaitTimeInSecond中 ，默认值为1天，超过该期限创建失败。
        # @type RetryWhenResourceInsufficient: String

        attr_accessor :AlgorithmSpecification, :OutputDataConfig, :ResourceConfig, :TrainingJobName, :InputDataConfig, :StoppingCondition, :VpcConfig, :HyperParameters, :EnvConfig, :RoleName, :RetryWhenResourceInsufficient
        
        def initialize(algorithmspecification=nil, outputdataconfig=nil, resourceconfig=nil, trainingjobname=nil, inputdataconfig=nil, stoppingcondition=nil, vpcconfig=nil, hyperparameters=nil, envconfig=nil, rolename=nil, retrywhenresourceinsufficient=nil)
          @AlgorithmSpecification = algorithmspecification
          @OutputDataConfig = outputdataconfig
          @ResourceConfig = resourceconfig
          @TrainingJobName = trainingjobname
          @InputDataConfig = inputdataconfig
          @StoppingCondition = stoppingcondition
          @VpcConfig = vpcconfig
          @HyperParameters = hyperparameters
          @EnvConfig = envconfig
          @RoleName = rolename
          @RetryWhenResourceInsufficient = retrywhenresourceinsufficient
        end

        def deserialize(params)
          unless params['AlgorithmSpecification'].nil?
            @AlgorithmSpecification = AlgorithmSpecification.new.deserialize(params['AlgorithmSpecification'])
          end
          unless params['OutputDataConfig'].nil?
            @OutputDataConfig = OutputDataConfig.new.deserialize(params['OutputDataConfig'])
          end
          unless params['ResourceConfig'].nil?
            @ResourceConfig = ResourceConfig.new.deserialize(params['ResourceConfig'])
          end
          @TrainingJobName = params['TrainingJobName']
          unless params['InputDataConfig'].nil?
            @InputDataConfig = []
            params['InputDataConfig'].each do |i|
              @InputDataConfig << InputDataConfig.new.deserialize(i)
            end
          end
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new.deserialize(params['VpcConfig'])
          end
          @HyperParameters = params['HyperParameters']
          unless params['EnvConfig'].nil?
            @EnvConfig = []
            params['EnvConfig'].each do |i|
              @EnvConfig << EnvConfig.new.deserialize(i)
            end
          end
          @RoleName = params['RoleName']
          @RetryWhenResourceInsufficient = params['RetryWhenResourceInsufficient']
        end
      end

      # CreateTrainingJob返回参数结构体
      class CreateTrainingJobResponse < TencentCloud::Common::AbstractModel
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingJobName, :RequestId
        
        def initialize(trainingjobname=nil, requestid=nil)
          @TrainingJobName = trainingjobname
          @RequestId = requestid
        end

        def deserialize(params)
          @TrainingJobName = params['TrainingJobName']
          @RequestId = params['RequestId']
        end
      end

      # 数据源
      class DataSource < TencentCloud::Common::AbstractModel
        # @param CosDataSource: cos数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosDataSource: :class:`Tencentcloud::Tione.v20191022.models.CosDataSource`
        # @param FileSystemDataSource: 文件系统输入源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystemDataSource: :class:`Tencentcloud::Tione.v20191022.models.FileSystemDataSource`

        attr_accessor :CosDataSource, :FileSystemDataSource
        
        def initialize(cosdatasource=nil, filesystemdatasource=nil)
          @CosDataSource = cosdatasource
          @FileSystemDataSource = filesystemdatasource
        end

        def deserialize(params)
          unless params['CosDataSource'].nil?
            @CosDataSource = CosDataSource.new.deserialize(params['CosDataSource'])
          end
          unless params['FileSystemDataSource'].nil?
            @FileSystemDataSource = FileSystemDataSource.new.deserialize(params['FileSystemDataSource'])
          end
        end
      end

      # DeleteCodeRepository请求参数结构体
      class DeleteCodeRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String

        attr_accessor :CodeRepositoryName
        
        def initialize(coderepositoryname=nil)
          @CodeRepositoryName = coderepositoryname
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
        end
      end

      # DeleteCodeRepository返回参数结构体
      class DeleteCodeRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeRepositoryName, :RequestId
        
        def initialize(coderepositoryname=nil, requestid=nil)
          @CodeRepositoryName = coderepositoryname
          @RequestId = requestid
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
          @RequestId = params['RequestId']
        end
      end

      # DeleteNotebookInstance请求参数结构体
      class DeleteNotebookInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # @type NotebookInstanceName: String

        attr_accessor :NotebookInstanceName
        
        def initialize(notebookinstancename=nil)
          @NotebookInstanceName = notebookinstancename
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
        end
      end

      # DeleteNotebookInstance返回参数结构体
      class DeleteNotebookInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNotebookLifecycleScript请求参数结构体
      class DeleteNotebookLifecycleScriptRequest < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: 生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String
        # @param Forcible: 是否忽略已关联的 notebook 实例强行删除生命周期脚本，默认 false
        # @type Forcible: Boolean

        attr_accessor :NotebookLifecycleScriptsName, :Forcible
        
        def initialize(notebooklifecyclescriptsname=nil, forcible=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
          @Forcible = forcible
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
          @Forcible = params['Forcible']
        end
      end

      # DeleteNotebookLifecycleScript返回参数结构体
      class DeleteNotebookLifecycleScriptResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCodeRepositories请求参数结构体
      class DescribeCodeRepositoriesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        # search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        # @type Filters: Array
        # @param SortOrder: 排序规则。默认取Descending
        # Descending 按更新时间降序
        # Ascending 按更新时间升序
        # @type SortOrder: String

        attr_accessor :Offset, :Limit, :Filters, :SortOrder
        
        def initialize(offset=nil, limit=nil, filters=nil, sortorder=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortOrder = sortorder
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeCodeRepositories返回参数结构体
      class DescribeCodeRepositoriesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 存储库总数目
        # @type TotalCount: Integer
        # @param CodeRepoSet: 存储库列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeRepoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CodeRepoSet, :RequestId
        
        def initialize(totalcount=nil, codereposet=nil, requestid=nil)
          @TotalCount = totalcount
          @CodeRepoSet = codereposet
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CodeRepoSet'].nil?
            @CodeRepoSet = []
            params['CodeRepoSet'].each do |i|
              @CodeRepoSet << CodeRepoSummary.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodeRepository请求参数结构体
      class DescribeCodeRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String

        attr_accessor :CodeRepositoryName
        
        def initialize(coderepositoryname=nil)
          @CodeRepositoryName = coderepositoryname
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
        end
      end

      # DescribeCodeRepository返回参数结构体
      class DescribeCodeRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param LastModifiedTime: 更新时间
        # @type LastModifiedTime: String
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String
        # @param GitConfig: Git存储配置
        # @type GitConfig: :class:`Tencentcloud::Tione.v20191022.models.GitConfig`
        # @param NoSecret: 是否有Git凭证
        # @type NoSecret: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreationTime, :LastModifiedTime, :CodeRepositoryName, :GitConfig, :NoSecret, :RequestId
        
        def initialize(creationtime=nil, lastmodifiedtime=nil, coderepositoryname=nil, gitconfig=nil, nosecret=nil, requestid=nil)
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
          @CodeRepositoryName = coderepositoryname
          @GitConfig = gitconfig
          @NoSecret = nosecret
          @RequestId = requestid
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
          @CodeRepositoryName = params['CodeRepositoryName']
          unless params['GitConfig'].nil?
            @GitConfig = GitConfig.new.deserialize(params['GitConfig'])
          end
          @NoSecret = params['NoSecret']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookInstance请求参数结构体
      class DescribeNotebookInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        # @type NotebookInstanceName: String

        attr_accessor :NotebookInstanceName
        
        def initialize(notebookinstancename=nil)
          @NotebookInstanceName = notebookinstancename
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
        end
      end

      # DescribeNotebookInstance返回参数结构体
      class DescribeNotebookInstanceResponse < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # @type NotebookInstanceName: String
        # @param InstanceType: Notebook算力资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param RoleArn: 角色的资源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleArn: String
        # @param DirectInternetAccess: 外网访问权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DirectInternetAccess: String
        # @param RootAccess: Root用户权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootAccess: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param VolumeSizeInGB: 数据卷大小(GB)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSizeInGB: Integer
        # @param FailureReason: 创建失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param CreationTime: Notebook实例创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param LastModifiedTime: Notebook实例最近修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedTime: String
        # @param LogUrl: Notebook实例日志链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogUrl: String
        # @param NotebookInstanceStatus: Notebook实例状态

        # Pending: 创建中
        # Inservice: 运行中
        # Stopping: 停止中
        # Stopped: 已停止
        # Failed: 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookInstanceStatus: String
        # @param InstanceId: Notebook实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param LifecycleScriptsName: notebook生命周期脚本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifecycleScriptsName: String
        # @param DefaultCodeRepository: 默认存储库名称
        # 可以是已创建的存储库名称或者已https://开头的公共git库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCodeRepository: String
        # @param AdditionalCodeRepositories: 其他存储库列表
        # 每个元素可以是已创建的存储库名称或者已https://开头的公共git库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdditionalCodeRepositories: Array
        # @param ClsAccess: 是否开启CLS日志服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsAccess: String
        # @param Prepay: 是否预付费实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prepay: Boolean
        # @param Deadline: 实例运行截止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deadline: String
        # @param StoppingCondition: 自动停止配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`
        # @param ClsConfig: Cls配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsConfig: :class:`Tencentcloud::Tione.v20191022.models.ClsConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookInstanceName, :InstanceType, :RoleArn, :DirectInternetAccess, :RootAccess, :SubnetId, :VolumeSizeInGB, :FailureReason, :CreationTime, :LastModifiedTime, :LogUrl, :NotebookInstanceStatus, :InstanceId, :LifecycleScriptsName, :DefaultCodeRepository, :AdditionalCodeRepositories, :ClsAccess, :Prepay, :Deadline, :StoppingCondition, :ClsConfig, :RequestId
        
        def initialize(notebookinstancename=nil, instancetype=nil, rolearn=nil, directinternetaccess=nil, rootaccess=nil, subnetid=nil, volumesizeingb=nil, failurereason=nil, creationtime=nil, lastmodifiedtime=nil, logurl=nil, notebookinstancestatus=nil, instanceid=nil, lifecyclescriptsname=nil, defaultcoderepository=nil, additionalcoderepositories=nil, clsaccess=nil, prepay=nil, deadline=nil, stoppingcondition=nil, clsconfig=nil, requestid=nil)
          @NotebookInstanceName = notebookinstancename
          @InstanceType = instancetype
          @RoleArn = rolearn
          @DirectInternetAccess = directinternetaccess
          @RootAccess = rootaccess
          @SubnetId = subnetid
          @VolumeSizeInGB = volumesizeingb
          @FailureReason = failurereason
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
          @LogUrl = logurl
          @NotebookInstanceStatus = notebookinstancestatus
          @InstanceId = instanceid
          @LifecycleScriptsName = lifecyclescriptsname
          @DefaultCodeRepository = defaultcoderepository
          @AdditionalCodeRepositories = additionalcoderepositories
          @ClsAccess = clsaccess
          @Prepay = prepay
          @Deadline = deadline
          @StoppingCondition = stoppingcondition
          @ClsConfig = clsconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
          @InstanceType = params['InstanceType']
          @RoleArn = params['RoleArn']
          @DirectInternetAccess = params['DirectInternetAccess']
          @RootAccess = params['RootAccess']
          @SubnetId = params['SubnetId']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          @FailureReason = params['FailureReason']
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
          @LogUrl = params['LogUrl']
          @NotebookInstanceStatus = params['NotebookInstanceStatus']
          @InstanceId = params['InstanceId']
          @LifecycleScriptsName = params['LifecycleScriptsName']
          @DefaultCodeRepository = params['DefaultCodeRepository']
          @AdditionalCodeRepositories = params['AdditionalCodeRepositories']
          @ClsAccess = params['ClsAccess']
          @Prepay = params['Prepay']
          @Deadline = params['Deadline']
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
          unless params['ClsConfig'].nil?
            @ClsConfig = ClsConfig.new.deserialize(params['ClsConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookInstances请求参数结构体
      class DescribeNotebookInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param SortOrder: 排序规则。默认取Descending
        # Descending 按更新时间降序
        # Ascending 按更新时间升序
        # @type SortOrder: String
        # @param Filters: 过滤条件。
        # instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        # search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        # lifecycle-name - String - 是否必填：否 -（过滤条件）按照生命周期脚本名称过滤。
        # default-code-repo-name - String - 是否必填：否 -（过滤条件）按照默认存储库名称过滤。
        # additional-code-repo-name - String - 是否必填：否 -（过滤条件）按照其他存储库名称过滤。
        # billing-status - String - 是否必填：否 - （过滤条件）按照计费状态过滤，可取以下值
        #    StorageOnly：仅存储计费的实例
        #    Computing：计算和存储都计费的实例
        # @type Filters: Array
        # @param SortBy: 【废弃字段】排序字段
        # @type SortBy: String

        attr_accessor :Offset, :Limit, :SortOrder, :Filters, :SortBy
        
        def initialize(offset=nil, limit=nil, sortorder=nil, filters=nil, sortby=nil)
          @Offset = offset
          @Limit = limit
          @SortOrder = sortorder
          @Filters = filters
          @SortBy = sortby
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortOrder = params['SortOrder']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @SortBy = params['SortBy']
        end
      end

      # DescribeNotebookInstances返回参数结构体
      class DescribeNotebookInstancesResponse < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceSet: Notebook实例列表
        # @type NotebookInstanceSet: Array
        # @param TotalCount: Notebook实例总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookInstanceSet, :TotalCount, :RequestId
        
        def initialize(notebookinstanceset=nil, totalcount=nil, requestid=nil)
          @NotebookInstanceSet = notebookinstanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookInstanceSet'].nil?
            @NotebookInstanceSet = []
            params['NotebookInstanceSet'].each do |i|
              @NotebookInstanceSet << NotebookInstanceSummary.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookLifecycleScript请求参数结构体
      class DescribeNotebookLifecycleScriptRequest < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: 生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String

        attr_accessor :NotebookLifecycleScriptsName
        
        def initialize(notebooklifecyclescriptsname=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
        end
      end

      # DescribeNotebookLifecycleScript返回参数结构体
      class DescribeNotebookLifecycleScriptResponse < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: 生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String
        # @param CreateScript: 创建脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateScript: String
        # @param StartScript: 启动脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartScript: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param LastModifiedTime: 最后修改时间
        # @type LastModifiedTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookLifecycleScriptsName, :CreateScript, :StartScript, :CreationTime, :LastModifiedTime, :RequestId
        
        def initialize(notebooklifecyclescriptsname=nil, createscript=nil, startscript=nil, creationtime=nil, lastmodifiedtime=nil, requestid=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
          @CreateScript = createscript
          @StartScript = startscript
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
          @RequestId = requestid
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
          @CreateScript = params['CreateScript']
          @StartScript = params['StartScript']
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookLifecycleScripts请求参数结构体
      class DescribeNotebookLifecycleScriptsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        # search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        # @type Filters: Array
        # @param SortOrder: 排序规则。默认取Descending
        # Descending 按更新时间降序
        # Ascending 按更新时间升序
        # @type SortOrder: String

        attr_accessor :Offset, :Limit, :Filters, :SortOrder
        
        def initialize(offset=nil, limit=nil, filters=nil, sortorder=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortOrder = sortorder
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeNotebookLifecycleScripts返回参数结构体
      class DescribeNotebookLifecycleScriptsResponse < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsSet: Notebook生命周期脚本列表
        # @type NotebookLifecycleScriptsSet: Array
        # @param TotalCount: Notebook生命周期脚本总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookLifecycleScriptsSet, :TotalCount, :RequestId
        
        def initialize(notebooklifecyclescriptsset=nil, totalcount=nil, requestid=nil)
          @NotebookLifecycleScriptsSet = notebooklifecyclescriptsset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookLifecycleScriptsSet'].nil?
            @NotebookLifecycleScriptsSet = []
            params['NotebookLifecycleScriptsSet'].each do |i|
              @NotebookLifecycleScriptsSet << NotebookLifecycleScriptsSummary.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSummary请求参数结构体
      class DescribeNotebookSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeNotebookSummary返回参数结构体
      class DescribeNotebookSummaryResponse < TencentCloud::Common::AbstractModel
        # @param AllInstanceCnt: 实例总数
        # @type AllInstanceCnt: Integer
        # @param BillingInstanceCnt: 计费实例总数
        # @type BillingInstanceCnt: Integer
        # @param StorageOnlyBillingInstanceCnt: 仅存储计费的实例总数
        # @type StorageOnlyBillingInstanceCnt: Integer
        # @param ComputingBillingInstanceCnt: 计算和存储都计费的实例总数
        # @type ComputingBillingInstanceCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllInstanceCnt, :BillingInstanceCnt, :StorageOnlyBillingInstanceCnt, :ComputingBillingInstanceCnt, :RequestId
        
        def initialize(allinstancecnt=nil, billinginstancecnt=nil, storageonlybillinginstancecnt=nil, computingbillinginstancecnt=nil, requestid=nil)
          @AllInstanceCnt = allinstancecnt
          @BillingInstanceCnt = billinginstancecnt
          @StorageOnlyBillingInstanceCnt = storageonlybillinginstancecnt
          @ComputingBillingInstanceCnt = computingbillinginstancecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @AllInstanceCnt = params['AllInstanceCnt']
          @BillingInstanceCnt = params['BillingInstanceCnt']
          @StorageOnlyBillingInstanceCnt = params['StorageOnlyBillingInstanceCnt']
          @ComputingBillingInstanceCnt = params['ComputingBillingInstanceCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingJob请求参数结构体
      class DescribeTrainingJobRequest < TencentCloud::Common::AbstractModel
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String

        attr_accessor :TrainingJobName
        
        def initialize(trainingjobname=nil)
          @TrainingJobName = trainingjobname
        end

        def deserialize(params)
          @TrainingJobName = params['TrainingJobName']
        end
      end

      # DescribeTrainingJob返回参数结构体
      class DescribeTrainingJobResponse < TencentCloud::Common::AbstractModel
        # @param AlgorithmSpecification: 算法镜像配置
        # @type AlgorithmSpecification: :class:`Tencentcloud::Tione.v20191022.models.AlgorithmSpecification`
        # @param TrainingJobName: 任务名称
        # @type TrainingJobName: String
        # @param HyperParameters: 算法超级参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HyperParameters: String
        # @param InputDataConfig: 输入数据配置
        # @type InputDataConfig: Array
        # @param OutputDataConfig: 输出数据配置
        # @type OutputDataConfig: :class:`Tencentcloud::Tione.v20191022.models.OutputDataConfig`
        # @param StoppingCondition: 中止条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`
        # @param ResourceConfig: 计算实例配置
        # @type ResourceConfig: :class:`Tencentcloud::Tione.v20191022.models.ResourceConfig`
        # @param VpcConfig: 私有网络配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcConfig: :class:`Tencentcloud::Tione.v20191022.models.VpcConfig`
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param LastModifiedTime: 最近修改时间
        # @type LastModifiedTime: String
        # @param TrainingStartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingStartTime: String
        # @param TrainingEndTime: 任务完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingEndTime: String
        # @param ModelArtifacts: 模型输出配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelArtifacts: :class:`Tencentcloud::Tione.v20191022.models.ModelArtifacts`
        # @param SecondaryStatus: 详细状态，取值范围
        # Starting：启动中
        # Downloading: 准备训练数据
        # Training: 正在训练
        # Uploading: 上传训练结果
        # Completed：已完成
        # Failed: 失败
        # MaxRuntimeExceeded: 任务超过最大运行时间
        # Stopping: 停止中
        # Stopped：已停止
        # @type SecondaryStatus: String
        # @param SecondaryStatusTransitions: 详细状态事件记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondaryStatusTransitions: Array
        # @param RoleName: 角色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param TrainingJobStatus: 训练任务状态，取值范围
        # InProgress：运行中
        # Completed: 已完成
        # Failed: 失败
        # Stopping: 停止中
        # Stopped：已停止
        # @type TrainingJobStatus: String
        # @param LogUrl: 训练任务日志链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogUrl: String
        # @param InstanceId: 训练任务实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlgorithmSpecification, :TrainingJobName, :HyperParameters, :InputDataConfig, :OutputDataConfig, :StoppingCondition, :ResourceConfig, :VpcConfig, :FailureReason, :LastModifiedTime, :TrainingStartTime, :TrainingEndTime, :ModelArtifacts, :SecondaryStatus, :SecondaryStatusTransitions, :RoleName, :TrainingJobStatus, :LogUrl, :InstanceId, :RequestId
        
        def initialize(algorithmspecification=nil, trainingjobname=nil, hyperparameters=nil, inputdataconfig=nil, outputdataconfig=nil, stoppingcondition=nil, resourceconfig=nil, vpcconfig=nil, failurereason=nil, lastmodifiedtime=nil, trainingstarttime=nil, trainingendtime=nil, modelartifacts=nil, secondarystatus=nil, secondarystatustransitions=nil, rolename=nil, trainingjobstatus=nil, logurl=nil, instanceid=nil, requestid=nil)
          @AlgorithmSpecification = algorithmspecification
          @TrainingJobName = trainingjobname
          @HyperParameters = hyperparameters
          @InputDataConfig = inputdataconfig
          @OutputDataConfig = outputdataconfig
          @StoppingCondition = stoppingcondition
          @ResourceConfig = resourceconfig
          @VpcConfig = vpcconfig
          @FailureReason = failurereason
          @LastModifiedTime = lastmodifiedtime
          @TrainingStartTime = trainingstarttime
          @TrainingEndTime = trainingendtime
          @ModelArtifacts = modelartifacts
          @SecondaryStatus = secondarystatus
          @SecondaryStatusTransitions = secondarystatustransitions
          @RoleName = rolename
          @TrainingJobStatus = trainingjobstatus
          @LogUrl = logurl
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlgorithmSpecification'].nil?
            @AlgorithmSpecification = AlgorithmSpecification.new.deserialize(params['AlgorithmSpecification'])
          end
          @TrainingJobName = params['TrainingJobName']
          @HyperParameters = params['HyperParameters']
          unless params['InputDataConfig'].nil?
            @InputDataConfig = []
            params['InputDataConfig'].each do |i|
              @InputDataConfig << InputDataConfig.new.deserialize(i)
            end
          end
          unless params['OutputDataConfig'].nil?
            @OutputDataConfig = OutputDataConfig.new.deserialize(params['OutputDataConfig'])
          end
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
          unless params['ResourceConfig'].nil?
            @ResourceConfig = ResourceConfig.new.deserialize(params['ResourceConfig'])
          end
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new.deserialize(params['VpcConfig'])
          end
          @FailureReason = params['FailureReason']
          @LastModifiedTime = params['LastModifiedTime']
          @TrainingStartTime = params['TrainingStartTime']
          @TrainingEndTime = params['TrainingEndTime']
          unless params['ModelArtifacts'].nil?
            @ModelArtifacts = ModelArtifacts.new.deserialize(params['ModelArtifacts'])
          end
          @SecondaryStatus = params['SecondaryStatus']
          unless params['SecondaryStatusTransitions'].nil?
            @SecondaryStatusTransitions = []
            params['SecondaryStatusTransitions'].each do |i|
              @SecondaryStatusTransitions << SecondaryStatusTransition.new.deserialize(i)
            end
          end
          @RoleName = params['RoleName']
          @TrainingJobStatus = params['TrainingJobStatus']
          @LogUrl = params['LogUrl']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingJobs请求参数结构体
      class DescribeTrainingJobsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param CreationTimeAfter: 创建时间晚于
        # @type CreationTimeAfter: String
        # @param CreationTimeBefore: 创建时间早于
        # @type CreationTimeBefore: String
        # @param NameContains: 根据名称过滤
        # @type NameContains: String
        # @param StatusEquals: 根据状态过滤
        # @type StatusEquals: String
        # @param Filters: 过滤条件。
        # instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        # search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :CreationTimeAfter, :CreationTimeBefore, :NameContains, :StatusEquals, :Filters
        
        def initialize(offset=nil, limit=nil, creationtimeafter=nil, creationtimebefore=nil, namecontains=nil, statusequals=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @CreationTimeAfter = creationtimeafter
          @CreationTimeBefore = creationtimebefore
          @NameContains = namecontains
          @StatusEquals = statusequals
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreationTimeAfter = params['CreationTimeAfter']
          @CreationTimeBefore = params['CreationTimeBefore']
          @NameContains = params['NameContains']
          @StatusEquals = params['StatusEquals']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeTrainingJobs返回参数结构体
      class DescribeTrainingJobsResponse < TencentCloud::Common::AbstractModel
        # @param TrainingJobSet: 训练任务列表
        # @type TrainingJobSet: Array
        # @param TotalCount: 训练任务总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingJobSet, :TotalCount, :RequestId
        
        def initialize(trainingjobset=nil, totalcount=nil, requestid=nil)
          @TrainingJobSet = trainingjobset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingJobSet'].nil?
            @TrainingJobSet = []
            params['TrainingJobSet'].each do |i|
              @TrainingJobSet << TrainingJobSummary.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 环境变量
      class EnvConfig < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Value: 值
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

      # 文件系统输入数据源
      class FileSystemDataSource < TencentCloud::Common::AbstractModel
        # @param DirectoryPath: 文件系统目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DirectoryPath: String
        # @param FileSystemType: 文件系统类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystemType: String
        # @param FileSystemAccessMode: 文件系统访问模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystemAccessMode: String
        # @param FileSystemId: 文件系统ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystemId: String

        attr_accessor :DirectoryPath, :FileSystemType, :FileSystemAccessMode, :FileSystemId
        
        def initialize(directorypath=nil, filesystemtype=nil, filesystemaccessmode=nil, filesystemid=nil)
          @DirectoryPath = directorypath
          @FileSystemType = filesystemtype
          @FileSystemAccessMode = filesystemaccessmode
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @DirectoryPath = params['DirectoryPath']
          @FileSystemType = params['FileSystemType']
          @FileSystemAccessMode = params['FileSystemAccessMode']
          @FileSystemId = params['FileSystemId']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤字段取值
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

      # 存储库Git相关配置
      class GitConfig < TencentCloud::Common::AbstractModel
        # @param RepositoryUrl: git地址
        # @type RepositoryUrl: String
        # @param Branch: 代码分支
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branch: String

        attr_accessor :RepositoryUrl, :Branch
        
        def initialize(repositoryurl=nil, branch=nil)
          @RepositoryUrl = repositoryurl
          @Branch = branch
        end

        def deserialize(params)
          @RepositoryUrl = params['RepositoryUrl']
          @Branch = params['Branch']
        end
      end

      # Git凭证
      class GitSecret < TencentCloud::Common::AbstractModel
        # @param NoSecret: 无秘钥，默认选项
        # @type NoSecret: Boolean
        # @param Secret: Git用户名密码base64编码后的字符串
        # 编码前的内容应为Json字符串，如
        # {"UserName": "用户名", "Password":"密码"}
        # @type Secret: String

        attr_accessor :NoSecret, :Secret
        
        def initialize(nosecret=nil, secret=nil)
          @NoSecret = nosecret
          @Secret = secret
        end

        def deserialize(params)
          @NoSecret = params['NoSecret']
          @Secret = params['Secret']
        end
      end

      # 输入数据配置
      class InputDataConfig < TencentCloud::Common::AbstractModel
        # @param ChannelName: 通道名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelName: String
        # @param DataSource: 数据源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: :class:`Tencentcloud::Tione.v20191022.models.DataSource`
        # @param InputMode: 输入类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputMode: String
        # @param ContentType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentType: String

        attr_accessor :ChannelName, :DataSource, :InputMode, :ContentType
        
        def initialize(channelname=nil, datasource=nil, inputmode=nil, contenttype=nil)
          @ChannelName = channelname
          @DataSource = datasource
          @InputMode = inputmode
          @ContentType = contenttype
        end

        def deserialize(params)
          @ChannelName = params['ChannelName']
          unless params['DataSource'].nil?
            @DataSource = DataSource.new.deserialize(params['DataSource'])
          end
          @InputMode = params['InputMode']
          @ContentType = params['ContentType']
        end
      end

      # 模型输出
      class ModelArtifacts < TencentCloud::Common::AbstractModel
        # @param CosModelArtifacts: cos输出路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosModelArtifacts: String

        attr_accessor :CosModelArtifacts
        
        def initialize(cosmodelartifacts=nil)
          @CosModelArtifacts = cosmodelartifacts
        end

        def deserialize(params)
          @CosModelArtifacts = params['CosModelArtifacts']
        end
      end

      # notebook实例概览
      class NotebookInstanceSummary < TencentCloud::Common::AbstractModel
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param LastModifiedTime: 最近修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedTime: String
        # @param NotebookInstanceName: notebook实例名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookInstanceName: String
        # @param NotebookInstanceStatus: notebook实例状态，取值范围：
        # Pending: 创建中
        # Inservice: 运行中
        # Stopping: 停止中
        # Stopped: 已停止
        # Failed: 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookInstanceStatus: String
        # @param InstanceType: 算力类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param StartupTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupTime: String
        # @param Deadline: 运行截止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deadline: String
        # @param StoppingCondition: 自动停止配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`
        # @param Prepay: 是否是预付费实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prepay: Boolean
        # @param BillingLabel: 计费标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingLabel: :class:`Tencentcloud::Tione.v20191022.models.BillingLabel`
        # @param RuntimeInSeconds: 运行时长，秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param RemainTimeInSeconds: 剩余时长，秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainTimeInSeconds: Integer

        attr_accessor :CreationTime, :LastModifiedTime, :NotebookInstanceName, :NotebookInstanceStatus, :InstanceType, :InstanceId, :StartupTime, :Deadline, :StoppingCondition, :Prepay, :BillingLabel, :RuntimeInSeconds, :RemainTimeInSeconds
        
        def initialize(creationtime=nil, lastmodifiedtime=nil, notebookinstancename=nil, notebookinstancestatus=nil, instancetype=nil, instanceid=nil, startuptime=nil, deadline=nil, stoppingcondition=nil, prepay=nil, billinglabel=nil, runtimeinseconds=nil, remaintimeinseconds=nil)
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
          @NotebookInstanceName = notebookinstancename
          @NotebookInstanceStatus = notebookinstancestatus
          @InstanceType = instancetype
          @InstanceId = instanceid
          @StartupTime = startuptime
          @Deadline = deadline
          @StoppingCondition = stoppingcondition
          @Prepay = prepay
          @BillingLabel = billinglabel
          @RuntimeInSeconds = runtimeinseconds
          @RemainTimeInSeconds = remaintimeinseconds
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
          @NotebookInstanceName = params['NotebookInstanceName']
          @NotebookInstanceStatus = params['NotebookInstanceStatus']
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @StartupTime = params['StartupTime']
          @Deadline = params['Deadline']
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
          @Prepay = params['Prepay']
          unless params['BillingLabel'].nil?
            @BillingLabel = BillingLabel.new.deserialize(params['BillingLabel'])
          end
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @RemainTimeInSeconds = params['RemainTimeInSeconds']
        end
      end

      # notebook生命周期脚本实例概览
      class NotebookLifecycleScriptsSummary < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: notebook生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param LastModifiedTime: 修改时间
        # @type LastModifiedTime: String

        attr_accessor :NotebookLifecycleScriptsName, :CreationTime, :LastModifiedTime
        
        def initialize(notebooklifecyclescriptsname=nil, creationtime=nil, lastmodifiedtime=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
        end
      end

      # 输出数据配置
      class OutputDataConfig < TencentCloud::Common::AbstractModel
        # @param CosOutputBucket: cos输出桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosOutputBucket: String
        # @param CosOutputKeyPrefix: cos输出key前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosOutputKeyPrefix: String
        # @param FileSystemDataSource: 文件系统输出，如果指定了文件系统，那么Cos输出会被忽略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystemDataSource: :class:`Tencentcloud::Tione.v20191022.models.FileSystemDataSource`

        attr_accessor :CosOutputBucket, :CosOutputKeyPrefix, :FileSystemDataSource
        
        def initialize(cosoutputbucket=nil, cosoutputkeyprefix=nil, filesystemdatasource=nil)
          @CosOutputBucket = cosoutputbucket
          @CosOutputKeyPrefix = cosoutputkeyprefix
          @FileSystemDataSource = filesystemdatasource
        end

        def deserialize(params)
          @CosOutputBucket = params['CosOutputBucket']
          @CosOutputKeyPrefix = params['CosOutputKeyPrefix']
          unless params['FileSystemDataSource'].nil?
            @FileSystemDataSource = FileSystemDataSource.new.deserialize(params['FileSystemDataSource'])
          end
        end
      end

      # 计算资源配置
      class ResourceConfig < TencentCloud::Common::AbstractModel
        # @param InstanceCount: 计算实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param InstanceType: 计算实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param VolumeSizeInGB: 挂载CBS大小（GB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSizeInGB: Integer

        attr_accessor :InstanceCount, :InstanceType, :VolumeSizeInGB
        
        def initialize(instancecount=nil, instancetype=nil, volumesizeingb=nil)
          @InstanceCount = instancecount
          @InstanceType = instancetype
          @VolumeSizeInGB = volumesizeingb
        end

        def deserialize(params)
          @InstanceCount = params['InstanceCount']
          @InstanceType = params['InstanceType']
          @VolumeSizeInGB = params['VolumeSizeInGB']
        end
      end

      #  二级状态流水
      class SecondaryStatusTransition < TencentCloud::Common::AbstractModel
        # @param StartTime: 状态开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 状态结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 状态名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StatusMessage: 状态详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMessage: String

        attr_accessor :StartTime, :EndTime, :Status, :StatusMessage
        
        def initialize(starttime=nil, endtime=nil, status=nil, statusmessage=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @StatusMessage = statusmessage
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @StatusMessage = params['StatusMessage']
        end
      end

      # StartNotebookInstance请求参数结构体
      class StartNotebookInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # @type NotebookInstanceName: String
        # @param AutoStopping: 自动停止，可取值Enabled/Disabled
        # 取值为Disabled的时候StoppingCondition将被忽略
        # 取值为Enabled的时候读取StoppingCondition作为自动停止的配置
        # @type AutoStopping: String
        # @param StoppingCondition: 自动停止配置，只在AutoStopping为Enabled的时候生效
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`

        attr_accessor :NotebookInstanceName, :AutoStopping, :StoppingCondition
        
        def initialize(notebookinstancename=nil, autostopping=nil, stoppingcondition=nil)
          @NotebookInstanceName = notebookinstancename
          @AutoStopping = autostopping
          @StoppingCondition = stoppingcondition
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
          @AutoStopping = params['AutoStopping']
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
        end
      end

      # StartNotebookInstance返回参数结构体
      class StartNotebookInstanceResponse < TencentCloud::Common::AbstractModel
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

      # StopNotebookInstance请求参数结构体
      class StopNotebookInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # @type NotebookInstanceName: String

        attr_accessor :NotebookInstanceName
        
        def initialize(notebookinstancename=nil)
          @NotebookInstanceName = notebookinstancename
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
        end
      end

      # StopNotebookInstance返回参数结构体
      class StopNotebookInstanceResponse < TencentCloud::Common::AbstractModel
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

      # StopTrainingJob请求参数结构体
      class StopTrainingJobRequest < TencentCloud::Common::AbstractModel
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String

        attr_accessor :TrainingJobName
        
        def initialize(trainingjobname=nil)
          @TrainingJobName = trainingjobname
        end

        def deserialize(params)
          @TrainingJobName = params['TrainingJobName']
        end
      end

      # StopTrainingJob返回参数结构体
      class StopTrainingJobResponse < TencentCloud::Common::AbstractModel
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

      # 终止条件
      class StoppingCondition < TencentCloud::Common::AbstractModel
        # @param MaxRuntimeInSeconds: 最长运行运行时间（秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRuntimeInSeconds: Integer
        # @param MaxWaitTimeInSeconds: 最长等待运行时间（秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxWaitTimeInSeconds: Integer

        attr_accessor :MaxRuntimeInSeconds, :MaxWaitTimeInSeconds
        
        def initialize(maxruntimeinseconds=nil, maxwaittimeinseconds=nil)
          @MaxRuntimeInSeconds = maxruntimeinseconds
          @MaxWaitTimeInSeconds = maxwaittimeinseconds
        end

        def deserialize(params)
          @MaxRuntimeInSeconds = params['MaxRuntimeInSeconds']
          @MaxWaitTimeInSeconds = params['MaxWaitTimeInSeconds']
        end
      end

      # 训练任务概要
      class TrainingJobSummary < TencentCloud::Common::AbstractModel
        # @param CreationTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param LastModifiedTime: 最近修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedTime: String
        # @param TrainingJobName: 训练任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingJobName: String
        # @param TrainingJobStatus: 训练任务状态，取值范围
        # InProgress：运行中
        # Completed: 已完成
        # Failed: 失败
        # Stopping: 停止中
        # Stopped：已停止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingJobStatus: String
        # @param TrainingEndTime: 完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingEndTime: String
        # @param InstanceId: 算了实例Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ResourceConfig: 资源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceConfig: :class:`Tencentcloud::Tione.v20191022.models.ResourceConfig`

        attr_accessor :CreationTime, :LastModifiedTime, :TrainingJobName, :TrainingJobStatus, :TrainingEndTime, :InstanceId, :ResourceConfig
        
        def initialize(creationtime=nil, lastmodifiedtime=nil, trainingjobname=nil, trainingjobstatus=nil, trainingendtime=nil, instanceid=nil, resourceconfig=nil)
          @CreationTime = creationtime
          @LastModifiedTime = lastmodifiedtime
          @TrainingJobName = trainingjobname
          @TrainingJobStatus = trainingjobstatus
          @TrainingEndTime = trainingendtime
          @InstanceId = instanceid
          @ResourceConfig = resourceconfig
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @LastModifiedTime = params['LastModifiedTime']
          @TrainingJobName = params['TrainingJobName']
          @TrainingJobStatus = params['TrainingJobStatus']
          @TrainingEndTime = params['TrainingEndTime']
          @InstanceId = params['InstanceId']
          unless params['ResourceConfig'].nil?
            @ResourceConfig = ResourceConfig.new.deserialize(params['ResourceConfig'])
          end
        end
      end

      # UpdateCodeRepository请求参数结构体
      class UpdateCodeRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 查询存储库名称
        # @type CodeRepositoryName: String
        # @param GitSecret: Git凭证
        # @type GitSecret: :class:`Tencentcloud::Tione.v20191022.models.GitSecret`

        attr_accessor :CodeRepositoryName, :GitSecret
        
        def initialize(coderepositoryname=nil, gitsecret=nil)
          @CodeRepositoryName = coderepositoryname
          @GitSecret = gitsecret
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
          unless params['GitSecret'].nil?
            @GitSecret = GitSecret.new.deserialize(params['GitSecret'])
          end
        end
      end

      # UpdateCodeRepository返回参数结构体
      class UpdateCodeRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param CodeRepositoryName: 存储库名称
        # @type CodeRepositoryName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeRepositoryName, :RequestId
        
        def initialize(coderepositoryname=nil, requestid=nil)
          @CodeRepositoryName = coderepositoryname
          @RequestId = requestid
        end

        def deserialize(params)
          @CodeRepositoryName = params['CodeRepositoryName']
          @RequestId = params['RequestId']
        end
      end

      # UpdateNotebookInstance请求参数结构体
      class UpdateNotebookInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NotebookInstanceName: Notebook实例名称
        # 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        # @type NotebookInstanceName: String
        # @param RoleArn: 角色的资源描述
        # @type RoleArn: String
        # @param RootAccess: Root访问权限
        # @type RootAccess: String
        # @param VolumeSizeInGB: 数据卷大小(GB)
        # @type VolumeSizeInGB: Integer
        # @param InstanceType: 算力资源类型
        # @type InstanceType: String
        # @param LifecycleScriptsName: notebook生命周期脚本名称
        # @type LifecycleScriptsName: String
        # @param DisassociateLifecycleScript: 是否解绑生命周期脚本，默认 false。
        # 该值为true时，LifecycleScriptsName将被忽略
        # @type DisassociateLifecycleScript: Boolean
        # @param DefaultCodeRepository: 默认存储库名称
        # 可以是已创建的存储库名称或者已https://开头的公共git库
        # @type DefaultCodeRepository: String
        # @param AdditionalCodeRepositories: 其他存储库列表
        # 每个元素可以是已创建的存储库名称或者已https://开头的公共git库
        # @type AdditionalCodeRepositories: Array
        # @param DisassociateDefaultCodeRepository: 是否取消关联默认存储库，默认false
        # 该值为true时，DefaultCodeRepository将被忽略
        # @type DisassociateDefaultCodeRepository: Boolean
        # @param DisassociateAdditionalCodeRepositories: 是否取消关联其他存储库，默认false
        # 该值为true时，AdditionalCodeRepositories将被忽略
        # @type DisassociateAdditionalCodeRepositories: Boolean
        # @param ClsAccess: 已弃用，请使用ClsConfig配置。是否开启CLS日志服务，可取值Enabled/Disabled
        # @type ClsAccess: String
        # @param AutoStopping: 自动停止，可取值Enabled/Disabled
        # 取值为Disabled的时候StoppingCondition将被忽略
        # 取值为Enabled的时候读取StoppingCondition作为自动停止的配置
        # @type AutoStopping: String
        # @param StoppingCondition: 自动停止配置，只在AutoStopping为Enabled的时候生效
        # @type StoppingCondition: :class:`Tencentcloud::Tione.v20191022.models.StoppingCondition`
        # @param ClsConfig: 接入日志的配置，默认使用免费日志服务。
        # @type ClsConfig: :class:`Tencentcloud::Tione.v20191022.models.ClsConfig`

        attr_accessor :NotebookInstanceName, :RoleArn, :RootAccess, :VolumeSizeInGB, :InstanceType, :LifecycleScriptsName, :DisassociateLifecycleScript, :DefaultCodeRepository, :AdditionalCodeRepositories, :DisassociateDefaultCodeRepository, :DisassociateAdditionalCodeRepositories, :ClsAccess, :AutoStopping, :StoppingCondition, :ClsConfig
        
        def initialize(notebookinstancename=nil, rolearn=nil, rootaccess=nil, volumesizeingb=nil, instancetype=nil, lifecyclescriptsname=nil, disassociatelifecyclescript=nil, defaultcoderepository=nil, additionalcoderepositories=nil, disassociatedefaultcoderepository=nil, disassociateadditionalcoderepositories=nil, clsaccess=nil, autostopping=nil, stoppingcondition=nil, clsconfig=nil)
          @NotebookInstanceName = notebookinstancename
          @RoleArn = rolearn
          @RootAccess = rootaccess
          @VolumeSizeInGB = volumesizeingb
          @InstanceType = instancetype
          @LifecycleScriptsName = lifecyclescriptsname
          @DisassociateLifecycleScript = disassociatelifecyclescript
          @DefaultCodeRepository = defaultcoderepository
          @AdditionalCodeRepositories = additionalcoderepositories
          @DisassociateDefaultCodeRepository = disassociatedefaultcoderepository
          @DisassociateAdditionalCodeRepositories = disassociateadditionalcoderepositories
          @ClsAccess = clsaccess
          @AutoStopping = autostopping
          @StoppingCondition = stoppingcondition
          @ClsConfig = clsconfig
        end

        def deserialize(params)
          @NotebookInstanceName = params['NotebookInstanceName']
          @RoleArn = params['RoleArn']
          @RootAccess = params['RootAccess']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          @InstanceType = params['InstanceType']
          @LifecycleScriptsName = params['LifecycleScriptsName']
          @DisassociateLifecycleScript = params['DisassociateLifecycleScript']
          @DefaultCodeRepository = params['DefaultCodeRepository']
          @AdditionalCodeRepositories = params['AdditionalCodeRepositories']
          @DisassociateDefaultCodeRepository = params['DisassociateDefaultCodeRepository']
          @DisassociateAdditionalCodeRepositories = params['DisassociateAdditionalCodeRepositories']
          @ClsAccess = params['ClsAccess']
          @AutoStopping = params['AutoStopping']
          unless params['StoppingCondition'].nil?
            @StoppingCondition = StoppingCondition.new.deserialize(params['StoppingCondition'])
          end
          unless params['ClsConfig'].nil?
            @ClsConfig = ClsConfig.new.deserialize(params['ClsConfig'])
          end
        end
      end

      # UpdateNotebookInstance返回参数结构体
      class UpdateNotebookInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpdateNotebookLifecycleScript请求参数结构体
      class UpdateNotebookLifecycleScriptRequest < TencentCloud::Common::AbstractModel
        # @param NotebookLifecycleScriptsName: notebook生命周期脚本名称
        # @type NotebookLifecycleScriptsName: String
        # @param CreateScript: 创建脚本，base64编码
        # base64后的脚本长度不能超过16384个字符
        # @type CreateScript: String
        # @param StartScript: 启动脚本，base64编码
        # base64后的脚本长度不能超过16384个字符
        # @type StartScript: String

        attr_accessor :NotebookLifecycleScriptsName, :CreateScript, :StartScript
        
        def initialize(notebooklifecyclescriptsname=nil, createscript=nil, startscript=nil)
          @NotebookLifecycleScriptsName = notebooklifecyclescriptsname
          @CreateScript = createscript
          @StartScript = startscript
        end

        def deserialize(params)
          @NotebookLifecycleScriptsName = params['NotebookLifecycleScriptsName']
          @CreateScript = params['CreateScript']
          @StartScript = params['StartScript']
        end
      end

      # UpdateNotebookLifecycleScript返回参数结构体
      class UpdateNotebookLifecycleScriptResponse < TencentCloud::Common::AbstractModel
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

      # VPC配置
      class VpcConfig < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :SecurityGroupIds, :SubnetId
        
        def initialize(securitygroupids=nil, subnetid=nil)
          @SecurityGroupIds = securitygroupids
          @SubnetId = subnetid
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

