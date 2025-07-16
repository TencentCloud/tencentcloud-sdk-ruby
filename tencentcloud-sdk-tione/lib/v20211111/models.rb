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
  module Tione
    module V20211111
      # 镜像属性
      class Attribute < TencentCloud::Common::AbstractModel
        # @param Type: 为‘List’时属性值取Values 否则取Value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Key: 属性key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 属性值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Values: 属性值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Type, :Key, :Value, :Values

        def initialize(type=nil, key=nil, value=nil, values=nil)
          @Type = type
          @Key = key
          @Value = value
          @Values = values
        end

        def deserialize(params)
          @Type = params['Type']
          @Key = params['Key']
          @Value = params['Value']
          @Values = params['Values']
        end
      end

      # 在线服务的 AuthToken 数据
      class AuthToken < TencentCloud::Common::AbstractModel
        # @param Base: AuthToken 基础信息
        # @type Base: :class:`Tencentcloud::Tione.v20211111.models.AuthTokenBase`
        # @param Limits: AuthToken 限流数组
        # @type Limits: Array

        attr_accessor :Base, :Limits

        def initialize(base=nil, limits=nil)
          @Base = base
          @Limits = limits
        end

        def deserialize(params)
          unless params['Base'].nil?
            @Base = AuthTokenBase.new
            @Base.deserialize(params['Base'])
          end
          unless params['Limits'].nil?
            @Limits = []
            params['Limits'].each do |i|
              authtokenlimit_tmp = AuthTokenLimit.new
              authtokenlimit_tmp.deserialize(i)
              @Limits << authtokenlimit_tmp
            end
          end
        end
      end

      # AuthToken 的基础信息
      class AuthTokenBase < TencentCloud::Common::AbstractModel
        # @param Value: token 值
        # @type Value: String
        # @param Name: token 别名
        # @type Name: String
        # @param Description: token 描述
        # @type Description: String
        # @param CreateTime: token 创建时间
        # @type CreateTime: String
        # @param Status: token状态
        # @type Status: String

        attr_accessor :Value, :Name, :Description, :CreateTime, :Status

        def initialize(value=nil, name=nil, description=nil, createtime=nil, status=nil)
          @Value = value
          @Name = name
          @Description = description
          @CreateTime = createtime
          @Status = status
        end

        def deserialize(params)
          @Value = params['Value']
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
        end
      end

      # AuthToken 限流信息
      class AuthTokenLimit < TencentCloud::Common::AbstractModel
        # @param Strategy: 限频策略：PerMinute 每分钟限频；PerDay 每日限频
        # @type Strategy: String
        # @param Max: 上限值
        # @type Max: Integer

        attr_accessor :Strategy, :Max

        def initialize(strategy=nil, max=nil)
          @Strategy = strategy
          @Max = max
        end

        def deserialize(params)
          @Strategy = params['Strategy']
          @Max = params['Max']
        end
      end

      # CBS存储配置
      class CBSConfig < TencentCloud::Common::AbstractModel
        # @param VolumeSizeInGB: 存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSizeInGB: Integer

        attr_accessor :VolumeSizeInGB

        def initialize(volumesizeingb=nil)
          @VolumeSizeInGB = volumesizeingb
        end

        def deserialize(params)
          @VolumeSizeInGB = params['VolumeSizeInGB']
        end
      end

      # CFS存储的配置
      class CFSConfig < TencentCloud::Common::AbstractModel
        # @param Id: cfs的实例的ID
        # @type Id: String
        # @param Path: 存储的路径
        # @type Path: String
        # @param MountType: cfs的挂载类型，可选值为：STORAGE、SOURCE 分别表示存储拓展模式和数据源模式，默认为 STORAGE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountType: String
        # @param Protocol: 协议 1: NFS, 2: TURBO
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String

        attr_accessor :Id, :Path, :MountType, :Protocol

        def initialize(id=nil, path=nil, mounttype=nil, protocol=nil)
          @Id = id
          @Path = path
          @MountType = mounttype
          @Protocol = protocol
        end

        def deserialize(params)
          @Id = params['Id']
          @Path = params['Path']
          @MountType = params['MountType']
          @Protocol = params['Protocol']
        end
      end

      # 配置CFSTurbo参数
      class CFSTurbo < TencentCloud::Common::AbstractModel
        # @param Id: CFSTurbo实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Path: CFSTurbo路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String

        attr_accessor :Id, :Path

        def initialize(id=nil, path=nil)
          @Id = id
          @Path = path
        end

        def deserialize(params)
          @Id = params['Id']
          @Path = params['Path']
        end
      end

      # ChatCompletion请求参数结构体
      class ChatCompletionRequest < TencentCloud::Common::AbstractModel
        # @param Model: 对话的目标模型ID。
        # 自行部署的开源大模型聊天：部署的模型服务组ID，形如ms-q7pfr29p。
        # @type Model: String
        # @param Messages: 输入对话历史。旧的对话在前，数组中最后一项应该为这次的问题。
        # @type Messages: Array
        # @param Temperature: 仅当模型为自行部署的开源大模型时生效。采样随机值，默认值为0.7，取值范围[0,2]。较高的值(如0.8)将使输出更加随机，而较低的值(如0.2)将使输出更加确定。建议仅修改此参数或TopP，但不建议两者都修改。
        # @type Temperature: Float
        # @param TopP: 仅当模型为自行部署的开源大模型时生效。核采样，默认值为1，取值范围[0,1]。指的是预先设置一个概率界限 p，然后将所有可能生成的token，根据概率大小从高到低排列，依次选取。当这些选取的token的累积概率大于或等于 p 值时停止，然后从已经选取的token中进行采样，生成下一个token。例如top_p为0.1时意味着模型只考虑累积概率为10%的token。建议仅修改此参数或Temperature，不建议两者都修改。
        # @type TopP: Float
        # @param MaxTokens: 仅当模型为自行部署的开源大模型时生效。默认 512，模型可生成内容的最长 token 数量，最大不能超过模型支持的上下文长度。
        # @type MaxTokens: Integer

        attr_accessor :Model, :Messages, :Temperature, :TopP, :MaxTokens

        def initialize(model=nil, messages=nil, temperature=nil, topp=nil, maxtokens=nil)
          @Model = model
          @Messages = messages
          @Temperature = temperature
          @TopP = topp
          @MaxTokens = maxtokens
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
          @Temperature = params['Temperature']
          @TopP = params['TopP']
          @MaxTokens = params['MaxTokens']
        end
      end

      # ChatCompletion返回参数结构体
      class ChatCompletionResponse < TencentCloud::Common::AbstractModel
        # @param Model: 对话的模型服务组ID
        # @type Model: String
        # @param Choices: 本次问答的答案。
        # @type Choices: Array
        # @param Id: 会话Id。
        # @type Id: String
        # @param Usage: token统计
        # @type Usage: :class:`Tencentcloud::Tione.v20211111.models.Usage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :Choices, :Id, :Usage, :RequestId

        def initialize(model=nil, choices=nil, id=nil, usage=nil, requestid=nil)
          @Model = model
          @Choices = choices
          @Id = id
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          @Id = params['Id']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 对话结果
      class Choice < TencentCloud::Common::AbstractModel
        # @param Message: 对话结果
        # @type Message: :class:`Tencentcloud::Tione.v20211111.models.Message`
        # @param FinishReason: 结束理由: stop, length, content_filter, null
        # @type FinishReason: String
        # @param Index: 序号
        # @type Index: Integer

        attr_accessor :Message, :FinishReason, :Index

        def initialize(message=nil, finishreason=nil, index=nil)
          @Message = message
          @FinishReason = finishreason
          @Index = index
        end

        def deserialize(params)
          unless params['Message'].nil?
            @Message = Message.new
            @Message.deserialize(params['Message'])
          end
          @FinishReason = params['FinishReason']
          @Index = params['Index']
        end
      end

      # 代码仓库配置
      class CodeRepoConfig < TencentCloud::Common::AbstractModel
        # @param Id: 代码仓库Id
        # @type Id: String
        # @param TargetPath: 代码仓下载目标地址
        # @type TargetPath: String

        attr_accessor :Id, :TargetPath

        def initialize(id=nil, targetpath=nil)
          @Id = id
          @TargetPath = targetpath
        end

        def deserialize(params)
          @Id = params['Id']
          @TargetPath = params['TargetPath']
        end
      end

      # 容器信息
      class Container < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ContainerId: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerId: String
        # @param Image: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param Status: 容器状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: :class:`Tencentcloud::Tione.v20211111.models.ContainerStatus`

        attr_accessor :Name, :ContainerId, :Image, :Status

        def initialize(name=nil, containerid=nil, image=nil, status=nil)
          @Name = name
          @ContainerId = containerid
          @Image = image
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @ContainerId = params['ContainerId']
          @Image = params['Image']
          unless params['Status'].nil?
            @Status = ContainerStatus.new
            @Status.deserialize(params['Status'])
          end
        end
      end

      # 容器状态
      class ContainerStatus < TencentCloud::Common::AbstractModel
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param Ready: 是否就绪
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ready: Boolean
        # @param Reason: 状态原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Message: 容器的错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :RestartCount, :State, :Ready, :Reason, :Message

        def initialize(restartcount=nil, state=nil, ready=nil, reason=nil, message=nil)
          @RestartCount = restartcount
          @State = state
          @Ready = ready
          @Reason = reason
          @Message = message
        end

        def deserialize(params)
          @RestartCount = params['RestartCount']
          @State = params['State']
          @Ready = params['Ready']
          @Reason = params['Reason']
          @Message = params['Message']
        end
      end

      # cos的路径信息
      class CosPathInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: 所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Paths: 路径列表，目前只支持单个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paths: Array

        attr_accessor :Bucket, :Region, :Paths

        def initialize(bucket=nil, region=nil, paths=nil)
          @Bucket = bucket
          @Region = region
          @Paths = paths
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Paths = params['Paths']
        end
      end

      # CreateDataset请求参数结构体
      class CreateDatasetRequest < TencentCloud::Common::AbstractModel
        # @param DatasetName: 数据集名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type DatasetName: String
        # @param DatasetType: 数据集类型:
        # TYPE_DATASET_TEXT，文本
        # TYPE_DATASET_IMAGE，图片
        # TYPE_DATASET_TABLE，表格
        # TYPE_DATASET_OTHER，其他
        # @type DatasetType: String
        # @param StorageDataPath: 数据源cos路径
        # @type StorageDataPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StorageLabelPath: 数据集标签cos存储路径
        # @type StorageLabelPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param DatasetTags: 数据集标签
        # @type DatasetTags: Array
        # @param AnnotationStatus: 数据集标注状态:
        # STATUS_NON_ANNOTATED，未标注
        # STATUS_ANNOTATED，已标注
        # @type AnnotationStatus: String
        # @param AnnotationType: 标注类型:
        # ANNOTATION_TYPE_CLASSIFICATION，图片分类
        # ANNOTATION_TYPE_DETECTION，目标检测
        # ANNOTATION_TYPE_SEGMENTATION，图片分割
        # ANNOTATION_TYPE_TRACKING，目标跟踪
        # ANNOTATION_TYPE_OCR，OCR
        # ANNOTATION_TYPE_TEXT_CLASSIFICATION，文本分类
        # @type AnnotationType: String
        # @param AnnotationFormat: 标注格式:
        # ANNOTATION_FORMAT_TI，TI平台格式
        # ANNOTATION_FORMAT_PASCAL，Pascal Voc
        # ANNOTATION_FORMAT_COCO，COCO
        # ANNOTATION_FORMAT_FILE，文件目录结构
        # ANNOTATION_FORMAT_TEXT_TI，文本类型TI平台格式
        # ANNOTATION_FORMAT_TXT，文本类型TXT格式
        # ANNOTATION_FORMAT_CSV，文本类型CSV格式
        # ANNOTATION_FORMAT_JSON，文本类型JSON格式
        # @type AnnotationFormat: String
        # @param SchemaInfos: 表头信息
        # @type SchemaInfos: Array
        # @param IsSchemaExisted: 数据是否存在表头
        # @type IsSchemaExisted: Boolean
        # @param ContentType: 导入文件粒度
        # TYPE_TEXT_LINE，按行
        # TYPE_TEXT_FILE，按文件
        # @type ContentType: String
        # @param DatasetScene: 数据集建模一级类别。LLM,CV,STRUCTURE,OTHER
        # @type DatasetScene: String
        # @param SceneTags: 数据集标签。
        # @type SceneTags: Array
        # @param CFSConfig: 数据集CFS配置。仅支持LLM场景
        # @type CFSConfig: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`

        attr_accessor :DatasetName, :DatasetType, :StorageDataPath, :StorageLabelPath, :DatasetTags, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :SchemaInfos, :IsSchemaExisted, :ContentType, :DatasetScene, :SceneTags, :CFSConfig

        def initialize(datasetname=nil, datasettype=nil, storagedatapath=nil, storagelabelpath=nil, datasettags=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, schemainfos=nil, isschemaexisted=nil, contenttype=nil, datasetscene=nil, scenetags=nil, cfsconfig=nil)
          @DatasetName = datasetname
          @DatasetType = datasettype
          @StorageDataPath = storagedatapath
          @StorageLabelPath = storagelabelpath
          @DatasetTags = datasettags
          @AnnotationStatus = annotationstatus
          @AnnotationType = annotationtype
          @AnnotationFormat = annotationformat
          @SchemaInfos = schemainfos
          @IsSchemaExisted = isschemaexisted
          @ContentType = contenttype
          @DatasetScene = datasetscene
          @SceneTags = scenetags
          @CFSConfig = cfsconfig
        end

        def deserialize(params)
          @DatasetName = params['DatasetName']
          @DatasetType = params['DatasetType']
          unless params['StorageDataPath'].nil?
            @StorageDataPath = CosPathInfo.new
            @StorageDataPath.deserialize(params['StorageDataPath'])
          end
          unless params['StorageLabelPath'].nil?
            @StorageLabelPath = CosPathInfo.new
            @StorageLabelPath.deserialize(params['StorageLabelPath'])
          end
          unless params['DatasetTags'].nil?
            @DatasetTags = []
            params['DatasetTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DatasetTags << tag_tmp
            end
          end
          @AnnotationStatus = params['AnnotationStatus']
          @AnnotationType = params['AnnotationType']
          @AnnotationFormat = params['AnnotationFormat']
          unless params['SchemaInfos'].nil?
            @SchemaInfos = []
            params['SchemaInfos'].each do |i|
              schemainfo_tmp = SchemaInfo.new
              schemainfo_tmp.deserialize(i)
              @SchemaInfos << schemainfo_tmp
            end
          end
          @IsSchemaExisted = params['IsSchemaExisted']
          @ContentType = params['ContentType']
          @DatasetScene = params['DatasetScene']
          @SceneTags = params['SceneTags']
          unless params['CFSConfig'].nil?
            @CFSConfig = CFSConfig.new
            @CFSConfig.deserialize(params['CFSConfig'])
          end
        end
      end

      # CreateDataset返回参数结构体
      class CreateDatasetResponse < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatasetId, :RequestId

        def initialize(datasetid=nil, requestid=nil)
          @DatasetId = datasetid
          @RequestId = requestid
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateModelServiceAuthToken请求参数结构体
      class CreateModelServiceAuthTokenRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组 id
        # @type ServiceGroupId: String
        # @param Name: token 名称
        # @type Name: String
        # @param Description: Description 描述
        # @type Description: String

        attr_accessor :ServiceGroupId, :Name, :Description

        def initialize(servicegroupid=nil, name=nil, description=nil)
          @ServiceGroupId = servicegroupid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateModelServiceAuthToken返回参数结构体
      class CreateModelServiceAuthTokenResponse < TencentCloud::Common::AbstractModel
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

      # CreateModelService请求参数结构体
      class CreateModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 新增版本时需要填写
        # @type ServiceGroupId: String
        # @param ServiceGroupName: 不超过60个字，仅支持英文、数字、下划线"_"、短横"-"，只能以英文、数字开头
        # @type ServiceGroupName: String
        # @param ServiceDescription: 模型服务的描述
        # @type ServiceDescription: String
        # @param ChargeType: 付费模式,有 PREPAID （包年包月）和 POSTPAID_BY_HOUR（按量付费）
        # @type ChargeType: String
        # @param ResourceGroupId: 预付费模式下所属的资源组id，同服务组下唯一
        # @type ResourceGroupId: String
        # @param ModelInfo: 模型信息，需要挂载模型时填写
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 镜像信息，配置服务运行所需的镜像地址等信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param Env: 环境变量，可选参数，用于配置容器中的环境变量
        # @type Env: Array
        # @param Resources: 资源描述，指定包年包月模式下的cpu,mem,gpu等信息，后付费无需填写
        # @type Resources: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param InstanceType: 使用DescribeBillingSpecs接口返回的规格列表中的值，或者参考实例列表:
        # TI.S.MEDIUM.POST	2C4G
        # TI.S.LARGE.POST	4C8G
        # TI.S.2XLARGE16.POST	8C16G
        # TI.S.2XLARGE32.POST	8C32G
        # TI.S.4XLARGE32.POST	16C32G
        # TI.S.4XLARGE64.POST	16C64G
        # TI.S.6XLARGE48.POST	24C48G
        # TI.S.6XLARGE96.POST	24C96G
        # TI.S.8XLARGE64.POST	32C64G
        # TI.S.8XLARGE128.POST 32C128G
        # TI.GN7.LARGE20.POST	4C20G T4*1/4
        # TI.GN7.2XLARGE40.POST	10C40G T4*1/2
        # TI.GN7.2XLARGE32.POST	8C32G T4*1
        # TI.GN7.5XLARGE80.POST	20C80G T4*1
        # TI.GN7.8XLARGE128.POST	32C128G T4*1
        # TI.GN7.10XLARGE160.POST	40C160G T4*2
        # TI.GN7.20XLARGE320.POST	80C320G T4*4
        # @type InstanceType: String
        # @param ScaleMode: 扩缩容类型 支持：自动 - "AUTO", 手动 - "MANUAL",默认为MANUAL
        # @type ScaleMode: String
        # @param Replicas: 实例数量, 不同计费模式和调节模式下对应关系如下
        # PREPAID 和 POSTPAID_BY_HOUR:
        # 手动调节模式下对应 实例数量
        # 自动调节模式下对应 基于时间的默认策略的实例数量
        # HYBRID_PAID:
        # 后付费实例手动调节模式下对应 实例数量
        # 后付费实例自动调节模式下对应 时间策略的默认策略的实例数量
        # @type Replicas: Integer
        # @param HorizontalPodAutoscaler: 自动伸缩信息
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Tione.v20211111.models.HorizontalPodAutoscaler`
        # @param LogEnable: 是否开启日志投递，开启后需填写配置投递到指定cls
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置，需要投递服务日志到指定cls时填写
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param AuthorizationEnable: 是否开启接口鉴权，开启后自动生成token信息，访问需要token鉴权
        # @type AuthorizationEnable: Boolean
        # @param Tags: 腾讯云标签
        # @type Tags: Array
        # @param NewVersion: 是否新增版本
        # @type NewVersion: Boolean
        # @param CronScaleJobs: 定时任务配置，使用定时策略时填写
        # @type CronScaleJobs: Array
        # @param ScaleStrategy: 自动伸缩策略配置 HPA : 通过HPA进行弹性伸缩 CRON 通过定时任务进行伸缩
        # @type ScaleStrategy: String
        # @param HybridBillingPrepaidReplicas: 计费模式[HYBRID_PAID]时生效, 用于标识混合计费模式下的预付费实例数
        # @type HybridBillingPrepaidReplicas: Integer
        # @param CreateSource: [AUTO_ML 自动学习，自动学习正式发布 AUTO_ML_FORMAL, DEFAULT 默认]
        # @type CreateSource: String
        # @param ModelHotUpdateEnable: 是否开启模型的热更新。默认不开启
        # @type ModelHotUpdateEnable: Boolean
        # @param ScheduledAction: 定时停止配置
        # @type ScheduledAction: :class:`Tencentcloud::Tione.v20211111.models.ScheduledAction`
        # @param VolumeMount: 挂载配置，目前只支持CFS
        # @type VolumeMount: :class:`Tencentcloud::Tione.v20211111.models.VolumeMount`
        # @param ServiceLimit: 服务限速限流相关配置
        # @type ServiceLimit: :class:`Tencentcloud::Tione.v20211111.models.ServiceLimit`
        # @param CallbackUrl: 回调地址，用于回调创建服务状态信息，回调格式&内容详情见：[TI-ONE 接口回调说明](https://cloud.tencent.com/document/product/851/84292)
        # @type CallbackUrl: String
        # @param ModelTurboEnable: 是否开启模型的加速, 仅对StableDiffusion(动态加速)格式的模型有效。
        # @type ModelTurboEnable: Boolean
        # @param ServiceCategory: 服务分类
        # @type ServiceCategory: String
        # @param Command: 服务的启动命令，如遇特殊字符导致配置失败，可使用CommandBase64参数
        # @type Command: String
        # @param ServiceEIP: 是否开启TIONE内网访问外部，此功能仅支持后付费机型与从TIONE平台购买的预付费机型；使用从CVM选择资源组时此配置不生效。
        # @type ServiceEIP: :class:`Tencentcloud::Tione.v20211111.models.ServiceEIP`
        # @param CommandBase64: 服务的启动命令，以base64格式进行输入，与Command同时配置时，仅当前参数生效
        # @type CommandBase64: String
        # @param ServicePort: 服务端口，仅在非内置镜像时生效，默认8501。不支持输入8501-8510,6006,9092
        # @type ServicePort: Integer
        # @param DeployType: 服务的部署类型 [STANDARD 标准部署，DIST 分布式多机部署] 默认STANDARD
        # @type DeployType: String
        # @param InstancePerReplicas: 单副本下的实例数，仅在部署类型为DIST时生效，默认1
        # @type InstancePerReplicas: Integer
        # @param TerminationGracePeriodSeconds: 30
        # @type TerminationGracePeriodSeconds: Integer
        # @param PreStopCommand: ["sleep","60"]
        # @type PreStopCommand: Array
        # @param GrpcEnable: 是否启用 grpc 端口
        # @type GrpcEnable: Boolean
        # @param HealthProbe: 健康探针
        # @type HealthProbe: :class:`Tencentcloud::Tione.v20211111.models.HealthProbe`
        # @param RollingUpdate: 滚动更新策略
        # @type RollingUpdate: :class:`Tencentcloud::Tione.v20211111.models.RollingUpdate`
        # @param Sidecar: sidecar配置
        # @type Sidecar: :class:`Tencentcloud::Tione.v20211111.models.SidecarSpec`

        attr_accessor :ServiceGroupId, :ServiceGroupName, :ServiceDescription, :ChargeType, :ResourceGroupId, :ModelInfo, :ImageInfo, :Env, :Resources, :InstanceType, :ScaleMode, :Replicas, :HorizontalPodAutoscaler, :LogEnable, :LogConfig, :AuthorizationEnable, :Tags, :NewVersion, :CronScaleJobs, :ScaleStrategy, :HybridBillingPrepaidReplicas, :CreateSource, :ModelHotUpdateEnable, :ScheduledAction, :VolumeMount, :ServiceLimit, :CallbackUrl, :ModelTurboEnable, :ServiceCategory, :Command, :ServiceEIP, :CommandBase64, :ServicePort, :DeployType, :InstancePerReplicas, :TerminationGracePeriodSeconds, :PreStopCommand, :GrpcEnable, :HealthProbe, :RollingUpdate, :Sidecar

        def initialize(servicegroupid=nil, servicegroupname=nil, servicedescription=nil, chargetype=nil, resourcegroupid=nil, modelinfo=nil, imageinfo=nil, env=nil, resources=nil, instancetype=nil, scalemode=nil, replicas=nil, horizontalpodautoscaler=nil, logenable=nil, logconfig=nil, authorizationenable=nil, tags=nil, newversion=nil, cronscalejobs=nil, scalestrategy=nil, hybridbillingprepaidreplicas=nil, createsource=nil, modelhotupdateenable=nil, scheduledaction=nil, volumemount=nil, servicelimit=nil, callbackurl=nil, modelturboenable=nil, servicecategory=nil, command=nil, serviceeip=nil, commandbase64=nil, serviceport=nil, deploytype=nil, instanceperreplicas=nil, terminationgraceperiodseconds=nil, prestopcommand=nil, grpcenable=nil, healthprobe=nil, rollingupdate=nil, sidecar=nil)
          @ServiceGroupId = servicegroupid
          @ServiceGroupName = servicegroupname
          @ServiceDescription = servicedescription
          @ChargeType = chargetype
          @ResourceGroupId = resourcegroupid
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @Env = env
          @Resources = resources
          @InstanceType = instancetype
          @ScaleMode = scalemode
          @Replicas = replicas
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @LogEnable = logenable
          @LogConfig = logconfig
          @AuthorizationEnable = authorizationenable
          @Tags = tags
          @NewVersion = newversion
          @CronScaleJobs = cronscalejobs
          @ScaleStrategy = scalestrategy
          @HybridBillingPrepaidReplicas = hybridbillingprepaidreplicas
          @CreateSource = createsource
          @ModelHotUpdateEnable = modelhotupdateenable
          @ScheduledAction = scheduledaction
          @VolumeMount = volumemount
          @ServiceLimit = servicelimit
          @CallbackUrl = callbackurl
          @ModelTurboEnable = modelturboenable
          @ServiceCategory = servicecategory
          @Command = command
          @ServiceEIP = serviceeip
          @CommandBase64 = commandbase64
          @ServicePort = serviceport
          @DeployType = deploytype
          @InstancePerReplicas = instanceperreplicas
          @TerminationGracePeriodSeconds = terminationgraceperiodseconds
          @PreStopCommand = prestopcommand
          @GrpcEnable = grpcenable
          @HealthProbe = healthprobe
          @RollingUpdate = rollingupdate
          @Sidecar = sidecar
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @ServiceGroupName = params['ServiceGroupName']
          @ServiceDescription = params['ServiceDescription']
          @ChargeType = params['ChargeType']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['Env'].nil?
            @Env = []
            params['Env'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @Env << envvar_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = ResourceInfo.new
            @Resources.deserialize(params['Resources'])
          end
          @InstanceType = params['InstanceType']
          @ScaleMode = params['ScaleMode']
          @Replicas = params['Replicas']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @AuthorizationEnable = params['AuthorizationEnable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NewVersion = params['NewVersion']
          unless params['CronScaleJobs'].nil?
            @CronScaleJobs = []
            params['CronScaleJobs'].each do |i|
              cronscalejob_tmp = CronScaleJob.new
              cronscalejob_tmp.deserialize(i)
              @CronScaleJobs << cronscalejob_tmp
            end
          end
          @ScaleStrategy = params['ScaleStrategy']
          @HybridBillingPrepaidReplicas = params['HybridBillingPrepaidReplicas']
          @CreateSource = params['CreateSource']
          @ModelHotUpdateEnable = params['ModelHotUpdateEnable']
          unless params['ScheduledAction'].nil?
            @ScheduledAction = ScheduledAction.new
            @ScheduledAction.deserialize(params['ScheduledAction'])
          end
          unless params['VolumeMount'].nil?
            @VolumeMount = VolumeMount.new
            @VolumeMount.deserialize(params['VolumeMount'])
          end
          unless params['ServiceLimit'].nil?
            @ServiceLimit = ServiceLimit.new
            @ServiceLimit.deserialize(params['ServiceLimit'])
          end
          @CallbackUrl = params['CallbackUrl']
          @ModelTurboEnable = params['ModelTurboEnable']
          @ServiceCategory = params['ServiceCategory']
          @Command = params['Command']
          unless params['ServiceEIP'].nil?
            @ServiceEIP = ServiceEIP.new
            @ServiceEIP.deserialize(params['ServiceEIP'])
          end
          @CommandBase64 = params['CommandBase64']
          @ServicePort = params['ServicePort']
          @DeployType = params['DeployType']
          @InstancePerReplicas = params['InstancePerReplicas']
          @TerminationGracePeriodSeconds = params['TerminationGracePeriodSeconds']
          @PreStopCommand = params['PreStopCommand']
          @GrpcEnable = params['GrpcEnable']
          unless params['HealthProbe'].nil?
            @HealthProbe = HealthProbe.new
            @HealthProbe.deserialize(params['HealthProbe'])
          end
          unless params['RollingUpdate'].nil?
            @RollingUpdate = RollingUpdate.new
            @RollingUpdate.deserialize(params['RollingUpdate'])
          end
          unless params['Sidecar'].nil?
            @Sidecar = SidecarSpec.new
            @Sidecar.deserialize(params['Sidecar'])
          end
        end
      end

      # CreateModelService返回参数结构体
      class CreateModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Service: 生成的模型服务
        # @type Service: :class:`Tencentcloud::Tione.v20211111.models.Service`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Service, :RequestId

        def initialize(service=nil, requestid=nil)
          @Service = service
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNotebook请求参数结构体
      class CreateNotebookRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称。不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type Name: String
        # @param ChargeType: 计算资源付费模式 ，可选值为：
        # PREPAID：预付费，即包年包月
        # POSTPAID_BY_HOUR：按小时后付费
        # @type ChargeType: String
        # @param ResourceConf: 计算资源配置
        # @type ResourceConf: :class:`Tencentcloud::Tione.v20211111.models.ResourceConf`
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param RootAccess: 是否ROOT权限
        # @type RootAccess: Boolean
        # @param AutoStopping: 是否自动停止
        # @type AutoStopping: Boolean
        # @param DirectInternetAccess: 是否访问公网
        # @type DirectInternetAccess: Boolean
        # @param ResourceGroupId: 资源组ID(for预付费)
        # @type ResourceGroupId: String
        # @param VpcId: Vpc-Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param VolumeSourceType: 存储的类型。取值包含：
        # FREE：预付费的免费存储
        # CLOUD_PREMIUM：高性能云硬盘
        # CLOUD_SSD：SSD云硬盘
        # CFS：CFS存储
        # CFS_TURBO：CFS Turbo存储
        # GooseFSx：GooseFSx存储
        # @type VolumeSourceType: String
        # @param VolumeSizeInGB: 云硬盘存储卷大小，单位GB
        # @type VolumeSizeInGB: Integer
        # @param VolumeSourceCFS: CFS存储的配置
        # @type VolumeSourceCFS: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param LogConfig: 日志配置
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param LifecycleScriptId: 生命周期脚本的ID
        # @type LifecycleScriptId: String
        # @param DefaultCodeRepoId: 默认GIT存储库的ID
        # @type DefaultCodeRepoId: String
        # @param AdditionalCodeRepoIds: 其他GIT存储库的ID，最多3个
        # @type AdditionalCodeRepoIds: Array
        # @param AutomaticStopTime: 自动停止时间，单位小时
        # @type AutomaticStopTime: Integer
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param DataConfigs: 数据配置，只支持WEDATA_HDFS存储类型
        # @type DataConfigs: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ImageType: 镜像类型，包括SYSTEM、TCR、CCR
        # @type ImageType: String
        # @param SSHConfig: SSH配置信息
        # @type SSHConfig: :class:`Tencentcloud::Tione.v20211111.models.SSHConfig`
        # @param VolumeSourceGooseFS: GooseFS存储配置
        # @type VolumeSourceGooseFS: :class:`Tencentcloud::Tione.v20211111.models.GooseFS`

        attr_accessor :Name, :ChargeType, :ResourceConf, :LogEnable, :RootAccess, :AutoStopping, :DirectInternetAccess, :ResourceGroupId, :VpcId, :SubnetId, :VolumeSourceType, :VolumeSizeInGB, :VolumeSourceCFS, :LogConfig, :LifecycleScriptId, :DefaultCodeRepoId, :AdditionalCodeRepoIds, :AutomaticStopTime, :Tags, :DataConfigs, :ImageInfo, :ImageType, :SSHConfig, :VolumeSourceGooseFS

        def initialize(name=nil, chargetype=nil, resourceconf=nil, logenable=nil, rootaccess=nil, autostopping=nil, directinternetaccess=nil, resourcegroupid=nil, vpcid=nil, subnetid=nil, volumesourcetype=nil, volumesizeingb=nil, volumesourcecfs=nil, logconfig=nil, lifecyclescriptid=nil, defaultcoderepoid=nil, additionalcoderepoids=nil, automaticstoptime=nil, tags=nil, dataconfigs=nil, imageinfo=nil, imagetype=nil, sshconfig=nil, volumesourcegoosefs=nil)
          @Name = name
          @ChargeType = chargetype
          @ResourceConf = resourceconf
          @LogEnable = logenable
          @RootAccess = rootaccess
          @AutoStopping = autostopping
          @DirectInternetAccess = directinternetaccess
          @ResourceGroupId = resourcegroupid
          @VpcId = vpcid
          @SubnetId = subnetid
          @VolumeSourceType = volumesourcetype
          @VolumeSizeInGB = volumesizeingb
          @VolumeSourceCFS = volumesourcecfs
          @LogConfig = logconfig
          @LifecycleScriptId = lifecyclescriptid
          @DefaultCodeRepoId = defaultcoderepoid
          @AdditionalCodeRepoIds = additionalcoderepoids
          @AutomaticStopTime = automaticstoptime
          @Tags = tags
          @DataConfigs = dataconfigs
          @ImageInfo = imageinfo
          @ImageType = imagetype
          @SSHConfig = sshconfig
          @VolumeSourceGooseFS = volumesourcegoosefs
        end

        def deserialize(params)
          @Name = params['Name']
          @ChargeType = params['ChargeType']
          unless params['ResourceConf'].nil?
            @ResourceConf = ResourceConf.new
            @ResourceConf.deserialize(params['ResourceConf'])
          end
          @LogEnable = params['LogEnable']
          @RootAccess = params['RootAccess']
          @AutoStopping = params['AutoStopping']
          @DirectInternetAccess = params['DirectInternetAccess']
          @ResourceGroupId = params['ResourceGroupId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VolumeSourceType = params['VolumeSourceType']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          unless params['VolumeSourceCFS'].nil?
            @VolumeSourceCFS = CFSConfig.new
            @VolumeSourceCFS.deserialize(params['VolumeSourceCFS'])
          end
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @LifecycleScriptId = params['LifecycleScriptId']
          @DefaultCodeRepoId = params['DefaultCodeRepoId']
          @AdditionalCodeRepoIds = params['AdditionalCodeRepoIds']
          @AutomaticStopTime = params['AutomaticStopTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @ImageType = params['ImageType']
          unless params['SSHConfig'].nil?
            @SSHConfig = SSHConfig.new
            @SSHConfig.deserialize(params['SSHConfig'])
          end
          unless params['VolumeSourceGooseFS'].nil?
            @VolumeSourceGooseFS = GooseFS.new
            @VolumeSourceGooseFS.deserialize(params['VolumeSourceGooseFS'])
          end
        end
      end

      # CreateNotebook返回参数结构体
      class CreateNotebookResponse < TencentCloud::Common::AbstractModel
        # @param Id: notebook标志
        # @type Id: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreatePresignedNotebookUrl请求参数结构体
      class CreatePresignedNotebookUrlRequest < TencentCloud::Common::AbstractModel
        # @param Id: Notebook ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CreatePresignedNotebookUrl返回参数结构体
      class CreatePresignedNotebookUrlResponse < TencentCloud::Common::AbstractModel
        # @param AuthorizedUrl: 携带认证TOKEN的URL
        # @type AuthorizedUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateTrainingModel请求参数结构体
      class CreateTrainingModelRequest < TencentCloud::Common::AbstractModel
        # @param ImportMethod: 导入方式
        # MODEL：导入新模型
        # VERSION：导入新版本
        # EXIST：导入现有版本
        # @type ImportMethod: String
        # @param ReasoningEnvironmentSource: 推理环境来源（SYSTEM/CUSTOM）
        # @type ReasoningEnvironmentSource: String
        # @param TrainingModelName: 模型名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type TrainingModelName: String
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String
        # @param TrainingModelCosPath: 模型来源cos目录，以/结尾
        # @type TrainingModelCosPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param AlgorithmFramework: 算法框架 （PYTORCH/TENSORFLOW/DETECTRON2/PMML/MMDETECTION)
        # @type AlgorithmFramework: String
        # @param ReasoningEnvironment: 推理环境
        # @type ReasoningEnvironment: String
        # @param TrainingModelIndex: 训练指标，最多支持1000字符
        # @type TrainingModelIndex: String
        # @param TrainingModelVersion: 模型版本
        # @type TrainingModelVersion: String
        # @param ReasoningImageInfo: 自定义推理环境
        # @type ReasoningImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ModelMoveMode: 模型移动方式（CUT/COPY）
        # @type ModelMoveMode: String
        # @param TrainingJobId: 训练任务ID
        # @type TrainingJobId: String
        # @param TrainingModelId: 模型ID（导入新模型不需要，导入新版本需要）
        # @type TrainingModelId: String
        # @param ModelOutputPath: 模型存储cos目录
        # @type ModelOutputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param TrainingModelSource: 模型来源 （JOB/COS）
        # @type TrainingModelSource: String
        # @param TrainingPreference: 模型偏好
        # @type TrainingPreference: String
        # @param AutoMLTaskId: 自动学习任务ID（已废弃）
        # @type AutoMLTaskId: String
        # @param TrainingJobVersion: 任务版本
        # @type TrainingJobVersion: String
        # @param ModelVersionType: 模型版本类型；
        # 枚举值：NORMAL(通用)  ACCELERATE(加速)
        # 注意:  默认为NORMAL
        # @type ModelVersionType: String
        # @param ModelFormat: 模型格式 （PYTORCH/TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML/MMDETECTION/ONNX/HUGGING_FACE）
        # @type ModelFormat: String
        # @param ReasoningEnvironmentId: 推理镜像ID
        # @type ReasoningEnvironmentId: String
        # @param AutoClean: 模型自动清理开关(true/false)，当前版本仅支持SAVED_MODEL格式模型
        # @type AutoClean: String
        # @param MaxReservedModels: 模型数量保留上限(默认值为24个，上限为24，下限为1，步长为1)
        # @type MaxReservedModels: Integer
        # @param ModelCleanPeriod: 模型清理周期(默认值为1分钟，上限为1440，下限为1分钟，步长为1)
        # @type ModelCleanPeriod: Integer
        # @param IsQAT: 是否QAT模型
        # @type IsQAT: Boolean

        attr_accessor :ImportMethod, :ReasoningEnvironmentSource, :TrainingModelName, :Tags, :TrainingJobName, :TrainingModelCosPath, :AlgorithmFramework, :ReasoningEnvironment, :TrainingModelIndex, :TrainingModelVersion, :ReasoningImageInfo, :ModelMoveMode, :TrainingJobId, :TrainingModelId, :ModelOutputPath, :TrainingModelSource, :TrainingPreference, :AutoMLTaskId, :TrainingJobVersion, :ModelVersionType, :ModelFormat, :ReasoningEnvironmentId, :AutoClean, :MaxReservedModels, :ModelCleanPeriod, :IsQAT

        def initialize(importmethod=nil, reasoningenvironmentsource=nil, trainingmodelname=nil, tags=nil, trainingjobname=nil, trainingmodelcospath=nil, algorithmframework=nil, reasoningenvironment=nil, trainingmodelindex=nil, trainingmodelversion=nil, reasoningimageinfo=nil, modelmovemode=nil, trainingjobid=nil, trainingmodelid=nil, modeloutputpath=nil, trainingmodelsource=nil, trainingpreference=nil, automltaskid=nil, trainingjobversion=nil, modelversiontype=nil, modelformat=nil, reasoningenvironmentid=nil, autoclean=nil, maxreservedmodels=nil, modelcleanperiod=nil, isqat=nil)
          @ImportMethod = importmethod
          @ReasoningEnvironmentSource = reasoningenvironmentsource
          @TrainingModelName = trainingmodelname
          @Tags = tags
          @TrainingJobName = trainingjobname
          @TrainingModelCosPath = trainingmodelcospath
          @AlgorithmFramework = algorithmframework
          @ReasoningEnvironment = reasoningenvironment
          @TrainingModelIndex = trainingmodelindex
          @TrainingModelVersion = trainingmodelversion
          @ReasoningImageInfo = reasoningimageinfo
          @ModelMoveMode = modelmovemode
          @TrainingJobId = trainingjobid
          @TrainingModelId = trainingmodelid
          @ModelOutputPath = modeloutputpath
          @TrainingModelSource = trainingmodelsource
          @TrainingPreference = trainingpreference
          @AutoMLTaskId = automltaskid
          @TrainingJobVersion = trainingjobversion
          @ModelVersionType = modelversiontype
          @ModelFormat = modelformat
          @ReasoningEnvironmentId = reasoningenvironmentid
          @AutoClean = autoclean
          @MaxReservedModels = maxreservedmodels
          @ModelCleanPeriod = modelcleanperiod
          @IsQAT = isqat
        end

        def deserialize(params)
          @ImportMethod = params['ImportMethod']
          @ReasoningEnvironmentSource = params['ReasoningEnvironmentSource']
          @TrainingModelName = params['TrainingModelName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @TrainingJobName = params['TrainingJobName']
          unless params['TrainingModelCosPath'].nil?
            @TrainingModelCosPath = CosPathInfo.new
            @TrainingModelCosPath.deserialize(params['TrainingModelCosPath'])
          end
          @AlgorithmFramework = params['AlgorithmFramework']
          @ReasoningEnvironment = params['ReasoningEnvironment']
          @TrainingModelIndex = params['TrainingModelIndex']
          @TrainingModelVersion = params['TrainingModelVersion']
          unless params['ReasoningImageInfo'].nil?
            @ReasoningImageInfo = ImageInfo.new
            @ReasoningImageInfo.deserialize(params['ReasoningImageInfo'])
          end
          @ModelMoveMode = params['ModelMoveMode']
          @TrainingJobId = params['TrainingJobId']
          @TrainingModelId = params['TrainingModelId']
          unless params['ModelOutputPath'].nil?
            @ModelOutputPath = CosPathInfo.new
            @ModelOutputPath.deserialize(params['ModelOutputPath'])
          end
          @TrainingModelSource = params['TrainingModelSource']
          @TrainingPreference = params['TrainingPreference']
          @AutoMLTaskId = params['AutoMLTaskId']
          @TrainingJobVersion = params['TrainingJobVersion']
          @ModelVersionType = params['ModelVersionType']
          @ModelFormat = params['ModelFormat']
          @ReasoningEnvironmentId = params['ReasoningEnvironmentId']
          @AutoClean = params['AutoClean']
          @MaxReservedModels = params['MaxReservedModels']
          @ModelCleanPeriod = params['ModelCleanPeriod']
          @IsQAT = params['IsQAT']
        end
      end

      # CreateTrainingModel返回参数结构体
      class CreateTrainingModelResponse < TencentCloud::Common::AbstractModel
        # @param Id: 模型ID，TrainingModel ID
        # @type Id: String
        # @param TrainingModelVersionId: 模型版本ID
        # @type TrainingModelVersionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :TrainingModelVersionId, :RequestId

        def initialize(id=nil, trainingmodelversionid=nil, requestid=nil)
          @Id = id
          @TrainingModelVersionId = trainingmodelversionid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @TrainingModelVersionId = params['TrainingModelVersionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTrainingTask请求参数结构体
      class CreateTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Name: 训练任务名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type Name: String
        # @param ChargeType: 计费模式，eg：PREPAID 包年包月（资源组）;
        # POSTPAID_BY_HOUR 按量计费
        # @type ChargeType: String
        # @param ResourceConfigInfos: 资源配置，需填写对应算力规格ID和节点数量，算力规格ID查询接口为DescribeBillingSpecsPrice，eg：[{"Role":"WORKER", "InstanceType": "TI.S.MEDIUM.POST", "InstanceNum": 1}]
        # @type ResourceConfigInfos: Array
        # @param FrameworkName: 训练框架名称，通过DescribeTrainingFrameworks接口查询，eg：SPARK、PYSPARK、TENSORFLOW、PYTORCH
        # @type FrameworkName: String
        # @param FrameworkVersion: 训练框架版本，通过DescribeTrainingFrameworks接口查询，eg：1.15、1.9
        # @type FrameworkVersion: String
        # @param FrameworkEnvironment: 训练框架环境，通过DescribeTrainingFrameworks接口查询，eg：tf1.15-py3.7-cpu、torch1.9-py3.8-cuda11.1-gpu
        # @type FrameworkEnvironment: String
        # @param ResourceGroupId: 预付费专用资源组ID，通过DescribeBillingResourceGroups接口查询
        # @type ResourceGroupId: String
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param ImageInfo: 自定义镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CodePackagePath: COS代码包路径
        # @type CodePackagePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmdInfo: 任务的启动命令，按任务训练模式输入，如遇特殊字符导致配置失败，可使用EncodedStartCmdInfo参数
        # @type StartCmdInfo: :class:`Tencentcloud::Tione.v20211111.models.StartCmdInfo`
        # @param TrainingMode: 训练模式，通过DescribeTrainingFrameworks接口查询，eg：PS_WORKER、DDP、MPI、HOROVOD
        # @type TrainingMode: String
        # @param DataConfigs: 数据配置，依赖DataSource字段，数量不超过10个
        # @type DataConfigs: Array
        # @param VpcId: VPC Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param Output: COS训练输出路径
        # @type Output: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param LogConfig: CLS日志配置
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param TuningParameters: 调优参数，不超过2048个字符
        # @type TuningParameters: String
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param Remark: 备注，不超过1024个字符
        # @type Remark: String
        # @param DataSource: 数据来源，eg：DATASET、COS、CFS、CFSTurbo、HDFS、GooseFSx
        # @type DataSource: String
        # @param CallbackUrl: 回调地址，用于创建/启动/停止训练任务的异步回调。回调格式&内容详见：[[TI-ONE接口回调说明]](https://cloud.tencent.com/document/product/851/84292)
        # @type CallbackUrl: String
        # @param EncodedStartCmdInfo: 编码后的任务启动命令，与StartCmdInfo同时配置时，仅当前参数生效
        # @type EncodedStartCmdInfo: :class:`Tencentcloud::Tione.v20211111.models.EncodedStartCmdInfo`
        # @param CodeRepos: 代码仓库配置
        # @type CodeRepos: Array

        attr_accessor :Name, :ChargeType, :ResourceConfigInfos, :FrameworkName, :FrameworkVersion, :FrameworkEnvironment, :ResourceGroupId, :Tags, :ImageInfo, :CodePackagePath, :StartCmdInfo, :TrainingMode, :DataConfigs, :VpcId, :SubnetId, :Output, :LogConfig, :TuningParameters, :LogEnable, :Remark, :DataSource, :CallbackUrl, :EncodedStartCmdInfo, :CodeRepos

        def initialize(name=nil, chargetype=nil, resourceconfiginfos=nil, frameworkname=nil, frameworkversion=nil, frameworkenvironment=nil, resourcegroupid=nil, tags=nil, imageinfo=nil, codepackagepath=nil, startcmdinfo=nil, trainingmode=nil, dataconfigs=nil, vpcid=nil, subnetid=nil, output=nil, logconfig=nil, tuningparameters=nil, logenable=nil, remark=nil, datasource=nil, callbackurl=nil, encodedstartcmdinfo=nil, coderepos=nil)
          @Name = name
          @ChargeType = chargetype
          @ResourceConfigInfos = resourceconfiginfos
          @FrameworkName = frameworkname
          @FrameworkVersion = frameworkversion
          @FrameworkEnvironment = frameworkenvironment
          @ResourceGroupId = resourcegroupid
          @Tags = tags
          @ImageInfo = imageinfo
          @CodePackagePath = codepackagepath
          @StartCmdInfo = startcmdinfo
          @TrainingMode = trainingmode
          @DataConfigs = dataconfigs
          @VpcId = vpcid
          @SubnetId = subnetid
          @Output = output
          @LogConfig = logconfig
          @TuningParameters = tuningparameters
          @LogEnable = logenable
          @Remark = remark
          @DataSource = datasource
          @CallbackUrl = callbackurl
          @EncodedStartCmdInfo = encodedstartcmdinfo
          @CodeRepos = coderepos
        end

        def deserialize(params)
          @Name = params['Name']
          @ChargeType = params['ChargeType']
          unless params['ResourceConfigInfos'].nil?
            @ResourceConfigInfos = []
            params['ResourceConfigInfos'].each do |i|
              resourceconfiginfo_tmp = ResourceConfigInfo.new
              resourceconfiginfo_tmp.deserialize(i)
              @ResourceConfigInfos << resourceconfiginfo_tmp
            end
          end
          @FrameworkName = params['FrameworkName']
          @FrameworkVersion = params['FrameworkVersion']
          @FrameworkEnvironment = params['FrameworkEnvironment']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['CodePackagePath'].nil?
            @CodePackagePath = CosPathInfo.new
            @CodePackagePath.deserialize(params['CodePackagePath'])
          end
          unless params['StartCmdInfo'].nil?
            @StartCmdInfo = StartCmdInfo.new
            @StartCmdInfo.deserialize(params['StartCmdInfo'])
          end
          @TrainingMode = params['TrainingMode']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['Output'].nil?
            @Output = CosPathInfo.new
            @Output.deserialize(params['Output'])
          end
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @TuningParameters = params['TuningParameters']
          @LogEnable = params['LogEnable']
          @Remark = params['Remark']
          @DataSource = params['DataSource']
          @CallbackUrl = params['CallbackUrl']
          unless params['EncodedStartCmdInfo'].nil?
            @EncodedStartCmdInfo = EncodedStartCmdInfo.new
            @EncodedStartCmdInfo.deserialize(params['EncodedStartCmdInfo'])
          end
          unless params['CodeRepos'].nil?
            @CodeRepos = []
            params['CodeRepos'].each do |i|
              coderepoconfig_tmp = CodeRepoConfig.new
              coderepoconfig_tmp.deserialize(i)
              @CodeRepos << coderepoconfig_tmp
            end
          end
        end
      end

      # CreateTrainingTask返回参数结构体
      class CreateTrainingTaskResponse < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 定时扩缩任务
      class CronScaleJob < TencentCloud::Common::AbstractModel
        # @param Schedule: Cron表达式，标识任务的执行时间，精确到分钟级
        # @type Schedule: String
        # @param Name: 定时任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TargetReplicas: 目标实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetReplicas: Integer
        # @param MinReplicas: 目标min
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinReplicas: Integer
        # @param MaxReplicas: 目标max
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReplicas: Integer
        # @param ExcludeDates: 例外时间，Cron表达式，在对应时间内不执行任务。最多支持3条。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeDates: Array

        attr_accessor :Schedule, :Name, :TargetReplicas, :MinReplicas, :MaxReplicas, :ExcludeDates

        def initialize(schedule=nil, name=nil, targetreplicas=nil, minreplicas=nil, maxreplicas=nil, excludedates=nil)
          @Schedule = schedule
          @Name = name
          @TargetReplicas = targetreplicas
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @ExcludeDates = excludedates
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @Name = params['Name']
          @TargetReplicas = params['TargetReplicas']
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          @ExcludeDates = params['ExcludeDates']
        end
      end

      # 跨租户弹性网卡下Pod调用信息
      class CrossTenantENIInfo < TencentCloud::Common::AbstractModel
        # @param PrimaryIP: Pod IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrimaryIP: String
        # @param Port: Pod Port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String

        attr_accessor :PrimaryIP, :Port

        def initialize(primaryip=nil, port=nil)
          @PrimaryIP = primaryip
          @Port = port
        end

        def deserialize(params)
          @PrimaryIP = params['PrimaryIP']
          @Port = params['Port']
        end
      end

      # 数据配置
      class DataConfig < TencentCloud::Common::AbstractModel
        # @param MappingPath: 映射路径
        # @type MappingPath: String
        # @param DataSourceUsage: 存储用途
        # 可选值为 BUILTIN_CODE, BUILTIN_DATA, BUILTIN_MODEL, USER_DATA, USER_CODE, USER_MODEL, OUTPUT, OTHER
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceUsage: String
        # @param DataSourceType: DATASET、COS、CFS、CFSTurbo、GooseFSx、HDFS、WEDATA_HDFS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceType: String
        # @param DataSetSource: 来自数据集的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSetSource: :class:`Tencentcloud::Tione.v20211111.models.DataSetConfig`
        # @param COSSource: 来自cos的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type COSSource: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param CFSSource: 来自CFS的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSSource: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param HDFSSource: 来自HDFS的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HDFSSource: :class:`Tencentcloud::Tione.v20211111.models.HDFSConfig`
        # @param GooseFSSource: 配置GooseFS的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GooseFSSource: :class:`Tencentcloud::Tione.v20211111.models.GooseFS`
        # @param CFSTurboSource: 配置TurboFS的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSTurboSource: :class:`Tencentcloud::Tione.v20211111.models.CFSTurbo`
        # @param LocalDiskSource: 来自本地磁盘的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDiskSource: :class:`Tencentcloud::Tione.v20211111.models.LocalDisk`
        # @param CBSSource: CBS配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CBSSource: :class:`Tencentcloud::Tione.v20211111.models.CBSConfig`
        # @param HostPathSource: 主机路径信息
        # @type HostPathSource: :class:`Tencentcloud::Tione.v20211111.models.HostPath`

        attr_accessor :MappingPath, :DataSourceUsage, :DataSourceType, :DataSetSource, :COSSource, :CFSSource, :HDFSSource, :GooseFSSource, :CFSTurboSource, :LocalDiskSource, :CBSSource, :HostPathSource

        def initialize(mappingpath=nil, datasourceusage=nil, datasourcetype=nil, datasetsource=nil, cossource=nil, cfssource=nil, hdfssource=nil, goosefssource=nil, cfsturbosource=nil, localdisksource=nil, cbssource=nil, hostpathsource=nil)
          @MappingPath = mappingpath
          @DataSourceUsage = datasourceusage
          @DataSourceType = datasourcetype
          @DataSetSource = datasetsource
          @COSSource = cossource
          @CFSSource = cfssource
          @HDFSSource = hdfssource
          @GooseFSSource = goosefssource
          @CFSTurboSource = cfsturbosource
          @LocalDiskSource = localdisksource
          @CBSSource = cbssource
          @HostPathSource = hostpathsource
        end

        def deserialize(params)
          @MappingPath = params['MappingPath']
          @DataSourceUsage = params['DataSourceUsage']
          @DataSourceType = params['DataSourceType']
          unless params['DataSetSource'].nil?
            @DataSetSource = DataSetConfig.new
            @DataSetSource.deserialize(params['DataSetSource'])
          end
          unless params['COSSource'].nil?
            @COSSource = CosPathInfo.new
            @COSSource.deserialize(params['COSSource'])
          end
          unless params['CFSSource'].nil?
            @CFSSource = CFSConfig.new
            @CFSSource.deserialize(params['CFSSource'])
          end
          unless params['HDFSSource'].nil?
            @HDFSSource = HDFSConfig.new
            @HDFSSource.deserialize(params['HDFSSource'])
          end
          unless params['GooseFSSource'].nil?
            @GooseFSSource = GooseFS.new
            @GooseFSSource.deserialize(params['GooseFSSource'])
          end
          unless params['CFSTurboSource'].nil?
            @CFSTurboSource = CFSTurbo.new
            @CFSTurboSource.deserialize(params['CFSTurboSource'])
          end
          unless params['LocalDiskSource'].nil?
            @LocalDiskSource = LocalDisk.new
            @LocalDiskSource.deserialize(params['LocalDiskSource'])
          end
          unless params['CBSSource'].nil?
            @CBSSource = CBSConfig.new
            @CBSSource.deserialize(params['CBSSource'])
          end
          unless params['HostPathSource'].nil?
            @HostPathSource = HostPath.new
            @HostPathSource.deserialize(params['HostPathSource'])
          end
        end
      end

      # 数据点
      class DataPoint < TencentCloud::Common::AbstractModel
        # @param Name: 指标名字
        # @type Name: String
        # @param Value: 值
        # @type Value: Float

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

      # 数据集结构体
      class DataSetConfig < TencentCloud::Common::AbstractModel
        # @param Id: 数据集ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 数据集组
      class DatasetGroup < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetId: String
        # @param DatasetName: 数据集名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetName: String
        # @param Creator: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param DatasetVersion: 数据集版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetVersion: String
        # @param DatasetType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetType: String
        # @param DatasetTags: 数据集标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetTags: Array
        # @param DatasetAnnotationTaskName: 数据集标注任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskName: String
        # @param DatasetAnnotationTaskId: 数据集标注任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskId: String
        # @param Process: 处理进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Integer
        # @param DatasetStatus: 数据集状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetStatus: String
        # @param ErrorMsg: 错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ExternalTaskType: 外部关联TASKType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalTaskType: String
        # @param DatasetSize: 数据集大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetSize: String
        # @param FileNum: 数据集数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileNum: Integer
        # @param StorageDataPath: 数据集源COS路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageDataPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StorageLabelPath: 数据集标签存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLabelPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param DatasetVersions: 数据集版本聚合详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetVersions: Array
        # @param AnnotationStatus: 数据集标注状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationStatus: String
        # @param AnnotationType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationType: String
        # @param AnnotationFormat: 数据集标注格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationFormat: String
        # @param DatasetScope: 数据集范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetScope: String
        # @param OcrScene: 数据集OCR子场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrScene: String
        # @param AnnotationKeyStatus: 数据集字典修改状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationKeyStatus: String
        # @param ContentType: 文本数据集导入方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentType: String
        # @param DatasetScene: 数据集建模类别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetScene: String
        # @param CFSConfig: CFS配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSConfig: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param SceneTags: 数据集标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneTags: Array
        # @param NumAnnotated: 已标注数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumAnnotated: Integer
        # @param AnnotationSpecification: 标注规范
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationSpecification: String
        # @param AnnotationSchemaConfigured: 标注Schema是否配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationSchemaConfigured: Boolean
        # @param CreatorNickname: 创建者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorNickname: String
        # @param IsCfsUpdated: cfs路径是否有修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCfsUpdated: Boolean

        attr_accessor :DatasetId, :DatasetName, :Creator, :DatasetVersion, :DatasetType, :DatasetTags, :DatasetAnnotationTaskName, :DatasetAnnotationTaskId, :Process, :DatasetStatus, :ErrorMsg, :CreateTime, :UpdateTime, :ExternalTaskType, :DatasetSize, :FileNum, :StorageDataPath, :StorageLabelPath, :DatasetVersions, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :DatasetScope, :OcrScene, :AnnotationKeyStatus, :ContentType, :DatasetScene, :CFSConfig, :SceneTags, :NumAnnotated, :AnnotationSpecification, :AnnotationSchemaConfigured, :CreatorNickname, :IsCfsUpdated

        def initialize(datasetid=nil, datasetname=nil, creator=nil, datasetversion=nil, datasettype=nil, datasettags=nil, datasetannotationtaskname=nil, datasetannotationtaskid=nil, process=nil, datasetstatus=nil, errormsg=nil, createtime=nil, updatetime=nil, externaltasktype=nil, datasetsize=nil, filenum=nil, storagedatapath=nil, storagelabelpath=nil, datasetversions=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, datasetscope=nil, ocrscene=nil, annotationkeystatus=nil, contenttype=nil, datasetscene=nil, cfsconfig=nil, scenetags=nil, numannotated=nil, annotationspecification=nil, annotationschemaconfigured=nil, creatornickname=nil, iscfsupdated=nil)
          @DatasetId = datasetid
          @DatasetName = datasetname
          @Creator = creator
          @DatasetVersion = datasetversion
          @DatasetType = datasettype
          @DatasetTags = datasettags
          @DatasetAnnotationTaskName = datasetannotationtaskname
          @DatasetAnnotationTaskId = datasetannotationtaskid
          @Process = process
          @DatasetStatus = datasetstatus
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExternalTaskType = externaltasktype
          @DatasetSize = datasetsize
          @FileNum = filenum
          @StorageDataPath = storagedatapath
          @StorageLabelPath = storagelabelpath
          @DatasetVersions = datasetversions
          @AnnotationStatus = annotationstatus
          @AnnotationType = annotationtype
          @AnnotationFormat = annotationformat
          @DatasetScope = datasetscope
          @OcrScene = ocrscene
          @AnnotationKeyStatus = annotationkeystatus
          @ContentType = contenttype
          @DatasetScene = datasetscene
          @CFSConfig = cfsconfig
          @SceneTags = scenetags
          @NumAnnotated = numannotated
          @AnnotationSpecification = annotationspecification
          @AnnotationSchemaConfigured = annotationschemaconfigured
          @CreatorNickname = creatornickname
          @IsCfsUpdated = iscfsupdated
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @DatasetName = params['DatasetName']
          @Creator = params['Creator']
          @DatasetVersion = params['DatasetVersion']
          @DatasetType = params['DatasetType']
          unless params['DatasetTags'].nil?
            @DatasetTags = []
            params['DatasetTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DatasetTags << tag_tmp
            end
          end
          @DatasetAnnotationTaskName = params['DatasetAnnotationTaskName']
          @DatasetAnnotationTaskId = params['DatasetAnnotationTaskId']
          @Process = params['Process']
          @DatasetStatus = params['DatasetStatus']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExternalTaskType = params['ExternalTaskType']
          @DatasetSize = params['DatasetSize']
          @FileNum = params['FileNum']
          unless params['StorageDataPath'].nil?
            @StorageDataPath = CosPathInfo.new
            @StorageDataPath.deserialize(params['StorageDataPath'])
          end
          unless params['StorageLabelPath'].nil?
            @StorageLabelPath = CosPathInfo.new
            @StorageLabelPath.deserialize(params['StorageLabelPath'])
          end
          unless params['DatasetVersions'].nil?
            @DatasetVersions = []
            params['DatasetVersions'].each do |i|
              datasetinfo_tmp = DatasetInfo.new
              datasetinfo_tmp.deserialize(i)
              @DatasetVersions << datasetinfo_tmp
            end
          end
          @AnnotationStatus = params['AnnotationStatus']
          @AnnotationType = params['AnnotationType']
          @AnnotationFormat = params['AnnotationFormat']
          @DatasetScope = params['DatasetScope']
          @OcrScene = params['OcrScene']
          @AnnotationKeyStatus = params['AnnotationKeyStatus']
          @ContentType = params['ContentType']
          @DatasetScene = params['DatasetScene']
          unless params['CFSConfig'].nil?
            @CFSConfig = CFSConfig.new
            @CFSConfig.deserialize(params['CFSConfig'])
          end
          @SceneTags = params['SceneTags']
          @NumAnnotated = params['NumAnnotated']
          @AnnotationSpecification = params['AnnotationSpecification']
          @AnnotationSchemaConfigured = params['AnnotationSchemaConfigured']
          @CreatorNickname = params['CreatorNickname']
          @IsCfsUpdated = params['IsCfsUpdated']
        end
      end

      # 数据集详情
      class DatasetInfo < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetId: String
        # @param DatasetName: 数据集名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetName: String
        # @param Creator: 数据集创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param DatasetVersion: 数据集版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetVersion: String
        # @param DatasetType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetType: String
        # @param DatasetTags: 数据集标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetTags: Array
        # @param DatasetAnnotationTaskName: 数据集对应标注任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskName: String
        # @param DatasetAnnotationTaskId: 数据集对应标注任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskId: String
        # @param Process: 处理进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Integer
        # @param DatasetStatus: 数据集状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetStatus: String
        # @param ErrorMsg: 错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param CreateTime: 数据集创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 数据集更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ExternalTaskType: 外部任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalTaskType: String
        # @param DatasetSize: 数据集存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetSize: String
        # @param FileNum: 数据集数据数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileNum: Integer
        # @param StorageDataPath: 数据集源cos 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageDataPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StorageLabelPath: 数据集输出cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLabelPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param AnnotationStatus: 数据集标注状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationStatus: String
        # @param AnnotationType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationType: String
        # @param AnnotationFormat: 数据集标注格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationFormat: String
        # @param DatasetScope: 数据集范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetScope: String
        # @param OcrScene: 数据集OCR子场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrScene: String
        # @param AnnotationKeyStatus: 数据集字典修改状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationKeyStatus: String
        # @param ContentType: 内容类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentType: String
        # @param DatasetScene: 数据集建模类别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetScene: String
        # @param CFSConfig: CFS配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSConfig: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param SceneTags: 数据集标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneTags: Array
        # @param NumAnnotated: 已标注数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumAnnotated: Integer
        # @param AnnotationSpecification: 标注规范
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationSpecification: String
        # @param AnnotationSchemaConfigured: 标注Schema是否配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationSchemaConfigured: Boolean
        # @param CreatorNickname: 创建者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorNickname: String
        # @param IsCfsUpdated: cfs路径是否有修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCfsUpdated: Boolean

        attr_accessor :DatasetId, :DatasetName, :Creator, :DatasetVersion, :DatasetType, :DatasetTags, :DatasetAnnotationTaskName, :DatasetAnnotationTaskId, :Process, :DatasetStatus, :ErrorMsg, :CreateTime, :UpdateTime, :ExternalTaskType, :DatasetSize, :FileNum, :StorageDataPath, :StorageLabelPath, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :DatasetScope, :OcrScene, :AnnotationKeyStatus, :ContentType, :DatasetScene, :CFSConfig, :SceneTags, :NumAnnotated, :AnnotationSpecification, :AnnotationSchemaConfigured, :CreatorNickname, :IsCfsUpdated

        def initialize(datasetid=nil, datasetname=nil, creator=nil, datasetversion=nil, datasettype=nil, datasettags=nil, datasetannotationtaskname=nil, datasetannotationtaskid=nil, process=nil, datasetstatus=nil, errormsg=nil, createtime=nil, updatetime=nil, externaltasktype=nil, datasetsize=nil, filenum=nil, storagedatapath=nil, storagelabelpath=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, datasetscope=nil, ocrscene=nil, annotationkeystatus=nil, contenttype=nil, datasetscene=nil, cfsconfig=nil, scenetags=nil, numannotated=nil, annotationspecification=nil, annotationschemaconfigured=nil, creatornickname=nil, iscfsupdated=nil)
          @DatasetId = datasetid
          @DatasetName = datasetname
          @Creator = creator
          @DatasetVersion = datasetversion
          @DatasetType = datasettype
          @DatasetTags = datasettags
          @DatasetAnnotationTaskName = datasetannotationtaskname
          @DatasetAnnotationTaskId = datasetannotationtaskid
          @Process = process
          @DatasetStatus = datasetstatus
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExternalTaskType = externaltasktype
          @DatasetSize = datasetsize
          @FileNum = filenum
          @StorageDataPath = storagedatapath
          @StorageLabelPath = storagelabelpath
          @AnnotationStatus = annotationstatus
          @AnnotationType = annotationtype
          @AnnotationFormat = annotationformat
          @DatasetScope = datasetscope
          @OcrScene = ocrscene
          @AnnotationKeyStatus = annotationkeystatus
          @ContentType = contenttype
          @DatasetScene = datasetscene
          @CFSConfig = cfsconfig
          @SceneTags = scenetags
          @NumAnnotated = numannotated
          @AnnotationSpecification = annotationspecification
          @AnnotationSchemaConfigured = annotationschemaconfigured
          @CreatorNickname = creatornickname
          @IsCfsUpdated = iscfsupdated
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @DatasetName = params['DatasetName']
          @Creator = params['Creator']
          @DatasetVersion = params['DatasetVersion']
          @DatasetType = params['DatasetType']
          unless params['DatasetTags'].nil?
            @DatasetTags = []
            params['DatasetTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DatasetTags << tag_tmp
            end
          end
          @DatasetAnnotationTaskName = params['DatasetAnnotationTaskName']
          @DatasetAnnotationTaskId = params['DatasetAnnotationTaskId']
          @Process = params['Process']
          @DatasetStatus = params['DatasetStatus']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExternalTaskType = params['ExternalTaskType']
          @DatasetSize = params['DatasetSize']
          @FileNum = params['FileNum']
          unless params['StorageDataPath'].nil?
            @StorageDataPath = CosPathInfo.new
            @StorageDataPath.deserialize(params['StorageDataPath'])
          end
          unless params['StorageLabelPath'].nil?
            @StorageLabelPath = CosPathInfo.new
            @StorageLabelPath.deserialize(params['StorageLabelPath'])
          end
          @AnnotationStatus = params['AnnotationStatus']
          @AnnotationType = params['AnnotationType']
          @AnnotationFormat = params['AnnotationFormat']
          @DatasetScope = params['DatasetScope']
          @OcrScene = params['OcrScene']
          @AnnotationKeyStatus = params['AnnotationKeyStatus']
          @ContentType = params['ContentType']
          @DatasetScene = params['DatasetScene']
          unless params['CFSConfig'].nil?
            @CFSConfig = CFSConfig.new
            @CFSConfig.deserialize(params['CFSConfig'])
          end
          @SceneTags = params['SceneTags']
          @NumAnnotated = params['NumAnnotated']
          @AnnotationSpecification = params['AnnotationSpecification']
          @AnnotationSchemaConfigured = params['AnnotationSchemaConfigured']
          @CreatorNickname = params['CreatorNickname']
          @IsCfsUpdated = params['IsCfsUpdated']
        end
      end

      # 默认内网调用信息
      class DefaultInnerCallInfo < TencentCloud::Common::AbstractModel
        # @param VpcIds: 可以进行调用的VPC-ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcIds: Array
        # @param InnerHttpAddr: 默认内网调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpAddr: String

        attr_accessor :VpcIds, :InnerHttpAddr

        def initialize(vpcids=nil, innerhttpaddr=nil)
          @VpcIds = vpcids
          @InnerHttpAddr = innerhttpaddr
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
          @InnerHttpAddr = params['InnerHttpAddr']
        end
      end

      # 默认Nginx网关结构
      class DefaultNginxGatewayCallInfo < TencentCloud::Common::AbstractModel
        # @param Host: host
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String

        attr_accessor :Host

        def initialize(host=nil)
          @Host = host
        end

        def deserialize(params)
          @Host = params['Host']
        end
      end

      # DeleteDataset请求参数结构体
      class DeleteDatasetRequest < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集id
        # @type DatasetId: String
        # @param DeleteLabelEnable: 是否删除cos标签文件
        # @type DeleteLabelEnable: Boolean

        attr_accessor :DatasetId, :DeleteLabelEnable

        def initialize(datasetid=nil, deletelabelenable=nil)
          @DatasetId = datasetid
          @DeleteLabelEnable = deletelabelenable
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @DeleteLabelEnable = params['DeleteLabelEnable']
        end
      end

      # DeleteDataset返回参数结构体
      class DeleteDatasetResponse < TencentCloud::Common::AbstractModel
        # @param DatasetId: 删除的datasetId
        # @type DatasetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatasetId, :RequestId

        def initialize(datasetid=nil, requestid=nil)
          @DatasetId = datasetid
          @RequestId = requestid
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteModelServiceAuthToken请求参数结构体
      class DeleteModelServiceAuthTokenRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组 id
        # @type ServiceGroupId: String
        # @param AuthTokenValue: token 值
        # @type AuthTokenValue: String

        attr_accessor :ServiceGroupId, :AuthTokenValue

        def initialize(servicegroupid=nil, authtokenvalue=nil)
          @ServiceGroupId = servicegroupid
          @AuthTokenValue = authtokenvalue
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @AuthTokenValue = params['AuthTokenValue']
        end
      end

      # DeleteModelServiceAuthToken返回参数结构体
      class DeleteModelServiceAuthTokenResponse < TencentCloud::Common::AbstractModel
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

      # DeleteModelServiceGroup请求参数结构体
      class DeleteModelServiceGroupRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务id
        # @type ServiceGroupId: String

        attr_accessor :ServiceGroupId

        def initialize(servicegroupid=nil)
          @ServiceGroupId = servicegroupid
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
        end
      end

      # DeleteModelServiceGroup返回参数结构体
      class DeleteModelServiceGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteModelService请求参数结构体
      class DeleteModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param ServiceCategory: 服务分类
        # @type ServiceCategory: String

        attr_accessor :ServiceId, :ServiceCategory

        def initialize(serviceid=nil, servicecategory=nil)
          @ServiceId = serviceid
          @ServiceCategory = servicecategory
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceCategory = params['ServiceCategory']
        end
      end

      # DeleteModelService返回参数结构体
      class DeleteModelServiceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNotebook请求参数结构体
      class DeleteNotebookRequest < TencentCloud::Common::AbstractModel
        # @param Id: notebook id
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteNotebook返回参数结构体
      class DeleteNotebookResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTrainingModel请求参数结构体
      class DeleteTrainingModelRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型ID
        # @type TrainingModelId: String
        # @param EnableDeleteCos: 是否同步清理cos
        # @type EnableDeleteCos: Boolean
        # @param ModelVersionType: 删除模型类型，枚举值：NORMAL 普通，ACCELERATE 加速，不传则删除所有
        # @type ModelVersionType: String

        attr_accessor :TrainingModelId, :EnableDeleteCos, :ModelVersionType

        def initialize(trainingmodelid=nil, enabledeletecos=nil, modelversiontype=nil)
          @TrainingModelId = trainingmodelid
          @EnableDeleteCos = enabledeletecos
          @ModelVersionType = modelversiontype
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          @EnableDeleteCos = params['EnableDeleteCos']
          @ModelVersionType = params['ModelVersionType']
        end
      end

      # DeleteTrainingModel返回参数结构体
      class DeleteTrainingModelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTrainingModelVersion请求参数结构体
      class DeleteTrainingModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersionId: 模型版本ID
        # @type TrainingModelVersionId: String
        # @param EnableDeleteCos: 是否同步清理cos
        # @type EnableDeleteCos: Boolean

        attr_accessor :TrainingModelVersionId, :EnableDeleteCos

        def initialize(trainingmodelversionid=nil, enabledeletecos=nil)
          @TrainingModelVersionId = trainingmodelversionid
          @EnableDeleteCos = enabledeletecos
        end

        def deserialize(params)
          @TrainingModelVersionId = params['TrainingModelVersionId']
          @EnableDeleteCos = params['EnableDeleteCos']
        end
      end

      # DeleteTrainingModelVersion返回参数结构体
      class DeleteTrainingModelVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTrainingTask请求参数结构体
      class DeleteTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteTrainingTask返回参数结构体
      class DeleteTrainingTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBillingResourceGroup请求参数结构体
      class DescribeBillingResourceGroupRequest < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组id, 取值为创建资源组接口(CreateBillingResourceGroup)响应中的ResourceGroupId
        # @type ResourceGroupId: String
        # @param Filters: 过滤条件
        # 注意:
        # 1. Filter.Name 只支持以下枚举值:
        #     InstanceId (资源组节点id)
        #     InstanceStatus (资源组节点状态)
        # 2. Filter.Values: 长度为1且Filter.Fuzzy=true时，支持模糊查询; 不为1时，精确查询
        # 3. 每次请求的Filters的上限为10，Filter.Values的上限为100
        # @type Filters: Array
        # @param Offset: 分页查询起始位置，如：Limit为10，第一页Offset为0，第二页Offset为10....即每页左边为闭区间; 默认0
        # @type Offset: Integer
        # @param Limit: 分页查询每页大小，默认20
        # @type Limit: Integer
        # @param Order: 排序方向; 枚举值: ASC | DESC；默认DESC
        # @type Order: String
        # @param OrderField: 排序字段; 枚举值: CreateTime (创建时间) ｜ ExpireTime (到期时间)；默认CreateTime
        # @type OrderField: String

        attr_accessor :ResourceGroupId, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(resourcegroupid=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @ResourceGroupId = resourcegroupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
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

      # DescribeBillingResourceGroup返回参数结构体
      class DescribeBillingResourceGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源组节点总数； 注意接口是分页拉取的，total是指资源组节点总数，不是本次返回中InstanceSet数组的大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstanceSet: 资源组节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSet: Array
        # @param ResourceGroupSWType: 资源组纳管类型
        # @type ResourceGroupSWType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :ResourceGroupSWType, :RequestId

        def initialize(totalcount=nil, instanceset=nil, resourcegroupswtype=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @ResourceGroupSWType = resourcegroupswtype
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
          @ResourceGroupSWType = params['ResourceGroupSWType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingResourceGroups请求参数结构体
      class DescribeBillingResourceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 资源组类型;
        # 枚举值:
        # 空: 通用, TRAIN: 训练, INFERENCE: 推理
        # @type Type: String
        # @param Filters: Filter.Name: 枚举值: ResourceGroupId (资源组id列表)                    ResourceGroupName (资源组名称列表)                    AvailableNodeCount（资源组中可用节点数量）Filter.Values: 长度为1且Filter.Fuzzy=true时，支持模糊查询; 不为1时，精确查询每次请求的Filters的上限为5，Filter.Values的上限为100
        # @type Filters: Array
        # @param TagFilters: 标签过滤
        # @type TagFilters: Array
        # @param Offset: 偏移量，默认为0；分页查询起始位置，如：Limit为100，第一页Offset为0，第二页OffSet为100....即每页左边为闭区间
        # @type Offset: Integer
        # @param Limit: 分页查询每页大小，默认20
        # @type Limit: Integer
        # @param SearchWord: 支持模糊查找资源组id和资源组名
        # @type SearchWord: String
        # @param DontShowInstanceSet: 是否不展示节点列表;
        # true: 不展示，false 展示；
        # 默认为false
        # @type DontShowInstanceSet: Boolean

        attr_accessor :Type, :Filters, :TagFilters, :Offset, :Limit, :SearchWord, :DontShowInstanceSet

        def initialize(type=nil, filters=nil, tagfilters=nil, offset=nil, limit=nil, searchword=nil, dontshowinstanceset=nil)
          @Type = type
          @Filters = filters
          @TagFilters = tagfilters
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @DontShowInstanceSet = dontshowinstanceset
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @DontShowInstanceSet = params['DontShowInstanceSet']
        end
      end

      # DescribeBillingResourceGroups返回参数结构体
      class DescribeBillingResourceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源组总数； 注意接口是分页拉取的，total是指资源组总数，不是本次返回中ResourceGroupSet数组的大小
        # @type TotalCount: Integer
        # @param ResourceGroupSet: 资源组详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceGroupSet, :RequestId

        def initialize(totalcount=nil, resourcegroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceGroupSet = resourcegroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceGroupSet'].nil?
            @ResourceGroupSet = []
            params['ResourceGroupSet'].each do |i|
              resourcegroup_tmp = ResourceGroup.new
              resourcegroup_tmp.deserialize(i)
              @ResourceGroupSet << resourcegroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingResourceInstanceRunningJobs请求参数结构体
      class DescribeBillingResourceInstanceRunningJobsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组id
        # @type ResourceGroupId: String
        # @param ResourceInstanceId: 资源组节点id
        # @type ResourceInstanceId: String

        attr_accessor :ResourceGroupId, :ResourceInstanceId

        def initialize(resourcegroupid=nil, resourceinstanceid=nil)
          @ResourceGroupId = resourcegroupid
          @ResourceInstanceId = resourceinstanceid
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceInstanceId = params['ResourceInstanceId']
        end
      end

      # DescribeBillingResourceInstanceRunningJobs返回参数结构体
      class DescribeBillingResourceInstanceRunningJobsResponse < TencentCloud::Common::AbstractModel
        # @param ResourceInstanceRunningJobInfos: 资源组节点运行中的任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceInstanceRunningJobInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceInstanceRunningJobInfos, :RequestId

        def initialize(resourceinstancerunningjobinfos=nil, requestid=nil)
          @ResourceInstanceRunningJobInfos = resourceinstancerunningjobinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceInstanceRunningJobInfos'].nil?
            @ResourceInstanceRunningJobInfos = []
            params['ResourceInstanceRunningJobInfos'].each do |i|
              resourceinstancerunningjobinfo_tmp = ResourceInstanceRunningJobInfo.new
              resourceinstancerunningjobinfo_tmp.deserialize(i)
              @ResourceInstanceRunningJobInfos << resourceinstancerunningjobinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingSpecsPrice请求参数结构体
      class DescribeBillingSpecsPriceRequest < TencentCloud::Common::AbstractModel
        # @param SpecsParam: 询价参数，支持批量询价
        # @type SpecsParam: Array

        attr_accessor :SpecsParam

        def initialize(specsparam=nil)
          @SpecsParam = specsparam
        end

        def deserialize(params)
          unless params['SpecsParam'].nil?
            @SpecsParam = []
            params['SpecsParam'].each do |i|
              specunit_tmp = SpecUnit.new
              specunit_tmp.deserialize(i)
              @SpecsParam << specunit_tmp
            end
          end
        end
      end

      # DescribeBillingSpecsPrice返回参数结构体
      class DescribeBillingSpecsPriceResponse < TencentCloud::Common::AbstractModel
        # @param SpecsPrice: 计费项价格，支持批量返回
        # @type SpecsPrice: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecsPrice, :RequestId

        def initialize(specsprice=nil, requestid=nil)
          @SpecsPrice = specsprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecsPrice'].nil?
            @SpecsPrice = []
            params['SpecsPrice'].each do |i|
              specprice_tmp = SpecPrice.new
              specprice_tmp.deserialize(i)
              @SpecsPrice << specprice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingSpecs请求参数结构体
      class DescribeBillingSpecsRequest < TencentCloud::Common::AbstractModel
        # @param ChargeType: 付费模式：POSTPAID_BY_HOUR按量计费、PREPAID包年包月
        # @type ChargeType: String
        # @param TaskType: 枚举值：空、TRAIN、NOTEBOOK、INFERENCE或EMS
        # @type TaskType: String
        # @param ResourceType: 资源类型：["", "CALC", "CPU", "GPU", "GPU-SW"]
        # @type ResourceType: String

        attr_accessor :ChargeType, :TaskType, :ResourceType

        def initialize(chargetype=nil, tasktype=nil, resourcetype=nil)
          @ChargeType = chargetype
          @TaskType = tasktype
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
          @TaskType = params['TaskType']
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeBillingSpecs返回参数结构体
      class DescribeBillingSpecsResponse < TencentCloud::Common::AbstractModel
        # @param Specs: 计费项列表
        # @type Specs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Specs, :RequestId

        def initialize(specs=nil, requestid=nil)
          @Specs = specs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Specs'].nil?
            @Specs = []
            params['Specs'].each do |i|
              spec_tmp = Spec.new
              spec_tmp.deserialize(i)
              @Specs << spec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBuildInImages请求参数结构体
      class DescribeBuildInImagesRequest < TencentCloud::Common::AbstractModel
        # @param ImageFilters: 镜像过滤器
        # @type ImageFilters: Array

        attr_accessor :ImageFilters

        def initialize(imagefilters=nil)
          @ImageFilters = imagefilters
        end

        def deserialize(params)
          unless params['ImageFilters'].nil?
            @ImageFilters = []
            params['ImageFilters'].each do |i|
              imagefilter_tmp = ImageFIlter.new
              imagefilter_tmp.deserialize(i)
              @ImageFilters << imagefilter_tmp
            end
          end
        end
      end

      # DescribeBuildInImages返回参数结构体
      class DescribeBuildInImagesResponse < TencentCloud::Common::AbstractModel
        # @param BuildInImageInfos: 内置镜像详情列表
        # @type BuildInImageInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BuildInImageInfos, :RequestId

        def initialize(buildinimageinfos=nil, requestid=nil)
          @BuildInImageInfos = buildinimageinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BuildInImageInfos'].nil?
            @BuildInImageInfos = []
            params['BuildInImageInfos'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @BuildInImageInfos << imageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasets请求参数结构体
      class DescribeDatasetsRequest < TencentCloud::Common::AbstractModel
        # @param DatasetIds: 数据集id列表
        # @type DatasetIds: Array
        # @param Filters: 数据集查询过滤条件，多个Filter之间的关系为逻辑与（AND）关系，过滤字段Filter.Name，类型为String
        # DatasetName，数据集名称
        # DatasetScope，数据集范围，SCOPE_DATASET_PRIVATE或SCOPE_DATASET_PUBLIC
        # @type Filters: Array
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array
        # @param Order: 排序值，支持Asc或Desc，默认Desc
        # @type Order: String
        # @param OrderField: 排序字段，支持CreateTime或UpdateTime，默认CreateTime
        # @type OrderField: String
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 返回数据个数，默认20，最大支持200
        # @type Limit: Integer
        # @param CFSChecking: 是否检查CFS。若开启，则在CFS挂载好之前，不会返回数据集列表。
        # @type CFSChecking: Boolean
        # @param CFSDetail: 是否返回CFS详情。
        # @type CFSDetail: Boolean

        attr_accessor :DatasetIds, :Filters, :TagFilters, :Order, :OrderField, :Offset, :Limit, :CFSChecking, :CFSDetail

        def initialize(datasetids=nil, filters=nil, tagfilters=nil, order=nil, orderfield=nil, offset=nil, limit=nil, cfschecking=nil, cfsdetail=nil)
          @DatasetIds = datasetids
          @Filters = filters
          @TagFilters = tagfilters
          @Order = order
          @OrderField = orderfield
          @Offset = offset
          @Limit = limit
          @CFSChecking = cfschecking
          @CFSDetail = cfsdetail
        end

        def deserialize(params)
          @DatasetIds = params['DatasetIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Order = params['Order']
          @OrderField = params['OrderField']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CFSChecking = params['CFSChecking']
          @CFSDetail = params['CFSDetail']
        end
      end

      # DescribeDatasets返回参数结构体
      class DescribeDatasetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据集总量（名称维度）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param DatasetGroups: 数据集按照数据集名称聚合的分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetGroups: Array
        # @param DatasetIdNums: 数据集ID总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetIdNums: Integer
        # @param CFSNotReady: 若开启了CFSChecking，则检查CFS是否准备完毕。若CFS未准备完毕，则返回true，并且TotalCount为0，DatasetGroups为空。
        # @type CFSNotReady: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DatasetGroups, :DatasetIdNums, :CFSNotReady, :RequestId

        def initialize(totalcount=nil, datasetgroups=nil, datasetidnums=nil, cfsnotready=nil, requestid=nil)
          @TotalCount = totalcount
          @DatasetGroups = datasetgroups
          @DatasetIdNums = datasetidnums
          @CFSNotReady = cfsnotready
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DatasetGroups'].nil?
            @DatasetGroups = []
            params['DatasetGroups'].each do |i|
              datasetgroup_tmp = DatasetGroup.new
              datasetgroup_tmp.deserialize(i)
              @DatasetGroups << datasetgroup_tmp
            end
          end
          @DatasetIdNums = params['DatasetIdNums']
          @CFSNotReady = params['CFSNotReady']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEvents请求参数结构体
      class DescribeEventsRequest < TencentCloud::Common::AbstractModel
        # @param Service: 服务类型，TRAIN为任务式建模, NOTEBOOK为Notebook, INFER为在线服务, BATCH为批量预测
        # 枚举值：
        # - TRAIN
        # - NOTEBOOK
        # - INFER
        # - BATCH
        # @type Service: String
        # @param ServiceId: 服务ID，和Service参数对应，不同Service的服务ID获取方式不同，具体如下：
        # - Service类型为TRAIN：
        #   调用[DescribeTrainingTask接口](/document/product/851/75089)查询训练任务详情，ServiceId为接口返回值中Response.TrainingTaskDetail.LatestInstanceId
        # - Service类型为NOTEBOOK：
        #   调用[DescribeNotebook接口](/document/product/851/95662)查询Notebook详情，ServiceId为接口返回值中Response.NotebookDetail.PodName
        # - Service类型为INFER：
        #   调用[DescribeModelServiceGroup接口](/document/product/851/82285)查询服务组详情，ServiceId为接口返回值中Response.ServiceGroup.Services.ServiceId
        # - Service类型为BATCH：
        #   调用[DescribeBatchTask接口](/document/product/851/80180)查询跑批任务详情，ServiceId为接口返回值中Response.BatchTaskDetail.LatestInstanceId
        # @type ServiceId: String
        # @param StartTime: 查询事件最早发生的时间（RFC3339格式的时间字符串），默认值为当前时间的前一天
        # @type StartTime: String
        # @param EndTime: 查询事件最晚发生的时间（RFC3339格式的时间字符串），默认值为当前时间
        # @type EndTime: String
        # @param Limit: 分页Limit，默认值为100，最大值为100
        # @type Limit: Integer
        # @param Offset: 分页Offset，默认值为0
        # @type Offset: Integer
        # @param Order: 排列顺序（可选值为ASC, DESC ），默认为DESC
        # @type Order: String
        # @param OrderField: 排序的依据字段（可选值为FirstTimestamp, LastTimestamp），默认值为LastTimestamp
        # @type OrderField: String
        # @param Filters: 过滤条件
        # 注意:
        # 1. Filter.Name：目前支持ResourceKind（按事件关联的资源类型过滤）；Type（按事件类型过滤）
        # 2. Filter.Values：
        # 对于Name为ResourceKind，Values的可选取值为Deployment, Replicaset, Pod等K8S资源类型；
        # 对于Name为Type，Values的可选取值仅为Normal或者Warning；
        # Values为多个的时候表示同时满足
        # 3. Filter. Negative和Filter. Fuzzy没有使用
        # @type Filters: Array

        attr_accessor :Service, :ServiceId, :StartTime, :EndTime, :Limit, :Offset, :Order, :OrderField, :Filters

        def initialize(service=nil, serviceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, order=nil, orderfield=nil, filters=nil)
          @Service = service
          @ServiceId = serviceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Order = order
          @OrderField = orderfield
          @Filters = filters
        end

        def deserialize(params)
          @Service = params['Service']
          @ServiceId = params['ServiceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @OrderField = params['OrderField']
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

      # DescribeEvents返回参数结构体
      class DescribeEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 事件的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param TotalCount: 此次查询的事件的个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :TotalCount, :RequestId

        def initialize(events=nil, totalcount=nil, requestid=nil)
          @Events = events
          @TotalCount = totalcount
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
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInferTemplates请求参数结构体
      class DescribeInferTemplatesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInferTemplates返回参数结构体
      class DescribeInferTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param FrameworkTemplates: 模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkTemplates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrameworkTemplates, :RequestId

        def initialize(frameworktemplates=nil, requestid=nil)
          @FrameworkTemplates = frameworktemplates
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FrameworkTemplates'].nil?
            @FrameworkTemplates = []
            params['FrameworkTemplates'].each do |i|
              infertemplategroup_tmp = InferTemplateGroup.new
              infertemplategroup_tmp.deserialize(i)
              @FrameworkTemplates << infertemplategroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogs请求参数结构体
      class DescribeLogsRequest < TencentCloud::Common::AbstractModel
        # @param Service: 服务类型，TRAIN为任务式建模, NOTEBOOK为Notebook, INFER为在线服务, BATCH为批量预测
        # 枚举值：
        # - TRAIN
        # - NOTEBOOK
        # - INFER
        # - BATCH
        # @type Service: String
        # @param StartTime: 日志查询开始时间（RFC3339格式的时间字符串），默认值为当前时间的前一个小时
        # @type StartTime: String
        # @param EndTime: 日志查询结束时间（RFC3339格式的时间字符串），默认值为当前时间
        # @type EndTime: String
        # @param Limit: 日志查询条数，默认值100，最大值100
        # @type Limit: Integer
        # @param ServiceId: 服务ID，和Service参数对应，不同Service的服务ID获取方式不同，具体如下：
        # - Service类型为TRAIN：
        #   调用[DescribeTrainingTask接口](/document/product/851/75089)查询训练任务详情，ServiceId为接口返回值中Response.TrainingTaskDetail.LatestInstanceId
        # - Service类型为NOTEBOOK：
        #   调用[DescribeNotebook接口](/document/product/851/95662)查询Notebook详情，ServiceId为接口返回值中Response.NotebookDetail.PodName
        # - Service类型为INFER：
        #   调用[DescribeModelServiceGroup接口](/document/product/851/82285)查询服务组详情，ServiceId为接口返回值中Response.ServiceGroup.Services.ServiceId
        # - Service类型为BATCH：
        #   调用[DescribeBatchTask接口](/document/product/851/80180)查询跑批任务详情，ServiceId为接口返回值中Response.BatchTaskDetail.LatestInstanceId
        # @type ServiceId: String
        # @param PodName: Pod的名称，即需要查询服务对应的Pod，和Service参数对应，不同Service的PodName获取方式不同，具体如下：
        # - Service类型为TRAIN：
        #   调用[DescribeTrainingTaskPods接口](/document/product/851/75088)查询训练任务pod列表，PodName为接口返回值中Response.PodNames
        # - Service类型为NOTEBOOK：
        #   调用[DescribeNotebook接口](/document/product/851/95662)查询Notebook详情，PodName为接口返回值中Response.NotebookDetail.PodName
        # - Service类型为INFER：
        #   调用[DescribeModelService接口](/document/product/851/82287)查询单个服务详情，PodName为接口返回值中Response.Service.ServiceInfo.PodInfos
        # - Service类型为BATCH：
        #   调用[DescribeBatchTask接口](/document/product/851/80180)查询跑批任务详情，PodName为接口返回值中Response.BatchTaskDetail. PodList
        # 注：支持结尾通配符*
        # @type PodName: String
        # @param Order: 排序方向（可选值为ASC, DESC ），默认为DESC
        # @type Order: String
        # @param OrderField: 按哪个字段排序（可选值为Timestamp），默认值为Timestamp
        # @type OrderField: String
        # @param Context: 日志查询上下文，查询下一页的时候需要回传这个字段，该字段来自本接口的返回
        # @type Context: String
        # @param Filters: 过滤条件
        # 注意:
        # 1. Filter.Name：目前只支持Key（也就是按关键字过滤日志）
        # 2. Filter.Values：表示过滤日志的关键字；Values为多个的时候表示同时满足
        # 3. Filter. Negative和Filter. Fuzzy没有使用
        # @type Filters: Array

        attr_accessor :Service, :StartTime, :EndTime, :Limit, :ServiceId, :PodName, :Order, :OrderField, :Context, :Filters

        def initialize(service=nil, starttime=nil, endtime=nil, limit=nil, serviceid=nil, podname=nil, order=nil, orderfield=nil, context=nil, filters=nil)
          @Service = service
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @ServiceId = serviceid
          @PodName = podname
          @Order = order
          @OrderField = orderfield
          @Context = context
          @Filters = filters
        end

        def deserialize(params)
          @Service = params['Service']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @ServiceId = params['ServiceId']
          @PodName = params['PodName']
          @Order = params['Order']
          @OrderField = params['OrderField']
          @Context = params['Context']
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

      # DescribeLogs返回参数结构体
      class DescribeLogsResponse < TencentCloud::Common::AbstractModel
        # @param Context: 分页的游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Content: 日志数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Content, :RequestId

        def initialize(context=nil, content=nil, requestid=nil)
          @Context = context
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              logidentity_tmp = LogIdentity.new
              logidentity_tmp.deserialize(i)
              @Content << logidentity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelAccelerateTask请求参数结构体
      class DescribeModelAccelerateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskId: 模型加速任务ID
        # @type ModelAccTaskId: String

        attr_accessor :ModelAccTaskId

        def initialize(modelacctaskid=nil)
          @ModelAccTaskId = modelacctaskid
        end

        def deserialize(params)
          @ModelAccTaskId = params['ModelAccTaskId']
        end
      end

      # DescribeModelAccelerateTask返回参数结构体
      class DescribeModelAccelerateTaskResponse < TencentCloud::Common::AbstractModel
        # @param ModelAccelerateTask: 模型加速任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccelerateTask: :class:`Tencentcloud::Tione.v20211111.models.ModelAccelerateTask`
        # @param ModelAccRuntimeInSecond: 模型加速时长，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccRuntimeInSecond: Integer
        # @param ModelAccStartTime: 模型加速任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccStartTime: String
        # @param ModelAccEndTime: 模型加速任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccEndTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAccelerateTask, :ModelAccRuntimeInSecond, :ModelAccStartTime, :ModelAccEndTime, :RequestId

        def initialize(modelacceleratetask=nil, modelaccruntimeinsecond=nil, modelaccstarttime=nil, modelaccendtime=nil, requestid=nil)
          @ModelAccelerateTask = modelacceleratetask
          @ModelAccRuntimeInSecond = modelaccruntimeinsecond
          @ModelAccStartTime = modelaccstarttime
          @ModelAccEndTime = modelaccendtime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelAccelerateTask'].nil?
            @ModelAccelerateTask = ModelAccelerateTask.new
            @ModelAccelerateTask.deserialize(params['ModelAccelerateTask'])
          end
          @ModelAccRuntimeInSecond = params['ModelAccRuntimeInSecond']
          @ModelAccStartTime = params['ModelAccStartTime']
          @ModelAccEndTime = params['ModelAccEndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelAccelerateVersions请求参数结构体
      class DescribeModelAccelerateVersionsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        #     Filter.Name: 枚举值: ModelJobName (任务名称)|TrainingModelVersionId (模型版本id)
        #     Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为10，Filter.Values的上限为100
        # @type Filters: Array
        # @param OrderField: 排序字段; 枚举值: CreateTime (创建时间) ；默认CreateTime
        # @type OrderField: String
        # @param Order: 排序方向; 枚举值: ASC | DESC；默认DESC
        # @type Order: String
        # @param Offset: 分页查询起始位置，如：Limit为100，第一页Offset为0，第二页Offset为100....即每页左边为闭区间; 默认0
        # @type Offset: Integer
        # @param Limit: 分页查询每页大小，最大20000; 默认10
        # @type Limit: Integer
        # @param TrainingModelId: 模型ID
        # @type TrainingModelId: String

        attr_accessor :Filters, :OrderField, :Order, :Offset, :Limit, :TrainingModelId

        def initialize(filters=nil, orderfield=nil, order=nil, offset=nil, limit=nil, trainingmodelid=nil)
          @Filters = filters
          @OrderField = orderfield
          @Order = order
          @Offset = offset
          @Limit = limit
          @TrainingModelId = trainingmodelid
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
          @OrderField = params['OrderField']
          @Order = params['Order']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TrainingModelId = params['TrainingModelId']
        end
      end

      # DescribeModelAccelerateVersions返回参数结构体
      class DescribeModelAccelerateVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 优化模型总数； 注意接口是分页拉取的，total是指优化模型节点总数，不是本次返回中ModelAccelerateVersions数组的大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ModelAccelerateVersions: 优化模型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccelerateVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ModelAccelerateVersions, :RequestId

        def initialize(totalcount=nil, modelaccelerateversions=nil, requestid=nil)
          @TotalCount = totalcount
          @ModelAccelerateVersions = modelaccelerateversions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ModelAccelerateVersions'].nil?
            @ModelAccelerateVersions = []
            params['ModelAccelerateVersions'].each do |i|
              modelaccelerateversion_tmp = ModelAccelerateVersion.new
              modelaccelerateversion_tmp.deserialize(i)
              @ModelAccelerateVersions << modelaccelerateversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelServiceCallInfo请求参数结构体
      class DescribeModelServiceCallInfoRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组id
        # @type ServiceGroupId: String
        # @param ServiceCategory: 服务分类
        # @type ServiceCategory: String

        attr_accessor :ServiceGroupId, :ServiceCategory

        def initialize(servicegroupid=nil, servicecategory=nil)
          @ServiceGroupId = servicegroupid
          @ServiceCategory = servicecategory
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @ServiceCategory = params['ServiceCategory']
        end
      end

      # DescribeModelServiceCallInfo返回参数结构体
      class DescribeModelServiceCallInfoResponse < TencentCloud::Common::AbstractModel
        # @param ServiceCallInfo: 服务调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCallInfo: :class:`Tencentcloud::Tione.v20211111.models.ServiceCallInfo`
        # @param InferGatewayCallInfo: 升级网关调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InferGatewayCallInfo: :class:`Tencentcloud::Tione.v20211111.models.InferGatewayCallInfo`
        # @param DefaultNginxGatewayCallInfo: 默认nginx网关的调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultNginxGatewayCallInfo: :class:`Tencentcloud::Tione.v20211111.models.DefaultNginxGatewayCallInfo`
        # @param TJCallInfo: 太极服务的调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TJCallInfo: :class:`Tencentcloud::Tione.v20211111.models.TJCallInfo`
        # @param IntranetCallInfo: 内网调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetCallInfo: :class:`Tencentcloud::Tione.v20211111.models.IntranetCallInfo`
        # @param ServiceCallInfoV2: 基于新网关的服务调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCallInfoV2: :class:`Tencentcloud::Tione.v20211111.models.ServiceCallInfoV2`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceCallInfo, :InferGatewayCallInfo, :DefaultNginxGatewayCallInfo, :TJCallInfo, :IntranetCallInfo, :ServiceCallInfoV2, :RequestId

        def initialize(servicecallinfo=nil, infergatewaycallinfo=nil, defaultnginxgatewaycallinfo=nil, tjcallinfo=nil, intranetcallinfo=nil, servicecallinfov2=nil, requestid=nil)
          @ServiceCallInfo = servicecallinfo
          @InferGatewayCallInfo = infergatewaycallinfo
          @DefaultNginxGatewayCallInfo = defaultnginxgatewaycallinfo
          @TJCallInfo = tjcallinfo
          @IntranetCallInfo = intranetcallinfo
          @ServiceCallInfoV2 = servicecallinfov2
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceCallInfo'].nil?
            @ServiceCallInfo = ServiceCallInfo.new
            @ServiceCallInfo.deserialize(params['ServiceCallInfo'])
          end
          unless params['InferGatewayCallInfo'].nil?
            @InferGatewayCallInfo = InferGatewayCallInfo.new
            @InferGatewayCallInfo.deserialize(params['InferGatewayCallInfo'])
          end
          unless params['DefaultNginxGatewayCallInfo'].nil?
            @DefaultNginxGatewayCallInfo = DefaultNginxGatewayCallInfo.new
            @DefaultNginxGatewayCallInfo.deserialize(params['DefaultNginxGatewayCallInfo'])
          end
          unless params['TJCallInfo'].nil?
            @TJCallInfo = TJCallInfo.new
            @TJCallInfo.deserialize(params['TJCallInfo'])
          end
          unless params['IntranetCallInfo'].nil?
            @IntranetCallInfo = IntranetCallInfo.new
            @IntranetCallInfo.deserialize(params['IntranetCallInfo'])
          end
          unless params['ServiceCallInfoV2'].nil?
            @ServiceCallInfoV2 = ServiceCallInfoV2.new
            @ServiceCallInfoV2.deserialize(params['ServiceCallInfoV2'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelServiceGroup请求参数结构体
      class DescribeModelServiceGroupRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组ID
        # @type ServiceGroupId: String
        # @param ServiceCategory: 服务分类
        # @type ServiceCategory: String

        attr_accessor :ServiceGroupId, :ServiceCategory

        def initialize(servicegroupid=nil, servicecategory=nil)
          @ServiceGroupId = servicegroupid
          @ServiceCategory = servicecategory
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @ServiceCategory = params['ServiceCategory']
        end
      end

      # DescribeModelServiceGroup返回参数结构体
      class DescribeModelServiceGroupResponse < TencentCloud::Common::AbstractModel
        # @param ServiceGroup: 服务组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGroup: :class:`Tencentcloud::Tione.v20211111.models.ServiceGroup`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceGroup, :RequestId

        def initialize(servicegroup=nil, requestid=nil)
          @ServiceGroup = servicegroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceGroup'].nil?
            @ServiceGroup = ServiceGroup.new
            @ServiceGroup.deserialize(params['ServiceGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelServiceGroups请求参数结构体
      class DescribeModelServiceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        # @type OrderField: String
        # @param Filters: 分页参数，支持的分页过滤Name包括：
        # ["ClusterId", "ServiceId", "ServiceGroupName", "ServiceGroupId","Status","CreatedBy","ModelVersionId"]
        # @type Filters: Array
        # @param TagFilters: 标签过滤参数
        # @type TagFilters: Array
        # @param ServiceCategory: 服务分类
        # @type ServiceCategory: String

        attr_accessor :Offset, :Limit, :Order, :OrderField, :Filters, :TagFilters, :ServiceCategory

        def initialize(offset=nil, limit=nil, order=nil, orderfield=nil, filters=nil, tagfilters=nil, servicecategory=nil)
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @Filters = filters
          @TagFilters = tagfilters
          @ServiceCategory = servicecategory
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @ServiceCategory = params['ServiceCategory']
        end
      end

      # DescribeModelServiceGroups返回参数结构体
      class DescribeModelServiceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 推理服务组数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ServiceGroups: 服务组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ServiceGroups, :RequestId

        def initialize(totalcount=nil, servicegroups=nil, requestid=nil)
          @TotalCount = totalcount
          @ServiceGroups = servicegroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceGroups'].nil?
            @ServiceGroups = []
            params['ServiceGroups'].each do |i|
              servicegroup_tmp = ServiceGroup.new
              servicegroup_tmp.deserialize(i)
              @ServiceGroups << servicegroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelServiceHotUpdated请求参数结构体
      class DescribeModelServiceHotUpdatedRequest < TencentCloud::Common::AbstractModel
        # @param ImageInfo: 镜像信息，配置服务运行所需的镜像地址等信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ModelInfo: 模型信息，需要挂载模型时填写
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param VolumeMount: 挂载信息
        # @type VolumeMount: :class:`Tencentcloud::Tione.v20211111.models.VolumeMount`

        attr_accessor :ImageInfo, :ModelInfo, :VolumeMount

        def initialize(imageinfo=nil, modelinfo=nil, volumemount=nil)
          @ImageInfo = imageinfo
          @ModelInfo = modelinfo
          @VolumeMount = volumemount
        end

        def deserialize(params)
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['VolumeMount'].nil?
            @VolumeMount = VolumeMount.new
            @VolumeMount.deserialize(params['VolumeMount'])
          end
        end
      end

      # DescribeModelServiceHotUpdated返回参数结构体
      class DescribeModelServiceHotUpdatedResponse < TencentCloud::Common::AbstractModel
        # @param ModelTurboFlag: 模型加速标志位.Allowed 允许模型加速. Forbidden 禁止模型加速
        # @type ModelTurboFlag: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelTurboFlag, :RequestId

        def initialize(modelturboflag=nil, requestid=nil)
          @ModelTurboFlag = modelturboflag
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelTurboFlag = params['ModelTurboFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelService请求参数结构体
      class DescribeModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param ServiceCategory: 服务分类
        # @type ServiceCategory: String

        attr_accessor :ServiceId, :ServiceCategory

        def initialize(serviceid=nil, servicecategory=nil)
          @ServiceId = serviceid
          @ServiceCategory = servicecategory
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceCategory = params['ServiceCategory']
        end
      end

      # DescribeModelService返回参数结构体
      class DescribeModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Service: 服务信息
        # @type Service: :class:`Tencentcloud::Tione.v20211111.models.Service`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Service, :RequestId

        def initialize(service=nil, requestid=nil)
          @Service = service
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebook请求参数结构体
      class DescribeNotebookRequest < TencentCloud::Common::AbstractModel
        # @param Id: notebook id
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeNotebook返回参数结构体
      class DescribeNotebookResponse < TencentCloud::Common::AbstractModel
        # @param NotebookDetail: 详情
        # @type NotebookDetail: :class:`Tencentcloud::Tione.v20211111.models.NotebookDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookDetail, :RequestId

        def initialize(notebookdetail=nil, requestid=nil)
          @NotebookDetail = notebookdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookDetail'].nil?
            @NotebookDetail = NotebookDetail.new
            @NotebookDetail.deserialize(params['NotebookDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebooks请求参数结构体
      class DescribeNotebooksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页返回的实例数，默认为10
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列。默认为DESC
        # @type Order: String
        # @param OrderField: 根据哪个字段排序，如：CreateTime、UpdateTime，默认为UpdateTime
        # @type OrderField: String
        # @param Filters: 过滤器，eg：[{ "Name": "Id", "Values": ["nb-123456789"] }]

        # 取值范围
        # Name（名称）：notebook1
        # Id（notebook ID）：nb-123456789
        # Status（状态）：Starting / Running / Stopped / Stopping / Failed / SubmitFailed
        # Creator（创建者 uin）：100014761913
        # ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
        # ChargeStatus（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ BILLING_STORAGE（存储计费中）/ARREARS_STOP（欠费停止）
        # DefaultCodeRepoId（默认代码仓库ID）：cr-123456789
        # AdditionalCodeRepoId（关联代码仓库ID）：cr-123456789
        # LifecycleScriptId（生命周期ID）：ls-12312312311312
        # @type Filters: Array
        # @param TagFilters: 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        # @type TagFilters: Array

        attr_accessor :Offset, :Limit, :Order, :OrderField, :Filters, :TagFilters

        def initialize(offset=nil, limit=nil, order=nil, orderfield=nil, filters=nil, tagfilters=nil)
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @Filters = filters
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeNotebooks返回参数结构体
      class DescribeNotebooksResponse < TencentCloud::Common::AbstractModel
        # @param NotebookSet: 详情
        # @type NotebookSet: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookSet, :TotalCount, :RequestId

        def initialize(notebookset=nil, totalcount=nil, requestid=nil)
          @NotebookSet = notebookset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookSet'].nil?
            @NotebookSet = []
            params['NotebookSet'].each do |i|
              notebooksetitem_tmp = NotebookSetItem.new
              notebooksetitem_tmp.deserialize(i)
              @NotebookSet << notebooksetitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePlatformImages请求参数结构体
      class DescribePlatformImagesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器,  Name支持ImageId/ImageName/SupportDataPipeline/AllowSaveAllContent/ImageRange，其中ImageRange支持枚举值Train,Inference,Notebook
        # @type Filters: Array
        # @param Offset: 偏移信息
        # @type Offset: Integer
        # @param Limit: 返回数量, 默认100
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

      # DescribePlatformImages返回参数结构体
      class DescribePlatformImagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param PlatformImageInfos: 镜像列表
        # @type PlatformImageInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PlatformImageInfos, :RequestId

        def initialize(totalcount=nil, platformimageinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @PlatformImageInfos = platformimageinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PlatformImageInfos'].nil?
            @PlatformImageInfos = []
            params['PlatformImageInfos'].each do |i|
              platformimageinfo_tmp = PlatformImageInfo.new
              platformimageinfo_tmp.deserialize(i)
              @PlatformImageInfos << platformimageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingModelVersion请求参数结构体
      class DescribeTrainingModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersionId: 模型版本ID
        # @type TrainingModelVersionId: String

        attr_accessor :TrainingModelVersionId

        def initialize(trainingmodelversionid=nil)
          @TrainingModelVersionId = trainingmodelversionid
        end

        def deserialize(params)
          @TrainingModelVersionId = params['TrainingModelVersionId']
        end
      end

      # DescribeTrainingModelVersion返回参数结构体
      class DescribeTrainingModelVersionResponse < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersion: 模型版本
        # @type TrainingModelVersion: :class:`Tencentcloud::Tione.v20211111.models.TrainingModelVersionDTO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingModelVersion, :RequestId

        def initialize(trainingmodelversion=nil, requestid=nil)
          @TrainingModelVersion = trainingmodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingModelVersion'].nil?
            @TrainingModelVersion = TrainingModelVersionDTO.new
            @TrainingModelVersion.deserialize(params['TrainingModelVersion'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingModelVersions请求参数结构体
      class DescribeTrainingModelVersionsRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型ID
        # @type TrainingModelId: String
        # @param Filters: 过滤条件
        # Filter.Name: 枚举值:
        #     TrainingModelVersionId (模型版本ID)
        #     ModelVersionType (模型版本类型) 其值支持: NORMAL(通用) ACCELERATE (加速)
        #     ModelFormat（模型格式）其值Filter.Values支持：
        # TORCH_SCRIPT/PYTORCH/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML
        #     AlgorithmFramework (算法框架) 其值Filter.Values支持：TENSORFLOW/PYTORCH/DETECTRON2
        # Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为10，Filter.Values的上限为100
        # @type Filters: Array

        attr_accessor :TrainingModelId, :Filters

        def initialize(trainingmodelid=nil, filters=nil)
          @TrainingModelId = trainingmodelid
          @Filters = filters
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
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

      # DescribeTrainingModelVersions返回参数结构体
      class DescribeTrainingModelVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersions: 模型版本列表
        # @type TrainingModelVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingModelVersions, :RequestId

        def initialize(trainingmodelversions=nil, requestid=nil)
          @TrainingModelVersions = trainingmodelversions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingModelVersions'].nil?
            @TrainingModelVersions = []
            params['TrainingModelVersions'].each do |i|
              trainingmodelversiondto_tmp = TrainingModelVersionDTO.new
              trainingmodelversiondto_tmp.deserialize(i)
              @TrainingModelVersions << trainingmodelversiondto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingTaskPods请求参数结构体
      class DescribeTrainingTaskPodsRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTrainingTaskPods返回参数结构体
      class DescribeTrainingTaskPodsResponse < TencentCloud::Common::AbstractModel
        # @param PodNames: pod名称列表
        # @type PodNames: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param PodInfoList: pod详细信息
        # @type PodInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PodNames, :TotalCount, :PodInfoList, :RequestId

        def initialize(podnames=nil, totalcount=nil, podinfolist=nil, requestid=nil)
          @PodNames = podnames
          @TotalCount = totalcount
          @PodInfoList = podinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @PodNames = params['PodNames']
          @TotalCount = params['TotalCount']
          unless params['PodInfoList'].nil?
            @PodInfoList = []
            params['PodInfoList'].each do |i|
              podinfo_tmp = PodInfo.new
              podinfo_tmp.deserialize(i)
              @PodInfoList << podinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingTask请求参数结构体
      class DescribeTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTrainingTask返回参数结构体
      class DescribeTrainingTaskResponse < TencentCloud::Common::AbstractModel
        # @param TrainingTaskDetail: 训练任务详情
        # @type TrainingTaskDetail: :class:`Tencentcloud::Tione.v20211111.models.TrainingTaskDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingTaskDetail, :RequestId

        def initialize(trainingtaskdetail=nil, requestid=nil)
          @TrainingTaskDetail = trainingtaskdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingTaskDetail'].nil?
            @TrainingTaskDetail = TrainingTaskDetail.new
            @TrainingTaskDetail.deserialize(params['TrainingTaskDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingTasks请求参数结构体
      class DescribeTrainingTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器，eg：[{ "Name": "Id", "Values": ["train-23091792777383936"] }]

        # 取值范围：
        # Name（名称）：task1
        # Id（task ID）：train-23091792777383936
        # Status（状态）：SUBMITTING/PENDING/STARTING / RUNNING / STOPPING / STOPPED / FAILED / SUCCEED / SUBMIT_FAILED
        # ResourceGroupId（资源组 Id）：trsg-kvvfrwl7
        # Creator（创建者 uin）：100014761913
        # ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
        # CHARGE_STATUS（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ ARREARS_STOP（欠费停止）
        # @type Filters: Array
        # @param TagFilters: 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        # @type TagFilters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大为50
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC（升序排列）/ DESC（降序排列），默认为DESC
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CreateTime" 、"UpdateTime"、"StartTime"，默认为UpdateTime
        # @type OrderField: String

        attr_accessor :Filters, :TagFilters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, tagfilters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @TagFilters = tagfilters
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
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeTrainingTasks返回参数结构体
      class DescribeTrainingTasksResponse < TencentCloud::Common::AbstractModel
        # @param TrainingTaskSet: 训练任务集
        # @type TrainingTaskSet: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingTaskSet, :TotalCount, :RequestId

        def initialize(trainingtaskset=nil, totalcount=nil, requestid=nil)
          @TrainingTaskSet = trainingtaskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingTaskSet'].nil?
            @TrainingTaskSet = []
            params['TrainingTaskSet'].each do |i|
              trainingtasksetitem_tmp = TrainingTaskSetItem.new
              trainingtasksetitem_tmp.deserialize(i)
              @TrainingTaskSet << trainingtasksetitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 编码后的启动命令信息
      class EncodedStartCmdInfo < TencentCloud::Common::AbstractModel
        # @param StartCmdInfo: 任务的启动命令，以base64格式输入，注意转换时需要完整输入{"StartCmd":"","PsStartCmd":"","WorkerStartCmd":""}
        # @type StartCmdInfo: String

        attr_accessor :StartCmdInfo

        def initialize(startcmdinfo=nil)
          @StartCmdInfo = startcmdinfo
        end

        def deserialize(params)
          @StartCmdInfo = params['StartCmdInfo']
        end
      end

      # 环境变量
      class EnvVar < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 环境变量value
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

      # K8s的Event
      class Event < TencentCloud::Common::AbstractModel
        # @param Id: 事件的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Message: 事件的具体信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param FirstTimestamp: 事件第一次发生的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstTimestamp: String
        # @param LastTimestamp: 事件最后一次发生的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTimestamp: String
        # @param Count: 事件发生的次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Type: 事件的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ResourceKind: 事件关联的资源的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceKind: String
        # @param ResourceName: 事件关联的资源的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String

        attr_accessor :Id, :Message, :FirstTimestamp, :LastTimestamp, :Count, :Type, :ResourceKind, :ResourceName

        def initialize(id=nil, message=nil, firsttimestamp=nil, lasttimestamp=nil, count=nil, type=nil, resourcekind=nil, resourcename=nil)
          @Id = id
          @Message = message
          @FirstTimestamp = firsttimestamp
          @LastTimestamp = lasttimestamp
          @Count = count
          @Type = type
          @ResourceKind = resourcekind
          @ResourceName = resourcename
        end

        def deserialize(params)
          @Id = params['Id']
          @Message = params['Message']
          @FirstTimestamp = params['FirstTimestamp']
          @LastTimestamp = params['LastTimestamp']
          @Count = params['Count']
          @Type = params['Type']
          @ResourceKind = params['ResourceKind']
          @ResourceName = params['ResourceName']
        end
      end

      # 执行命令探针检查行为
      class ExecAction < TencentCloud::Common::AbstractModel
        # @param Command: 执行命令列表
        # @type Command: Array

        attr_accessor :Command

        def initialize(command=nil)
          @Command = command
        end

        def deserialize(params)
          @Command = params['Command']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤字段取值
        # @type Values: Array
        # @param Negative: 是否开启反向查询
        # @type Negative: Boolean
        # @param Fuzzy: 是否开启模糊匹配
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Negative, :Fuzzy

        def initialize(name=nil, values=nil, negative=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Negative = negative
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Negative = params['Negative']
          @Fuzzy = params['Fuzzy']
        end
      end

      # 配置GooseFS参数
      class GooseFS < TencentCloud::Common::AbstractModel
        # @param Id: goosefs实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Type: GooseFS类型，包括GooseFS和GooseFSx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Path: GooseFSx实例需要挂载的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param NameSpace: GooseFS命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameSpace: String

        attr_accessor :Id, :Type, :Path, :NameSpace

        def initialize(id=nil, type=nil, path=nil, namespace=nil)
          @Id = id
          @Type = type
          @Path = path
          @NameSpace = namespace
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Path = params['Path']
          @NameSpace = params['NameSpace']
        end
      end

      # GosseFSx的配置
      class GooseFSx < TencentCloud::Common::AbstractModel
        # @param Id: goosefsx实例id
        # @type Id: String
        # @param Path: GooseFSx实例需要挂载的路径
        # @type Path: String

        attr_accessor :Id, :Path

        def initialize(id=nil, path=nil)
          @Id = id
          @Path = path
        end

        def deserialize(params)
          @Id = params['Id']
          @Path = params['Path']
        end
      end

      # gpu 详情
      class GpuDetail < TencentCloud::Common::AbstractModel
        # @param Name: GPU 显卡类型；枚举值: V100 A100 T4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: GPU 显卡数；单位为1/100卡，比如100代表1卡
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 资源信息
      class GroupResource < TencentCloud::Common::AbstractModel
        # @param Cpu: CPU核数; 单位为1/1000核，比如100表示0.1核
        # @type Cpu: Integer
        # @param Memory: 内存；单位为MB
        # @type Memory: Integer
        # @param Gpu: 总卡数；GPUDetail 显卡数之和；单位为1/100卡，比如100代表1卡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param GpuDetailSet: Gpu详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuDetailSet: Array

        attr_accessor :Cpu, :Memory, :Gpu, :GpuDetailSet

        def initialize(cpu=nil, memory=nil, gpu=nil, gpudetailset=nil)
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuDetailSet = gpudetailset
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          unless params['GpuDetailSet'].nil?
            @GpuDetailSet = []
            params['GpuDetailSet'].each do |i|
              gpudetail_tmp = GpuDetail.new
              gpudetail_tmp.deserialize(i)
              @GpuDetailSet << gpudetail_tmp
            end
          end
        end
      end

      # HDFS的参数配置
      class HDFSConfig < TencentCloud::Common::AbstractModel
        # @param Id: 集群实例ID,实例ID形如: emr-xxxxxxxx
        # @type Id: String
        # @param Path: 路径
        # @type Path: String

        attr_accessor :Id, :Path

        def initialize(id=nil, path=nil)
          @Id = id
          @Path = path
        end

        def deserialize(params)
          @Id = params['Id']
          @Path = params['Path']
        end
      end

      # http get 行为
      class HTTPGetAction < TencentCloud::Common::AbstractModel
        # @param Path: http 路径
        # @type Path: String
        # @param Port: 调用端口
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

      # 健康探针
      class HealthProbe < TencentCloud::Common::AbstractModel
        # @param LivenessProbe: 存活探针
        # @type LivenessProbe: :class:`Tencentcloud::Tione.v20211111.models.Probe`
        # @param ReadinessProbe: 就绪探针
        # @type ReadinessProbe: :class:`Tencentcloud::Tione.v20211111.models.Probe`
        # @param StartupProbe: 启动探针
        # @type StartupProbe: :class:`Tencentcloud::Tione.v20211111.models.Probe`

        attr_accessor :LivenessProbe, :ReadinessProbe, :StartupProbe

        def initialize(livenessprobe=nil, readinessprobe=nil, startupprobe=nil)
          @LivenessProbe = livenessprobe
          @ReadinessProbe = readinessprobe
          @StartupProbe = startupprobe
        end

        def deserialize(params)
          unless params['LivenessProbe'].nil?
            @LivenessProbe = Probe.new
            @LivenessProbe.deserialize(params['LivenessProbe'])
          end
          unless params['ReadinessProbe'].nil?
            @ReadinessProbe = Probe.new
            @ReadinessProbe.deserialize(params['ReadinessProbe'])
          end
          unless params['StartupProbe'].nil?
            @StartupProbe = Probe.new
            @StartupProbe.deserialize(params['StartupProbe'])
          end
        end
      end

      # hpa的描述
      class HorizontalPodAutoscaler < TencentCloud::Common::AbstractModel
        # @param MinReplicas: 最小实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinReplicas: Integer
        # @param MaxReplicas: 最大实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReplicas: Integer
        # @param HpaMetrics: 支持：
        # "gpu-util": GPU利用率。范围{10, 100}      "cpu-util": CPU利用率。范围{10, 100}	      "memory-util": 内存利用率。范围{10, 100}      "service-qps": 单个实例QPS值。范围{1, 5000}
        # "concurrency-util":单个实例请求数量值。范围{1,100000}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HpaMetrics: Array

        attr_accessor :MinReplicas, :MaxReplicas, :HpaMetrics

        def initialize(minreplicas=nil, maxreplicas=nil, hpametrics=nil)
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @HpaMetrics = hpametrics
        end

        def deserialize(params)
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
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

      # 主机路径挂载配置
      class HostPath < TencentCloud::Common::AbstractModel
        # @param Path: 需要挂载的主机路径
        # @type Path: String

        attr_accessor :Path

        def initialize(path=nil)
          @Path = path
        end

        def deserialize(params)
          @Path = params['Path']
        end
      end

      # 模型专业参数
      class HyperParameter < TencentCloud::Common::AbstractModel
        # @param MaxNNZ: 最大nnz数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNNZ: String
        # @param SlotNum: slot数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotNum: String
        # @param CpuCachePercentage: gpu cache 使用率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuCachePercentage: String
        # @param GpuCachePercentage: cpu cache 使用率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuCachePercentage: String
        # @param EnableDistributed: 是否开启分布式模式(true/false)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableDistributed: String
        # @param MinBlockSizePt: TORCH_SCRIPT、MMDETECTION、DETECTRON2、HUGGINGFACE格式在进行优化时切分子图的最小算子数目，一般无需进行改动，默认为3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinBlockSizePt: String
        # @param MinBlockSizeTf: FROZEN_GRAPH、SAVED_MODEL格式在进行优化时切分子图的最小算子数目，一般无需进行改动，默认为10
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinBlockSizeTf: String
        # @param PipelineArgs: Stable Diffusion 模型优化参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PipelineArgs: String
        # @param LoraScale: Stable Diffusion 模型优化参数，控制Lora模型的影响效果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoraScale: String

        attr_accessor :MaxNNZ, :SlotNum, :CpuCachePercentage, :GpuCachePercentage, :EnableDistributed, :MinBlockSizePt, :MinBlockSizeTf, :PipelineArgs, :LoraScale

        def initialize(maxnnz=nil, slotnum=nil, cpucachepercentage=nil, gpucachepercentage=nil, enabledistributed=nil, minblocksizept=nil, minblocksizetf=nil, pipelineargs=nil, lorascale=nil)
          @MaxNNZ = maxnnz
          @SlotNum = slotnum
          @CpuCachePercentage = cpucachepercentage
          @GpuCachePercentage = gpucachepercentage
          @EnableDistributed = enabledistributed
          @MinBlockSizePt = minblocksizept
          @MinBlockSizeTf = minblocksizetf
          @PipelineArgs = pipelineargs
          @LoraScale = lorascale
        end

        def deserialize(params)
          @MaxNNZ = params['MaxNNZ']
          @SlotNum = params['SlotNum']
          @CpuCachePercentage = params['CpuCachePercentage']
          @GpuCachePercentage = params['GpuCachePercentage']
          @EnableDistributed = params['EnableDistributed']
          @MinBlockSizePt = params['MinBlockSizePt']
          @MinBlockSizeTf = params['MinBlockSizeTf']
          @PipelineArgs = params['PipelineArgs']
          @LoraScale = params['LoraScale']
        end
      end

      # 镜像列表过滤
      class ImageFIlter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤值
        # @type Values: Array
        # @param Negative: 是否反选
        # @type Negative: Boolean

        attr_accessor :Name, :Values, :Negative

        def initialize(name=nil, values=nil, negative=nil)
          @Name = name
          @Values = values
          @Negative = negative
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Negative = params['Negative']
        end
      end

      # 镜像描述信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageType: 镜像类型：TCR为腾讯云TCR镜像; CCR为腾讯云TCR个人版镜像，PreSet为平台预置镜像，CUSTOM为第三方自定义镜像
        # @type ImageType: String
        # @param ImageUrl: 镜像地址
        # @type ImageUrl: String
        # @param RegistryRegion: TCR镜像对应的地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryRegion: String
        # @param RegistryId: TCR镜像对应的实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: String
        # @param AllowSaveAllContent: 是否允许导出全部内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowSaveAllContent: Boolean
        # @param ImageName: 镜像名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageName: String
        # @param SupportDataPipeline: 是否支持数据构建
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportDataPipeline: Boolean

        attr_accessor :ImageType, :ImageUrl, :RegistryRegion, :RegistryId, :AllowSaveAllContent, :ImageName, :SupportDataPipeline

        def initialize(imagetype=nil, imageurl=nil, registryregion=nil, registryid=nil, allowsaveallcontent=nil, imagename=nil, supportdatapipeline=nil)
          @ImageType = imagetype
          @ImageUrl = imageurl
          @RegistryRegion = registryregion
          @RegistryId = registryid
          @AllowSaveAllContent = allowsaveallcontent
          @ImageName = imagename
          @SupportDataPipeline = supportdatapipeline
        end

        def deserialize(params)
          @ImageType = params['ImageType']
          @ImageUrl = params['ImageUrl']
          @RegistryRegion = params['RegistryRegion']
          @RegistryId = params['RegistryId']
          @AllowSaveAllContent = params['AllowSaveAllContent']
          @ImageName = params['ImageName']
          @SupportDataPipeline = params['SupportDataPipeline']
        end
      end

      # 多模态对话图片信息
      class ImageUrl < TencentCloud::Common::AbstractModel
        # @param Url: 图片url
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 推理代码的信息
      class InferCodeInfo < TencentCloud::Common::AbstractModel
        # @param CosPathInfo: 推理代码所在的cos详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPathInfo: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`

        attr_accessor :CosPathInfo

        def initialize(cospathinfo=nil)
          @CosPathInfo = cospathinfo
        end

        def deserialize(params)
          unless params['CosPathInfo'].nil?
            @CosPathInfo = CosPathInfo.new
            @CosPathInfo.deserialize(params['CosPathInfo'])
          end
        end
      end

      # 服务的调用信息，服务组下唯一
      class InferGatewayCallInfo < TencentCloud::Common::AbstractModel
        # @param VpcHttpAddr: 内网http调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcHttpAddr: String
        # @param VpcHttpsAddr: 内网https调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcHttpsAddr: String
        # @param VpcGrpcTlsAddr: 内网grpc调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcGrpcTlsAddr: String
        # @param VpcId: 可访问的vpcid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 后端ip对应的子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :VpcHttpAddr, :VpcHttpsAddr, :VpcGrpcTlsAddr, :VpcId, :SubnetId

        def initialize(vpchttpaddr=nil, vpchttpsaddr=nil, vpcgrpctlsaddr=nil, vpcid=nil, subnetid=nil)
          @VpcHttpAddr = vpchttpaddr
          @VpcHttpsAddr = vpchttpsaddr
          @VpcGrpcTlsAddr = vpcgrpctlsaddr
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcHttpAddr = params['VpcHttpAddr']
          @VpcHttpsAddr = params['VpcHttpsAddr']
          @VpcGrpcTlsAddr = params['VpcGrpcTlsAddr']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # 推理镜像详情
      class InferTemplate < TencentCloud::Common::AbstractModel
        # @param InferTemplateId: 模板ID
        # @type InferTemplateId: String
        # @param InferTemplateImage: 模板镜像
        # @type InferTemplateImage: String

        attr_accessor :InferTemplateId, :InferTemplateImage

        def initialize(infertemplateid=nil, infertemplateimage=nil)
          @InferTemplateId = infertemplateid
          @InferTemplateImage = infertemplateimage
        end

        def deserialize(params)
          @InferTemplateId = params['InferTemplateId']
          @InferTemplateImage = params['InferTemplateImage']
        end
      end

      # 推理镜像组
      class InferTemplateGroup < TencentCloud::Common::AbstractModel
        # @param Framework: 算法框架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Framework: String
        # @param FrameworkVersion: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param Groups: 支持的训练框架集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param InferTemplates: 镜像模板参数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InferTemplates: Array

        attr_accessor :Framework, :FrameworkVersion, :Groups, :InferTemplates

        def initialize(framework=nil, frameworkversion=nil, groups=nil, infertemplates=nil)
          @Framework = framework
          @FrameworkVersion = frameworkversion
          @Groups = groups
          @InferTemplates = infertemplates
        end

        def deserialize(params)
          @Framework = params['Framework']
          @FrameworkVersion = params['FrameworkVersion']
          @Groups = params['Groups']
          unless params['InferTemplates'].nil?
            @InferTemplates = []
            params['InferTemplates'].each do |i|
              infertemplate_tmp = InferTemplate.new
              infertemplate_tmp.deserialize(i)
              @InferTemplates << infertemplate_tmp
            end
          end
        end
      end

      # 私有连接通道信息
      class IngressPrivateLinkInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: 用户VpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 用户子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param InnerHttpAddr: 内网http调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpAddr: Array
        # @param InnerHttpsAddr: 内网https调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpsAddr: Array
        # @param State: 私有连接状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String

        attr_accessor :VpcId, :SubnetId, :InnerHttpAddr, :InnerHttpsAddr, :State

        def initialize(vpcid=nil, subnetid=nil, innerhttpaddr=nil, innerhttpsaddr=nil, state=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @InnerHttpAddr = innerhttpaddr
          @InnerHttpsAddr = innerhttpsaddr
          @State = state
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InnerHttpAddr = params['InnerHttpAddr']
          @InnerHttpsAddr = params['InnerHttpsAddr']
          @State = params['State']
        end
      end

      # 资源组节点信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源组节点id
        # @type InstanceId: String
        # @param UsedResource: 节点已用资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedResource: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param TotalResource: 节点总资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalResource: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param InstanceStatus: 节点状态
        # 注意：此字段为枚举值
        # 说明:
        # DEPLOYING: 部署中
        # RUNNING: 运行中
        # DEPLOY_FAILED: 部署失败
        # RELEASING 释放中
        # RELEASED：已释放
        # EXCEPTION：异常
        # DEBT_OR_EXPIRED: 欠费过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param SubUin: 创建人
        # @type SubUin: String
        # @param CreateTime: 创建时间:
        # 注意：北京时间，比如: 2021-12-01 12:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 到期时间
        # 注意：北京时间，比如：2021-12-11 12:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AutoRenewFlag: 自动续费标识
        # 注意：此字段为枚举值
        # 说明：
        # NOTIFY_AND_MANUAL_RENEW：手动续费(取消自动续费)且到期通知
        # NOTIFY_AND_AUTO_RENEW：自动续费且到期通知
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：手动续费(取消自动续费)且到期不通知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: String
        # @param SpecId: 计费项ID
        # @type SpecId: String
        # @param SpecAlias: 计费项别名
        # @type SpecAlias: String
        # @param SpecFeatures: 计费项特性列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecFeatures: Array
        # @param CvmInstanceId: 纳管cvmid
        # @type CvmInstanceId: String
        # @param ErrCode: 部署失败错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: String
        # @param ErrMsg: 部署失败错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String

        attr_accessor :InstanceId, :UsedResource, :TotalResource, :InstanceStatus, :SubUin, :CreateTime, :ExpireTime, :AutoRenewFlag, :SpecId, :SpecAlias, :SpecFeatures, :CvmInstanceId, :ErrCode, :ErrMsg

        def initialize(instanceid=nil, usedresource=nil, totalresource=nil, instancestatus=nil, subuin=nil, createtime=nil, expiretime=nil, autorenewflag=nil, specid=nil, specalias=nil, specfeatures=nil, cvminstanceid=nil, errcode=nil, errmsg=nil)
          @InstanceId = instanceid
          @UsedResource = usedresource
          @TotalResource = totalresource
          @InstanceStatus = instancestatus
          @SubUin = subuin
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @SpecId = specid
          @SpecAlias = specalias
          @SpecFeatures = specfeatures
          @CvmInstanceId = cvminstanceid
          @ErrCode = errcode
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['UsedResource'].nil?
            @UsedResource = ResourceInfo.new
            @UsedResource.deserialize(params['UsedResource'])
          end
          unless params['TotalResource'].nil?
            @TotalResource = ResourceInfo.new
            @TotalResource.deserialize(params['TotalResource'])
          end
          @InstanceStatus = params['InstanceStatus']
          @SubUin = params['SubUin']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SpecId = params['SpecId']
          @SpecAlias = params['SpecAlias']
          @SpecFeatures = params['SpecFeatures']
          @CvmInstanceId = params['CvmInstanceId']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 内网调用信息
      class IntranetCallInfo < TencentCloud::Common::AbstractModel
        # @param IngressPrivateLinkInfo: 私有连接通道信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IngressPrivateLinkInfo: :class:`Tencentcloud::Tione.v20211111.models.IngressPrivateLinkInfo`
        # @param ServiceEIPInfo: 共享弹性网卡信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceEIPInfo: Array
        # @param DefaultInnerCallInfos: 默认内网调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultInnerCallInfos: Array
        # @param PrivateLinkInfos: 私有连接信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateLinkInfos: Array
        # @param PrivateLinkInfosV2: 基于新网关的私有连接信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateLinkInfosV2: Array

        attr_accessor :IngressPrivateLinkInfo, :ServiceEIPInfo, :DefaultInnerCallInfos, :PrivateLinkInfos, :PrivateLinkInfosV2

        def initialize(ingressprivatelinkinfo=nil, serviceeipinfo=nil, defaultinnercallinfos=nil, privatelinkinfos=nil, privatelinkinfosv2=nil)
          @IngressPrivateLinkInfo = ingressprivatelinkinfo
          @ServiceEIPInfo = serviceeipinfo
          @DefaultInnerCallInfos = defaultinnercallinfos
          @PrivateLinkInfos = privatelinkinfos
          @PrivateLinkInfosV2 = privatelinkinfosv2
        end

        def deserialize(params)
          unless params['IngressPrivateLinkInfo'].nil?
            @IngressPrivateLinkInfo = IngressPrivateLinkInfo.new
            @IngressPrivateLinkInfo.deserialize(params['IngressPrivateLinkInfo'])
          end
          unless params['ServiceEIPInfo'].nil?
            @ServiceEIPInfo = []
            params['ServiceEIPInfo'].each do |i|
              serviceeipinfo_tmp = ServiceEIPInfo.new
              serviceeipinfo_tmp.deserialize(i)
              @ServiceEIPInfo << serviceeipinfo_tmp
            end
          end
          unless params['DefaultInnerCallInfos'].nil?
            @DefaultInnerCallInfos = []
            params['DefaultInnerCallInfos'].each do |i|
              defaultinnercallinfo_tmp = DefaultInnerCallInfo.new
              defaultinnercallinfo_tmp.deserialize(i)
              @DefaultInnerCallInfos << defaultinnercallinfo_tmp
            end
          end
          unless params['PrivateLinkInfos'].nil?
            @PrivateLinkInfos = []
            params['PrivateLinkInfos'].each do |i|
              privatelinkinfo_tmp = PrivateLinkInfo.new
              privatelinkinfo_tmp.deserialize(i)
              @PrivateLinkInfos << privatelinkinfo_tmp
            end
          end
          unless params['PrivateLinkInfosV2'].nil?
            @PrivateLinkInfosV2 = []
            params['PrivateLinkInfosV2'].each do |i|
              privatelinkinfo_tmp = PrivateLinkInfo.new
              privatelinkinfo_tmp.deserialize(i)
              @PrivateLinkInfosV2 << privatelinkinfo_tmp
            end
          end
        end
      end

      # 本地磁盘信息
      class LocalDisk < TencentCloud::Common::AbstractModel
        # @param InstanceId: 节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param LocalPath: 本地路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalPath: String

        attr_accessor :InstanceId, :LocalPath

        def initialize(instanceid=nil, localpath=nil)
          @InstanceId = instanceid
          @LocalPath = localpath
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LocalPath = params['LocalPath']
        end
      end

      # 日志配置
      class LogConfig < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志需要投递到cls的日志集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param TopicId: 日志需要投递到cls的主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String

        attr_accessor :LogsetId, :TopicId

        def initialize(logsetid=nil, topicid=nil)
          @LogsetId = logsetid
          @TopicId = topicid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
        end
      end

      # 单条日志数据结构
      class LogIdentity < TencentCloud::Common::AbstractModel
        # @param Id: 单条日志的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Message: 单条日志的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param PodName: 这条日志对应的Pod名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param Timestamp: 日志的时间戳（RFC3339格式的时间字符串）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String

        attr_accessor :Id, :Message, :PodName, :Timestamp

        def initialize(id=nil, message=nil, podname=nil, timestamp=nil)
          @Id = id
          @Message = message
          @PodName = podname
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Id = params['Id']
          @Message = params['Message']
          @PodName = params['PodName']
          @Timestamp = params['Timestamp']
        end
      end

      # 对话输入内容
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色名。支持三个角色：system、user、assistant，其中system仅开头可出现一次，也可忽略。
        # @type Role: String
        # @param Content: 对话输入内容。
        # @type Content: String
        # @param MultiModalContents: 多模态对话输入内容，Content与MultiModalContents两者只需要填写其中一个即可，当对话中包含多模态对话信息时，则填写本参数
        # @type MultiModalContents: Array

        attr_accessor :Role, :Content, :MultiModalContents

        def initialize(role=nil, content=nil, multimodalcontents=nil)
          @Role = role
          @Content = content
          @MultiModalContents = multimodalcontents
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          unless params['MultiModalContents'].nil?
            @MultiModalContents = []
            params['MultiModalContents'].each do |i|
              multimodalcontent_tmp = MultiModalContent.new
              multimodalcontent_tmp.deserialize(i)
              @MultiModalContents << multimodalcontent_tmp
            end
          end
        end
      end

      # 指标数据
      class MetricData < TencentCloud::Common::AbstractModel
        # @param TaskId: 训练任务id
        # @type TaskId: String
        # @param Timestamp: 时间戳.unix timestamp,单位为秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Epoch: 本次上报数据所处的训练周期数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Epoch: Integer
        # @param Step: 本次上报数据所处的训练迭代次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Step: Integer
        # @param TotalSteps: 训练停止所需的迭代总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSteps: Integer
        # @param Points: 数据点。数组元素为不同指标的数据。数组长度不超过10。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array

        attr_accessor :TaskId, :Timestamp, :Uin, :Epoch, :Step, :TotalSteps, :Points

        def initialize(taskid=nil, timestamp=nil, uin=nil, epoch=nil, step=nil, totalsteps=nil, points=nil)
          @TaskId = taskid
          @Timestamp = timestamp
          @Uin = uin
          @Epoch = epoch
          @Step = step
          @TotalSteps = totalsteps
          @Points = points
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Timestamp = params['Timestamp']
          @Uin = params['Uin']
          @Epoch = params['Epoch']
          @Step = params['Step']
          @TotalSteps = params['TotalSteps']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              datapoint_tmp = DataPoint.new
              datapoint_tmp.deserialize(i)
              @Points << datapoint_tmp
            end
          end
        end
      end

      # 模型加速任务
      class ModelAccelerateTask < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskId: 模型加速任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccTaskId: String
        # @param ModelAccTaskName: 模型加速任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccTaskName: String
        # @param ModelId: 模型ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelVersion: 模型版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelVersion: String
        # @param ModelSource: 模型来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelSource: String
        # @param OptimizationLevel: 优化级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OptimizationLevel: String
        # @param TaskStatus: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String
        # @param ModelInputNum: input节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInputNum: Integer
        # @param ModelInputInfos: input节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInputInfos: Array
        # @param GPUType: GPU型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUType: String
        # @param ChargeType: 计费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param Speedup: 加速比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Speedup: String
        # @param ModelInputPath: 模型输入cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param ModelOutputPath: 模型输出cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelOutputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param AlgorithmFramework: 算法框架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgorithmFramework: String
        # @param WaitNumber: 排队个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitNumber: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param TaskProgress: 任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskProgress: Integer
        # @param ModelFormat: 模型格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelFormat: String
        # @param TensorInfos: 模型Tensor信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TensorInfos: Array
        # @param HyperParameter: 模型专业参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HyperParameter: :class:`Tencentcloud::Tione.v20211111.models.HyperParameter`
        # @param AccEngineVersion: 加速引擎版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccEngineVersion: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param IsSaved: 优化模型是否已保存到模型仓库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSaved: Boolean
        # @param ModelSignature: SAVED_MODEL保存时配置的签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelSignature: String
        # @param QATModel: 是否是QAT模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QATModel: Boolean
        # @param FrameworkVersion: 加速引擎对应的框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param ModelVersionId: 模型版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelVersionId: String
        # @param ResourceGroupId: 资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String

        attr_accessor :ModelAccTaskId, :ModelAccTaskName, :ModelId, :ModelName, :ModelVersion, :ModelSource, :OptimizationLevel, :TaskStatus, :ModelInputNum, :ModelInputInfos, :GPUType, :ChargeType, :Speedup, :ModelInputPath, :ModelOutputPath, :ErrorMsg, :AlgorithmFramework, :WaitNumber, :CreateTime, :TaskProgress, :ModelFormat, :TensorInfos, :HyperParameter, :AccEngineVersion, :Tags, :IsSaved, :ModelSignature, :QATModel, :FrameworkVersion, :ModelVersionId, :ResourceGroupId, :ResourceGroupName

        def initialize(modelacctaskid=nil, modelacctaskname=nil, modelid=nil, modelname=nil, modelversion=nil, modelsource=nil, optimizationlevel=nil, taskstatus=nil, modelinputnum=nil, modelinputinfos=nil, gputype=nil, chargetype=nil, speedup=nil, modelinputpath=nil, modeloutputpath=nil, errormsg=nil, algorithmframework=nil, waitnumber=nil, createtime=nil, taskprogress=nil, modelformat=nil, tensorinfos=nil, hyperparameter=nil, accengineversion=nil, tags=nil, issaved=nil, modelsignature=nil, qatmodel=nil, frameworkversion=nil, modelversionid=nil, resourcegroupid=nil, resourcegroupname=nil)
          @ModelAccTaskId = modelacctaskid
          @ModelAccTaskName = modelacctaskname
          @ModelId = modelid
          @ModelName = modelname
          @ModelVersion = modelversion
          @ModelSource = modelsource
          @OptimizationLevel = optimizationlevel
          @TaskStatus = taskstatus
          @ModelInputNum = modelinputnum
          @ModelInputInfos = modelinputinfos
          @GPUType = gputype
          @ChargeType = chargetype
          @Speedup = speedup
          @ModelInputPath = modelinputpath
          @ModelOutputPath = modeloutputpath
          @ErrorMsg = errormsg
          @AlgorithmFramework = algorithmframework
          @WaitNumber = waitnumber
          @CreateTime = createtime
          @TaskProgress = taskprogress
          @ModelFormat = modelformat
          @TensorInfos = tensorinfos
          @HyperParameter = hyperparameter
          @AccEngineVersion = accengineversion
          @Tags = tags
          @IsSaved = issaved
          @ModelSignature = modelsignature
          @QATModel = qatmodel
          @FrameworkVersion = frameworkversion
          @ModelVersionId = modelversionid
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
        end

        def deserialize(params)
          @ModelAccTaskId = params['ModelAccTaskId']
          @ModelAccTaskName = params['ModelAccTaskName']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ModelVersion = params['ModelVersion']
          @ModelSource = params['ModelSource']
          @OptimizationLevel = params['OptimizationLevel']
          @TaskStatus = params['TaskStatus']
          @ModelInputNum = params['ModelInputNum']
          unless params['ModelInputInfos'].nil?
            @ModelInputInfos = []
            params['ModelInputInfos'].each do |i|
              modelinputinfo_tmp = ModelInputInfo.new
              modelinputinfo_tmp.deserialize(i)
              @ModelInputInfos << modelinputinfo_tmp
            end
          end
          @GPUType = params['GPUType']
          @ChargeType = params['ChargeType']
          @Speedup = params['Speedup']
          unless params['ModelInputPath'].nil?
            @ModelInputPath = CosPathInfo.new
            @ModelInputPath.deserialize(params['ModelInputPath'])
          end
          unless params['ModelOutputPath'].nil?
            @ModelOutputPath = CosPathInfo.new
            @ModelOutputPath.deserialize(params['ModelOutputPath'])
          end
          @ErrorMsg = params['ErrorMsg']
          @AlgorithmFramework = params['AlgorithmFramework']
          @WaitNumber = params['WaitNumber']
          @CreateTime = params['CreateTime']
          @TaskProgress = params['TaskProgress']
          @ModelFormat = params['ModelFormat']
          @TensorInfos = params['TensorInfos']
          unless params['HyperParameter'].nil?
            @HyperParameter = HyperParameter.new
            @HyperParameter.deserialize(params['HyperParameter'])
          end
          @AccEngineVersion = params['AccEngineVersion']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @IsSaved = params['IsSaved']
          @ModelSignature = params['ModelSignature']
          @QATModel = params['QATModel']
          @FrameworkVersion = params['FrameworkVersion']
          @ModelVersionId = params['ModelVersionId']
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
        end
      end

      # 优化模型版本列表
      class ModelAccelerateVersion < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelVersionId: 优化模型版本id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelVersionId: String
        # @param ModelJobId: 优化任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelJobId: String
        # @param ModelJobName: 优化任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelJobName: String
        # @param ModelVersion: 优化后模型版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelVersion: String
        # @param SpeedUp: 加速比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeedUp: String
        # @param ModelSource: 模型来源/任务名称/任务版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelSource: :class:`Tencentcloud::Tione.v20211111.models.ModelSource`
        # @param CosPathInfo: 模型cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPathInfo: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModelFormat: 模型规范
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelFormat: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Progress: 进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param GPUType: GPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUType: String
        # @param ModelCosPath: 模型cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelCosPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`

        attr_accessor :ModelId, :ModelVersionId, :ModelJobId, :ModelJobName, :ModelVersion, :SpeedUp, :ModelSource, :CosPathInfo, :CreateTime, :ModelFormat, :Status, :Progress, :ErrorMsg, :GPUType, :ModelCosPath

        def initialize(modelid=nil, modelversionid=nil, modeljobid=nil, modeljobname=nil, modelversion=nil, speedup=nil, modelsource=nil, cospathinfo=nil, createtime=nil, modelformat=nil, status=nil, progress=nil, errormsg=nil, gputype=nil, modelcospath=nil)
          @ModelId = modelid
          @ModelVersionId = modelversionid
          @ModelJobId = modeljobid
          @ModelJobName = modeljobname
          @ModelVersion = modelversion
          @SpeedUp = speedup
          @ModelSource = modelsource
          @CosPathInfo = cospathinfo
          @CreateTime = createtime
          @ModelFormat = modelformat
          @Status = status
          @Progress = progress
          @ErrorMsg = errormsg
          @GPUType = gputype
          @ModelCosPath = modelcospath
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelVersionId = params['ModelVersionId']
          @ModelJobId = params['ModelJobId']
          @ModelJobName = params['ModelJobName']
          @ModelVersion = params['ModelVersion']
          @SpeedUp = params['SpeedUp']
          unless params['ModelSource'].nil?
            @ModelSource = ModelSource.new
            @ModelSource.deserialize(params['ModelSource'])
          end
          unless params['CosPathInfo'].nil?
            @CosPathInfo = CosPathInfo.new
            @CosPathInfo.deserialize(params['CosPathInfo'])
          end
          @CreateTime = params['CreateTime']
          @ModelFormat = params['ModelFormat']
          @Status = params['Status']
          @Progress = params['Progress']
          @ErrorMsg = params['ErrorMsg']
          @GPUType = params['GPUType']
          unless params['ModelCosPath'].nil?
            @ModelCosPath = CosPathInfo.new
            @ModelCosPath.deserialize(params['ModelCosPath'])
          end
        end
      end

      # 模型描述信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelVersionId: 模型版本id, DescribeTrainingModelVersion查询模型接口时的id
        # 自动学习类型的模型填写自动学习的任务id
        # @type ModelVersionId: String
        # @param ModelId: 模型id
        # @type ModelId: String
        # @param ModelName: 模型名
        # @type ModelName: String
        # @param ModelVersion: 模型版本
        # @type ModelVersion: String
        # @param ModelSource: 模型来源
        # @type ModelSource: String
        # @param CosPathInfo: cos路径信息
        # @type CosPathInfo: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param GooseFSx: GooseFSx的配置，ModelSource为GooseFSx时有效
        # @type GooseFSx: :class:`Tencentcloud::Tione.v20211111.models.GooseFSx`
        # @param AlgorithmFramework: 模型对应的算法框架，预留
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgorithmFramework: String
        # @param ModelType: 默认为 NORMAL, 已加速模型: ACCELERATE, 自动学习模型 AUTO_ML
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelType: String
        # @param ModelFormat: 模型格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelFormat: String
        # @param IsPrivateModel: 是否为私有化大模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPrivateModel: Boolean
        # @param ModelCategory: 模型的类别 多模态MultiModal, 文本大模型 LLM
        # @type ModelCategory: String
        # @param PublicDataSource: 数据源的配置
        # @type PublicDataSource: :class:`Tencentcloud::Tione.v20211111.models.PublicDataSourceFS`

        attr_accessor :ModelVersionId, :ModelId, :ModelName, :ModelVersion, :ModelSource, :CosPathInfo, :GooseFSx, :AlgorithmFramework, :ModelType, :ModelFormat, :IsPrivateModel, :ModelCategory, :PublicDataSource

        def initialize(modelversionid=nil, modelid=nil, modelname=nil, modelversion=nil, modelsource=nil, cospathinfo=nil, goosefsx=nil, algorithmframework=nil, modeltype=nil, modelformat=nil, isprivatemodel=nil, modelcategory=nil, publicdatasource=nil)
          @ModelVersionId = modelversionid
          @ModelId = modelid
          @ModelName = modelname
          @ModelVersion = modelversion
          @ModelSource = modelsource
          @CosPathInfo = cospathinfo
          @GooseFSx = goosefsx
          @AlgorithmFramework = algorithmframework
          @ModelType = modeltype
          @ModelFormat = modelformat
          @IsPrivateModel = isprivatemodel
          @ModelCategory = modelcategory
          @PublicDataSource = publicdatasource
        end

        def deserialize(params)
          @ModelVersionId = params['ModelVersionId']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ModelVersion = params['ModelVersion']
          @ModelSource = params['ModelSource']
          unless params['CosPathInfo'].nil?
            @CosPathInfo = CosPathInfo.new
            @CosPathInfo.deserialize(params['CosPathInfo'])
          end
          unless params['GooseFSx'].nil?
            @GooseFSx = GooseFSx.new
            @GooseFSx.deserialize(params['GooseFSx'])
          end
          @AlgorithmFramework = params['AlgorithmFramework']
          @ModelType = params['ModelType']
          @ModelFormat = params['ModelFormat']
          @IsPrivateModel = params['IsPrivateModel']
          @ModelCategory = params['ModelCategory']
          unless params['PublicDataSource'].nil?
            @PublicDataSource = PublicDataSourceFS.new
            @PublicDataSource.deserialize(params['PublicDataSource'])
          end
        end
      end

      # 模型输入信息
      class ModelInputInfo < TencentCloud::Common::AbstractModel
        # @param ModelInputType: input数据类型
        # FIXED：固定
        # RANGE：浮动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInputType: String
        # @param ModelInputDimension: input数据尺寸
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInputDimension: Array

        attr_accessor :ModelInputType, :ModelInputDimension

        def initialize(modelinputtype=nil, modelinputdimension=nil)
          @ModelInputType = modelinputtype
          @ModelInputDimension = modelinputdimension
        end

        def deserialize(params)
          @ModelInputType = params['ModelInputType']
          @ModelInputDimension = params['ModelInputDimension']
        end
      end

      # 模型来源
      class ModelSource < TencentCloud::Common::AbstractModel
        # @param Source: 来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param JobName: 来源任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param JobVersion: 来源任务版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobVersion: String
        # @param JobId: 来源任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param AlgorithmFramework: 算法框架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgorithmFramework: String
        # @param TrainingPreference: 训练偏好
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingPreference: String
        # @param ReasoningEnvironmentSource: 推理环境来源，SYSTEM/CUSTOM
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReasoningEnvironmentSource: String
        # @param ReasoningEnvironment: 推理环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReasoningEnvironment: String
        # @param ReasoningEnvironmentId: 推理环境id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReasoningEnvironmentId: String
        # @param ReasoningImageInfo: 自定义推理环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReasoningImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`

        attr_accessor :Source, :JobName, :JobVersion, :JobId, :ModelName, :AlgorithmFramework, :TrainingPreference, :ReasoningEnvironmentSource, :ReasoningEnvironment, :ReasoningEnvironmentId, :ReasoningImageInfo

        def initialize(source=nil, jobname=nil, jobversion=nil, jobid=nil, modelname=nil, algorithmframework=nil, trainingpreference=nil, reasoningenvironmentsource=nil, reasoningenvironment=nil, reasoningenvironmentid=nil, reasoningimageinfo=nil)
          @Source = source
          @JobName = jobname
          @JobVersion = jobversion
          @JobId = jobid
          @ModelName = modelname
          @AlgorithmFramework = algorithmframework
          @TrainingPreference = trainingpreference
          @ReasoningEnvironmentSource = reasoningenvironmentsource
          @ReasoningEnvironment = reasoningenvironment
          @ReasoningEnvironmentId = reasoningenvironmentid
          @ReasoningImageInfo = reasoningimageinfo
        end

        def deserialize(params)
          @Source = params['Source']
          @JobName = params['JobName']
          @JobVersion = params['JobVersion']
          @JobId = params['JobId']
          @ModelName = params['ModelName']
          @AlgorithmFramework = params['AlgorithmFramework']
          @TrainingPreference = params['TrainingPreference']
          @ReasoningEnvironmentSource = params['ReasoningEnvironmentSource']
          @ReasoningEnvironment = params['ReasoningEnvironment']
          @ReasoningEnvironmentId = params['ReasoningEnvironmentId']
          unless params['ReasoningImageInfo'].nil?
            @ReasoningImageInfo = ImageInfo.new
            @ReasoningImageInfo.deserialize(params['ReasoningImageInfo'])
          end
        end
      end

      # ModifyModelServiceAuthToken请求参数结构体
      class ModifyModelServiceAuthTokenRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组 id
        # @type ServiceGroupId: String
        # @param NeedReset: 是否需要重置，如果为 true，重置 token 值
        # @type NeedReset: Boolean
        # @param AuthToken: AuthToken 数据
        # @type AuthToken: :class:`Tencentcloud::Tione.v20211111.models.AuthToken`

        attr_accessor :ServiceGroupId, :NeedReset, :AuthToken

        def initialize(servicegroupid=nil, needreset=nil, authtoken=nil)
          @ServiceGroupId = servicegroupid
          @NeedReset = needreset
          @AuthToken = authtoken
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @NeedReset = params['NeedReset']
          unless params['AuthToken'].nil?
            @AuthToken = AuthToken.new
            @AuthToken.deserialize(params['AuthToken'])
          end
        end
      end

      # ModifyModelServiceAuthToken返回参数结构体
      class ModifyModelServiceAuthTokenResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelServiceAuthorization请求参数结构体
      class ModifyModelServiceAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组Id
        # @type ServiceGroupId: String
        # @param AuthorizationEnable: 是否开启鉴权,true表示开启
        # @type AuthorizationEnable: Boolean

        attr_accessor :ServiceGroupId, :AuthorizationEnable

        def initialize(servicegroupid=nil, authorizationenable=nil)
          @ServiceGroupId = servicegroupid
          @AuthorizationEnable = authorizationenable
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @AuthorizationEnable = params['AuthorizationEnable']
        end
      end

      # ModifyModelServiceAuthorization返回参数结构体
      class ModifyModelServiceAuthorizationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModelService请求参数结构体
      class ModifyModelServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param ModelInfo: 模型信息，需要挂载模型时填写
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 镜像信息，配置服务运行所需的镜像地址等信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param Env: 环境变量，可选参数，用于配置容器中的环境变量
        # @type Env: Array
        # @param Resources: 资源描述，指定预付费模式下的cpu,mem,gpu等信息，后付费无需填写
        # @type Resources: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param InstanceType: 使用DescribeBillingSpecs接口返回的规格列表中的值，或者参考实例列表:
        # TI.S.MEDIUM.POST	2C4G
        # TI.S.LARGE.POST	4C8G
        # TI.S.2XLARGE16.POST	8C16G
        # TI.S.2XLARGE32.POST	8C32G
        # TI.S.4XLARGE32.POST	16C32G
        # TI.S.4XLARGE64.POST	16C64G
        # TI.S.6XLARGE48.POST	24C48G
        # TI.S.6XLARGE96.POST	24C96G
        # TI.S.8XLARGE64.POST	32C64G
        # TI.S.8XLARGE128.POST 32C128G
        # TI.GN7.LARGE20.POST	4C20G T4*1/4
        # TI.GN7.2XLARGE40.POST	10C40G T4*1/2
        # TI.GN7.2XLARGE32.POST	8C32G T4*1
        # TI.GN7.5XLARGE80.POST	20C80G T4*1
        # TI.GN7.8XLARGE128.POST	32C128G T4*1
        # TI.GN7.10XLARGE160.POST	40C160G T4*2
        # TI.GN7.20XLARGE320.POST	80C320G T4*4
        # @type InstanceType: String
        # @param ScaleMode: 扩缩容类型 支持：自动 - "AUTO", 手动 - "MANUAL"
        # @type ScaleMode: String
        # @param Replicas: 实例数量, 不同计费模式和调节模式下对应关系如下
        # PREPAID 和 POSTPAID_BY_HOUR:
        # 手动调节模式下对应 实例数量
        # 自动调节模式下对应 基于时间的默认策略的实例数量
        # HYBRID_PAID:
        # 后付费实例手动调节模式下对应 实例数量
        # 后付费实例自动调节模式下对应 时间策略的默认策略的实例数量
        # @type Replicas: Integer
        # @param HorizontalPodAutoscaler: 自动伸缩信息
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Tione.v20211111.models.HorizontalPodAutoscaler`
        # @param LogEnable: 是否开启日志投递，开启后需填写配置投递到指定cls
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置，需要投递服务日志到指定cls时填写
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param ServiceAction: 特殊更新行为： "STOP": 停止, "RESUME": 重启, "SCALE": 扩缩容, 存在这些特殊更新行为时，会忽略其他更新字段
        # @type ServiceAction: String
        # @param ServiceDescription: 服务的描述
        # @type ServiceDescription: String
        # @param ScaleStrategy: 自动伸缩策略
        # @type ScaleStrategy: String
        # @param CronScaleJobs: 自动伸缩策略配置 HPA : 通过HPA进行弹性伸缩 CRON 通过定时任务进行伸缩
        # @type CronScaleJobs: Array
        # @param HybridBillingPrepaidReplicas: 计费模式[HYBRID_PAID]时生效, 用于标识混合计费模式下的预付费实例数, 若不填则默认为1
        # @type HybridBillingPrepaidReplicas: Integer
        # @param ModelHotUpdateEnable: 是否开启模型的热更新。默认不开启
        # @type ModelHotUpdateEnable: Boolean
        # @param ScheduledAction: 定时停止配置
        # @type ScheduledAction: :class:`Tencentcloud::Tione.v20211111.models.ScheduledAction`
        # @param ServiceLimit: 服务限速限流相关配置
        # @type ServiceLimit: :class:`Tencentcloud::Tione.v20211111.models.ServiceLimit`
        # @param VolumeMount: 挂载配置，目前只支持CFS
        # @type VolumeMount: :class:`Tencentcloud::Tione.v20211111.models.VolumeMount`
        # @param ModelTurboEnable: 是否开启模型的加速, 仅对StableDiffusion(动态加速)格式的模型有效。默认不开启
        # @type ModelTurboEnable: Boolean
        # @param Command: 服务的启动命令，如遇特殊字符导致配置失败，可使用CommandBase64参数
        # @type Command: String
        # @param ServiceEIP: 是否开启TIONE内网访问外部，此功能仅支持后付费机型与从TIONE平台购买的预付费机型；使用从CVM选择资源组时此配置不生效。
        # @type ServiceEIP: :class:`Tencentcloud::Tione.v20211111.models.ServiceEIP`
        # @param CommandBase64: 服务的启动命令，以base64格式进行输入，与Command同时配置时，仅当前参数生效
        # @type CommandBase64: String
        # @param ServicePort: 服务端口，仅在非内置镜像时生效，默认8501。不支持输入8501-8510,6006,9092
        # @type ServicePort: Integer
        # @param InstancePerReplicas: 单副本下的实例数，仅在部署类型为DIST时生效，默认1
        # @type InstancePerReplicas: Integer
        # @param TerminationGracePeriodSeconds: 30
        # @type TerminationGracePeriodSeconds: Integer
        # @param PreStopCommand: ["sleep","60"]
        # @type PreStopCommand: Array
        # @param GrpcEnable: 是否启动grpc端口
        # @type GrpcEnable: Boolean
        # @param HealthProbe: 健康探针
        # @type HealthProbe: :class:`Tencentcloud::Tione.v20211111.models.HealthProbe`
        # @param RollingUpdate: 滚动更新策略
        # @type RollingUpdate: :class:`Tencentcloud::Tione.v20211111.models.RollingUpdate`
        # @param Sidecar: sidecar配置
        # @type Sidecar: :class:`Tencentcloud::Tione.v20211111.models.SidecarSpec`
        # @param ResourceGroupId: 资源组 id
        # @type ResourceGroupId: String

        attr_accessor :ServiceId, :ModelInfo, :ImageInfo, :Env, :Resources, :InstanceType, :ScaleMode, :Replicas, :HorizontalPodAutoscaler, :LogEnable, :LogConfig, :ServiceAction, :ServiceDescription, :ScaleStrategy, :CronScaleJobs, :HybridBillingPrepaidReplicas, :ModelHotUpdateEnable, :ScheduledAction, :ServiceLimit, :VolumeMount, :ModelTurboEnable, :Command, :ServiceEIP, :CommandBase64, :ServicePort, :InstancePerReplicas, :TerminationGracePeriodSeconds, :PreStopCommand, :GrpcEnable, :HealthProbe, :RollingUpdate, :Sidecar, :ResourceGroupId

        def initialize(serviceid=nil, modelinfo=nil, imageinfo=nil, env=nil, resources=nil, instancetype=nil, scalemode=nil, replicas=nil, horizontalpodautoscaler=nil, logenable=nil, logconfig=nil, serviceaction=nil, servicedescription=nil, scalestrategy=nil, cronscalejobs=nil, hybridbillingprepaidreplicas=nil, modelhotupdateenable=nil, scheduledaction=nil, servicelimit=nil, volumemount=nil, modelturboenable=nil, command=nil, serviceeip=nil, commandbase64=nil, serviceport=nil, instanceperreplicas=nil, terminationgraceperiodseconds=nil, prestopcommand=nil, grpcenable=nil, healthprobe=nil, rollingupdate=nil, sidecar=nil, resourcegroupid=nil)
          @ServiceId = serviceid
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @Env = env
          @Resources = resources
          @InstanceType = instancetype
          @ScaleMode = scalemode
          @Replicas = replicas
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @LogEnable = logenable
          @LogConfig = logconfig
          @ServiceAction = serviceaction
          @ServiceDescription = servicedescription
          @ScaleStrategy = scalestrategy
          @CronScaleJobs = cronscalejobs
          @HybridBillingPrepaidReplicas = hybridbillingprepaidreplicas
          @ModelHotUpdateEnable = modelhotupdateenable
          @ScheduledAction = scheduledaction
          @ServiceLimit = servicelimit
          @VolumeMount = volumemount
          @ModelTurboEnable = modelturboenable
          @Command = command
          @ServiceEIP = serviceeip
          @CommandBase64 = commandbase64
          @ServicePort = serviceport
          @InstancePerReplicas = instanceperreplicas
          @TerminationGracePeriodSeconds = terminationgraceperiodseconds
          @PreStopCommand = prestopcommand
          @GrpcEnable = grpcenable
          @HealthProbe = healthprobe
          @RollingUpdate = rollingupdate
          @Sidecar = sidecar
          @ResourceGroupId = resourcegroupid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['Env'].nil?
            @Env = []
            params['Env'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @Env << envvar_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = ResourceInfo.new
            @Resources.deserialize(params['Resources'])
          end
          @InstanceType = params['InstanceType']
          @ScaleMode = params['ScaleMode']
          @Replicas = params['Replicas']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @ServiceAction = params['ServiceAction']
          @ServiceDescription = params['ServiceDescription']
          @ScaleStrategy = params['ScaleStrategy']
          unless params['CronScaleJobs'].nil?
            @CronScaleJobs = []
            params['CronScaleJobs'].each do |i|
              cronscalejob_tmp = CronScaleJob.new
              cronscalejob_tmp.deserialize(i)
              @CronScaleJobs << cronscalejob_tmp
            end
          end
          @HybridBillingPrepaidReplicas = params['HybridBillingPrepaidReplicas']
          @ModelHotUpdateEnable = params['ModelHotUpdateEnable']
          unless params['ScheduledAction'].nil?
            @ScheduledAction = ScheduledAction.new
            @ScheduledAction.deserialize(params['ScheduledAction'])
          end
          unless params['ServiceLimit'].nil?
            @ServiceLimit = ServiceLimit.new
            @ServiceLimit.deserialize(params['ServiceLimit'])
          end
          unless params['VolumeMount'].nil?
            @VolumeMount = VolumeMount.new
            @VolumeMount.deserialize(params['VolumeMount'])
          end
          @ModelTurboEnable = params['ModelTurboEnable']
          @Command = params['Command']
          unless params['ServiceEIP'].nil?
            @ServiceEIP = ServiceEIP.new
            @ServiceEIP.deserialize(params['ServiceEIP'])
          end
          @CommandBase64 = params['CommandBase64']
          @ServicePort = params['ServicePort']
          @InstancePerReplicas = params['InstancePerReplicas']
          @TerminationGracePeriodSeconds = params['TerminationGracePeriodSeconds']
          @PreStopCommand = params['PreStopCommand']
          @GrpcEnable = params['GrpcEnable']
          unless params['HealthProbe'].nil?
            @HealthProbe = HealthProbe.new
            @HealthProbe.deserialize(params['HealthProbe'])
          end
          unless params['RollingUpdate'].nil?
            @RollingUpdate = RollingUpdate.new
            @RollingUpdate.deserialize(params['RollingUpdate'])
          end
          unless params['Sidecar'].nil?
            @Sidecar = SidecarSpec.new
            @Sidecar.deserialize(params['Sidecar'])
          end
          @ResourceGroupId = params['ResourceGroupId']
        end
      end

      # ModifyModelService返回参数结构体
      class ModifyModelServiceResponse < TencentCloud::Common::AbstractModel
        # @param Service: 生成的模型服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: :class:`Tencentcloud::Tione.v20211111.models.Service`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Service, :RequestId

        def initialize(service=nil, requestid=nil)
          @Service = service
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyNotebookTags请求参数结构体
      class ModifyNotebookTagsRequest < TencentCloud::Common::AbstractModel
        # @param Id: Notebook Id
        # @type Id: String
        # @param Tags: Notebook修改标签集合
        # @type Tags: Array

        attr_accessor :Id, :Tags

        def initialize(id=nil, tags=nil)
          @Id = id
          @Tags = tags
        end

        def deserialize(params)
          @Id = params['Id']
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

      # ModifyNotebookTags返回参数结构体
      class ModifyNotebookTagsResponse < TencentCloud::Common::AbstractModel
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

      # 多模态对话内容,支持图片与文字信息
      class MultiModalContent < TencentCloud::Common::AbstractModel
        # @param Type: 对话类型，text表示文本对话内容，image_url表示图片对话内容
        # @type Type: String
        # @param Text: 文本对话内容，当Type为text时需要填写该值
        # @type Text: String
        # @param ImageUrl: 图片对话内容，当Type为image_url时需要填写该值
        # @type ImageUrl: :class:`Tencentcloud::Tione.v20211111.models.ImageUrl`

        attr_accessor :Type, :Text, :ImageUrl

        def initialize(type=nil, text=nil, imageurl=nil)
          @Type = type
          @Text = text
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @Type = params['Type']
          @Text = params['Text']
          unless params['ImageUrl'].nil?
            @ImageUrl = ImageUrl.new
            @ImageUrl.deserialize(params['ImageUrl'])
          end
        end
      end

      # 类型NotebookDetail
      class NotebookDetail < TencentCloud::Common::AbstractModel
        # @param Id: notebook  ID
        # @type Id: String
        # @param Name: notebook 名称
        # @type Name: String
        # @param LifecycleScriptId: 生命周期脚本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifecycleScriptId: String
        # @param PodName: Pod-Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param UpdateTime: Update-Time
        # @type UpdateTime: String
        # @param DirectInternetAccess: 是否访问公网
        # @type DirectInternetAccess: Boolean
        # @param ResourceGroupId: 预付费专用资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param Tags: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoStopping: 是否自动停止
        # @type AutoStopping: Boolean
        # @param AdditionalCodeRepoIds: 其他GIT存储库，最多3个，单个
        # 长度不超过512字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdditionalCodeRepoIds: Array
        # @param AutomaticStopTime: 自动停止时间，单位小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutomaticStopTime: Integer
        # @param ResourceConf: 资源配置
        # @type ResourceConf: :class:`Tencentcloud::Tione.v20211111.models.ResourceConf`
        # @param DefaultCodeRepoId: 默认GIT存储库，长度不超过512字符
        # @type DefaultCodeRepoId: String
        # @param EndTime: 训练输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 训练开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeStatus: String
        # @param RootAccess: 是否ROOT权限
        # @type RootAccess: Boolean
        # @param BillingInfos: 计贺金额信息，eg:2.00元/小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfos: Array
        # @param VolumeSizeInGB: 存储卷大小 （单位时GB，最小10GB，必须是10G的倍数）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSizeInGB: Integer
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param ChargeType: 计算资源付费模式 (- PREPAID：预付费，即包年包月 - POSTPAID_BY_HOUR：按小时后付费)
        # @type ChargeType: String
        # @param InstanceTypeAlias: 后付费资源规格说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeAlias: String
        # @param ResourceGroupName: 预付费资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param VolumeSourceType: 存储的类型。取值包含：
        #     FREE:        预付费的免费存储
        #     CLOUD_PREMIUM： 高性能云硬盘
        #     CLOUD_SSD： SSD云硬盘
        #     CFS:     CFS存储，包含NFS和turbo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSourceType: String
        # @param VolumeSourceCFS: CFS存储的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSourceCFS: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param DataConfigs: 数据配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataConfigs: Array
        # @param Message: notebook 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param DataSource: 数据源来源，eg：WeData_HDFS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ImageType: 镜像类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageType: String
        # @param SSHConfig: SSH配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSHConfig: :class:`Tencentcloud::Tione.v20211111.models.SSHConfig`
        # @param VolumeSourceGooseFS: GooseFS存储配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSourceGooseFS: :class:`Tencentcloud::Tione.v20211111.models.GooseFS`
        # @param SubUin: 子用户ID
        # @type SubUin: String
        # @param ResourceGroupInstanceId: 调度节点ID
        # @type ResourceGroupInstanceId: String
        # @param SubUinName: 子用户名称
        # @type SubUinName: String
        # @param JobCreateTime: 任务实例创建时间
        # @type JobCreateTime: String
        # @param AppId: Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String

        attr_accessor :Id, :Name, :LifecycleScriptId, :PodName, :UpdateTime, :DirectInternetAccess, :ResourceGroupId, :Tags, :AutoStopping, :AdditionalCodeRepoIds, :AutomaticStopTime, :ResourceConf, :DefaultCodeRepoId, :EndTime, :LogEnable, :LogConfig, :VpcId, :SubnetId, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :ChargeStatus, :RootAccess, :BillingInfos, :VolumeSizeInGB, :FailureReason, :ChargeType, :InstanceTypeAlias, :ResourceGroupName, :VolumeSourceType, :VolumeSourceCFS, :DataConfigs, :Message, :DataSource, :ImageInfo, :ImageType, :SSHConfig, :VolumeSourceGooseFS, :SubUin, :ResourceGroupInstanceId, :SubUinName, :JobCreateTime, :AppId

        def initialize(id=nil, name=nil, lifecyclescriptid=nil, podname=nil, updatetime=nil, directinternetaccess=nil, resourcegroupid=nil, tags=nil, autostopping=nil, additionalcoderepoids=nil, automaticstoptime=nil, resourceconf=nil, defaultcoderepoid=nil, endtime=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, chargestatus=nil, rootaccess=nil, billinginfos=nil, volumesizeingb=nil, failurereason=nil, chargetype=nil, instancetypealias=nil, resourcegroupname=nil, volumesourcetype=nil, volumesourcecfs=nil, dataconfigs=nil, message=nil, datasource=nil, imageinfo=nil, imagetype=nil, sshconfig=nil, volumesourcegoosefs=nil, subuin=nil, resourcegroupinstanceid=nil, subuinname=nil, jobcreatetime=nil, appid=nil)
          @Id = id
          @Name = name
          @LifecycleScriptId = lifecyclescriptid
          @PodName = podname
          @UpdateTime = updatetime
          @DirectInternetAccess = directinternetaccess
          @ResourceGroupId = resourcegroupid
          @Tags = tags
          @AutoStopping = autostopping
          @AdditionalCodeRepoIds = additionalcoderepoids
          @AutomaticStopTime = automaticstoptime
          @ResourceConf = resourceconf
          @DefaultCodeRepoId = defaultcoderepoid
          @EndTime = endtime
          @LogEnable = logenable
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @ChargeStatus = chargestatus
          @RootAccess = rootaccess
          @BillingInfos = billinginfos
          @VolumeSizeInGB = volumesizeingb
          @FailureReason = failurereason
          @ChargeType = chargetype
          @InstanceTypeAlias = instancetypealias
          @ResourceGroupName = resourcegroupname
          @VolumeSourceType = volumesourcetype
          @VolumeSourceCFS = volumesourcecfs
          @DataConfigs = dataconfigs
          @Message = message
          @DataSource = datasource
          @ImageInfo = imageinfo
          @ImageType = imagetype
          @SSHConfig = sshconfig
          @VolumeSourceGooseFS = volumesourcegoosefs
          @SubUin = subuin
          @ResourceGroupInstanceId = resourcegroupinstanceid
          @SubUinName = subuinname
          @JobCreateTime = jobcreatetime
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @LifecycleScriptId = params['LifecycleScriptId']
          @PodName = params['PodName']
          @UpdateTime = params['UpdateTime']
          @DirectInternetAccess = params['DirectInternetAccess']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoStopping = params['AutoStopping']
          @AdditionalCodeRepoIds = params['AdditionalCodeRepoIds']
          @AutomaticStopTime = params['AutomaticStopTime']
          unless params['ResourceConf'].nil?
            @ResourceConf = ResourceConf.new
            @ResourceConf.deserialize(params['ResourceConf'])
          end
          @DefaultCodeRepoId = params['DefaultCodeRepoId']
          @EndTime = params['EndTime']
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @ChargeStatus = params['ChargeStatus']
          @RootAccess = params['RootAccess']
          @BillingInfos = params['BillingInfos']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          @FailureReason = params['FailureReason']
          @ChargeType = params['ChargeType']
          @InstanceTypeAlias = params['InstanceTypeAlias']
          @ResourceGroupName = params['ResourceGroupName']
          @VolumeSourceType = params['VolumeSourceType']
          unless params['VolumeSourceCFS'].nil?
            @VolumeSourceCFS = CFSConfig.new
            @VolumeSourceCFS.deserialize(params['VolumeSourceCFS'])
          end
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          @Message = params['Message']
          @DataSource = params['DataSource']
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @ImageType = params['ImageType']
          unless params['SSHConfig'].nil?
            @SSHConfig = SSHConfig.new
            @SSHConfig.deserialize(params['SSHConfig'])
          end
          unless params['VolumeSourceGooseFS'].nil?
            @VolumeSourceGooseFS = GooseFS.new
            @VolumeSourceGooseFS.deserialize(params['VolumeSourceGooseFS'])
          end
          @SubUin = params['SubUin']
          @ResourceGroupInstanceId = params['ResourceGroupInstanceId']
          @SubUinName = params['SubUinName']
          @JobCreateTime = params['JobCreateTime']
          @AppId = params['AppId']
        end
      end

      # Notebook列表元素
      class NotebookSetItem < TencentCloud::Common::AbstractModel
        # @param Id: notebook ID
        # @type Id: String
        # @param Name: notebook 名称
        # @type Name: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ResourceConf: 资源配置
        # @type ResourceConf: :class:`Tencentcloud::Tione.v20211111.models.ResourceConf`
        # @param ResourceGroupId: 预付费资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param VolumeSizeInGB: 存储卷大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSizeInGB: Integer
        # @param BillingInfos: 计费金额信息，eg：2.00元/小时 (for后付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfos: Array
        # @param Tags: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param RuntimeInSeconds: 运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param ChargeStatus: 计费状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeStatus: String
        # @param Status: 状态
        # @type Status: String
        # @param FailureReason: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param PodName: Pod名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param InstanceTypeAlias: 后付费资源规格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeAlias: String
        # @param ResourceGroupName: 预付费资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param AutoStopping: 是否自动终止
        # @type AutoStopping: Boolean
        # @param AutomaticStopTime: 自动停止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutomaticStopTime: Integer
        # @param VolumeSourceType: 存储的类型。取值包含：
        #     FREE:        预付费的免费存储
        #     CLOUD_PREMIUM： 高性能云硬盘
        #     CLOUD_SSD： SSD云硬盘
        #     CFS:     CFS存储，包含NFS和turbo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSourceType: String
        # @param VolumeSourceCFS: CFS存储的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSourceCFS: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param Message: notebook 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param UserTypes: notebook用户类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserTypes: Array
        # @param SSHConfig: SSH配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSHConfig: :class:`Tencentcloud::Tione.v20211111.models.SSHConfig`
        # @param VolumeSourceGooseFS: GooseFS存储配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeSourceGooseFS: :class:`Tencentcloud::Tione.v20211111.models.GooseFS`
        # @param SubUin: 子用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUin: String
        # @param SubUinName: 子用户名称
        # @type SubUinName: String
        # @param AppId: AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String

        attr_accessor :Id, :Name, :ChargeType, :ResourceConf, :ResourceGroupId, :VolumeSizeInGB, :BillingInfos, :Tags, :CreateTime, :StartTime, :UpdateTime, :RuntimeInSeconds, :ChargeStatus, :Status, :FailureReason, :EndTime, :PodName, :InstanceTypeAlias, :ResourceGroupName, :AutoStopping, :AutomaticStopTime, :VolumeSourceType, :VolumeSourceCFS, :Message, :UserTypes, :SSHConfig, :VolumeSourceGooseFS, :SubUin, :SubUinName, :AppId

        def initialize(id=nil, name=nil, chargetype=nil, resourceconf=nil, resourcegroupid=nil, volumesizeingb=nil, billinginfos=nil, tags=nil, createtime=nil, starttime=nil, updatetime=nil, runtimeinseconds=nil, chargestatus=nil, status=nil, failurereason=nil, endtime=nil, podname=nil, instancetypealias=nil, resourcegroupname=nil, autostopping=nil, automaticstoptime=nil, volumesourcetype=nil, volumesourcecfs=nil, message=nil, usertypes=nil, sshconfig=nil, volumesourcegoosefs=nil, subuin=nil, subuinname=nil, appid=nil)
          @Id = id
          @Name = name
          @ChargeType = chargetype
          @ResourceConf = resourceconf
          @ResourceGroupId = resourcegroupid
          @VolumeSizeInGB = volumesizeingb
          @BillingInfos = billinginfos
          @Tags = tags
          @CreateTime = createtime
          @StartTime = starttime
          @UpdateTime = updatetime
          @RuntimeInSeconds = runtimeinseconds
          @ChargeStatus = chargestatus
          @Status = status
          @FailureReason = failurereason
          @EndTime = endtime
          @PodName = podname
          @InstanceTypeAlias = instancetypealias
          @ResourceGroupName = resourcegroupname
          @AutoStopping = autostopping
          @AutomaticStopTime = automaticstoptime
          @VolumeSourceType = volumesourcetype
          @VolumeSourceCFS = volumesourcecfs
          @Message = message
          @UserTypes = usertypes
          @SSHConfig = sshconfig
          @VolumeSourceGooseFS = volumesourcegoosefs
          @SubUin = subuin
          @SubUinName = subuinname
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ChargeType = params['ChargeType']
          unless params['ResourceConf'].nil?
            @ResourceConf = ResourceConf.new
            @ResourceConf.deserialize(params['ResourceConf'])
          end
          @ResourceGroupId = params['ResourceGroupId']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          @BillingInfos = params['BillingInfos']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @UpdateTime = params['UpdateTime']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @ChargeStatus = params['ChargeStatus']
          @Status = params['Status']
          @FailureReason = params['FailureReason']
          @EndTime = params['EndTime']
          @PodName = params['PodName']
          @InstanceTypeAlias = params['InstanceTypeAlias']
          @ResourceGroupName = params['ResourceGroupName']
          @AutoStopping = params['AutoStopping']
          @AutomaticStopTime = params['AutomaticStopTime']
          @VolumeSourceType = params['VolumeSourceType']
          unless params['VolumeSourceCFS'].nil?
            @VolumeSourceCFS = CFSConfig.new
            @VolumeSourceCFS.deserialize(params['VolumeSourceCFS'])
          end
          @Message = params['Message']
          @UserTypes = params['UserTypes']
          unless params['SSHConfig'].nil?
            @SSHConfig = SSHConfig.new
            @SSHConfig.deserialize(params['SSHConfig'])
          end
          unless params['VolumeSourceGooseFS'].nil?
            @VolumeSourceGooseFS = GooseFS.new
            @VolumeSourceGooseFS.deserialize(params['VolumeSourceGooseFS'])
          end
          @SubUin = params['SubUin']
          @SubUinName = params['SubUinName']
          @AppId = params['AppId']
        end
      end

      # 用于表示百分比或数量
      class NumOrPercent < TencentCloud::Common::AbstractModel
        # @param Type: Num,Percent ,分别表示数量和百分比，默认为 Num
        # @type Type: String
        # @param Value: 数值
        # @type Value: Integer

        attr_accessor :Type, :Value

        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 键值对
      class Option < TencentCloud::Common::AbstractModel
        # @param Name: 指标名
        # @type Name: String
        # @param Value: 指标值
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

      # 平台镜像信息详情
      class PlatformImageInfo < TencentCloud::Common::AbstractModel
        # @param Framework: 框架名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Framework: String
        # @param ImageType: 镜像类型: ccr or tcr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageType: String
        # @param ImageUrl: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param RegistryRegion: TCR镜像示例所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryRegion: String
        # @param RegistryId: TCR镜像所属实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: String
        # @param ImageName: 镜像名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageName: String
        # @param ImageId: 镜像Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param FrameworkVersion: 框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param SupportGpuList: 支持的gpu列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportGpuList: Array
        # @param Description: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ExtraAttributes: 业务属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAttributes: Array
        # @param ImageRange: 镜像适用场景Train/Inference/Notebook
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageRange: Array
        # @param SupportDistributedDeploy: 是否支持分布式部署
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportDistributedDeploy: Boolean
        # @param RegionScope: 支持的地域 all(所有地域)/autonomous(自动驾驶地域)/general(通用地域)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionScope: String

        attr_accessor :Framework, :ImageType, :ImageUrl, :RegistryRegion, :RegistryId, :ImageName, :ImageId, :FrameworkVersion, :SupportGpuList, :Description, :ExtraAttributes, :ImageRange, :SupportDistributedDeploy, :RegionScope

        def initialize(framework=nil, imagetype=nil, imageurl=nil, registryregion=nil, registryid=nil, imagename=nil, imageid=nil, frameworkversion=nil, supportgpulist=nil, description=nil, extraattributes=nil, imagerange=nil, supportdistributeddeploy=nil, regionscope=nil)
          @Framework = framework
          @ImageType = imagetype
          @ImageUrl = imageurl
          @RegistryRegion = registryregion
          @RegistryId = registryid
          @ImageName = imagename
          @ImageId = imageid
          @FrameworkVersion = frameworkversion
          @SupportGpuList = supportgpulist
          @Description = description
          @ExtraAttributes = extraattributes
          @ImageRange = imagerange
          @SupportDistributedDeploy = supportdistributeddeploy
          @RegionScope = regionscope
        end

        def deserialize(params)
          @Framework = params['Framework']
          @ImageType = params['ImageType']
          @ImageUrl = params['ImageUrl']
          @RegistryRegion = params['RegistryRegion']
          @RegistryId = params['RegistryId']
          @ImageName = params['ImageName']
          @ImageId = params['ImageId']
          @FrameworkVersion = params['FrameworkVersion']
          @SupportGpuList = params['SupportGpuList']
          @Description = params['Description']
          unless params['ExtraAttributes'].nil?
            @ExtraAttributes = []
            params['ExtraAttributes'].each do |i|
              attribute_tmp = Attribute.new
              attribute_tmp.deserialize(i)
              @ExtraAttributes << attribute_tmp
            end
          end
          @ImageRange = params['ImageRange']
          @SupportDistributedDeploy = params['SupportDistributedDeploy']
          @RegionScope = params['RegionScope']
        end
      end

      # Pod信息展示
      class Pod < TencentCloud::Common::AbstractModel
        # @param Name: pod名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Uid: pod的唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uid: String
        # @param ChargeType: 服务付费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param Phase: pod的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phase: String
        # @param IP: pod的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param CreateTime: pod的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Containers: 容器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Containers: :class:`Tencentcloud::Tione.v20211111.models.Container`
        # @param ContainerInfos: 容器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerInfos: Array
        # @param CrossTenantENIInfo: 容器调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrossTenantENIInfo: :class:`Tencentcloud::Tione.v20211111.models.CrossTenantENIInfo`
        # @param Status: 实例的状态信息
        # @type Status: String
        # @param StartScheduleTime: 实例的开始调度时间
        # @type StartScheduleTime: String
        # @param Message: 实例状态的补充信息
        # @type Message: String
        # @param NodeIP: 当前实例所在的节点 IP
        # @type NodeIP: String

        attr_accessor :Name, :Uid, :ChargeType, :Phase, :IP, :CreateTime, :Containers, :ContainerInfos, :CrossTenantENIInfo, :Status, :StartScheduleTime, :Message, :NodeIP
        extend Gem::Deprecate
        deprecate :Containers, :none, 2025, 7
        deprecate :Containers=, :none, 2025, 7

        def initialize(name=nil, uid=nil, chargetype=nil, phase=nil, ip=nil, createtime=nil, containers=nil, containerinfos=nil, crosstenanteniinfo=nil, status=nil, startscheduletime=nil, message=nil, nodeip=nil)
          @Name = name
          @Uid = uid
          @ChargeType = chargetype
          @Phase = phase
          @IP = ip
          @CreateTime = createtime
          @Containers = containers
          @ContainerInfos = containerinfos
          @CrossTenantENIInfo = crosstenanteniinfo
          @Status = status
          @StartScheduleTime = startscheduletime
          @Message = message
          @NodeIP = nodeip
        end

        def deserialize(params)
          @Name = params['Name']
          @Uid = params['Uid']
          @ChargeType = params['ChargeType']
          @Phase = params['Phase']
          @IP = params['IP']
          @CreateTime = params['CreateTime']
          unless params['Containers'].nil?
            @Containers = Container.new
            @Containers.deserialize(params['Containers'])
          end
          unless params['ContainerInfos'].nil?
            @ContainerInfos = []
            params['ContainerInfos'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @ContainerInfos << container_tmp
            end
          end
          unless params['CrossTenantENIInfo'].nil?
            @CrossTenantENIInfo = CrossTenantENIInfo.new
            @CrossTenantENIInfo.deserialize(params['CrossTenantENIInfo'])
          end
          @Status = params['Status']
          @StartScheduleTime = params['StartScheduleTime']
          @Message = params['Message']
          @NodeIP = params['NodeIP']
        end
      end

      # 任务建模Pod信息
      class PodInfo < TencentCloud::Common::AbstractModel
        # @param Name: pod名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param IP: pod的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param Status: pod状态。eg：SUBMITTING提交中、PENDING排队中、RUNNING运行中、SUCCEEDED已完成、FAILED异常、TERMINATING停止中、TERMINATED已停止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StartTime: pod启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: pod结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ResourceConfigInfo: pod资源配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param SubUin: Pod所属任务的SubUin信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUin: String

        attr_accessor :Name, :IP, :Status, :StartTime, :EndTime, :ResourceConfigInfo, :SubUin

        def initialize(name=nil, ip=nil, status=nil, starttime=nil, endtime=nil, resourceconfiginfo=nil, subuin=nil)
          @Name = name
          @IP = ip
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @ResourceConfigInfo = resourceconfiginfo
          @SubUin = subuin
        end

        def deserialize(params)
          @Name = params['Name']
          @IP = params['IP']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          @SubUin = params['SubUin']
        end
      end

      # 私有连接信息
      class PrivateLinkInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有连接所在的VPCID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 私有连接所在的子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param InnerHttpAddr: HTTP内网调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpAddr: Array
        # @param InnerHttpsAddr: HTTPS内网调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpsAddr: Array
        # @param State: 私有连接状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param InnerGrpcAddr: grpc内网调用地址
        # @type InnerGrpcAddr: Array

        attr_accessor :VpcId, :SubnetId, :InnerHttpAddr, :InnerHttpsAddr, :State, :InnerGrpcAddr

        def initialize(vpcid=nil, subnetid=nil, innerhttpaddr=nil, innerhttpsaddr=nil, state=nil, innergrpcaddr=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @InnerHttpAddr = innerhttpaddr
          @InnerHttpsAddr = innerhttpsaddr
          @State = state
          @InnerGrpcAddr = innergrpcaddr
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InnerHttpAddr = params['InnerHttpAddr']
          @InnerHttpsAddr = params['InnerHttpsAddr']
          @State = params['State']
          @InnerGrpcAddr = params['InnerGrpcAddr']
        end
      end

      # 探针结构信息
      class Probe < TencentCloud::Common::AbstractModel
        # @param ProbeAction: 探针行为
        # @type ProbeAction: :class:`Tencentcloud::Tione.v20211111.models.ProbeAction`
        # @param InitialDelaySeconds: 等待服务启动的延迟
        # @type InitialDelaySeconds: Integer
        # @param PeriodSeconds: 轮询检查时间间隔
        # @type PeriodSeconds: Integer
        # @param TimeoutSeconds: 检查超时时长
        # @type TimeoutSeconds: Integer
        # @param FailureThreshold: 检测失败认定次数
        # @type FailureThreshold: Integer
        # @param SuccessThreshold: 检测成功认定次数，就绪默认 3，存活/启动默认 1
        # @type SuccessThreshold: Integer

        attr_accessor :ProbeAction, :InitialDelaySeconds, :PeriodSeconds, :TimeoutSeconds, :FailureThreshold, :SuccessThreshold

        def initialize(probeaction=nil, initialdelayseconds=nil, periodseconds=nil, timeoutseconds=nil, failurethreshold=nil, successthreshold=nil)
          @ProbeAction = probeaction
          @InitialDelaySeconds = initialdelayseconds
          @PeriodSeconds = periodseconds
          @TimeoutSeconds = timeoutseconds
          @FailureThreshold = failurethreshold
          @SuccessThreshold = successthreshold
        end

        def deserialize(params)
          unless params['ProbeAction'].nil?
            @ProbeAction = ProbeAction.new
            @ProbeAction.deserialize(params['ProbeAction'])
          end
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @PeriodSeconds = params['PeriodSeconds']
          @TimeoutSeconds = params['TimeoutSeconds']
          @FailureThreshold = params['FailureThreshold']
          @SuccessThreshold = params['SuccessThreshold']
        end
      end

      # 探针行为
      class ProbeAction < TencentCloud::Common::AbstractModel
        # @param HTTPGet: http get 行为
        # @type HTTPGet: :class:`Tencentcloud::Tione.v20211111.models.HTTPGetAction`
        # @param Exec: 执行命令检查 行为
        # @type Exec: :class:`Tencentcloud::Tione.v20211111.models.ExecAction`
        # @param TCPSocket: tcp socket 检查行为
        # @type TCPSocket: :class:`Tencentcloud::Tione.v20211111.models.TCPSocketAction`
        # @param ActionType: 探针类型，默认 HTTPGet，可选值：HTTPGet、Exec、TCPSocket
        # @type ActionType: String

        attr_accessor :HTTPGet, :Exec, :TCPSocket, :ActionType

        def initialize(httpget=nil, exec=nil, tcpsocket=nil, actiontype=nil)
          @HTTPGet = httpget
          @Exec = exec
          @TCPSocket = tcpsocket
          @ActionType = actiontype
        end

        def deserialize(params)
          unless params['HTTPGet'].nil?
            @HTTPGet = HTTPGetAction.new
            @HTTPGet.deserialize(params['HTTPGet'])
          end
          unless params['Exec'].nil?
            @Exec = ExecAction.new
            @Exec.deserialize(params['Exec'])
          end
          unless params['TCPSocket'].nil?
            @TCPSocket = TCPSocketAction.new
            @TCPSocket.deserialize(params['TCPSocket'])
          end
          @ActionType = params['ActionType']
        end
      end

      # 公有云数据源结构
      class PublicDataSourceFS < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # PushTrainingMetrics请求参数结构体
      class PushTrainingMetricsRequest < TencentCloud::Common::AbstractModel
        # @param Data: 指标数据
        # @type Data: Array

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              metricdata_tmp = MetricData.new
              metricdata_tmp.deserialize(i)
              @Data << metricdata_tmp
            end
          end
        end
      end

      # PushTrainingMetrics返回参数结构体
      class PushTrainingMetricsResponse < TencentCloud::Common::AbstractModel
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

      # RDMA配置
      class RDMAConfig < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启RDMA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Boolean

        attr_accessor :Enable

        def initialize(enable=nil)
          @Enable = enable
        end

        def deserialize(params)
          @Enable = params['Enable']
        end
      end

      # Notebook资源参数
      class ResourceConf < TencentCloud::Common::AbstractModel
        # @param Cpu: cpu 处理器资源, 单位为1/1000核 (for预付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: memory 内存资源, 单位为1M (for预付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Gpu: gpu Gpu卡资源，单位为1/100卡，例如GpuType=T4时，1 Gpu = 1/100 T4卡 (for预付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param GpuType: GpuType 卡类型，参考资源组上对应的卡类型。eg: H800,A800,A100,T4,P4,V100等 (for预付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param InstanceType: 计算规格 (for后付费)，可选值如下：
        # TI.S.LARGE.POST: 4C8G
        # TI.S.2XLARGE16.POST:  8C16G
        # TI.S.2XLARGE32.POST:  8C32G
        # TI.S.4XLARGE32.POST:  16C32G
        # TI.S.4XLARGE64.POST:  16C64G
        # TI.S.6XLARGE48.POST:  24C48G
        # TI.S.6XLARGE96.POST:  24C96G
        # TI.S.8XLARGE64.POST:  32C64G
        # TI.S.8XLARGE128.POST : 32C128G
        # TI.GN10.2XLARGE40.POST: 8C40G V100*1
        # TI.GN10.5XLARGE80.POST:  18C80G V100*2
        # TI.GN10.10XLARGE160.POST :  32C160G V100*4
        # TI.GN10.20XLARGE320.POST :  72C320G V100*8
        # TI.GN7.8XLARGE128.POST: 32C128G T4*1
        # TI.GN7.10XLARGE160.POST: 40C160G T4*2
        # TI.GN7.20XLARGE320.POST: 80C320G T4*4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String

        attr_accessor :Cpu, :Memory, :Gpu, :GpuType, :InstanceType

        def initialize(cpu=nil, memory=nil, gpu=nil, gputype=nil, instancetype=nil)
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuType = gputype
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @GpuType = params['GpuType']
          @InstanceType = params['InstanceType']
        end
      end

      # 资源配置
      class ResourceConfigInfo < TencentCloud::Common::AbstractModel
        # @param Role: 角色，eg：PS、WORKER、DRIVER、EXECUTOR
        # @type Role: String
        # @param Cpu: cpu核数，使用资源组时需配置。单位：1/1000，即1000=1核
        # @type Cpu: Integer
        # @param Memory: 内存，使用资源组时需配置。单位为MB
        # @type Memory: Integer
        # @param GpuType: gpu卡类型，使用资源组时需配置
        # @type GpuType: String
        # @param Gpu: gpu卡数，使用资源组时需配置。单位：1/100，即100=1卡
        # @type Gpu: Integer
        # @param InstanceType: 算力规格ID
        # 计算规格 (for后付费)，可选值如下：
        # TI.S.LARGE.POST: 4C8G
        # TI.S.2XLARGE16.POST:  8C16G
        # TI.S.2XLARGE32.POST:  8C32G
        # TI.S.4XLARGE32.POST:  16C32G
        # TI.S.4XLARGE64.POST:  16C64G
        # TI.S.6XLARGE48.POST:  24C48G
        # TI.S.6XLARGE96.POST:  24C96G
        # TI.S.8XLARGE64.POST:  32C64G
        # TI.S.8XLARGE128.POST : 32C128G
        # TI.GN10.2XLARGE40.POST: 8C40G V100*1
        # TI.GN10.5XLARGE80.POST:  18C80G V100*2
        # TI.GN10.10XLARGE160.POST :  32C160G V100*4
        # TI.GN10.20XLARGE320.POST :  72C320G V100*8
        # TI.GN7.8XLARGE128.POST: 32C128G T4*1
        # TI.GN7.10XLARGE160.POST: 40C160G T4*2
        # TI.GN7.20XLARGE320.POST: 80C32
        # @type InstanceType: String
        # @param InstanceNum: 计算节点数
        # @type InstanceNum: Integer
        # @param InstanceTypeAlias: 算力规格名称
        # 计算规格 (for后付费)，可选值如下：
        # 4C8G
        # 8C16G
        # 8C32G
        # 16C32G
        # 6C64G
        # 24C48G
        # 24C96G
        # 32C64G
        # 32C128G
        # 8C40G V100*1
        # 8C80G V100*2
        # 32C160G V100*4
        # 72C320G V100*8
        # 32C128G T4*1
        # 40C160G T4*2
        # 80C32
        # @type InstanceTypeAlias: String
        # @param RDMAConfig: RDMA配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RDMAConfig: :class:`Tencentcloud::Tione.v20211111.models.RDMAConfig`

        attr_accessor :Role, :Cpu, :Memory, :GpuType, :Gpu, :InstanceType, :InstanceNum, :InstanceTypeAlias, :RDMAConfig

        def initialize(role=nil, cpu=nil, memory=nil, gputype=nil, gpu=nil, instancetype=nil, instancenum=nil, instancetypealias=nil, rdmaconfig=nil)
          @Role = role
          @Cpu = cpu
          @Memory = memory
          @GpuType = gputype
          @Gpu = gpu
          @InstanceType = instancetype
          @InstanceNum = instancenum
          @InstanceTypeAlias = instancetypealias
          @RDMAConfig = rdmaconfig
        end

        def deserialize(params)
          @Role = params['Role']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @GpuType = params['GpuType']
          @Gpu = params['Gpu']
          @InstanceType = params['InstanceType']
          @InstanceNum = params['InstanceNum']
          @InstanceTypeAlias = params['InstanceTypeAlias']
          unless params['RDMAConfig'].nil?
            @RDMAConfig = RDMAConfig.new
            @RDMAConfig.deserialize(params['RDMAConfig'])
          end
        end
      end

      # 资源组
      class ResourceGroup < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组id
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 资源组名称
        # @type ResourceGroupName: String
        # @param FreeInstance: 可用节点个数(运行中的节点)
        # @type FreeInstance: Integer
        # @param TotalInstance: 总节点个数(所有节点)
        # @type TotalInstance: Integer
        # @param UsedResource: 资资源组已用的资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedResource: :class:`Tencentcloud::Tione.v20211111.models.GroupResource`
        # @param TotalResource: 资源组总资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalResource: :class:`Tencentcloud::Tione.v20211111.models.GroupResource`
        # @param InstanceSet: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSet: Array
        # @param TagSet: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array

        attr_accessor :ResourceGroupId, :ResourceGroupName, :FreeInstance, :TotalInstance, :UsedResource, :TotalResource, :InstanceSet, :TagSet

        def initialize(resourcegroupid=nil, resourcegroupname=nil, freeinstance=nil, totalinstance=nil, usedresource=nil, totalresource=nil, instanceset=nil, tagset=nil)
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @FreeInstance = freeinstance
          @TotalInstance = totalinstance
          @UsedResource = usedresource
          @TotalResource = totalresource
          @InstanceSet = instanceset
          @TagSet = tagset
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          @FreeInstance = params['FreeInstance']
          @TotalInstance = params['TotalInstance']
          unless params['UsedResource'].nil?
            @UsedResource = GroupResource.new
            @UsedResource.deserialize(params['UsedResource'])
          end
          unless params['TotalResource'].nil?
            @TotalResource = GroupResource.new
            @TotalResource.deserialize(params['TotalResource'])
          end
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
        end
      end

      # 描述资源信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param Cpu: 处理器资源, 单位为1/1000核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: 内存资源, 单位为1M
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Gpu: Gpu卡个数资源, 单位为0.01单位的GpuType.
        # Gpu=100表示使用了“一张”gpu卡, 但此处的“一张”卡有可能是虚拟化后的1/4卡, 也有可能是整张卡. 取决于实例的机型
        # 例1 实例的机型带有1张虚拟gpu卡, 每张虚拟gpu卡对应1/4张实际T4卡, 则此时 GpuType=T4, Gpu=100, RealGpu=25.
        # 例2 实例的机型带有4张gpu整卡, 每张卡对应1张实际T4卡, 则 此时 GpuType=T4, Gpu=400, RealGpu=400.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param GpuType: Gpu卡型号 T4或者V100。仅展示当前 GPU 卡型号，若存在多类型同时使用，则参考 RealGpuDetailSet 的值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param RealGpu: 创建或更新时无需填写，仅展示需要关注
        # 后付费非整卡实例对应的实际的Gpu卡资源, 表示gpu资源对应实际的gpu卡个数.
        # RealGpu=100表示实际使用了一张gpu卡, 对应实际的实例机型, 有可能代表带有1/4卡的实例4个, 或者带有1/2卡的实例2个, 或者带有1卡的实力1个.
        # @type RealGpu: Integer
        # @param RealGpuDetailSet: 创建或更新时无需填写，仅展示需要关注。详细的GPU使用信息。
        # @type RealGpuDetailSet: Array

        attr_accessor :Cpu, :Memory, :Gpu, :GpuType, :RealGpu, :RealGpuDetailSet

        def initialize(cpu=nil, memory=nil, gpu=nil, gputype=nil, realgpu=nil, realgpudetailset=nil)
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuType = gputype
          @RealGpu = realgpu
          @RealGpuDetailSet = realgpudetailset
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @GpuType = params['GpuType']
          @RealGpu = params['RealGpu']
          unless params['RealGpuDetailSet'].nil?
            @RealGpuDetailSet = []
            params['RealGpuDetailSet'].each do |i|
              gpudetail_tmp = GpuDetail.new
              gpudetail_tmp.deserialize(i)
              @RealGpuDetailSet << gpudetail_tmp
            end
          end
        end
      end

      # 资源组节点运行任务信息
      class ResourceInstanceRunningJobInfo < TencentCloud::Common::AbstractModel
        # @param PodName: pod名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务自定义名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String

        attr_accessor :PodName, :TaskType, :TaskId, :TaskName

        def initialize(podname=nil, tasktype=nil, taskid=nil, taskname=nil)
          @PodName = podname
          @TaskType = tasktype
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @PodName = params['PodName']
          @TaskType = params['TaskType']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # 滚动更新策略
      class RollingUpdate < TencentCloud::Common::AbstractModel
        # @param MaxUnavailable: 滚动更新的最大不可用
        # @type MaxUnavailable: :class:`Tencentcloud::Tione.v20211111.models.NumOrPercent`
        # @param MaxSurge: 滚动更新的最大新增实例
        # @type MaxSurge: :class:`Tencentcloud::Tione.v20211111.models.NumOrPercent`

        attr_accessor :MaxUnavailable, :MaxSurge

        def initialize(maxunavailable=nil, maxsurge=nil)
          @MaxUnavailable = maxunavailable
          @MaxSurge = maxsurge
        end

        def deserialize(params)
          unless params['MaxUnavailable'].nil?
            @MaxUnavailable = NumOrPercent.new
            @MaxUnavailable.deserialize(params['MaxUnavailable'])
          end
          unless params['MaxSurge'].nil?
            @MaxSurge = NumOrPercent.new
            @MaxSurge.deserialize(params['MaxSurge'])
          end
        end
      end

      # notebook ssh端口配置
      class SSHConfig < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启ssh
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Boolean
        # @param PublicKey: 公钥信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKey: String
        # @param Port: 端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param LoginCommand: 登录命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginCommand: String
        # @param IsAddressChanged: 登录地址是否改变
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAddressChanged: Boolean

        attr_accessor :Enable, :PublicKey, :Port, :LoginCommand, :IsAddressChanged

        def initialize(enable=nil, publickey=nil, port=nil, logincommand=nil, isaddresschanged=nil)
          @Enable = enable
          @PublicKey = publickey
          @Port = port
          @LoginCommand = logincommand
          @IsAddressChanged = isaddresschanged
        end

        def deserialize(params)
          @Enable = params['Enable']
          @PublicKey = params['PublicKey']
          @Port = params['Port']
          @LoginCommand = params['LoginCommand']
          @IsAddressChanged = params['IsAddressChanged']
        end
      end

      # 定时的事务和行为
      class ScheduledAction < TencentCloud::Common::AbstractModel
        # @param ScheduleStop: 是否要定时停止服务，true or false。true 则 ScheduleStopTime 必填， false 则 ScheduleStopTime 不生效
        # @type ScheduleStop: Boolean
        # @param ScheduleStopTime: 要执行定时停止的时间，格式：“2022-01-26T19:46:22+08:00”
        # @type ScheduleStopTime: String

        attr_accessor :ScheduleStop, :ScheduleStopTime

        def initialize(schedulestop=nil, schedulestoptime=nil)
          @ScheduleStop = schedulestop
          @ScheduleStopTime = schedulestoptime
        end

        def deserialize(params)
          @ScheduleStop = params['ScheduleStop']
          @ScheduleStopTime = params['ScheduleStopTime']
        end
      end

      # 表格数据集表头信息
      class SchemaInfo < TencentCloud::Common::AbstractModel
        # @param Name: 长度30字符内
        # @type Name: String
        # @param Type: 数据类型
        # @type Type: String

        attr_accessor :Name, :Type

        def initialize(name=nil, type=nil)
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 描述在线服务
      class Service < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组id
        # @type ServiceGroupId: String
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param ServiceGroupName: 服务组名
        # @type ServiceGroupName: String
        # @param ServiceDescription: 服务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDescription: String
        # @param ServiceInfo: 服务的详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInfo: :class:`Tencentcloud::Tione.v20211111.models.ServiceInfo`
        # @param ClusterId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param ChargeType: 付费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param ResourceGroupId: 包年包月服务的资源组id，按量计费的服务为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 包年包月服务对应的资源组名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param Tags: 服务的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param IngressName: 服务所在的 ingress 的 name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IngressName: String
        # @param CreatedBy: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedBy: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Uin: 主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubUin: 子账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUin: String
        # @param AppId: app_id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param BusinessStatus: 服务的业务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessStatus: String
        # @param ServiceLimit: 已废弃,以ServiceInfo中的对应为准
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceLimit: :class:`Tencentcloud::Tione.v20211111.models.ServiceLimit`
        # @param ScheduledAction: 已废弃,以ServiceInfo中的对应为准
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledAction: :class:`Tencentcloud::Tione.v20211111.models.ScheduledAction`
        # @param CreateFailedReason: 服务创建失败的原因，创建成功后该字段为默认值 CREATE_SUCCEED
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateFailedReason: String
        # @param Status: 服务状态
        # CREATING 创建中
        # CREATE_FAILED 创建失败
        # Normal	正常运行中
        # Stopped  已停止
        # Stopping 停止中
        # Abnormal 异常
        # Pending 启动中
        # Waiting 就绪中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BillingInfo: 费用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfo: String
        # @param Weight: 模型权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param CreateSource: 服务的创建来源
        # AUTO_ML: 来自自动学习的一键发布
        # DEFAULT: 其他来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateSource: String
        # @param Version: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param LatestVersion: 服务组下服务的最高版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestVersion: String
        # @param ResourceGroupSWType: 资源组类别 托管 NORMAL，纳管 SW
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupSWType: String
        # @param ArchiveStatus: 服务的归档状态  Waiting 等待归档中，Archived 已归档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArchiveStatus: String
        # @param DeployType: 服务的部署类型 [STANDARD 标准部署，DIST 分布式多机部署] 默认STANDARD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployType: String
        # @param InstancePerReplicas: 单副本下的实例数，仅在部署类型为DIST时生效，默认1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancePerReplicas: String
        # @param MonitorSource: 用于监控查询的Source
        # 枚举值，部分情况下与CreateSource不同，通过该字段兼容
        # @type MonitorSource: String

        attr_accessor :ServiceGroupId, :ServiceId, :ServiceGroupName, :ServiceDescription, :ServiceInfo, :ClusterId, :Region, :Namespace, :ChargeType, :ResourceGroupId, :ResourceGroupName, :Tags, :IngressName, :CreatedBy, :CreateTime, :UpdateTime, :Uin, :SubUin, :AppId, :BusinessStatus, :ServiceLimit, :ScheduledAction, :CreateFailedReason, :Status, :BillingInfo, :Weight, :CreateSource, :Version, :LatestVersion, :ResourceGroupSWType, :ArchiveStatus, :DeployType, :InstancePerReplicas, :MonitorSource
        extend Gem::Deprecate
        deprecate :ServiceLimit, :none, 2025, 7
        deprecate :ServiceLimit=, :none, 2025, 7
        deprecate :ScheduledAction, :none, 2025, 7
        deprecate :ScheduledAction=, :none, 2025, 7

        def initialize(servicegroupid=nil, serviceid=nil, servicegroupname=nil, servicedescription=nil, serviceinfo=nil, clusterid=nil, region=nil, namespace=nil, chargetype=nil, resourcegroupid=nil, resourcegroupname=nil, tags=nil, ingressname=nil, createdby=nil, createtime=nil, updatetime=nil, uin=nil, subuin=nil, appid=nil, businessstatus=nil, servicelimit=nil, scheduledaction=nil, createfailedreason=nil, status=nil, billinginfo=nil, weight=nil, createsource=nil, version=nil, latestversion=nil, resourcegroupswtype=nil, archivestatus=nil, deploytype=nil, instanceperreplicas=nil, monitorsource=nil)
          @ServiceGroupId = servicegroupid
          @ServiceId = serviceid
          @ServiceGroupName = servicegroupname
          @ServiceDescription = servicedescription
          @ServiceInfo = serviceinfo
          @ClusterId = clusterid
          @Region = region
          @Namespace = namespace
          @ChargeType = chargetype
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @Tags = tags
          @IngressName = ingressname
          @CreatedBy = createdby
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Uin = uin
          @SubUin = subuin
          @AppId = appid
          @BusinessStatus = businessstatus
          @ServiceLimit = servicelimit
          @ScheduledAction = scheduledaction
          @CreateFailedReason = createfailedreason
          @Status = status
          @BillingInfo = billinginfo
          @Weight = weight
          @CreateSource = createsource
          @Version = version
          @LatestVersion = latestversion
          @ResourceGroupSWType = resourcegroupswtype
          @ArchiveStatus = archivestatus
          @DeployType = deploytype
          @InstancePerReplicas = instanceperreplicas
          @MonitorSource = monitorsource
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @ServiceId = params['ServiceId']
          @ServiceGroupName = params['ServiceGroupName']
          @ServiceDescription = params['ServiceDescription']
          unless params['ServiceInfo'].nil?
            @ServiceInfo = ServiceInfo.new
            @ServiceInfo.deserialize(params['ServiceInfo'])
          end
          @ClusterId = params['ClusterId']
          @Region = params['Region']
          @Namespace = params['Namespace']
          @ChargeType = params['ChargeType']
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @IngressName = params['IngressName']
          @CreatedBy = params['CreatedBy']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @AppId = params['AppId']
          @BusinessStatus = params['BusinessStatus']
          unless params['ServiceLimit'].nil?
            @ServiceLimit = ServiceLimit.new
            @ServiceLimit.deserialize(params['ServiceLimit'])
          end
          unless params['ScheduledAction'].nil?
            @ScheduledAction = ScheduledAction.new
            @ScheduledAction.deserialize(params['ScheduledAction'])
          end
          @CreateFailedReason = params['CreateFailedReason']
          @Status = params['Status']
          @BillingInfo = params['BillingInfo']
          @Weight = params['Weight']
          @CreateSource = params['CreateSource']
          @Version = params['Version']
          @LatestVersion = params['LatestVersion']
          @ResourceGroupSWType = params['ResourceGroupSWType']
          @ArchiveStatus = params['ArchiveStatus']
          @DeployType = params['DeployType']
          @InstancePerReplicas = params['InstancePerReplicas']
          @MonitorSource = params['MonitorSource']
        end
      end

      # 服务的调用信息，服务组下唯一
      class ServiceCallInfo < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGroupId: String
        # @param InnerHttpAddr: 内网http调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpAddr: String
        # @param InnerHttpsAddr: 内网https调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpsAddr: String
        # @param OuterHttpAddr: 内网http调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OuterHttpAddr: String
        # @param OuterHttpsAddr: 内网https调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OuterHttpsAddr: String
        # @param AppKey: 调用key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppKey: String
        # @param AppSecret: 调用secret
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppSecret: String
        # @param AuthorizationEnable: 鉴权是否开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationEnable: Boolean

        attr_accessor :ServiceGroupId, :InnerHttpAddr, :InnerHttpsAddr, :OuterHttpAddr, :OuterHttpsAddr, :AppKey, :AppSecret, :AuthorizationEnable

        def initialize(servicegroupid=nil, innerhttpaddr=nil, innerhttpsaddr=nil, outerhttpaddr=nil, outerhttpsaddr=nil, appkey=nil, appsecret=nil, authorizationenable=nil)
          @ServiceGroupId = servicegroupid
          @InnerHttpAddr = innerhttpaddr
          @InnerHttpsAddr = innerhttpsaddr
          @OuterHttpAddr = outerhttpaddr
          @OuterHttpsAddr = outerhttpsaddr
          @AppKey = appkey
          @AppSecret = appsecret
          @AuthorizationEnable = authorizationenable
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @InnerHttpAddr = params['InnerHttpAddr']
          @InnerHttpsAddr = params['InnerHttpsAddr']
          @OuterHttpAddr = params['OuterHttpAddr']
          @OuterHttpsAddr = params['OuterHttpsAddr']
          @AppKey = params['AppKey']
          @AppSecret = params['AppSecret']
          @AuthorizationEnable = params['AuthorizationEnable']
        end
      end

      # V2版本的服务调用信息
      class ServiceCallInfoV2 < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGroupId: String
        # @param InternetEndpoint: 服务的公网调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetEndpoint: String
        # @param AuthorizationEnable: 鉴权是否开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationEnable: Boolean
        # @param AuthToken: 鉴权token，仅当AuthorizationEnable为true时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthToken: String
        # @param AuthTokens: LLM token 列表
        # @type AuthTokens: Array
        # @param EnableLimit: 是否开启限流
        # @type EnableLimit: Boolean
        # @param GrpcHost: 访问grpc时需携带的虚拟Host
        # @type GrpcHost: String

        attr_accessor :ServiceGroupId, :InternetEndpoint, :AuthorizationEnable, :AuthToken, :AuthTokens, :EnableLimit, :GrpcHost

        def initialize(servicegroupid=nil, internetendpoint=nil, authorizationenable=nil, authtoken=nil, authtokens=nil, enablelimit=nil, grpchost=nil)
          @ServiceGroupId = servicegroupid
          @InternetEndpoint = internetendpoint
          @AuthorizationEnable = authorizationenable
          @AuthToken = authtoken
          @AuthTokens = authtokens
          @EnableLimit = enablelimit
          @GrpcHost = grpchost
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @InternetEndpoint = params['InternetEndpoint']
          @AuthorizationEnable = params['AuthorizationEnable']
          @AuthToken = params['AuthToken']
          unless params['AuthTokens'].nil?
            @AuthTokens = []
            params['AuthTokens'].each do |i|
              authtoken_tmp = AuthToken.new
              authtoken_tmp.deserialize(i)
              @AuthTokens << authtoken_tmp
            end
          end
          @EnableLimit = params['EnableLimit']
          @GrpcHost = params['GrpcHost']
        end
      end

      # 服务共享弹性网卡设置
      class ServiceEIP < TencentCloud::Common::AbstractModel
        # @param EnableEIP: 是否开启TIONE内网到外部的访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableEIP: Boolean
        # @param VpcId: 用户VpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 用户subnetId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :EnableEIP, :VpcId, :SubnetId

        def initialize(enableeip=nil, vpcid=nil, subnetid=nil)
          @EnableEIP = enableeip
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @EnableEIP = params['EnableEIP']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # 共享弹性网卡信息
      class ServiceEIPInfo < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param VpcId: 用户VpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 用户子网Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :ServiceId, :VpcId, :SubnetId

        def initialize(serviceid=nil, vpcid=nil, subnetid=nil)
          @ServiceId = serviceid
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # 在线服务一个服务组的信息
      class ServiceGroup < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组id
        # @type ServiceGroupId: String
        # @param ServiceGroupName: 服务组名
        # @type ServiceGroupName: String
        # @param CreatedBy: 创建者
        # @type CreatedBy: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Uin: 主账号
        # @type Uin: String
        # @param ServiceCount: 服务组下服务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCount: Integer
        # @param RunningServiceCount: 服务组下在运行的服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningServiceCount: Integer
        # @param Services: 服务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Services: Array
        # @param Status: 服务组状态，与服务一致
        #  CREATING 创建中
        #      CREATE_FAILED 创建失败
        #      Normal	正常运行中
        #      Stopped  已停止
        #      Stopping 停止中
        #      Abnormal 异常
        #      Pending 启动中
        #      Waiting 就绪中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Tags: 服务组标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param LatestVersion: 服务组下最高版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestVersion: String
        # @param BusinessStatus: 服务的业务状态
        # CREATING 创建中
        #      CREATE_FAILED 创建失败
        #      ARREARS_STOP 因欠费被强制停止
        #      BILLING 计费中
        #      WHITELIST_USING 白名单试用中
        #      WHITELIST_STOP 白名单额度不足
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessStatus: String
        # @param BillingInfo: 服务的计费信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfo: String
        # @param CreateSource: 服务的创建来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateSource: String
        # @param WeightUpdateStatus: 服务组的权重更新状态
        # UPDATING 更新中
        #      UPDATED 更新成功
        #      UPDATE_FAILED 更新失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeightUpdateStatus: String
        # @param ReplicasCount: 服务组下运行的pod数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicasCount: Integer
        # @param AvailableReplicasCount: 服务组下期望的pod数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableReplicasCount: Integer
        # @param SubUin: 服务组的subuin
        # @type SubUin: String
        # @param AppId: 服务组的app_id
        # @type AppId: Integer
        # @param AuthorizationEnable: 是否开启鉴权
        # @type AuthorizationEnable: Boolean
        # @param AuthTokens: 限流鉴权 token 列表
        # @type AuthTokens: Array
        # @param MonitorSource: 用于监控的创建来源字段
        # @type MonitorSource: String
        # @param SubUinName: 子用户的 nickname
        # @type SubUinName: String

        attr_accessor :ServiceGroupId, :ServiceGroupName, :CreatedBy, :CreateTime, :UpdateTime, :Uin, :ServiceCount, :RunningServiceCount, :Services, :Status, :Tags, :LatestVersion, :BusinessStatus, :BillingInfo, :CreateSource, :WeightUpdateStatus, :ReplicasCount, :AvailableReplicasCount, :SubUin, :AppId, :AuthorizationEnable, :AuthTokens, :MonitorSource, :SubUinName

        def initialize(servicegroupid=nil, servicegroupname=nil, createdby=nil, createtime=nil, updatetime=nil, uin=nil, servicecount=nil, runningservicecount=nil, services=nil, status=nil, tags=nil, latestversion=nil, businessstatus=nil, billinginfo=nil, createsource=nil, weightupdatestatus=nil, replicascount=nil, availablereplicascount=nil, subuin=nil, appid=nil, authorizationenable=nil, authtokens=nil, monitorsource=nil, subuinname=nil)
          @ServiceGroupId = servicegroupid
          @ServiceGroupName = servicegroupname
          @CreatedBy = createdby
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Uin = uin
          @ServiceCount = servicecount
          @RunningServiceCount = runningservicecount
          @Services = services
          @Status = status
          @Tags = tags
          @LatestVersion = latestversion
          @BusinessStatus = businessstatus
          @BillingInfo = billinginfo
          @CreateSource = createsource
          @WeightUpdateStatus = weightupdatestatus
          @ReplicasCount = replicascount
          @AvailableReplicasCount = availablereplicascount
          @SubUin = subuin
          @AppId = appid
          @AuthorizationEnable = authorizationenable
          @AuthTokens = authtokens
          @MonitorSource = monitorsource
          @SubUinName = subuinname
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          @ServiceGroupName = params['ServiceGroupName']
          @CreatedBy = params['CreatedBy']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Uin = params['Uin']
          @ServiceCount = params['ServiceCount']
          @RunningServiceCount = params['RunningServiceCount']
          unless params['Services'].nil?
            @Services = []
            params['Services'].each do |i|
              service_tmp = Service.new
              service_tmp.deserialize(i)
              @Services << service_tmp
            end
          end
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @LatestVersion = params['LatestVersion']
          @BusinessStatus = params['BusinessStatus']
          @BillingInfo = params['BillingInfo']
          @CreateSource = params['CreateSource']
          @WeightUpdateStatus = params['WeightUpdateStatus']
          @ReplicasCount = params['ReplicasCount']
          @AvailableReplicasCount = params['AvailableReplicasCount']
          @SubUin = params['SubUin']
          @AppId = params['AppId']
          @AuthorizationEnable = params['AuthorizationEnable']
          unless params['AuthTokens'].nil?
            @AuthTokens = []
            params['AuthTokens'].each do |i|
              authtoken_tmp = AuthToken.new
              authtoken_tmp.deserialize(i)
              @AuthTokens << authtoken_tmp
            end
          end
          @MonitorSource = params['MonitorSource']
          @SubUinName = params['SubUinName']
        end
      end

      # 推理服务在集群中的信息
      class ServiceInfo < TencentCloud::Common::AbstractModel
        # @param Replicas: 期望运行的Pod数量，停止状态是0
        # 不同计费模式和调节模式下对应关系如下
        # PREPAID 和 POSTPAID_BY_HOUR:
        # 手动调节模式下对应 实例数量
        # 自动调节模式下对应 基于时间的默认策略的实例数量
        # HYBRID_PAID:
        # 后付费实例手动调节模式下对应 实例数量
        # 后付费实例自动调节模式下对应 时间策略的默认策略的实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param ImageInfo: 镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param Env: 环境变量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: Array
        # @param Resources: 资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param InstanceType: 后付费实例对应的机型规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param ModelInfo: 模型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param LogEnable: 是否启用日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param AuthorizationEnable: 是否开启鉴权
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationEnable: Boolean
        # @param HorizontalPodAutoscaler: hpa配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Tione.v20211111.models.HorizontalPodAutoscaler`
        # @param Status: 服务的状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: :class:`Tencentcloud::Tione.v20211111.models.WorkloadStatus`
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param ResourceTotal: 资源总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTotal: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param OldReplicas: 历史实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldReplicas: Integer
        # @param HybridBillingPrepaidReplicas: 计费模式[HYBRID_PAID]时生效, 用于标识混合计费模式下的预付费实例数, 若不填则默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HybridBillingPrepaidReplicas: Integer
        # @param OldHybridBillingPrepaidReplicas: 历史 HYBRID_PAID 时的实例数，用户恢复服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldHybridBillingPrepaidReplicas: Integer
        # @param ModelHotUpdateEnable: 是否开启模型的热更新。默认不开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelHotUpdateEnable: Boolean
        # @param InstanceAlias: 服务的规格别名
        # @type InstanceAlias: String
        # @param ScaleMode: 实例数量调节方式,默认为手动
        # 支持：自动 - "AUTO", 手动 - "MANUAL"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleMode: String
        # @param CronScaleJobs: 定时伸缩任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronScaleJobs: Array
        # @param ScaleStrategy: 定时伸缩策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleStrategy: String
        # @param ScheduledAction: 定时停止的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledAction: :class:`Tencentcloud::Tione.v20211111.models.ScheduledAction`
        # @param PodList: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodList: Array
        # @param Pods: Pod列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pods: :class:`Tencentcloud::Tione.v20211111.models.Pod`
        # @param PodInfos: Pod列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodInfos: Array
        # @param ServiceLimit: 服务限速限流相关配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceLimit: :class:`Tencentcloud::Tione.v20211111.models.ServiceLimit`
        # @param ModelTurboEnable: 是否开启模型的加速, 仅对StableDiffusion(动态加速)格式的模型有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelTurboEnable: Boolean
        # @param VolumeMount: 挂载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeMount: :class:`Tencentcloud::Tione.v20211111.models.VolumeMount`
        # @param InferCodeInfo: 推理代码信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InferCodeInfo: :class:`Tencentcloud::Tione.v20211111.models.InferCodeInfo`
        # @param Command: 服务的启动命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: String
        # @param ServiceEIP: 开启TIONE内网访问外部设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceEIP: :class:`Tencentcloud::Tione.v20211111.models.ServiceEIP`
        # @param ServicePort: 服务端口，默认为8501
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServicePort: Integer
        # @param TerminationGracePeriodSeconds: 服务的优雅退出时限。单位为秒，默认值为30，最小为1
        # @type TerminationGracePeriodSeconds: Integer
        # @param PreStopCommand: 服务实例停止前执行的命令，执行完毕或执行时间超过优雅退出时限后实例结束
        # @type PreStopCommand: Array
        # @param GrpcEnable: 是否启用grpc端口
        # @type GrpcEnable: Boolean
        # @param HealthProbe: 健康探针
        # @type HealthProbe: :class:`Tencentcloud::Tione.v20211111.models.HealthProbe`
        # @param RollingUpdate: 滚动更新配置
        # @type RollingUpdate: :class:`Tencentcloud::Tione.v20211111.models.RollingUpdate`

        attr_accessor :Replicas, :ImageInfo, :Env, :Resources, :InstanceType, :ModelInfo, :LogEnable, :LogConfig, :AuthorizationEnable, :HorizontalPodAutoscaler, :Status, :Weight, :ResourceTotal, :OldReplicas, :HybridBillingPrepaidReplicas, :OldHybridBillingPrepaidReplicas, :ModelHotUpdateEnable, :InstanceAlias, :ScaleMode, :CronScaleJobs, :ScaleStrategy, :ScheduledAction, :PodList, :Pods, :PodInfos, :ServiceLimit, :ModelTurboEnable, :VolumeMount, :InferCodeInfo, :Command, :ServiceEIP, :ServicePort, :TerminationGracePeriodSeconds, :PreStopCommand, :GrpcEnable, :HealthProbe, :RollingUpdate
        extend Gem::Deprecate
        deprecate :PodList, :none, 2025, 7
        deprecate :PodList=, :none, 2025, 7
        deprecate :Pods, :none, 2025, 7
        deprecate :Pods=, :none, 2025, 7

        def initialize(replicas=nil, imageinfo=nil, env=nil, resources=nil, instancetype=nil, modelinfo=nil, logenable=nil, logconfig=nil, authorizationenable=nil, horizontalpodautoscaler=nil, status=nil, weight=nil, resourcetotal=nil, oldreplicas=nil, hybridbillingprepaidreplicas=nil, oldhybridbillingprepaidreplicas=nil, modelhotupdateenable=nil, instancealias=nil, scalemode=nil, cronscalejobs=nil, scalestrategy=nil, scheduledaction=nil, podlist=nil, pods=nil, podinfos=nil, servicelimit=nil, modelturboenable=nil, volumemount=nil, infercodeinfo=nil, command=nil, serviceeip=nil, serviceport=nil, terminationgraceperiodseconds=nil, prestopcommand=nil, grpcenable=nil, healthprobe=nil, rollingupdate=nil)
          @Replicas = replicas
          @ImageInfo = imageinfo
          @Env = env
          @Resources = resources
          @InstanceType = instancetype
          @ModelInfo = modelinfo
          @LogEnable = logenable
          @LogConfig = logconfig
          @AuthorizationEnable = authorizationenable
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @Status = status
          @Weight = weight
          @ResourceTotal = resourcetotal
          @OldReplicas = oldreplicas
          @HybridBillingPrepaidReplicas = hybridbillingprepaidreplicas
          @OldHybridBillingPrepaidReplicas = oldhybridbillingprepaidreplicas
          @ModelHotUpdateEnable = modelhotupdateenable
          @InstanceAlias = instancealias
          @ScaleMode = scalemode
          @CronScaleJobs = cronscalejobs
          @ScaleStrategy = scalestrategy
          @ScheduledAction = scheduledaction
          @PodList = podlist
          @Pods = pods
          @PodInfos = podinfos
          @ServiceLimit = servicelimit
          @ModelTurboEnable = modelturboenable
          @VolumeMount = volumemount
          @InferCodeInfo = infercodeinfo
          @Command = command
          @ServiceEIP = serviceeip
          @ServicePort = serviceport
          @TerminationGracePeriodSeconds = terminationgraceperiodseconds
          @PreStopCommand = prestopcommand
          @GrpcEnable = grpcenable
          @HealthProbe = healthprobe
          @RollingUpdate = rollingupdate
        end

        def deserialize(params)
          @Replicas = params['Replicas']
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['Env'].nil?
            @Env = []
            params['Env'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @Env << envvar_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = ResourceInfo.new
            @Resources.deserialize(params['Resources'])
          end
          @InstanceType = params['InstanceType']
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @AuthorizationEnable = params['AuthorizationEnable']
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscaler.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          unless params['Status'].nil?
            @Status = WorkloadStatus.new
            @Status.deserialize(params['Status'])
          end
          @Weight = params['Weight']
          unless params['ResourceTotal'].nil?
            @ResourceTotal = ResourceInfo.new
            @ResourceTotal.deserialize(params['ResourceTotal'])
          end
          @OldReplicas = params['OldReplicas']
          @HybridBillingPrepaidReplicas = params['HybridBillingPrepaidReplicas']
          @OldHybridBillingPrepaidReplicas = params['OldHybridBillingPrepaidReplicas']
          @ModelHotUpdateEnable = params['ModelHotUpdateEnable']
          @InstanceAlias = params['InstanceAlias']
          @ScaleMode = params['ScaleMode']
          unless params['CronScaleJobs'].nil?
            @CronScaleJobs = []
            params['CronScaleJobs'].each do |i|
              cronscalejob_tmp = CronScaleJob.new
              cronscalejob_tmp.deserialize(i)
              @CronScaleJobs << cronscalejob_tmp
            end
          end
          @ScaleStrategy = params['ScaleStrategy']
          unless params['ScheduledAction'].nil?
            @ScheduledAction = ScheduledAction.new
            @ScheduledAction.deserialize(params['ScheduledAction'])
          end
          @PodList = params['PodList']
          unless params['Pods'].nil?
            @Pods = Pod.new
            @Pods.deserialize(params['Pods'])
          end
          unless params['PodInfos'].nil?
            @PodInfos = []
            params['PodInfos'].each do |i|
              pod_tmp = Pod.new
              pod_tmp.deserialize(i)
              @PodInfos << pod_tmp
            end
          end
          unless params['ServiceLimit'].nil?
            @ServiceLimit = ServiceLimit.new
            @ServiceLimit.deserialize(params['ServiceLimit'])
          end
          @ModelTurboEnable = params['ModelTurboEnable']
          unless params['VolumeMount'].nil?
            @VolumeMount = VolumeMount.new
            @VolumeMount.deserialize(params['VolumeMount'])
          end
          unless params['InferCodeInfo'].nil?
            @InferCodeInfo = InferCodeInfo.new
            @InferCodeInfo.deserialize(params['InferCodeInfo'])
          end
          @Command = params['Command']
          unless params['ServiceEIP'].nil?
            @ServiceEIP = ServiceEIP.new
            @ServiceEIP.deserialize(params['ServiceEIP'])
          end
          @ServicePort = params['ServicePort']
          @TerminationGracePeriodSeconds = params['TerminationGracePeriodSeconds']
          @PreStopCommand = params['PreStopCommand']
          @GrpcEnable = params['GrpcEnable']
          unless params['HealthProbe'].nil?
            @HealthProbe = HealthProbe.new
            @HealthProbe.deserialize(params['HealthProbe'])
          end
          unless params['RollingUpdate'].nil?
            @RollingUpdate = RollingUpdate.new
            @RollingUpdate.deserialize(params['RollingUpdate'])
          end
        end
      end

      # 服务的限流限速等配置
      class ServiceLimit < TencentCloud::Common::AbstractModel
        # @param EnableInstanceRpsLimit: 是否开启实例层面限流限速，true or false。true 则 InstanceRpsLimit 必填， false 则 InstanceRpsLimit 不生效
        # @type EnableInstanceRpsLimit: Boolean
        # @param InstanceRpsLimit: 每个服务实例的 request per second 限速, 0 为不限流
        # @type InstanceRpsLimit: Integer
        # @param EnableInstanceReqLimit: 是否开启单实例最大并发数限制，true or false。true 则 InstanceReqLimit 必填， false 则 InstanceReqLimit 不生效
        # @type EnableInstanceReqLimit: Boolean
        # @param InstanceReqLimit: 每个服务实例的最大并发
        # @type InstanceReqLimit: Integer

        attr_accessor :EnableInstanceRpsLimit, :InstanceRpsLimit, :EnableInstanceReqLimit, :InstanceReqLimit

        def initialize(enableinstancerpslimit=nil, instancerpslimit=nil, enableinstancereqlimit=nil, instancereqlimit=nil)
          @EnableInstanceRpsLimit = enableinstancerpslimit
          @InstanceRpsLimit = instancerpslimit
          @EnableInstanceReqLimit = enableinstancereqlimit
          @InstanceReqLimit = instancereqlimit
        end

        def deserialize(params)
          @EnableInstanceRpsLimit = params['EnableInstanceRpsLimit']
          @InstanceRpsLimit = params['InstanceRpsLimit']
          @EnableInstanceReqLimit = params['EnableInstanceReqLimit']
          @InstanceReqLimit = params['InstanceReqLimit']
        end
      end

      # sidecar容器配置
      class SidecarSpec < TencentCloud::Common::AbstractModel
        # @param ImageInfo: 镜像配置
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`

        attr_accessor :ImageInfo

        def initialize(imageinfo=nil)
          @ImageInfo = imageinfo
        end

        def deserialize(params)
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
        end
      end

      # 计费项内容
      class Spec < TencentCloud::Common::AbstractModel
        # @param SpecId: 计费项标签
        # @type SpecId: String
        # @param SpecName: 计费项名称
        # @type SpecName: String
        # @param SpecAlias: 计费项显示名称
        # @type SpecAlias: String
        # @param Available: 是否售罄
        # @type Available: Boolean
        # @param AvailableRegion: 当前资源售罄时，可用的区域有哪些
        # @type AvailableRegion: Array
        # @param SpecFeatures: 当前计费项支持的特性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecFeatures: Array
        # @param SpecType: 计费项类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecType: String
        # @param GpuType: GPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param CategoryId: 计费项CategoryId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryId: String

        attr_accessor :SpecId, :SpecName, :SpecAlias, :Available, :AvailableRegion, :SpecFeatures, :SpecType, :GpuType, :CategoryId

        def initialize(specid=nil, specname=nil, specalias=nil, available=nil, availableregion=nil, specfeatures=nil, spectype=nil, gputype=nil, categoryid=nil)
          @SpecId = specid
          @SpecName = specname
          @SpecAlias = specalias
          @Available = available
          @AvailableRegion = availableregion
          @SpecFeatures = specfeatures
          @SpecType = spectype
          @GpuType = gputype
          @CategoryId = categoryid
        end

        def deserialize(params)
          @SpecId = params['SpecId']
          @SpecName = params['SpecName']
          @SpecAlias = params['SpecAlias']
          @Available = params['Available']
          @AvailableRegion = params['AvailableRegion']
          @SpecFeatures = params['SpecFeatures']
          @SpecType = params['SpecType']
          @GpuType = params['GpuType']
          @CategoryId = params['CategoryId']
        end
      end

      # 计费项询价结果
      class SpecPrice < TencentCloud::Common::AbstractModel
        # @param SpecName: 计费项名称
        # @type SpecName: String
        # @param TotalCost: 原价，单位：分。最大值42亿，超过则返回0
        # @type TotalCost: Integer
        # @param RealTotalCost: 优惠后的价格，单位：分
        # @type RealTotalCost: Integer
        # @param SpecCount: 计费项数量
        # @type SpecCount: Integer

        attr_accessor :SpecName, :TotalCost, :RealTotalCost, :SpecCount

        def initialize(specname=nil, totalcost=nil, realtotalcost=nil, speccount=nil)
          @SpecName = specname
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
          @SpecCount = speccount
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
          @SpecCount = params['SpecCount']
        end
      end

      # 计费项询价单元
      class SpecUnit < TencentCloud::Common::AbstractModel
        # @param SpecName: 计费项名称
        # @type SpecName: String
        # @param SpecCount: 计费项数量,建议不超过100万
        # @type SpecCount: Integer

        attr_accessor :SpecName, :SpecCount

        def initialize(specname=nil, speccount=nil)
          @SpecName = specname
          @SpecCount = speccount
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @SpecCount = params['SpecCount']
        end
      end

      # 启动命令信息
      class StartCmdInfo < TencentCloud::Common::AbstractModel
        # @param StartCmd: 启动命令
        # @type StartCmd: String
        # @param PsStartCmd: ps启动命令
        # @type PsStartCmd: String
        # @param WorkerStartCmd: worker启动命令
        # @type WorkerStartCmd: String

        attr_accessor :StartCmd, :PsStartCmd, :WorkerStartCmd

        def initialize(startcmd=nil, psstartcmd=nil, workerstartcmd=nil)
          @StartCmd = startcmd
          @PsStartCmd = psstartcmd
          @WorkerStartCmd = workerstartcmd
        end

        def deserialize(params)
          @StartCmd = params['StartCmd']
          @PsStartCmd = params['PsStartCmd']
          @WorkerStartCmd = params['WorkerStartCmd']
        end
      end

      # StartNotebook请求参数结构体
      class StartNotebookRequest < TencentCloud::Common::AbstractModel
        # @param Id: notebook id
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # StartNotebook返回参数结构体
      class StartNotebookResponse < TencentCloud::Common::AbstractModel
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

      # StartTrainingTask请求参数结构体
      class StartTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # StartTrainingTask返回参数结构体
      class StartTrainingTaskResponse < TencentCloud::Common::AbstractModel
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

      # 实例状况
      class StatefulSetCondition < TencentCloud::Common::AbstractModel
        # @param Message: 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Reason: 原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Status: Status of the condition, one of True, False, Unknown.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param LastTransitionTime: 上次更新的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTransitionTime: String
        # @param LastUpdateTime: 上次更新的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String

        attr_accessor :Message, :Reason, :Status, :Type, :LastTransitionTime, :LastUpdateTime

        def initialize(message=nil, reason=nil, status=nil, type=nil, lasttransitiontime=nil, lastupdatetime=nil)
          @Message = message
          @Reason = reason
          @Status = status
          @Type = type
          @LastTransitionTime = lasttransitiontime
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @Message = params['Message']
          @Reason = params['Reason']
          @Status = params['Status']
          @Type = params['Type']
          @LastTransitionTime = params['LastTransitionTime']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

      # StopModelAccelerateTask请求参数结构体
      class StopModelAccelerateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskId: 模型加速任务ID
        # @type ModelAccTaskId: String

        attr_accessor :ModelAccTaskId

        def initialize(modelacctaskid=nil)
          @ModelAccTaskId = modelacctaskid
        end

        def deserialize(params)
          @ModelAccTaskId = params['ModelAccTaskId']
        end
      end

      # StopModelAccelerateTask返回参数结构体
      class StopModelAccelerateTaskResponse < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskId: 模型加速任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccTaskId: String
        # @param AsyncTaskId: 异步任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncTaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAccTaskId, :AsyncTaskId, :RequestId

        def initialize(modelacctaskid=nil, asynctaskid=nil, requestid=nil)
          @ModelAccTaskId = modelacctaskid
          @AsyncTaskId = asynctaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelAccTaskId = params['ModelAccTaskId']
          @AsyncTaskId = params['AsyncTaskId']
          @RequestId = params['RequestId']
        end
      end

      # StopNotebook请求参数结构体
      class StopNotebookRequest < TencentCloud::Common::AbstractModel
        # @param Id: notebook id
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # StopNotebook返回参数结构体
      class StopNotebookResponse < TencentCloud::Common::AbstractModel
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

      # StopTrainingTask请求参数结构体
      class StopTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # StopTrainingTask返回参数结构体
      class StopTrainingTaskResponse < TencentCloud::Common::AbstractModel
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

      # tcp socket 健康探针检查行为
      class TCPSocketAction < TencentCloud::Common::AbstractModel
        # @param Port: 调用端口
        # @type Port: Integer

        attr_accessor :Port

        def initialize(port=nil)
          @Port = port
        end

        def deserialize(params)
          @Port = params['Port']
        end
      end

      # 太极服务的调用信息
      class TJCallInfo < TencentCloud::Common::AbstractModel
        # @param HttpAddr: 调用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpAddr: String
        # @param Token: token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param CallExample: 调用示例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallExample: String

        attr_accessor :HttpAddr, :Token, :CallExample

        def initialize(httpaddr=nil, token=nil, callexample=nil)
          @HttpAddr = httpaddr
          @Token = token
          @CallExample = callexample
        end

        def deserialize(params)
          @HttpAddr = params['HttpAddr']
          @Token = params['Token']
          @CallExample = params['CallExample']
        end
      end

      # 描述腾讯云标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # Tag过滤参数
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValues: 多个标签值
        # @type TagValues: Array

        attr_accessor :TagKey, :TagValues

        def initialize(tagkey=nil, tagvalues=nil)
          @TagKey = tagkey
          @TagValues = tagvalues
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValues = params['TagValues']
        end
      end

      # 模型版本列表
      class TrainingModelVersionDTO < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型id
        # @type TrainingModelId: String
        # @param TrainingModelVersionId: 模型版本id
        # @type TrainingModelVersionId: String
        # @param TrainingModelVersion: 模型版本
        # @type TrainingModelVersion: String
        # @param TrainingModelSource: 模型来源
        # @type TrainingModelSource: String
        # @param TrainingModelCreateTime: 创建时间
        # @type TrainingModelCreateTime: String
        # @param TrainingModelCreator: 创建人uin
        # @type TrainingModelCreator: String
        # @param AlgorithmFramework: 算法框架
        # @type AlgorithmFramework: String
        # @param ReasoningEnvironment: 推理环境
        # @type ReasoningEnvironment: String
        # @param ReasoningEnvironmentSource: 推理环境来源
        # @type ReasoningEnvironmentSource: String
        # @param TrainingModelIndex: 模型指标
        # @type TrainingModelIndex: String
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String
        # @param TrainingModelCosPath: 模型cos路径
        # @type TrainingModelCosPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param TrainingModelName: 模型名称
        # @type TrainingModelName: String
        # @param TrainingJobId: 训练任务id
        # @type TrainingJobId: String
        # @param ReasoningImageInfo: 自定义推理环境
        # @type ReasoningImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CreateTime: 模型版本创建时间
        # @type CreateTime: String
        # @param TrainingModelStatus: 模型处理状态
        # STATUS_SUCCESS：导入成功，STATUS_FAILED：导入失败 ，STATUS_RUNNING：导入中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelStatus: String
        # @param TrainingModelProgress: 模型处理进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelProgress: Integer
        # @param TrainingModelErrorMsg: 模型错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelErrorMsg: String
        # @param TrainingModelFormat: 模型格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelFormat: String
        # @param VersionType: 模型版本类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionType: String
        # @param GPUType: GPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUType: String
        # @param AutoClean: 模型自动清理开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoClean: String
        # @param ModelCleanPeriod: 模型清理周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelCleanPeriod: Integer
        # @param MaxReservedModels: 模型数量保留上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReservedModels: Integer
        # @param ModelHotUpdatePath: 模型热更新目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelHotUpdatePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param ReasoningEnvironmentId: 推理环境id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReasoningEnvironmentId: String
        # @param TrainingJobVersion: 训练任务版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingJobVersion: String
        # @param TrainingPreference: 训练偏好
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingPreference: String
        # @param AutoMLTaskId: 自动学习任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoMLTaskId: String
        # @param IsQAT: 是否QAT模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsQAT: Boolean

        attr_accessor :TrainingModelId, :TrainingModelVersionId, :TrainingModelVersion, :TrainingModelSource, :TrainingModelCreateTime, :TrainingModelCreator, :AlgorithmFramework, :ReasoningEnvironment, :ReasoningEnvironmentSource, :TrainingModelIndex, :TrainingJobName, :TrainingModelCosPath, :TrainingModelName, :TrainingJobId, :ReasoningImageInfo, :CreateTime, :TrainingModelStatus, :TrainingModelProgress, :TrainingModelErrorMsg, :TrainingModelFormat, :VersionType, :GPUType, :AutoClean, :ModelCleanPeriod, :MaxReservedModels, :ModelHotUpdatePath, :ReasoningEnvironmentId, :TrainingJobVersion, :TrainingPreference, :AutoMLTaskId, :IsQAT

        def initialize(trainingmodelid=nil, trainingmodelversionid=nil, trainingmodelversion=nil, trainingmodelsource=nil, trainingmodelcreatetime=nil, trainingmodelcreator=nil, algorithmframework=nil, reasoningenvironment=nil, reasoningenvironmentsource=nil, trainingmodelindex=nil, trainingjobname=nil, trainingmodelcospath=nil, trainingmodelname=nil, trainingjobid=nil, reasoningimageinfo=nil, createtime=nil, trainingmodelstatus=nil, trainingmodelprogress=nil, trainingmodelerrormsg=nil, trainingmodelformat=nil, versiontype=nil, gputype=nil, autoclean=nil, modelcleanperiod=nil, maxreservedmodels=nil, modelhotupdatepath=nil, reasoningenvironmentid=nil, trainingjobversion=nil, trainingpreference=nil, automltaskid=nil, isqat=nil)
          @TrainingModelId = trainingmodelid
          @TrainingModelVersionId = trainingmodelversionid
          @TrainingModelVersion = trainingmodelversion
          @TrainingModelSource = trainingmodelsource
          @TrainingModelCreateTime = trainingmodelcreatetime
          @TrainingModelCreator = trainingmodelcreator
          @AlgorithmFramework = algorithmframework
          @ReasoningEnvironment = reasoningenvironment
          @ReasoningEnvironmentSource = reasoningenvironmentsource
          @TrainingModelIndex = trainingmodelindex
          @TrainingJobName = trainingjobname
          @TrainingModelCosPath = trainingmodelcospath
          @TrainingModelName = trainingmodelname
          @TrainingJobId = trainingjobid
          @ReasoningImageInfo = reasoningimageinfo
          @CreateTime = createtime
          @TrainingModelStatus = trainingmodelstatus
          @TrainingModelProgress = trainingmodelprogress
          @TrainingModelErrorMsg = trainingmodelerrormsg
          @TrainingModelFormat = trainingmodelformat
          @VersionType = versiontype
          @GPUType = gputype
          @AutoClean = autoclean
          @ModelCleanPeriod = modelcleanperiod
          @MaxReservedModels = maxreservedmodels
          @ModelHotUpdatePath = modelhotupdatepath
          @ReasoningEnvironmentId = reasoningenvironmentid
          @TrainingJobVersion = trainingjobversion
          @TrainingPreference = trainingpreference
          @AutoMLTaskId = automltaskid
          @IsQAT = isqat
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          @TrainingModelVersionId = params['TrainingModelVersionId']
          @TrainingModelVersion = params['TrainingModelVersion']
          @TrainingModelSource = params['TrainingModelSource']
          @TrainingModelCreateTime = params['TrainingModelCreateTime']
          @TrainingModelCreator = params['TrainingModelCreator']
          @AlgorithmFramework = params['AlgorithmFramework']
          @ReasoningEnvironment = params['ReasoningEnvironment']
          @ReasoningEnvironmentSource = params['ReasoningEnvironmentSource']
          @TrainingModelIndex = params['TrainingModelIndex']
          @TrainingJobName = params['TrainingJobName']
          unless params['TrainingModelCosPath'].nil?
            @TrainingModelCosPath = CosPathInfo.new
            @TrainingModelCosPath.deserialize(params['TrainingModelCosPath'])
          end
          @TrainingModelName = params['TrainingModelName']
          @TrainingJobId = params['TrainingJobId']
          unless params['ReasoningImageInfo'].nil?
            @ReasoningImageInfo = ImageInfo.new
            @ReasoningImageInfo.deserialize(params['ReasoningImageInfo'])
          end
          @CreateTime = params['CreateTime']
          @TrainingModelStatus = params['TrainingModelStatus']
          @TrainingModelProgress = params['TrainingModelProgress']
          @TrainingModelErrorMsg = params['TrainingModelErrorMsg']
          @TrainingModelFormat = params['TrainingModelFormat']
          @VersionType = params['VersionType']
          @GPUType = params['GPUType']
          @AutoClean = params['AutoClean']
          @ModelCleanPeriod = params['ModelCleanPeriod']
          @MaxReservedModels = params['MaxReservedModels']
          unless params['ModelHotUpdatePath'].nil?
            @ModelHotUpdatePath = CosPathInfo.new
            @ModelHotUpdatePath.deserialize(params['ModelHotUpdatePath'])
          end
          @ReasoningEnvironmentId = params['ReasoningEnvironmentId']
          @TrainingJobVersion = params['TrainingJobVersion']
          @TrainingPreference = params['TrainingPreference']
          @AutoMLTaskId = params['AutoMLTaskId']
          @IsQAT = params['IsQAT']
        end
      end

      # 训练任务详情
      class TrainingTaskDetail < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String
        # @param Name: 训练任务名称
        # @type Name: String
        # @param Uin: 主账号uin
        # @type Uin: String
        # @param SubUin: 子账号uin
        # @type SubUin: String
        # @param SubUinName: 创建者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUinName: String
        # @param Region: 地域
        # @type Region: String
        # @param FrameworkName: 训练框架名称，eg：SPARK、PYSARK、TENSORFLOW、PYTORCH
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkName: String
        # @param FrameworkVersion: 训练框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param FrameworkEnvironment: 框架运行环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkEnvironment: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ResourceGroupId: 预付费专用资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceConfigInfos: 资源配置
        # @type ResourceConfigInfos: Array
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param TrainingMode: 训练模式，eg：PS_WORKER、DDP、MPI、HOROVOD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingMode: String
        # @param CodePackagePath: 代码包
        # @type CodePackagePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmdInfo: 启动命令信息
        # @type StartCmdInfo: :class:`Tencentcloud::Tione.v20211111.models.StartCmdInfo`
        # @param DataSource: 数据来源，eg：DATASET、COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param DataConfigs: 数据配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataConfigs: Array
        # @param TuningParameters: 调优参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TuningParameters: String
        # @param Output: 训练输出
        # @type Output: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param ImageInfo: 自定义镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 训练开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # @type ChargeStatus: String
        # @param LatestInstanceId: 最近一次实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestInstanceId: String
        # @param TensorBoardId: TensorBoard ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TensorBoardId: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param EndTime: 训练结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (按量计费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfo: String
        # @param ResourceGroupName: 预付费专用资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param Message: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Status: 任务状态，eg：STARTING启动中、RUNNING运行中、STOPPING停止中、STOPPED已停止、FAILED异常、SUCCEED已完成
        # @type Status: String
        # @param CallbackUrl: 回调地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackUrl: String
        # @param CodeRepos: 任务关联的代码仓库配置
        # @type CodeRepos: Array

        attr_accessor :Id, :Name, :Uin, :SubUin, :SubUinName, :Region, :FrameworkName, :FrameworkVersion, :FrameworkEnvironment, :ChargeType, :ResourceGroupId, :ResourceConfigInfos, :Tags, :TrainingMode, :CodePackagePath, :StartCmdInfo, :DataSource, :DataConfigs, :TuningParameters, :Output, :LogEnable, :LogConfig, :VpcId, :SubnetId, :ImageInfo, :RuntimeInSeconds, :CreateTime, :StartTime, :ChargeStatus, :LatestInstanceId, :TensorBoardId, :Remark, :FailureReason, :UpdateTime, :EndTime, :BillingInfo, :ResourceGroupName, :Message, :Status, :CallbackUrl, :CodeRepos

        def initialize(id=nil, name=nil, uin=nil, subuin=nil, subuinname=nil, region=nil, frameworkname=nil, frameworkversion=nil, frameworkenvironment=nil, chargetype=nil, resourcegroupid=nil, resourceconfiginfos=nil, tags=nil, trainingmode=nil, codepackagepath=nil, startcmdinfo=nil, datasource=nil, dataconfigs=nil, tuningparameters=nil, output=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, imageinfo=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, chargestatus=nil, latestinstanceid=nil, tensorboardid=nil, remark=nil, failurereason=nil, updatetime=nil, endtime=nil, billinginfo=nil, resourcegroupname=nil, message=nil, status=nil, callbackurl=nil, coderepos=nil)
          @Id = id
          @Name = name
          @Uin = uin
          @SubUin = subuin
          @SubUinName = subuinname
          @Region = region
          @FrameworkName = frameworkname
          @FrameworkVersion = frameworkversion
          @FrameworkEnvironment = frameworkenvironment
          @ChargeType = chargetype
          @ResourceGroupId = resourcegroupid
          @ResourceConfigInfos = resourceconfiginfos
          @Tags = tags
          @TrainingMode = trainingmode
          @CodePackagePath = codepackagepath
          @StartCmdInfo = startcmdinfo
          @DataSource = datasource
          @DataConfigs = dataconfigs
          @TuningParameters = tuningparameters
          @Output = output
          @LogEnable = logenable
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @ImageInfo = imageinfo
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @ChargeStatus = chargestatus
          @LatestInstanceId = latestinstanceid
          @TensorBoardId = tensorboardid
          @Remark = remark
          @FailureReason = failurereason
          @UpdateTime = updatetime
          @EndTime = endtime
          @BillingInfo = billinginfo
          @ResourceGroupName = resourcegroupname
          @Message = message
          @Status = status
          @CallbackUrl = callbackurl
          @CodeRepos = coderepos
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @SubUinName = params['SubUinName']
          @Region = params['Region']
          @FrameworkName = params['FrameworkName']
          @FrameworkVersion = params['FrameworkVersion']
          @FrameworkEnvironment = params['FrameworkEnvironment']
          @ChargeType = params['ChargeType']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ResourceConfigInfos'].nil?
            @ResourceConfigInfos = []
            params['ResourceConfigInfos'].each do |i|
              resourceconfiginfo_tmp = ResourceConfigInfo.new
              resourceconfiginfo_tmp.deserialize(i)
              @ResourceConfigInfos << resourceconfiginfo_tmp
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
          @TrainingMode = params['TrainingMode']
          unless params['CodePackagePath'].nil?
            @CodePackagePath = CosPathInfo.new
            @CodePackagePath.deserialize(params['CodePackagePath'])
          end
          unless params['StartCmdInfo'].nil?
            @StartCmdInfo = StartCmdInfo.new
            @StartCmdInfo.deserialize(params['StartCmdInfo'])
          end
          @DataSource = params['DataSource']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          @TuningParameters = params['TuningParameters']
          unless params['Output'].nil?
            @Output = CosPathInfo.new
            @Output.deserialize(params['Output'])
          end
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @ChargeStatus = params['ChargeStatus']
          @LatestInstanceId = params['LatestInstanceId']
          @TensorBoardId = params['TensorBoardId']
          @Remark = params['Remark']
          @FailureReason = params['FailureReason']
          @UpdateTime = params['UpdateTime']
          @EndTime = params['EndTime']
          @BillingInfo = params['BillingInfo']
          @ResourceGroupName = params['ResourceGroupName']
          @Message = params['Message']
          @Status = params['Status']
          @CallbackUrl = params['CallbackUrl']
          unless params['CodeRepos'].nil?
            @CodeRepos = []
            params['CodeRepos'].each do |i|
              coderepoconfig_tmp = CodeRepoConfig.new
              coderepoconfig_tmp.deserialize(i)
              @CodeRepos << coderepoconfig_tmp
            end
          end
        end
      end

      # 出参类型
      class TrainingTaskSetItem < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String
        # @param Name: 训练任务名称
        # @type Name: String
        # @param FrameworkName: 框架名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkName: String
        # @param FrameworkVersion: 训练框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param FrameworkEnvironment: 框架运行环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkEnvironment: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # @type ChargeStatus: String
        # @param ResourceGroupId: 预付费专用资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceConfigInfos: 资源配置
        # @type ResourceConfigInfos: Array
        # @param TrainingMode: 训练模式eg：PS_WORKER、DDP、MPI、HOROVOD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingMode: String
        # @param Status: 任务状态，eg：SUBMITTING提交中、PENDING排队中、
        # STARTING启动中、RUNNING运行中、STOPPING停止中、STOPPED已停止、FAILED异常、SUCCEED已完成
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 训练开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 训练结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Output: 训练输出
        # @type Output: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (按量计费)
        # @type BillingInfo: String
        # @param ResourceGroupName: 预付费专用资源组名称
        # @type ResourceGroupName: String
        # @param ImageInfo: 自定义镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param Message: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Tags: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CallbackUrl: 回调地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackUrl: String
        # @param SubUin: 任务subUin信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUin: String
        # @param SubUinName: 任务创建者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUinName: String
        # @param AppId: 任务AppId
        # @type AppId: String

        attr_accessor :Id, :Name, :FrameworkName, :FrameworkVersion, :FrameworkEnvironment, :ChargeType, :ChargeStatus, :ResourceGroupId, :ResourceConfigInfos, :TrainingMode, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :EndTime, :Output, :FailureReason, :UpdateTime, :BillingInfo, :ResourceGroupName, :ImageInfo, :Message, :Tags, :CallbackUrl, :SubUin, :SubUinName, :AppId

        def initialize(id=nil, name=nil, frameworkname=nil, frameworkversion=nil, frameworkenvironment=nil, chargetype=nil, chargestatus=nil, resourcegroupid=nil, resourceconfiginfos=nil, trainingmode=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, endtime=nil, output=nil, failurereason=nil, updatetime=nil, billinginfo=nil, resourcegroupname=nil, imageinfo=nil, message=nil, tags=nil, callbackurl=nil, subuin=nil, subuinname=nil, appid=nil)
          @Id = id
          @Name = name
          @FrameworkName = frameworkname
          @FrameworkVersion = frameworkversion
          @FrameworkEnvironment = frameworkenvironment
          @ChargeType = chargetype
          @ChargeStatus = chargestatus
          @ResourceGroupId = resourcegroupid
          @ResourceConfigInfos = resourceconfiginfos
          @TrainingMode = trainingmode
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Output = output
          @FailureReason = failurereason
          @UpdateTime = updatetime
          @BillingInfo = billinginfo
          @ResourceGroupName = resourcegroupname
          @ImageInfo = imageinfo
          @Message = message
          @Tags = tags
          @CallbackUrl = callbackurl
          @SubUin = subuin
          @SubUinName = subuinname
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @FrameworkName = params['FrameworkName']
          @FrameworkVersion = params['FrameworkVersion']
          @FrameworkEnvironment = params['FrameworkEnvironment']
          @ChargeType = params['ChargeType']
          @ChargeStatus = params['ChargeStatus']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ResourceConfigInfos'].nil?
            @ResourceConfigInfos = []
            params['ResourceConfigInfos'].each do |i|
              resourceconfiginfo_tmp = ResourceConfigInfo.new
              resourceconfiginfo_tmp.deserialize(i)
              @ResourceConfigInfos << resourceconfiginfo_tmp
            end
          end
          @TrainingMode = params['TrainingMode']
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Output'].nil?
            @Output = CosPathInfo.new
            @Output.deserialize(params['Output'])
          end
          @FailureReason = params['FailureReason']
          @UpdateTime = params['UpdateTime']
          @BillingInfo = params['BillingInfo']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Message = params['Message']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CallbackUrl = params['CallbackUrl']
          @SubUin = params['SubUin']
          @SubUinName = params['SubUinName']
          @AppId = params['AppId']
        end
      end

      # 大模型生成Token统计
      class Usage < TencentCloud::Common::AbstractModel
        # @param CompletionTokens: 生成的token数目
        # @type CompletionTokens: Integer
        # @param PromptTokens: 输入的token数目
        # @type PromptTokens: Integer
        # @param TotalTokens: 总共token数目
        # @type TotalTokens: Integer

        attr_accessor :CompletionTokens, :PromptTokens, :TotalTokens

        def initialize(completiontokens=nil, prompttokens=nil, totaltokens=nil)
          @CompletionTokens = completiontokens
          @PromptTokens = prompttokens
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @CompletionTokens = params['CompletionTokens']
          @PromptTokens = params['PromptTokens']
          @TotalTokens = params['TotalTokens']
        end
      end

      # 外部挂载信息
      class VolumeMount < TencentCloud::Common::AbstractModel
        # @param CFSConfig: cfs的配置信息
        # @type CFSConfig: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param VolumeSourceType: 挂载源类型，CFS、COS，默认为CFS
        # @type VolumeSourceType: String

        attr_accessor :CFSConfig, :VolumeSourceType

        def initialize(cfsconfig=nil, volumesourcetype=nil)
          @CFSConfig = cfsconfig
          @VolumeSourceType = volumesourcetype
        end

        def deserialize(params)
          unless params['CFSConfig'].nil?
            @CFSConfig = CFSConfig.new
            @CFSConfig.deserialize(params['CFSConfig'])
          end
          @VolumeSourceType = params['VolumeSourceType']
        end
      end

      # 工作负载的状态
      class WorkloadStatus < TencentCloud::Common::AbstractModel
        # @param Replicas: 当前实例数
        # @type Replicas: Integer
        # @param UpdatedReplicas: 更新的实例数
        # @type UpdatedReplicas: Integer
        # @param ReadyReplicas: 就绪的实例数
        # @type ReadyReplicas: Integer
        # @param AvailableReplicas: 可用的实例数
        # @type AvailableReplicas: Integer
        # @param UnavailableReplicas: 不可用的实例数
        # @type UnavailableReplicas: Integer
        # @param Status: Normal	正常运行中
        # Abnormal	服务异常，例如容器启动失败等
        # Waiting	服务等待中，例如容器下载镜像过程等
        # Stopped   已停止
        # Pending 启动中
        # Stopping 停止中
        # @type Status: String
        # @param StatefulSetCondition: 工作负载的状况信息
        # @type StatefulSetCondition: Array
        # @param Conditions: 工作负载历史的状况信息
        # @type Conditions: Array
        # @param Reason: 状态异常时，展示原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String

        attr_accessor :Replicas, :UpdatedReplicas, :ReadyReplicas, :AvailableReplicas, :UnavailableReplicas, :Status, :StatefulSetCondition, :Conditions, :Reason
        extend Gem::Deprecate
        deprecate :StatefulSetCondition, :none, 2025, 7
        deprecate :StatefulSetCondition=, :none, 2025, 7

        def initialize(replicas=nil, updatedreplicas=nil, readyreplicas=nil, availablereplicas=nil, unavailablereplicas=nil, status=nil, statefulsetcondition=nil, conditions=nil, reason=nil)
          @Replicas = replicas
          @UpdatedReplicas = updatedreplicas
          @ReadyReplicas = readyreplicas
          @AvailableReplicas = availablereplicas
          @UnavailableReplicas = unavailablereplicas
          @Status = status
          @StatefulSetCondition = statefulsetcondition
          @Conditions = conditions
          @Reason = reason
        end

        def deserialize(params)
          @Replicas = params['Replicas']
          @UpdatedReplicas = params['UpdatedReplicas']
          @ReadyReplicas = params['ReadyReplicas']
          @AvailableReplicas = params['AvailableReplicas']
          @UnavailableReplicas = params['UnavailableReplicas']
          @Status = params['Status']
          unless params['StatefulSetCondition'].nil?
            @StatefulSetCondition = []
            params['StatefulSetCondition'].each do |i|
              statefulsetcondition_tmp = StatefulSetCondition.new
              statefulsetcondition_tmp.deserialize(i)
              @StatefulSetCondition << statefulsetcondition_tmp
            end
          end
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              statefulsetcondition_tmp = StatefulSetCondition.new
              statefulsetcondition_tmp.deserialize(i)
              @Conditions << statefulsetcondition_tmp
            end
          end
          @Reason = params['Reason']
        end
      end

    end
  end
end

