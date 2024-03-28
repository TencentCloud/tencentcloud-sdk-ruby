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
    module V20211111
      # 接口描述信息
      class APIConfigDetail < TencentCloud::Common::AbstractModel
        # @param Id: 接口id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param ServiceGroupId: 接口所属服务组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGroupId: String
        # @param Description: 接口描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RelativeUrl: 相对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelativeUrl: String
        # @param ServiceType: 服务类型 HTTP HTTPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param HttpMethod: GET POST
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpMethod: String
        # @param HttpInputExample: 请求示例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpInputExample: String
        # @param HttpOutputExample: 回包示例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpOutputExample: String
        # @param UpdatedBy: 更新成员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedBy: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param Uin: 主账号uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubUin: 子账号subuin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUin: String

        attr_accessor :Id, :ServiceGroupId, :Description, :RelativeUrl, :ServiceType, :HttpMethod, :HttpInputExample, :HttpOutputExample, :UpdatedBy, :UpdatedAt, :Uin, :SubUin

        def initialize(id=nil, servicegroupid=nil, description=nil, relativeurl=nil, servicetype=nil, httpmethod=nil, httpinputexample=nil, httpoutputexample=nil, updatedby=nil, updatedat=nil, uin=nil, subuin=nil)
          @Id = id
          @ServiceGroupId = servicegroupid
          @Description = description
          @RelativeUrl = relativeurl
          @ServiceType = servicetype
          @HttpMethod = httpmethod
          @HttpInputExample = httpinputexample
          @HttpOutputExample = httpoutputexample
          @UpdatedBy = updatedby
          @UpdatedAt = updatedat
          @Uin = uin
          @SubUin = subuin
        end

        def deserialize(params)
          @Id = params['Id']
          @ServiceGroupId = params['ServiceGroupId']
          @Description = params['Description']
          @RelativeUrl = params['RelativeUrl']
          @ServiceType = params['ServiceType']
          @HttpMethod = params['HttpMethod']
          @HttpInputExample = params['HttpInputExample']
          @HttpOutputExample = params['HttpOutputExample']
          @UpdatedBy = params['UpdatedBy']
          @UpdatedAt = params['UpdatedAt']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
        end
      end

      # 批量模型加速任务
      class BatchModelAccTask < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ModelVersion: 模型版本
        # @type ModelVersion: String
        # @param ModelSource: 模型来源(JOB/COS)
        # @type ModelSource: String
        # @param ModelFormat: 模型格式(TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/MMDETECTION/ONNX/HUGGING_FACE)
        # @type ModelFormat: String
        # @param TensorInfos: 模型Tensor信息
        # @type TensorInfos: Array
        # @param AccEngineVersion: 加速引擎版本
        # @type AccEngineVersion: String
        # @param ModelInputPath: 模型输入cos路径
        # @type ModelInputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param ModelSignature: SavedModel保存时配置的签名
        # @type ModelSignature: String
        # @param FrameworkVersion: 加速引擎对应的框架版本
        # @type FrameworkVersion: String

        attr_accessor :ModelId, :ModelVersion, :ModelSource, :ModelFormat, :TensorInfos, :AccEngineVersion, :ModelInputPath, :ModelName, :ModelSignature, :FrameworkVersion

        def initialize(modelid=nil, modelversion=nil, modelsource=nil, modelformat=nil, tensorinfos=nil, accengineversion=nil, modelinputpath=nil, modelname=nil, modelsignature=nil, frameworkversion=nil)
          @ModelId = modelid
          @ModelVersion = modelversion
          @ModelSource = modelsource
          @ModelFormat = modelformat
          @TensorInfos = tensorinfos
          @AccEngineVersion = accengineversion
          @ModelInputPath = modelinputpath
          @ModelName = modelname
          @ModelSignature = modelsignature
          @FrameworkVersion = frameworkversion
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelVersion = params['ModelVersion']
          @ModelSource = params['ModelSource']
          @ModelFormat = params['ModelFormat']
          @TensorInfos = params['TensorInfos']
          @AccEngineVersion = params['AccEngineVersion']
          unless params['ModelInputPath'].nil?
            @ModelInputPath = CosPathInfo.new
            @ModelInputPath.deserialize(params['ModelInputPath'])
          end
          @ModelName = params['ModelName']
          @ModelSignature = params['ModelSignature']
          @FrameworkVersion = params['FrameworkVersion']
        end
      end

      # 批量预测任务详情
      class BatchTaskDetail < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务ID
        # @type BatchTaskId: String
        # @param BatchTaskName: 批量预测任务名称
        # @type BatchTaskName: String
        # @param Uin: 主账号uin
        # @type Uin: String
        # @param SubUin: 子账号uin
        # @type SubUin: String
        # @param Region: 地域
        # @type Region: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ResourceGroupId: 包年包月资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 包年包月资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param ResourceConfigInfo: 资源配置
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ModelInfo: 服务对应的模型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 自定义镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CodePackagePath: 代码包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodePackagePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmd: 启动命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartCmd: String
        # @param DataConfigs: 输入数据配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataConfigs: Array
        # @param Outputs: 输出数据配置
        # @type Outputs: Array
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param StartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ChargeStatus: 计费状态，取值范围:
        # BILLING: 计费中
        # NOT_BILLING: 未计费
        # WHITELIST_USING: 白名单使用中
        # WHITELIST_STOP: 白名单到期
        # ARREARS_STOP: 欠费停止
        # @type ChargeStatus: String
        # @param LatestInstanceId: 最近一次实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestInstanceId: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (for 按量计费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfo: String
        # @param PodList: 运行中的Pod的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodList: Array
        # @param ModelInferenceCodeInfo: 模型推理代码信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInferenceCodeInfo: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`

        attr_accessor :BatchTaskId, :BatchTaskName, :Uin, :SubUin, :Region, :ChargeType, :ResourceGroupId, :ResourceGroupName, :ResourceConfigInfo, :Tags, :ModelInfo, :ImageInfo, :CodePackagePath, :StartCmd, :DataConfigs, :Outputs, :LogEnable, :LogConfig, :VpcId, :SubnetId, :Status, :RuntimeInSeconds, :CreateTime, :UpdateTime, :StartTime, :EndTime, :ChargeStatus, :LatestInstanceId, :Remark, :FailureReason, :BillingInfo, :PodList, :ModelInferenceCodeInfo

        def initialize(batchtaskid=nil, batchtaskname=nil, uin=nil, subuin=nil, region=nil, chargetype=nil, resourcegroupid=nil, resourcegroupname=nil, resourceconfiginfo=nil, tags=nil, modelinfo=nil, imageinfo=nil, codepackagepath=nil, startcmd=nil, dataconfigs=nil, outputs=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, status=nil, runtimeinseconds=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, chargestatus=nil, latestinstanceid=nil, remark=nil, failurereason=nil, billinginfo=nil, podlist=nil, modelinferencecodeinfo=nil)
          @BatchTaskId = batchtaskid
          @BatchTaskName = batchtaskname
          @Uin = uin
          @SubUin = subuin
          @Region = region
          @ChargeType = chargetype
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @ResourceConfigInfo = resourceconfiginfo
          @Tags = tags
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @CodePackagePath = codepackagepath
          @StartCmd = startcmd
          @DataConfigs = dataconfigs
          @Outputs = outputs
          @LogEnable = logenable
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @UpdateTime = updatetime
          @StartTime = starttime
          @EndTime = endtime
          @ChargeStatus = chargestatus
          @LatestInstanceId = latestinstanceid
          @Remark = remark
          @FailureReason = failurereason
          @BillingInfo = billinginfo
          @PodList = podlist
          @ModelInferenceCodeInfo = modelinferencecodeinfo
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
          @BatchTaskName = params['BatchTaskName']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @Region = params['Region']
          @ChargeType = params['ChargeType']
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['CodePackagePath'].nil?
            @CodePackagePath = CosPathInfo.new
            @CodePackagePath.deserialize(params['CodePackagePath'])
          end
          @StartCmd = params['StartCmd']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @Outputs << dataconfig_tmp
            end
          end
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
          @UpdateTime = params['UpdateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ChargeStatus = params['ChargeStatus']
          @LatestInstanceId = params['LatestInstanceId']
          @Remark = params['Remark']
          @FailureReason = params['FailureReason']
          @BillingInfo = params['BillingInfo']
          @PodList = params['PodList']
          unless params['ModelInferenceCodeInfo'].nil?
            @ModelInferenceCodeInfo = CosPathInfo.new
            @ModelInferenceCodeInfo.deserialize(params['ModelInferenceCodeInfo'])
          end
        end
      end

      # 批处理任务实例
      class BatchTaskInstance < TencentCloud::Common::AbstractModel
        # @param BatchTaskInstanceId: 任务实例id
        # @type BatchTaskInstanceId: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer

        attr_accessor :BatchTaskInstanceId, :StartTime, :EndTime, :Status, :RuntimeInSeconds

        def initialize(batchtaskinstanceid=nil, starttime=nil, endtime=nil, status=nil, runtimeinseconds=nil)
          @BatchTaskInstanceId = batchtaskinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
        end

        def deserialize(params)
          @BatchTaskInstanceId = params['BatchTaskInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
        end
      end

      # 出参类型
      class BatchTaskSetItem < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务ID
        # @type BatchTaskId: String
        # @param BatchTaskName: 批量预测任务名称
        # @type BatchTaskName: String
        # @param ModelInfo: 模型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ChargeStatus: 计费状态，取值范围:
        # BILLING: 计费中
        # NOT_BILLING: 未计费
        # WHITELIST_USING: 白名单使用中
        # WHITELIST_STOP: 白名单到期
        # ARREARS_STOP: 欠费停止
        # @type ChargeStatus: String
        # @param ResourceGroupId: 包年包月资源组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceConfigInfo: 资源配置
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param Tags: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 任务状态, 取值范围:
        # INIT, STARTING, RUNNING, FAILED, STOPPING, STOPPED, SUCCEED
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param StartTime: 任务开始运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param UpdateTime: 任务更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Outputs: 输出
        # @type Outputs: Array
        # @param ResourceGroupName: 包年包月资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param FailureReason: 失败原因
        # @type FailureReason: String
        # @param BillingInfo: 按量计费信息
        # @type BillingInfo: String

        attr_accessor :BatchTaskId, :BatchTaskName, :ModelInfo, :ImageInfo, :ChargeType, :ChargeStatus, :ResourceGroupId, :ResourceConfigInfo, :Tags, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :EndTime, :UpdateTime, :Outputs, :ResourceGroupName, :FailureReason, :BillingInfo

        def initialize(batchtaskid=nil, batchtaskname=nil, modelinfo=nil, imageinfo=nil, chargetype=nil, chargestatus=nil, resourcegroupid=nil, resourceconfiginfo=nil, tags=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, endtime=nil, updatetime=nil, outputs=nil, resourcegroupname=nil, failurereason=nil, billinginfo=nil)
          @BatchTaskId = batchtaskid
          @BatchTaskName = batchtaskname
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @ChargeType = chargetype
          @ChargeStatus = chargestatus
          @ResourceGroupId = resourcegroupid
          @ResourceConfigInfo = resourceconfiginfo
          @Tags = tags
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @UpdateTime = updatetime
          @Outputs = outputs
          @ResourceGroupName = resourcegroupname
          @FailureReason = failurereason
          @BillingInfo = billinginfo
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
          @BatchTaskName = params['BatchTaskName']
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @ChargeType = params['ChargeType']
          @ChargeStatus = params['ChargeStatus']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UpdateTime = params['UpdateTime']
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @Outputs << dataconfig_tmp
            end
          end
          @ResourceGroupName = params['ResourceGroupName']
          @FailureReason = params['FailureReason']
          @BillingInfo = params['BillingInfo']
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
        # 自行部署的开源大模型聊天：部署的模型服务组ID，形如ms-xxyyzz。
        # @type Model: String
        # @param Messages: 输入对话历史。旧的对话在前，数组中最后一项应该为这次的问题。
        # @type Messages: Array
        # @param Temperature: 仅当模型为自行部署的开源大模型时生效。采样随机值，默认值为1.0，取值范围[0,2]。较高的值(如0.8)将使输出更加随机，而较低的值(如0.2)将使输出更加确定。建议仅修改此参数或TopP，但不建议两者都修改。
        # @type Temperature: Float
        # @param TopP: 仅当模型为自行部署的开源大模型时生效。核采样，默认值为1，取值范围[0,1]。指的是预先设置一个概率界限 p，然后将所有可能生成的token，根据概率大小从高到低排列，依次选取。当这些选取的token的累积概率大于或等于 p 值时停止，然后从已经选取的token中进行采样，生成下一个token。例如top_p为0.1时意味着模型只考虑累积概率为10%的token。建议仅修改此参数或Temperature，不建议两者都修改。
        # @type TopP: Float
        # @param MaxTokens: 仅当模型为自行部署的开源大模型时生效。最大生成的token数目。默认为无限大。
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
        # @param Model: 部署好的服务Id
        # @type Model: String
        # @param Choices: 本次问答的答案。
        # @type Choices: Array
        # @param Id: 会话Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Usage: token统计
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateBatchModelAccTasks请求参数结构体
      class CreateBatchModelAccTasksRequest < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskName: 模型加速任务名称
        # @type ModelAccTaskName: String
        # @param BatchModelAccTasks: 批量模型加速任务
        # @type BatchModelAccTasks: Array
        # @param ModelOutputPath: 模型加速保存路径
        # @type ModelOutputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param Tags: 标签
        # @type Tags: Array
        # @param OptimizationLevel: 优化级别(NO_LOSS/FP16/INT8)，默认FP16
        # @type OptimizationLevel: String
        # @param GPUType: GPU卡类型(T4/V100/A10)，默认T4
        # @type GPUType: String
        # @param HyperParameter: 专业参数设置
        # @type HyperParameter: :class:`Tencentcloud::Tione.v20211111.models.HyperParameter`

        attr_accessor :ModelAccTaskName, :BatchModelAccTasks, :ModelOutputPath, :Tags, :OptimizationLevel, :GPUType, :HyperParameter

        def initialize(modelacctaskname=nil, batchmodelacctasks=nil, modeloutputpath=nil, tags=nil, optimizationlevel=nil, gputype=nil, hyperparameter=nil)
          @ModelAccTaskName = modelacctaskname
          @BatchModelAccTasks = batchmodelacctasks
          @ModelOutputPath = modeloutputpath
          @Tags = tags
          @OptimizationLevel = optimizationlevel
          @GPUType = gputype
          @HyperParameter = hyperparameter
        end

        def deserialize(params)
          @ModelAccTaskName = params['ModelAccTaskName']
          unless params['BatchModelAccTasks'].nil?
            @BatchModelAccTasks = []
            params['BatchModelAccTasks'].each do |i|
              batchmodelacctask_tmp = BatchModelAccTask.new
              batchmodelacctask_tmp.deserialize(i)
              @BatchModelAccTasks << batchmodelacctask_tmp
            end
          end
          unless params['ModelOutputPath'].nil?
            @ModelOutputPath = CosPathInfo.new
            @ModelOutputPath.deserialize(params['ModelOutputPath'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @OptimizationLevel = params['OptimizationLevel']
          @GPUType = params['GPUType']
          unless params['HyperParameter'].nil?
            @HyperParameter = HyperParameter.new
            @HyperParameter.deserialize(params['HyperParameter'])
          end
        end
      end

      # CreateBatchModelAccTasks返回参数结构体
      class CreateBatchModelAccTasksResponse < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskIds: 模型优化任务ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccTaskIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAccTaskIds, :RequestId

        def initialize(modelacctaskids=nil, requestid=nil)
          @ModelAccTaskIds = modelacctaskids
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelAccTaskIds = params['ModelAccTaskIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchTask请求参数结构体
      class CreateBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskName: 批量预测任务名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type BatchTaskName: String
        # @param ChargeType: 计费模式，eg：PREPAID 包年包月；POSTPAID_BY_HOUR 按量计费
        # @type ChargeType: String
        # @param ResourceConfigInfo: 资源配置
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param Outputs: 结果输出存储信息
        # @type Outputs: Array
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param JobType: 工作类型 1:单次 2:周期
        # @type JobType: Integer
        # @param CronInfo: 任务周期描述
        # @type CronInfo: :class:`Tencentcloud::Tione.v20211111.models.CronInfo`
        # @param ResourceGroupId: 包年包月资源组ID
        # @type ResourceGroupId: String
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param ModelInfo: 服务对应的模型信息，有模型文件时需要填写
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 自定义镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CodePackage: 代码包
        # @type CodePackage: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmd: 启动命令
        # @type StartCmd: String
        # @param DataConfigs: 数据配置
        # @type DataConfigs: Array
        # @param LogConfig: 日志配置
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: VPC Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CallbackUrl: 任务执行结果回调URL，仅支持http和https。回调格式&内容详见: [TI-ONE 接口回调说明](https://cloud.tencent.com/document/product/851/84292)
        # @type CallbackUrl: String

        attr_accessor :BatchTaskName, :ChargeType, :ResourceConfigInfo, :Outputs, :LogEnable, :JobType, :CronInfo, :ResourceGroupId, :Tags, :ModelInfo, :ImageInfo, :CodePackage, :StartCmd, :DataConfigs, :LogConfig, :VpcId, :SubnetId, :Remark, :CallbackUrl
        extend Gem::Deprecate
        deprecate :JobType, :none, 2024, 3
        deprecate :JobType=, :none, 2024, 3
        deprecate :CronInfo, :none, 2024, 3
        deprecate :CronInfo=, :none, 2024, 3

        def initialize(batchtaskname=nil, chargetype=nil, resourceconfiginfo=nil, outputs=nil, logenable=nil, jobtype=nil, croninfo=nil, resourcegroupid=nil, tags=nil, modelinfo=nil, imageinfo=nil, codepackage=nil, startcmd=nil, dataconfigs=nil, logconfig=nil, vpcid=nil, subnetid=nil, remark=nil, callbackurl=nil)
          @BatchTaskName = batchtaskname
          @ChargeType = chargetype
          @ResourceConfigInfo = resourceconfiginfo
          @Outputs = outputs
          @LogEnable = logenable
          @JobType = jobtype
          @CronInfo = croninfo
          @ResourceGroupId = resourcegroupid
          @Tags = tags
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @CodePackage = codepackage
          @StartCmd = startcmd
          @DataConfigs = dataconfigs
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @Remark = remark
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          @BatchTaskName = params['BatchTaskName']
          @ChargeType = params['ChargeType']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @Outputs << dataconfig_tmp
            end
          end
          @LogEnable = params['LogEnable']
          @JobType = params['JobType']
          unless params['CronInfo'].nil?
            @CronInfo = CronInfo.new
            @CronInfo.deserialize(params['CronInfo'])
          end
          @ResourceGroupId = params['ResourceGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['CodePackage'].nil?
            @CodePackage = CosPathInfo.new
            @CodePackage.deserialize(params['CodePackage'])
          end
          @StartCmd = params['StartCmd']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Remark = params['Remark']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # CreateBatchTask返回参数结构体
      class CreateBatchTaskResponse < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务ID
        # @type BatchTaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchTaskId, :RequestId

        def initialize(batchtaskid=nil, requestid=nil)
          @BatchTaskId = batchtaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
          @RequestId = params['RequestId']
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
        # @type AnnotationType: String
        # @param AnnotationFormat: 标注格式:
        # ANNOTATION_FORMAT_TI，TI平台格式
        # ANNOTATION_FORMAT_PASCAL，Pascal Voc
        # ANNOTATION_FORMAT_COCO，COCO
        # ANNOTATION_FORMAT_FILE，文件目录结构
        # @type AnnotationFormat: String
        # @param SchemaInfos: 表头信息
        # @type SchemaInfos: Array
        # @param IsSchemaExisted: 数据是否存在表头
        # @type IsSchemaExisted: Boolean
        # @param ContentType: 导入文件粒度，按行或者按文件
        # @type ContentType: String

        attr_accessor :DatasetName, :DatasetType, :StorageDataPath, :StorageLabelPath, :DatasetTags, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :SchemaInfos, :IsSchemaExisted, :ContentType

        def initialize(datasetname=nil, datasettype=nil, storagedatapath=nil, storagelabelpath=nil, datasettags=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, schemainfos=nil, isschemaexisted=nil, contenttype=nil)
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
        # @param Command: 服务的启动命令
        # @type Command: String
        # @param ServiceEIP: 是否开启TIONE内网访问外部，此功能仅支持后付费机型与从TIONE平台购买的预付费机型；使用从CVM选择资源组时此配置不生效。
        # @type ServiceEIP: :class:`Tencentcloud::Tione.v20211111.models.ServiceEIP`

        attr_accessor :ServiceGroupId, :ServiceGroupName, :ServiceDescription, :ChargeType, :ResourceGroupId, :ModelInfo, :ImageInfo, :Env, :Resources, :InstanceType, :ScaleMode, :Replicas, :HorizontalPodAutoscaler, :LogEnable, :LogConfig, :AuthorizationEnable, :Tags, :NewVersion, :CronScaleJobs, :ScaleStrategy, :HybridBillingPrepaidReplicas, :CreateSource, :ModelHotUpdateEnable, :ScheduledAction, :VolumeMount, :ServiceLimit, :CallbackUrl, :ModelTurboEnable, :ServiceCategory, :Command, :ServiceEIP

        def initialize(servicegroupid=nil, servicegroupname=nil, servicedescription=nil, chargetype=nil, resourcegroupid=nil, modelinfo=nil, imageinfo=nil, env=nil, resources=nil, instancetype=nil, scalemode=nil, replicas=nil, horizontalpodautoscaler=nil, logenable=nil, logconfig=nil, authorizationenable=nil, tags=nil, newversion=nil, cronscalejobs=nil, scalestrategy=nil, hybridbillingprepaidreplicas=nil, createsource=nil, modelhotupdateenable=nil, scheduledaction=nil, volumemount=nil, servicelimit=nil, callbackurl=nil, modelturboenable=nil, servicecategory=nil, command=nil, serviceeip=nil)
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
        end
      end

      # CreateModelService返回参数结构体
      class CreateModelServiceResponse < TencentCloud::Common::AbstractModel
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

      # CreateNotebookImage请求参数结构体
      class CreateNotebookImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param NotebookId: notebook id
        # @type NotebookId: String
        # @param Kernels: 要保存的kernel数组
        # @type Kernels: Array

        attr_accessor :ImageInfo, :NotebookId, :Kernels

        def initialize(imageinfo=nil, notebookid=nil, kernels=nil)
          @ImageInfo = imageinfo
          @NotebookId = notebookid
          @Kernels = kernels
        end

        def deserialize(params)
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @NotebookId = params['NotebookId']
          @Kernels = params['Kernels']
        end
      end

      # CreateNotebookImage返回参数结构体
      class CreateNotebookImageResponse < TencentCloud::Common::AbstractModel
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

      # CreateOptimizedModel请求参数结构体
      class CreateOptimizedModelRequest < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskId: 模型加速任务ID
        # @type ModelAccTaskId: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :ModelAccTaskId, :Tags

        def initialize(modelacctaskid=nil, tags=nil)
          @ModelAccTaskId = modelacctaskid
          @Tags = tags
        end

        def deserialize(params)
          @ModelAccTaskId = params['ModelAccTaskId']
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

      # CreateOptimizedModel返回参数结构体
      class CreateOptimizedModelResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelVersionId: 模型版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelVersionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :ModelVersionId, :RequestId

        def initialize(modelid=nil, modelversionid=nil, requestid=nil)
          @ModelId = modelid
          @ModelVersionId = modelversionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelVersionId = params['ModelVersionId']
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
        # @param StartCmdInfo: 启动命令信息，默认为sh start.sh
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
        # @param PreTrainModel: 太极预训练模型ID
        # @type PreTrainModel: :class:`Tencentcloud::Tione.v20211111.models.PreTrainModel`

        attr_accessor :Name, :ChargeType, :ResourceConfigInfos, :FrameworkName, :FrameworkVersion, :FrameworkEnvironment, :ResourceGroupId, :Tags, :ImageInfo, :CodePackagePath, :StartCmdInfo, :TrainingMode, :DataConfigs, :VpcId, :SubnetId, :Output, :LogConfig, :TuningParameters, :LogEnable, :Remark, :DataSource, :CallbackUrl, :PreTrainModel

        def initialize(name=nil, chargetype=nil, resourceconfiginfos=nil, frameworkname=nil, frameworkversion=nil, frameworkenvironment=nil, resourcegroupid=nil, tags=nil, imageinfo=nil, codepackagepath=nil, startcmdinfo=nil, trainingmode=nil, dataconfigs=nil, vpcid=nil, subnetid=nil, output=nil, logconfig=nil, tuningparameters=nil, logenable=nil, remark=nil, datasource=nil, callbackurl=nil, pretrainmodel=nil)
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
          @PreTrainModel = pretrainmodel
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
          unless params['PreTrainModel'].nil?
            @PreTrainModel = PreTrainModel.new
            @PreTrainModel.deserialize(params['PreTrainModel'])
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

      # 跑批任务周期描述
      class CronInfo < TencentCloud::Common::AbstractModel
        # @param CronConfig: cron配置
        # @type CronConfig: String
        # @param StartTime: 周期开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 周期结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :CronConfig, :StartTime, :EndTime

        def initialize(cronconfig=nil, starttime=nil, endtime=nil)
          @CronConfig = cronconfig
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @CronConfig = params['CronConfig']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # 自定义指标
      class CustomTrainingData < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param Metrics: 指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array

        attr_accessor :MetricName, :Metrics

        def initialize(metricname=nil, metrics=nil)
          @MetricName = metricname
          @Metrics = metrics
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              customtrainingmetric_tmp = CustomTrainingMetric.new
              customtrainingmetric_tmp.deserialize(i)
              @Metrics << customtrainingmetric_tmp
            end
          end
        end
      end

      # 自定义指标
      class CustomTrainingMetric < TencentCloud::Common::AbstractModel
        # @param XType: X轴数据类型: TIMESTAMP; EPOCH; STEP
        # @type XType: String
        # @param Points: 数据点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array

        attr_accessor :XType, :Points

        def initialize(xtype=nil, points=nil)
          @XType = xtype
          @Points = points
        end

        def deserialize(params)
          @XType = params['XType']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              customtrainingpoint_tmp = CustomTrainingPoint.new
              customtrainingpoint_tmp.deserialize(i)
              @Points << customtrainingpoint_tmp
            end
          end
        end
      end

      # 自定义训练指标数据点
      class CustomTrainingPoint < TencentCloud::Common::AbstractModel
        # @param XValue: X值
        # @type XValue: Float
        # @param YValue: Y值
        # @type YValue: Float

        attr_accessor :XValue, :YValue

        def initialize(xvalue=nil, yvalue=nil)
          @XValue = xvalue
          @YValue = yvalue
        end

        def deserialize(params)
          @XValue = params['XValue']
          @YValue = params['YValue']
        end
      end

      # 数据配置
      class DataConfig < TencentCloud::Common::AbstractModel
        # @param MappingPath: 映射路径
        # @type MappingPath: String
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

        attr_accessor :MappingPath, :DataSourceType, :DataSetSource, :COSSource, :CFSSource, :HDFSSource, :GooseFSSource, :CFSTurboSource

        def initialize(mappingpath=nil, datasourcetype=nil, datasetsource=nil, cossource=nil, cfssource=nil, hdfssource=nil, goosefssource=nil, cfsturbosource=nil)
          @MappingPath = mappingpath
          @DataSourceType = datasourcetype
          @DataSetSource = datasetsource
          @COSSource = cossource
          @CFSSource = cfssource
          @HDFSSource = hdfssource
          @GooseFSSource = goosefssource
          @CFSTurboSource = cfsturbosource
        end

        def deserialize(params)
          @MappingPath = params['MappingPath']
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

        attr_accessor :DatasetId, :DatasetName, :Creator, :DatasetVersion, :DatasetType, :DatasetTags, :DatasetAnnotationTaskName, :DatasetAnnotationTaskId, :Process, :DatasetStatus, :ErrorMsg, :CreateTime, :UpdateTime, :ExternalTaskType, :DatasetSize, :FileNum, :StorageDataPath, :StorageLabelPath, :DatasetVersions, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :DatasetScope, :OcrScene, :AnnotationKeyStatus, :ContentType

        def initialize(datasetid=nil, datasetname=nil, creator=nil, datasetversion=nil, datasettype=nil, datasettags=nil, datasetannotationtaskname=nil, datasetannotationtaskid=nil, process=nil, datasetstatus=nil, errormsg=nil, createtime=nil, updatetime=nil, externaltasktype=nil, datasetsize=nil, filenum=nil, storagedatapath=nil, storagelabelpath=nil, datasetversions=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, datasetscope=nil, ocrscene=nil, annotationkeystatus=nil, contenttype=nil)
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

        attr_accessor :DatasetId, :DatasetName, :Creator, :DatasetVersion, :DatasetType, :DatasetTags, :DatasetAnnotationTaskName, :DatasetAnnotationTaskId, :Process, :DatasetStatus, :ErrorMsg, :CreateTime, :UpdateTime, :ExternalTaskType, :DatasetSize, :FileNum, :StorageDataPath, :StorageLabelPath, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :DatasetScope, :OcrScene, :AnnotationKeyStatus

        def initialize(datasetid=nil, datasetname=nil, creator=nil, datasetversion=nil, datasettype=nil, datasettags=nil, datasetannotationtaskname=nil, datasetannotationtaskid=nil, process=nil, datasetstatus=nil, errormsg=nil, createtime=nil, updatetime=nil, externaltasktype=nil, datasetsize=nil, filenum=nil, storagedatapath=nil, storagelabelpath=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, datasetscope=nil, ocrscene=nil, annotationkeystatus=nil)
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

      # DeleteBatchTask请求参数结构体
      class DeleteBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务ID
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId

        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # DeleteBatchTask返回参数结构体
      class DeleteBatchTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteModelAccelerateTask请求参数结构体
      class DeleteModelAccelerateTaskRequest < TencentCloud::Common::AbstractModel
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

      # DeleteModelAccelerateTask返回参数结构体
      class DeleteModelAccelerateTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNotebookImageRecord请求参数结构体
      class DeleteNotebookImageRecordRequest < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录id
        # @type RecordId: String

        attr_accessor :RecordId

        def initialize(recordid=nil)
          @RecordId = recordid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
        end
      end

      # DeleteNotebookImageRecord返回参数结构体
      class DeleteNotebookImageRecordResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAPIConfigs请求参数结构体
      class DescribeAPIConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        # @type OrderField: String
        # @param Filters: 分页参数，支持的分页过滤Name包括：
        # ["ClusterId", "ServiceId", "ServiceGroupName", "ServiceGroupId"]
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Order, :OrderField, :Filters

        def initialize(offset=nil, limit=nil, order=nil, orderfield=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @Filters = filters
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
        end
      end

      # DescribeAPIConfigs返回参数结构体
      class DescribeAPIConfigsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 接口数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Details: 接口详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId

        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              apiconfigdetail_tmp = APIConfigDetail.new
              apiconfigdetail_tmp.deserialize(i)
              @Details << apiconfigdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchTaskInstances请求参数结构体
      class DescribeBatchTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务id
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId

        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # DescribeBatchTaskInstances返回参数结构体
      class DescribeBatchTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param BatchInstances: 批量预测实例结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchInstances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchInstances, :RequestId

        def initialize(batchinstances=nil, requestid=nil)
          @BatchInstances = batchinstances
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BatchInstances'].nil?
            @BatchInstances = []
            params['BatchInstances'].each do |i|
              batchtaskinstance_tmp = BatchTaskInstance.new
              batchtaskinstance_tmp.deserialize(i)
              @BatchInstances << batchtaskinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchTask请求参数结构体
      class DescribeBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务ID
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId

        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # DescribeBatchTask返回参数结构体
      class DescribeBatchTaskResponse < TencentCloud::Common::AbstractModel
        # @param BatchTaskDetail: 批量预测任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchTaskDetail: :class:`Tencentcloud::Tione.v20211111.models.BatchTaskDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchTaskDetail, :RequestId

        def initialize(batchtaskdetail=nil, requestid=nil)
          @BatchTaskDetail = batchtaskdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BatchTaskDetail'].nil?
            @BatchTaskDetail = BatchTaskDetail.new
            @BatchTaskDetail.deserialize(params['BatchTaskDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchTasks请求参数结构体
      class DescribeBatchTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器

        # Name支持的取值范围：
        # BatchTaskId, BatchTaskName, Status, ModelVersionId

        # 其中Status 的有效取值范围:
        # INIT, STARTING, RUNNING, FAILED, STOPPING, STOPPED, SUCCEED
        # @type Filters: Array
        # @param TagFilters: 标签过滤器
        # @type TagFilters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 限制数目，默认为20
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC（升序排列）/ DESC（降序排列），默认为DESC
        # @type Order: String
        # @param OrderField: 排序字段。当前仅支持 "CreateTime"。
        # 不传此字段则按照DB默认排序结果返回
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

      # DescribeBatchTasks返回参数结构体
      class DescribeBatchTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批量预测任务总数
        # @type TotalCount: Integer
        # @param BatchTaskSet: 批量预测任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchTaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BatchTaskSet, :RequestId

        def initialize(totalcount=nil, batchtaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @BatchTaskSet = batchtaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BatchTaskSet'].nil?
            @BatchTaskSet = []
            params['BatchTaskSet'].each do |i|
              batchtasksetitem_tmp = BatchTaskSetItem.new
              batchtasksetitem_tmp.deserialize(i)
              @BatchTaskSet << batchtasksetitem_tmp
            end
          end
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
        # @param Filters: Filter.Name: 枚举值: ResourceGroupId (资源组id列表)
        #                     ResourceGroupName (资源组名称列表)
        # Filter.Values: 长度为1且Filter.Fuzzy=true时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为5，Filter.Values的上限为100
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
        # @param TaskType: 枚举值：TRAIN、NOTEBOOK、INFERENCE
        # @type TaskType: String
        # @param ResourceType: 资源类型：CALC 计算资源、CPU CPU资源、GPU GPU资源、CBS云硬盘
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

      # DescribeDatasetDetailStructured请求参数结构体
      class DescribeDatasetDetailStructuredRequest < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # @type DatasetId: String
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 返回数据条数，默认20，目前最大支持2000条数据
        # @type Limit: Integer

        attr_accessor :DatasetId, :Offset, :Limit

        def initialize(datasetid=nil, offset=nil, limit=nil)
          @DatasetId = datasetid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDatasetDetailStructured返回参数结构体
      class DescribeDatasetDetailStructuredResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ColumnNames: 表格头信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnNames: Array
        # @param RowItems: 表格内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowItems: Array
        # @param RowTexts: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowTexts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ColumnNames, :RowItems, :RowTexts, :RequestId

        def initialize(totalcount=nil, columnnames=nil, rowitems=nil, rowtexts=nil, requestid=nil)
          @TotalCount = totalcount
          @ColumnNames = columnnames
          @RowItems = rowitems
          @RowTexts = rowtexts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ColumnNames = params['ColumnNames']
          unless params['RowItems'].nil?
            @RowItems = []
            params['RowItems'].each do |i|
              rowitem_tmp = RowItem.new
              rowitem_tmp.deserialize(i)
              @RowItems << rowitem_tmp
            end
          end
          @RowTexts = params['RowTexts']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasetDetailUnstructured请求参数结构体
      class DescribeDatasetDetailUnstructuredRequest < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # @type DatasetId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回个数，默认20，目前最大支持2000条数据
        # @type Limit: Integer
        # @param LabelList: 标签过滤参数，对应标签值
        # @type LabelList: Array
        # @param AnnotationStatus: 标注状态过滤参数:
        # STATUS_ANNOTATED，已标注
        # STATUS_NON_ANNOTATED，未标注
        # STATUS_ALL，全部
        # 默认为STATUS_ALL
        # @type AnnotationStatus: String
        # @param DatasetIds: 数据集ID列表
        # @type DatasetIds: Array
        # @param TextClassificationLabels: 要筛选的文本分类场景标签信息
        # @type TextClassificationLabels: Array

        attr_accessor :DatasetId, :Offset, :Limit, :LabelList, :AnnotationStatus, :DatasetIds, :TextClassificationLabels

        def initialize(datasetid=nil, offset=nil, limit=nil, labellist=nil, annotationstatus=nil, datasetids=nil, textclassificationlabels=nil)
          @DatasetId = datasetid
          @Offset = offset
          @Limit = limit
          @LabelList = labellist
          @AnnotationStatus = annotationstatus
          @DatasetIds = datasetids
          @TextClassificationLabels = textclassificationlabels
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LabelList = params['LabelList']
          @AnnotationStatus = params['AnnotationStatus']
          @DatasetIds = params['DatasetIds']
          unless params['TextClassificationLabels'].nil?
            @TextClassificationLabels = []
            params['TextClassificationLabels'].each do |i|
              textlabeldistributioninfo_tmp = TextLabelDistributionInfo.new
              textlabeldistributioninfo_tmp.deserialize(i)
              @TextClassificationLabels << textlabeldistributioninfo_tmp
            end
          end
        end
      end

      # DescribeDatasetDetailUnstructured返回参数结构体
      class DescribeDatasetDetailUnstructuredResponse < TencentCloud::Common::AbstractModel
        # @param AnnotatedTotalCount: 已标注数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotatedTotalCount: Integer
        # @param NonAnnotatedTotalCount: 没有标注数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonAnnotatedTotalCount: Integer
        # @param FilterTotalCount: 过滤数据总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterTotalCount: Integer
        # @param FilterLabelList: 过滤数据详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterLabelList: Array
        # @param RowTexts: 数据文本行，默认返回前1000行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowTexts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AnnotatedTotalCount, :NonAnnotatedTotalCount, :FilterTotalCount, :FilterLabelList, :RowTexts, :RequestId

        def initialize(annotatedtotalcount=nil, nonannotatedtotalcount=nil, filtertotalcount=nil, filterlabellist=nil, rowtexts=nil, requestid=nil)
          @AnnotatedTotalCount = annotatedtotalcount
          @NonAnnotatedTotalCount = nonannotatedtotalcount
          @FilterTotalCount = filtertotalcount
          @FilterLabelList = filterlabellist
          @RowTexts = rowtexts
          @RequestId = requestid
        end

        def deserialize(params)
          @AnnotatedTotalCount = params['AnnotatedTotalCount']
          @NonAnnotatedTotalCount = params['NonAnnotatedTotalCount']
          @FilterTotalCount = params['FilterTotalCount']
          unless params['FilterLabelList'].nil?
            @FilterLabelList = []
            params['FilterLabelList'].each do |i|
              filterlabelinfo_tmp = FilterLabelInfo.new
              filterlabelinfo_tmp.deserialize(i)
              @FilterLabelList << filterlabelinfo_tmp
            end
          end
          @RowTexts = params['RowTexts']
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

        attr_accessor :DatasetIds, :Filters, :TagFilters, :Order, :OrderField, :Offset, :Limit

        def initialize(datasetids=nil, filters=nil, tagfilters=nil, order=nil, orderfield=nil, offset=nil, limit=nil)
          @DatasetIds = datasetids
          @Filters = filters
          @TagFilters = tagfilters
          @Order = order
          @OrderField = orderfield
          @Offset = offset
          @Limit = limit
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DatasetGroups, :DatasetIdNums, :RequestId

        def initialize(totalcount=nil, datasetgroups=nil, datasetidnums=nil, requestid=nil)
          @TotalCount = totalcount
          @DatasetGroups = datasetgroups
          @DatasetIdNums = datasetidnums
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

      # DescribeLatestTrainingMetrics请求参数结构体
      class DescribeLatestTrainingMetricsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeLatestTrainingMetrics返回参数结构体
      class DescribeLatestTrainingMetricsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Metrics: 最近一次上报的训练指标.每个Metric中只有一个点的数据, 即len(Values) = len(Timestamps) = 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Metrics, :RequestId

        def initialize(taskid=nil, metrics=nil, requestid=nil)
          @TaskId = taskid
          @Metrics = metrics
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              trainingmetric_tmp = TrainingMetric.new
              trainingmetric_tmp.deserialize(i)
              @Metrics << trainingmetric_tmp
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

      # DescribeModelAccEngineVersions请求参数结构体
      class DescribeModelAccEngineVersionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeModelAccEngineVersions返回参数结构体
      class DescribeModelAccEngineVersionsResponse < TencentCloud::Common::AbstractModel
        # @param ModelAccEngineVersions: 模型加速版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccEngineVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAccEngineVersions, :RequestId

        def initialize(modelaccengineversions=nil, requestid=nil)
          @ModelAccEngineVersions = modelaccengineversions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelAccEngineVersions'].nil?
            @ModelAccEngineVersions = []
            params['ModelAccEngineVersions'].each do |i|
              modelaccengineversion_tmp = ModelAccEngineVersion.new
              modelaccengineversion_tmp.deserialize(i)
              @ModelAccEngineVersions << modelaccengineversion_tmp
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

      # DescribeModelAccelerateTasks请求参数结构体
      class DescribeModelAccelerateTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器
        # ModelAccTaskName 任务名称
        # ModelSource 模型来源
        # @type Filters: Array
        # @param OrderField: 排序字段，默认CreateTime
        # @type OrderField: String
        # @param Order: 排序方式：ASC/DESC，默认DESC
        # @type Order: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认10
        # @type Limit: Integer
        # @param TagFilters: 标签过滤
        # @type TagFilters: Array

        attr_accessor :Filters, :OrderField, :Order, :Offset, :Limit, :TagFilters

        def initialize(filters=nil, orderfield=nil, order=nil, offset=nil, limit=nil, tagfilters=nil)
          @Filters = filters
          @OrderField = orderfield
          @Order = order
          @Offset = offset
          @Limit = limit
          @TagFilters = tagfilters
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

      # DescribeModelAccelerateTasks返回参数结构体
      class DescribeModelAccelerateTasksResponse < TencentCloud::Common::AbstractModel
        # @param ModelAccelerateTasks: 模型加速任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelAccelerateTasks: Array
        # @param TotalCount: 任务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelAccelerateTasks, :TotalCount, :RequestId

        def initialize(modelacceleratetasks=nil, totalcount=nil, requestid=nil)
          @ModelAccelerateTasks = modelacceleratetasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelAccelerateTasks'].nil?
            @ModelAccelerateTasks = []
            params['ModelAccelerateTasks'].each do |i|
              modelacceleratetask_tmp = ModelAccelerateTask.new
              modelacceleratetask_tmp.deserialize(i)
              @ModelAccelerateTasks << modelacceleratetask_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceCallInfo, :InferGatewayCallInfo, :DefaultNginxGatewayCallInfo, :TJCallInfo, :IntranetCallInfo, :RequestId

        def initialize(servicecallinfo=nil, infergatewaycallinfo=nil, defaultnginxgatewaycallinfo=nil, tjcallinfo=nil, intranetcallinfo=nil, requestid=nil)
          @ServiceCallInfo = servicecallinfo
          @InferGatewayCallInfo = infergatewaycallinfo
          @DefaultNginxGatewayCallInfo = defaultnginxgatewaycallinfo
          @TJCallInfo = tjcallinfo
          @IntranetCallInfo = intranetcallinfo
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

      # DescribeModelServiceHistory请求参数结构体
      class DescribeModelServiceHistoryRequest < TencentCloud::Common::AbstractModel
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

      # DescribeModelServiceHistory返回参数结构体
      class DescribeModelServiceHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 历史版本总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ServiceHistory: 服务版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceHistory: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ServiceHistory, :RequestId

        def initialize(totalcount=nil, servicehistory=nil, requestid=nil)
          @TotalCount = totalcount
          @ServiceHistory = servicehistory
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceHistory'].nil?
            @ServiceHistory = []
            params['ServiceHistory'].each do |i|
              servicehistory_tmp = ServiceHistory.new
              servicehistory_tmp.deserialize(i)
              @ServiceHistory << servicehistory_tmp
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

      # DescribeModelServices请求参数结构体
      class DescribeModelServicesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为20
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        # @type OrderField: String
        # @param Filters: 分页参数，支持的分页过滤Name包括：
        # ["ClusterId", "ServiceId", "ServiceGroupName", "ServiceGroupId","Status","CreatedBy","ModelId"]
        # @type Filters: Array
        # @param TagFilters: 标签过滤参数
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

      # DescribeModelServices返回参数结构体
      class DescribeModelServicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Services: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Services: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Services, :RequestId

        def initialize(totalcount=nil, services=nil, requestid=nil)
          @TotalCount = totalcount
          @Services = services
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Services'].nil?
            @Services = []
            params['Services'].each do |i|
              service_tmp = Service.new
              service_tmp.deserialize(i)
              @Services << service_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookImageKernels请求参数结构体
      class DescribeNotebookImageKernelsRequest < TencentCloud::Common::AbstractModel
        # @param NotebookId: notebook id
        # @type NotebookId: String

        attr_accessor :NotebookId

        def initialize(notebookid=nil)
          @NotebookId = notebookid
        end

        def deserialize(params)
          @NotebookId = params['NotebookId']
        end
      end

      # DescribeNotebookImageKernels返回参数结构体
      class DescribeNotebookImageKernelsResponse < TencentCloud::Common::AbstractModel
        # @param Kernels: 镜像kernel数组
        # @type Kernels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Kernels, :RequestId

        def initialize(kernels=nil, requestid=nil)
          @Kernels = kernels
          @RequestId = requestid
        end

        def deserialize(params)
          @Kernels = params['Kernels']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookImageRecords请求参数结构体
      class DescribeNotebookImageRecordsRequest < TencentCloud::Common::AbstractModel
        # @param NotebookId: notebook id
        # @type NotebookId: String
        # @param Offset: 位移值
        # @type Offset: Integer
        # @param Limit: 日志限制
        # @type Limit: Integer
        # @param Filters: 状态筛选
        # @type Filters: Array

        attr_accessor :NotebookId, :Offset, :Limit, :Filters

        def initialize(notebookid=nil, offset=nil, limit=nil, filters=nil)
          @NotebookId = notebookid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @NotebookId = params['NotebookId']
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

      # DescribeNotebookImageRecords返回参数结构体
      class DescribeNotebookImageRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param NotebookImageRecords: 镜像保存记录
        # @type NotebookImageRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NotebookImageRecords, :RequestId

        def initialize(totalcount=nil, notebookimagerecords=nil, requestid=nil)
          @TotalCount = totalcount
          @NotebookImageRecords = notebookimagerecords
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NotebookImageRecords'].nil?
            @NotebookImageRecords = []
            params['NotebookImageRecords'].each do |i|
              notebookimagerecord_tmp = NotebookImageRecord.new
              notebookimagerecord_tmp.deserialize(i)
              @NotebookImageRecords << notebookimagerecord_tmp
            end
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookSet: Array
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeTrainingFrameworks请求参数结构体
      class DescribeTrainingFrameworksRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTrainingFrameworks返回参数结构体
      class DescribeTrainingFrameworksResponse < TencentCloud::Common::AbstractModel
        # @param FrameworkInfos: 框架信息列表
        # @type FrameworkInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrameworkInfos, :RequestId

        def initialize(frameworkinfos=nil, requestid=nil)
          @FrameworkInfos = frameworkinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FrameworkInfos'].nil?
            @FrameworkInfos = []
            params['FrameworkInfos'].each do |i|
              frameworkinfo_tmp = FrameworkInfo.new
              frameworkinfo_tmp.deserialize(i)
              @FrameworkInfos << frameworkinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingMetrics请求参数结构体
      class DescribeTrainingMetricsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTrainingMetrics返回参数结构体
      class DescribeTrainingMetricsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Data: 训练指标数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Data, :RequestId

        def initialize(taskid=nil, data=nil, requestid=nil)
          @TaskId = taskid
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              customtrainingdata_tmp = CustomTrainingData.new
              customtrainingdata_tmp.deserialize(i)
              @Data << customtrainingdata_tmp
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

      # DescribeTrainingModels请求参数结构体
      class DescribeTrainingModelsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器
        # Filter.Name: 枚举值:
        # keyword (模型名称)
        # TrainingModelId (模型ID)
        # ModelVersionType (模型版本类型) 其值Filter.Values支持: NORMAL(通用) ACCELERATE (加速)
        # TrainingModelSource (模型来源) 其值Filter.Values支持： JOB/COS
        # ModelFormat（模型格式）其值Filter.Values支持：
        # PYTORCH/TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML/MMDETECTION/ONNX/HUGGING_FACE
        # Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为10，Filter.Values的上限为100
        # Filter.Fuzzy取值：true/false，是否支持模糊匹配
        # @type Filters: Array
        # @param OrderField: 排序字段，默认CreateTime
        # @type OrderField: String
        # @param Order: 排序方式，ASC/DESC，默认DESC
        # @type Order: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回结果数量
        # @type Limit: Integer
        # @param TagFilters: 标签过滤
        # @type TagFilters: Array
        # @param WithModelVersions: 是否同时返回模型版本列表
        # @type WithModelVersions: Boolean

        attr_accessor :Filters, :OrderField, :Order, :Offset, :Limit, :TagFilters, :WithModelVersions

        def initialize(filters=nil, orderfield=nil, order=nil, offset=nil, limit=nil, tagfilters=nil, withmodelversions=nil)
          @Filters = filters
          @OrderField = orderfield
          @Order = order
          @Offset = offset
          @Limit = limit
          @TagFilters = tagfilters
          @WithModelVersions = withmodelversions
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
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @WithModelVersions = params['WithModelVersions']
        end
      end

      # DescribeTrainingModels返回参数结构体
      class DescribeTrainingModelsResponse < TencentCloud::Common::AbstractModel
        # @param TrainingModels: 模型列表
        # @type TrainingModels: Array
        # @param TotalCount: 模型总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingModels, :TotalCount, :RequestId

        def initialize(trainingmodels=nil, totalcount=nil, requestid=nil)
          @TrainingModels = trainingmodels
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingModels'].nil?
            @TrainingModels = []
            params['TrainingModels'].each do |i|
              trainingmodeldto_tmp = TrainingModelDTO.new
              trainingmodeldto_tmp.deserialize(i)
              @TrainingModels << trainingmodeldto_tmp
            end
          end
          @TotalCount = params['TotalCount']
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

      # 图像检测参数信息
      class DetectionLabelInfo < TencentCloud::Common::AbstractModel
        # @param Points: 点坐标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array
        # @param Labels: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param FrameType: 类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameType: String

        attr_accessor :Points, :Labels, :FrameType

        def initialize(points=nil, labels=nil, frametype=nil)
          @Points = points
          @Labels = labels
          @FrameType = frametype
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              pointinfo_tmp = PointInfo.new
              pointinfo_tmp.deserialize(i)
              @Points << pointinfo_tmp
            end
          end
          @Labels = params['Labels']
          @FrameType = params['FrameType']
        end
      end

      # 引擎版本
      class EngineVersion < TencentCloud::Common::AbstractModel
        # @param Version: 引擎版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Image: 运行镜像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param IsSupportIntEightQuantization: 是否支持int8量化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportIntEightQuantization: Boolean
        # @param FrameworkVersion: 框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String

        attr_accessor :Version, :Image, :IsSupportIntEightQuantization, :FrameworkVersion

        def initialize(version=nil, image=nil, issupportinteightquantization=nil, frameworkversion=nil)
          @Version = version
          @Image = image
          @IsSupportIntEightQuantization = issupportinteightquantization
          @FrameworkVersion = frameworkversion
        end

        def deserialize(params)
          @Version = params['Version']
          @Image = params['Image']
          @IsSupportIntEightQuantization = params['IsSupportIntEightQuantization']
          @FrameworkVersion = params['FrameworkVersion']
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

      # 图片列表查询结果详情
      class FilterLabelInfo < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集id
        # @type DatasetId: String
        # @param FileId: 文件ID
        # @type FileId: String
        # @param FileName: 文件路径
        # @type FileName: String
        # @param ClassificationLabels: 分类标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationLabels: Array
        # @param DetectionLabels: 检测标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionLabels: Array
        # @param SegmentationLabels: 分割标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentationLabels: Array
        # @param RGBPath: RGB 图片路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RGBPath: String
        # @param LabelTemplateType: 标签模板类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelTemplateType: String
        # @param DownloadUrl: 下载url链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param DownloadThumbnailUrl: 缩略图下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadThumbnailUrl: String
        # @param DownloadRGBUrl: 分割结果图片下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadRGBUrl: String
        # @param OcrScene: OCR场景
        # IDENTITY：识别
        # STRUCTURE：智能结构化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrScene: String
        # @param OcrLabels: OCR场景标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrLabels: Array
        # @param OcrLabelInfo: OCR场景标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrLabelInfo: String
        # @param TextClassificationLabelList: 文本分类场景标签结果，内容是json结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextClassificationLabelList: String
        # @param RowText: 文本内容，返回50字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowText: String
        # @param ContentOmit: 文本内容是否完全返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentOmit: Boolean

        attr_accessor :DatasetId, :FileId, :FileName, :ClassificationLabels, :DetectionLabels, :SegmentationLabels, :RGBPath, :LabelTemplateType, :DownloadUrl, :DownloadThumbnailUrl, :DownloadRGBUrl, :OcrScene, :OcrLabels, :OcrLabelInfo, :TextClassificationLabelList, :RowText, :ContentOmit

        def initialize(datasetid=nil, fileid=nil, filename=nil, classificationlabels=nil, detectionlabels=nil, segmentationlabels=nil, rgbpath=nil, labeltemplatetype=nil, downloadurl=nil, downloadthumbnailurl=nil, downloadrgburl=nil, ocrscene=nil, ocrlabels=nil, ocrlabelinfo=nil, textclassificationlabellist=nil, rowtext=nil, contentomit=nil)
          @DatasetId = datasetid
          @FileId = fileid
          @FileName = filename
          @ClassificationLabels = classificationlabels
          @DetectionLabels = detectionlabels
          @SegmentationLabels = segmentationlabels
          @RGBPath = rgbpath
          @LabelTemplateType = labeltemplatetype
          @DownloadUrl = downloadurl
          @DownloadThumbnailUrl = downloadthumbnailurl
          @DownloadRGBUrl = downloadrgburl
          @OcrScene = ocrscene
          @OcrLabels = ocrlabels
          @OcrLabelInfo = ocrlabelinfo
          @TextClassificationLabelList = textclassificationlabellist
          @RowText = rowtext
          @ContentOmit = contentomit
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @ClassificationLabels = params['ClassificationLabels']
          unless params['DetectionLabels'].nil?
            @DetectionLabels = []
            params['DetectionLabels'].each do |i|
              detectionlabelinfo_tmp = DetectionLabelInfo.new
              detectionlabelinfo_tmp.deserialize(i)
              @DetectionLabels << detectionlabelinfo_tmp
            end
          end
          unless params['SegmentationLabels'].nil?
            @SegmentationLabels = []
            params['SegmentationLabels'].each do |i|
              segmentationinfo_tmp = SegmentationInfo.new
              segmentationinfo_tmp.deserialize(i)
              @SegmentationLabels << segmentationinfo_tmp
            end
          end
          @RGBPath = params['RGBPath']
          @LabelTemplateType = params['LabelTemplateType']
          @DownloadUrl = params['DownloadUrl']
          @DownloadThumbnailUrl = params['DownloadThumbnailUrl']
          @DownloadRGBUrl = params['DownloadRGBUrl']
          @OcrScene = params['OcrScene']
          unless params['OcrLabels'].nil?
            @OcrLabels = []
            params['OcrLabels'].each do |i|
              ocrlabelinfo_tmp = OcrLabelInfo.new
              ocrlabelinfo_tmp.deserialize(i)
              @OcrLabels << ocrlabelinfo_tmp
            end
          end
          @OcrLabelInfo = params['OcrLabelInfo']
          @TextClassificationLabelList = params['TextClassificationLabelList']
          @RowText = params['RowText']
          @ContentOmit = params['ContentOmit']
        end
      end

      # 框架信息列表
      class FrameworkInfo < TencentCloud::Common::AbstractModel
        # @param Name: 框架名称
        # @type Name: String
        # @param VersionInfos: 框架版本以及对应的训练模式
        # @type VersionInfos: Array

        attr_accessor :Name, :VersionInfos

        def initialize(name=nil, versioninfos=nil)
          @Name = name
          @VersionInfos = versioninfos
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['VersionInfos'].nil?
            @VersionInfos = []
            params['VersionInfos'].each do |i|
              frameworkversion_tmp = FrameworkVersion.new
              frameworkversion_tmp.deserialize(i)
              @VersionInfos << frameworkversion_tmp
            end
          end
        end
      end

      # 框架版本以及对应的训练模式
      class FrameworkVersion < TencentCloud::Common::AbstractModel
        # @param Version: 框架版本
        # @type Version: String
        # @param TrainingModes: 训练模式
        # @type TrainingModes: Array
        # @param Environment: 框架运行环境
        # @type Environment: String

        attr_accessor :Version, :TrainingModes, :Environment

        def initialize(version=nil, trainingmodes=nil, environment=nil)
          @Version = version
          @TrainingModes = trainingmodes
          @Environment = environment
        end

        def deserialize(params)
          @Version = params['Version']
          @TrainingModes = params['TrainingModes']
          @Environment = params['Environment']
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

        attr_accessor :Id, :Type, :Path

        def initialize(id=nil, type=nil, path=nil)
          @Id = id
          @Type = type
          @Path = path
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
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
        # @param ImageType: 镜像类型：TCR为腾讯云TCR镜像; CCR为腾讯云TCR个人版镜像，PreSet为平台预置镜像
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
        #  RELEASING 释放中
        # RELEASED：已释放
        # EXCEPTION：异常
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
        # @param PrivateLinkInfos: 私有连接信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateLinkInfos: Array
        # @param DefaultInnerCallInfos: 默认内网调用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultInnerCallInfos: Array

        attr_accessor :IngressPrivateLinkInfo, :ServiceEIPInfo, :PrivateLinkInfos, :DefaultInnerCallInfos

        def initialize(ingressprivatelinkinfo=nil, serviceeipinfo=nil, privatelinkinfos=nil, defaultinnercallinfos=nil)
          @IngressPrivateLinkInfo = ingressprivatelinkinfo
          @ServiceEIPInfo = serviceeipinfo
          @PrivateLinkInfos = privatelinkinfos
          @DefaultInnerCallInfos = defaultinnercallinfos
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
          unless params['PrivateLinkInfos'].nil?
            @PrivateLinkInfos = []
            params['PrivateLinkInfos'].each do |i|
              privatelinkinfo_tmp = PrivateLinkInfo.new
              privatelinkinfo_tmp.deserialize(i)
              @PrivateLinkInfos << privatelinkinfo_tmp
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param Content: 对话输入内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Role, :Content

        def initialize(role=nil, content=nil)
          @Role = role
          @Content = content
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
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

      # 模型加速引擎版本
      class ModelAccEngineVersion < TencentCloud::Common::AbstractModel
        # @param ModelFormat: 模型格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelFormat: String
        # @param EngineVersions: 引擎版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineVersions: Array

        attr_accessor :ModelFormat, :EngineVersions

        def initialize(modelformat=nil, engineversions=nil)
          @ModelFormat = modelformat
          @EngineVersions = engineversions
        end

        def deserialize(params)
          @ModelFormat = params['ModelFormat']
          unless params['EngineVersions'].nil?
            @EngineVersions = []
            params['EngineVersions'].each do |i|
              engineversion_tmp = EngineVersion.new
              engineversion_tmp.deserialize(i)
              @EngineVersions << engineversion_tmp
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

        attr_accessor :ModelAccTaskId, :ModelAccTaskName, :ModelId, :ModelName, :ModelVersion, :ModelSource, :OptimizationLevel, :TaskStatus, :ModelInputNum, :ModelInputInfos, :GPUType, :ChargeType, :Speedup, :ModelInputPath, :ModelOutputPath, :ErrorMsg, :AlgorithmFramework, :WaitNumber, :CreateTime, :TaskProgress, :ModelFormat, :TensorInfos, :HyperParameter, :AccEngineVersion, :Tags, :IsSaved, :ModelSignature, :QATModel, :FrameworkVersion

        def initialize(modelacctaskid=nil, modelacctaskname=nil, modelid=nil, modelname=nil, modelversion=nil, modelsource=nil, optimizationlevel=nil, taskstatus=nil, modelinputnum=nil, modelinputinfos=nil, gputype=nil, chargetype=nil, speedup=nil, modelinputpath=nil, modeloutputpath=nil, errormsg=nil, algorithmframework=nil, waitnumber=nil, createtime=nil, taskprogress=nil, modelformat=nil, tensorinfos=nil, hyperparameter=nil, accengineversion=nil, tags=nil, issaved=nil, modelsignature=nil, qatmodel=nil, frameworkversion=nil)
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

        attr_accessor :ModelVersionId, :ModelId, :ModelName, :ModelVersion, :ModelSource, :CosPathInfo, :AlgorithmFramework, :ModelType, :ModelFormat, :IsPrivateModel

        def initialize(modelversionid=nil, modelid=nil, modelname=nil, modelversion=nil, modelsource=nil, cospathinfo=nil, algorithmframework=nil, modeltype=nil, modelformat=nil, isprivatemodel=nil)
          @ModelVersionId = modelversionid
          @ModelId = modelid
          @ModelName = modelname
          @ModelVersion = modelversion
          @ModelSource = modelsource
          @CosPathInfo = cospathinfo
          @AlgorithmFramework = algorithmframework
          @ModelType = modeltype
          @ModelFormat = modelformat
          @IsPrivateModel = isprivatemodel
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
          @AlgorithmFramework = params['AlgorithmFramework']
          @ModelType = params['ModelType']
          @ModelFormat = params['ModelFormat']
          @IsPrivateModel = params['IsPrivateModel']
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

      # ModifyModelServicePartialConfig请求参数结构体
      class ModifyModelServicePartialConfigRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 在线推理服务Id，需已存在
        # @type ServiceId: String
        # @param ScheduledAction: 更新后服务不重启，定时停止的配置
        # @type ScheduledAction: :class:`Tencentcloud::Tione.v20211111.models.ScheduledAction`
        # @param ServiceLimit: 更新后服务不重启，服务对应限流限频配置
        # @type ServiceLimit: :class:`Tencentcloud::Tione.v20211111.models.ServiceLimit`

        attr_accessor :ServiceId, :ScheduledAction, :ServiceLimit

        def initialize(serviceid=nil, scheduledaction=nil, servicelimit=nil)
          @ServiceId = serviceid
          @ScheduledAction = scheduledaction
          @ServiceLimit = servicelimit
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          unless params['ScheduledAction'].nil?
            @ScheduledAction = ScheduledAction.new
            @ScheduledAction.deserialize(params['ScheduledAction'])
          end
          unless params['ServiceLimit'].nil?
            @ServiceLimit = ServiceLimit.new
            @ServiceLimit.deserialize(params['ServiceLimit'])
          end
        end
      end

      # ModifyModelServicePartialConfig返回参数结构体
      class ModifyModelServicePartialConfigResponse < TencentCloud::Common::AbstractModel
        # @param Service: 被修改后的服务配置
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
        # @param Command: 服务的启动命令
        # @type Command: String
        # @param ServiceEIP: 是否开启TIONE内网访问外部，此功能仅支持后付费机型与从TIONE平台购买的预付费机型；使用从CVM选择资源组时此配置不生效。
        # @type ServiceEIP: :class:`Tencentcloud::Tione.v20211111.models.ServiceEIP`

        attr_accessor :ServiceId, :ModelInfo, :ImageInfo, :Env, :Resources, :InstanceType, :ScaleMode, :Replicas, :HorizontalPodAutoscaler, :LogEnable, :LogConfig, :ServiceAction, :ServiceDescription, :ScaleStrategy, :CronScaleJobs, :HybridBillingPrepaidReplicas, :ModelHotUpdateEnable, :ScheduledAction, :ServiceLimit, :VolumeMount, :ModelTurboEnable, :Command, :ServiceEIP

        def initialize(serviceid=nil, modelinfo=nil, imageinfo=nil, env=nil, resources=nil, instancetype=nil, scalemode=nil, replicas=nil, horizontalpodautoscaler=nil, logenable=nil, logconfig=nil, serviceaction=nil, servicedescription=nil, scalestrategy=nil, cronscalejobs=nil, hybridbillingprepaidreplicas=nil, modelhotupdateenable=nil, scheduledaction=nil, servicelimit=nil, volumemount=nil, modelturboenable=nil, command=nil, serviceeip=nil)
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

      # ModifyNotebook请求参数结构体
      class ModifyNotebookRequest < TencentCloud::Common::AbstractModel
        # @param Id: notebook id
        # @type Id: String
        # @param Name: 名称。不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type Name: String
        # @param ChargeType: （不允许修改）计算资源付费模式 ，可选值为：
        # PREPAID：预付费，即包年包月
        # POSTPAID_BY_HOUR：按小时后付费
        # @type ChargeType: String
        # @param ResourceConf: 计算资源配置
        # @type ResourceConf: :class:`Tencentcloud::Tione.v20211111.models.ResourceConf`
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param AutoStopping: 是否自动停止
        # @type AutoStopping: Boolean
        # @param DirectInternetAccess: 是否访问公网
        # @type DirectInternetAccess: Boolean
        # @param RootAccess: 是否ROOT权限
        # @type RootAccess: Boolean
        # @param ResourceGroupId: 资源组ID(for预付费)
        # @type ResourceGroupId: String
        # @param VpcId: （不允许修改）Vpc-Id
        # @type VpcId: String
        # @param SubnetId: （不允许修改）子网Id
        # @type SubnetId: String
        # @param VolumeSizeInGB: 存储卷大小，单位GB
        # @type VolumeSizeInGB: Integer
        # @param VolumeSourceType: （不允许修改）存储的类型。取值包含：
        #     FREE:    预付费的免费存储
        #     CLOUD_PREMIUM： 高性能云硬盘
        #     CLOUD_SSD： SSD云硬盘
        #     CFS:     CFS存储，包含NFS和turbo
        # @type VolumeSourceType: String
        # @param VolumeSourceCFS: （不允许修改）CFS存储的配置
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
        # @param DataConfigs: 数据配置，只支持WEDATA_HDFS
        # @type DataConfigs: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ImageType: 镜像类型，包括SYSTEM、TCR、CCR
        # @type ImageType: String
        # @param SSHConfig: SSH配置
        # @type SSHConfig: :class:`Tencentcloud::Tione.v20211111.models.SSHConfig`

        attr_accessor :Id, :Name, :ChargeType, :ResourceConf, :LogEnable, :AutoStopping, :DirectInternetAccess, :RootAccess, :ResourceGroupId, :VpcId, :SubnetId, :VolumeSizeInGB, :VolumeSourceType, :VolumeSourceCFS, :LogConfig, :LifecycleScriptId, :DefaultCodeRepoId, :AdditionalCodeRepoIds, :AutomaticStopTime, :Tags, :DataConfigs, :ImageInfo, :ImageType, :SSHConfig

        def initialize(id=nil, name=nil, chargetype=nil, resourceconf=nil, logenable=nil, autostopping=nil, directinternetaccess=nil, rootaccess=nil, resourcegroupid=nil, vpcid=nil, subnetid=nil, volumesizeingb=nil, volumesourcetype=nil, volumesourcecfs=nil, logconfig=nil, lifecyclescriptid=nil, defaultcoderepoid=nil, additionalcoderepoids=nil, automaticstoptime=nil, tags=nil, dataconfigs=nil, imageinfo=nil, imagetype=nil, sshconfig=nil)
          @Id = id
          @Name = name
          @ChargeType = chargetype
          @ResourceConf = resourceconf
          @LogEnable = logenable
          @AutoStopping = autostopping
          @DirectInternetAccess = directinternetaccess
          @RootAccess = rootaccess
          @ResourceGroupId = resourcegroupid
          @VpcId = vpcid
          @SubnetId = subnetid
          @VolumeSizeInGB = volumesizeingb
          @VolumeSourceType = volumesourcetype
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
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ChargeType = params['ChargeType']
          unless params['ResourceConf'].nil?
            @ResourceConf = ResourceConf.new
            @ResourceConf.deserialize(params['ResourceConf'])
          end
          @LogEnable = params['LogEnable']
          @AutoStopping = params['AutoStopping']
          @DirectInternetAccess = params['DirectInternetAccess']
          @RootAccess = params['RootAccess']
          @ResourceGroupId = params['ResourceGroupId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VolumeSizeInGB = params['VolumeSizeInGB']
          @VolumeSourceType = params['VolumeSourceType']
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
        end
      end

      # ModifyNotebook返回参数结构体
      class ModifyNotebookResponse < TencentCloud::Common::AbstractModel
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

      # ModifyServiceGroupWeights请求参数结构体
      class ModifyServiceGroupWeightsRequest < TencentCloud::Common::AbstractModel
        # @param ServiceGroupId: 服务组id
        # @type ServiceGroupId: String
        # @param Weights: 权重设置
        # @type Weights: Array

        attr_accessor :ServiceGroupId, :Weights

        def initialize(servicegroupid=nil, weights=nil)
          @ServiceGroupId = servicegroupid
          @Weights = weights
        end

        def deserialize(params)
          @ServiceGroupId = params['ServiceGroupId']
          unless params['Weights'].nil?
            @Weights = []
            params['Weights'].each do |i|
              weightentry_tmp = WeightEntry.new
              weightentry_tmp.deserialize(i)
              @Weights << weightentry_tmp
            end
          end
        end
      end

      # ModifyServiceGroupWeights返回参数结构体
      class ModifyServiceGroupWeightsResponse < TencentCloud::Common::AbstractModel
        # @param ServiceGroup: 更新权重后的服务组信息
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

        attr_accessor :Id, :Name, :LifecycleScriptId, :PodName, :UpdateTime, :DirectInternetAccess, :ResourceGroupId, :Tags, :AutoStopping, :AdditionalCodeRepoIds, :AutomaticStopTime, :ResourceConf, :DefaultCodeRepoId, :EndTime, :LogEnable, :LogConfig, :VpcId, :SubnetId, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :ChargeStatus, :RootAccess, :BillingInfos, :VolumeSizeInGB, :FailureReason, :ChargeType, :InstanceTypeAlias, :ResourceGroupName, :VolumeSourceType, :VolumeSourceCFS, :DataConfigs, :Message, :DataSource, :ImageInfo, :ImageType, :SSHConfig, :VolumeSourceGooseFS

        def initialize(id=nil, name=nil, lifecyclescriptid=nil, podname=nil, updatetime=nil, directinternetaccess=nil, resourcegroupid=nil, tags=nil, autostopping=nil, additionalcoderepoids=nil, automaticstoptime=nil, resourceconf=nil, defaultcoderepoid=nil, endtime=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, chargestatus=nil, rootaccess=nil, billinginfos=nil, volumesizeingb=nil, failurereason=nil, chargetype=nil, instancetypealias=nil, resourcegroupname=nil, volumesourcetype=nil, volumesourcecfs=nil, dataconfigs=nil, message=nil, datasource=nil, imageinfo=nil, imagetype=nil, sshconfig=nil, volumesourcegoosefs=nil)
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
        end
      end

      # 镜像保存记录
      class NotebookImageRecord < TencentCloud::Common::AbstractModel
        # @param RecordId: 保存记录ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordId: String
        # @param ImageUrl: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String
        # @param Status: 状态。eg：creating导出中/success已完成/stopped已停止/fail异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Message: 状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Kernels: kernel数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kernels: Array

        attr_accessor :RecordId, :ImageUrl, :Status, :CreateTime, :Message, :InstanceId, :Kernels

        def initialize(recordid=nil, imageurl=nil, status=nil, createtime=nil, message=nil, instanceid=nil, kernels=nil)
          @RecordId = recordid
          @ImageUrl = imageurl
          @Status = status
          @CreateTime = createtime
          @Message = message
          @InstanceId = instanceid
          @Kernels = kernels
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @ImageUrl = params['ImageUrl']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Message = params['Message']
          @InstanceId = params['InstanceId']
          @Kernels = params['Kernels']
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

        attr_accessor :Id, :Name, :ChargeType, :ResourceConf, :ResourceGroupId, :VolumeSizeInGB, :BillingInfos, :Tags, :CreateTime, :StartTime, :UpdateTime, :RuntimeInSeconds, :ChargeStatus, :Status, :FailureReason, :EndTime, :PodName, :InstanceTypeAlias, :ResourceGroupName, :AutoStopping, :AutomaticStopTime, :VolumeSourceType, :VolumeSourceCFS, :Message, :UserTypes, :SSHConfig, :VolumeSourceGooseFS

        def initialize(id=nil, name=nil, chargetype=nil, resourceconf=nil, resourcegroupid=nil, volumesizeingb=nil, billinginfos=nil, tags=nil, createtime=nil, starttime=nil, updatetime=nil, runtimeinseconds=nil, chargestatus=nil, status=nil, failurereason=nil, endtime=nil, podname=nil, instancetypealias=nil, resourcegroupname=nil, autostopping=nil, automaticstoptime=nil, volumesourcetype=nil, volumesourcecfs=nil, message=nil, usertypes=nil, sshconfig=nil, volumesourcegoosefs=nil)
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
        end
      end

      # OCR场景标签列表
      class OcrLabelInfo < TencentCloud::Common::AbstractModel
        # @param Points: 坐标点围起来的框
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array
        # @param FrameType: 框的形状：
        # FRAME_TYPE_RECTANGLE
        # FRAME_TYPE_POLYGON
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameType: String
        # @param Key: 智能结构化：key区域对应的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param KeyId: 智能结构化：上述key的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param Value: 识别：框区域的内容
        # 智能结构化：value区域对应的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param KeyIdsForValue: 智能结构化：value区域所关联的key 区域的keyID的集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyIdsForValue: Array
        # @param Direction: key或者value区域内容的方向：
        # DIRECTION_VERTICAL
        # DIRECTION_HORIZONTAL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Direction: String

        attr_accessor :Points, :FrameType, :Key, :KeyId, :Value, :KeyIdsForValue, :Direction

        def initialize(points=nil, frametype=nil, key=nil, keyid=nil, value=nil, keyidsforvalue=nil, direction=nil)
          @Points = points
          @FrameType = frametype
          @Key = key
          @KeyId = keyid
          @Value = value
          @KeyIdsForValue = keyidsforvalue
          @Direction = direction
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              pointinfo_tmp = PointInfo.new
              pointinfo_tmp.deserialize(i)
              @Points << pointinfo_tmp
            end
          end
          @FrameType = params['FrameType']
          @Key = params['Key']
          @KeyId = params['KeyId']
          @Value = params['Value']
          @KeyIdsForValue = params['KeyIdsForValue']
          @Direction = params['Direction']
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

        attr_accessor :Name, :Uid, :ChargeType, :Phase, :IP, :CreateTime, :Containers, :ContainerInfos, :CrossTenantENIInfo

        def initialize(name=nil, uid=nil, chargetype=nil, phase=nil, ip=nil, createtime=nil, containers=nil, containerinfos=nil, crosstenanteniinfo=nil)
          @Name = name
          @Uid = uid
          @ChargeType = chargetype
          @Phase = phase
          @IP = ip
          @CreateTime = createtime
          @Containers = containers
          @ContainerInfos = containerinfos
          @CrossTenantENIInfo = crosstenanteniinfo
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

        attr_accessor :Name, :IP, :Status, :StartTime, :EndTime, :ResourceConfigInfo

        def initialize(name=nil, ip=nil, status=nil, starttime=nil, endtime=nil, resourceconfiginfo=nil)
          @Name = name
          @IP = ip
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @ResourceConfigInfo = resourceconfiginfo
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
        end
      end

      # 点信息描述
      class PointInfo < TencentCloud::Common::AbstractModel
        # @param X: X坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: Y坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float

        attr_accessor :X, :Y

        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 太极任务预训练模型信息
      class PreTrainModel < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String

        attr_accessor :ModelId, :ModelName

        def initialize(modelid=nil, modelname=nil)
          @ModelId = modelid
          @ModelName = modelname
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
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

      # RestartModelAccelerateTask请求参数结构体
      class RestartModelAccelerateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ModelAccTaskId: 模型加速任务ID
        # @type ModelAccTaskId: String
        # @param ModelAccTaskName: 模型加速任务名称
        # @type ModelAccTaskName: String
        # @param ModelSource: 模型来源（JOB/COS）
        # @type ModelSource: String
        # @param AlgorithmFramework: 算法框架（废弃）
        # @type AlgorithmFramework: String
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param ModelVersion: 模型版本
        # @type ModelVersion: String
        # @param ModelInputPath: 模型输入cos路径
        # @type ModelInputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param OptimizationLevel: 优化级别（NO_LOSS/FP16/INT8），默认FP16
        # @type OptimizationLevel: String
        # @param ModelInputNum: input节点个数（废弃）
        # @type ModelInputNum: Integer
        # @param ModelInputInfos: input节点信息（废弃）
        # @type ModelInputInfos: Array
        # @param ModelOutputPath: 模型输出cos路径
        # @type ModelOutputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param ModelFormat: 模型格式（TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/MMDETECTION/ONNX/HUGGING_FACE）
        # @type ModelFormat: String
        # @param TensorInfos: 模型Tensor信息
        # @type TensorInfos: Array
        # @param GPUType: GPU类型（T4/V100/A10），默认T4
        # @type GPUType: String
        # @param HyperParameter: 模型专业参数
        # @type HyperParameter: :class:`Tencentcloud::Tione.v20211111.models.HyperParameter`
        # @param AccEngineVersion: 加速引擎版本
        # @type AccEngineVersion: String
        # @param Tags: 标签
        # @type Tags: Array
        # @param ModelSignature: SavedModel保存时配置的签名
        # @type ModelSignature: String
        # @param FrameworkVersion: 加速引擎对应的框架版本
        # @type FrameworkVersion: String

        attr_accessor :ModelAccTaskId, :ModelAccTaskName, :ModelSource, :AlgorithmFramework, :ModelId, :ModelName, :ModelVersion, :ModelInputPath, :OptimizationLevel, :ModelInputNum, :ModelInputInfos, :ModelOutputPath, :ModelFormat, :TensorInfos, :GPUType, :HyperParameter, :AccEngineVersion, :Tags, :ModelSignature, :FrameworkVersion

        def initialize(modelacctaskid=nil, modelacctaskname=nil, modelsource=nil, algorithmframework=nil, modelid=nil, modelname=nil, modelversion=nil, modelinputpath=nil, optimizationlevel=nil, modelinputnum=nil, modelinputinfos=nil, modeloutputpath=nil, modelformat=nil, tensorinfos=nil, gputype=nil, hyperparameter=nil, accengineversion=nil, tags=nil, modelsignature=nil, frameworkversion=nil)
          @ModelAccTaskId = modelacctaskid
          @ModelAccTaskName = modelacctaskname
          @ModelSource = modelsource
          @AlgorithmFramework = algorithmframework
          @ModelId = modelid
          @ModelName = modelname
          @ModelVersion = modelversion
          @ModelInputPath = modelinputpath
          @OptimizationLevel = optimizationlevel
          @ModelInputNum = modelinputnum
          @ModelInputInfos = modelinputinfos
          @ModelOutputPath = modeloutputpath
          @ModelFormat = modelformat
          @TensorInfos = tensorinfos
          @GPUType = gputype
          @HyperParameter = hyperparameter
          @AccEngineVersion = accengineversion
          @Tags = tags
          @ModelSignature = modelsignature
          @FrameworkVersion = frameworkversion
        end

        def deserialize(params)
          @ModelAccTaskId = params['ModelAccTaskId']
          @ModelAccTaskName = params['ModelAccTaskName']
          @ModelSource = params['ModelSource']
          @AlgorithmFramework = params['AlgorithmFramework']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ModelVersion = params['ModelVersion']
          unless params['ModelInputPath'].nil?
            @ModelInputPath = CosPathInfo.new
            @ModelInputPath.deserialize(params['ModelInputPath'])
          end
          @OptimizationLevel = params['OptimizationLevel']
          @ModelInputNum = params['ModelInputNum']
          unless params['ModelInputInfos'].nil?
            @ModelInputInfos = []
            params['ModelInputInfos'].each do |i|
              modelinputinfo_tmp = ModelInputInfo.new
              modelinputinfo_tmp.deserialize(i)
              @ModelInputInfos << modelinputinfo_tmp
            end
          end
          unless params['ModelOutputPath'].nil?
            @ModelOutputPath = CosPathInfo.new
            @ModelOutputPath.deserialize(params['ModelOutputPath'])
          end
          @ModelFormat = params['ModelFormat']
          @TensorInfos = params['TensorInfos']
          @GPUType = params['GPUType']
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
          @ModelSignature = params['ModelSignature']
          @FrameworkVersion = params['FrameworkVersion']
        end
      end

      # RestartModelAccelerateTask返回参数结构体
      class RestartModelAccelerateTaskResponse < TencentCloud::Common::AbstractModel
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

      # 文本行信息
      class RowItem < TencentCloud::Common::AbstractModel
        # @param Values: rowValue 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Values

        def initialize(values=nil)
          @Values = values
        end

        def deserialize(params)
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              rowvalue_tmp = RowValue.new
              rowvalue_tmp.deserialize(i)
              @Values << rowvalue_tmp
            end
          end
        end
      end

      # 文件行信息
      class RowValue < TencentCloud::Common::AbstractModel
        # @param Name: 列名
        # @type Name: String
        # @param Value: 列值
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

        attr_accessor :Enable, :PublicKey, :Port, :LoginCommand

        def initialize(enable=nil, publickey=nil, port=nil, logincommand=nil)
          @Enable = enable
          @PublicKey = publickey
          @Port = port
          @LoginCommand = logincommand
        end

        def deserialize(params)
          @Enable = params['Enable']
          @PublicKey = params['PublicKey']
          @Port = params['Port']
          @LoginCommand = params['LoginCommand']
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

      # 图片分割参数信息
      class SegmentationInfo < TencentCloud::Common::AbstractModel
        # @param Points: 点坐标数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array
        # @param Label: 分割标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Gray: 灰度值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gray: Integer
        # @param Color: 颜色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: String

        attr_accessor :Points, :Label, :Gray, :Color

        def initialize(points=nil, label=nil, gray=nil, color=nil)
          @Points = points
          @Label = label
          @Gray = gray
          @Color = color
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              pointinfo_tmp = PointInfo.new
              pointinfo_tmp.deserialize(i)
              @Points << pointinfo_tmp
            end
          end
          @Label = params['Label']
          @Gray = params['Gray']
          @Color = params['Color']
        end
      end

      # SendChatMessage请求参数结构体
      class SendChatMessageRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话id，标识一组对话的唯一id，id变更则重置会话
        # @type SessionId: String
        # @param Question: 问题描述
        # @type Question: String
        # @param ModelVersion: 会话模型版本。
        # 金融大模型：填写sn-finllm-13b-chat-v1。
        # 默认为sn-finllm-13b-chat-v1，即金融大模型。
        # @type ModelVersion: String
        # @param Mode: 使用模式。
        # 通用问答：填写General。
        # 搜索增强问答：填写WithSearchPlugin。
        # 默认为General，即通用问答。
        # 当前可体验模型仅支持General。
        # @type Mode: String
        # @param SearchSource: 搜索来源。仅当Mode为WithSearchPlugin时生效。
        # 预置文稿库：填写Preset。自定义：填写Custom。
        # @type SearchSource: String

        attr_accessor :SessionId, :Question, :ModelVersion, :Mode, :SearchSource

        def initialize(sessionid=nil, question=nil, modelversion=nil, mode=nil, searchsource=nil)
          @SessionId = sessionid
          @Question = question
          @ModelVersion = modelversion
          @Mode = mode
          @SearchSource = searchsource
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Question = params['Question']
          @ModelVersion = params['ModelVersion']
          @Mode = params['Mode']
          @SearchSource = params['SearchSource']
        end
      end

      # SendChatMessage返回参数结构体
      class SendChatMessageResponse < TencentCloud::Common::AbstractModel
        # @param Answer: 答案
        # @type Answer: String
        # @param SessionId: 会话id,返回请求的会话id
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Answer, :SessionId, :RequestId

        def initialize(answer=nil, sessionid=nil, requestid=nil)
          @Answer = answer
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @Answer = params['Answer']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
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

        attr_accessor :ServiceGroupId, :ServiceId, :ServiceGroupName, :ServiceDescription, :ServiceInfo, :ClusterId, :Region, :Namespace, :ChargeType, :ResourceGroupId, :ResourceGroupName, :Tags, :IngressName, :CreatedBy, :CreateTime, :UpdateTime, :Uin, :SubUin, :AppId, :BusinessStatus, :ServiceLimit, :ScheduledAction, :CreateFailedReason, :Status, :BillingInfo, :Weight, :CreateSource, :Version, :LatestVersion, :ResourceGroupSWType
        extend Gem::Deprecate
        deprecate :ServiceLimit, :none, 2024, 3
        deprecate :ServiceLimit=, :none, 2024, 3
        deprecate :ScheduledAction, :none, 2024, 3
        deprecate :ScheduledAction=, :none, 2024, 3

        def initialize(servicegroupid=nil, serviceid=nil, servicegroupname=nil, servicedescription=nil, serviceinfo=nil, clusterid=nil, region=nil, namespace=nil, chargetype=nil, resourcegroupid=nil, resourcegroupname=nil, tags=nil, ingressname=nil, createdby=nil, createtime=nil, updatetime=nil, uin=nil, subuin=nil, appid=nil, businessstatus=nil, servicelimit=nil, scheduledaction=nil, createfailedreason=nil, status=nil, billinginfo=nil, weight=nil, createsource=nil, version=nil, latestversion=nil, resourcegroupswtype=nil)
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

        attr_accessor :ServiceGroupId, :ServiceGroupName, :CreatedBy, :CreateTime, :UpdateTime, :Uin, :ServiceCount, :RunningServiceCount, :Services, :Status, :Tags, :LatestVersion, :BusinessStatus, :BillingInfo, :CreateSource, :WeightUpdateStatus, :ReplicasCount, :AvailableReplicasCount

        def initialize(servicegroupid=nil, servicegroupname=nil, createdby=nil, createtime=nil, updatetime=nil, uin=nil, servicecount=nil, runningservicecount=nil, services=nil, status=nil, tags=nil, latestversion=nil, businessstatus=nil, billinginfo=nil, createsource=nil, weightupdatestatus=nil, replicascount=nil, availablereplicascount=nil)
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
        end
      end

      # 服务历史版本
      class ServiceHistory < TencentCloud::Common::AbstractModel
        # @param Revision: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Revision: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Image: 镜像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param ModelFile: 模型文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelFile: String
        # @param RawData: 原始数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawData: String

        attr_accessor :Revision, :UpdateTime, :Image, :ModelFile, :RawData

        def initialize(revision=nil, updatetime=nil, image=nil, modelfile=nil, rawdata=nil)
          @Revision = revision
          @UpdateTime = updatetime
          @Image = image
          @ModelFile = modelfile
          @RawData = rawdata
        end

        def deserialize(params)
          @Revision = params['Revision']
          @UpdateTime = params['UpdateTime']
          @Image = params['Image']
          @ModelFile = params['ModelFile']
          @RawData = params['RawData']
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
        # @type ScheduledAction: String
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

        attr_accessor :Replicas, :ImageInfo, :Env, :Resources, :InstanceType, :ModelInfo, :LogEnable, :LogConfig, :AuthorizationEnable, :HorizontalPodAutoscaler, :Status, :Weight, :ResourceTotal, :OldReplicas, :HybridBillingPrepaidReplicas, :OldHybridBillingPrepaidReplicas, :ModelHotUpdateEnable, :ScaleMode, :CronScaleJobs, :ScaleStrategy, :ScheduledAction, :PodList, :Pods, :PodInfos, :ServiceLimit, :ModelTurboEnable, :VolumeMount, :InferCodeInfo, :Command, :ServiceEIP
        extend Gem::Deprecate
        deprecate :PodList, :none, 2024, 3
        deprecate :PodList=, :none, 2024, 3
        deprecate :Pods, :none, 2024, 3
        deprecate :Pods=, :none, 2024, 3

        def initialize(replicas=nil, imageinfo=nil, env=nil, resources=nil, instancetype=nil, modelinfo=nil, logenable=nil, logconfig=nil, authorizationenable=nil, horizontalpodautoscaler=nil, status=nil, weight=nil, resourcetotal=nil, oldreplicas=nil, hybridbillingprepaidreplicas=nil, oldhybridbillingprepaidreplicas=nil, modelhotupdateenable=nil, scalemode=nil, cronscalejobs=nil, scalestrategy=nil, scheduledaction=nil, podlist=nil, pods=nil, podinfos=nil, servicelimit=nil, modelturboenable=nil, volumemount=nil, infercodeinfo=nil, command=nil, serviceeip=nil)
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
          @ScheduledAction = params['ScheduledAction']
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

      # StopBatchTask请求参数结构体
      class StopBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 批量预测任务ID
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId

        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # StopBatchTask返回参数结构体
      class StopBatchTaskResponse < TencentCloud::Common::AbstractModel
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

      # StopCreatingImage请求参数结构体
      class StopCreatingImageRequest < TencentCloud::Common::AbstractModel
        # @param RecordId: 镜像保存记录ID
        # @type RecordId: String

        attr_accessor :RecordId

        def initialize(recordid=nil)
          @RecordId = recordid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
        end
      end

      # StopCreatingImage返回参数结构体
      class StopCreatingImageResponse < TencentCloud::Common::AbstractModel
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

      # 五级标签
      class TextLabelDistributionDetailInfoFifthClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage

        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
        end
      end

      # 一级标签
      class TextLabelDistributionDetailInfoFirstClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList

        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfosecondclass_tmp = TextLabelDistributionDetailInfoSecondClass.new
              textlabeldistributiondetailinfosecondclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfosecondclass_tmp
            end
          end
        end
      end

      # 四级标签
      class TextLabelDistributionDetailInfoFourthClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList

        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfofifthclass_tmp = TextLabelDistributionDetailInfoFifthClass.new
              textlabeldistributiondetailinfofifthclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfofifthclass_tmp
            end
          end
        end
      end

      # 二级标签
      class TextLabelDistributionDetailInfoSecondClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList

        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfothirdclass_tmp = TextLabelDistributionDetailInfoThirdClass.new
              textlabeldistributiondetailinfothirdclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfothirdclass_tmp
            end
          end
        end
      end

      # 三级标签
      class TextLabelDistributionDetailInfoThirdClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList

        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfofourthclass_tmp = TextLabelDistributionDetailInfoFourthClass.new
              textlabeldistributiondetailinfofourthclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfofourthclass_tmp
            end
          end
        end
      end

      # 文本标签
      class TextLabelDistributionInfo < TencentCloud::Common::AbstractModel
        # @param Theme: 文本分类题目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Theme: String
        # @param ClassLabelList: 一级标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassLabelList: Array

        attr_accessor :Theme, :ClassLabelList

        def initialize(theme=nil, classlabellist=nil)
          @Theme = theme
          @ClassLabelList = classlabellist
        end

        def deserialize(params)
          @Theme = params['Theme']
          unless params['ClassLabelList'].nil?
            @ClassLabelList = []
            params['ClassLabelList'].each do |i|
              textlabeldistributiondetailinfofirstclass_tmp = TextLabelDistributionDetailInfoFirstClass.new
              textlabeldistributiondetailinfofirstclass_tmp.deserialize(i)
              @ClassLabelList << textlabeldistributiondetailinfofirstclass_tmp
            end
          end
        end
      end

      # 训练数据
      class TrainingDataPoint < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Value: 训练上报的值。可以为训练指标（双精度浮点数，也可以为Epoch/Step（两者皆保证是整数）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float

        attr_accessor :Timestamp, :Value

        def initialize(timestamp=nil, value=nil)
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 训练指标
      class TrainingMetric < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Values: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param Epochs: 上报的Epoch. 可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Epochs: Array
        # @param Steps: 上报的Step. 可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Steps: Array
        # @param TotalSteps: 上报的TotalSteps. 可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSteps: Array

        attr_accessor :MetricName, :Values, :Epochs, :Steps, :TotalSteps

        def initialize(metricname=nil, values=nil, epochs=nil, steps=nil, totalsteps=nil)
          @MetricName = metricname
          @Values = values
          @Epochs = epochs
          @Steps = steps
          @TotalSteps = totalsteps
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @Values << trainingdatapoint_tmp
            end
          end
          unless params['Epochs'].nil?
            @Epochs = []
            params['Epochs'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @Epochs << trainingdatapoint_tmp
            end
          end
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @Steps << trainingdatapoint_tmp
            end
          end
          unless params['TotalSteps'].nil?
            @TotalSteps = []
            params['TotalSteps'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @TotalSteps << trainingdatapoint_tmp
            end
          end
        end
      end

      # 模型列表
      class TrainingModelDTO < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型id
        # @type TrainingModelId: String
        # @param TrainingModelName: 模型名称
        # @type TrainingModelName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CreateTime: 模型创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param TrainingModelVersions: 模型版本列表。默认不返回，仅在指定请求参数开启时返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelVersions: Array

        attr_accessor :TrainingModelId, :TrainingModelName, :Tags, :CreateTime, :TrainingModelVersions

        def initialize(trainingmodelid=nil, trainingmodelname=nil, tags=nil, createtime=nil, trainingmodelversions=nil)
          @TrainingModelId = trainingmodelid
          @TrainingModelName = trainingmodelname
          @Tags = tags
          @CreateTime = createtime
          @TrainingModelVersions = trainingmodelversions
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          @TrainingModelName = params['TrainingModelName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          unless params['TrainingModelVersions'].nil?
            @TrainingModelVersions = []
            params['TrainingModelVersions'].each do |i|
              trainingmodelversiondto_tmp = TrainingModelVersionDTO.new
              trainingmodelversiondto_tmp.deserialize(i)
              @TrainingModelVersions << trainingmodelversiondto_tmp
            end
          end
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

        attr_accessor :Id, :Name, :Uin, :SubUin, :Region, :FrameworkName, :FrameworkVersion, :FrameworkEnvironment, :ChargeType, :ResourceGroupId, :ResourceConfigInfos, :Tags, :TrainingMode, :CodePackagePath, :StartCmdInfo, :DataSource, :DataConfigs, :TuningParameters, :Output, :LogEnable, :LogConfig, :VpcId, :SubnetId, :ImageInfo, :RuntimeInSeconds, :CreateTime, :StartTime, :ChargeStatus, :LatestInstanceId, :TensorBoardId, :Remark, :FailureReason, :UpdateTime, :EndTime, :BillingInfo, :ResourceGroupName, :Message, :Status, :CallbackUrl

        def initialize(id=nil, name=nil, uin=nil, subuin=nil, region=nil, frameworkname=nil, frameworkversion=nil, frameworkenvironment=nil, chargetype=nil, resourcegroupid=nil, resourceconfiginfos=nil, tags=nil, trainingmode=nil, codepackagepath=nil, startcmdinfo=nil, datasource=nil, dataconfigs=nil, tuningparameters=nil, output=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, imageinfo=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, chargestatus=nil, latestinstanceid=nil, tensorboardid=nil, remark=nil, failurereason=nil, updatetime=nil, endtime=nil, billinginfo=nil, resourcegroupname=nil, message=nil, status=nil, callbackurl=nil)
          @Id = id
          @Name = name
          @Uin = uin
          @SubUin = subuin
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
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
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

        attr_accessor :Id, :Name, :FrameworkName, :FrameworkVersion, :FrameworkEnvironment, :ChargeType, :ChargeStatus, :ResourceGroupId, :ResourceConfigInfos, :TrainingMode, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :EndTime, :Output, :FailureReason, :UpdateTime, :BillingInfo, :ResourceGroupName, :ImageInfo, :Message, :Tags, :CallbackUrl

        def initialize(id=nil, name=nil, frameworkname=nil, frameworkversion=nil, frameworkenvironment=nil, chargetype=nil, chargestatus=nil, resourcegroupid=nil, resourceconfiginfos=nil, trainingmode=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, endtime=nil, output=nil, failurereason=nil, updatetime=nil, billinginfo=nil, resourcegroupname=nil, imageinfo=nil, message=nil, tags=nil, callbackurl=nil)
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
        end
      end

      # 大模型生成Token统计
      class Usage < TencentCloud::Common::AbstractModel
        # @param CompletionTokens: 生成的token数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompletionTokens: Integer
        # @param PromptTokens: 输入的token数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptTokens: Integer
        # @param TotalTokens: 总共token数目
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 服务的权重
      class WeightEntry < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param Weight: 流量权重值，同 ServiceGroup 下 总和应为 100
        # @type Weight: Integer

        attr_accessor :ServiceId, :Weight

        def initialize(serviceid=nil, weight=nil)
          @ServiceId = serviceid
          @Weight = weight
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Weight = params['Weight']
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
        deprecate :StatefulSetCondition, :none, 2024, 3
        deprecate :StatefulSetCondition=, :none, 2024, 3

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

