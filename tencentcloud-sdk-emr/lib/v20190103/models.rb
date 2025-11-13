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
  module Emr
    module V20190103
      # AddMetricScaleStrategy请求参数结构体
      class AddMetricScaleStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param StrategyType: 1表示按负载规则扩缩容，2表示按时间规则扩缩容。必须填写，并且和下面的规则策略匹配
        # @type StrategyType: Integer
        # @param LoadAutoScaleStrategy: 按负载扩容的规则。
        # @type LoadAutoScaleStrategy: :class:`Tencentcloud::Emr.v20190103.models.LoadAutoScaleStrategy`
        # @param TimeAutoScaleStrategy: 按时间扩缩容的规则。
        # @type TimeAutoScaleStrategy: :class:`Tencentcloud::Emr.v20190103.models.TimeAutoScaleStrategy`

        attr_accessor :InstanceId, :StrategyType, :LoadAutoScaleStrategy, :TimeAutoScaleStrategy

        def initialize(instanceid=nil, strategytype=nil, loadautoscalestrategy=nil, timeautoscalestrategy=nil)
          @InstanceId = instanceid
          @StrategyType = strategytype
          @LoadAutoScaleStrategy = loadautoscalestrategy
          @TimeAutoScaleStrategy = timeautoscalestrategy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyType = params['StrategyType']
          unless params['LoadAutoScaleStrategy'].nil?
            @LoadAutoScaleStrategy = LoadAutoScaleStrategy.new
            @LoadAutoScaleStrategy.deserialize(params['LoadAutoScaleStrategy'])
          end
          unless params['TimeAutoScaleStrategy'].nil?
            @TimeAutoScaleStrategy = TimeAutoScaleStrategy.new
            @TimeAutoScaleStrategy.deserialize(params['TimeAutoScaleStrategy'])
          end
        end
      end

      # AddMetricScaleStrategy返回参数结构体
      class AddMetricScaleStrategyResponse < TencentCloud::Common::AbstractModel
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

      # AddNodeResourceConfig请求参数结构体
      class AddNodeResourceConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param ResourceType: 节点类型 CORE TASK ROUTER
        # @type ResourceType: String
        # @param ResourceConfig: 资源详情
        # @type ResourceConfig: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param IsDefault: 是否默认配置,DEFAULT,BACKUP,不填默认不是默认配置
        # @type IsDefault: String
        # @param ZoneId: 地域ID
        # @type ZoneId: Integer
        # @param MultipleResourceConfig: 添加多个规格时，第1个规格详情在ResourceConfig参数，第2-n个在MultipleResourceConfig参数
        # @type MultipleResourceConfig: Array
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String
        # @param HardwareResourceType: 硬件类型
        # @type HardwareResourceType: String

        attr_accessor :InstanceId, :ResourceType, :ResourceConfig, :PayMode, :IsDefault, :ZoneId, :MultipleResourceConfig, :ResourceBaseType, :ComputeResourceId, :HardwareResourceType

        def initialize(instanceid=nil, resourcetype=nil, resourceconfig=nil, paymode=nil, isdefault=nil, zoneid=nil, multipleresourceconfig=nil, resourcebasetype=nil, computeresourceid=nil, hardwareresourcetype=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @ResourceConfig = resourceconfig
          @PayMode = paymode
          @IsDefault = isdefault
          @ZoneId = zoneid
          @MultipleResourceConfig = multipleresourceconfig
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
          @HardwareResourceType = hardwareresourcetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          unless params['ResourceConfig'].nil?
            @ResourceConfig = Resource.new
            @ResourceConfig.deserialize(params['ResourceConfig'])
          end
          @PayMode = params['PayMode']
          @IsDefault = params['IsDefault']
          @ZoneId = params['ZoneId']
          unless params['MultipleResourceConfig'].nil?
            @MultipleResourceConfig = []
            params['MultipleResourceConfig'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @MultipleResourceConfig << resource_tmp
            end
          end
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
          @HardwareResourceType = params['HardwareResourceType']
        end
      end

      # AddNodeResourceConfig返回参数结构体
      class AddNodeResourceConfigResponse < TencentCloud::Common::AbstractModel
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

      # AddUsersForUserManager请求参数结构体
      class AddUsersForUserManagerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群字符串ID
        # @type InstanceId: String
        # @param UserManagerUserList: 用户信息列表
        # @type UserManagerUserList: Array

        attr_accessor :InstanceId, :UserManagerUserList

        def initialize(instanceid=nil, usermanageruserlist=nil)
          @InstanceId = instanceid
          @UserManagerUserList = usermanageruserlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['UserManagerUserList'].nil?
            @UserManagerUserList = []
            params['UserManagerUserList'].each do |i|
              userinfoforusermanager_tmp = UserInfoForUserManager.new
              userinfoforusermanager_tmp.deserialize(i)
              @UserManagerUserList << userinfoforusermanager_tmp
            end
          end
        end
      end

      # AddUsersForUserManager返回参数结构体
      class AddUsersForUserManagerResponse < TencentCloud::Common::AbstractModel
        # @param SuccessUserList: 添加成功的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessUserList: Array
        # @param FailedUserList: 添加失败的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedUserList: Array
        # @param FlowId: 流程id。大于0表示启动了流程；等于0表示没有启动流程
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessUserList, :FailedUserList, :FlowId, :RequestId

        def initialize(successuserlist=nil, faileduserlist=nil, flowid=nil, requestid=nil)
          @SuccessUserList = successuserlist
          @FailedUserList = faileduserlist
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessUserList = params['SuccessUserList']
          @FailedUserList = params['FailedUserList']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 资源描述
      class AllNodeResourceSpec < TencentCloud::Common::AbstractModel
        # @param MasterResourceSpec: 描述Master节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NodeResourceSpec`
        # @param CoreResourceSpec: 描述Core节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NodeResourceSpec`
        # @param TaskResourceSpec: 描述Taskr节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NodeResourceSpec`
        # @param CommonResourceSpec: 描述Common节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NodeResourceSpec`
        # @param MasterCount: Master节点数量
        # @type MasterCount: Integer
        # @param CoreCount: Corer节点数量
        # @type CoreCount: Integer
        # @param TaskCount: Task节点数量
        # @type TaskCount: Integer
        # @param CommonCount: Common节点数量
        # @type CommonCount: Integer

        attr_accessor :MasterResourceSpec, :CoreResourceSpec, :TaskResourceSpec, :CommonResourceSpec, :MasterCount, :CoreCount, :TaskCount, :CommonCount

        def initialize(masterresourcespec=nil, coreresourcespec=nil, taskresourcespec=nil, commonresourcespec=nil, mastercount=nil, corecount=nil, taskcount=nil, commoncount=nil)
          @MasterResourceSpec = masterresourcespec
          @CoreResourceSpec = coreresourcespec
          @TaskResourceSpec = taskresourcespec
          @CommonResourceSpec = commonresourcespec
          @MasterCount = mastercount
          @CoreCount = corecount
          @TaskCount = taskcount
          @CommonCount = commoncount
        end

        def deserialize(params)
          unless params['MasterResourceSpec'].nil?
            @MasterResourceSpec = NodeResourceSpec.new
            @MasterResourceSpec.deserialize(params['MasterResourceSpec'])
          end
          unless params['CoreResourceSpec'].nil?
            @CoreResourceSpec = NodeResourceSpec.new
            @CoreResourceSpec.deserialize(params['CoreResourceSpec'])
          end
          unless params['TaskResourceSpec'].nil?
            @TaskResourceSpec = NodeResourceSpec.new
            @TaskResourceSpec.deserialize(params['TaskResourceSpec'])
          end
          unless params['CommonResourceSpec'].nil?
            @CommonResourceSpec = NodeResourceSpec.new
            @CommonResourceSpec.deserialize(params['CommonResourceSpec'])
          end
          @MasterCount = params['MasterCount']
          @CoreCount = params['CoreCount']
          @TaskCount = params['TaskCount']
          @CommonCount = params['CommonCount']
        end
      end

      # yarn application 统计信息
      class ApplicationStatics < TencentCloud::Common::AbstractModel
        # @param Queue: 队列名
        # @type Queue: String
        # @param User: 用户名
        # @type User: String
        # @param ApplicationType: 作业类型
        # @type ApplicationType: String
        # @param SumMemorySeconds: SumMemorySeconds含义
        # @type SumMemorySeconds: Integer
        # @param SumVCoreSeconds: SumVCoreSeconds含义
        # @type SumVCoreSeconds: Integer
        # @param SumHDFSBytesWritten: SumHDFSBytesWritten（带单位）
        # @type SumHDFSBytesWritten: String
        # @param SumHDFSBytesRead: SumHDFSBytesRead（待单位）
        # @type SumHDFSBytesRead: String
        # @param CountApps: 作业数
        # @type CountApps: Integer

        attr_accessor :Queue, :User, :ApplicationType, :SumMemorySeconds, :SumVCoreSeconds, :SumHDFSBytesWritten, :SumHDFSBytesRead, :CountApps

        def initialize(queue=nil, user=nil, applicationtype=nil, summemoryseconds=nil, sumvcoreseconds=nil, sumhdfsbyteswritten=nil, sumhdfsbytesread=nil, countapps=nil)
          @Queue = queue
          @User = user
          @ApplicationType = applicationtype
          @SumMemorySeconds = summemoryseconds
          @SumVCoreSeconds = sumvcoreseconds
          @SumHDFSBytesWritten = sumhdfsbyteswritten
          @SumHDFSBytesRead = sumhdfsbytesread
          @CountApps = countapps
        end

        def deserialize(params)
          @Queue = params['Queue']
          @User = params['User']
          @ApplicationType = params['ApplicationType']
          @SumMemorySeconds = params['SumMemorySeconds']
          @SumVCoreSeconds = params['SumVCoreSeconds']
          @SumHDFSBytesWritten = params['SumHDFSBytesWritten']
          @SumHDFSBytesRead = params['SumHDFSBytesRead']
          @CountApps = params['CountApps']
        end
      end

      # 通用的参数
      class Arg < TencentCloud::Common::AbstractModel
        # @param Key: key
        # @type Key: String
        # @param Values: 值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Key, :Values

        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # AttachDisks请求参数结构体
      class AttachDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: EMR集群实例ID
        # @type InstanceId: String
        # @param DiskIds: 需要挂载的云盘ID
        # @type DiskIds: Array
        # @param AlignType: 挂载模式，取值范围：
        # AUTO_RENEW：自动续费
        # ALIGN_DEADLINE：自动对其到期时间
        # @type AlignType: String
        # @param CvmInstanceIds: 需要挂载的cvm节点id列表
        # @type CvmInstanceIds: Array
        # @param CreateDisk: 是否是新购云盘进行挂载
        # @type CreateDisk: Boolean
        # @param DiskSpec: 新购云盘规格
        # @type DiskSpec: :class:`Tencentcloud::Emr.v20190103.models.NodeSpecDiskV2`
        # @param DeleteWithInstance: 可选参数，不传该参数则仅执行挂载操作。传入True时，会在挂载成功后将云硬盘设置为随云主机销毁模式，仅对按量计费云硬盘有效。
        # @type DeleteWithInstance: Boolean
        # @param SelectiveConfServices: 新挂磁盘时可支持配置的服务名称列表
        # @type SelectiveConfServices: Array
        # @param ChargeType: 磁盘计费类型（1包月、3包销）
        # @type ChargeType: Integer
        # @param UnderWriteDuration: 磁盘包销购买时长（仅支持12、24、36、48、60）
        # @type UnderWriteDuration: Integer

        attr_accessor :InstanceId, :DiskIds, :AlignType, :CvmInstanceIds, :CreateDisk, :DiskSpec, :DeleteWithInstance, :SelectiveConfServices, :ChargeType, :UnderWriteDuration

        def initialize(instanceid=nil, diskids=nil, aligntype=nil, cvminstanceids=nil, createdisk=nil, diskspec=nil, deletewithinstance=nil, selectiveconfservices=nil, chargetype=nil, underwriteduration=nil)
          @InstanceId = instanceid
          @DiskIds = diskids
          @AlignType = aligntype
          @CvmInstanceIds = cvminstanceids
          @CreateDisk = createdisk
          @DiskSpec = diskspec
          @DeleteWithInstance = deletewithinstance
          @SelectiveConfServices = selectiveconfservices
          @ChargeType = chargetype
          @UnderWriteDuration = underwriteduration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiskIds = params['DiskIds']
          @AlignType = params['AlignType']
          @CvmInstanceIds = params['CvmInstanceIds']
          @CreateDisk = params['CreateDisk']
          unless params['DiskSpec'].nil?
            @DiskSpec = NodeSpecDiskV2.new
            @DiskSpec.deserialize(params['DiskSpec'])
          end
          @DeleteWithInstance = params['DeleteWithInstance']
          @SelectiveConfServices = params['SelectiveConfServices']
          @ChargeType = params['ChargeType']
          @UnderWriteDuration = params['UnderWriteDuration']
        end
      end

      # AttachDisks返回参数结构体
      class AttachDisksResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 自动伸缩组高级设置
      class AutoScaleGroupAdvanceAttrs < TencentCloud::Common::AbstractModel
        # @param ComputeResourceAdvanceParams: 计算资源高级设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeResourceAdvanceParams: :class:`Tencentcloud::Emr.v20190103.models.ComputeResourceAdvanceParams`

        attr_accessor :ComputeResourceAdvanceParams

        def initialize(computeresourceadvanceparams=nil)
          @ComputeResourceAdvanceParams = computeresourceadvanceparams
        end

        def deserialize(params)
          unless params['ComputeResourceAdvanceParams'].nil?
            @ComputeResourceAdvanceParams = ComputeResourceAdvanceParams.new
            @ComputeResourceAdvanceParams.deserialize(params['ComputeResourceAdvanceParams'])
          end
        end
      end

      # 弹性扩缩容记录
      class AutoScaleRecord < TencentCloud::Common::AbstractModel
        # @param StrategyName: 扩缩容规则名。
        # @type StrategyName: String
        # @param ScaleAction: "SCALE_OUT"和"SCALE_IN"，分别表示扩容和缩容。
        # @type ScaleAction: String
        # @param ActionStatus: 取值为"SUCCESS","FAILED","PART_SUCCESS","IN_PROCESS"，分别表示成功、失败、部分成功和流程中。
        # @type ActionStatus: String
        # @param ActionTime: 流程触发时间。
        # @type ActionTime: String
        # @param ScaleInfo: 扩缩容相关描述信息。
        # @type ScaleInfo: String
        # @param ExpectScaleNum: 只在ScaleAction为SCALE_OUT时有效。
        # @type ExpectScaleNum: Integer
        # @param EndTime: 流程结束时间。
        # @type EndTime: String
        # @param StrategyType: 策略类型，按负载或者按时间，1表示负载伸缩，2表示时间伸缩
        # @type StrategyType: Integer
        # @param SpecInfo: 扩容时所使用规格信息。
        # @type SpecInfo: String
        # @param CompensateFlag: 补偿扩容，0表示不开启，1表示开启
        # @type CompensateFlag: Integer
        # @param CompensateCount: 补偿次数
        # @type CompensateCount: Integer
        # @param RetryCount: 重试次数
        # @type RetryCount: Integer
        # @param RetryInfo: 重试信息
        # @type RetryInfo: String
        # @param RetryEnReason: 重试英文描述
        # @type RetryEnReason: String
        # @param RetryReason: 重试描述
        # @type RetryReason: String

        attr_accessor :StrategyName, :ScaleAction, :ActionStatus, :ActionTime, :ScaleInfo, :ExpectScaleNum, :EndTime, :StrategyType, :SpecInfo, :CompensateFlag, :CompensateCount, :RetryCount, :RetryInfo, :RetryEnReason, :RetryReason

        def initialize(strategyname=nil, scaleaction=nil, actionstatus=nil, actiontime=nil, scaleinfo=nil, expectscalenum=nil, endtime=nil, strategytype=nil, specinfo=nil, compensateflag=nil, compensatecount=nil, retrycount=nil, retryinfo=nil, retryenreason=nil, retryreason=nil)
          @StrategyName = strategyname
          @ScaleAction = scaleaction
          @ActionStatus = actionstatus
          @ActionTime = actiontime
          @ScaleInfo = scaleinfo
          @ExpectScaleNum = expectscalenum
          @EndTime = endtime
          @StrategyType = strategytype
          @SpecInfo = specinfo
          @CompensateFlag = compensateflag
          @CompensateCount = compensatecount
          @RetryCount = retrycount
          @RetryInfo = retryinfo
          @RetryEnReason = retryenreason
          @RetryReason = retryreason
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
          @ScaleAction = params['ScaleAction']
          @ActionStatus = params['ActionStatus']
          @ActionTime = params['ActionTime']
          @ScaleInfo = params['ScaleInfo']
          @ExpectScaleNum = params['ExpectScaleNum']
          @EndTime = params['EndTime']
          @StrategyType = params['StrategyType']
          @SpecInfo = params['SpecInfo']
          @CompensateFlag = params['CompensateFlag']
          @CompensateCount = params['CompensateCount']
          @RetryCount = params['RetryCount']
          @RetryInfo = params['RetryInfo']
          @RetryEnReason = params['RetryEnReason']
          @RetryReason = params['RetryReason']
        end
      end

      # 弹性扩缩容规格配置
      class AutoScaleResourceConf < TencentCloud::Common::AbstractModel
        # @param Id: 配置ID。
        # @type Id: Integer
        # @param ClusterId: 集群实例ID。
        # @type ClusterId: Integer
        # @param ScaleLowerBound: 自动扩缩容保留最小实例数。
        # @type ScaleLowerBound: Integer
        # @param ScaleUpperBound: 自动扩缩容最大实例数。
        # @type ScaleUpperBound: Integer
        # @param StrategyType: 扩容规则类型，1为按负载指标扩容规则，2为按时间扩容规则
        # @type StrategyType: Integer
        # @param NextTimeCanScale: 下次可扩容时间。
        # @type NextTimeCanScale: Integer
        # @param GraceDownFlag: 优雅缩容开关
        # @type GraceDownFlag: Boolean
        # @param HardwareType: "CVM"表示规格全部使用CVM相关类型，"POD"表示规格使用容器相关类型,默认为"CVM"。
        # @type HardwareType: String
        # @param PayMode: "POSTPAY"表示只使用按量计费，"SPOT_FIRST"表示竞价实例优先，只有HardwareType为"HOST"时支持竞价实例优先，"POD"只支持纯按量计费。
        # @type PayMode: String
        # @param PostPayPercentMin: 竞价实例优先的场景下，按量计费资源数量的最低百分比，整数
        # @type PostPayPercentMin: Integer
        # @param ChangeToPod: 预设资源类型为HOST时，支持勾选“资源不足时切换POD”；支持取消勾选；0表示默认不勾选（0），1表示勾选
        # @type ChangeToPod: Integer
        # @param GroupName: 伸缩组名
        # @type GroupName: String
        # @param YarnNodeLabel: 标签
        # @type YarnNodeLabel: String
        # @param WarehouseName: 对应的计算组
        # @type WarehouseName: String
        # @param GroupStatus: 伸缩组状态
        # @type GroupStatus: Integer
        # @param Parallel: 并行伸缩 0关闭；1开启
        # @type Parallel: Integer
        # @param EnableMNode: 是否支持MNode
        # @type EnableMNode: Integer
        # @param ExtraAdvanceAttrs: 伸缩组更多设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAdvanceAttrs: :class:`Tencentcloud::Emr.v20190103.models.AutoScaleGroupAdvanceAttrs`

        attr_accessor :Id, :ClusterId, :ScaleLowerBound, :ScaleUpperBound, :StrategyType, :NextTimeCanScale, :GraceDownFlag, :HardwareType, :PayMode, :PostPayPercentMin, :ChangeToPod, :GroupName, :YarnNodeLabel, :WarehouseName, :GroupStatus, :Parallel, :EnableMNode, :ExtraAdvanceAttrs

        def initialize(id=nil, clusterid=nil, scalelowerbound=nil, scaleupperbound=nil, strategytype=nil, nexttimecanscale=nil, gracedownflag=nil, hardwaretype=nil, paymode=nil, postpaypercentmin=nil, changetopod=nil, groupname=nil, yarnnodelabel=nil, warehousename=nil, groupstatus=nil, parallel=nil, enablemnode=nil, extraadvanceattrs=nil)
          @Id = id
          @ClusterId = clusterid
          @ScaleLowerBound = scalelowerbound
          @ScaleUpperBound = scaleupperbound
          @StrategyType = strategytype
          @NextTimeCanScale = nexttimecanscale
          @GraceDownFlag = gracedownflag
          @HardwareType = hardwaretype
          @PayMode = paymode
          @PostPayPercentMin = postpaypercentmin
          @ChangeToPod = changetopod
          @GroupName = groupname
          @YarnNodeLabel = yarnnodelabel
          @WarehouseName = warehousename
          @GroupStatus = groupstatus
          @Parallel = parallel
          @EnableMNode = enablemnode
          @ExtraAdvanceAttrs = extraadvanceattrs
        end

        def deserialize(params)
          @Id = params['Id']
          @ClusterId = params['ClusterId']
          @ScaleLowerBound = params['ScaleLowerBound']
          @ScaleUpperBound = params['ScaleUpperBound']
          @StrategyType = params['StrategyType']
          @NextTimeCanScale = params['NextTimeCanScale']
          @GraceDownFlag = params['GraceDownFlag']
          @HardwareType = params['HardwareType']
          @PayMode = params['PayMode']
          @PostPayPercentMin = params['PostPayPercentMin']
          @ChangeToPod = params['ChangeToPod']
          @GroupName = params['GroupName']
          @YarnNodeLabel = params['YarnNodeLabel']
          @WarehouseName = params['WarehouseName']
          @GroupStatus = params['GroupStatus']
          @Parallel = params['Parallel']
          @EnableMNode = params['EnableMNode']
          unless params['ExtraAdvanceAttrs'].nil?
            @ExtraAdvanceAttrs = AutoScaleGroupAdvanceAttrs.new
            @ExtraAdvanceAttrs.deserialize(params['ExtraAdvanceAttrs'])
          end
        end
      end

      # 引导脚本
      class BootstrapAction < TencentCloud::Common::AbstractModel
        # @param Path: 脚本位置，支持cos上的文件，且只支持https协议。
        # @type Path: String
        # @param WhenRun: 执行时间。
        # resourceAfter 表示在机器资源申请成功后执行。
        # clusterBefore 表示在集群初始化前执行。
        # clusterAfter 表示在集群初始化后执行。
        # @type WhenRun: String
        # @param Args: 脚本参数
        # @type Args: Array

        attr_accessor :Path, :WhenRun, :Args

        def initialize(path=nil, whenrun=nil, args=nil)
          @Path = path
          @WhenRun = whenrun
          @Args = args
        end

        def deserialize(params)
          @Path = params['Path']
          @WhenRun = params['WhenRun']
          @Args = params['Args']
        end
      end

      # CBS实例信息
      class CBSInstance < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID
        # @type DiskId: String
        # @param DiskUsage: 云硬盘类型
        # @type DiskUsage: String
        # @param DiskName: 云硬盘名称
        # @type DiskName: String
        # @param DiskSize: 云硬盘大小
        # @type DiskSize: Integer
        # @param DiskType: 云盘介质类型
        # @type DiskType: String
        # @param DeleteWithInstance: 是否跟随实例删除
        # @type DeleteWithInstance: Boolean
        # @param DiskChargeType: 云硬盘收费类型
        # @type DiskChargeType: String
        # @param DiskState: 云硬盘运行状态
        # @type DiskState: String
        # @param RenewFlag: 是否自动续费
        # @type RenewFlag: String
        # @param DeadlineTime: 到期时间
        # @type DeadlineTime: String
        # @param Attached: 云盘是否挂载到云主机上
        # @type Attached: Boolean
        # @param DifferDaysOfDeadline: 当前时间距离盘到期的天数
        # @type DifferDaysOfDeadline: Integer
        # @param InstanceIdList: 该云盘当前被挂载到的CVM实例InstanceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIdList: Array
        # @param InstanceId: 云硬盘挂载的云主机ID
        # @type InstanceId: String
        # @param Shareable: 云盘是否为共享型云盘。
        # @type Shareable: Boolean
        # @param EmrResourceId: emr节点ID
        # @type EmrResourceId: String
        # @param UnderwriteExpiredTime: 包销到期时间
        # @type UnderwriteExpiredTime: String
        # @param Tags: 标签
        # @type Tags: Array
        # @param ThroughputPerformance: 云硬盘额外性能值，单位：MB/s
        # @type ThroughputPerformance: Integer

        attr_accessor :DiskId, :DiskUsage, :DiskName, :DiskSize, :DiskType, :DeleteWithInstance, :DiskChargeType, :DiskState, :RenewFlag, :DeadlineTime, :Attached, :DifferDaysOfDeadline, :InstanceIdList, :InstanceId, :Shareable, :EmrResourceId, :UnderwriteExpiredTime, :Tags, :ThroughputPerformance

        def initialize(diskid=nil, diskusage=nil, diskname=nil, disksize=nil, disktype=nil, deletewithinstance=nil, diskchargetype=nil, diskstate=nil, renewflag=nil, deadlinetime=nil, attached=nil, differdaysofdeadline=nil, instanceidlist=nil, instanceid=nil, shareable=nil, emrresourceid=nil, underwriteexpiredtime=nil, tags=nil, throughputperformance=nil)
          @DiskId = diskid
          @DiskUsage = diskusage
          @DiskName = diskname
          @DiskSize = disksize
          @DiskType = disktype
          @DeleteWithInstance = deletewithinstance
          @DiskChargeType = diskchargetype
          @DiskState = diskstate
          @RenewFlag = renewflag
          @DeadlineTime = deadlinetime
          @Attached = attached
          @DifferDaysOfDeadline = differdaysofdeadline
          @InstanceIdList = instanceidlist
          @InstanceId = instanceid
          @Shareable = shareable
          @EmrResourceId = emrresourceid
          @UnderwriteExpiredTime = underwriteexpiredtime
          @Tags = tags
          @ThroughputPerformance = throughputperformance
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @DiskUsage = params['DiskUsage']
          @DiskName = params['DiskName']
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          @DeleteWithInstance = params['DeleteWithInstance']
          @DiskChargeType = params['DiskChargeType']
          @DiskState = params['DiskState']
          @RenewFlag = params['RenewFlag']
          @DeadlineTime = params['DeadlineTime']
          @Attached = params['Attached']
          @DifferDaysOfDeadline = params['DifferDaysOfDeadline']
          @InstanceIdList = params['InstanceIdList']
          @InstanceId = params['InstanceId']
          @Shareable = params['Shareable']
          @EmrResourceId = params['EmrResourceId']
          @UnderwriteExpiredTime = params['UnderwriteExpiredTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @ThroughputPerformance = params['ThroughputPerformance']
        end
      end

      # 容器集群Pod服务CLB设置
      class CLBSetting < TencentCloud::Common::AbstractModel
        # @param CLBType: CLB类型，PUBLIC_IP表示支持公网CLB和INTERNAL_IP表示支持内网CLB字段
        # @type CLBType: String
        # @param VPCSettings: Vpc和子网信息设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`

        attr_accessor :CLBType, :VPCSettings

        def initialize(clbtype=nil, vpcsettings=nil)
          @CLBType = clbtype
          @VPCSettings = vpcsettings
        end

        def deserialize(params)
          @CLBType = params['CLBType']
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
        end
      end

      # COS 相关配置
      class COSSettings < TencentCloud::Common::AbstractModel
        # @param CosSecretId: COS SecretId
        # @type CosSecretId: String
        # @param CosSecretKey: COS SecrectKey
        # @type CosSecretKey: String
        # @param LogOnCosPath: 日志存储在COS上的路径
        # @type LogOnCosPath: String

        attr_accessor :CosSecretId, :CosSecretKey, :LogOnCosPath

        def initialize(cossecretid=nil, cossecretkey=nil, logoncospath=nil)
          @CosSecretId = cossecretid
          @CosSecretKey = cossecretkey
          @LogOnCosPath = logoncospath
        end

        def deserialize(params)
          @CosSecretId = params['CosSecretId']
          @CosSecretKey = params['CosSecretKey']
          @LogOnCosPath = params['LogOnCosPath']
        end
      end

      # 资源调度-容量调度器的全局设置
      class CapacityGlobalConfig < TencentCloud::Common::AbstractModel
        # @param EnableLabel: 是否开启了标签调度
        # @type EnableLabel: Boolean
        # @param LabelDir: 如果开启了标签调度，标签信息存放的路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelDir: String
        # @param QueueMappingOverride: 是否覆盖用户指定队列，为true表示覆盖。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueMappingOverride: Boolean
        # @param DefaultSettings: 高级设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultSettings: Array

        attr_accessor :EnableLabel, :LabelDir, :QueueMappingOverride, :DefaultSettings

        def initialize(enablelabel=nil, labeldir=nil, queuemappingoverride=nil, defaultsettings=nil)
          @EnableLabel = enablelabel
          @LabelDir = labeldir
          @QueueMappingOverride = queuemappingoverride
          @DefaultSettings = defaultsettings
        end

        def deserialize(params)
          @EnableLabel = params['EnableLabel']
          @LabelDir = params['LabelDir']
          @QueueMappingOverride = params['QueueMappingOverride']
          unless params['DefaultSettings'].nil?
            @DefaultSettings = []
            params['DefaultSettings'].each do |i|
              defaultsetting_tmp = DefaultSetting.new
              defaultsetting_tmp.deserialize(i)
              @DefaultSettings << defaultsetting_tmp
            end
          end
        end
      end

      # 出参
      class CdbInfo < TencentCloud::Common::AbstractModel
        # @param InstanceName: 数据库实例
        # @type InstanceName: String
        # @param Ip: 数据库IP
        # @type Ip: String
        # @param Port: 数据库端口
        # @type Port: Integer
        # @param MemSize: 数据库内存规格
        # @type MemSize: Integer
        # @param Volume: 数据库磁盘规格
        # @type Volume: Integer
        # @param Service: 服务标识
        # @type Service: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param ApplyTime: 申请时间
        # @type ApplyTime: String
        # @param PayType: 付费类型
        # @type PayType: Integer
        # @param ExpireFlag: 过期标识
        # @type ExpireFlag: Boolean
        # @param Status: 数据库状态
        # @type Status: Integer
        # @param IsAutoRenew: 续费标识
        # @type IsAutoRenew: Integer
        # @param SerialNo: 数据库字符串
        # @type SerialNo: String
        # @param ZoneId: ZoneId
        # @type ZoneId: Integer
        # @param RegionId: RegionId
        # @type RegionId: Integer

        attr_accessor :InstanceName, :Ip, :Port, :MemSize, :Volume, :Service, :ExpireTime, :ApplyTime, :PayType, :ExpireFlag, :Status, :IsAutoRenew, :SerialNo, :ZoneId, :RegionId

        def initialize(instancename=nil, ip=nil, port=nil, memsize=nil, volume=nil, service=nil, expiretime=nil, applytime=nil, paytype=nil, expireflag=nil, status=nil, isautorenew=nil, serialno=nil, zoneid=nil, regionid=nil)
          @InstanceName = instancename
          @Ip = ip
          @Port = port
          @MemSize = memsize
          @Volume = volume
          @Service = service
          @ExpireTime = expiretime
          @ApplyTime = applytime
          @PayType = paytype
          @ExpireFlag = expireflag
          @Status = status
          @IsAutoRenew = isautorenew
          @SerialNo = serialno
          @ZoneId = zoneid
          @RegionId = regionid
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Ip = params['Ip']
          @Port = params['Port']
          @MemSize = params['MemSize']
          @Volume = params['Volume']
          @Service = params['Service']
          @ExpireTime = params['ExpireTime']
          @ApplyTime = params['ApplyTime']
          @PayType = params['PayType']
          @ExpireFlag = params['ExpireFlag']
          @Status = params['Status']
          @IsAutoRenew = params['IsAutoRenew']
          @SerialNo = params['SerialNo']
          @ZoneId = params['ZoneId']
          @RegionId = params['RegionId']
        end
      end

      # 容器集群Pod请求资源信息
      class CloudResource < TencentCloud::Common::AbstractModel
        # @param ComponentName: 组件角色名
        # @type ComponentName: String
        # @param PodNumber: pod请求数量
        # @type PodNumber: Integer
        # @param LimitCpu: Cpu请求数量最大值
        # @type LimitCpu: Integer
        # @param LimitMemory: 内存请求数量最大值
        # @type LimitMemory: Integer
        # @param Service: 服务名称，如HIVE
        # @type Service: String
        # @param VolumeDir: 数据卷目录设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeDir: :class:`Tencentcloud::Emr.v20190103.models.VolumeSetting`
        # @param ExternalAccess: 组件外部访问设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalAccess: :class:`Tencentcloud::Emr.v20190103.models.ExternalAccess`
        # @param Affinity: 节点亲和性设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Affinity: :class:`Tencentcloud::Emr.v20190103.models.NodeAffinity`
        # @param Disks: 所选数据盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disks: Array

        attr_accessor :ComponentName, :PodNumber, :LimitCpu, :LimitMemory, :Service, :VolumeDir, :ExternalAccess, :Affinity, :Disks

        def initialize(componentname=nil, podnumber=nil, limitcpu=nil, limitmemory=nil, service=nil, volumedir=nil, externalaccess=nil, affinity=nil, disks=nil)
          @ComponentName = componentname
          @PodNumber = podnumber
          @LimitCpu = limitcpu
          @LimitMemory = limitmemory
          @Service = service
          @VolumeDir = volumedir
          @ExternalAccess = externalaccess
          @Affinity = affinity
          @Disks = disks
        end

        def deserialize(params)
          @ComponentName = params['ComponentName']
          @PodNumber = params['PodNumber']
          @LimitCpu = params['LimitCpu']
          @LimitMemory = params['LimitMemory']
          @Service = params['Service']
          unless params['VolumeDir'].nil?
            @VolumeDir = VolumeSetting.new
            @VolumeDir.deserialize(params['VolumeDir'])
          end
          unless params['ExternalAccess'].nil?
            @ExternalAccess = ExternalAccess.new
            @ExternalAccess.deserialize(params['ExternalAccess'])
          end
          unless params['Affinity'].nil?
            @Affinity = NodeAffinity.new
            @Affinity.deserialize(params['Affinity'])
          end
          unless params['Disks'].nil?
            @Disks = []
            params['Disks'].each do |i|
              disk_tmp = Disk.new
              disk_tmp.deserialize(i)
              @Disks << disk_tmp
            end
          end
        end
      end

      # 当前集群共用组件与集群对应关系
      class ClusterExternalServiceInfo < TencentCloud::Common::AbstractModel
        # @param DependType: 依赖关系，0:被其他集群依赖，1:依赖其他集群
        # @type DependType: Integer
        # @param Service: 共用组件
        # @type Service: String
        # @param ClusterId: 共用集群
        # @type ClusterId: String
        # @param ClusterStatus: 共用集群状态
        # @type ClusterStatus: Integer

        attr_accessor :DependType, :Service, :ClusterId, :ClusterStatus

        def initialize(dependtype=nil, service=nil, clusterid=nil, clusterstatus=nil)
          @DependType = dependtype
          @Service = service
          @ClusterId = clusterid
          @ClusterStatus = clusterstatus
        end

        def deserialize(params)
          @DependType = params['DependType']
          @Service = params['Service']
          @ClusterId = params['ClusterId']
          @ClusterStatus = params['ClusterStatus']
        end
      end

      # 集群id与流程id的mapping
      class ClusterIDToFlowID < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param FlowId: 流程id
        # @type FlowId: Integer

        attr_accessor :ClusterId, :FlowId

        def initialize(clusterid=nil, flowid=nil)
          @ClusterId = clusterid
          @FlowId = flowid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @FlowId = params['FlowId']
        end
      end

      # 集群实例信息
      class ClusterInstancesInfo < TencentCloud::Common::AbstractModel
        # @param Id: ID号
        # @type Id: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Ftitle: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ftitle: String
        # @param ClusterName: 集群名
        # @type ClusterName: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param ZoneId: 地区ID
        # @type ZoneId: Integer
        # @param AppId: 用户APPID
        # @type AppId: Integer
        # @param Uin: 用户UIN
        # @type Uin: String
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param VpcId: 集群VPCID
        # @type VpcId: Integer
        # @param SubnetId: 子网ID
        # @type SubnetId: Integer
        # @param Status: 实例的状态码。取值范围：
        # <li>2：表示集群运行中。</li>
        # <li>3：表示集群创建中。</li>
        # <li>4：表示集群扩容中。</li>
        # <li>5：表示集群增加router节点中。</li>
        # <li>6：表示集群安装组件中。</li>
        # <li>7：表示集群执行命令中。</li>
        # <li>8：表示重启服务中。</li>
        # <li>9：表示进入维护中。</li>
        # <li>10：表示服务暂停中。</li>
        # <li>11：表示退出维护中。</li>
        # <li>12：表示退出暂停中。</li>
        # <li>13：表示配置下发中。</li>
        # <li>14：表示销毁集群中。</li>
        # <li>15：表示销毁core节点中。</li>
        # <li>16：销毁task节点中。</li>
        # <li>17：表示销毁router节点中。</li>
        # <li>18：表示更改webproxy密码中。</li>
        # <li>19：表示集群隔离中。</li>
        # <li>20：表示集群冲正中。</li>
        # <li>21：表示集群回收中。</li>
        # <li>22：表示变配等待中。</li>
        # <li>23：表示集群已隔离。</li>
        # <li>24：表示缩容节点中。</li>
        # <li>33：表示集群等待退费中。</li>
        # <li>34：表示集群已退费。</li>
        # <li>301：表示创建失败。</li>
        # <li>302：表示扩容失败。</li>
        # @type Status: Integer
        # @param AddTime: 添加时间
        # @type AddTime: String
        # @param RunTime: 已经运行时间
        # @type RunTime: String
        # @param Config: 集群产品配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Emr.v20190103.models.EmrProductConfigOutter`
        # @param MasterIp: 主节点外网IP
        # @type MasterIp: String
        # @param EmrVersion: EMR版本
        # @type EmrVersion: String
        # @param ChargeType: 收费类型
        # @type ChargeType: Integer
        # @param TradeVersion: 交易版本
        # @type TradeVersion: Integer
        # @param ResourceOrderId: 资源订单ID
        # @type ResourceOrderId: Integer
        # @param IsTradeCluster: 是否计费集群
        # @type IsTradeCluster: Integer
        # @param AlarmInfo: 集群错误状态告警信息
        # @type AlarmInfo: String
        # @param IsWoodpeckerCluster: 是否采用新架构
        # @type IsWoodpeckerCluster: Integer
        # @param MetaDb: 元数据库信息
        # @type MetaDb: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HiveMetaDb: Hive元数据信息
        # @type HiveMetaDb: String
        # @param ServiceClass: 集群类型:EMR,CLICKHOUSE,DRUID
        # @type ServiceClass: String
        # @param AliasInfo: 集群所有节点的别名序列化
        # @type AliasInfo: String
        # @param ProductId: 集群版本Id
        # @type ProductId: Integer
        # @param Zone: 地区ID
        # @type Zone: String
        # @param SceneName: 场景名称
        # @type SceneName: String
        # @param SceneServiceClass: 场景化集群类型
        # @type SceneServiceClass: String
        # @param SceneEmrVersion: 场景化EMR版本
        # @type SceneEmrVersion: String
        # @param DisplayName: 场景化集群类型
        # @type DisplayName: String
        # @param VpcName: vpc name
        # @type VpcName: String
        # @param SubnetName: subnet name
        # @type SubnetName: String
        # @param ClusterExternalServiceInfo: 集群依赖关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterExternalServiceInfo: Array
        # @param UniqVpcId: 集群vpcid 字符串类型
        # @type UniqVpcId: String
        # @param UniqSubnetId: 子网id 字符串类型
        # @type UniqSubnetId: String
        # @param TopologyInfoList: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopologyInfoList: Array
        # @param IsMultiZoneCluster: 是否是跨AZ集群
        # @type IsMultiZoneCluster: Boolean
        # @param IsCvmReplace: 是否开通异常节点自动补偿
        # @type IsCvmReplace: Boolean
        # @param ClusterTitle: 标题
        # @type ClusterTitle: String
        # @param ConfigDetail: 集群产品配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigDetail: :class:`Tencentcloud::Emr.v20190103.models.EmrProductConfigDetail`
        # @param BindFileSystemNum: 集群绑定的文件系统数
        # @type BindFileSystemNum: Integer
        # @param ClusterRelationInfoList: rss集群的绑定列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterRelationInfoList: Array
        # @param RedisId: Redis信息
        # @type RedisId: String

        attr_accessor :Id, :ClusterId, :Ftitle, :ClusterName, :RegionId, :ZoneId, :AppId, :Uin, :ProjectId, :VpcId, :SubnetId, :Status, :AddTime, :RunTime, :Config, :MasterIp, :EmrVersion, :ChargeType, :TradeVersion, :ResourceOrderId, :IsTradeCluster, :AlarmInfo, :IsWoodpeckerCluster, :MetaDb, :Tags, :HiveMetaDb, :ServiceClass, :AliasInfo, :ProductId, :Zone, :SceneName, :SceneServiceClass, :SceneEmrVersion, :DisplayName, :VpcName, :SubnetName, :ClusterExternalServiceInfo, :UniqVpcId, :UniqSubnetId, :TopologyInfoList, :IsMultiZoneCluster, :IsCvmReplace, :ClusterTitle, :ConfigDetail, :BindFileSystemNum, :ClusterRelationInfoList, :RedisId
        extend Gem::Deprecate
        deprecate :Ftitle, :none, 2025, 11
        deprecate :Ftitle=, :none, 2025, 11
        deprecate :Config, :none, 2025, 11
        deprecate :Config=, :none, 2025, 11

        def initialize(id=nil, clusterid=nil, ftitle=nil, clustername=nil, regionid=nil, zoneid=nil, appid=nil, uin=nil, projectid=nil, vpcid=nil, subnetid=nil, status=nil, addtime=nil, runtime=nil, config=nil, masterip=nil, emrversion=nil, chargetype=nil, tradeversion=nil, resourceorderid=nil, istradecluster=nil, alarminfo=nil, iswoodpeckercluster=nil, metadb=nil, tags=nil, hivemetadb=nil, serviceclass=nil, aliasinfo=nil, productid=nil, zone=nil, scenename=nil, sceneserviceclass=nil, sceneemrversion=nil, displayname=nil, vpcname=nil, subnetname=nil, clusterexternalserviceinfo=nil, uniqvpcid=nil, uniqsubnetid=nil, topologyinfolist=nil, ismultizonecluster=nil, iscvmreplace=nil, clustertitle=nil, configdetail=nil, bindfilesystemnum=nil, clusterrelationinfolist=nil, redisid=nil)
          @Id = id
          @ClusterId = clusterid
          @Ftitle = ftitle
          @ClusterName = clustername
          @RegionId = regionid
          @ZoneId = zoneid
          @AppId = appid
          @Uin = uin
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @AddTime = addtime
          @RunTime = runtime
          @Config = config
          @MasterIp = masterip
          @EmrVersion = emrversion
          @ChargeType = chargetype
          @TradeVersion = tradeversion
          @ResourceOrderId = resourceorderid
          @IsTradeCluster = istradecluster
          @AlarmInfo = alarminfo
          @IsWoodpeckerCluster = iswoodpeckercluster
          @MetaDb = metadb
          @Tags = tags
          @HiveMetaDb = hivemetadb
          @ServiceClass = serviceclass
          @AliasInfo = aliasinfo
          @ProductId = productid
          @Zone = zone
          @SceneName = scenename
          @SceneServiceClass = sceneserviceclass
          @SceneEmrVersion = sceneemrversion
          @DisplayName = displayname
          @VpcName = vpcname
          @SubnetName = subnetname
          @ClusterExternalServiceInfo = clusterexternalserviceinfo
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @TopologyInfoList = topologyinfolist
          @IsMultiZoneCluster = ismultizonecluster
          @IsCvmReplace = iscvmreplace
          @ClusterTitle = clustertitle
          @ConfigDetail = configdetail
          @BindFileSystemNum = bindfilesystemnum
          @ClusterRelationInfoList = clusterrelationinfolist
          @RedisId = redisid
        end

        def deserialize(params)
          @Id = params['Id']
          @ClusterId = params['ClusterId']
          @Ftitle = params['Ftitle']
          @ClusterName = params['ClusterName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @AddTime = params['AddTime']
          @RunTime = params['RunTime']
          unless params['Config'].nil?
            @Config = EmrProductConfigOutter.new
            @Config.deserialize(params['Config'])
          end
          @MasterIp = params['MasterIp']
          @EmrVersion = params['EmrVersion']
          @ChargeType = params['ChargeType']
          @TradeVersion = params['TradeVersion']
          @ResourceOrderId = params['ResourceOrderId']
          @IsTradeCluster = params['IsTradeCluster']
          @AlarmInfo = params['AlarmInfo']
          @IsWoodpeckerCluster = params['IsWoodpeckerCluster']
          @MetaDb = params['MetaDb']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HiveMetaDb = params['HiveMetaDb']
          @ServiceClass = params['ServiceClass']
          @AliasInfo = params['AliasInfo']
          @ProductId = params['ProductId']
          @Zone = params['Zone']
          @SceneName = params['SceneName']
          @SceneServiceClass = params['SceneServiceClass']
          @SceneEmrVersion = params['SceneEmrVersion']
          @DisplayName = params['DisplayName']
          @VpcName = params['VpcName']
          @SubnetName = params['SubnetName']
          unless params['ClusterExternalServiceInfo'].nil?
            @ClusterExternalServiceInfo = []
            params['ClusterExternalServiceInfo'].each do |i|
              clusterexternalserviceinfo_tmp = ClusterExternalServiceInfo.new
              clusterexternalserviceinfo_tmp.deserialize(i)
              @ClusterExternalServiceInfo << clusterexternalserviceinfo_tmp
            end
          end
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          unless params['TopologyInfoList'].nil?
            @TopologyInfoList = []
            params['TopologyInfoList'].each do |i|
              topologyinfo_tmp = TopologyInfo.new
              topologyinfo_tmp.deserialize(i)
              @TopologyInfoList << topologyinfo_tmp
            end
          end
          @IsMultiZoneCluster = params['IsMultiZoneCluster']
          @IsCvmReplace = params['IsCvmReplace']
          @ClusterTitle = params['ClusterTitle']
          unless params['ConfigDetail'].nil?
            @ConfigDetail = EmrProductConfigDetail.new
            @ConfigDetail.deserialize(params['ConfigDetail'])
          end
          @BindFileSystemNum = params['BindFileSystemNum']
          unless params['ClusterRelationInfoList'].nil?
            @ClusterRelationInfoList = []
            params['ClusterRelationInfoList'].each do |i|
              clusterrelationmeta_tmp = ClusterRelationMeta.new
              clusterrelationmeta_tmp.deserialize(i)
              @ClusterRelationInfoList << clusterrelationmeta_tmp
            end
          end
          @RedisId = params['RedisId']
        end
      end

      # 集群间绑定使用信息
      class ClusterRelationMeta < TencentCloud::Common::AbstractModel
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterIdList: 集群id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIdList: Array

        attr_accessor :ClusterType, :ClusterIdList

        def initialize(clustertype=nil, clusteridlist=nil)
          @ClusterType = clustertype
          @ClusterIdList = clusteridlist
        end

        def deserialize(params)
          @ClusterType = params['ClusterType']
          @ClusterIdList = params['ClusterIdList']
        end
      end

      # 集群配置。
      class ClusterSetting < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 付费方式。
        # PREPAID 包年包月。
        # POSTPAID_BY_HOUR 按量计费，默认方式。
        # @type InstanceChargeType: String
        # @param SupportHA: 是否为HA集群。
        # @type SupportHA: Boolean
        # @param SecurityGroupIds: 集群所使用的安全组，目前仅支持一个。
        # @type SecurityGroupIds: Array
        # @param Placement: 实例位置。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param VPCSettings: 实例所在VPC。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param LoginSettings: 实例登录配置。
        # @type LoginSettings: :class:`Tencentcloud::Emr.v20190103.models.LoginSettings`
        # @param TagSpecification: 实例标签，示例：["{\"TagKey\":\"test-tag1\",\"TagValue\":\"001\"}","{\"TagKey\":\"test-tag2\",\"TagValue\":\"002\"}"]。
        # @type TagSpecification: Array
        # @param MetaDB: 元数据库配置。
        # @type MetaDB: :class:`Tencentcloud::Emr.v20190103.models.MetaDbInfo`
        # @param ResourceSpec: 实例硬件配置。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResourceSpec`
        # @param PublicIpAssigned: 是否申请公网IP，默认为false。
        # @type PublicIpAssigned: Boolean
        # @param InstanceChargePrepaid: 包年包月配置，只对包年包月集群生效。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Emr.v20190103.models.InstanceChargePrepaid`
        # @param DisasterRecoverGroupIds: 集群置放群组。
        # @type DisasterRecoverGroupIds: String
        # @param CbsEncryptFlag: 是否使用cbs加密。
        # @type CbsEncryptFlag: Boolean
        # @param RemoteTcpDefaultPort: 是否使用远程登录，默认为false。
        # @type RemoteTcpDefaultPort: Boolean

        attr_accessor :InstanceChargeType, :SupportHA, :SecurityGroupIds, :Placement, :VPCSettings, :LoginSettings, :TagSpecification, :MetaDB, :ResourceSpec, :PublicIpAssigned, :InstanceChargePrepaid, :DisasterRecoverGroupIds, :CbsEncryptFlag, :RemoteTcpDefaultPort

        def initialize(instancechargetype=nil, supportha=nil, securitygroupids=nil, placement=nil, vpcsettings=nil, loginsettings=nil, tagspecification=nil, metadb=nil, resourcespec=nil, publicipassigned=nil, instancechargeprepaid=nil, disasterrecovergroupids=nil, cbsencryptflag=nil, remotetcpdefaultport=nil)
          @InstanceChargeType = instancechargetype
          @SupportHA = supportha
          @SecurityGroupIds = securitygroupids
          @Placement = placement
          @VPCSettings = vpcsettings
          @LoginSettings = loginsettings
          @TagSpecification = tagspecification
          @MetaDB = metadb
          @ResourceSpec = resourcespec
          @PublicIpAssigned = publicipassigned
          @InstanceChargePrepaid = instancechargeprepaid
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @CbsEncryptFlag = cbsencryptflag
          @RemoteTcpDefaultPort = remotetcpdefaultport
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          @SupportHA = params['SupportHA']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @TagSpecification = params['TagSpecification']
          unless params['MetaDB'].nil?
            @MetaDB = MetaDbInfo.new
            @MetaDB.deserialize(params['MetaDB'])
          end
          unless params['ResourceSpec'].nil?
            @ResourceSpec = JobFlowResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          @PublicIpAssigned = params['PublicIpAssigned']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @CbsEncryptFlag = params['CbsEncryptFlag']
          @RemoteTcpDefaultPort = params['RemoteTcpDefaultPort']
        end
      end

      # 操作的进程范围
      class ComponentBasicRestartInfo < TencentCloud::Common::AbstractModel
        # @param ComponentName: 进程名，必填，如NameNode
        # @type ComponentName: String
        # @param IpList: 操作的IP列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpList: Array

        attr_accessor :ComponentName, :IpList

        def initialize(componentname=nil, iplist=nil)
          @ComponentName = componentname
          @IpList = iplist
        end

        def deserialize(params)
          @ComponentName = params['ComponentName']
          @IpList = params['IpList']
        end
      end

      # 计算资源高级设置
      class ComputeResourceAdvanceParams < TencentCloud::Common::AbstractModel
        # @param Labels: 节点Label数组
        # @type Labels: Array
        # @param Taints: 节点污点
        # @type Taints: Array
        # @param PreStartUserScript: base64 编码的用户脚本，在初始化节点之前执行
        # @type PreStartUserScript: String
        # @param UserScript: base64 编码的用户脚本, 此脚本会在 k8s 组件运行后执行, 需要用户保证脚本的可重入及重试逻辑, 脚本及其生成的日志文件可在节点的 /data/ccs_userscript/ 路径查看
        # @type UserScript: String

        attr_accessor :Labels, :Taints, :PreStartUserScript, :UserScript

        def initialize(labels=nil, taints=nil, prestartuserscript=nil, userscript=nil)
          @Labels = labels
          @Taints = taints
          @PreStartUserScript = prestartuserscript
          @UserScript = userscript
        end

        def deserialize(params)
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              tkelabel_tmp = TkeLabel.new
              tkelabel_tmp.deserialize(i)
              @Labels << tkelabel_tmp
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
          @PreStartUserScript = params['PreStartUserScript']
          @UserScript = params['UserScript']
        end
      end

      # 资源调度 - 队列修改信息
      class ConfigModifyInfoV2 < TencentCloud::Common::AbstractModel
        # @param OpType: 操作类型，可选值：

        # - 0：新建队列
        # - 1：编辑-全量覆盖
        # - 2：新建子队列
        # - 3：删除
        # - 4：克隆，与新建子队列的行为一样，特别的对于`fair`，可以复制子队列到新建队列
        # - 6：编辑-增量更新
        # @type OpType: Integer
        # @param Name: 队列名称，不支持修改。
        # @type Name: String
        # @param ParentId: 新建队列 传root的MyId；新建子队列 传 选中队列的 myId；克隆 要传 选中队列 parentId
        # @type ParentId: String
        # @param MyId: 编辑、删除 传选中队列的 myId。克隆只有在调度器是`fair`时才需要传，用来复制子队列到新队列。
        # @type MyId: String
        # @param BasicParams: 基础配置信息。key的取值与**DescribeYarnQueue**返回的字段一致。
        # ###### 公平调度器
        # key的取值信息如下：

        # - type，父队列，取值为 **parent** 或 **null**
        # - aclSubmitApps，提交访问控制，取值为**AclForYarnQueue类型的json串**或**null**
        # - aclAdministerApps，管理访问控制，取值为**AclForYarnQueue类型的json串**或**null**
        # - minSharePreemptionTimeout，最小共享优先权超时时间，取值为**数字字符串**或**null**
        # - fairSharePreemptionTimeout，公平份额抢占超时时间，取值为**数字字符串**或**null**
        # - fairSharePreemptionThreshold，公平份额抢占阈值，取值为**数字字符串**或**null**，其中数字的范围是（0，1]
        # - allowPreemptionFrom，抢占模式，取值为**布尔字符串**或**null**
        # - schedulingPolicy，调度策略，取值为**drf**、**fair**、**fifo**或**null**

        # ```
        # type AclForYarnQueue struct {
        # 	User  *string `json:"user"` //用户名
        # 	Group *string `json:"group"`//组名
        # }
        # ```
        # ###### 容量调度器
        # key的取值信息如下：

        # - state，队列状态，取值为**STOPPED**或**RUNNING**
        # - default-node-label-expression，默认标签表达式，取值为**标签**或**null**
        # - acl_submit_applications，提交访问控制，取值为**AclForYarnQueue类型的json串**或**null**
        # - acl_administer_queue，管理访问控制，取值为**AclForYarnQueue类型的json串**或**null**
        # - maximum-allocation-mb，分配Container最大内存数量，取值为**数字字符串**或**null**
        # - maximum-allocation-vcores，Container最大vCore数量，取值为**数字字符串**或**null**
        # ```
        # type AclForYarnQueue struct {
        # 	User  *string `json:"user"` //用户名
        # 	Group *string `json:"group"`//组名
        # }
        # ```
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicParams: :class:`Tencentcloud::Emr.v20190103.models.ItemSeq`
        # @param ConfigSetParams: 配置集信息，取值见该复杂类型的参数说明。配置集是计划模式在队列中表现，表示的是不同时间段不同的配置值，所有队列的配置集名称都一样，对于单个队列，每个配置集中的标签与参数都一样，只是参数值不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigSetParams: Array
        # @param DeleteLables: 容量调度专用，`OpType`为`6`时才生效，表示要删除这个队列中的哪些标签。优先级高于ConfigSetParams中的LabelParams。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteLables: Array

        attr_accessor :OpType, :Name, :ParentId, :MyId, :BasicParams, :ConfigSetParams, :DeleteLables

        def initialize(optype=nil, name=nil, parentid=nil, myid=nil, basicparams=nil, configsetparams=nil, deletelables=nil)
          @OpType = optype
          @Name = name
          @ParentId = parentid
          @MyId = myid
          @BasicParams = basicparams
          @ConfigSetParams = configsetparams
          @DeleteLables = deletelables
        end

        def deserialize(params)
          @OpType = params['OpType']
          @Name = params['Name']
          @ParentId = params['ParentId']
          @MyId = params['MyId']
          unless params['BasicParams'].nil?
            @BasicParams = ItemSeq.new
            @BasicParams.deserialize(params['BasicParams'])
          end
          unless params['ConfigSetParams'].nil?
            @ConfigSetParams = []
            params['ConfigSetParams'].each do |i|
              configsetinfo_tmp = ConfigSetInfo.new
              configsetinfo_tmp.deserialize(i)
              @ConfigSetParams << configsetinfo_tmp
            end
          end
          @DeleteLables = params['DeleteLables']
        end
      end

      # 资源调度-配置集信息
      class ConfigSetInfo < TencentCloud::Common::AbstractModel
        # @param ConfigSet: 配置集名称
        # @type ConfigSet: String
        # @param LabelParams: 容量调度器会使用，里面设置了标签相关的配置。key的取值与**DescribeYarnQueue**返回的字段一致。
        # key的取值信息如下：
        # - labelName，标签名称，标签管理里的标签。
        # - capacity，容量，取值为**数字字符串**
        # - maximum-capacity，最大容量，取值为**数字字符串**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelParams: Array
        # @param BasicParams: 设置配置集相关的参数。key的取值与**DescribeYarnQueue**返回的字段一致。
        # ###### 公平调度器
        # key的取值信息如下：
        # - minResources，最大资源量，取值为**YarnResource类型的json串**或**null**
        # - maxResources，最大资源量，取值为**YarnResource类型的json串**或**null**
        # - maxChildResources，能够分配给为未声明子队列的最大资源量，取值为**数字字符串**或**null**
        # - maxRunningApps，最高可同时处于运行的App数量，取值为**数字字符串**或**null**
        # - weight，权重，取值为**数字字符串**或**null**
        # - maxAMShare，App Master最大份额，取值为**数字字符串**或**null**，其中数字的范围是[0，1]或-1

        # ```
        # type YarnResource struct {
        # 	Vcores *int `json:"vcores"`
        # 	Memory *int `json:"memory"`
        # 	Type *string `json:"type"` // 取值为`percent`或`null`当值为`percent`时，表示使用的百分比，否则就是使用的绝对数值。只有maxResources、maxChildResources才可以取值为`percent`
        # }
        # ```

        # ###### 容量调度器
        # key的取值信息如下：
        # - minimum-user-limit-percent，用户最小容量，取值为**YarnResource类型的json串**或**null**，其中数字的范围是[0，100]
        # - user-limit-factor，用户资源因子，取值为**YarnResource类型的json串**或**null**
        # - maximum-applications，最大应用数Max-Applications，取值为**数字字符串**或**null**，其中数字为正整数
        # - maximum-am-resource-percent，最大AM比例，取值为**数字字符串**或**null**，其中数字的范围是[0，1]或-1
        # - default-application-priority，资源池优先级，取值为**数字字符串**或**null**，其中数字为正整数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicParams: Array

        attr_accessor :ConfigSet, :LabelParams, :BasicParams

        def initialize(configset=nil, labelparams=nil, basicparams=nil)
          @ConfigSet = configset
          @LabelParams = labelparams
          @BasicParams = basicparams
        end

        def deserialize(params)
          @ConfigSet = params['ConfigSet']
          unless params['LabelParams'].nil?
            @LabelParams = []
            params['LabelParams'].each do |i|
              itemseq_tmp = ItemSeq.new
              itemseq_tmp.deserialize(i)
              @LabelParams << itemseq_tmp
            end
          end
          unless params['BasicParams'].nil?
            @BasicParams = []
            params['BasicParams'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @BasicParams << item_tmp
            end
          end
        end
      end

      # 自定义配置参数
      class Configuration < TencentCloud::Common::AbstractModel
        # @param Classification: 配置文件名，支持SPARK、HIVE、HDFS、YARN的部分配置文件自定义。
        # @type Classification: String
        # @param Properties: 配置参数通过KV的形式传入，部分文件支持自定义，可以通过特殊的键"content"传入所有内容。
        # @type Properties: String

        attr_accessor :Classification, :Properties

        def initialize(classification=nil, properties=nil)
          @Classification = classification
          @Properties = properties
        end

        def deserialize(params)
          @Classification = params['Classification']
          @Properties = params['Properties']
        end
      end

      # 配置项（配置管理页）
      class ConfigurationItem < TencentCloud::Common::AbstractModel
        # @param Name: 配置项名称
        # @type Name: String
        # @param Value: 配置项值
        # @type Value: String
        # @param InFile: 所在的配置文件名
        # @type InFile: String

        attr_accessor :Name, :Value, :InFile

        def initialize(name=nil, value=nil, infile=nil)
          @Name = name
          @Value = value
          @InFile = infile
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @InFile = params['InFile']
        end
      end

      # ConvertPreToPostCluster请求参数结构体
      class ConvertPreToPostClusterRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID。
        # @type InstanceId: String
        # @param ClientToken: 5min内不可重入标识，订单标识
        # @type ClientToken: String

        attr_accessor :InstanceId, :ClientToken

        def initialize(instanceid=nil, clienttoken=nil)
          @InstanceId = instanceid
          @ClientToken = clienttoken
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClientToken = params['ClientToken']
        end
      end

      # ConvertPreToPostCluster返回参数结构体
      class ConvertPreToPostClusterResponse < TencentCloud::Common::AbstractModel
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

      # CreateCloudInstance请求参数结构体
      class CreateCloudInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称。
        # <li>长度限制为6-36个字符。</li>
        # <li>只允许包含中文、字母、数字、-、_。</li>
        # @type InstanceName: String
        # @param ClusterClass: 容器集群类型，取值范围
        # <li>EMR容器集群实例: EMR-TKE</li>
        # @type ClusterClass: String
        # @param Software: 部署的组件列表，不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）对应不同可选组件列表，不同产品版本可选组件列表查询：[组件版本](https://cloud.tencent.com/document/product/589/20279) ；
        # @type Software: Array
        # @param PlatFormType: 容器平台类型，取值范围
        # <li>EMR容器集群实例: tke</li>
        # @type PlatFormType: String
        # @param CosBucket: cos存储桶
        # @type CosBucket: String
        # @param EksClusterId: 容器集群id
        # @type EksClusterId: String
        # @param ProductId: 产品Id，不同产品ID表示不同的EMR产品版本。取值范围：
        # <li>60:表示EMR-TKE-V1.1.0</li>
        # <li>55:表示EMR-TKE-V1.0.1</li>
        # <li>52:表示EMR-TKE-V1.0.0</li>
        # @type ProductId: Integer
        # @param ClientToken: 客户端token，唯一随机标识，时效5分钟，需要调用者指定 防止客户端重新创建资源，小于等于64个字符，例如 a9a90aa6fae36063280
        # 示例值：a9a90aa6fae36063280
        # @type ClientToken: String
        # @param VPCSettings: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param CloudResources: 所有组件角色及其对应的Pod资源请求信息
        # @type CloudResources: Array
        # @param SgId: 安全组Id，为空默认创建新的安全组
        # @type SgId: String
        # @param MetaDBInfo: 元数据库信息
        # MetaDB信息，当MetaType选择EMR_NEW_META时，MetaDataJdbcUrl MetaDataUser MetaDataPass UnifyMetaInstanceId不用填
        # 当MetaType选择EMR_EXIT_META时，填写UnifyMetaInstanceId
        # 当MetaType选择USER_CUSTOM_META时，填写MetaDataJdbcUrl MetaDataUser MetaDataPass
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaDBInfo`
        # @param Tags: 标签信息
        # @type Tags: Array
        # @param LoginSettings: 登录密码，LoginSettings中的Password字段
        # @type LoginSettings: :class:`Tencentcloud::Emr.v20190103.models.LoginSettings`
        # @param ExternalService: 共享服务信息
        # @type ExternalService: Array
        # @param ZoneId: 可用区id
        # @type ZoneId: Integer
        # @param DefaultMetaVersion: 数据库版本
        # @type DefaultMetaVersion: String
        # @param NeedCdbAudit: 是否开通审计
        # @type NeedCdbAudit: Integer

        attr_accessor :InstanceName, :ClusterClass, :Software, :PlatFormType, :CosBucket, :EksClusterId, :ProductId, :ClientToken, :VPCSettings, :CloudResources, :SgId, :MetaDBInfo, :Tags, :LoginSettings, :ExternalService, :ZoneId, :DefaultMetaVersion, :NeedCdbAudit

        def initialize(instancename=nil, clusterclass=nil, software=nil, platformtype=nil, cosbucket=nil, eksclusterid=nil, productid=nil, clienttoken=nil, vpcsettings=nil, cloudresources=nil, sgid=nil, metadbinfo=nil, tags=nil, loginsettings=nil, externalservice=nil, zoneid=nil, defaultmetaversion=nil, needcdbaudit=nil)
          @InstanceName = instancename
          @ClusterClass = clusterclass
          @Software = software
          @PlatFormType = platformtype
          @CosBucket = cosbucket
          @EksClusterId = eksclusterid
          @ProductId = productid
          @ClientToken = clienttoken
          @VPCSettings = vpcsettings
          @CloudResources = cloudresources
          @SgId = sgid
          @MetaDBInfo = metadbinfo
          @Tags = tags
          @LoginSettings = loginsettings
          @ExternalService = externalservice
          @ZoneId = zoneid
          @DefaultMetaVersion = defaultmetaversion
          @NeedCdbAudit = needcdbaudit
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @ClusterClass = params['ClusterClass']
          @Software = params['Software']
          @PlatFormType = params['PlatFormType']
          @CosBucket = params['CosBucket']
          @EksClusterId = params['EksClusterId']
          @ProductId = params['ProductId']
          @ClientToken = params['ClientToken']
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['CloudResources'].nil?
            @CloudResources = []
            params['CloudResources'].each do |i|
              cloudresource_tmp = CloudResource.new
              cloudresource_tmp.deserialize(i)
              @CloudResources << cloudresource_tmp
            end
          end
          @SgId = params['SgId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaDBInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['ExternalService'].nil?
            @ExternalService = []
            params['ExternalService'].each do |i|
              externalservice_tmp = ExternalService.new
              externalservice_tmp.deserialize(i)
              @ExternalService << externalservice_tmp
            end
          end
          @ZoneId = params['ZoneId']
          @DefaultMetaVersion = params['DefaultMetaVersion']
          @NeedCdbAudit = params['NeedCdbAudit']
        end
      end

      # CreateCloudInstance返回参数结构体
      class CreateCloudInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ProductVersion: EMR产品版本名称如EMR-V2.3.0 表示2.3.0版本的EMR， 当前支持产品版本名称查询：[产品版本名称](https://cloud.tencent.com/document/product/589/66338)
        # @type ProductVersion: String
        # @param EnableSupportHAFlag: 是否开启节点高可用。取值范围：
        # <li>true：表示开启节点高可用。</li>
        # <li>false：表示不开启节点高可用。</li>
        # @type EnableSupportHAFlag: Boolean
        # @param InstanceName: 实例名称。
        # <li>长度限制为6-36个字符。</li>
        # <li>只允许包含中文、字母、数字、-、_。</li>
        # @type InstanceName: String
        # @param InstanceChargeType: 实例计费模式。取值范围：
        # <li>PREPAID：预付费，即包年包月。</li>
        # <li>POSTPAID_BY_HOUR：按小时后付费。</li>
        # @type InstanceChargeType: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置所购买节点的登录方式密码或者密钥。
        # <li>设置密钥时，密码仅用于组件原生WebUI快捷入口登录。</li>
        # <li>未设置密钥时，密码用于登录所购节点以及组件原生WebUI快捷入口登录。</li>
        # @type LoginSettings: :class:`Tencentcloud::Emr.v20190103.models.LoginSettings`
        # @param SceneSoftwareConfig: 集群应用场景以及支持部署组件配置
        # @type SceneSoftwareConfig: :class:`Tencentcloud::Emr.v20190103.models.SceneSoftwareConfig`
        # @param InstanceChargePrepaid: 即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Emr.v20190103.models.InstanceChargePrepaid`
        # @param SecurityGroupIds: 实例所属安全组的ID，形如sg-xxxxxxxx。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的SecurityGroupId字段来获取。
        # @type SecurityGroupIds: Array
        # @param ScriptBootstrapActionConfig: [引导操作](https://cloud.tencent.com/document/product/589/35656)脚本设置。
        # @type ScriptBootstrapActionConfig: Array
        # @param ClientToken: 唯一随机标识，时效性为5分钟，需要调用者指定 防止客户端重复创建资源，例如 a9a90aa6-****-****-****-fae360632808
        # @type ClientToken: String
        # @param NeedMasterWan: 是否开启集群Master节点公网。取值范围：
        # <li>NEED_MASTER_WAN：表示开启集群Master节点公网。</li>
        # <li>NOT_NEED_MASTER_WAN：表示不开启。</li>默认开启集群Master节点公网。
        # @type NeedMasterWan: String
        # @param EnableRemoteLoginFlag: 是否开启外网远程登录。（在SecurityGroupId不为空时，该参数无效）不填默认为不开启 取值范围：
        # <li>true：表示开启</li>
        # <li>false：表示不开启</li>
        # @type EnableRemoteLoginFlag: Boolean
        # @param EnableKerberosFlag: 是否开启Kerberos认证。默认不开启 取值范围：
        # <li>true：表示开启</li>
        # <li>false：表示不开启</li>
        # @type EnableKerberosFlag: Boolean
        # @param CustomConf: [自定义软件配置](https://cloud.tencent.com/document/product/589/35655?from_cn_redirect=1)
        # @type CustomConf: String
        # @param Tags: 标签描述列表。通过指定该参数可以同时绑定标签到相应的实例。
        # @type Tags: Array
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，当前只支持指定一个。
        # 该参数可以通过调用 [DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/product/213/17810)的返回值中的DisasterRecoverGroupId字段来获取。
        # @type DisasterRecoverGroupIds: Array
        # @param EnableCbsEncryptFlag: 是否开启集群维度CBS加密。默认不加密 取值范围：
        # <li>true：表示加密</li>
        # <li>false：表示不加密</li>
        # @type EnableCbsEncryptFlag: Boolean
        # @param MetaDBInfo: MetaDB信息，当MetaType选择EMR_NEW_META时，MetaDataJdbcUrl MetaDataUser MetaDataPass UnifyMetaInstanceId不用填
        # 当MetaType选择EMR_EXIT_META时，填写UnifyMetaInstanceId
        # 当MetaType选择USER_CUSTOM_META时，填写MetaDataJdbcUrl MetaDataUser MetaDataPass
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaDBInfo`
        # @param DependService: 共享组件信息
        # @type DependService: Array
        # @param ZoneResourceConfiguration: 节点资源的规格，有几个可用区，就填几个，按顺序第一个为主可用区，第二个为备可用区，第三个为仲裁可用区。如果没有开启跨AZ，则长度为1即可。
        # @type ZoneResourceConfiguration: Array
        # @param CosBucket: cos桶路径，创建StarRocks存算分离集群时用到
        # @type CosBucket: String
        # @param NodeMarks: 节点标识信息，目前只提供给tf平台使用
        # @type NodeMarks: Array
        # @param LoadBalancerId: clb id
        # @type LoadBalancerId: String
        # @param DefaultMetaVersion: 数据库版本：mysql8/tdsql8/mysql5
        # @type DefaultMetaVersion: String
        # @param NeedCdbAudit: 是否开通数据库审计
        # @type NeedCdbAudit: Integer

        attr_accessor :ProductVersion, :EnableSupportHAFlag, :InstanceName, :InstanceChargeType, :LoginSettings, :SceneSoftwareConfig, :InstanceChargePrepaid, :SecurityGroupIds, :ScriptBootstrapActionConfig, :ClientToken, :NeedMasterWan, :EnableRemoteLoginFlag, :EnableKerberosFlag, :CustomConf, :Tags, :DisasterRecoverGroupIds, :EnableCbsEncryptFlag, :MetaDBInfo, :DependService, :ZoneResourceConfiguration, :CosBucket, :NodeMarks, :LoadBalancerId, :DefaultMetaVersion, :NeedCdbAudit

        def initialize(productversion=nil, enablesupporthaflag=nil, instancename=nil, instancechargetype=nil, loginsettings=nil, scenesoftwareconfig=nil, instancechargeprepaid=nil, securitygroupids=nil, scriptbootstrapactionconfig=nil, clienttoken=nil, needmasterwan=nil, enableremoteloginflag=nil, enablekerberosflag=nil, customconf=nil, tags=nil, disasterrecovergroupids=nil, enablecbsencryptflag=nil, metadbinfo=nil, dependservice=nil, zoneresourceconfiguration=nil, cosbucket=nil, nodemarks=nil, loadbalancerid=nil, defaultmetaversion=nil, needcdbaudit=nil)
          @ProductVersion = productversion
          @EnableSupportHAFlag = enablesupporthaflag
          @InstanceName = instancename
          @InstanceChargeType = instancechargetype
          @LoginSettings = loginsettings
          @SceneSoftwareConfig = scenesoftwareconfig
          @InstanceChargePrepaid = instancechargeprepaid
          @SecurityGroupIds = securitygroupids
          @ScriptBootstrapActionConfig = scriptbootstrapactionconfig
          @ClientToken = clienttoken
          @NeedMasterWan = needmasterwan
          @EnableRemoteLoginFlag = enableremoteloginflag
          @EnableKerberosFlag = enablekerberosflag
          @CustomConf = customconf
          @Tags = tags
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @EnableCbsEncryptFlag = enablecbsencryptflag
          @MetaDBInfo = metadbinfo
          @DependService = dependservice
          @ZoneResourceConfiguration = zoneresourceconfiguration
          @CosBucket = cosbucket
          @NodeMarks = nodemarks
          @LoadBalancerId = loadbalancerid
          @DefaultMetaVersion = defaultmetaversion
          @NeedCdbAudit = needcdbaudit
        end

        def deserialize(params)
          @ProductVersion = params['ProductVersion']
          @EnableSupportHAFlag = params['EnableSupportHAFlag']
          @InstanceName = params['InstanceName']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['SceneSoftwareConfig'].nil?
            @SceneSoftwareConfig = SceneSoftwareConfig.new
            @SceneSoftwareConfig.deserialize(params['SceneSoftwareConfig'])
          end
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['ScriptBootstrapActionConfig'].nil?
            @ScriptBootstrapActionConfig = []
            params['ScriptBootstrapActionConfig'].each do |i|
              scriptbootstrapactionconfig_tmp = ScriptBootstrapActionConfig.new
              scriptbootstrapactionconfig_tmp.deserialize(i)
              @ScriptBootstrapActionConfig << scriptbootstrapactionconfig_tmp
            end
          end
          @ClientToken = params['ClientToken']
          @NeedMasterWan = params['NeedMasterWan']
          @EnableRemoteLoginFlag = params['EnableRemoteLoginFlag']
          @EnableKerberosFlag = params['EnableKerberosFlag']
          @CustomConf = params['CustomConf']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @EnableCbsEncryptFlag = params['EnableCbsEncryptFlag']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaDBInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
          unless params['DependService'].nil?
            @DependService = []
            params['DependService'].each do |i|
              dependservice_tmp = DependService.new
              dependservice_tmp.deserialize(i)
              @DependService << dependservice_tmp
            end
          end
          unless params['ZoneResourceConfiguration'].nil?
            @ZoneResourceConfiguration = []
            params['ZoneResourceConfiguration'].each do |i|
              zoneresourceconfiguration_tmp = ZoneResourceConfiguration.new
              zoneresourceconfiguration_tmp.deserialize(i)
              @ZoneResourceConfiguration << zoneresourceconfiguration_tmp
            end
          end
          @CosBucket = params['CosBucket']
          unless params['NodeMarks'].nil?
            @NodeMarks = []
            params['NodeMarks'].each do |i|
              nodemark_tmp = NodeMark.new
              nodemark_tmp.deserialize(i)
              @NodeMarks << nodemark_tmp
            end
          end
          @LoadBalancerId = params['LoadBalancerId']
          @DefaultMetaVersion = params['DefaultMetaVersion']
          @NeedCdbAudit = params['NeedCdbAudit']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGroupsSTD请求参数结构体
      class CreateGroupsSTDRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群名称
        # @type InstanceId: String
        # @param Groups: 批量用户组信息
        # @type Groups: Array

        attr_accessor :InstanceId, :Groups

        def initialize(instanceid=nil, groups=nil)
          @InstanceId = instanceid
          @Groups = groups
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Groups << groupinfo_tmp
            end
          end
        end
      end

      # CreateGroupsSTD返回参数结构体
      class CreateGroupsSTDResponse < TencentCloud::Common::AbstractModel
        # @param Data: 每个用户组的输出结果
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resultitem_tmp = ResultItem.new
              resultitem_tmp.deserialize(i)
              @Data << resultitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：
        # 51:表示STARROCKS-V1.4.0
        # 54:表示STARROCKS-V2.0.0
        # 27:表示KAFKA-V1.0.0
        # 50:表示KAFKA-V2.0.0
        # 16:表示EMR-V2.3.0
        # 20:表示EMR-V2.5.0
        # 30:表示EMR-V2.6.0
        # 38:表示EMR-V2.7.0
        # 25:表示EMR-V3.1.0
        # 33:表示EMR-V3.2.1
        # 34:表示EMR-V3.3.0
        # 37:表示EMR-V3.4.0
        # 44:表示EMR-V3.5.0
        # 53:表示EMR-V3.6.0
        # @type ProductId: Integer
        # @param Software: 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）对应不同可选组件列表，不同产品版本可选组件列表查询：[组件版本](https://cloud.tencent.com/document/product/589/20279) ；
        # 填写实例值：hive、flink。
        # @type Software: Array
        # @param SupportHA: 是否开启节点高可用。取值范围：
        # <li>0：表示不开启节点高可用。</li>
        # <li>1：表示开启节点高可用。</li>
        # @type SupportHA: Integer
        # @param InstanceName: 实例名称。
        # <li>长度限制为6-36个字符。</li>
        # <li>只允许包含中文、字母、数字、-、_。</li>
        # @type InstanceName: String
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param TimeSpan: 购买实例的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买实例的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置所购买节点的登录方式密码或者密钥。
        # <li>设置密钥时，密码仅用于组件原生WebUI快捷入口登录。</li>
        # <li>未设置密钥时，密码用于登录所购节点以及组件原生WebUI快捷入口登录。</li>
        # @type LoginSettings: :class:`Tencentcloud::Emr.v20190103.models.LoginSettings`
        # @param VPCSettings: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param ResourceSpec: 节点资源的规格。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`
        # @param COSSettings: 开启COS访问需要设置的参数。
        # @type COSSettings: :class:`Tencentcloud::Emr.v20190103.models.COSSettings`
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param SgId: 实例所属安全组的ID，形如sg-xxxxxxxx。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的SecurityGroupId字段来获取。
        # @type SgId: String
        # @param PreExecutedFileSettings: [引导操作](https://cloud.tencent.com/document/product/589/35656)脚本设置。
        # @type PreExecutedFileSettings: Array
        # @param AutoRenew: 包年包月实例是否自动续费。取值范围：
        # <li>0：表示不自动续费。</li>
        # <li>1：表示自动续费。</li>
        # @type AutoRenew: Integer
        # @param ClientToken: 唯一随机标识，时效5分钟，需要调用者指定 防止客户端重新创建资源，例如 a9a90aa6-****-****-****-fae36063280
        # @type ClientToken: String
        # @param NeedMasterWan: 是否开启集群Master节点公网。取值范围：
        # <li>NEED_MASTER_WAN：表示开启集群Master节点公网。</li>
        # <li>NOT_NEED_MASTER_WAN：表示不开启。</li>默认开启集群Master节点公网。
        # @type NeedMasterWan: String
        # @param RemoteLoginAtCreate: 是否需要开启外网远程登录，即22号端口。在SgId不为空时，该参数无效。
        # @type RemoteLoginAtCreate: Integer
        # @param CheckSecurity: 是否开启安全集群。0表示不开启，非0表示开启。
        # @type CheckSecurity: Integer
        # @param ExtendFsField: 访问外部文件系统。
        # @type ExtendFsField: String
        # @param Tags: 标签描述列表。通过指定该参数可以同时绑定标签到相应的实例。
        # @type Tags: Array
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，当前只支持指定一个。
        # 该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/product/213/15486 ) 的返回值中的SecurityGroupId字段来获取。
        # @type DisasterRecoverGroupIds: Array
        # @param CbsEncrypt: 集群维度CBS加密盘，默认0表示不加密，1表示加密
        # @type CbsEncrypt: Integer
        # @param MetaType: hive共享元数据库类型。取值范围：
        # <li>EMR_DEFAULT_META：表示集群默认创建</li>
        # <li>EMR_EXIST_META：表示集群使用指定EMR-MetaDB。</li>
        # <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        # @type MetaType: String
        # @param UnifyMetaInstanceId: EMR-MetaDB实例
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自定义MetaDB信息
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`
        # @param ApplicationRole: 自定义应用角色。
        # @type ApplicationRole: String
        # @param SceneName: 场景化取值：
        # Hadoop-Kudu
        # Hadoop-Zookeeper
        # Hadoop-Presto
        # Hadoop-Hbase
        # @type SceneName: String
        # @param ExternalService: 共享组件信息
        # @type ExternalService: Array
        # @param VersionID: 如果为0，则MultiZone、MultiDeployStrategy、MultiZoneSettings是disable的状态，如果为1，则废弃ResourceSpec，使用MultiZoneSettings。
        # @type VersionID: Integer
        # @param MultiZone: true表示开启跨AZ部署；仅为新建集群时的用户参数，后续不支持调整。
        # @type MultiZone: Boolean
        # @param MultiZoneSettings: 节点资源的规格，有几个可用区，就填几个，按顺序第一个为主可用区，第二个为备可用区，第三个为仲裁可用区。如果没有开启跨AZ，则长度为1即可。
        # @type MultiZoneSettings: Array
        # @param CosBucket: cos桶路径，创建StarRocks存算分离集群时用到
        # @type CosBucket: String
        # @param NodeMarks: 节点标识信息，目前只提供给tf平台使用
        # @type NodeMarks: Array
        # @param LoadBalancerId: CLB id
        # @type LoadBalancerId: String
        # @param DefaultMetaVersion: 数据库类型：mysql8/tdsql8
        # @type DefaultMetaVersion: String
        # @param NeedCdbAudit: 是否开通审计：0:不开通,1:开通
        # @type NeedCdbAudit: Integer

        attr_accessor :ProductId, :Software, :SupportHA, :InstanceName, :PayMode, :TimeSpan, :TimeUnit, :LoginSettings, :VPCSettings, :ResourceSpec, :COSSettings, :Placement, :SgId, :PreExecutedFileSettings, :AutoRenew, :ClientToken, :NeedMasterWan, :RemoteLoginAtCreate, :CheckSecurity, :ExtendFsField, :Tags, :DisasterRecoverGroupIds, :CbsEncrypt, :MetaType, :UnifyMetaInstanceId, :MetaDBInfo, :ApplicationRole, :SceneName, :ExternalService, :VersionID, :MultiZone, :MultiZoneSettings, :CosBucket, :NodeMarks, :LoadBalancerId, :DefaultMetaVersion, :NeedCdbAudit

        def initialize(productid=nil, software=nil, supportha=nil, instancename=nil, paymode=nil, timespan=nil, timeunit=nil, loginsettings=nil, vpcsettings=nil, resourcespec=nil, cossettings=nil, placement=nil, sgid=nil, preexecutedfilesettings=nil, autorenew=nil, clienttoken=nil, needmasterwan=nil, remoteloginatcreate=nil, checksecurity=nil, extendfsfield=nil, tags=nil, disasterrecovergroupids=nil, cbsencrypt=nil, metatype=nil, unifymetainstanceid=nil, metadbinfo=nil, applicationrole=nil, scenename=nil, externalservice=nil, versionid=nil, multizone=nil, multizonesettings=nil, cosbucket=nil, nodemarks=nil, loadbalancerid=nil, defaultmetaversion=nil, needcdbaudit=nil)
          @ProductId = productid
          @Software = software
          @SupportHA = supportha
          @InstanceName = instancename
          @PayMode = paymode
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @LoginSettings = loginsettings
          @VPCSettings = vpcsettings
          @ResourceSpec = resourcespec
          @COSSettings = cossettings
          @Placement = placement
          @SgId = sgid
          @PreExecutedFileSettings = preexecutedfilesettings
          @AutoRenew = autorenew
          @ClientToken = clienttoken
          @NeedMasterWan = needmasterwan
          @RemoteLoginAtCreate = remoteloginatcreate
          @CheckSecurity = checksecurity
          @ExtendFsField = extendfsfield
          @Tags = tags
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @CbsEncrypt = cbsencrypt
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
          @ApplicationRole = applicationrole
          @SceneName = scenename
          @ExternalService = externalservice
          @VersionID = versionid
          @MultiZone = multizone
          @MultiZoneSettings = multizonesettings
          @CosBucket = cosbucket
          @NodeMarks = nodemarks
          @LoadBalancerId = loadbalancerid
          @DefaultMetaVersion = defaultmetaversion
          @NeedCdbAudit = needcdbaudit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Software = params['Software']
          @SupportHA = params['SupportHA']
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          unless params['COSSettings'].nil?
            @COSSettings = COSSettings.new
            @COSSettings.deserialize(params['COSSettings'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @SgId = params['SgId']
          unless params['PreExecutedFileSettings'].nil?
            @PreExecutedFileSettings = []
            params['PreExecutedFileSettings'].each do |i|
              preexecutefilesettings_tmp = PreExecuteFileSettings.new
              preexecutefilesettings_tmp.deserialize(i)
              @PreExecutedFileSettings << preexecutefilesettings_tmp
            end
          end
          @AutoRenew = params['AutoRenew']
          @ClientToken = params['ClientToken']
          @NeedMasterWan = params['NeedMasterWan']
          @RemoteLoginAtCreate = params['RemoteLoginAtCreate']
          @CheckSecurity = params['CheckSecurity']
          @ExtendFsField = params['ExtendFsField']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @CbsEncrypt = params['CbsEncrypt']
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
          @ApplicationRole = params['ApplicationRole']
          @SceneName = params['SceneName']
          unless params['ExternalService'].nil?
            @ExternalService = []
            params['ExternalService'].each do |i|
              externalservice_tmp = ExternalService.new
              externalservice_tmp.deserialize(i)
              @ExternalService << externalservice_tmp
            end
          end
          @VersionID = params['VersionID']
          @MultiZone = params['MultiZone']
          unless params['MultiZoneSettings'].nil?
            @MultiZoneSettings = []
            params['MultiZoneSettings'].each do |i|
              multizonesetting_tmp = MultiZoneSetting.new
              multizonesetting_tmp.deserialize(i)
              @MultiZoneSettings << multizonesetting_tmp
            end
          end
          @CosBucket = params['CosBucket']
          unless params['NodeMarks'].nil?
            @NodeMarks = []
            params['NodeMarks'].each do |i|
              nodemark_tmp = NodeMark.new
              nodemark_tmp.deserialize(i)
              @NodeMarks << nodemark_tmp
            end
          end
          @LoadBalancerId = params['LoadBalancerId']
          @DefaultMetaVersion = params['DefaultMetaVersion']
          @NeedCdbAudit = params['NeedCdbAudit']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSLInstance请求参数结构体
      class CreateSLInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param PayMode: 实例计费模式，0表示后付费，即按量计费，1表示预付费，即包年包月。
        # @type PayMode: Integer
        # @param DiskType: 实例存储类型，CLOUD_HSSD表示性能云存储， CLOUD_BSSD表示标准云存储。
        # @type DiskType: String
        # @param DiskSize: 实例单节点磁盘容量，单位GB，单节点磁盘容量需大于等于100，小于等于250*CPU核心数，容量调整步长为100。
        # @type DiskSize: Integer
        # @param NodeType: 实例节点规格，可填写4C16G、8C32G、16C64G、32C128G，不区分大小写。
        # @type NodeType: String
        # @param ZoneSettings: 实例可用区详细配置，当前支持多可用区，可用区数量只能为1或3，包含区域名称，VPC信息、节点数量，其中所有区域节点总数需大于等于3，小于等于50。
        # @type ZoneSettings: Array
        # @param Tags: 实例要绑定的标签列表。
        # @type Tags: Array
        # @param PrePaySetting: 预付费参数
        # @type PrePaySetting: :class:`Tencentcloud::Emr.v20190103.models.PrePaySetting`
        # @param ClientToken: 唯一随机标识，时效性为5分钟，需要调用者指定 防止客户端重复创建资源，例如 a9a90aa6-****-****-****-fae360632808
        # @type ClientToken: String
        # @param DeploymentMode: 部署模式
        # @type DeploymentMode: String

        attr_accessor :InstanceName, :PayMode, :DiskType, :DiskSize, :NodeType, :ZoneSettings, :Tags, :PrePaySetting, :ClientToken, :DeploymentMode

        def initialize(instancename=nil, paymode=nil, disktype=nil, disksize=nil, nodetype=nil, zonesettings=nil, tags=nil, prepaysetting=nil, clienttoken=nil, deploymentmode=nil)
          @InstanceName = instancename
          @PayMode = paymode
          @DiskType = disktype
          @DiskSize = disksize
          @NodeType = nodetype
          @ZoneSettings = zonesettings
          @Tags = tags
          @PrePaySetting = prepaysetting
          @ClientToken = clienttoken
          @DeploymentMode = deploymentmode
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @NodeType = params['NodeType']
          unless params['ZoneSettings'].nil?
            @ZoneSettings = []
            params['ZoneSettings'].each do |i|
              zonesetting_tmp = ZoneSetting.new
              zonesetting_tmp.deserialize(i)
              @ZoneSettings << zonesetting_tmp
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
          unless params['PrePaySetting'].nil?
            @PrePaySetting = PrePaySetting.new
            @PrePaySetting.deserialize(params['PrePaySetting'])
          end
          @ClientToken = params['ClientToken']
          @DeploymentMode = params['DeploymentMode']
        end
      end

      # CreateSLInstance返回参数结构体
      class CreateSLInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一标识符（字符串表示）
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # 用户Hive-MetaDB信息
      class CustomMetaDBInfo < TencentCloud::Common::AbstractModel
        # @param MetaDataJdbcUrl: 自定义MetaDB的JDBC连接，示例: jdbc:mysql://10.10.10.10:3306/dbname
        # @type MetaDataJdbcUrl: String
        # @param MetaDataUser: 自定义MetaDB用户名
        # @type MetaDataUser: String
        # @param MetaDataPass: 自定义MetaDB密码
        # @type MetaDataPass: String
        # @param MetaType: hive共享元数据库类型。取值范围：
        # <li>EMR_DEFAULT_META：表示集群默认创建</li>
        # <li>EMR_EXIST_META：表示集群使用指定EMR-MetaDB。</li>
        # <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        # @type MetaType: String
        # @param UnifyMetaInstanceId: EMR-MetaDB实例
        # @type UnifyMetaInstanceId: String

        attr_accessor :MetaDataJdbcUrl, :MetaDataUser, :MetaDataPass, :MetaType, :UnifyMetaInstanceId

        def initialize(metadatajdbcurl=nil, metadatauser=nil, metadatapass=nil, metatype=nil, unifymetainstanceid=nil)
          @MetaDataJdbcUrl = metadatajdbcurl
          @MetaDataUser = metadatauser
          @MetaDataPass = metadatapass
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
        end

        def deserialize(params)
          @MetaDataJdbcUrl = params['MetaDataJdbcUrl']
          @MetaDataUser = params['MetaDataUser']
          @MetaDataPass = params['MetaDataPass']
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
        end
      end

      # 用户自建Hive-MetaDB信息
      class CustomMetaInfo < TencentCloud::Common::AbstractModel
        # @param MetaDataJdbcUrl: 自定义MetaDB的JDBC连接，请以 jdbc:mysql:// 开头
        # @type MetaDataJdbcUrl: String
        # @param MetaDataUser: 自定义MetaDB用户名
        # @type MetaDataUser: String
        # @param MetaDataPass: 自定义MetaDB密码
        # @type MetaDataPass: String

        attr_accessor :MetaDataJdbcUrl, :MetaDataUser, :MetaDataPass

        def initialize(metadatajdbcurl=nil, metadatauser=nil, metadatapass=nil)
          @MetaDataJdbcUrl = metadatajdbcurl
          @MetaDataUser = metadatauser
          @MetaDataPass = metadatapass
        end

        def deserialize(params)
          @MetaDataJdbcUrl = params['MetaDataJdbcUrl']
          @MetaDataUser = params['MetaDataUser']
          @MetaDataPass = params['MetaDataPass']
        end
      end

      # 共用自建组件参数
      class CustomServiceDefine < TencentCloud::Common::AbstractModel
        # @param Name: 自定义参数key
        # @type Name: String
        # @param Value: 自定义参数value
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

      # DAG信息
      class DAGInfo < TencentCloud::Common::AbstractModel
        # @param ID: 查询ID
        # @type ID: String
        # @param Type: DAG类型，目前只支持starrocks
        # @type Type: String
        # @param Content: 返回的DAG的JSON字符串
        # @type Content: String

        attr_accessor :ID, :Type, :Content

        def initialize(id=nil, type=nil, content=nil)
          @ID = id
          @Type = type
          @Content = content
        end

        def deserialize(params)
          @ID = params['ID']
          @Type = params['Type']
          @Content = params['Content']
        end
      end

      # 弹性扩缩容按天重复任务描述
      class DayRepeatStrategy < TencentCloud::Common::AbstractModel
        # @param ExecuteAtTimeOfDay: 重复任务执行的具体时刻，例如"01:02:00"
        # @type ExecuteAtTimeOfDay: String
        # @param Step: 每隔Step天执行一次
        # @type Step: Integer

        attr_accessor :ExecuteAtTimeOfDay, :Step

        def initialize(executeattimeofday=nil, step=nil)
          @ExecuteAtTimeOfDay = executeattimeofday
          @Step = step
        end

        def deserialize(params)
          @ExecuteAtTimeOfDay = params['ExecuteAtTimeOfDay']
          @Step = params['Step']
        end
      end

      # 资源调度的默认设置
      class DefaultSetting < TencentCloud::Common::AbstractModel
        # @param Name: 名称，作为入参的key
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Prompt: 提示
        # @type Prompt: String
        # @param Key: key，用于展示，该配置对应与配置文件中的配置项
        # @type Key: String
        # @param Value: Name对应的值
        # @type Value: String

        attr_accessor :Name, :Desc, :Prompt, :Key, :Value

        def initialize(name=nil, desc=nil, prompt=nil, key=nil, value=nil)
          @Name = name
          @Desc = desc
          @Prompt = prompt
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Prompt = params['Prompt']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # DeleteAutoScaleStrategy请求参数结构体
      class DeleteAutoScaleStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param StrategyType: 自动扩缩容规则类型，1表示按照负载指标扩缩容，2表示按照时间规则扩缩容。
        # @type StrategyType: Integer
        # @param StrategyId: 规则ID。
        # @type StrategyId: Integer
        # @param GroupId: 伸缩组Id
        # @type GroupId: Integer

        attr_accessor :InstanceId, :StrategyType, :StrategyId, :GroupId

        def initialize(instanceid=nil, strategytype=nil, strategyid=nil, groupid=nil)
          @InstanceId = instanceid
          @StrategyType = strategytype
          @StrategyId = strategyid
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyType = params['StrategyType']
          @StrategyId = params['StrategyId']
          @GroupId = params['GroupId']
        end
      end

      # DeleteAutoScaleStrategy返回参数结构体
      class DeleteAutoScaleStrategyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGroupsSTD请求参数结构体
      class DeleteGroupsSTDRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群名称
        # @type InstanceId: String
        # @param GroupNames: 用户组名称数组
        # @type GroupNames: Array

        attr_accessor :InstanceId, :GroupNames

        def initialize(instanceid=nil, groupnames=nil)
          @InstanceId = instanceid
          @GroupNames = groupnames
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupNames = params['GroupNames']
        end
      end

      # DeleteGroupsSTD返回参数结构体
      class DeleteGroupsSTDResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除返回结果
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resultitem_tmp = ResultItem.new
              resultitem_tmp.deserialize(i)
              @Data << resultitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteNodeResourceConfig请求参数结构体
      class DeleteNodeResourceConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param ResourceConfigId: 节点配置Id
        # @type ResourceConfigId: Integer
        # @param ResourceType: 节点类型 CORE TASK ROUTER
        # @type ResourceType: String
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String

        attr_accessor :InstanceId, :ResourceConfigId, :ResourceType, :ResourceBaseType, :ComputeResourceId

        def initialize(instanceid=nil, resourceconfigid=nil, resourcetype=nil, resourcebasetype=nil, computeresourceid=nil)
          @InstanceId = instanceid
          @ResourceConfigId = resourceconfigid
          @ResourceType = resourcetype
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceConfigId = params['ResourceConfigId']
          @ResourceType = params['ResourceType']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
        end
      end

      # DeleteNodeResourceConfig返回参数结构体
      class DeleteNodeResourceConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserManagerUserList请求参数结构体
      class DeleteUserManagerUserListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param UserNameList: 集群用户名列表
        # @type UserNameList: Array
        # @param TkeClusterId: tke/eks集群id，容器集群传
        # @type TkeClusterId: String
        # @param DisplayStrategy: 默认空，容器版传"native"
        # @type DisplayStrategy: String
        # @param UserGroupList: 用户组
        # @type UserGroupList: Array
        # @param DeleteHomeDir: 是否删除家目录，只针对cvm集群
        # @type DeleteHomeDir: Boolean

        attr_accessor :InstanceId, :UserNameList, :TkeClusterId, :DisplayStrategy, :UserGroupList, :DeleteHomeDir

        def initialize(instanceid=nil, usernamelist=nil, tkeclusterid=nil, displaystrategy=nil, usergrouplist=nil, deletehomedir=nil)
          @InstanceId = instanceid
          @UserNameList = usernamelist
          @TkeClusterId = tkeclusterid
          @DisplayStrategy = displaystrategy
          @UserGroupList = usergrouplist
          @DeleteHomeDir = deletehomedir
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserNameList = params['UserNameList']
          @TkeClusterId = params['TkeClusterId']
          @DisplayStrategy = params['DisplayStrategy']
          unless params['UserGroupList'].nil?
            @UserGroupList = []
            params['UserGroupList'].each do |i|
              userandgroup_tmp = UserAndGroup.new
              userandgroup_tmp.deserialize(i)
              @UserGroupList << userandgroup_tmp
            end
          end
          @DeleteHomeDir = params['DeleteHomeDir']
        end
      end

      # DeleteUserManagerUserList返回参数结构体
      class DeleteUserManagerUserListResponse < TencentCloud::Common::AbstractModel
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

      # 共用组件信息
      class DependService < TencentCloud::Common::AbstractModel
        # @param ServiceName: 共用组件名
        # @type ServiceName: String
        # @param InstanceId: 共用组件集群
        # @type InstanceId: String

        attr_accessor :ServiceName, :InstanceId

        def initialize(servicename=nil, instanceid=nil)
          @ServiceName = servicename
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @InstanceId = params['InstanceId']
        end
      end

      # DeployYarnConf请求参数结构体
      class DeployYarnConfRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeployYarnConf返回参数结构体
      class DeployYarnConfResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 启动流程后的流程ID，可以使用[DescribeClusterFlowStatusDetail](https://cloud.tencent.com/document/product/589/107224)接口来获取流程状态
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScaleGroupGlobalConf请求参数结构体
      class DescribeAutoScaleGroupGlobalConfRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAutoScaleGroupGlobalConf返回参数结构体
      class DescribeAutoScaleGroupGlobalConfResponse < TencentCloud::Common::AbstractModel
        # @param GroupGlobalConfs: 集群所有伸缩组全局信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupGlobalConfs: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupGlobalConfs, :TotalCount, :RequestId

        def initialize(groupglobalconfs=nil, totalcount=nil, requestid=nil)
          @GroupGlobalConfs = groupglobalconfs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupGlobalConfs'].nil?
            @GroupGlobalConfs = []
            params['GroupGlobalConfs'].each do |i|
              groupglobalconfs_tmp = GroupGlobalConfs.new
              groupglobalconfs_tmp.deserialize(i)
              @GroupGlobalConfs << groupglobalconfs_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScaleRecords请求参数结构体
      class DescribeAutoScaleRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Filters: 记录过滤参数，目前仅能为“StartTime”,“EndTime”和“StrategyName”、ActionStatus、ScaleAction。
        # StartTime和EndTime支持2006-01-02 15:04:05 或者2006/01/02 15:04:05的时间格式
        # ActionStatus：0:INITED,1:SUCCESS, 2:FAILED,3:LIMITED_SUCCESSED,4:IN_PROCESS,5:IN_RETRY
        # ScaleAction：1:扩容  2:缩容
        # @type Filters: Array
        # @param Offset: 分页参数。
        # @type Offset: Integer
        # @param Limit: 分页参数。最大支持100
        # @type Limit: Integer
        # @param RecordSource: 表示是自动(0)还是托管伸缩(1)
        # @type RecordSource: Integer
        # @param Asc: 是否升序，1:升序，0:降序
        # @type Asc: Integer

        attr_accessor :InstanceId, :Filters, :Offset, :Limit, :RecordSource, :Asc

        def initialize(instanceid=nil, filters=nil, offset=nil, limit=nil, recordsource=nil, asc=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @RecordSource = recordsource
          @Asc = asc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @Filters << keyvalue_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RecordSource = params['RecordSource']
          @Asc = params['Asc']
        end
      end

      # DescribeAutoScaleRecords返回参数结构体
      class DescribeAutoScaleRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总扩缩容记录数。
        # @type TotalCount: Integer
        # @param RecordList: 记录列表。
        # @type RecordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RecordList, :RequestId

        def initialize(totalcount=nil, recordlist=nil, requestid=nil)
          @TotalCount = totalcount
          @RecordList = recordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              autoscalerecord_tmp = AutoScaleRecord.new
              autoscalerecord_tmp.deserialize(i)
              @RecordList << autoscalerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScaleStrategies请求参数结构体
      class DescribeAutoScaleStrategiesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param GroupId: 伸缩组id
        # @type GroupId: Integer

        attr_accessor :InstanceId, :GroupId

        def initialize(instanceid=nil, groupid=nil)
          @InstanceId = instanceid
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupId = params['GroupId']
        end
      end

      # DescribeAutoScaleStrategies返回参数结构体
      class DescribeAutoScaleStrategiesResponse < TencentCloud::Common::AbstractModel
        # @param LoadAutoScaleStrategies: 按负载伸缩规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadAutoScaleStrategies: Array
        # @param TimeBasedAutoScaleStrategies: 按时间伸缩规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeBasedAutoScaleStrategies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadAutoScaleStrategies, :TimeBasedAutoScaleStrategies, :RequestId

        def initialize(loadautoscalestrategies=nil, timebasedautoscalestrategies=nil, requestid=nil)
          @LoadAutoScaleStrategies = loadautoscalestrategies
          @TimeBasedAutoScaleStrategies = timebasedautoscalestrategies
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadAutoScaleStrategies'].nil?
            @LoadAutoScaleStrategies = []
            params['LoadAutoScaleStrategies'].each do |i|
              loadautoscalestrategy_tmp = LoadAutoScaleStrategy.new
              loadautoscalestrategy_tmp.deserialize(i)
              @LoadAutoScaleStrategies << loadautoscalestrategy_tmp
            end
          end
          unless params['TimeBasedAutoScaleStrategies'].nil?
            @TimeBasedAutoScaleStrategies = []
            params['TimeBasedAutoScaleStrategies'].each do |i|
              timeautoscalestrategy_tmp = TimeAutoScaleStrategy.new
              timeautoscalestrategy_tmp.deserialize(i)
              @TimeBasedAutoScaleStrategies << timeautoscalestrategy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterFlowStatusDetail请求参数结构体
      class DescribeClusterFlowStatusDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: EMR实例ID
        # @type InstanceId: String
        # @param FlowParam: 流程相关参数
        # @type FlowParam: :class:`Tencentcloud::Emr.v20190103.models.FlowParam`
        # @param NeedExtraDetail: 是否返回任务额外信息
        # 默认: false
        # @type NeedExtraDetail: Boolean

        attr_accessor :InstanceId, :FlowParam, :NeedExtraDetail

        def initialize(instanceid=nil, flowparam=nil, needextradetail=nil)
          @InstanceId = instanceid
          @FlowParam = flowparam
          @NeedExtraDetail = needextradetail
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FlowParam'].nil?
            @FlowParam = FlowParam.new
            @FlowParam.deserialize(params['FlowParam'])
          end
          @NeedExtraDetail = params['NeedExtraDetail']
        end
      end

      # DescribeClusterFlowStatusDetail返回参数结构体
      class DescribeClusterFlowStatusDetailResponse < TencentCloud::Common::AbstractModel
        # @param StageDetails: 任务步骤详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StageDetails: Array
        # @param FlowDesc: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowDesc: Array
        # @param FlowName: 任务名称
        # @type FlowName: String
        # @param FlowTotalProgress: 总任务流程进度：
        # 例如：0.8
        # @type FlowTotalProgress: Float
        # @param FlowTotalStatus: 定义流程总状态：
        # 0:初始化，
        # 1:运行中，
        # 2:完成，
        # 3:完成（存在跳过步骤），
        # -1:失败，
        # -3:阻塞，
        # @type FlowTotalStatus: Integer
        # @param FlowExtraDetail: 流程额外信息
        # NeedExtraDetail为true时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowExtraDetail: Array
        # @param FlowInfo: 流程描述
        # @type FlowInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StageDetails, :FlowDesc, :FlowName, :FlowTotalProgress, :FlowTotalStatus, :FlowExtraDetail, :FlowInfo, :RequestId

        def initialize(stagedetails=nil, flowdesc=nil, flowname=nil, flowtotalprogress=nil, flowtotalstatus=nil, flowextradetail=nil, flowinfo=nil, requestid=nil)
          @StageDetails = stagedetails
          @FlowDesc = flowdesc
          @FlowName = flowname
          @FlowTotalProgress = flowtotalprogress
          @FlowTotalStatus = flowtotalstatus
          @FlowExtraDetail = flowextradetail
          @FlowInfo = flowinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StageDetails'].nil?
            @StageDetails = []
            params['StageDetails'].each do |i|
              stageinfodetail_tmp = StageInfoDetail.new
              stageinfodetail_tmp.deserialize(i)
              @StageDetails << stageinfodetail_tmp
            end
          end
          unless params['FlowDesc'].nil?
            @FlowDesc = []
            params['FlowDesc'].each do |i|
              flowparamsdesc_tmp = FlowParamsDesc.new
              flowparamsdesc_tmp.deserialize(i)
              @FlowDesc << flowparamsdesc_tmp
            end
          end
          @FlowName = params['FlowName']
          @FlowTotalProgress = params['FlowTotalProgress']
          @FlowTotalStatus = params['FlowTotalStatus']
          unless params['FlowExtraDetail'].nil?
            @FlowExtraDetail = []
            params['FlowExtraDetail'].each do |i|
              flowextradetail_tmp = FlowExtraDetail.new
              flowextradetail_tmp.deserialize(i)
              @FlowExtraDetail << flowextradetail_tmp
            end
          end
          @FlowInfo = params['FlowInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterNodes请求参数结构体
      class DescribeClusterNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID,实例ID形如: emr-xxxxxxxx
        # @type InstanceId: String
        # @param NodeFlag: 节点标识，取值为：
        # <li>all：表示获取全部类型节点，cdb信息除外。</li>
        # <li>master：表示获取master节点信息。</li>
        # <li>core：表示获取core节点信息。</li>
        # <li>task：表示获取task节点信息。</li>
        # <li>common：表示获取common节点信息。</li>
        # <li>router：表示获取router节点信息。</li>
        # <li>db：表示获取正常状态的cdb信息。</li>
        # <li>recyle：表示获取回收站隔离中的节点信息，包括cdb信息。</li>
        # <li>renew：表示获取所有待续费的节点信息，包括cdb信息，自动续费节点不会返回。</li>
        # 注意：现在只支持以上取值，输入其他值会导致错误。
        # @type NodeFlag: String
        # @param ExportDb: 导出全部节点信息csv时是否携带cdb信息
        # @type ExportDb: Boolean
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为100，最大值为100。
        # 如果offset和limit都不填，或者都填0，则返回全部数据
        # @type Limit: Integer
        # @param HardwareResourceType: 资源类型:支持all/host/pod，默认为all
        # @type HardwareResourceType: String
        # @param SearchFields: 支持搜索的字段
        # @type SearchFields: Array
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param Asc: 是否升序，1:升序，0:降序
        # @type Asc: Integer

        attr_accessor :InstanceId, :NodeFlag, :ExportDb, :Offset, :Limit, :HardwareResourceType, :SearchFields, :OrderField, :Asc

        def initialize(instanceid=nil, nodeflag=nil, exportdb=nil, offset=nil, limit=nil, hardwareresourcetype=nil, searchfields=nil, orderfield=nil, asc=nil)
          @InstanceId = instanceid
          @NodeFlag = nodeflag
          @ExportDb = exportdb
          @Offset = offset
          @Limit = limit
          @HardwareResourceType = hardwareresourcetype
          @SearchFields = searchfields
          @OrderField = orderfield
          @Asc = asc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeFlag = params['NodeFlag']
          @ExportDb = params['ExportDb']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @HardwareResourceType = params['HardwareResourceType']
          unless params['SearchFields'].nil?
            @SearchFields = []
            params['SearchFields'].each do |i|
              searchitem_tmp = SearchItem.new
              searchitem_tmp.deserialize(i)
              @SearchFields << searchitem_tmp
            end
          end
          @OrderField = params['OrderField']
          @Asc = params['Asc']
        end
      end

      # DescribeClusterNodes返回参数结构体
      class DescribeClusterNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 查询到的节点总数
        # @type TotalCnt: Integer
        # @param NodeList: 节点详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array
        # @param TagKeys: 用户所有的标签键列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKeys: Array
        # @param HardwareResourceTypeList: 资源类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HardwareResourceTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :NodeList, :TagKeys, :HardwareResourceTypeList, :RequestId

        def initialize(totalcnt=nil, nodelist=nil, tagkeys=nil, hardwareresourcetypelist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @NodeList = nodelist
          @TagKeys = tagkeys
          @HardwareResourceTypeList = hardwareresourcetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              nodehardwareinfo_tmp = NodeHardwareInfo.new
              nodehardwareinfo_tmp.deserialize(i)
              @NodeList << nodehardwareinfo_tmp
            end
          end
          @TagKeys = params['TagKeys']
          @HardwareResourceTypeList = params['HardwareResourceTypeList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCvmQuota请求参数结构体
      class DescribeCvmQuotaRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: EMR集群ID
        # @type ClusterId: String
        # @param ZoneId: 区ID
        # @type ZoneId: Integer

        attr_accessor :ClusterId, :ZoneId

        def initialize(clusterid=nil, zoneid=nil)
          @ClusterId = clusterid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeCvmQuota返回参数结构体
      class DescribeCvmQuotaResponse < TencentCloud::Common::AbstractModel
        # @param PostPaidQuotaSet: 后付费配额列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostPaidQuotaSet: Array
        # @param SpotPaidQuotaSet: 竞价实例配额列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpotPaidQuotaSet: Array
        # @param EksQuotaSet: eks配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EksQuotaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PostPaidQuotaSet, :SpotPaidQuotaSet, :EksQuotaSet, :RequestId

        def initialize(postpaidquotaset=nil, spotpaidquotaset=nil, eksquotaset=nil, requestid=nil)
          @PostPaidQuotaSet = postpaidquotaset
          @SpotPaidQuotaSet = spotpaidquotaset
          @EksQuotaSet = eksquotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PostPaidQuotaSet'].nil?
            @PostPaidQuotaSet = []
            params['PostPaidQuotaSet'].each do |i|
              quotaentity_tmp = QuotaEntity.new
              quotaentity_tmp.deserialize(i)
              @PostPaidQuotaSet << quotaentity_tmp
            end
          end
          unless params['SpotPaidQuotaSet'].nil?
            @SpotPaidQuotaSet = []
            params['SpotPaidQuotaSet'].each do |i|
              quotaentity_tmp = QuotaEntity.new
              quotaentity_tmp.deserialize(i)
              @SpotPaidQuotaSet << quotaentity_tmp
            end
          end
          unless params['EksQuotaSet'].nil?
            @EksQuotaSet = []
            params['EksQuotaSet'].each do |i|
              podsalespec_tmp = PodSaleSpec.new
              podsalespec_tmp.deserialize(i)
              @EksQuotaSet << podsalespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDAGInfo请求参数结构体
      class DescribeDAGInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 集群ID
        # @type InstanceID: String
        # @param Type: DAG类型，目前只支持STARROCKS
        # @type Type: String
        # @param IDList: 查询ID列表,最大长度为1
        # @type IDList: Array

        attr_accessor :InstanceID, :Type, :IDList

        def initialize(instanceid=nil, type=nil, idlist=nil)
          @InstanceID = instanceid
          @Type = type
          @IDList = idlist
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Type = params['Type']
          @IDList = params['IDList']
        end
      end

      # DescribeDAGInfo返回参数结构体
      class DescribeDAGInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，分页查询时使用
        # @type TotalCount: Integer
        # @param DAGInfoList: Starrocks 查询信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DAGInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DAGInfoList, :RequestId

        def initialize(totalcount=nil, daginfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @DAGInfoList = daginfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DAGInfoList'].nil?
            @DAGInfoList = []
            params['DAGInfoList'].each do |i|
              daginfo_tmp = DAGInfo.new
              daginfo_tmp.deserialize(i)
              @DAGInfoList << daginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEmrApplicationStatics请求参数结构体
      class DescribeEmrApplicationStaticsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param StartTime: 起始时间，时间戳（秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，时间戳（秒）
        # @type EndTime: Integer
        # @param Queues: 过滤的队列名
        # @type Queues: Array
        # @param Users: 过滤的用户名
        # @type Users: Array
        # @param ApplicationTypes: 过滤的作业类型
        # @type ApplicationTypes: Array
        # @param GroupBy: 分组字段，可选：queue, user, applicationType
        # @type GroupBy: Array
        # @param OrderBy: 排序字段，可选：sumMemorySeconds, sumVCoreSeconds, sumHDFSBytesWritten, sumHDFSBytesRead
        # @type OrderBy: String
        # @param IsAsc: 是否顺序排序，0-逆序，1-正序
        # @type IsAsc: Integer
        # @param Offset: 页号
        # @type Offset: Integer
        # @param Limit: 页容量，范围为[10,100]
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Queues, :Users, :ApplicationTypes, :GroupBy, :OrderBy, :IsAsc, :Offset, :Limit

        def initialize(instanceid=nil, starttime=nil, endtime=nil, queues=nil, users=nil, applicationtypes=nil, groupby=nil, orderby=nil, isasc=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Queues = queues
          @Users = users
          @ApplicationTypes = applicationtypes
          @GroupBy = groupby
          @OrderBy = orderby
          @IsAsc = isasc
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Queues = params['Queues']
          @Users = params['Users']
          @ApplicationTypes = params['ApplicationTypes']
          @GroupBy = params['GroupBy']
          @OrderBy = params['OrderBy']
          @IsAsc = params['IsAsc']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeEmrApplicationStatics返回参数结构体
      class DescribeEmrApplicationStaticsResponse < TencentCloud::Common::AbstractModel
        # @param Statics: 作业统计信息
        # @type Statics: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Queues: 可选择的队列名
        # @type Queues: Array
        # @param Users: 可选择的用户名
        # @type Users: Array
        # @param ApplicationTypes: 可选择的作业类型
        # @type ApplicationTypes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Statics, :TotalCount, :Queues, :Users, :ApplicationTypes, :RequestId

        def initialize(statics=nil, totalcount=nil, queues=nil, users=nil, applicationtypes=nil, requestid=nil)
          @Statics = statics
          @TotalCount = totalcount
          @Queues = queues
          @Users = users
          @ApplicationTypes = applicationtypes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Statics'].nil?
            @Statics = []
            params['Statics'].each do |i|
              applicationstatics_tmp = ApplicationStatics.new
              applicationstatics_tmp.deserialize(i)
              @Statics << applicationstatics_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Queues = params['Queues']
          @Users = params['Users']
          @ApplicationTypes = params['ApplicationTypes']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEmrOverviewMetrics请求参数结构体
      class DescribeEmrOverviewMetricsRequest < TencentCloud::Common::AbstractModel
        # @param End: 结束时间
        # @type End: Integer
        # @param Metric: 指标名，NODE.CPU：节点平均CPU利用率和总核数；NODE.CPU.SLHBASE：Serverless实例平均CPU利用率和总核数；HDFS.NN.CAPACITY：存储使用率和总量
        # @type Metric: String
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param Downsample: 粒度 30s-max 1m-max 1h-max等
        # @type Downsample: String
        # @param Start: 起始时间，画饼状图时不传
        # @type Start: Integer
        # @param Aggregator: 聚合方法，扩展用，这里目前不用传
        # @type Aggregator: String
        # @param Tags: 指标要查询的具体type 如："{"type":"CapacityTotal|CapacityRemaining"}"
        # @type Tags: String

        attr_accessor :End, :Metric, :InstanceId, :Downsample, :Start, :Aggregator, :Tags

        def initialize(_end=nil, metric=nil, instanceid=nil, downsample=nil, start=nil, aggregator=nil, tags=nil)
          @End = _end
          @Metric = metric
          @InstanceId = instanceid
          @Downsample = downsample
          @Start = start
          @Aggregator = aggregator
          @Tags = tags
        end

        def deserialize(params)
          @End = params['End']
          @Metric = params['Metric']
          @InstanceId = params['InstanceId']
          @Downsample = params['Downsample']
          @Start = params['Start']
          @Aggregator = params['Aggregator']
          @Tags = params['Tags']
        end
      end

      # DescribeEmrOverviewMetrics返回参数结构体
      class DescribeEmrOverviewMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 指标数据明细
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              overviewmetricdata_tmp = OverviewMetricData.new
              overviewmetricdata_tmp.deserialize(i)
              @Result << overviewmetricdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGlobalConfig请求参数结构体
      class DescribeGlobalConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeGlobalConfig返回参数结构体
      class DescribeGlobalConfigResponse < TencentCloud::Common::AbstractModel
        # @param EnableResourceSchedule: 是否开启了资源调度功能
        # @type EnableResourceSchedule: Boolean
        # @param ActiveScheduler: 当前生效的资源调度器
        # @type ActiveScheduler: String
        # @param CapacityGlobalConfig: 公平调度器的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapacityGlobalConfig: :class:`Tencentcloud::Emr.v20190103.models.CapacityGlobalConfig`
        # @param FairGlobalConfig: 容量调度器的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FairGlobalConfig: :class:`Tencentcloud::Emr.v20190103.models.FairGlobalConfig`
        # @param Scheduler: 最新的资源调度器
        # @type Scheduler: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableResourceSchedule, :ActiveScheduler, :CapacityGlobalConfig, :FairGlobalConfig, :Scheduler, :RequestId

        def initialize(enableresourceschedule=nil, activescheduler=nil, capacityglobalconfig=nil, fairglobalconfig=nil, scheduler=nil, requestid=nil)
          @EnableResourceSchedule = enableresourceschedule
          @ActiveScheduler = activescheduler
          @CapacityGlobalConfig = capacityglobalconfig
          @FairGlobalConfig = fairglobalconfig
          @Scheduler = scheduler
          @RequestId = requestid
        end

        def deserialize(params)
          @EnableResourceSchedule = params['EnableResourceSchedule']
          @ActiveScheduler = params['ActiveScheduler']
          unless params['CapacityGlobalConfig'].nil?
            @CapacityGlobalConfig = CapacityGlobalConfig.new
            @CapacityGlobalConfig.deserialize(params['CapacityGlobalConfig'])
          end
          unless params['FairGlobalConfig'].nil?
            @FairGlobalConfig = FairGlobalConfig.new
            @FairGlobalConfig.deserialize(params['FairGlobalConfig'])
          end
          @Scheduler = params['Scheduler']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupsSTD请求参数结构体
      class DescribeGroupsSTDRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群名称
        # @type InstanceId: String
        # @param Filters: 描述键值对过滤器，用于条件过滤查询
        # @type Filters: Array
        # @param OrderFields: 描述排序，用于排序
        # @type OrderFields: :class:`Tencentcloud::Emr.v20190103.models.Order`
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer

        attr_accessor :InstanceId, :Filters, :OrderFields, :Limit, :Offset

        def initialize(instanceid=nil, filters=nil, orderfields=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Filters = filters
          @OrderFields = orderfields
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['OrderFields'].nil?
            @OrderFields = Order.new
            @OrderFields.deserialize(params['OrderFields'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeGroupsSTD返回参数结构体
      class DescribeGroupsSTDResponse < TencentCloud::Common::AbstractModel
        # @param Data: 用户组信息
        # @type Data: Array
        # @param TotalCount: 符合条件的用户组数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              groupinfos_tmp = GroupInfos.new
              groupinfos_tmp.deserialize(i)
              @Data << groupinfos_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHBaseTableOverview请求参数结构体
      class DescribeHBaseTableOverviewRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 页码，第一页:0，第二页:1
        # @type Offset: Integer
        # @param Limit: 分页查询时的分页大小，最小1，最大100
        # @type Limit: Integer
        # @param Table: 表名称，模糊匹配
        # @type Table: String
        # @param OrderField: 排序的字段，有默认值
        # @type OrderField: String
        # @param OrderType: 默认为降序，asc代表升序，desc代表降序
        # @type OrderType: String

        attr_accessor :InstanceId, :Offset, :Limit, :Table, :OrderField, :OrderType

        def initialize(instanceid=nil, offset=nil, limit=nil, table=nil, orderfield=nil, ordertype=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Table = table
          @OrderField = orderfield
          @OrderType = ordertype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Table = params['Table']
          @OrderField = params['OrderField']
          @OrderType = params['OrderType']
        end
      end

      # DescribeHBaseTableOverview返回参数结构体
      class DescribeHBaseTableOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TableMonitorList: 概览数据数组
        # @type TableMonitorList: Array
        # @param TotalCount: 概览数据数组长度
        # @type TotalCount: Integer
        # @param SchemaList: 表schema信息
        # @type SchemaList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableMonitorList, :TotalCount, :SchemaList, :RequestId

        def initialize(tablemonitorlist=nil, totalcount=nil, schemalist=nil, requestid=nil)
          @TableMonitorList = tablemonitorlist
          @TotalCount = totalcount
          @SchemaList = schemalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableMonitorList'].nil?
            @TableMonitorList = []
            params['TableMonitorList'].each do |i|
              overviewrow_tmp = OverviewRow.new
              overviewrow_tmp.deserialize(i)
              @TableMonitorList << overviewrow_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['SchemaList'].nil?
            @SchemaList = []
            params['SchemaList'].each do |i|
              tableschemaitem_tmp = TableSchemaItem.new
              tableschemaitem_tmp.deserialize(i)
              @SchemaList << tableschemaitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHDFSStorageInfo请求参数结构体
      class DescribeHDFSStorageInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param StartTime: 获取查询信息开始时间 (s)
        # @type StartTime: Integer
        # @param EndTime: 获取查询信息结束时间 (s)
        # @type EndTime: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime

        def initialize(instanceid=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeHDFSStorageInfo返回参数结构体
      class DescribeHDFSStorageInfoResponse < TencentCloud::Common::AbstractModel
        # @param SampleTime: 采样时间
        # @type SampleTime: Integer
        # @param StorageSummaryDistribution: hdfs存储详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSummaryDistribution: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SampleTime, :StorageSummaryDistribution, :RequestId

        def initialize(sampletime=nil, storagesummarydistribution=nil, requestid=nil)
          @SampleTime = sampletime
          @StorageSummaryDistribution = storagesummarydistribution
          @RequestId = requestid
        end

        def deserialize(params)
          @SampleTime = params['SampleTime']
          unless params['StorageSummaryDistribution'].nil?
            @StorageSummaryDistribution = []
            params['StorageSummaryDistribution'].each do |i|
              storagesummarydistribution_tmp = StorageSummaryDistribution.new
              storagesummarydistribution_tmp.deserialize(i)
              @StorageSummaryDistribution << storagesummarydistribution_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHiveQueries请求参数结构体
      class DescribeHiveQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 起始时间秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间秒，EndTime-StartTime不得超过1天秒数86400
        # @type EndTime: Integer
        # @param Offset: 分页起始偏移，从0开始
        # @type Offset: Integer
        # @param Limit: 分页大小，合法范围[1,100]
        # @type Limit: Integer
        # @param State: 执行状态,ERROR等
        # @type State: Array
        # @param EndTimeGte: 结束时间大于的时间点
        # @type EndTimeGte: Integer
        # @param EndTimeLte: 结束时间小于时间点
        # @type EndTimeLte: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit, :State, :EndTimeGte, :EndTimeLte

        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, state=nil, endtimegte=nil, endtimelte=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @State = state
          @EndTimeGte = endtimegte
          @EndTimeLte = endtimelte
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @State = params['State']
          @EndTimeGte = params['EndTimeGte']
          @EndTimeLte = params['EndTimeLte']
        end
      end

      # DescribeHiveQueries返回参数结构体
      class DescribeHiveQueriesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Results: 结果列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Results, :RequestId

        def initialize(total=nil, results=nil, requestid=nil)
          @Total = total
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              hivequery_tmp = HiveQuery.new
              hivequery_tmp.deserialize(i)
              @Results << hivequery_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImpalaQueries请求参数结构体
      class DescribeImpalaQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 起始时间秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间秒，EndTime-StartTime不得超过1天秒数86400
        # @type EndTime: Integer
        # @param Offset: 分页起始偏移，从0开始
        # @type Offset: Integer
        # @param Limit: 分页大小，合法范围[1,100]
        # @type Limit: Integer
        # @param State: 执行状态，CREATED、INITIALIZED、COMPILED、RUNNING、FINISHED、EXCEPTION
        # @type State: Array
        # @param EndTimeGte: 结束时间大于的时间点
        # @type EndTimeGte: Integer
        # @param EndTimeLte: 结束时间小于的时间点
        # @type EndTimeLte: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit, :State, :EndTimeGte, :EndTimeLte

        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, state=nil, endtimegte=nil, endtimelte=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @State = state
          @EndTimeGte = endtimegte
          @EndTimeLte = endtimelte
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @State = params['State']
          @EndTimeGte = params['EndTimeGte']
          @EndTimeLte = params['EndTimeLte']
        end
      end

      # DescribeImpalaQueries返回参数结构体
      class DescribeImpalaQueriesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Results: 结果列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Results, :RequestId

        def initialize(total=nil, results=nil, requestid=nil)
          @Total = total
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              impalaquery_tmp = ImpalaQuery.new
              impalaquery_tmp.deserialize(i)
              @Results << impalaquery_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInsightList请求参数结构体
      class DescribeInsightListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 获取的洞察结果开始时间，此时间针对对App或者Hive查询的开始时间的过滤
        # @type StartTime: Integer
        # @param EndTime: 获取的洞察结果结束时间，此时间针对对App或者Hive查询的开始时间的过滤
        # @type EndTime: Integer
        # @param PageSize: 分页查询时的分页大小，最小1，最大100
        # @type PageSize: Integer
        # @param Page: 分页查询时的页号，从1开始
        # @type Page: Integer
        # @param Type: 查询类型,支持HIVE,SPARK,DLC_SPARK,SPARK_SQL,SCHEDULE,MAPREDUCE,TRINO等类型,默认查询全部
        # @type Type: String
        # @param MustHasContext: 是否包含具体参数建议等信息
        # @type MustHasContext: Boolean

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :Page, :Type, :MustHasContext

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, page=nil, type=nil, musthascontext=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @Page = page
          @Type = type
          @MustHasContext = musthascontext
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @Page = params['Page']
          @Type = params['Type']
          @MustHasContext = params['MustHasContext']
        end
      end

      # DescribeInsightList返回参数结构体
      class DescribeInsightListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，分页查询时使用
        # @type TotalCount: Integer
        # @param ResultList: 洞察结果数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResultList, :RequestId

        def initialize(totalcount=nil, resultlist=nil, requestid=nil)
          @TotalCount = totalcount
          @ResultList = resultlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResultList'].nil?
            @ResultList = []
            params['ResultList'].each do |i|
              insightresult_tmp = InsightResult.new
              insightresult_tmp.deserialize(i)
              @ResultList << insightresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInspectionTaskResult请求参数结构体
      class DescribeInspectionTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 类型
        # @type Type: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :InstanceId, :Type, :StartTime, :EndTime, :Limit, :Offset

        def initialize(instanceid=nil, type=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInspectionTaskResult返回参数结构体
      class DescribeInspectionTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param InspectionResultInfo: 巡检任务记录，base64编码
        # @type InspectionResultInfo: String
        # @param Total: 记录总数
        # @type Total: Integer
        # @param TypeInfo: 类别信息，base64编码，{"FixedTime": "定时", "RealTime": "及时"}
        # @type TypeInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InspectionResultInfo, :Total, :TypeInfo, :RequestId

        def initialize(inspectionresultinfo=nil, total=nil, typeinfo=nil, requestid=nil)
          @InspectionResultInfo = inspectionresultinfo
          @Total = total
          @TypeInfo = typeinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @InspectionResultInfo = params['InspectionResultInfo']
          @Total = params['Total']
          @TypeInfo = params['TypeInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceRenewNodes请求参数结构体
      class DescribeInstanceRenewNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID,实例ID形如: emr-xxxxxxxx
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceRenewNodes返回参数结构体
      class DescribeInstanceRenewNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 查询到的节点总数
        # @type TotalCnt: Integer
        # @param NodeList: 节点详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array
        # @param MetaInfo: 用户所有的标签键列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaInfo: Array
        # @param RedisInfo: 集群依赖的Redis实例Id
        # @type RedisInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :NodeList, :MetaInfo, :RedisInfo, :RequestId

        def initialize(totalcnt=nil, nodelist=nil, metainfo=nil, redisinfo=nil, requestid=nil)
          @TotalCnt = totalcnt
          @NodeList = nodelist
          @MetaInfo = metainfo
          @RedisInfo = redisinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              renewinstancesinfo_tmp = RenewInstancesInfo.new
              renewinstancesinfo_tmp.deserialize(i)
              @NodeList << renewinstancesinfo_tmp
            end
          end
          @MetaInfo = params['MetaInfo']
          @RedisInfo = params['RedisInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesList请求参数结构体
      class DescribeInstancesListRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStrategy: 集群筛选策略。取值范围：<li>clusterList：表示查询除了已销毁集群之外的集群列表。</li><li>monitorManage：表示查询除了已销毁、创建中以及创建失败的集群之外的集群列表。</li><li>cloudHardwareManage/componentManage：目前这两个取值为预留取值，暂时和monitorManage表示同样的含义。</li>
        # @type DisplayStrategy: String
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为100，最大值为100。
        # 如果limit和offset都为0，则查询全部记录；
        # @type Limit: Integer
        # @param OrderField: 排序字段。取值范围：<li>clusterId：表示按照实例ID排序。</li><li>addTime：表示按照实例创建时间排序。</li><li>status：表示按照实例的状态码排序。</li>
        # @type OrderField: String
        # @param Asc: 按照OrderField升序或者降序进行排序。取值范围：<li>0：表示升序。</li><li>1：表示降序。</li>默认值为0。
        # @type Asc: Integer
        # @param Filters: 自定义查询过滤器。示例：<li>根据ClusterId过滤实例：[{"Name":"ClusterId","Values":["emr-xxxxxxxx"]}]</li><li>根据clusterName过滤实例：[{"Name": "ClusterName","Values": ["cluster_name"]}]</li><li>根据ClusterStatus过滤实例：[{"Name": "ClusterStatus","Values": ["2"]}]</li>
        # @type Filters: Array
        # @param ClusterType: 默认0为普通集群，2为tke集群
        # @type ClusterType: Integer

        attr_accessor :DisplayStrategy, :Offset, :Limit, :OrderField, :Asc, :Filters, :ClusterType

        def initialize(displaystrategy=nil, offset=nil, limit=nil, orderfield=nil, asc=nil, filters=nil, clustertype=nil)
          @DisplayStrategy = displaystrategy
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Asc = asc
          @Filters = filters
          @ClusterType = clustertype
        end

        def deserialize(params)
          @DisplayStrategy = params['DisplayStrategy']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Asc = params['Asc']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @ClusterType = params['ClusterType']
        end
      end

      # DescribeInstancesList返回参数结构体
      class DescribeInstancesListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 符合条件的实例总数。
        # @type TotalCnt: Integer
        # @param InstancesList: 集群实例列表
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :InstancesList, :RequestId

        def initialize(totalcnt=nil, instanceslist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              emrlistinstance_tmp = EmrListInstance.new
              emrlistinstance_tmp.deserialize(i)
              @InstancesList << emrlistinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStrategy: 集群筛选策略。取值范围：
        # <li>clusterList：表示查询除了已销毁集群之外的集群列表。</li>
        # <li>monitorManage：表示查询除了已销毁、创建中以及创建失败的集群之外的集群列表。</li>
        # <li>cloudHardwareManage/componentManage：目前这两个取值为预留取值，暂时和monitorManage表示同样的含义。</li>
        # @type DisplayStrategy: String
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如: emr-xxxxxxxx 。(此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的 Ids.N 一节)。如果不填写实例ID，返回该APPID下所有实例列表。
        # @type InstanceIds: Array
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为100，最大值为100。
        # @type Limit: Integer
        # @param ProjectId: 建议必填-1，表示拉取所有项目下的集群。
        # 不填默认值为0，表示拉取默认项目下的集群。
        # 实例所属项目ID。该参数可以通过调用 [DescribeProjects](https://cloud.tencent.com/document/product/651/78725) 的返回值中的 projectId 字段来获取。
        # @type ProjectId: Integer
        # @param OrderField: 排序字段。取值范围：
        # <li>clusterId：表示按照实例ID排序。</li>
        # <li>addTime：表示按照实例创建时间排序。</li>
        # <li>status：表示按照实例的状态码排序。</li>
        # @type OrderField: String
        # @param Asc: 按照OrderField升序或者降序进行排序。取值范围：
        # <li>0：表示降序。</li>
        # <li>1：表示升序。</li>默认值为0。
        # @type Asc: Integer

        attr_accessor :DisplayStrategy, :InstanceIds, :Offset, :Limit, :ProjectId, :OrderField, :Asc

        def initialize(displaystrategy=nil, instanceids=nil, offset=nil, limit=nil, projectid=nil, orderfield=nil, asc=nil)
          @DisplayStrategy = displaystrategy
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
          @ProjectId = projectid
          @OrderField = orderfield
          @Asc = asc
        end

        def deserialize(params)
          @DisplayStrategy = params['DisplayStrategy']
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectId = params['ProjectId']
          @OrderField = params['OrderField']
          @Asc = params['Asc']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 符合条件的实例总数。
        # @type TotalCnt: Integer
        # @param ClusterList: EMR实例详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterList: Array
        # @param TagKeys: 实例关联的标签键列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKeys: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :ClusterList, :TagKeys, :RequestId

        def initialize(totalcnt=nil, clusterlist=nil, tagkeys=nil, requestid=nil)
          @TotalCnt = totalcnt
          @ClusterList = clusterlist
          @TagKeys = tagkeys
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              clusterinstancesinfo_tmp = ClusterInstancesInfo.new
              clusterinstancesinfo_tmp.deserialize(i)
              @ClusterList << clusterinstancesinfo_tmp
            end
          end
          @TagKeys = params['TagKeys']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobFlow请求参数结构体
      class DescribeJobFlowRequest < TencentCloud::Common::AbstractModel
        # @param JobFlowId: 流程任务Id，RunJobFlow接口返回的值。
        # @type JobFlowId: Integer

        attr_accessor :JobFlowId

        def initialize(jobflowid=nil)
          @JobFlowId = jobflowid
        end

        def deserialize(params)
          @JobFlowId = params['JobFlowId']
        end
      end

      # DescribeJobFlow返回参数结构体
      class DescribeJobFlowResponse < TencentCloud::Common::AbstractModel
        # @param State: 流程任务状态，可以为以下值：
        # JobFlowInit，流程任务初始化。
        # JobFlowResourceApplied，资源申请中，通常为JobFlow需要新建集群时的状态。
        # JobFlowResourceReady，执行流程任务的资源就绪。
        # JobFlowStepsRunning，流程任务步骤已提交。
        # JobFlowStepsComplete，流程任务步骤已完成。
        # JobFlowTerminating，流程任务所需资源销毁中。
        # JobFlowFinish，流程任务已完成。
        # @type State: String
        # @param Details: 流程任务步骤结果。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :Details, :RequestId

        def initialize(state=nil, details=nil, requestid=nil)
          @State = state
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              jobresult_tmp = JobResult.new
              jobresult_tmp.deserialize(i)
              @Details << jobresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKyuubiQueryInfo请求参数结构体
      class DescribeKyuubiQueryInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 获取查询信息开始时间 (s)
        # @type StartTime: Integer
        # @param EndTime: 获取查询信息结束时间 (s)
        # @type EndTime: Integer
        # @param PageSize: 分页查询时的分页大小，最小1，最大100
        # @type PageSize: Integer
        # @param Page: 分页查询时的页号，从1开始
        # @type Page: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :Page

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, page=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @Page = page
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @Page = params['Page']
        end
      end

      # DescribeKyuubiQueryInfo返回参数结构体
      class DescribeKyuubiQueryInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，分页查询时使用
        # @type TotalCount: Integer
        # @param KyuubiQueryInfoList: Kyuubi查询信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KyuubiQueryInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KyuubiQueryInfoList, :RequestId

        def initialize(totalcount=nil, kyuubiqueryinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @KyuubiQueryInfoList = kyuubiqueryinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KyuubiQueryInfoList'].nil?
            @KyuubiQueryInfoList = []
            params['KyuubiQueryInfoList'].each do |i|
              kyuubiqueryinfo_tmp = KyuubiQueryInfo.new
              kyuubiqueryinfo_tmp.deserialize(i)
              @KyuubiQueryInfoList << kyuubiqueryinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodeDataDisks请求参数结构体
      class DescribeNodeDataDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: EMR集群实例ID
        # @type InstanceId: String
        # @param CvmInstanceIds: 节点CVM实例Id列表
        # @type CvmInstanceIds: Array
        # @param Filters: 查询云盘的过滤条件
        # @type Filters: Array
        # @param InnerSearch: 模糊搜索
        # @type InnerSearch: String
        # @param Limit: 每页返回数量，默认值为100，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移值
        # @type Offset: Integer
        # @param Scene: 场景值：
        # ModifyDiskExtraPerformance ：调整数据盘额外性能
        # @type Scene: String

        attr_accessor :InstanceId, :CvmInstanceIds, :Filters, :InnerSearch, :Limit, :Offset, :Scene

        def initialize(instanceid=nil, cvminstanceids=nil, filters=nil, innersearch=nil, limit=nil, offset=nil, scene=nil)
          @InstanceId = instanceid
          @CvmInstanceIds = cvminstanceids
          @Filters = filters
          @InnerSearch = innersearch
          @Limit = limit
          @Offset = offset
          @Scene = scene
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CvmInstanceIds = params['CvmInstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @InnerSearch = params['InnerSearch']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Scene = params['Scene']
        end
      end

      # DescribeNodeDataDisks返回参数结构体
      class DescribeNodeDataDisksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param CBSList: 云盘列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CBSList: Array
        # @param MaxSize: 云盘最大容量
        # @type MaxSize: Integer
        # @param MaxThroughputPerformance: 云硬盘最大额外性能值
        # @type MaxThroughputPerformance: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CBSList, :MaxSize, :MaxThroughputPerformance, :RequestId

        def initialize(totalcount=nil, cbslist=nil, maxsize=nil, maxthroughputperformance=nil, requestid=nil)
          @TotalCount = totalcount
          @CBSList = cbslist
          @MaxSize = maxsize
          @MaxThroughputPerformance = maxthroughputperformance
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CBSList'].nil?
            @CBSList = []
            params['CBSList'].each do |i|
              cbsinstance_tmp = CBSInstance.new
              cbsinstance_tmp.deserialize(i)
              @CBSList << cbsinstance_tmp
            end
          end
          @MaxSize = params['MaxSize']
          @MaxThroughputPerformance = params['MaxThroughputPerformance']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNodeResourceConfigFast请求参数结构体
      class DescribeNodeResourceConfigFastRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param ResourceType: 节点类型 CORE TASK ROUTER ALL
        # @type ResourceType: String
        # @param PayMode: 计费类型
        # @type PayMode: Integer
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String
        # @param HardwareResourceType: 硬件类型
        # @type HardwareResourceType: String

        attr_accessor :InstanceId, :ResourceType, :PayMode, :ZoneId, :ResourceBaseType, :ComputeResourceId, :HardwareResourceType

        def initialize(instanceid=nil, resourcetype=nil, paymode=nil, zoneid=nil, resourcebasetype=nil, computeresourceid=nil, hardwareresourcetype=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @PayMode = paymode
          @ZoneId = zoneid
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
          @HardwareResourceType = hardwareresourcetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @PayMode = params['PayMode']
          @ZoneId = params['ZoneId']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
          @HardwareResourceType = params['HardwareResourceType']
        end
      end

      # DescribeNodeResourceConfigFast返回参数结构体
      class DescribeNodeResourceConfigFastResponse < TencentCloud::Common::AbstractModel
        # @param Data: DescribeResourceConfig接口返回值
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              describeresourceconfig_tmp = DescribeResourceConfig.new
              describeresourceconfig_tmp.deserialize(i)
              @Data << describeresourceconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 节点规格
      class DescribeNodeSpec < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型
        # @type NodeType: String
        # @param NodeName: 节点类型名称
        # @type NodeName: String
        # @param Types: Types数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Types: Array
        # @param CmnTypes: 云托管节点机型规格列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CmnTypes: Array

        attr_accessor :NodeType, :NodeName, :Types, :CmnTypes

        def initialize(nodetype=nil, nodename=nil, types=nil, cmntypes=nil)
          @NodeType = nodetype
          @NodeName = nodename
          @Types = types
          @CmnTypes = cmntypes
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeName = params['NodeName']
          unless params['Types'].nil?
            @Types = []
            params['Types'].each do |i|
              nodespectype_tmp = NodeSpecType.new
              nodespectype_tmp.deserialize(i)
              @Types << nodespectype_tmp
            end
          end
          unless params['CmnTypes'].nil?
            @CmnTypes = []
            params['CmnTypes'].each do |i|
              nodespectype_tmp = NodeSpecType.new
              nodespectype_tmp.deserialize(i)
              @CmnTypes << nodespectype_tmp
            end
          end
        end
      end

      # DescribeNodeSpec请求参数结构体
      class DescribeNodeSpecRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区Id，可以通过https://document.capi.woa.com/document/api/1605/76892查询相关信息
        # @type ZoneId: Integer
        # @param CvmPayMode: 0,按量，1包年包月，99按量+包年包月，错填将不会展示费用信息
        # @type CvmPayMode: Integer
        # @param NodeType: 节点类型,Master,Core,Task,Router,All
        # @type NodeType: String
        # @param TradeType: 0:旧计费页面,1:新计费页面。 错填，默认为旧计费
        # @type TradeType: Integer
        # @param ProductId: 产品Id，不填为0，则表示所有productId，前台使用必填

        # 44	EMR	V3.5.0
        # 43	EMR	V3.4.0.tlinux
        # 42	EMR	V2.7.0.tlinux
        # 41	DRUID	V1.1.0
        # 67	STARROCKS	V2.2.0
        # 45	DRUID	V1.1.0.tlinux
        # 40	EMRCLOUD	v3.2.0
        # 47	EMR	V4.0.0
        # 48	STARROCKS	V1.2.0
        # 49	STARROCKS	V1.3.0
        # 50	KAFKA	V2.0.0
        # 51	STARROCKS	V1.4.0
        # 52	EMR-TKE	V1.0.0
        # 53	EMR	V3.6.0
        # 54	STARROCKS	V2.0.0
        # 55	EMR-TKE	V1.0.1
        # 56	EMR-TKE	DLCV1.0.0
        # 57	EMR	V2.8.0
        # 58	EMR	V3.6.1
        # 59	SERVERLESS	V1.0.0
        # 60	EMR-TKE	V1.1.0
        # 62	STARROCKS	V2.1.1
        # 63	STARROCKS	V2.1.1.tlinux
        # 64	EMR-TKE	TCCV1.0.0
        # 65	EMR-TKE-AI	V1.0.0
        # 66	RSS	V1.0.0
        # 24	EMR	TianQiong-V1.0.0
        # 3	EMR	V2.0.1.tlinux
        # 4	EMR	V2.1.0
        # 7	EMR	V3.0.0
        # 8	EMR	V3.0.0.tlinux
        # 9	EMR	V2.2.0
        # 11	CLICKHOUSE	V1.0.0
        # 12	CLICKHOUSE	V1.0.0.tlinux
        # 16	EMR	V2.3.0
        # 17	CLICKHOUSE	V1.1.0
        # 18	CLICKHOUSE	V1.1.0.tlinux
        # 19	EMR	V2.4.0
        # 20	EMR	V2.5.0
        # 21	USERCUSTOM	V1.0.0
        # 22	CLICKHOUSE	V1.2.0
        # 39	STARROCKS	V1.1.0
        # 25	EMR	V3.1.0
        # 26	DORIS	V1.0.0
        # 27	KAFKA	V1.0.0
        # 28	EMR	V3.2.0
        # 29	EMR	V2.5.1
        # 30	EMR	V2.6.0
        # 32	DORIS	V1.1.0
        # 33	EMR	V3.2.1
        # 34	EMR	V3.3.0
        # 35	DORIS	V1.2.0
        # 36	STARROCKS	V1.0.0
        # 37	EMR	V3.4.0
        # 38	EMR	V2.7.0
        # @type ProductId: Integer
        # @param SceneName: 场景名
        # @type SceneName: String
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String

        attr_accessor :ZoneId, :CvmPayMode, :NodeType, :TradeType, :ProductId, :SceneName, :ResourceBaseType, :ComputeResourceId

        def initialize(zoneid=nil, cvmpaymode=nil, nodetype=nil, tradetype=nil, productid=nil, scenename=nil, resourcebasetype=nil, computeresourceid=nil)
          @ZoneId = zoneid
          @CvmPayMode = cvmpaymode
          @NodeType = nodetype
          @TradeType = tradetype
          @ProductId = productid
          @SceneName = scenename
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CvmPayMode = params['CvmPayMode']
          @NodeType = params['NodeType']
          @TradeType = params['TradeType']
          @ProductId = params['ProductId']
          @SceneName = params['SceneName']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
        end
      end

      # DescribeNodeSpec返回参数结构体
      class DescribeNodeSpecResponse < TencentCloud::Common::AbstractModel
        # @param NodeSpecs: 节点规格类型
        # @type NodeSpecs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeSpecs, :RequestId

        def initialize(nodespecs=nil, requestid=nil)
          @NodeSpecs = nodespecs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodeSpecs'].nil?
            @NodeSpecs = []
            params['NodeSpecs'].each do |i|
              describenodespec_tmp = DescribeNodeSpec.new
              describenodespec_tmp.deserialize(i)
              @NodeSpecs << describenodespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceConfig接口出参
      class DescribeResourceConfig < TencentCloud::Common::AbstractModel
        # @param ResourceType: 规格管理类型
        # @type ResourceType: String
        # @param ResourceData: 规格管理数据
        # @type ResourceData: Array

        attr_accessor :ResourceType, :ResourceData

        def initialize(resourcetype=nil, resourcedata=nil)
          @ResourceType = resourcetype
          @ResourceData = resourcedata
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['ResourceData'].nil?
            @ResourceData = []
            params['ResourceData'].each do |i|
              noderesource_tmp = NodeResource.new
              noderesource_tmp.deserialize(i)
              @ResourceData << noderesource_tmp
            end
          end
        end
      end

      # DescribeResourceScheduleDiffDetail请求参数结构体
      class DescribeResourceScheduleDiffDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param Scheduler: 查询的变更明细对应的调度器，可选值为fair、capacity。如果不传或者传空会使用最新的调度器
        # @type Scheduler: String

        attr_accessor :InstanceId, :Scheduler

        def initialize(instanceid=nil, scheduler=nil)
          @InstanceId = instanceid
          @Scheduler = scheduler
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Scheduler = params['Scheduler']
        end
      end

      # DescribeResourceScheduleDiffDetail返回参数结构体
      class DescribeResourceScheduleDiffDetailResponse < TencentCloud::Common::AbstractModel
        # @param Details: 变化项的明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :RequestId

        def initialize(details=nil, requestid=nil)
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              diffdetail_tmp = DiffDetail.new
              diffdetail_tmp.deserialize(i)
              @Details << diffdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceSchedule请求参数结构体
      class DescribeResourceScheduleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeResourceSchedule返回参数结构体
      class DescribeResourceScheduleResponse < TencentCloud::Common::AbstractModel
        # @param OpenSwitch: 资源调度功能是否开启
        # @type OpenSwitch: Boolean
        # @param Scheduler: 正在使用的资源调度器
        # @type Scheduler: String
        # @param FSInfo: 公平调度器的信息
        # @type FSInfo: String
        # @param CSInfo: 容量调度器的信息
        # @type CSInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OpenSwitch, :Scheduler, :FSInfo, :CSInfo, :RequestId

        def initialize(openswitch=nil, scheduler=nil, fsinfo=nil, csinfo=nil, requestid=nil)
          @OpenSwitch = openswitch
          @Scheduler = scheduler
          @FSInfo = fsinfo
          @CSInfo = csinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @OpenSwitch = params['OpenSwitch']
          @Scheduler = params['Scheduler']
          @FSInfo = params['FSInfo']
          @CSInfo = params['CSInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSLInstanceList请求参数结构体
      class DescribeSLInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStrategy: 实例筛选策略。取值范围：<li>clusterList：表示查询除了已销毁实例之外的实例列表。</li><li>monitorManage：表示查询除了已销毁、创建中以及创建失败的实例之外的实例列表。</li>
        # @type DisplayStrategy: String
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为10，最大值为100。
        # @type Limit: Integer
        # @param OrderField: 排序字段。取值范围：<li>clusterId：表示按照实例ID排序。</li><li>addTime：表示按照实例创建时间排序。</li><li>status：表示按照实例的状态码排序。</li>
        # @type OrderField: String
        # @param Asc: 按照OrderField升序或者降序进行排序。取值范围：<li>0：表示升序。</li><li>1：表示降序。</li>默认值为0。
        # @type Asc: Integer
        # @param Filters: 自定义查询过滤器。示例：<li>根据ClusterId过滤实例：[{"Name":"ClusterId","Values":["emr-xxxxxxxx"]}]</li><li>根据clusterName过滤实例：[{"Name": "ClusterName","Values": ["cluster_name"]}]</li><li>根据ClusterStatus过滤实例：[{"Name": "ClusterStatus","Values": ["2"]}]</li>
        # @type Filters: Array

        attr_accessor :DisplayStrategy, :Offset, :Limit, :OrderField, :Asc, :Filters

        def initialize(displaystrategy=nil, offset=nil, limit=nil, orderfield=nil, asc=nil, filters=nil)
          @DisplayStrategy = displaystrategy
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Asc = asc
          @Filters = filters
        end

        def deserialize(params)
          @DisplayStrategy = params['DisplayStrategy']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Asc = params['Asc']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeSLInstanceList返回参数结构体
      class DescribeSLInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 符合条件的实例总数。
        # @type TotalCnt: Integer
        # @param InstancesList: 实例信息列表，如果进行了分页，只显示当前分页的示例信息列表。
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :InstancesList, :RequestId

        def initialize(totalcnt=nil, instanceslist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              slinstanceinfo_tmp = SLInstanceInfo.new
              slinstanceinfo_tmp.deserialize(i)
              @InstancesList << slinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSLInstance请求参数结构体
      class DescribeSLInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一标识符（字符串表示）
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeSLInstance返回参数结构体
      class DescribeSLInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例字符串标识。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param PayMode: 实例计费模式。0表示后付费，即按量计费，1表示预付费，即包年包月。
        # @type PayMode: Integer
        # @param DiskType: 实例存储类型。
        # @type DiskType: String
        # @param DiskSize: 实例单节点磁盘容量，单位GB。
        # @type DiskSize: Integer
        # @param NodeType: 实例节点规格。
        # @type NodeType: String
        # @param ZoneSettings: 实例可用区详细配置，包含可用区名称，VPC信息、节点数量。
        # @type ZoneSettings: Array
        # @param Tags: 实例绑定的标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ClusterId: 实例数字标识。
        # @type ClusterId: Integer
        # @param RegionId: 实例区域ID。
        # @type RegionId: Integer
        # @param Zone: 实例主可用区。
        # @type Zone: String
        # @param ExpireTime: 实例过期时间，后付费返回0000-00-00 00:00:00
        # @type ExpireTime: String
        # @param IsolateTime: 实例隔离时间，未隔离返回0000-00-00 00:00:00。
        # @type IsolateTime: String
        # @param CreateTime: 实例创建时间。
        # @type CreateTime: String
        # @param Status: 实例状态码，-2:  "TERMINATED", 2:   "RUNNING", 14:  "TERMINATING", 19:  "ISOLATING", 22:  "ADJUSTING", 201: "ISOLATED"。
        # @type Status: Integer
        # @param AutoRenewFlag: 自动续费标记， 0：表示通知即将过期，但不自动续费 1：表示通知即将过期，而且自动续费 2：表示不通知即将过期，也不自动续费，若业务无续费概念为0
        # @type AutoRenewFlag: Integer
        # @param NodeNum: 实例节点总数。
        # @type NodeNum: Integer
        # @param SLInstance: Serverless Instance infomation
        # @type SLInstance: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :PayMode, :DiskType, :DiskSize, :NodeType, :ZoneSettings, :Tags, :ClusterId, :RegionId, :Zone, :ExpireTime, :IsolateTime, :CreateTime, :Status, :AutoRenewFlag, :NodeNum, :SLInstance, :RequestId

        def initialize(instanceid=nil, instancename=nil, paymode=nil, disktype=nil, disksize=nil, nodetype=nil, zonesettings=nil, tags=nil, clusterid=nil, regionid=nil, zone=nil, expiretime=nil, isolatetime=nil, createtime=nil, status=nil, autorenewflag=nil, nodenum=nil, slinstance=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @PayMode = paymode
          @DiskType = disktype
          @DiskSize = disksize
          @NodeType = nodetype
          @ZoneSettings = zonesettings
          @Tags = tags
          @ClusterId = clusterid
          @RegionId = regionid
          @Zone = zone
          @ExpireTime = expiretime
          @IsolateTime = isolatetime
          @CreateTime = createtime
          @Status = status
          @AutoRenewFlag = autorenewflag
          @NodeNum = nodenum
          @SLInstance = slinstance
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @NodeType = params['NodeType']
          unless params['ZoneSettings'].nil?
            @ZoneSettings = []
            params['ZoneSettings'].each do |i|
              zonesetting_tmp = ZoneSetting.new
              zonesetting_tmp.deserialize(i)
              @ZoneSettings << zonesetting_tmp
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
          @ClusterId = params['ClusterId']
          @RegionId = params['RegionId']
          @Zone = params['Zone']
          @ExpireTime = params['ExpireTime']
          @IsolateTime = params['IsolateTime']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @AutoRenewFlag = params['AutoRenewFlag']
          @NodeNum = params['NodeNum']
          unless params['SLInstance'].nil?
            @SLInstance = []
            params['SLInstance'].each do |i|
              slinstance_tmp = SLInstance.new
              slinstance_tmp.deserialize(i)
              @SLInstance << slinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceConfGroupInfos请求参数结构体
      class DescribeServiceConfGroupInfosRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param ServiceName: 组件名
        # @type ServiceName: String
        # @param ConfGroupName: 配置组名称
        # @type ConfGroupName: String
        # @param PageNo: 页码，从1开始
        # @type PageNo: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :InstanceId, :ServiceName, :ConfGroupName, :PageNo, :PageSize

        def initialize(instanceid=nil, servicename=nil, confgroupname=nil, pageno=nil, pagesize=nil)
          @InstanceId = instanceid
          @ServiceName = servicename
          @ConfGroupName = confgroupname
          @PageNo = pageno
          @PageSize = pagesize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceName = params['ServiceName']
          @ConfGroupName = params['ConfGroupName']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
        end
      end

      # DescribeServiceConfGroupInfos返回参数结构体
      class DescribeServiceConfGroupInfosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表大小
        # @type TotalCount: Integer
        # @param ConfItemKVList: 配置项key value列表
        # @type ConfItemKVList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfItemKVList, :RequestId

        def initialize(totalcount=nil, confitemkvlist=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfItemKVList = confitemkvlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfItemKVList'].nil?
            @ConfItemKVList = []
            params['ConfItemKVList'].each do |i|
              configurationitem_tmp = ConfigurationItem.new
              configurationitem_tmp.deserialize(i)
              @ConfItemKVList << configurationitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceNodeInfos请求参数结构体
      class DescribeServiceNodeInfosRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 页大小
        # @type Limit: Integer
        # @param SearchText: 搜索字段
        # @type SearchText: String
        # @param ConfStatus: '配置状态，-2：配置失败，-1:配置过期，1：已同步', -99 '全部'
        # @type ConfStatus: Integer
        # @param MaintainStateId: 过滤条件：维护状态
        # 0代表所有状态
        # 1代表正常模式
        # 2代表维护模式
        # @type MaintainStateId: Integer
        # @param OperatorStateId: 过滤条件：操作状态
        # 0代表所有状态
        # 1代表已启动
        # 2代表已停止
        # @type OperatorStateId: Integer
        # @param HealthStateId: 过滤条件：健康状态
        # "0"代表不可用
        # "1"代表良好
        # "-2"代表未知
        # "-99"代表所有
        # "-3"代表存在隐患
        # "-4"代表未探测
        # @type HealthStateId: String
        # @param ServiceName: 服务组件名称，都是大写例如YARN
        # @type ServiceName: String
        # @param NodeTypeName: 节点名称master,core,task,common,router
        # @type NodeTypeName: String
        # @param DataNodeMaintenanceId: 过滤条件：dn是否处于维护状态
        # 0代表所有状态
        # 1代表处于维护状态
        # @type DataNodeMaintenanceId: Integer
        # @param SearchFields: 支持搜索的字段，目前支持 SearchType	：ipv4
        # @type SearchFields: Array

        attr_accessor :InstanceId, :Offset, :Limit, :SearchText, :ConfStatus, :MaintainStateId, :OperatorStateId, :HealthStateId, :ServiceName, :NodeTypeName, :DataNodeMaintenanceId, :SearchFields

        def initialize(instanceid=nil, offset=nil, limit=nil, searchtext=nil, confstatus=nil, maintainstateid=nil, operatorstateid=nil, healthstateid=nil, servicename=nil, nodetypename=nil, datanodemaintenanceid=nil, searchfields=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @SearchText = searchtext
          @ConfStatus = confstatus
          @MaintainStateId = maintainstateid
          @OperatorStateId = operatorstateid
          @HealthStateId = healthstateid
          @ServiceName = servicename
          @NodeTypeName = nodetypename
          @DataNodeMaintenanceId = datanodemaintenanceid
          @SearchFields = searchfields
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchText = params['SearchText']
          @ConfStatus = params['ConfStatus']
          @MaintainStateId = params['MaintainStateId']
          @OperatorStateId = params['OperatorStateId']
          @HealthStateId = params['HealthStateId']
          @ServiceName = params['ServiceName']
          @NodeTypeName = params['NodeTypeName']
          @DataNodeMaintenanceId = params['DataNodeMaintenanceId']
          unless params['SearchFields'].nil?
            @SearchFields = []
            params['SearchFields'].each do |i|
              searchitem_tmp = SearchItem.new
              searchitem_tmp.deserialize(i)
              @SearchFields << searchitem_tmp
            end
          end
        end
      end

      # DescribeServiceNodeInfos返回参数结构体
      class DescribeServiceNodeInfosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 总数量
        # @type TotalCnt: Integer
        # @param ServiceNodeList: 进程信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNodeList: Array
        # @param AliasInfo: 集群所有节点的别名序列化
        # @type AliasInfo: String
        # @param SupportNodeFlagFilterList: 支持的FlagNode列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportNodeFlagFilterList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :ServiceNodeList, :AliasInfo, :SupportNodeFlagFilterList, :RequestId

        def initialize(totalcnt=nil, servicenodelist=nil, aliasinfo=nil, supportnodeflagfilterlist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @ServiceNodeList = servicenodelist
          @AliasInfo = aliasinfo
          @SupportNodeFlagFilterList = supportnodeflagfilterlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['ServiceNodeList'].nil?
            @ServiceNodeList = []
            params['ServiceNodeList'].each do |i|
              servicenodedetailinfo_tmp = ServiceNodeDetailInfo.new
              servicenodedetailinfo_tmp.deserialize(i)
              @ServiceNodeList << servicenodedetailinfo_tmp
            end
          end
          @AliasInfo = params['AliasInfo']
          @SupportNodeFlagFilterList = params['SupportNodeFlagFilterList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkApplications请求参数结构体
      class DescribeSparkApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间
        # @type EndTime: Integer
        # @param PageSize: 每一页条数
        # @type PageSize: Integer
        # @param Page: 第几页
        # @type Page: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :Page

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, page=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @Page = page
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @Page = params['Page']
        end
      end

      # DescribeSparkApplications返回参数结构体
      class DescribeSparkApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回数量
        # @type TotalCount: Integer
        # @param ResultList: spark应用列表
        # @type ResultList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResultList, :RequestId

        def initialize(totalcount=nil, resultlist=nil, requestid=nil)
          @TotalCount = totalcount
          @ResultList = resultlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResultList'].nil?
            @ResultList = []
            params['ResultList'].each do |i|
              sparkapplicationslist_tmp = SparkApplicationsList.new
              sparkapplicationslist_tmp.deserialize(i)
              @ResultList << sparkapplicationslist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkQueries请求参数结构体
      class DescribeSparkQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Offset: 分页起始偏移，从0开始
        # @type Offset: Integer
        # @param Limit: 分页大小，合法范围[1,100]
        # @type Limit: Integer
        # @param Status: 执行状态:RUNNING,COMPLETED,FAILED
        # @type Status: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit, :Status

        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, status=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
        end
      end

      # DescribeSparkQueries返回参数结构体
      class DescribeSparkQueriesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Results: 结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Results, :RequestId

        def initialize(total=nil, results=nil, requestid=nil)
          @Total = total
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              sparkquery_tmp = SparkQuery.new
              sparkquery_tmp.deserialize(i)
              @Results << sparkquery_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStarRocksQueryInfo请求参数结构体
      class DescribeStarRocksQueryInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 获取查询信息开始时间 (s)
        # @type StartTime: Integer
        # @param EndTime: 获取查询信息结束时间 (s)
        # @type EndTime: Integer
        # @param PageSize: 分页查询时的分页大小，最小1，最大100
        # @type PageSize: Integer
        # @param Page: 分页查询时的页号，从1开始
        # @type Page: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :Page

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, page=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @Page = page
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @Page = params['Page']
        end
      end

      # DescribeStarRocksQueryInfo返回参数结构体
      class DescribeStarRocksQueryInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，分页查询时使用
        # @type TotalCount: Integer
        # @param StarRocksQueryInfoList: Starrocks 查询信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StarRocksQueryInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StarRocksQueryInfoList, :RequestId

        def initialize(totalcount=nil, starrocksqueryinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @StarRocksQueryInfoList = starrocksqueryinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StarRocksQueryInfoList'].nil?
            @StarRocksQueryInfoList = []
            params['StarRocksQueryInfoList'].each do |i|
              starrocksqueryinfo_tmp = StarRocksQueryInfo.new
              starrocksqueryinfo_tmp.deserialize(i)
              @StarRocksQueryInfoList << starrocksqueryinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrinoQueryInfo请求参数结构体
      class DescribeTrinoQueryInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 获取查询信息开始时间 (s)
        # @type StartTime: Integer
        # @param EndTime: 获取查询信息结束时间 (s)
        # @type EndTime: Integer
        # @param PageSize: 分页查询时的分页大小，最小1，最大100
        # @type PageSize: Integer
        # @param Page: 分页查询时的页号，从1开始
        # @type Page: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :Page

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, page=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @Page = page
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @Page = params['Page']
        end
      end

      # DescribeTrinoQueryInfo返回参数结构体
      class DescribeTrinoQueryInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数，分页查询时使用
        # @type TotalCount: Integer
        # @param QueryInfoList: 查询结果数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :QueryInfoList, :RequestId

        def initialize(totalcount=nil, queryinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @QueryInfoList = queryinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['QueryInfoList'].nil?
            @QueryInfoList = []
            params['QueryInfoList'].each do |i|
              trinoqueryinfo_tmp = TrinoQueryInfo.new
              trinoqueryinfo_tmp.deserialize(i)
              @QueryInfoList << trinoqueryinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsersForUserManager请求参数结构体
      class DescribeUsersForUserManagerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 分页的大小。
        # 默认查询全部；PageNo和PageSize不合理的设置，都是查询全部
        # @type PageSize: Integer
        # @param UserManagerFilter: 查询用户列表过滤器
        # @type UserManagerFilter: :class:`Tencentcloud::Emr.v20190103.models.UserManagerFilter`
        # @param NeedKeytabInfo: 是否需要keytab文件的信息，仅对开启kerberos的集群有效，默认为false
        # @type NeedKeytabInfo: Boolean

        attr_accessor :InstanceId, :PageNo, :PageSize, :UserManagerFilter, :NeedKeytabInfo

        def initialize(instanceid=nil, pageno=nil, pagesize=nil, usermanagerfilter=nil, needkeytabinfo=nil)
          @InstanceId = instanceid
          @PageNo = pageno
          @PageSize = pagesize
          @UserManagerFilter = usermanagerfilter
          @NeedKeytabInfo = needkeytabinfo
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          unless params['UserManagerFilter'].nil?
            @UserManagerFilter = UserManagerFilter.new
            @UserManagerFilter.deserialize(params['UserManagerFilter'])
          end
          @NeedKeytabInfo = params['NeedKeytabInfo']
        end
      end

      # DescribeUsersForUserManager返回参数结构体
      class DescribeUsersForUserManagerResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 总数
        # @type TotalCnt: Integer
        # @param UserManagerUserList: 用户信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserManagerUserList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :UserManagerUserList, :RequestId

        def initialize(totalcnt=nil, usermanageruserlist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @UserManagerUserList = usermanageruserlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['UserManagerUserList'].nil?
            @UserManagerUserList = []
            params['UserManagerUserList'].each do |i|
              usermanageruserbriefinfo_tmp = UserManagerUserBriefInfo.new
              usermanageruserbriefinfo_tmp.deserialize(i)
              @UserManagerUserList << usermanageruserbriefinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeYarnApplications请求参数结构体
      class DescribeYarnApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param StartTime: 起始时间秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间秒，EndTime-StartTime不得超过1天秒数86400
        # @type EndTime: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页；如果limit=100，Offset=1，则表示第二页，数据第101条开始查询，返回100条数据；如果limit=100，Offset=2，则表示第三页，数据第201条开始查询，返回100条数据。依次类推
        # @type Offset: Integer
        # @param Limit: 分页大小，合法范围[1,100]
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit

        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeYarnApplications返回参数结构体
      class DescribeYarnApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Results: 结果列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Results, :RequestId

        def initialize(total=nil, results=nil, requestid=nil)
          @Total = total
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              yarnapplication_tmp = YarnApplication.new
              yarnapplication_tmp.deserialize(i)
              @Results << yarnapplication_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeYarnQueue请求参数结构体
      class DescribeYarnQueueRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群Id
        # @type InstanceId: String
        # @param Scheduler: 调度器，可选值：

        # 1. capacity
        # 2. fair
        # @type Scheduler: String

        attr_accessor :InstanceId, :Scheduler

        def initialize(instanceid=nil, scheduler=nil)
          @InstanceId = instanceid
          @Scheduler = scheduler
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Scheduler = params['Scheduler']
        end
      end

      # DescribeYarnQueue返回参数结构体
      class DescribeYarnQueueResponse < TencentCloud::Common::AbstractModel
        # @param Queue: 队列信息。是一个对象转成的json字符串，对应的golang结构体如下所示，例如`QueueWithConfigSetForFairScheduler`的第一个字段`Name`：```Name                         string                               `json:"name"` //队列名称```- `Name`：字段名- `string`：字段类型- `json:"name"`：表示在序列化和反序列化`json`时，对应的`json key`，下面以`json key`来指代- `//`：后面的注释内容对应页面上看到的名称字段类型以`*`开头的表示取值可能为json规范下的null，不同的语言需要使用能表达null的类型来接收，例如java的包装类型；字段类型以`[]`开头的表示是数组类型；`json key`在调用`ModifyYarnQueueV2 `接口也会使用。- 公平调度器```type QueueWithConfigSetForFairScheduler struct {	Name                         string                               `json:"name"` //队列名称	MyId                         string                  `json:"myId"` // 队列id，用于编辑、删除、克隆时使用	ParentId                     string                  `json:"parentId"`  // 父队列Id	Type                         *string                              `json:"type"` // 队列归属。parent或空，当确定某个队列是父队列，且没有子队列时，才可以设置，通常用来支持放置策略nestedUserQueue	AclSubmitApps                *AclForYarnQueue                     `json:"aclSubmitApps"` // 提交访问控制	AclAdministerApps            *AclForYarnQueue                     `json:"aclAdministerApps"` // 管理访问控制	MinSharePreemptionTimeout    *int                                 `json:"minSharePreemptionTimeout"` // 最小共享优先权超时时间	FairSharePreemptionTimeout   *int                                 `json:"fairSharePreemptionTimeout"` // 公平份额抢占超时时间	FairSharePreemptionThreshold *float32                             `json:"fairSharePreemptionThreshold"` // 公平份额抢占阈值。取值 （0，1]	AllowPreemptionFrom          *bool                                `json:"allowPreemptionFrom"`                                        // 抢占模式	SchedulingPolicy             *string                              `json:"schedulingPolicy"`  // 调度策略，取值有drf、fair、fifo	IsDefault                    *bool                                `json:"isDefault"` // 是否是root.default队列	IsRoot                       *bool                                `json:"isRoot"` // 是否是root队列	ConfigSets                   []ConfigSetForFairScheduler          `json:"configSets"` // 配置集设置	Children                     []QueueWithConfigSetForFairScheduler `json:"queues"` // 子队列信息。递归}type AclForYarnQueue struct {	User  *string `json:"user"` //用户名	Group *string `json:"group"`//组名}type ConfigSetForFairScheduler struct {	Name              string        `json:"name"` // 配置集名称	MinResources      *YarnResource `json:"minResources"` // 最小资源量	MaxResources      *YarnResource `json:"maxResources"` // 最大资源量	MaxChildResources *YarnResource `json:"maxChildResources"` // 能够分配给为未声明子队列的最大资源量	MaxRunningApps    *int          `json:"maxRunningApps"` // 最高可同时处于运行的App数量	Weight            *float32      `json:"weight"`                   // 权重	MaxAMShare        *float32      `json:"maxAMShare"` // App Master最大份额}type YarnResource struct {	Vcores *int `json:"vcores"`	Memory *int `json:"memory"`	Type *string `json:"type"` // 当值为`percent`时，表示使用的百分比，否则就是使用的绝对数值}```- 容量调度器```type QueueForCapacitySchedulerV3 struct {	Name                       string                `json:"name"` // 队列名称	MyId                       string                `json:"myId"` // 队列id，用于编辑、删除、克隆时使用	ParentId                   string                `json:"parentId"` // 父队列Id	Configs                    []ConfigForCapacityV3 `json:"configs"` //配置集设置	State                      *string         `json:"state"` // 资源池状态	DefaultNodeLabelExpression *string               `json:"default-node-label-expression"` // 默认标签表达式	AclSubmitApps              *AclForYarnQueue      `json:"acl_submit_applications"` // 提交访问控制	AclAdminQueue              *AclForYarnQueue      `json:"acl_administer_queue"` //管理访问控制	MaxAllocationMB *int32 `json:"maximum-allocation-mb"` // 分配Container最大内存数量	MaxAllocationVcores *int32                         `json:"maximum-allocation-vcores"` // Container最大vCore数量	IsDefault           *bool                          `json:"isDefault"`// 是否是root.default队列	IsRoot              *bool                          `json:"isRoot"` // 是否是root队列	Queues              []*QueueForCapacitySchedulerV3 `json:"queues"`//子队列信息。递归}type ConfigForCapacityV3 struct {	Name                string          `json:"configName"` // 配置集名称	Labels              []CapacityLabel `json:"labels"` // 标签信息	MinUserLimitPercent *int32          `json:"minimum-user-limit-percent"` // 用户最小容量	UserLimitFactor     *float32        `json:"user-limit-factor" valid:"rangeExcludeLeft(0|)"`  // 用户资源因子	MaxApps *int32 `json:"maximum-applications" valid:"rangeExcludeLeft(0|)"` // 最大应用数Max-Applications	MaxAmPercent               *float32 `json:"maximum-am-resource-percent"` // 最大AM比例	DefaultApplicationPriority *int32   `json:"default-application-priority"` // 资源池优先级}type CapacityLabel struct {	Name        string   `json:"labelName"`	Capacity    *float32 `json:"capacity"`  // 容量	MaxCapacity *float32 `json:"maximum-capacity"` //最大容量}type AclForYarnQueue struct {	User  *string `json:"user"` //用户名	Group *string `json:"group"`//组名}```
        # @type Queue: String
        # @param Version: 版本
        # @type Version: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Queue, :Version, :RequestId

        def initialize(queue=nil, version=nil, requestid=nil)
          @Queue = queue
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Queue = params['Queue']
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # DescribeYarnScheduleHistory请求参数结构体
      class DescribeYarnScheduleHistoryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Limit: 页码
        # @type Limit: Integer
        # @param Offset: 页大小
        # @type Offset: Integer
        # @param SchedulerType: 调度器类型 可选值为“ALL”，"Capacity Scheduler", "Fair Scheduler"
        # @type SchedulerType: String
        # @param TaskState: 任务类型0:等待执行，1:执行中，2：完成，-1:失败 ，-99:全部
        # @type TaskState: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :SchedulerType, :TaskState

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, schedulertype=nil, taskstate=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @SchedulerType = schedulertype
          @TaskState = taskstate
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SchedulerType = params['SchedulerType']
          @TaskState = params['TaskState']
        end
      end

      # DescribeYarnScheduleHistory返回参数结构体
      class DescribeYarnScheduleHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param Total: 任务详情总数
        # @type Total: Integer
        # @param SchedulerNameList: 调度类型筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerNameList: Array
        # @param StateList: 状态筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StateList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :Total, :SchedulerNameList, :StateList, :RequestId

        def initialize(tasks=nil, total=nil, schedulernamelist=nil, statelist=nil, requestid=nil)
          @Tasks = tasks
          @Total = total
          @SchedulerNameList = schedulernamelist
          @StateList = statelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              schedulertaskinfo_tmp = SchedulerTaskInfo.new
              schedulertaskinfo_tmp.deserialize(i)
              @Tasks << schedulertaskinfo_tmp
            end
          end
          @Total = params['Total']
          @SchedulerNameList = params['SchedulerNameList']
          @StateList = params['StateList']
          @RequestId = params['RequestId']
        end
      end

      # 动态生成的变更详情
      class DiffDetail < TencentCloud::Common::AbstractModel
        # @param Name: tab页的头
        # @type Name: String
        # @param Count: 变化项的个数
        # @type Count: Integer
        # @param Rows: 要渲染的明细数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param Header: 要渲染的头部信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Header: Array

        attr_accessor :Name, :Count, :Rows, :Header

        def initialize(name=nil, count=nil, rows=nil, header=nil)
          @Name = name
          @Count = count
          @Rows = rows
          @Header = header
        end

        def deserialize(params)
          @Name = params['Name']
          @Count = params['Count']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              diffdetailitem_tmp = DiffDetailItem.new
              diffdetailitem_tmp.deserialize(i)
              @Rows << diffdetailitem_tmp
            end
          end
          unless params['Header'].nil?
            @Header = []
            params['Header'].each do |i|
              diffheader_tmp = DiffHeader.new
              diffheader_tmp.deserialize(i)
              @Header << diffheader_tmp
            end
          end
        end
      end

      # 动态生成的变更详情条目
      class DiffDetailItem < TencentCloud::Common::AbstractModel
        # @param Attribute: 属性
        # @type Attribute: String
        # @param InEffect: 当前生效
        # @type InEffect: String
        # @param PendingEffectiveness: 待生效
        # @type PendingEffectiveness: String
        # @param Operation: 操作
        # @type Operation: String
        # @param Queue: 队列
        # @type Queue: String
        # @param ConfigSet: 配置集
        # @type ConfigSet: String
        # @param LabelName: 标签
        # @type LabelName: String
        # @param InEffectIndex: 当前所在位置
        # @type InEffectIndex: String
        # @param PendingEffectIndex: 待生效的位置
        # @type PendingEffectIndex: String
        # @param PlanName: 计划模式名称
        # @type PlanName: String
        # @param Label: 标签
        # @type Label: String
        # @param RuleName: 放置规则
        # @type RuleName: String
        # @param UserName: 用户名
        # @type UserName: String

        attr_accessor :Attribute, :InEffect, :PendingEffectiveness, :Operation, :Queue, :ConfigSet, :LabelName, :InEffectIndex, :PendingEffectIndex, :PlanName, :Label, :RuleName, :UserName

        def initialize(attribute=nil, ineffect=nil, pendingeffectiveness=nil, operation=nil, queue=nil, configset=nil, labelname=nil, ineffectindex=nil, pendingeffectindex=nil, planname=nil, label=nil, rulename=nil, username=nil)
          @Attribute = attribute
          @InEffect = ineffect
          @PendingEffectiveness = pendingeffectiveness
          @Operation = operation
          @Queue = queue
          @ConfigSet = configset
          @LabelName = labelname
          @InEffectIndex = ineffectindex
          @PendingEffectIndex = pendingeffectindex
          @PlanName = planname
          @Label = label
          @RuleName = rulename
          @UserName = username
        end

        def deserialize(params)
          @Attribute = params['Attribute']
          @InEffect = params['InEffect']
          @PendingEffectiveness = params['PendingEffectiveness']
          @Operation = params['Operation']
          @Queue = params['Queue']
          @ConfigSet = params['ConfigSet']
          @LabelName = params['LabelName']
          @InEffectIndex = params['InEffectIndex']
          @PendingEffectIndex = params['PendingEffectIndex']
          @PlanName = params['PlanName']
          @Label = params['Label']
          @RuleName = params['RuleName']
          @UserName = params['UserName']
        end
      end

      # 动态生成的变更详情
      class DiffHeader < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Id: ID，前端会使用
        # @type Id: String

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

      # 磁盘信息
      class Disk < TencentCloud::Common::AbstractModel
        # @param DiskType: 数据盘类型，创建EMR容器集群实例可选
        # <li> SSD云盘: CLOUD_SSD</li>
        # <li>高效云盘: CLOUD_PREMIUM</li>
        # @type DiskType: String
        # @param DiskCapacity: 单块大小GB
        # @type DiskCapacity: Integer
        # @param DiskNumber: 数据盘数量
        # @type DiskNumber: Integer

        attr_accessor :DiskType, :DiskCapacity, :DiskNumber

        def initialize(disktype=nil, diskcapacity=nil, disknumber=nil)
          @DiskType = disktype
          @DiskCapacity = diskcapacity
          @DiskNumber = disknumber
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskCapacity = params['DiskCapacity']
          @DiskNumber = params['DiskNumber']
        end
      end

      # 磁盘组。
      class DiskGroup < TencentCloud::Common::AbstractModel
        # @param Spec: 磁盘规格。
        # @type Spec: :class:`Tencentcloud::Emr.v20190103.models.DiskSpec`
        # @param Count: 同类型磁盘数量。
        # @type Count: Integer

        attr_accessor :Spec, :Count

        def initialize(spec=nil, count=nil)
          @Spec = spec
          @Count = count
        end

        def deserialize(params)
          unless params['Spec'].nil?
            @Spec = DiskSpec.new
            @Spec.deserialize(params['Spec'])
          end
          @Count = params['Count']
        end
      end

      # 磁盘描述。
      class DiskSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型。
        # LOCAL_BASIC  本地盘。
        # CLOUD_BASIC 云硬盘。
        # LOCAL_SSD 本地SSD。
        # CLOUD_SSD 云SSD。
        # CLOUD_PREMIUM 高效云盘。
        # CLOUD_HSSD 增强型云SSD。
        # @type DiskType: String
        # @param DiskSize: 磁盘大小，单位GB。
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize

        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # 节点磁盘信息
      class DiskSpecInfo < TencentCloud::Common::AbstractModel
        # @param Count: 磁盘数量
        # @type Count: Integer
        # @param DiskType: 系统盘类型 取值范围：
        # <li>CLOUD_SSD：表示云SSD。</li>
        # <li>CLOUD_PREMIUM：表示高效云盘。</li>
        # <li>CLOUD_BASIC：表示云硬盘。</li>
        # <li>LOCAL_BASIC：表示本地盘。</li>
        # <li>LOCAL_SSD：表示本地SSD。</li>

        # 数据盘类型 取值范围：
        # <li>CLOUD_SSD：表示云SSD。</li>
        # <li>CLOUD_PREMIUM：表示高效云盘。</li>
        # <li>CLOUD_BASIC：表示云硬盘。</li>
        # <li>LOCAL_BASIC：表示本地盘。</li>
        # <li>LOCAL_SSD：表示本地SSD。</li>
        # <li>CLOUD_HSSD：表示增强型SSD云硬盘。</li>
        # <li>CLOUD_THROUGHPUT：表示吞吐型云硬盘。</li>
        # <li>CLOUD_TSSD：表示极速型SSD云硬盘。</li>
        # <li>CLOUD_BIGDATA：表示大数据型云硬盘。</li>
        # <li>CLOUD_HIGHIO：表示高IO型云硬盘。</li>
        # <li>CLOUD_BSSD：表示通用型SSD云硬盘。</li>
        # <li>REMOTE_SSD：表示远端SSD盘。</li>
        # @type DiskType: String
        # @param DiskSize: 数据容量，单位为GB
        # @type DiskSize: Integer
        # @param ExtraPerformance: 额外性能
        # @type ExtraPerformance: Integer

        attr_accessor :Count, :DiskType, :DiskSize, :ExtraPerformance

        def initialize(count=nil, disktype=nil, disksize=nil, extraperformance=nil)
          @Count = count
          @DiskType = disktype
          @DiskSize = disksize
          @ExtraPerformance = extraperformance
        end

        def deserialize(params)
          @Count = params['Count']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @ExtraPerformance = params['ExtraPerformance']
        end
      end

      # 采样序列
      class Dps < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间戳
        # @type Timestamp: String
        # @param Value: 采样值
        # @type Value: String

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

      # POD浮动规格
      class DynamicPodSpec < TencentCloud::Common::AbstractModel
        # @param RequestCpu: 需求最小cpu核数
        # @type RequestCpu: Float
        # @param LimitCpu: 需求最大cpu核数
        # @type LimitCpu: Float
        # @param RequestMemory: 需求最小memory，单位MB
        # @type RequestMemory: Float
        # @param LimitMemory: 需求最大memory，单位MB
        # @type LimitMemory: Float

        attr_accessor :RequestCpu, :LimitCpu, :RequestMemory, :LimitMemory

        def initialize(requestcpu=nil, limitcpu=nil, requestmemory=nil, limitmemory=nil)
          @RequestCpu = requestcpu
          @LimitCpu = limitcpu
          @RequestMemory = requestmemory
          @LimitMemory = limitmemory
        end

        def deserialize(params)
          @RequestCpu = params['RequestCpu']
          @LimitCpu = params['LimitCpu']
          @RequestMemory = params['RequestMemory']
          @LimitMemory = params['LimitMemory']
        end
      end

      # 集群列表返回示例
      class EmrListInstance < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param StatusDesc: 常见状态描述：集群生产中,集群运行中,集群创建中,集群已关闭,集群已删除
        # @type StatusDesc: String
        # @param ClusterName: 集群名字
        # @type ClusterName: String
        # @param ZoneId: 集群地域
        # @type ZoneId: Integer
        # @param AppId: 用户APPID
        # @type AppId: Integer
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param RunTime: 运行时间
        # @type RunTime: String
        # @param MasterIp: 集群IP
        # @type MasterIp: String
        # @param EmrVersion: 集群版本
        # @type EmrVersion: String
        # @param ChargeType: 集群计费类型
        # @type ChargeType: Integer
        # @param Id: emr ID
        # @type Id: Integer
        # @param ProductId: 产品ID
        # @type ProductId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RegionId: 区域
        # @type RegionId: Integer
        # @param SubnetId: 子网ID
        # @type SubnetId: Integer
        # @param VpcId: 网络ID
        # @type VpcId: Integer
        # @param Zone: 地区
        # @type Zone: String
        # @param Status: 状态码, 取值为-2(集群已删除), -1(集群已关闭), 0(集群生产中), 2(集群运行中), 3(集群创建中)
        # @type Status: Integer
        # @param Tags: 实例标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AlarmInfo: 告警信息
        # @type AlarmInfo: String
        # @param IsWoodpeckerCluster: 是否是woodpecker集群
        # @type IsWoodpeckerCluster: Integer
        # @param VpcName: Vpc中文
        # @type VpcName: String
        # @param SubnetName: 子网中文
        # @type SubnetName: String
        # @param UniqVpcId: 字符串VpcId
        # @type UniqVpcId: String
        # @param UniqSubnetId: 字符串子网
        # @type UniqSubnetId: String
        # @param ClusterClass: 集群类型
        # @type ClusterClass: String
        # @param IsMultiZoneCluster: 是否为跨AZ集群
        # @type IsMultiZoneCluster: Boolean
        # @param IsHandsCluster: 是否手戳集群
        # @type IsHandsCluster: Boolean
        # @param OutSideSoftInfo: 体外客户端组件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutSideSoftInfo: Array
        # @param IsSupportOutsideCluster: 当前集群的应用场景是否支持体外客户端
        # @type IsSupportOutsideCluster: Boolean
        # @param IsDedicatedCluster: 是否专有集群场景集群
        # @type IsDedicatedCluster: Boolean
        # @param IsSupportClone: 集群支持克隆
        # @type IsSupportClone: Boolean

        attr_accessor :ClusterId, :StatusDesc, :ClusterName, :ZoneId, :AppId, :AddTime, :RunTime, :MasterIp, :EmrVersion, :ChargeType, :Id, :ProductId, :ProjectId, :RegionId, :SubnetId, :VpcId, :Zone, :Status, :Tags, :AlarmInfo, :IsWoodpeckerCluster, :VpcName, :SubnetName, :UniqVpcId, :UniqSubnetId, :ClusterClass, :IsMultiZoneCluster, :IsHandsCluster, :OutSideSoftInfo, :IsSupportOutsideCluster, :IsDedicatedCluster, :IsSupportClone

        def initialize(clusterid=nil, statusdesc=nil, clustername=nil, zoneid=nil, appid=nil, addtime=nil, runtime=nil, masterip=nil, emrversion=nil, chargetype=nil, id=nil, productid=nil, projectid=nil, regionid=nil, subnetid=nil, vpcid=nil, zone=nil, status=nil, tags=nil, alarminfo=nil, iswoodpeckercluster=nil, vpcname=nil, subnetname=nil, uniqvpcid=nil, uniqsubnetid=nil, clusterclass=nil, ismultizonecluster=nil, ishandscluster=nil, outsidesoftinfo=nil, issupportoutsidecluster=nil, isdedicatedcluster=nil, issupportclone=nil)
          @ClusterId = clusterid
          @StatusDesc = statusdesc
          @ClusterName = clustername
          @ZoneId = zoneid
          @AppId = appid
          @AddTime = addtime
          @RunTime = runtime
          @MasterIp = masterip
          @EmrVersion = emrversion
          @ChargeType = chargetype
          @Id = id
          @ProductId = productid
          @ProjectId = projectid
          @RegionId = regionid
          @SubnetId = subnetid
          @VpcId = vpcid
          @Zone = zone
          @Status = status
          @Tags = tags
          @AlarmInfo = alarminfo
          @IsWoodpeckerCluster = iswoodpeckercluster
          @VpcName = vpcname
          @SubnetName = subnetname
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ClusterClass = clusterclass
          @IsMultiZoneCluster = ismultizonecluster
          @IsHandsCluster = ishandscluster
          @OutSideSoftInfo = outsidesoftinfo
          @IsSupportOutsideCluster = issupportoutsidecluster
          @IsDedicatedCluster = isdedicatedcluster
          @IsSupportClone = issupportclone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @StatusDesc = params['StatusDesc']
          @ClusterName = params['ClusterName']
          @ZoneId = params['ZoneId']
          @AppId = params['AppId']
          @AddTime = params['AddTime']
          @RunTime = params['RunTime']
          @MasterIp = params['MasterIp']
          @EmrVersion = params['EmrVersion']
          @ChargeType = params['ChargeType']
          @Id = params['Id']
          @ProductId = params['ProductId']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Zone = params['Zone']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AlarmInfo = params['AlarmInfo']
          @IsWoodpeckerCluster = params['IsWoodpeckerCluster']
          @VpcName = params['VpcName']
          @SubnetName = params['SubnetName']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @ClusterClass = params['ClusterClass']
          @IsMultiZoneCluster = params['IsMultiZoneCluster']
          @IsHandsCluster = params['IsHandsCluster']
          unless params['OutSideSoftInfo'].nil?
            @OutSideSoftInfo = []
            params['OutSideSoftInfo'].each do |i|
              softdependinfo_tmp = SoftDependInfo.new
              softdependinfo_tmp.deserialize(i)
              @OutSideSoftInfo << softdependinfo_tmp
            end
          end
          @IsSupportOutsideCluster = params['IsSupportOutsideCluster']
          @IsDedicatedCluster = params['IsDedicatedCluster']
          @IsSupportClone = params['IsSupportClone']
        end
      end

      # Emr询价描述
      class EmrPrice < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 刊例价格
        # @type OriginalCost: String
        # @param DiscountCost: 折扣价格
        # @type DiscountCost: String
        # @param Unit: 单位
        # @type Unit: String
        # @param PriceSpec: 询价配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceSpec: :class:`Tencentcloud::Emr.v20190103.models.PriceResource`
        # @param SupportSpotPaid: 是否支持竞价实例
        # @type SupportSpotPaid: Boolean

        attr_accessor :OriginalCost, :DiscountCost, :Unit, :PriceSpec, :SupportSpotPaid

        def initialize(originalcost=nil, discountcost=nil, unit=nil, pricespec=nil, supportspotpaid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @Unit = unit
          @PriceSpec = pricespec
          @SupportSpotPaid = supportspotpaid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @Unit = params['Unit']
          unless params['PriceSpec'].nil?
            @PriceSpec = PriceResource.new
            @PriceSpec.deserialize(params['PriceSpec'])
          end
          @SupportSpotPaid = params['SupportSpotPaid']
        end
      end

      # EMR产品配置
      class EmrProductConfigDetail < TencentCloud::Common::AbstractModel
        # @param SoftInfo: 软件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftInfo: Array
        # @param MasterNodeSize: Master节点个数
        # @type MasterNodeSize: Integer
        # @param CoreNodeSize: Core节点个数
        # @type CoreNodeSize: Integer
        # @param TaskNodeSize: Task节点个数
        # @type TaskNodeSize: Integer
        # @param ComNodeSize: Common节点个数
        # @type ComNodeSize: Integer
        # @param MasterResource: Master节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterResource: :class:`Tencentcloud::Emr.v20190103.models.ResourceDetail`
        # @param CoreResource: Core节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreResource: :class:`Tencentcloud::Emr.v20190103.models.ResourceDetail`
        # @param TaskResource: Task节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskResource: :class:`Tencentcloud::Emr.v20190103.models.ResourceDetail`
        # @param ComResource: Common节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComResource: :class:`Tencentcloud::Emr.v20190103.models.ResourceDetail`
        # @param OnCos: 是否使用COS
        # @type OnCos: Boolean
        # @param ChargeType: 收费类型
        # @type ChargeType: Integer
        # @param RouterNodeSize: Router节点个数
        # @type RouterNodeSize: Integer
        # @param SupportHA: 是否支持HA
        # @type SupportHA: Boolean
        # @param SecurityOn: 是否支持安全模式
        # @type SecurityOn: Boolean
        # @param SecurityGroup: 安全组名称
        # @type SecurityGroup: String
        # @param CbsEncrypt: 是否开启Cbs加密
        # @type CbsEncrypt: Integer
        # @param ApplicationRole: 自定义应用角色。
        # @type ApplicationRole: String
        # @param SecurityGroups: 安全组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroups: Array
        # @param PublicKeyId: SSH密钥Id
        # @type PublicKeyId: String

        attr_accessor :SoftInfo, :MasterNodeSize, :CoreNodeSize, :TaskNodeSize, :ComNodeSize, :MasterResource, :CoreResource, :TaskResource, :ComResource, :OnCos, :ChargeType, :RouterNodeSize, :SupportHA, :SecurityOn, :SecurityGroup, :CbsEncrypt, :ApplicationRole, :SecurityGroups, :PublicKeyId

        def initialize(softinfo=nil, masternodesize=nil, corenodesize=nil, tasknodesize=nil, comnodesize=nil, masterresource=nil, coreresource=nil, taskresource=nil, comresource=nil, oncos=nil, chargetype=nil, routernodesize=nil, supportha=nil, securityon=nil, securitygroup=nil, cbsencrypt=nil, applicationrole=nil, securitygroups=nil, publickeyid=nil)
          @SoftInfo = softinfo
          @MasterNodeSize = masternodesize
          @CoreNodeSize = corenodesize
          @TaskNodeSize = tasknodesize
          @ComNodeSize = comnodesize
          @MasterResource = masterresource
          @CoreResource = coreresource
          @TaskResource = taskresource
          @ComResource = comresource
          @OnCos = oncos
          @ChargeType = chargetype
          @RouterNodeSize = routernodesize
          @SupportHA = supportha
          @SecurityOn = securityon
          @SecurityGroup = securitygroup
          @CbsEncrypt = cbsencrypt
          @ApplicationRole = applicationrole
          @SecurityGroups = securitygroups
          @PublicKeyId = publickeyid
        end

        def deserialize(params)
          @SoftInfo = params['SoftInfo']
          @MasterNodeSize = params['MasterNodeSize']
          @CoreNodeSize = params['CoreNodeSize']
          @TaskNodeSize = params['TaskNodeSize']
          @ComNodeSize = params['ComNodeSize']
          unless params['MasterResource'].nil?
            @MasterResource = ResourceDetail.new
            @MasterResource.deserialize(params['MasterResource'])
          end
          unless params['CoreResource'].nil?
            @CoreResource = ResourceDetail.new
            @CoreResource.deserialize(params['CoreResource'])
          end
          unless params['TaskResource'].nil?
            @TaskResource = ResourceDetail.new
            @TaskResource.deserialize(params['TaskResource'])
          end
          unless params['ComResource'].nil?
            @ComResource = ResourceDetail.new
            @ComResource.deserialize(params['ComResource'])
          end
          @OnCos = params['OnCos']
          @ChargeType = params['ChargeType']
          @RouterNodeSize = params['RouterNodeSize']
          @SupportHA = params['SupportHA']
          @SecurityOn = params['SecurityOn']
          @SecurityGroup = params['SecurityGroup']
          @CbsEncrypt = params['CbsEncrypt']
          @ApplicationRole = params['ApplicationRole']
          @SecurityGroups = params['SecurityGroups']
          @PublicKeyId = params['PublicKeyId']
        end
      end

      # EMR产品配置
      class EmrProductConfigOutter < TencentCloud::Common::AbstractModel
        # @param SoftInfo: 软件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftInfo: Array
        # @param MasterNodeSize: Master节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterNodeSize: Integer
        # @param CoreNodeSize: Core节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreNodeSize: Integer
        # @param TaskNodeSize: Task节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskNodeSize: Integer
        # @param ComNodeSize: Common节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComNodeSize: Integer
        # @param MasterResource: Master节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param CoreResource: Core节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param TaskResource: Task节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param ComResource: Common节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param OnCos: 是否使用COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnCos: Boolean
        # @param ChargeType: 收费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: Integer
        # @param RouterNodeSize: Router节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouterNodeSize: Integer
        # @param SupportHA: 是否支持HA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportHA: Boolean
        # @param SecurityOn: 是否支持安全模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityOn: Boolean
        # @param SecurityGroup: 集群初始安全组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroup: String
        # @param CbsEncrypt: 是否开启Cbs加密
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CbsEncrypt: Integer
        # @param ApplicationRole: 自定义应用角色。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationRole: String
        # @param SecurityGroups: 安全组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroups: Array
        # @param PublicKeyId: SSH密钥Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKeyId: String

        attr_accessor :SoftInfo, :MasterNodeSize, :CoreNodeSize, :TaskNodeSize, :ComNodeSize, :MasterResource, :CoreResource, :TaskResource, :ComResource, :OnCos, :ChargeType, :RouterNodeSize, :SupportHA, :SecurityOn, :SecurityGroup, :CbsEncrypt, :ApplicationRole, :SecurityGroups, :PublicKeyId

        def initialize(softinfo=nil, masternodesize=nil, corenodesize=nil, tasknodesize=nil, comnodesize=nil, masterresource=nil, coreresource=nil, taskresource=nil, comresource=nil, oncos=nil, chargetype=nil, routernodesize=nil, supportha=nil, securityon=nil, securitygroup=nil, cbsencrypt=nil, applicationrole=nil, securitygroups=nil, publickeyid=nil)
          @SoftInfo = softinfo
          @MasterNodeSize = masternodesize
          @CoreNodeSize = corenodesize
          @TaskNodeSize = tasknodesize
          @ComNodeSize = comnodesize
          @MasterResource = masterresource
          @CoreResource = coreresource
          @TaskResource = taskresource
          @ComResource = comresource
          @OnCos = oncos
          @ChargeType = chargetype
          @RouterNodeSize = routernodesize
          @SupportHA = supportha
          @SecurityOn = securityon
          @SecurityGroup = securitygroup
          @CbsEncrypt = cbsencrypt
          @ApplicationRole = applicationrole
          @SecurityGroups = securitygroups
          @PublicKeyId = publickeyid
        end

        def deserialize(params)
          @SoftInfo = params['SoftInfo']
          @MasterNodeSize = params['MasterNodeSize']
          @CoreNodeSize = params['CoreNodeSize']
          @TaskNodeSize = params['TaskNodeSize']
          @ComNodeSize = params['ComNodeSize']
          unless params['MasterResource'].nil?
            @MasterResource = OutterResource.new
            @MasterResource.deserialize(params['MasterResource'])
          end
          unless params['CoreResource'].nil?
            @CoreResource = OutterResource.new
            @CoreResource.deserialize(params['CoreResource'])
          end
          unless params['TaskResource'].nil?
            @TaskResource = OutterResource.new
            @TaskResource.deserialize(params['TaskResource'])
          end
          unless params['ComResource'].nil?
            @ComResource = OutterResource.new
            @ComResource.deserialize(params['ComResource'])
          end
          @OnCos = params['OnCos']
          @ChargeType = params['ChargeType']
          @RouterNodeSize = params['RouterNodeSize']
          @SupportHA = params['SupportHA']
          @SecurityOn = params['SecurityOn']
          @SecurityGroup = params['SecurityGroup']
          @CbsEncrypt = params['CbsEncrypt']
          @ApplicationRole = params['ApplicationRole']
          @SecurityGroups = params['SecurityGroups']
          @PublicKeyId = params['PublicKeyId']
        end
      end

      # 执行动作。
      class Execution < TencentCloud::Common::AbstractModel
        # @param JobType: 任务类型，目前支持以下类型。
        # 1. “MR”，将通过hadoop jar的方式提交。
        # 2. "HIVE"，将通过hive -f的方式提交。
        # 3. "SPARK"，将通过spark-submit的方式提交。
        # @type JobType: String
        # @param Args: 任务参数，提供除提交指令以外的参数。
        # @type Args: Array

        attr_accessor :JobType, :Args

        def initialize(jobtype=nil, args=nil)
          @JobType = jobtype
          @Args = args
        end

        def deserialize(params)
          @JobType = params['JobType']
          @Args = params['Args']
        end
      end

      # 容器集群外部访问设置
      class ExternalAccess < TencentCloud::Common::AbstractModel
        # @param Type: 外部访问类型，当前仅支持CLB字段
        # @type Type: String
        # @param CLBServer: CLB设置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLBServer: :class:`Tencentcloud::Emr.v20190103.models.CLBSetting`

        attr_accessor :Type, :CLBServer

        def initialize(type=nil, clbserver=nil)
          @Type = type
          @CLBServer = clbserver
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CLBServer'].nil?
            @CLBServer = CLBSetting.new
            @CLBServer.deserialize(params['CLBServer'])
          end
        end
      end

      # 共用组件信息
      class ExternalService < TencentCloud::Common::AbstractModel
        # @param ShareType: 共用组件类型，EMR/CUSTOM
        # @type ShareType: String
        # @param Service: 共用组件名
        # @type Service: String
        # @param InstanceId: 共用组件集群
        # @type InstanceId: String
        # @param CustomServiceDefineList: 自定义参数集合
        # @type CustomServiceDefineList: Array

        attr_accessor :ShareType, :Service, :InstanceId, :CustomServiceDefineList

        def initialize(sharetype=nil, service=nil, instanceid=nil, customservicedefinelist=nil)
          @ShareType = sharetype
          @Service = service
          @InstanceId = instanceid
          @CustomServiceDefineList = customservicedefinelist
        end

        def deserialize(params)
          @ShareType = params['ShareType']
          @Service = params['Service']
          @InstanceId = params['InstanceId']
          unless params['CustomServiceDefineList'].nil?
            @CustomServiceDefineList = []
            params['CustomServiceDefineList'].each do |i|
              customservicedefine_tmp = CustomServiceDefine.new
              customservicedefine_tmp.deserialize(i)
              @CustomServiceDefineList << customservicedefine_tmp
            end
          end
        end
      end

      # 资源调度-公平调度器的全局配置
      class FairGlobalConfig < TencentCloud::Common::AbstractModel
        # @param UserMaxAppsDefault: 对应与页面的<p>程序上限</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserMaxAppsDefault: Integer

        attr_accessor :UserMaxAppsDefault

        def initialize(usermaxappsdefault=nil)
          @UserMaxAppsDefault = usermaxappsdefault
        end

        def deserialize(params)
          @UserMaxAppsDefault = params['UserMaxAppsDefault']
        end
      end

      # 键值对过滤器，用于条件过滤查询.
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

      # Emr集群列表实例自定义查询过滤
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Values: 过滤字段值
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

      # 流程额外信息
      class FlowExtraDetail < TencentCloud::Common::AbstractModel
        # @param Title: 额外信息Title
        # @type Title: String
        # @param Detail: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array

        attr_accessor :Title, :Detail

        def initialize(title=nil, detail=nil)
          @Title = title
          @Detail = detail
        end

        def deserialize(params)
          @Title = params['Title']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              flowparamsdesc_tmp = FlowParamsDesc.new
              flowparamsdesc_tmp.deserialize(i)
              @Detail << flowparamsdesc_tmp
            end
          end
        end
      end

      # FlowParam流程参数
      class FlowParam < TencentCloud::Common::AbstractModel
        # @param FKey: 流程参数key
        # TraceId：通过TraceId查询
        # FlowId： 通过FlowId查询
        # @type FKey: String
        # @param FValue: 参数value
        # @type FValue: String

        attr_accessor :FKey, :FValue

        def initialize(fkey=nil, fvalue=nil)
          @FKey = fkey
          @FValue = fvalue
        end

        def deserialize(params)
          @FKey = params['FKey']
          @FValue = params['FValue']
        end
      end

      # 任务参数描述
      class FlowParamsDesc < TencentCloud::Common::AbstractModel
        # @param PKey: 参数key
        # @type PKey: String
        # @param PValue: 参数value
        # @type PValue: String

        attr_accessor :PKey, :PValue

        def initialize(pkey=nil, pvalue=nil)
          @PKey = pkey
          @PValue = pvalue
        end

        def deserialize(params)
          @PKey = params['PKey']
          @PValue = params['PValue']
        end
      end

      # 集群所有伸缩组全局参数信息
      class GroupGlobalConfs < TencentCloud::Common::AbstractModel
        # @param GroupGlobalConf: 伸缩组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupGlobalConf: :class:`Tencentcloud::Emr.v20190103.models.AutoScaleResourceConf`
        # @param CurrentNodes: 当前伸缩组扩容出来的节点数量。
        # @type CurrentNodes: Integer
        # @param CurrentPostPaidNodes: 当前伸缩组扩容出来的后付费节点数量。
        # @type CurrentPostPaidNodes: Integer
        # @param CurrentSpotPaidNodes: 当前伸缩组扩容出来的竞价实例节点数量。
        # @type CurrentSpotPaidNodes: Integer

        attr_accessor :GroupGlobalConf, :CurrentNodes, :CurrentPostPaidNodes, :CurrentSpotPaidNodes

        def initialize(groupglobalconf=nil, currentnodes=nil, currentpostpaidnodes=nil, currentspotpaidnodes=nil)
          @GroupGlobalConf = groupglobalconf
          @CurrentNodes = currentnodes
          @CurrentPostPaidNodes = currentpostpaidnodes
          @CurrentSpotPaidNodes = currentspotpaidnodes
        end

        def deserialize(params)
          unless params['GroupGlobalConf'].nil?
            @GroupGlobalConf = AutoScaleResourceConf.new
            @GroupGlobalConf.deserialize(params['GroupGlobalConf'])
          end
          @CurrentNodes = params['CurrentNodes']
          @CurrentPostPaidNodes = params['CurrentPostPaidNodes']
          @CurrentSpotPaidNodes = params['CurrentSpotPaidNodes']
        end
      end

      # 用户组信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupName: 组名
        # @type GroupName: String
        # @param Description: 备注
        # @type Description: String
        # @param Users: 用户列表
        # @type Users: Array

        attr_accessor :GroupName, :Description, :Users

        def initialize(groupname=nil, description=nil, users=nil)
          @GroupName = groupname
          @Description = description
          @Users = users
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Description = params['Description']
          @Users = params['Users']
        end
      end

      # 用户组信息
      class GroupInfos < TencentCloud::Common::AbstractModel
        # @param GroupName: 用户组名称
        # @type GroupName: String
        # @param Users: 用户名称列表
        # @type Users: Array
        # @param Description: 备注
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param GroupType: 用户组类型
        # @type GroupType: Integer
        # @param GroupTypeDesc: 用户组类型描述
        # @type GroupTypeDesc: String

        attr_accessor :GroupName, :Users, :Description, :CreateTime, :GroupType, :GroupTypeDesc

        def initialize(groupname=nil, users=nil, description=nil, createtime=nil, grouptype=nil, grouptypedesc=nil)
          @GroupName = groupname
          @Users = users
          @Description = description
          @CreateTime = createtime
          @GroupType = grouptype
          @GroupTypeDesc = grouptypedesc
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Users = params['Users']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @GroupType = params['GroupType']
          @GroupTypeDesc = params['GroupTypeDesc']
        end
      end

      # 进程健康状态
      class HealthStatus < TencentCloud::Common::AbstractModel
        # @param Code: 运行正常
        # @type Code: Integer
        # @param Text: 运行正常
        # @type Text: String
        # @param Desc: 运行正常
        # @type Desc: String

        attr_accessor :Code, :Text, :Desc

        def initialize(code=nil, text=nil, desc=nil)
          @Code = code
          @Text = text
          @Desc = desc
        end

        def deserialize(params)
          @Code = params['Code']
          @Text = params['Text']
          @Desc = params['Desc']
        end
      end

      # Hive查询详情
      class HiveQuery < TencentCloud::Common::AbstractModel
        # @param Statement: 查询语句
        # @type Statement: String
        # @param Duration: 执行时长
        # @type Duration: String
        # @param StartTime: 开始时间毫秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间毫秒
        # @type EndTime: Integer
        # @param State: 状态
        # @type State: String
        # @param User: 用户
        # @type User: String
        # @param JobIds: appId列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobIds: Array
        # @param ExecutionEngine: 执行引擎
        # @type ExecutionEngine: String
        # @param Id: 查询ID
        # @type Id: String

        attr_accessor :Statement, :Duration, :StartTime, :EndTime, :State, :User, :JobIds, :ExecutionEngine, :Id

        def initialize(statement=nil, duration=nil, starttime=nil, endtime=nil, state=nil, user=nil, jobids=nil, executionengine=nil, id=nil)
          @Statement = statement
          @Duration = duration
          @StartTime = starttime
          @EndTime = endtime
          @State = state
          @User = user
          @JobIds = jobids
          @ExecutionEngine = executionengine
          @Id = id
        end

        def deserialize(params)
          @Statement = params['Statement']
          @Duration = params['Duration']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @State = params['State']
          @User = params['User']
          @JobIds = params['JobIds']
          @ExecutionEngine = params['ExecutionEngine']
          @Id = params['Id']
        end
      end

      # 主机路径
      class HostPathVolumeSource < TencentCloud::Common::AbstractModel
        # @param Path: 主机路径
        # @type Path: String
        # @param Type: 主机路径类型，当前默认DirectoryOrCreate
        # @type Type: String

        attr_accessor :Path, :Type

        def initialize(path=nil, type=nil)
          @Path = path
          @Type = type
        end

        def deserialize(params)
          @Path = params['Path']
          @Type = params['Type']
        end
      end

      # Pod HostPath挂载方式描述
      class HostVolumeContext < TencentCloud::Common::AbstractModel
        # @param VolumePath: Pod挂载宿主机的目录。资源对宿主机的挂载点，指定的挂载点对应了宿主机的路径，该挂载点在Pod中作为数据存储目录使用
        # @type VolumePath: String

        attr_accessor :VolumePath

        def initialize(volumepath=nil)
          @VolumePath = volumepath
        end

        def deserialize(params)
          @VolumePath = params['VolumePath']
        end
      end

      # Impala查询详情
      class ImpalaQuery < TencentCloud::Common::AbstractModel
        # @param Statement: 执行语句
        # @type Statement: String
        # @param Id: 查询ID
        # @type Id: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Duration: 运行时间
        # @type Duration: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param State: 执行状态
        # @type State: String
        # @param RowsFetched: 获取行数
        # @type RowsFetched: Integer
        # @param User: 用户
        # @type User: String
        # @param DefaultDB: 默认DB
        # @type DefaultDB: String
        # @param Coordinator: 执行的Coordinator节点
        # @type Coordinator: String
        # @param MaxNodePeakMemoryUsage: 单节点内存峰值
        # @type MaxNodePeakMemoryUsage: String
        # @param QueryType: 查询类型
        # @type QueryType: String
        # @param ScanHDFSRows: 扫描的HDFS行数
        # @type ScanHDFSRows: Integer
        # @param ScanKUDURows: 扫描的Kudu行数
        # @type ScanKUDURows: Integer
        # @param ScanRowsTotal: 扫描的总行数
        # @type ScanRowsTotal: Integer
        # @param TotalBytesRead: 读取的总字节数
        # @type TotalBytesRead: Integer
        # @param TotalBytesSent: 发送的总字节数
        # @type TotalBytesSent: Integer
        # @param TotalCpuTime: CPU总时间
        # @type TotalCpuTime: Integer
        # @param TotalInnerBytesSent: 内部数据发送总量(Bytes)
        # @type TotalInnerBytesSent: Integer
        # @param TotalScanBytesSent: 内部扫描数据发送总量(Bytes)
        # @type TotalScanBytesSent: Integer
        # @param EstimatedPerHostMemBytes: 预估单节点内存
        # @type EstimatedPerHostMemBytes: Integer
        # @param NumRowsFetchedFromCache: 从缓存中获取的数据行数
        # @type NumRowsFetchedFromCache: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param PerNodePeakMemoryBytesSum: 单节点内存峰值和(Bytes)
        # @type PerNodePeakMemoryBytesSum: Integer
        # @param BackendsCount: 后端个数
        # @type BackendsCount: Integer
        # @param FragmentInstancesCount: fragment数
        # @type FragmentInstancesCount: Integer
        # @param RemainingFragmentCount: 剩余未完成Fragment数
        # @type RemainingFragmentCount: Integer

        attr_accessor :Statement, :Id, :StartTime, :Duration, :EndTime, :State, :RowsFetched, :User, :DefaultDB, :Coordinator, :MaxNodePeakMemoryUsage, :QueryType, :ScanHDFSRows, :ScanKUDURows, :ScanRowsTotal, :TotalBytesRead, :TotalBytesSent, :TotalCpuTime, :TotalInnerBytesSent, :TotalScanBytesSent, :EstimatedPerHostMemBytes, :NumRowsFetchedFromCache, :SessionId, :PerNodePeakMemoryBytesSum, :BackendsCount, :FragmentInstancesCount, :RemainingFragmentCount

        def initialize(statement=nil, id=nil, starttime=nil, duration=nil, endtime=nil, state=nil, rowsfetched=nil, user=nil, defaultdb=nil, coordinator=nil, maxnodepeakmemoryusage=nil, querytype=nil, scanhdfsrows=nil, scankudurows=nil, scanrowstotal=nil, totalbytesread=nil, totalbytessent=nil, totalcputime=nil, totalinnerbytessent=nil, totalscanbytessent=nil, estimatedperhostmembytes=nil, numrowsfetchedfromcache=nil, sessionid=nil, pernodepeakmemorybytessum=nil, backendscount=nil, fragmentinstancescount=nil, remainingfragmentcount=nil)
          @Statement = statement
          @Id = id
          @StartTime = starttime
          @Duration = duration
          @EndTime = endtime
          @State = state
          @RowsFetched = rowsfetched
          @User = user
          @DefaultDB = defaultdb
          @Coordinator = coordinator
          @MaxNodePeakMemoryUsage = maxnodepeakmemoryusage
          @QueryType = querytype
          @ScanHDFSRows = scanhdfsrows
          @ScanKUDURows = scankudurows
          @ScanRowsTotal = scanrowstotal
          @TotalBytesRead = totalbytesread
          @TotalBytesSent = totalbytessent
          @TotalCpuTime = totalcputime
          @TotalInnerBytesSent = totalinnerbytessent
          @TotalScanBytesSent = totalscanbytessent
          @EstimatedPerHostMemBytes = estimatedperhostmembytes
          @NumRowsFetchedFromCache = numrowsfetchedfromcache
          @SessionId = sessionid
          @PerNodePeakMemoryBytesSum = pernodepeakmemorybytessum
          @BackendsCount = backendscount
          @FragmentInstancesCount = fragmentinstancescount
          @RemainingFragmentCount = remainingfragmentcount
        end

        def deserialize(params)
          @Statement = params['Statement']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @Duration = params['Duration']
          @EndTime = params['EndTime']
          @State = params['State']
          @RowsFetched = params['RowsFetched']
          @User = params['User']
          @DefaultDB = params['DefaultDB']
          @Coordinator = params['Coordinator']
          @MaxNodePeakMemoryUsage = params['MaxNodePeakMemoryUsage']
          @QueryType = params['QueryType']
          @ScanHDFSRows = params['ScanHDFSRows']
          @ScanKUDURows = params['ScanKUDURows']
          @ScanRowsTotal = params['ScanRowsTotal']
          @TotalBytesRead = params['TotalBytesRead']
          @TotalBytesSent = params['TotalBytesSent']
          @TotalCpuTime = params['TotalCpuTime']
          @TotalInnerBytesSent = params['TotalInnerBytesSent']
          @TotalScanBytesSent = params['TotalScanBytesSent']
          @EstimatedPerHostMemBytes = params['EstimatedPerHostMemBytes']
          @NumRowsFetchedFromCache = params['NumRowsFetchedFromCache']
          @SessionId = params['SessionId']
          @PerNodePeakMemoryBytesSum = params['PerNodePeakMemoryBytesSum']
          @BackendsCount = params['BackendsCount']
          @FragmentInstancesCount = params['FragmentInstancesCount']
          @RemainingFragmentCount = params['RemainingFragmentCount']
        end
      end

      # InquirePriceRenewEmr请求参数结构体
      class InquirePriceRenewEmrRequest < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 实例续费的时长。需要结合TimeUnit一起使用。1表示续费一个月
        # @type TimeSpan: Integer
        # @param InstanceId: 待续费集群ID列表。
        # @type InstanceId: String
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param PayMode: 实例计费模式。此处只支持取值为1，表示包年包月。
        # @type PayMode: Integer
        # @param TimeUnit: 实例续费的时间单位。取值范围：
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String

        attr_accessor :TimeSpan, :InstanceId, :Placement, :PayMode, :TimeUnit, :Currency

        def initialize(timespan=nil, instanceid=nil, placement=nil, paymode=nil, timeunit=nil, currency=nil)
          @TimeSpan = timespan
          @InstanceId = instanceid
          @Placement = placement
          @PayMode = paymode
          @TimeUnit = timeunit
          @Currency = currency
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @InstanceId = params['InstanceId']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @PayMode = params['PayMode']
          @TimeUnit = params['TimeUnit']
          @Currency = params['Currency']
        end
      end

      # InquirePriceRenewEmr返回参数结构体
      class InquirePriceRenewEmrResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # @type DiscountCost: Float
        # @param TimeUnit: 实例续费的时间单位。取值范围：
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 实例续费的时长。
        # @type TimeSpan: Integer
        # @param NodeRenewPriceDetails: 节点续费询价明细列表
        # @type NodeRenewPriceDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :NodeRenewPriceDetails, :RequestId

        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, noderenewpricedetails=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @NodeRenewPriceDetails = noderenewpricedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          unless params['NodeRenewPriceDetails'].nil?
            @NodeRenewPriceDetails = []
            params['NodeRenewPriceDetails'].each do |i|
              noderenewpricedetail_tmp = NodeRenewPriceDetail.new
              noderenewpricedetail_tmp.deserialize(i)
              @NodeRenewPriceDetails << noderenewpricedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceCreateInstance请求参数结构体
      class InquiryPriceCreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 购买实例的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 购买实例的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param SupportHA: 是否开启节点高可用。取值范围：
        # <li>0：表示不开启节点高可用。</li>
        # <li>1：表示开启节点高可用。</li>
        # @type SupportHA: Integer
        # @param Software: 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）需要选择不同的必选组件：<li>ProductId为2(EMR-V2.0.1)的时候，必选组件包括：hdfs-2.7.3,yarn-2.7.3,zookeeper-3.4.9,knox-1.2.0</li><li>ProductId为16(EMR-V2.3.0)的时候，必选组件包括：hdfs-2.8.5,yarn-2.8.5,zookeeper-3.5.5,knox-1.2.0</li><li>ProductId为20(EMR-V2.5.0)的时候，必选组件包括：hdfs-2.8.5,yarn-2.8.5,zookeeper-3.6.1,knox-1.2.0</li><li>ProductId为30(EMR-V2.6.0)的时候，必选组件包括：hdfs-2.8.5,yarn-2.8.5,zookeeper-3.6.1,openldap-2.4.44,knox-1.2.0</li><li>ProductId为38(EMR-V2.7.0)的时候，必选组件包括：hdfs-2.8.5,yarn-2.8.5,zookeeper-3.6.3,openldap-2.4.44,knox-1.6.1</li><li>ProductId为57(EMR-V2.8.0)的时候，必选组件包括：hdfs-2.8.5,yarn-2.8.5,zookeeper-3.6.3,openldap-2.4.44,knox-1.6.1</li><li>ProductId为7(EMR-V3.0.0)的时候，必选组件包括：hdfs-3.1.2,yarn-3.1.2,zookeeper-3.4.9,knox-1.2.0</li><li>ProductId为25(EMR-V3.1.0)的时候，必选组件包括：hdfs-3.1.2,yarn-3.1.2,zookeeper-3.6.1,knox-1.2.0</li><li>ProductId为31(EMR-V3.1.1)的时候，必选组件包括：hdfs-3.1.2,yarn-3.1.2,zookeeper-3.6.1,knox-1.2.0</li><li>ProductId为28(EMR-V3.2.0)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.1,knox-1.2.0</li><li>ProductId为33(EMR-V3.2.1)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.1,openldap-2.4.44,knox-1.2.0</li><li>ProductId为34(EMR-V3.3.0)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.1,openldap-2.4.44,knox-1.2.0</li><li>ProductId为37(EMR-V3.4.0)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.3,openldap-2.4.44,knox-1.6.1</li><li>ProductId为44(EMR-V3.5.0)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.3,openldap-2.4.44,knox-1.6.1</li><li>ProductId为53(EMR-V3.6.0)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.3,openldap-2.4.44,knox-1.6.1</li><li>ProductId为58(EMR-V3.6.1)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.3,openldap-2.4.46,knox-1.6.1</li><li>ProductId为47(EMR-V4.0.0)的时候，必选组件包括：hdfs-3.2.2,yarn-3.2.2,zookeeper-3.6.3,openldap-2.4.44,knox-1.6.1</li>
        # @type Software: Array
        # @param ResourceSpec: 询价的节点规格。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param VPCSettings: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param MetaType: hive共享元数据库类型。取值范围：
        # <li>EMR_NEW_META：表示集群默认创建</li>
        # <li>EMR_EXIT_METE：表示集群使用指定EMR-MetaDB。</li>
        # <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        # @type MetaType: String
        # @param UnifyMetaInstanceId: EMR-MetaDB实例
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自定义MetaDB信息
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`
        # @param ProductId: 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：<li>2：表示EMR-V2.0.1</li><li>16：表示EMR-V2.3.0</li><li>20：表示EMR-V2.5.0</li><li>30：表示EMR-V2.6.0</li><li>38：表示EMR-V2.7.0</li><li>57：表示EMR-V2.8.0</li><li>7：表示EMR-V3.0.0</li><li>25：表示EMR-V3.1.0</li><li>31：表示EMR-V3.1.1</li><li>28：表示EMR-V3.2.0</li><li>33：表示EMR-V3.2.1</li><li>34：表示EMR-V3.3.0</li><li>37：表示EMR-V3.4.0</li><li>44：表示EMR-V3.5.0</li><li>53：表示EMR-V3.6.0</li><li>58：表示EMR-V3.6.1</li><li>47：表示EMR-V4.0.0</li>
        # @type ProductId: Integer
        # @param SceneName: 场景化取值：Hadoop-Kudu，Hadoop-Zookeeper，Hadoop-Presto，Hadoop-Hbase
        # @type SceneName: String
        # @param ExternalService: 共用组件信息
        # @type ExternalService: Array
        # @param VersionID: 当前默认值为0，跨AZ特性支持后为1
        # @type VersionID: Integer
        # @param MultiZoneSettings: 可用区的规格信息
        # @type MultiZoneSettings: Array
        # @param DefaultMetaVersion: 数据库版本
        # @type DefaultMetaVersion: String
        # @param NeedCdbAudit: 0:不开通审计；1:开通审计
        # @type NeedCdbAudit: Integer

        attr_accessor :TimeUnit, :TimeSpan, :Currency, :PayMode, :SupportHA, :Software, :ResourceSpec, :Placement, :VPCSettings, :MetaType, :UnifyMetaInstanceId, :MetaDBInfo, :ProductId, :SceneName, :ExternalService, :VersionID, :MultiZoneSettings, :DefaultMetaVersion, :NeedCdbAudit

        def initialize(timeunit=nil, timespan=nil, currency=nil, paymode=nil, supportha=nil, software=nil, resourcespec=nil, placement=nil, vpcsettings=nil, metatype=nil, unifymetainstanceid=nil, metadbinfo=nil, productid=nil, scenename=nil, externalservice=nil, versionid=nil, multizonesettings=nil, defaultmetaversion=nil, needcdbaudit=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @Currency = currency
          @PayMode = paymode
          @SupportHA = supportha
          @Software = software
          @ResourceSpec = resourcespec
          @Placement = placement
          @VPCSettings = vpcsettings
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
          @ProductId = productid
          @SceneName = scenename
          @ExternalService = externalservice
          @VersionID = versionid
          @MultiZoneSettings = multizonesettings
          @DefaultMetaVersion = defaultmetaversion
          @NeedCdbAudit = needcdbaudit
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @Currency = params['Currency']
          @PayMode = params['PayMode']
          @SupportHA = params['SupportHA']
          @Software = params['Software']
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
          @ProductId = params['ProductId']
          @SceneName = params['SceneName']
          unless params['ExternalService'].nil?
            @ExternalService = []
            params['ExternalService'].each do |i|
              externalservice_tmp = ExternalService.new
              externalservice_tmp.deserialize(i)
              @ExternalService << externalservice_tmp
            end
          end
          @VersionID = params['VersionID']
          unless params['MultiZoneSettings'].nil?
            @MultiZoneSettings = []
            params['MultiZoneSettings'].each do |i|
              multizonesetting_tmp = MultiZoneSetting.new
              multizonesetting_tmp.deserialize(i)
              @MultiZoneSettings << multizonesetting_tmp
            end
          end
          @DefaultMetaVersion = params['DefaultMetaVersion']
          @NeedCdbAudit = params['NeedCdbAudit']
        end
      end

      # InquiryPriceCreateInstance返回参数结构体
      class InquiryPriceCreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # @type DiscountCost: Float
        # @param TimeUnit: 购买实例的时间单位。取值范围：
        # <li>s：表示秒。</li>
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 购买实例的时长。
        # @type TimeSpan: Integer
        # @param PriceList: 价格清单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :PriceList, :RequestId

        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, pricelist=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @PriceList = pricelist
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          unless params['PriceList'].nil?
            @PriceList = []
            params['PriceList'].each do |i|
              zonedetailpriceresult_tmp = ZoneDetailPriceResult.new
              zonedetailpriceresult_tmp.deserialize(i)
              @PriceList << zonedetailpriceresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewInstance请求参数结构体
      class InquiryPriceRenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 实例续费的时长。需要结合TimeUnit一起使用。1表示续费一个月
        # @type TimeSpan: Integer
        # @param PayMode: 实例计费模式。此处只支持取值为1，表示包年包月。
        # @type PayMode: Integer
        # @param ResourceIds: 待续费节点的资源ID列表。资源ID形如：emr-vm-xxxxxxxx。有效的资源ID可通过登录[控制台](https://console.cloud.tencent.com/emr)查询。
        # @type ResourceIds: Array
        # @param TimeUnit: 实例续费的时间单位。取值范围：
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param ModifyPayMode: 是否按量转包年包月。0：否，1：是。
        # @type ModifyPayMode: Integer
        # @param NeedDetail: 是否需要每个节点续费价格
        # @type NeedDetail: Boolean
        # @param InstanceId: 集群id，如果需要集群所有包年包月节点续费信息，可以填写该参数
        # @type InstanceId: String

        attr_accessor :TimeSpan, :PayMode, :ResourceIds, :TimeUnit, :Currency, :Placement, :ModifyPayMode, :NeedDetail, :InstanceId

        def initialize(timespan=nil, paymode=nil, resourceids=nil, timeunit=nil, currency=nil, placement=nil, modifypaymode=nil, needdetail=nil, instanceid=nil)
          @TimeSpan = timespan
          @PayMode = paymode
          @ResourceIds = resourceids
          @TimeUnit = timeunit
          @Currency = currency
          @Placement = placement
          @ModifyPayMode = modifypaymode
          @NeedDetail = needdetail
          @InstanceId = instanceid
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @PayMode = params['PayMode']
          @ResourceIds = params['ResourceIds']
          @TimeUnit = params['TimeUnit']
          @Currency = params['Currency']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ModifyPayMode = params['ModifyPayMode']
          @NeedDetail = params['NeedDetail']
          @InstanceId = params['InstanceId']
        end
      end

      # InquiryPriceRenewInstance返回参数结构体
      class InquiryPriceRenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # @type DiscountCost: Float
        # @param TimeUnit: 实例续费的时间单位。取值范围：
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 实例续费的时长。
        # @type TimeSpan: Integer
        # @param PriceDetail: 价格详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceDetail: Array
        # @param NodeRenewPriceDetails: 节点续费询价明细列表
        # @type NodeRenewPriceDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :PriceDetail, :NodeRenewPriceDetails, :RequestId

        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, pricedetail=nil, noderenewpricedetails=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @PriceDetail = pricedetail
          @NodeRenewPriceDetails = noderenewpricedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          unless params['PriceDetail'].nil?
            @PriceDetail = []
            params['PriceDetail'].each do |i|
              pricedetail_tmp = PriceDetail.new
              pricedetail_tmp.deserialize(i)
              @PriceDetail << pricedetail_tmp
            end
          end
          unless params['NodeRenewPriceDetails'].nil?
            @NodeRenewPriceDetails = []
            params['NodeRenewPriceDetails'].each do |i|
              noderenewpricedetail_tmp = NodeRenewPriceDetail.new
              noderenewpricedetail_tmp.deserialize(i)
              @NodeRenewPriceDetails << noderenewpricedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceScaleOutInstance请求参数结构体
      class InquiryPriceScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 扩容的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 扩容的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param ZoneId: 实例所属的可用区ID，例如100003。该参数可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/213/15707) 的返回值中的ZoneId字段来获取。
        # @type ZoneId: Integer
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param CoreCount: 扩容的Core节点数量。
        # @type CoreCount: Integer
        # @param TaskCount: 扩容的Task节点数量。
        # @type TaskCount: Integer
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String
        # @param RouterCount: 扩容的Router节点数量。
        # @type RouterCount: Integer
        # @param MasterCount: 扩容的Master节点数量。
        # @type MasterCount: Integer
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String
        # @param HardwareResourceType: 扩容资源类型
        # @type HardwareResourceType: String

        attr_accessor :TimeUnit, :TimeSpan, :ZoneId, :PayMode, :InstanceId, :CoreCount, :TaskCount, :Currency, :RouterCount, :MasterCount, :ResourceBaseType, :ComputeResourceId, :HardwareResourceType

        def initialize(timeunit=nil, timespan=nil, zoneid=nil, paymode=nil, instanceid=nil, corecount=nil, taskcount=nil, currency=nil, routercount=nil, mastercount=nil, resourcebasetype=nil, computeresourceid=nil, hardwareresourcetype=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @ZoneId = zoneid
          @PayMode = paymode
          @InstanceId = instanceid
          @CoreCount = corecount
          @TaskCount = taskcount
          @Currency = currency
          @RouterCount = routercount
          @MasterCount = mastercount
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
          @HardwareResourceType = hardwareresourcetype
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @ZoneId = params['ZoneId']
          @PayMode = params['PayMode']
          @InstanceId = params['InstanceId']
          @CoreCount = params['CoreCount']
          @TaskCount = params['TaskCount']
          @Currency = params['Currency']
          @RouterCount = params['RouterCount']
          @MasterCount = params['MasterCount']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
          @HardwareResourceType = params['HardwareResourceType']
        end
      end

      # InquiryPriceScaleOutInstance返回参数结构体
      class InquiryPriceScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # @type OriginalCost: String
        # @param DiscountCost: 折扣价，单位为元。
        # @type DiscountCost: String
        # @param Unit: 扩容的时间单位。取值范围：
        # <li>s：表示秒。</li>
        # <li>m：表示月份。</li>
        # @type Unit: String
        # @param PriceSpec: 询价的节点规格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceSpec: :class:`Tencentcloud::Emr.v20190103.models.PriceResource`
        # @param MultipleEmrPrice: 对应入参MultipleResources中多个规格的询价结果，其它出参返回的是第一个规格的询价结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultipleEmrPrice: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :Unit, :PriceSpec, :MultipleEmrPrice, :RequestId

        def initialize(originalcost=nil, discountcost=nil, unit=nil, pricespec=nil, multipleemrprice=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @Unit = unit
          @PriceSpec = pricespec
          @MultipleEmrPrice = multipleemrprice
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @Unit = params['Unit']
          unless params['PriceSpec'].nil?
            @PriceSpec = PriceResource.new
            @PriceSpec.deserialize(params['PriceSpec'])
          end
          unless params['MultipleEmrPrice'].nil?
            @MultipleEmrPrice = []
            params['MultipleEmrPrice'].each do |i|
              emrprice_tmp = EmrPrice.new
              emrprice_tmp.deserialize(i)
              @MultipleEmrPrice << emrprice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpdateInstance请求参数结构体
      class InquiryPriceUpdateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 变配的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 变配的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param UpdateSpec: 节点变配的目标配置。
        # @type UpdateSpec: :class:`Tencentcloud::Emr.v20190103.models.UpdateInstanceSettings`
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String
        # @param ResourceIdList: 批量变配资源ID列表
        # @type ResourceIdList: Array

        attr_accessor :TimeUnit, :TimeSpan, :PayMode, :UpdateSpec, :Placement, :Currency, :ResourceIdList

        def initialize(timeunit=nil, timespan=nil, paymode=nil, updatespec=nil, placement=nil, currency=nil, resourceidlist=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @PayMode = paymode
          @UpdateSpec = updatespec
          @Placement = placement
          @Currency = currency
          @ResourceIdList = resourceidlist
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @PayMode = params['PayMode']
          unless params['UpdateSpec'].nil?
            @UpdateSpec = UpdateInstanceSettings.new
            @UpdateSpec.deserialize(params['UpdateSpec'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @Currency = params['Currency']
          @ResourceIdList = params['ResourceIdList']
        end
      end

      # InquiryPriceUpdateInstance返回参数结构体
      class InquiryPriceUpdateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # @type DiscountCost: Float
        # @param TimeUnit: 变配的时间单位。取值范围：
        # <li>s：表示秒。</li>
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 变配的时长。
        # @type TimeSpan: Integer
        # @param PriceDetail: 价格详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceDetail: Array
        # @param NewConfigPrice: 新配置价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewConfigPrice: :class:`Tencentcloud::Emr.v20190103.models.PriceResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :PriceDetail, :NewConfigPrice, :RequestId

        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, pricedetail=nil, newconfigprice=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @PriceDetail = pricedetail
          @NewConfigPrice = newconfigprice
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          unless params['PriceDetail'].nil?
            @PriceDetail = []
            params['PriceDetail'].each do |i|
              pricedetail_tmp = PriceDetail.new
              pricedetail_tmp.deserialize(i)
              @PriceDetail << pricedetail_tmp
            end
          end
          unless params['NewConfigPrice'].nil?
            @NewConfigPrice = PriceResult.new
            @NewConfigPrice.deserialize(params['NewConfigPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 洞察结果项
      class InsightResult < TencentCloud::Common::AbstractModel
        # @param ID: 当Type为HIVE时，是Hive查询ID，当Type为MAPREDUCE，SPARK，TEZ时则是YarnAppID
        # @type ID: String
        # @param Type: 洞察应用的类型，HIVE,SPARK,MAPREDUCE,TEZ
        # @type Type: String
        # @param RuleID: 洞察规则ID
        # HIVE-ScanManyMeta:元数据扫描过多
        # HIVE-ScanManyPartition:大表扫描
        # HIVE-SlowCompile:编译耗时过长
        # HIVE-UnSuitableConfig:不合理参数
        # MAPREDUCE-MapperDataSkew:Map数据倾斜
        # MAPREDUCE-MapperMemWaste:MapMemory资源浪费
        # MAPREDUCE-MapperSlowTask:Map慢Task
        # MAPREDUCE-MapperTaskGC:MapperTaskGC
        # MAPREDUCE-MemExceeded:峰值内存超限
        # MAPREDUCE-ReducerDataSkew:Reduce数据倾斜
        # MAPREDUCE-ReducerMemWaste:ReduceMemory资源浪费
        # MAPREDUCE-ReducerSlowTask:Reduce慢Task
        # MAPREDUCE-ReducerTaskGC:ReducerTaskGC
        # MAPREDUCE-SchedulingDelay:调度延迟
        # SPARK-CpuWaste:CPU资源浪费
        # SPARK-DataSkew:数据倾斜
        # SPARK-ExecutorGC:ExecutorGC
        # SPARK-MemExceeded:峰值内存超限
        # SPARK-MemWaste:Memory资源浪费
        # SPARK-ScheduleOverhead:ScheduleOverhead
        # SPARK-ScheduleSkew:调度倾斜
        # SPARK-SlowTask:慢Task
        # TEZ-DataSkew:数据倾斜
        # TEZ-MapperDataSkew:Map数据倾斜
        # TEZ-ReducerDataSkew:Reduce数据倾斜
        # TEZ-TezMemWaste:Memory资源浪费
        # TEZ-TezSlowTask:慢Task
        # TEZ-TezTaskGC:TasksGC
        # @type RuleID: String
        # @param RuleName: 洞察规则名字，可参考RuleID的说明
        # @type RuleName: String
        # @param RuleExplain: 洞察规则解释
        # @type RuleExplain: String
        # @param Detail: 详情
        # @type Detail: String
        # @param Suggestion: 建议信息
        # @type Suggestion: String
        # @param Value: 洞察异常衡量值，同类型的洞察项越大越严重，不同类型的洞察项无对比意义
        # @type Value: Integer
        # @param ScheduleTaskExecID: 调度任务执行ID
        # @type ScheduleTaskExecID: String
        # @param ScheduleFlowName: 调度流，DAG
        # @type ScheduleFlowName: String
        # @param ScheduleTaskName: 调度flow中的某个task节点
        # @type ScheduleTaskName: String
        # @param JobConf: Yarn任务的部分核心配置
        # @type JobConf: String
        # @param Context: 洞察结构化信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String

        attr_accessor :ID, :Type, :RuleID, :RuleName, :RuleExplain, :Detail, :Suggestion, :Value, :ScheduleTaskExecID, :ScheduleFlowName, :ScheduleTaskName, :JobConf, :Context

        def initialize(id=nil, type=nil, ruleid=nil, rulename=nil, ruleexplain=nil, detail=nil, suggestion=nil, value=nil, scheduletaskexecid=nil, scheduleflowname=nil, scheduletaskname=nil, jobconf=nil, context=nil)
          @ID = id
          @Type = type
          @RuleID = ruleid
          @RuleName = rulename
          @RuleExplain = ruleexplain
          @Detail = detail
          @Suggestion = suggestion
          @Value = value
          @ScheduleTaskExecID = scheduletaskexecid
          @ScheduleFlowName = scheduleflowname
          @ScheduleTaskName = scheduletaskname
          @JobConf = jobconf
          @Context = context
        end

        def deserialize(params)
          @ID = params['ID']
          @Type = params['Type']
          @RuleID = params['RuleID']
          @RuleName = params['RuleName']
          @RuleExplain = params['RuleExplain']
          @Detail = params['Detail']
          @Suggestion = params['Suggestion']
          @Value = params['Value']
          @ScheduleTaskExecID = params['ScheduleTaskExecID']
          @ScheduleFlowName = params['ScheduleFlowName']
          @ScheduleTaskName = params['ScheduleTaskName']
          @JobConf = params['JobConf']
          @Context = params['Context']
        end
      end

      # 设置巡检任务配置
      class InspectionTaskSettings < TencentCloud::Common::AbstractModel
        # @param TaskType: 巡检任务的唯一标记
        # @type TaskType: String
        # @param Group: 巡检任务组名称
        # @type Group: String
        # @param Name: 巡检任务名称
        # @type Name: String
        # @param TaskSettings: 巡检任务参数设置
        # @type TaskSettings: Array
        # @param Selected: 是否选中，”true“ ”false“
        # @type Selected: String
        # @param Enable: 是否开启监控
        # @type Enable: String
        # @param SettingsJson: 事件Json模板
        # @type SettingsJson: String

        attr_accessor :TaskType, :Group, :Name, :TaskSettings, :Selected, :Enable, :SettingsJson

        def initialize(tasktype=nil, group=nil, name=nil, tasksettings=nil, selected=nil, enable=nil, settingsjson=nil)
          @TaskType = tasktype
          @Group = group
          @Name = name
          @TaskSettings = tasksettings
          @Selected = selected
          @Enable = enable
          @SettingsJson = settingsjson
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Group = params['Group']
          @Name = params['Name']
          unless params['TaskSettings'].nil?
            @TaskSettings = []
            params['TaskSettings'].each do |i|
              tasksettings_tmp = TaskSettings.new
              tasksettings_tmp.deserialize(i)
              @TaskSettings << tasksettings_tmp
            end
          end
          @Selected = params['Selected']
          @Enable = params['Enable']
          @SettingsJson = params['SettingsJson']
        end
      end

      # 实例预付费参数，只有在付费类型为PREPAID时生效。
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 包年包月时间，默认为1，单位：月。
        # 取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 是否自动续费，默认为否。
        # <li>true：是</li>
        # <li>false：否</li>
        # @type RenewFlag: Boolean

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 代表一个kv结构
      class Item < TencentCloud::Common::AbstractModel
        # @param Key: 健值
        # @type Key: String
        # @param Value: 值
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

      # 键值对组成的列表
      class ItemSeq < TencentCloud::Common::AbstractModel
        # @param Items: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :Items

        def initialize(items=nil)
          @Items = items
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
        end
      end

      # 机器资源描述。
      class JobFlowResource < TencentCloud::Common::AbstractModel
        # @param Spec: 机器类型描述。
        # @type Spec: String
        # @param InstanceType: 机器类型描述，可参考CVM的该含义。
        # @type InstanceType: String
        # @param Tags: 标签KV对。
        # @type Tags: Array
        # @param DiskGroups: 磁盘描述列表。
        # @type DiskGroups: Array

        attr_accessor :Spec, :InstanceType, :Tags, :DiskGroups

        def initialize(spec=nil, instancetype=nil, tags=nil, diskgroups=nil)
          @Spec = spec
          @InstanceType = instancetype
          @Tags = tags
          @DiskGroups = diskgroups
        end

        def deserialize(params)
          @Spec = params['Spec']
          @InstanceType = params['InstanceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['DiskGroups'].nil?
            @DiskGroups = []
            params['DiskGroups'].each do |i|
              diskgroup_tmp = DiskGroup.new
              diskgroup_tmp.deserialize(i)
              @DiskGroups << diskgroup_tmp
            end
          end
        end
      end

      # 流程作业资源描述
      class JobFlowResourceSpec < TencentCloud::Common::AbstractModel
        # @param MasterCount: 主节点数量。
        # @type MasterCount: Integer
        # @param MasterResourceSpec: 主节点配置。
        # @type MasterResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`
        # @param CoreCount: Core节点数量
        # @type CoreCount: Integer
        # @param CoreResourceSpec: Core节点配置。
        # @type CoreResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`
        # @param TaskCount: Task节点数量。
        # @type TaskCount: Integer
        # @param CommonCount: Common节点数量。
        # @type CommonCount: Integer
        # @param TaskResourceSpec: Task节点配置。
        # @type TaskResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`
        # @param CommonResourceSpec: Common节点配置。
        # @type CommonResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`

        attr_accessor :MasterCount, :MasterResourceSpec, :CoreCount, :CoreResourceSpec, :TaskCount, :CommonCount, :TaskResourceSpec, :CommonResourceSpec

        def initialize(mastercount=nil, masterresourcespec=nil, corecount=nil, coreresourcespec=nil, taskcount=nil, commoncount=nil, taskresourcespec=nil, commonresourcespec=nil)
          @MasterCount = mastercount
          @MasterResourceSpec = masterresourcespec
          @CoreCount = corecount
          @CoreResourceSpec = coreresourcespec
          @TaskCount = taskcount
          @CommonCount = commoncount
          @TaskResourceSpec = taskresourcespec
          @CommonResourceSpec = commonresourcespec
        end

        def deserialize(params)
          @MasterCount = params['MasterCount']
          unless params['MasterResourceSpec'].nil?
            @MasterResourceSpec = JobFlowResource.new
            @MasterResourceSpec.deserialize(params['MasterResourceSpec'])
          end
          @CoreCount = params['CoreCount']
          unless params['CoreResourceSpec'].nil?
            @CoreResourceSpec = JobFlowResource.new
            @CoreResourceSpec.deserialize(params['CoreResourceSpec'])
          end
          @TaskCount = params['TaskCount']
          @CommonCount = params['CommonCount']
          unless params['TaskResourceSpec'].nil?
            @TaskResourceSpec = JobFlowResource.new
            @TaskResourceSpec.deserialize(params['TaskResourceSpec'])
          end
          unless params['CommonResourceSpec'].nil?
            @CommonResourceSpec = JobFlowResource.new
            @CommonResourceSpec.deserialize(params['CommonResourceSpec'])
          end
        end
      end

      # 任务步骤结果描述
      class JobResult < TencentCloud::Common::AbstractModel
        # @param Name: 任务步骤名称。
        # @type Name: String
        # @param ActionOnFailure: 任务步骤失败时的处理策略，可以为以下值：
        # "CONTINUE"，跳过当前失败步骤，继续后续步骤。
        # “TERMINATE_CLUSTER”，终止当前及后续步骤，并销毁集群。
        # “CANCEL_AND_WAIT”，取消当前步骤并阻塞等待处理。
        # @type ActionOnFailure: String
        # @param JobState: 当前步骤的状态，可以为以下值：
        # “JobFlowStepStatusInit”，初始化状态，等待执行。
        # “JobFlowStepStatusRunning”，任务步骤正在执行。
        # “JobFlowStepStatusFailed”，任务步骤执行失败。
        # “JobFlowStepStatusSucceed”，任务步骤执行成功。
        # @type JobState: String
        # @param ApplicationId: YARN任务ID
        # @type ApplicationId: String

        attr_accessor :Name, :ActionOnFailure, :JobState, :ApplicationId

        def initialize(name=nil, actiononfailure=nil, jobstate=nil, applicationid=nil)
          @Name = name
          @ActionOnFailure = actiononfailure
          @JobState = jobstate
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @Name = params['Name']
          @ActionOnFailure = params['ActionOnFailure']
          @JobState = params['JobState']
          @ApplicationId = params['ApplicationId']
        end
      end

      # 键值对，主要用来做Filter
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
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

      # Kyuubi查询信息
      class KyuubiQueryInfo < TencentCloud::Common::AbstractModel
        # @param ClientIP: 提交IP
        # @type ClientIP: String
        # @param Duration: 执行时长
        # @type Duration: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param EngineID: Engine Id
        # @type EngineID: String
        # @param EngineType: 计算引擎
        # @type EngineType: String
        # @param Id: ID
        # @type Id: String
        # @param SessionID: Session Id
        # @type SessionID: String
        # @param BeginTime: 开始时间
        # @type BeginTime: Integer
        # @param ExecutionState: 执行状态
        # @type ExecutionState: String
        # @param ExecutionStatement: 执行语句
        # @type ExecutionStatement: String
        # @param StatementID: Statement Id
        # @type StatementID: String
        # @param User: 提交用户
        # @type User: String

        attr_accessor :ClientIP, :Duration, :EndTime, :EngineID, :EngineType, :Id, :SessionID, :BeginTime, :ExecutionState, :ExecutionStatement, :StatementID, :User

        def initialize(clientip=nil, duration=nil, endtime=nil, engineid=nil, enginetype=nil, id=nil, sessionid=nil, begintime=nil, executionstate=nil, executionstatement=nil, statementid=nil, user=nil)
          @ClientIP = clientip
          @Duration = duration
          @EndTime = endtime
          @EngineID = engineid
          @EngineType = enginetype
          @Id = id
          @SessionID = sessionid
          @BeginTime = begintime
          @ExecutionState = executionstate
          @ExecutionStatement = executionstatement
          @StatementID = statementid
          @User = user
        end

        def deserialize(params)
          @ClientIP = params['ClientIP']
          @Duration = params['Duration']
          @EndTime = params['EndTime']
          @EngineID = params['EngineID']
          @EngineType = params['EngineType']
          @Id = params['Id']
          @SessionID = params['SessionID']
          @BeginTime = params['BeginTime']
          @ExecutionState = params['ExecutionState']
          @ExecutionStatement = params['ExecutionStatement']
          @StatementID = params['StatementID']
          @User = params['User']
        end
      end

      # 自动扩缩容基于负载指标的规则
      class LoadAutoScaleStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyId: 规则ID。
        # @type StrategyId: Integer
        # @param StrategyName: 规则名称。
        # @type StrategyName: String
        # @param CalmDownTime: 规则生效冷却时间。
        # @type CalmDownTime: Integer
        # @param ScaleAction: 扩缩容动作，1表示扩容，2表示缩容。
        # @type ScaleAction: Integer
        # @param ScaleNum: 每次规则生效时的扩缩容数量。
        # @type ScaleNum: Integer
        # @param ProcessMethod: 指标处理方法，1表示MAX，2表示MIN，3表示AVG。
        # @type ProcessMethod: Integer
        # @param Priority: 规则优先级，添加时无效，默认为自增。
        # @type Priority: Integer
        # @param StrategyStatus: 规则状态，1表示启动，3表示禁用。
        # @type StrategyStatus: Integer
        # @param YarnNodeLabel: 规则扩容指定 yarn node label
        # @type YarnNodeLabel: String
        # @param PeriodValid: 规则生效的有效时间
        # @type PeriodValid: String
        # @param GraceDownFlag: 优雅缩容开关
        # @type GraceDownFlag: Boolean
        # @param GraceDownTime: 优雅缩容等待时间
        # @type GraceDownTime: Integer
        # @param GraceDownProtectFlag: 是否开启任务保护
        # @type GraceDownProtectFlag: Boolean
        # @param Tags: 绑定标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ConfigGroupAssigned: 预设配置组
        # @type ConfigGroupAssigned: String
        # @param MeasureMethod: 扩容资源计算方法，"DEFAULT","INSTANCE", "CPU", "MEMORYGB"。
        # "DEFAULT"表示默认方式，与"INSTANCE"意义相同。
        # "INSTANCE"表示按照节点计算，默认方式。
        # "CPU"表示按照机器的核数计算。
        # "MEMORYGB"表示按照机器内存数计算。
        # @type MeasureMethod: String
        # @param SoftDeployDesc: 节点部署服务列表，例如["HDFS-3.1.2","YARN-3.1.2"]。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftDeployDesc: Array
        # @param ServiceNodeDesc: 启动进程列表，例如["NodeManager"]。
        # @type ServiceNodeDesc: String
        # @param ServiceNodeInfo: 启动进程列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNodeInfo: Array
        # @param SoftDeployInfo: 节点部署服务列表。部署服务仅填写HDFS、YARN。[组件名对应的映射关系表](https://cloud.tencent.com/document/product/589/98760)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftDeployInfo: Array
        # @param LoadMetricsConditions: 多指标触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadMetricsConditions: :class:`Tencentcloud::Emr.v20190103.models.LoadMetricsConditions`
        # @param GroupId: 伸缩组Id
        # @type GroupId: Integer
        # @param Soft: soft例如yarn
        # @type Soft: String

        attr_accessor :StrategyId, :StrategyName, :CalmDownTime, :ScaleAction, :ScaleNum, :ProcessMethod, :Priority, :StrategyStatus, :YarnNodeLabel, :PeriodValid, :GraceDownFlag, :GraceDownTime, :GraceDownProtectFlag, :Tags, :ConfigGroupAssigned, :MeasureMethod, :SoftDeployDesc, :ServiceNodeDesc, :ServiceNodeInfo, :SoftDeployInfo, :LoadMetricsConditions, :GroupId, :Soft

        def initialize(strategyid=nil, strategyname=nil, calmdowntime=nil, scaleaction=nil, scalenum=nil, processmethod=nil, priority=nil, strategystatus=nil, yarnnodelabel=nil, periodvalid=nil, gracedownflag=nil, gracedowntime=nil, gracedownprotectflag=nil, tags=nil, configgroupassigned=nil, measuremethod=nil, softdeploydesc=nil, servicenodedesc=nil, servicenodeinfo=nil, softdeployinfo=nil, loadmetricsconditions=nil, groupid=nil, soft=nil)
          @StrategyId = strategyid
          @StrategyName = strategyname
          @CalmDownTime = calmdowntime
          @ScaleAction = scaleaction
          @ScaleNum = scalenum
          @ProcessMethod = processmethod
          @Priority = priority
          @StrategyStatus = strategystatus
          @YarnNodeLabel = yarnnodelabel
          @PeriodValid = periodvalid
          @GraceDownFlag = gracedownflag
          @GraceDownTime = gracedowntime
          @GraceDownProtectFlag = gracedownprotectflag
          @Tags = tags
          @ConfigGroupAssigned = configgroupassigned
          @MeasureMethod = measuremethod
          @SoftDeployDesc = softdeploydesc
          @ServiceNodeDesc = servicenodedesc
          @ServiceNodeInfo = servicenodeinfo
          @SoftDeployInfo = softdeployinfo
          @LoadMetricsConditions = loadmetricsconditions
          @GroupId = groupid
          @Soft = soft
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @CalmDownTime = params['CalmDownTime']
          @ScaleAction = params['ScaleAction']
          @ScaleNum = params['ScaleNum']
          @ProcessMethod = params['ProcessMethod']
          @Priority = params['Priority']
          @StrategyStatus = params['StrategyStatus']
          @YarnNodeLabel = params['YarnNodeLabel']
          @PeriodValid = params['PeriodValid']
          @GraceDownFlag = params['GraceDownFlag']
          @GraceDownTime = params['GraceDownTime']
          @GraceDownProtectFlag = params['GraceDownProtectFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ConfigGroupAssigned = params['ConfigGroupAssigned']
          @MeasureMethod = params['MeasureMethod']
          @SoftDeployDesc = params['SoftDeployDesc']
          @ServiceNodeDesc = params['ServiceNodeDesc']
          @ServiceNodeInfo = params['ServiceNodeInfo']
          @SoftDeployInfo = params['SoftDeployInfo']
          unless params['LoadMetricsConditions'].nil?
            @LoadMetricsConditions = LoadMetricsConditions.new
            @LoadMetricsConditions.deserialize(params['LoadMetricsConditions'])
          end
          @GroupId = params['GroupId']
          @Soft = params['Soft']
        end
      end

      # 负载指标条件
      class LoadMetricsCondition < TencentCloud::Common::AbstractModel
        # @param StatisticPeriod: 规则统计周期，提供1min,3min,5min。
        # @type StatisticPeriod: Integer
        # @param TriggerThreshold: 触发次数，当连续触发超过TriggerThreshold次后才开始扩缩容。
        # @type TriggerThreshold: Integer
        # @param LoadMetrics: 扩缩容负载指标。
        # @type LoadMetrics: String
        # @param MetricId: 规则元数据记录ID。
        # @type MetricId: Integer
        # @param Conditions: 触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array

        attr_accessor :StatisticPeriod, :TriggerThreshold, :LoadMetrics, :MetricId, :Conditions

        def initialize(statisticperiod=nil, triggerthreshold=nil, loadmetrics=nil, metricid=nil, conditions=nil)
          @StatisticPeriod = statisticperiod
          @TriggerThreshold = triggerthreshold
          @LoadMetrics = loadmetrics
          @MetricId = metricid
          @Conditions = conditions
        end

        def deserialize(params)
          @StatisticPeriod = params['StatisticPeriod']
          @TriggerThreshold = params['TriggerThreshold']
          @LoadMetrics = params['LoadMetrics']
          @MetricId = params['MetricId']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              triggercondition_tmp = TriggerCondition.new
              triggercondition_tmp.deserialize(i)
              @Conditions << triggercondition_tmp
            end
          end
        end
      end

      # 负载指标
      class LoadMetricsConditions < TencentCloud::Common::AbstractModel
        # @param LoadMetrics: 触发规则条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadMetrics: Array
        # @param Match: 0:所有条件满足
        # 1：满足任意一个
        # @type Match: Integer

        attr_accessor :LoadMetrics, :Match

        def initialize(loadmetrics=nil, match=nil)
          @LoadMetrics = loadmetrics
          @Match = match
        end

        def deserialize(params)
          unless params['LoadMetrics'].nil?
            @LoadMetrics = []
            params['LoadMetrics'].each do |i|
              loadmetricscondition_tmp = LoadMetricsCondition.new
              loadmetricscondition_tmp.deserialize(i)
              @LoadMetrics << loadmetricscondition_tmp
            end
          end
          @Match = params['Match']
        end
      end

      # 登录设置
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码，8-16个字符，包含大写字母、小写字母、数字和特殊字符四种，特殊符号仅支持!@%^*，密码第一位不能为特殊字符
        # @type Password: String
        # @param PublicKeyId: 密钥ID。关联密钥后，就可以通过对应的私钥来访问实例；PublicKeyId可通过接口[DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699)获取
        # @type PublicKeyId: String

        attr_accessor :Password, :PublicKeyId

        def initialize(password=nil, publickeyid=nil)
          @Password = password
          @PublicKeyId = publickeyid
        end

        def deserialize(params)
          @Password = params['Password']
          @PublicKeyId = params['PublicKeyId']
        end
      end

      # 元数据库信息
      class MetaDbInfo < TencentCloud::Common::AbstractModel
        # @param MetaType: 元数据类型。
        # @type MetaType: String
        # @param UnifyMetaInstanceId: 统一元数据库实例ID。
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自建元数据库信息。
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`

        attr_accessor :MetaType, :UnifyMetaInstanceId, :MetaDBInfo

        def initialize(metatype=nil, unifymetainstanceid=nil, metadbinfo=nil)
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
        end

        def deserialize(params)
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
        end
      end

      # 指标tag
      class MetricTags < TencentCloud::Common::AbstractModel
        # @param Unit: 指标单位
        # @type Unit: String
        # @param Type: 指标Type
        # @type Type: String

        attr_accessor :Unit, :Type

        def initialize(unit=nil, type=nil)
          @Unit = unit
          @Type = type
        end

        def deserialize(params)
          @Unit = params['Unit']
          @Type = params['Type']
        end
      end

      # ModifyAutoRenewFlag请求参数结构体
      class ModifyAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ResourceIds: 实例ID
        # @type ResourceIds: Array
        # @param RenewFlag: NOTIFY_AND_MANUAL_RENEW：表示通知即将过期，但不自动续费  NOTIFY_AND_AUTO_RENEW：表示通知即将过期，而且自动续费  DISABLE_NOTIFY_AND_MANUAL_RENEW：表示不通知即将过期，也不自动续费。
        # @type RenewFlag: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String

        attr_accessor :InstanceId, :ResourceIds, :RenewFlag, :ComputeResourceId

        def initialize(instanceid=nil, resourceids=nil, renewflag=nil, computeresourceid=nil)
          @InstanceId = instanceid
          @ResourceIds = resourceids
          @RenewFlag = renewflag
          @ComputeResourceId = computeresourceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceIds = params['ResourceIds']
          @RenewFlag = params['RenewFlag']
          @ComputeResourceId = params['ComputeResourceId']
        end
      end

      # ModifyAutoRenewFlag返回参数结构体
      class ModifyAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAutoScaleStrategy请求参数结构体
      class ModifyAutoScaleStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param StrategyType: 自动扩缩容规则类型，1表示按负载指标扩缩容，2表示按时间扩缩容。
        # @type StrategyType: Integer
        # @param LoadAutoScaleStrategies: 按负载扩缩容的指标。
        # @type LoadAutoScaleStrategies: Array
        # @param TimeAutoScaleStrategies: 按时间扩缩容的规则。
        # @type TimeAutoScaleStrategies: Array
        # @param GroupId: 伸缩组Id
        # @type GroupId: Integer

        attr_accessor :InstanceId, :StrategyType, :LoadAutoScaleStrategies, :TimeAutoScaleStrategies, :GroupId

        def initialize(instanceid=nil, strategytype=nil, loadautoscalestrategies=nil, timeautoscalestrategies=nil, groupid=nil)
          @InstanceId = instanceid
          @StrategyType = strategytype
          @LoadAutoScaleStrategies = loadautoscalestrategies
          @TimeAutoScaleStrategies = timeautoscalestrategies
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StrategyType = params['StrategyType']
          unless params['LoadAutoScaleStrategies'].nil?
            @LoadAutoScaleStrategies = []
            params['LoadAutoScaleStrategies'].each do |i|
              loadautoscalestrategy_tmp = LoadAutoScaleStrategy.new
              loadautoscalestrategy_tmp.deserialize(i)
              @LoadAutoScaleStrategies << loadautoscalestrategy_tmp
            end
          end
          unless params['TimeAutoScaleStrategies'].nil?
            @TimeAutoScaleStrategies = []
            params['TimeAutoScaleStrategies'].each do |i|
              timeautoscalestrategy_tmp = TimeAutoScaleStrategy.new
              timeautoscalestrategy_tmp.deserialize(i)
              @TimeAutoScaleStrategies << timeautoscalestrategy_tmp
            end
          end
          @GroupId = params['GroupId']
        end
      end

      # ModifyAutoScaleStrategy返回参数结构体
      class ModifyAutoScaleStrategyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGlobalConfig请求参数结构体
      class ModifyGlobalConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param Items: 修改的配置列表。其中Key的取值与`DescribeGlobalConfig`接口的出参一一对应，不区分大小写（如果报错找不到Key，以出参为准），分别为：
        # 1. 开启或关闭资源调度：enableResourceSchedule；在关闭时会有一个同步的选项，Key为sync，取值为true或false。
        # 2. 调度器类型：scheduler。
        # 2. 开启或关闭标签：enableLabel，取值为true或false。
        # 2. 标签目录：labelDir。
        # 3. 是否覆盖用户指定队列：queueMappingOverride，取值为true、false。
        # 4. 程序上限：userMaxAppsDefault。
        # 5. 动态配置项：`DescribeGlobalConfig`接口返回的DefaultSettings中的Name字段。
        # Value的取值都是字符串，对于**是否覆盖用户指定队列**、**程序上限**，json规范中的null表示清空该配置的值。支持修改单个配置项的值。对于**动态配置项**则需要全量传递以进行覆盖。
        # @type Items: Array

        attr_accessor :InstanceId, :Items

        def initialize(instanceid=nil, items=nil)
          @InstanceId = instanceid
          @Items = items
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
        end
      end

      # ModifyGlobalConfig返回参数结构体
      class ModifyGlobalConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInspectionSettings请求参数结构体
      class ModifyInspectionSettingsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 巡检类型，FixedTime/RealTime
        # @type Type: String
        # @param Settings: 任务配置
        # @type Settings: Array
        # @param StartTime: 开始时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳
        # @type EndTime: Integer
        # @param Strategy: 巡检周期，eg EveryDay EveryWeek EveryMonth
        # @type Strategy: String
        # @param Clock: 每天的开始的时间
        # @type Clock: String
        # @param DayOfWeek: 每周的周几
        # @type DayOfWeek: String
        # @param DayOfMonth: 每月的第几号
        # @type DayOfMonth: String
        # @param JobId: 巡检作业Id
        # @type JobId: String

        attr_accessor :InstanceId, :Type, :Settings, :StartTime, :EndTime, :Strategy, :Clock, :DayOfWeek, :DayOfMonth, :JobId

        def initialize(instanceid=nil, type=nil, settings=nil, starttime=nil, endtime=nil, strategy=nil, clock=nil, dayofweek=nil, dayofmonth=nil, jobid=nil)
          @InstanceId = instanceid
          @Type = type
          @Settings = settings
          @StartTime = starttime
          @EndTime = endtime
          @Strategy = strategy
          @Clock = clock
          @DayOfWeek = dayofweek
          @DayOfMonth = dayofmonth
          @JobId = jobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          unless params['Settings'].nil?
            @Settings = []
            params['Settings'].each do |i|
              inspectiontasksettings_tmp = InspectionTaskSettings.new
              inspectiontasksettings_tmp.deserialize(i)
              @Settings << inspectiontasksettings_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Strategy = params['Strategy']
          @Clock = params['Clock']
          @DayOfWeek = params['DayOfWeek']
          @DayOfMonth = params['DayOfMonth']
          @JobId = params['JobId']
        end
      end

      # ModifyInspectionSettings返回参数结构体
      class ModifyInspectionSettingsResponse < TencentCloud::Common::AbstractModel
        # @param Info: 返回值描述
        # @type Info: String
        # @param JobId: 返回成功修改的巡检任务Id
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Info, :JobId, :RequestId

        def initialize(info=nil, jobid=nil, requestid=nil)
          @Info = info
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @Info = params['Info']
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceBasic请求参数结构体
      class ModifyInstanceBasicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ResourceBaseType: 用来标注修改计算资源
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 需要修改的计算资源id，与ResourceBaseType 配合使用
        # @type ComputeResourceId: String

        attr_accessor :InstanceId, :ClusterName, :ResourceBaseType, :ComputeResourceId

        def initialize(instanceid=nil, clustername=nil, resourcebasetype=nil, computeresourceid=nil)
          @InstanceId = instanceid
          @ClusterName = clustername
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterName = params['ClusterName']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
        end
      end

      # ModifyInstanceBasic返回参数结构体
      class ModifyInstanceBasicResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPodNum请求参数结构体
      class ModifyPodNumRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群Id
        # @type InstanceId: String
        # @param ServiceGroup: 服务编号
        # @type ServiceGroup: Integer
        # @param ServiceType: 角色编号
        # @type ServiceType: Integer
        # @param PodNum: 期望Pod数量
        # @type PodNum: Integer

        attr_accessor :InstanceId, :ServiceGroup, :ServiceType, :PodNum

        def initialize(instanceid=nil, servicegroup=nil, servicetype=nil, podnum=nil)
          @InstanceId = instanceid
          @ServiceGroup = servicegroup
          @ServiceType = servicetype
          @PodNum = podnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ServiceGroup = params['ServiceGroup']
          @ServiceType = params['ServiceType']
          @PodNum = params['PodNum']
        end
      end

      # ModifyPodNum返回参数结构体
      class ModifyPodNumResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群Id
        # @type InstanceId: String
        # @param FlowId: 流程Id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :FlowId, :RequestId

        def initialize(instanceid=nil, flowid=nil, requestid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourcePools请求参数结构体
      class ModifyResourcePoolsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群id
        # @type InstanceId: String
        # @param Key: 取值范围：
        # <li>fair:代表公平调度标识</li>
        # <li>capacity:代表容量调度标识</li>
        # @type Key: String

        attr_accessor :InstanceId, :Key

        def initialize(instanceid=nil, key=nil)
          @InstanceId = instanceid
          @Key = key
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Key = params['Key']
        end
      end

      # ModifyResourcePools返回参数结构体
      class ModifyResourcePoolsResponse < TencentCloud::Common::AbstractModel
        # @param IsDraft: false表示不是草稿，提交刷新请求成功
        # @type IsDraft: Boolean
        # @param ErrorMsg: 扩展字段，暂时没用
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsDraft, :ErrorMsg, :RequestId

        def initialize(isdraft=nil, errormsg=nil, requestid=nil)
          @IsDraft = isdraft
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsDraft = params['IsDraft']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResource请求参数结构体
      class ModifyResourceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param PayMode: 计费类型
        # @type PayMode: Integer
        # @param NewCpu: 变配CPU
        # @type NewCpu: Integer
        # @param NewMem: 变配内存
        # @type NewMem: Integer
        # @param ClientToken: Token
        # @type ClientToken: String
        # @param InstanceType: 变配机器规格
        # @type InstanceType: String
        # @param ResourceIdList: 节点ID列表
        # @type ResourceIdList: Array

        attr_accessor :InstanceId, :PayMode, :NewCpu, :NewMem, :ClientToken, :InstanceType, :ResourceIdList

        def initialize(instanceid=nil, paymode=nil, newcpu=nil, newmem=nil, clienttoken=nil, instancetype=nil, resourceidlist=nil)
          @InstanceId = instanceid
          @PayMode = paymode
          @NewCpu = newcpu
          @NewMem = newmem
          @ClientToken = clienttoken
          @InstanceType = instancetype
          @ResourceIdList = resourceidlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PayMode = params['PayMode']
          @NewCpu = params['NewCpu']
          @NewMem = params['NewMem']
          @ClientToken = params['ClientToken']
          @InstanceType = params['InstanceType']
          @ResourceIdList = params['ResourceIdList']
        end
      end

      # ModifyResource返回参数结构体
      class ModifyResourceResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 流程traceId
        # @type TraceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :RequestId

        def initialize(traceid=nil, requestid=nil)
          @TraceId = traceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceScheduleConfig请求参数结构体
      class ModifyResourceScheduleConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param Key: 业务标识，fair表示编辑公平的配置项，fairPlan表示编辑执行计划，capacity表示编辑容量的配置项
        # @type Key: String
        # @param Value: 修改后的模块消息
        # @type Value: String

        attr_accessor :InstanceId, :Key, :Value

        def initialize(instanceid=nil, key=nil, value=nil)
          @InstanceId = instanceid
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ModifyResourceScheduleConfig返回参数结构体
      class ModifyResourceScheduleConfigResponse < TencentCloud::Common::AbstractModel
        # @param IsDraft: true为草稿，表示还没有刷新资源池
        # @type IsDraft: Boolean
        # @param ErrorMsg: 校验错误信息，如果不为空，则说明校验失败，配置没有成功
        # @type ErrorMsg: String
        # @param Data: 返回数据
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsDraft, :ErrorMsg, :Data, :RequestId

        def initialize(isdraft=nil, errormsg=nil, data=nil, requestid=nil)
          @IsDraft = isdraft
          @ErrorMsg = errormsg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @IsDraft = params['IsDraft']
          @ErrorMsg = params['ErrorMsg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceScheduler请求参数结构体
      class ModifyResourceSchedulerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param OldValue: 老的调度器:fair
        # @type OldValue: String
        # @param NewValue: 新的调度器:capacity
        # @type NewValue: String

        attr_accessor :InstanceId, :OldValue, :NewValue

        def initialize(instanceid=nil, oldvalue=nil, newvalue=nil)
          @InstanceId = instanceid
          @OldValue = oldvalue
          @NewValue = newvalue
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
        end
      end

      # ModifyResourceScheduler返回参数结构体
      class ModifyResourceSchedulerResponse < TencentCloud::Common::AbstractModel
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

      # 强制修改标签
      class ModifyResourceTags < TencentCloud::Common::AbstractModel
        # @param ResourceId: 集群id 或者 cvm id
        # @type ResourceId: String
        # @param Resource: 资源6段式表达式
        # @type Resource: String
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceRegion: ap-beijing
        # @type ResourceRegion: String
        # @param ServiceType: emr
        # @type ServiceType: String
        # @param DeleteTags: 删除的标签列表
        # @type DeleteTags: Array
        # @param AddTags: 添加的标签列表
        # @type AddTags: Array
        # @param ModifyTags: 修改的标签列表
        # @type ModifyTags: Array

        attr_accessor :ResourceId, :Resource, :ResourcePrefix, :ResourceRegion, :ServiceType, :DeleteTags, :AddTags, :ModifyTags

        def initialize(resourceid=nil, resource=nil, resourceprefix=nil, resourceregion=nil, servicetype=nil, deletetags=nil, addtags=nil, modifytags=nil)
          @ResourceId = resourceid
          @Resource = resource
          @ResourcePrefix = resourceprefix
          @ResourceRegion = resourceregion
          @ServiceType = servicetype
          @DeleteTags = deletetags
          @AddTags = addtags
          @ModifyTags = modifytags
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Resource = params['Resource']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceRegion = params['ResourceRegion']
          @ServiceType = params['ServiceType']
          unless params['DeleteTags'].nil?
            @DeleteTags = []
            params['DeleteTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DeleteTags << tag_tmp
            end
          end
          unless params['AddTags'].nil?
            @AddTags = []
            params['AddTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @AddTags << tag_tmp
            end
          end
          unless params['ModifyTags'].nil?
            @ModifyTags = []
            params['ModifyTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ModifyTags << tag_tmp
            end
          end
        end
      end

      # ModifyResourcesTags请求参数结构体
      class ModifyResourcesTagsRequest < TencentCloud::Common::AbstractModel
        # @param ModifyType: 标签类型，取值Cluster或者Node
        # @type ModifyType: String
        # @param ModifyResourceTagsInfoList: 标签信息
        # @type ModifyResourceTagsInfoList: Array

        attr_accessor :ModifyType, :ModifyResourceTagsInfoList

        def initialize(modifytype=nil, modifyresourcetagsinfolist=nil)
          @ModifyType = modifytype
          @ModifyResourceTagsInfoList = modifyresourcetagsinfolist
        end

        def deserialize(params)
          @ModifyType = params['ModifyType']
          unless params['ModifyResourceTagsInfoList'].nil?
            @ModifyResourceTagsInfoList = []
            params['ModifyResourceTagsInfoList'].each do |i|
              modifyresourcetags_tmp = ModifyResourceTags.new
              modifyresourcetags_tmp.deserialize(i)
              @ModifyResourceTagsInfoList << modifyresourcetags_tmp
            end
          end
        end
      end

      # ModifyResourcesTags返回参数结构体
      class ModifyResourcesTagsResponse < TencentCloud::Common::AbstractModel
        # @param SuccessList: 成功的资源id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessList: Array
        # @param FailList: 失败的资源id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailList: Array
        # @param PartSuccessList: 部分成功的资源id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartSuccessList: Array
        # @param ClusterToFlowIdList: 集群id与流程id的映射列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterToFlowIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessList, :FailList, :PartSuccessList, :ClusterToFlowIdList, :RequestId

        def initialize(successlist=nil, faillist=nil, partsuccesslist=nil, clustertoflowidlist=nil, requestid=nil)
          @SuccessList = successlist
          @FailList = faillist
          @PartSuccessList = partsuccesslist
          @ClusterToFlowIdList = clustertoflowidlist
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessList = params['SuccessList']
          @FailList = params['FailList']
          @PartSuccessList = params['PartSuccessList']
          unless params['ClusterToFlowIdList'].nil?
            @ClusterToFlowIdList = []
            params['ClusterToFlowIdList'].each do |i|
              clusteridtoflowid_tmp = ClusterIDToFlowID.new
              clusteridtoflowid_tmp.deserialize(i)
              @ClusterToFlowIdList << clusteridtoflowid_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifySLInstanceBasic请求参数结构体
      class ModifySLInstanceBasicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param ClusterName: 实例名称
        # @type ClusterName: String

        attr_accessor :InstanceId, :ClusterName

        def initialize(instanceid=nil, clustername=nil)
          @InstanceId = instanceid
          @ClusterName = clustername
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterName = params['ClusterName']
        end
      end

      # ModifySLInstanceBasic返回参数结构体
      class ModifySLInstanceBasicResponse < TencentCloud::Common::AbstractModel
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

      # ModifySLInstance请求参数结构体
      class ModifySLInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一标识符（字符串表示）。
        # @type InstanceId: String
        # @param Zone: 需要变更的区域名称。
        # @type Zone: String
        # @param NodeNum: 该区域变配后的目标节点数量，所有区域节点总数应大于等于3，小于等于50。
        # @type NodeNum: Integer
        # @param ClientToken: 唯一随机标识，时效性为5分钟，需要调用者指定 防止客户端重复创建资源，例如 a9a90aa6-****-****-****-fae360632808
        # @type ClientToken: String

        attr_accessor :InstanceId, :Zone, :NodeNum, :ClientToken

        def initialize(instanceid=nil, zone=nil, nodenum=nil, clienttoken=nil)
          @InstanceId = instanceid
          @Zone = zone
          @NodeNum = nodenum
          @ClientToken = clienttoken
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @NodeNum = params['NodeNum']
          @ClientToken = params['ClientToken']
        end
      end

      # ModifySLInstance返回参数结构体
      class ModifySLInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserGroup请求参数结构体
      class ModifyUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群字符串ID
        # @type InstanceId: String
        # @param Users: 用户信息列表
        # @type Users: Array
        # @param UserGroup: 用户主组，cvm集群为必填参数，tke集群选填
        # @type UserGroup: String
        # @param Groups: 用户副组
        # @type Groups: Array
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :Users, :UserGroup, :Groups, :Remark

        def initialize(instanceid=nil, users=nil, usergroup=nil, groups=nil, remark=nil)
          @InstanceId = instanceid
          @Users = users
          @UserGroup = usergroup
          @Groups = groups
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Users = params['Users']
          @UserGroup = params['UserGroup']
          @Groups = params['Groups']
          @Remark = params['Remark']
        end
      end

      # ModifyUserGroup返回参数结构体
      class ModifyUserGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserManagerPwd请求参数结构体
      class ModifyUserManagerPwdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PassWord: 密码
        # @type PassWord: String
        # @param SyncPwd: 是否同步密码
        # @type SyncPwd: Boolean

        attr_accessor :InstanceId, :UserName, :PassWord, :SyncPwd

        def initialize(instanceid=nil, username=nil, password=nil, syncpwd=nil)
          @InstanceId = instanceid
          @UserName = username
          @PassWord = password
          @SyncPwd = syncpwd
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @SyncPwd = params['SyncPwd']
        end
      end

      # ModifyUserManagerPwd返回参数结构体
      class ModifyUserManagerPwdResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUsersOfGroupSTD请求参数结构体
      class ModifyUsersOfGroupSTDRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群名称
        # @type InstanceId: String
        # @param Group: 用户组名
        # @type Group: String
        # @param Users: 用户列表
        # @type Users: Array
        # @param Description: 用户组描述
        # @type Description: String
        # @param OperateAction: 枚举类, ADD, DELETE, SYNC


        # 枚举类说明:
        # - ADD: 新增的批量用户, 多次新增相同的用户不会报错
        # - DELETE: 从用户组里删除的批量用户, 删除不存在的用户不会报错
        # - SYNC: 用于同步整个用户组, 当列表为空时代表清空整个用户组
        # 默认为SYNC
        # @type OperateAction: String

        attr_accessor :InstanceId, :Group, :Users, :Description, :OperateAction

        def initialize(instanceid=nil, group=nil, users=nil, description=nil, operateaction=nil)
          @InstanceId = instanceid
          @Group = group
          @Users = users
          @Description = description
          @OperateAction = operateaction
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Group = params['Group']
          @Users = params['Users']
          @Description = params['Description']
          @OperateAction = params['OperateAction']
        end
      end

      # ModifyUsersOfGroupSTD返回参数结构体
      class ModifyUsersOfGroupSTDResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否修改成功
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyYarnDeploy请求参数结构体
      class ModifyYarnDeployRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param NewScheduler: 切换后的调度器，可选值为fair、capacity
        # @type NewScheduler: String
        # @param OldScheduler: 现在使用的调度器，可选值为fair、capacity
        # @type OldScheduler: String

        attr_accessor :InstanceId, :NewScheduler, :OldScheduler

        def initialize(instanceid=nil, newscheduler=nil, oldscheduler=nil)
          @InstanceId = instanceid
          @NewScheduler = newscheduler
          @OldScheduler = oldscheduler
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NewScheduler = params['NewScheduler']
          @OldScheduler = params['OldScheduler']
        end
      end

      # ModifyYarnDeploy返回参数结构体
      class ModifyYarnDeployResponse < TencentCloud::Common::AbstractModel
        # @param IsDraft: 为false不点亮部署生效、重置
        # @type IsDraft: Boolean
        # @param ErrorMsg: 错误信息，预留
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsDraft, :ErrorMsg, :RequestId

        def initialize(isdraft=nil, errormsg=nil, requestid=nil)
          @IsDraft = isdraft
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsDraft = params['IsDraft']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyYarnQueueV2请求参数结构体
      class ModifyYarnQueueV2Request < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群Id
        # @type InstanceId: String
        # @param Scheduler: 调度器类型。可选值：

        # 1. capacity
        # 2. fair
        # @type Scheduler: String
        # @param ConfigModifyInfoList: 资源池数据
        # @type ConfigModifyInfoList: Array

        attr_accessor :InstanceId, :Scheduler, :ConfigModifyInfoList

        def initialize(instanceid=nil, scheduler=nil, configmodifyinfolist=nil)
          @InstanceId = instanceid
          @Scheduler = scheduler
          @ConfigModifyInfoList = configmodifyinfolist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Scheduler = params['Scheduler']
          unless params['ConfigModifyInfoList'].nil?
            @ConfigModifyInfoList = []
            params['ConfigModifyInfoList'].each do |i|
              configmodifyinfov2_tmp = ConfigModifyInfoV2.new
              configmodifyinfov2_tmp.deserialize(i)
              @ConfigModifyInfoList << configmodifyinfov2_tmp
            end
          end
        end
      end

      # ModifyYarnQueueV2返回参数结构体
      class ModifyYarnQueueV2Response < TencentCloud::Common::AbstractModel
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

      # 定时伸缩每月重复任务策略
      class MonthRepeatStrategy < TencentCloud::Common::AbstractModel
        # @param ExecuteAtTimeOfDay: 重复任务执行的具体时刻，例如"01:02:00"
        # @type ExecuteAtTimeOfDay: String
        # @param DaysOfMonthRange: 每月中的天数时间段描述，长度只能为2，例如[2,10]表示每月2-10号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DaysOfMonthRange: Array

        attr_accessor :ExecuteAtTimeOfDay, :DaysOfMonthRange

        def initialize(executeattimeofday=nil, daysofmonthrange=nil)
          @ExecuteAtTimeOfDay = executeattimeofday
          @DaysOfMonthRange = daysofmonthrange
        end

        def deserialize(params)
          @ExecuteAtTimeOfDay = params['ExecuteAtTimeOfDay']
          @DaysOfMonthRange = params['DaysOfMonthRange']
        end
      end

      # 多云盘参数
      class MultiDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 云盘类型
        # <li>CLOUD_SSD：表示云SSD。</li>
        # <li>CLOUD_PREMIUM：表示高效云盘。</li>
        # <li>CLOUD_HSSD：表示增强型SSD云硬盘。</li>
        # @type DiskType: String
        # @param Volume: 云盘大小
        # @type Volume: Integer
        # @param Count: 该类型云盘个数
        # @type Count: Integer

        attr_accessor :DiskType, :Volume, :Count

        def initialize(disktype=nil, volume=nil, count=nil)
          @DiskType = disktype
          @Volume = volume
          @Count = count
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @Volume = params['Volume']
          @Count = params['Count']
        end
      end

      # 多云盘参数
      class MultiDiskMC < TencentCloud::Common::AbstractModel
        # @param Count: 该类型云盘个数
        # @type Count: Integer
        # @param Type: 磁盘类型
        # 1  :本地盘
        # 2  :云硬盘
        # 3  : 本地SSD
        # 4  : 云SSD
        # 5  : 高效云盘
        # 6  : 增强型SSD云硬盘
        # 11 : 吞吐型云硬盘
        # 12 : 极速型SSD云硬盘
        # 13 : 通用型SSD云硬盘
        # 14 : 大数据型云硬盘
        # 15 : 高IO型云硬盘
        # 16 : 远端SSD盘
        # @type Type: Integer
        # @param Size: 磁盘大小
        # @type Size: String
        # @param Volume: 云盘大小,单位b
        # @type Volume: Integer

        attr_accessor :Count, :Type, :Size, :Volume

        def initialize(count=nil, type=nil, size=nil, volume=nil)
          @Count = count
          @Type = type
          @Size = size
          @Volume = volume
        end

        def deserialize(params)
          @Count = params['Count']
          @Type = params['Type']
          @Size = params['Size']
          @Volume = params['Volume']
        end
      end

      # 各个可用区的参数信息
      class MultiZoneSetting < TencentCloud::Common::AbstractModel
        # @param ZoneTag: "master"、"standby"、"third-party"
        # @type ZoneTag: String
        # @param VPCSettings: 无
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param Placement: 无
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param ResourceSpec: 无
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`

        attr_accessor :ZoneTag, :VPCSettings, :Placement, :ResourceSpec

        def initialize(zonetag=nil, vpcsettings=nil, placement=nil, resourcespec=nil)
          @ZoneTag = zonetag
          @VPCSettings = vpcsettings
          @Placement = placement
          @ResourceSpec = resourcespec
        end

        def deserialize(params)
          @ZoneTag = params['ZoneTag']
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
        end
      end

      # 资源描述
      class NewResourceSpec < TencentCloud::Common::AbstractModel
        # @param MasterResourceSpec: 描述Master节点资源
        # @type MasterResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param CoreResourceSpec: 描述Core节点资源
        # @type CoreResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param TaskResourceSpec: 描述Task节点资源
        # @type TaskResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param MasterCount: Master节点数量
        # @type MasterCount: Integer
        # @param CoreCount: Core节点数量
        # @type CoreCount: Integer
        # @param TaskCount: Task节点数量
        # @type TaskCount: Integer
        # @param CommonResourceSpec: 描述Common节点资源
        # @type CommonResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param CommonCount: Common节点数量
        # @type CommonCount: Integer

        attr_accessor :MasterResourceSpec, :CoreResourceSpec, :TaskResourceSpec, :MasterCount, :CoreCount, :TaskCount, :CommonResourceSpec, :CommonCount

        def initialize(masterresourcespec=nil, coreresourcespec=nil, taskresourcespec=nil, mastercount=nil, corecount=nil, taskcount=nil, commonresourcespec=nil, commoncount=nil)
          @MasterResourceSpec = masterresourcespec
          @CoreResourceSpec = coreresourcespec
          @TaskResourceSpec = taskresourcespec
          @MasterCount = mastercount
          @CoreCount = corecount
          @TaskCount = taskcount
          @CommonResourceSpec = commonresourcespec
          @CommonCount = commoncount
        end

        def deserialize(params)
          unless params['MasterResourceSpec'].nil?
            @MasterResourceSpec = Resource.new
            @MasterResourceSpec.deserialize(params['MasterResourceSpec'])
          end
          unless params['CoreResourceSpec'].nil?
            @CoreResourceSpec = Resource.new
            @CoreResourceSpec.deserialize(params['CoreResourceSpec'])
          end
          unless params['TaskResourceSpec'].nil?
            @TaskResourceSpec = Resource.new
            @TaskResourceSpec.deserialize(params['TaskResourceSpec'])
          end
          @MasterCount = params['MasterCount']
          @CoreCount = params['CoreCount']
          @TaskCount = params['TaskCount']
          unless params['CommonResourceSpec'].nil?
            @CommonResourceSpec = Resource.new
            @CommonResourceSpec.deserialize(params['CommonResourceSpec'])
          end
          @CommonCount = params['CommonCount']
        end
      end

      # 节点亲和性设置
      class NodeAffinity < TencentCloud::Common::AbstractModel
        # @param RequiredDuringSchedulingIgnoredDuringExecution: 节点亲和性-强制调度设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequiredDuringSchedulingIgnoredDuringExecution: :class:`Tencentcloud::Emr.v20190103.models.NodeSelector`
        # @param PreferredDuringSchedulingIgnoredDuringExecution: 节点亲和性-容忍调度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreferredDuringSchedulingIgnoredDuringExecution: Array

        attr_accessor :RequiredDuringSchedulingIgnoredDuringExecution, :PreferredDuringSchedulingIgnoredDuringExecution

        def initialize(requiredduringschedulingignoredduringexecution=nil, preferredduringschedulingignoredduringexecution=nil)
          @RequiredDuringSchedulingIgnoredDuringExecution = requiredduringschedulingignoredduringexecution
          @PreferredDuringSchedulingIgnoredDuringExecution = preferredduringschedulingignoredduringexecution
        end

        def deserialize(params)
          unless params['RequiredDuringSchedulingIgnoredDuringExecution'].nil?
            @RequiredDuringSchedulingIgnoredDuringExecution = NodeSelector.new
            @RequiredDuringSchedulingIgnoredDuringExecution.deserialize(params['RequiredDuringSchedulingIgnoredDuringExecution'])
          end
          unless params['PreferredDuringSchedulingIgnoredDuringExecution'].nil?
            @PreferredDuringSchedulingIgnoredDuringExecution = []
            params['PreferredDuringSchedulingIgnoredDuringExecution'].each do |i|
              preferredschedulingterm_tmp = PreferredSchedulingTerm.new
              preferredschedulingterm_tmp.deserialize(i)
              @PreferredDuringSchedulingIgnoredDuringExecution << preferredschedulingterm_tmp
            end
          end
        end
      end

      # 用于创建集群价格清单 节点价格详情
      class NodeDetailPriceResult < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型 master core task common router mysql
        # @type NodeType: String
        # @param PartDetailPrice: 节点组成部分价格详情
        # @type PartDetailPrice: Array

        attr_accessor :NodeType, :PartDetailPrice

        def initialize(nodetype=nil, partdetailprice=nil)
          @NodeType = nodetype
          @PartDetailPrice = partdetailprice
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          unless params['PartDetailPrice'].nil?
            @PartDetailPrice = []
            params['PartDetailPrice'].each do |i|
              partdetailpriceitem_tmp = PartDetailPriceItem.new
              partdetailpriceitem_tmp.deserialize(i)
              @PartDetailPrice << partdetailpriceitem_tmp
            end
          end
        end
      end

      # 节点硬件信息
      class NodeHardwareInfo < TencentCloud::Common::AbstractModel
        # @param AppId: 用户APPID
        # @type AppId: Integer
        # @param SerialNo: 序列号
        # @type SerialNo: String
        # @param OrderNo: 机器实例ID
        # @type OrderNo: String
        # @param WanIp: master节点绑定外网IP
        # @type WanIp: String
        # @param Flag: 节点类型。0:common节点；1:master节点
        # ；2:core节点；3:task节点
        # @type Flag: Integer
        # @param Spec: 节点规格
        # @type Spec: String
        # @param CpuNum: 节点核数
        # @type CpuNum: Integer
        # @param MemSize: 节点内存,单位b
        # @type MemSize: Integer
        # @param MemDesc: 节点内存描述，单位GB
        # @type MemDesc: String
        # @param RegionId: 节点所在region
        # @type RegionId: Integer
        # @param ZoneId: 节点所在Zone
        # @type ZoneId: Integer
        # @param ApplyTime: 申请时间
        # @type ApplyTime: String
        # @param FreeTime: 释放时间
        # @type FreeTime: String
        # @param DiskSize: 硬盘大小
        # @type DiskSize: String
        # @param NameTag: 节点描述
        # @type NameTag: String
        # @param Services: 节点部署服务
        # @type Services: String
        # @param StorageType: 磁盘类型，1 :本地盘 2 :云硬盘 3 : 本地SSD 4 : 云SSD 5 : 高效云盘 6 : 增强型SSD云硬盘 11 : 吞吐型云硬盘 12 : 极速型SSD云硬盘 13 : 通用型SSD云硬盘 14 : 大数据型云硬盘 15 : 高IO型云硬盘 16 : 远端SSD盘
        # @type StorageType: Integer
        # @param RootSize: 系统盘大小，单位GB
        # @type RootSize: Integer
        # @param ChargeType: 付费类型，0：按量计费；1：包年包月
        # @type ChargeType: Integer
        # @param CdbIp: 数据库IP
        # @type CdbIp: String
        # @param CdbPort: 数据库端口
        # @type CdbPort: Integer
        # @param HwDiskSize: 硬盘容量,单位b
        # @type HwDiskSize: Integer
        # @param HwDiskSizeDesc: 硬盘容量描述
        # @type HwDiskSizeDesc: String
        # @param HwMemSize: 内存容量，单位b
        # @type HwMemSize: Integer
        # @param HwMemSizeDesc: 内存容量描述
        # @type HwMemSizeDesc: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param EmrResourceId: 节点资源ID
        # @type EmrResourceId: String
        # @param IsAutoRenew: 续费标志
        # @type IsAutoRenew: Integer
        # @param DeviceClass: 设备标识
        # @type DeviceClass: String
        # @param Mutable: 支持变配
        # @type Mutable: Integer
        # @param MCMultiDisk: 多云盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCMultiDisk: Array
        # @param CdbNodeInfo: 数据库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdbNodeInfo: :class:`Tencentcloud::Emr.v20190103.models.CdbInfo`
        # @param Ip: 内网IP
        # @type Ip: String
        # @param Destroyable: 此节点是否可销毁，1可销毁，0不可销毁
        # @type Destroyable: Integer
        # @param Tags: 节点绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoFlag: 是否是自动扩缩容节点，0为普通节点，1为自动扩缩容节点。
        # @type AutoFlag: Integer
        # @param HardwareResourceType: 资源类型, host/pod
        # @type HardwareResourceType: String
        # @param IsDynamicSpec: 是否浮动规格，1是，0否
        # @type IsDynamicSpec: Integer
        # @param DynamicPodSpec: 浮动规格值json字符串
        # @type DynamicPodSpec: String
        # @param SupportModifyPayMode: 是否支持变更计费类型 1是，0否
        # @type SupportModifyPayMode: Integer
        # @param RootStorageType: 系统盘类型，1 :本地盘 2 :云硬盘 3 : 本地SSD 4 : 云SSD 5 : 高效云盘 6 : 增强型SSD云硬盘 11 : 吞吐型云硬盘 12 : 极速型SSD云硬盘 13 : 通用型SSD云硬盘 14 : 大数据型云硬盘 15 : 高IO型云硬盘 16 : 远端SSD盘
        # @type RootStorageType: Integer
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param SubnetInfo: 子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetInfo: :class:`Tencentcloud::Emr.v20190103.models.SubnetInfo`
        # @param Clients: 客户端
        # @type Clients: String
        # @param CurrentTime: 系统当前时间
        # @type CurrentTime: String
        # @param IsFederation: 是否用于联邦 ,1是，0否
        # @type IsFederation: Integer
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceClient: 服务
        # @type ServiceClient: String
        # @param DisableApiTermination: 该实例是否开启实例保护，true为开启 false为关闭
        # @type DisableApiTermination: Boolean
        # @param TradeVersion: 0表示老计费，1表示新计费
        # @type TradeVersion: Integer
        # @param ServicesStatus: 各组件状态，Zookeeper:STARTED,ResourceManager:STARTED，STARTED已启动，STOPED已停止
        # @type ServicesStatus: String
        # @param Remark: 备注
        # @type Remark: String
        # @param SharedClusterId: 共享集群id
        # @type SharedClusterId: String
        # @param SharedClusterIdDesc: 共享集群id描述
        # @type SharedClusterIdDesc: String
        # @param TimingResource: 是否是定时销毁资源
        # @type TimingResource: Boolean
        # @param TkeClusterId: 资源类型（HardwareResourceType）为pod时，对应的TKE集群id
        # @type TkeClusterId: String
        # @param ConfigurableServices: 新挂磁盘时可支持配置的服务名称列表
        # @type ConfigurableServices: Array
        # @param NodeMark: 节点标注信息，目前只提供给tf平台使用
        # @type NodeMark: String
        # @param UnderwriteSetAutoRenew: 包销资源是否支持设置自动续费
        # @type UnderwriteSetAutoRenew: Boolean
        # @param GpuDesc: Gpu信息
        # @type GpuDesc: String

        attr_accessor :AppId, :SerialNo, :OrderNo, :WanIp, :Flag, :Spec, :CpuNum, :MemSize, :MemDesc, :RegionId, :ZoneId, :ApplyTime, :FreeTime, :DiskSize, :NameTag, :Services, :StorageType, :RootSize, :ChargeType, :CdbIp, :CdbPort, :HwDiskSize, :HwDiskSizeDesc, :HwMemSize, :HwMemSizeDesc, :ExpireTime, :EmrResourceId, :IsAutoRenew, :DeviceClass, :Mutable, :MCMultiDisk, :CdbNodeInfo, :Ip, :Destroyable, :Tags, :AutoFlag, :HardwareResourceType, :IsDynamicSpec, :DynamicPodSpec, :SupportModifyPayMode, :RootStorageType, :Zone, :SubnetInfo, :Clients, :CurrentTime, :IsFederation, :DeviceName, :ServiceClient, :DisableApiTermination, :TradeVersion, :ServicesStatus, :Remark, :SharedClusterId, :SharedClusterIdDesc, :TimingResource, :TkeClusterId, :ConfigurableServices, :NodeMark, :UnderwriteSetAutoRenew, :GpuDesc

        def initialize(appid=nil, serialno=nil, orderno=nil, wanip=nil, flag=nil, spec=nil, cpunum=nil, memsize=nil, memdesc=nil, regionid=nil, zoneid=nil, applytime=nil, freetime=nil, disksize=nil, nametag=nil, services=nil, storagetype=nil, rootsize=nil, chargetype=nil, cdbip=nil, cdbport=nil, hwdisksize=nil, hwdisksizedesc=nil, hwmemsize=nil, hwmemsizedesc=nil, expiretime=nil, emrresourceid=nil, isautorenew=nil, deviceclass=nil, mutable=nil, mcmultidisk=nil, cdbnodeinfo=nil, ip=nil, destroyable=nil, tags=nil, autoflag=nil, hardwareresourcetype=nil, isdynamicspec=nil, dynamicpodspec=nil, supportmodifypaymode=nil, rootstoragetype=nil, zone=nil, subnetinfo=nil, clients=nil, currenttime=nil, isfederation=nil, devicename=nil, serviceclient=nil, disableapitermination=nil, tradeversion=nil, servicesstatus=nil, remark=nil, sharedclusterid=nil, sharedclusteriddesc=nil, timingresource=nil, tkeclusterid=nil, configurableservices=nil, nodemark=nil, underwritesetautorenew=nil, gpudesc=nil)
          @AppId = appid
          @SerialNo = serialno
          @OrderNo = orderno
          @WanIp = wanip
          @Flag = flag
          @Spec = spec
          @CpuNum = cpunum
          @MemSize = memsize
          @MemDesc = memdesc
          @RegionId = regionid
          @ZoneId = zoneid
          @ApplyTime = applytime
          @FreeTime = freetime
          @DiskSize = disksize
          @NameTag = nametag
          @Services = services
          @StorageType = storagetype
          @RootSize = rootsize
          @ChargeType = chargetype
          @CdbIp = cdbip
          @CdbPort = cdbport
          @HwDiskSize = hwdisksize
          @HwDiskSizeDesc = hwdisksizedesc
          @HwMemSize = hwmemsize
          @HwMemSizeDesc = hwmemsizedesc
          @ExpireTime = expiretime
          @EmrResourceId = emrresourceid
          @IsAutoRenew = isautorenew
          @DeviceClass = deviceclass
          @Mutable = mutable
          @MCMultiDisk = mcmultidisk
          @CdbNodeInfo = cdbnodeinfo
          @Ip = ip
          @Destroyable = destroyable
          @Tags = tags
          @AutoFlag = autoflag
          @HardwareResourceType = hardwareresourcetype
          @IsDynamicSpec = isdynamicspec
          @DynamicPodSpec = dynamicpodspec
          @SupportModifyPayMode = supportmodifypaymode
          @RootStorageType = rootstoragetype
          @Zone = zone
          @SubnetInfo = subnetinfo
          @Clients = clients
          @CurrentTime = currenttime
          @IsFederation = isfederation
          @DeviceName = devicename
          @ServiceClient = serviceclient
          @DisableApiTermination = disableapitermination
          @TradeVersion = tradeversion
          @ServicesStatus = servicesstatus
          @Remark = remark
          @SharedClusterId = sharedclusterid
          @SharedClusterIdDesc = sharedclusteriddesc
          @TimingResource = timingresource
          @TkeClusterId = tkeclusterid
          @ConfigurableServices = configurableservices
          @NodeMark = nodemark
          @UnderwriteSetAutoRenew = underwritesetautorenew
          @GpuDesc = gpudesc
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SerialNo = params['SerialNo']
          @OrderNo = params['OrderNo']
          @WanIp = params['WanIp']
          @Flag = params['Flag']
          @Spec = params['Spec']
          @CpuNum = params['CpuNum']
          @MemSize = params['MemSize']
          @MemDesc = params['MemDesc']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @ApplyTime = params['ApplyTime']
          @FreeTime = params['FreeTime']
          @DiskSize = params['DiskSize']
          @NameTag = params['NameTag']
          @Services = params['Services']
          @StorageType = params['StorageType']
          @RootSize = params['RootSize']
          @ChargeType = params['ChargeType']
          @CdbIp = params['CdbIp']
          @CdbPort = params['CdbPort']
          @HwDiskSize = params['HwDiskSize']
          @HwDiskSizeDesc = params['HwDiskSizeDesc']
          @HwMemSize = params['HwMemSize']
          @HwMemSizeDesc = params['HwMemSizeDesc']
          @ExpireTime = params['ExpireTime']
          @EmrResourceId = params['EmrResourceId']
          @IsAutoRenew = params['IsAutoRenew']
          @DeviceClass = params['DeviceClass']
          @Mutable = params['Mutable']
          unless params['MCMultiDisk'].nil?
            @MCMultiDisk = []
            params['MCMultiDisk'].each do |i|
              multidiskmc_tmp = MultiDiskMC.new
              multidiskmc_tmp.deserialize(i)
              @MCMultiDisk << multidiskmc_tmp
            end
          end
          unless params['CdbNodeInfo'].nil?
            @CdbNodeInfo = CdbInfo.new
            @CdbNodeInfo.deserialize(params['CdbNodeInfo'])
          end
          @Ip = params['Ip']
          @Destroyable = params['Destroyable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoFlag = params['AutoFlag']
          @HardwareResourceType = params['HardwareResourceType']
          @IsDynamicSpec = params['IsDynamicSpec']
          @DynamicPodSpec = params['DynamicPodSpec']
          @SupportModifyPayMode = params['SupportModifyPayMode']
          @RootStorageType = params['RootStorageType']
          @Zone = params['Zone']
          unless params['SubnetInfo'].nil?
            @SubnetInfo = SubnetInfo.new
            @SubnetInfo.deserialize(params['SubnetInfo'])
          end
          @Clients = params['Clients']
          @CurrentTime = params['CurrentTime']
          @IsFederation = params['IsFederation']
          @DeviceName = params['DeviceName']
          @ServiceClient = params['ServiceClient']
          @DisableApiTermination = params['DisableApiTermination']
          @TradeVersion = params['TradeVersion']
          @ServicesStatus = params['ServicesStatus']
          @Remark = params['Remark']
          @SharedClusterId = params['SharedClusterId']
          @SharedClusterIdDesc = params['SharedClusterIdDesc']
          @TimingResource = params['TimingResource']
          @TkeClusterId = params['TkeClusterId']
          @ConfigurableServices = params['ConfigurableServices']
          @NodeMark = params['NodeMark']
          @UnderwriteSetAutoRenew = params['UnderwriteSetAutoRenew']
          @GpuDesc = params['GpuDesc']
        end
      end

      # 节点标记信息
      class NodeMark < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型：master,core,task,router
        # @type NodeType: String
        # @param NodeNames: 节点标记信息，目前只提供给tf平台使用，作为入参区分同类型节点信息
        # @type NodeNames: Array
        # @param Zone: 可用区名称
        # @type Zone: String

        attr_accessor :NodeType, :NodeNames, :Zone

        def initialize(nodetype=nil, nodenames=nil, zone=nil)
          @NodeType = nodetype
          @NodeNames = nodenames
          @Zone = zone
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeNames = params['NodeNames']
          @Zone = params['Zone']
        end
      end

      # 节点续费询价明细
      class NodeRenewPriceDetail < TencentCloud::Common::AbstractModel
        # @param ChargeType: 计费类型，包月为1、包销为3
        # @type ChargeType: Integer
        # @param EmrResourceId: emr资源id
        # @type EmrResourceId: String
        # @param NodeType: 节点类型
        # @type NodeType: String
        # @param Ip: 节点内网ip
        # @type Ip: String
        # @param ExpireTime: 当前到期时间
        # @type ExpireTime: String
        # @param OriginalCost: 原价
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价
        # @type DiscountCost: Float
        # @param RenewPriceDetails: 节点子项续费询价明细列表
        # @type RenewPriceDetails: Array

        attr_accessor :ChargeType, :EmrResourceId, :NodeType, :Ip, :ExpireTime, :OriginalCost, :DiscountCost, :RenewPriceDetails

        def initialize(chargetype=nil, emrresourceid=nil, nodetype=nil, ip=nil, expiretime=nil, originalcost=nil, discountcost=nil, renewpricedetails=nil)
          @ChargeType = chargetype
          @EmrResourceId = emrresourceid
          @NodeType = nodetype
          @Ip = ip
          @ExpireTime = expiretime
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @RenewPriceDetails = renewpricedetails
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
          @EmrResourceId = params['EmrResourceId']
          @NodeType = params['NodeType']
          @Ip = params['Ip']
          @ExpireTime = params['ExpireTime']
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          unless params['RenewPriceDetails'].nil?
            @RenewPriceDetails = []
            params['RenewPriceDetails'].each do |i|
              renewpricedetail_tmp = RenewPriceDetail.new
              renewpricedetail_tmp.deserialize(i)
              @RenewPriceDetails << renewpricedetail_tmp
            end
          end
        end
      end

      # 规格管理，规格类型描述
      class NodeResource < TencentCloud::Common::AbstractModel
        # @param ResourceConfigId: 配置Id
        # @type ResourceConfigId: Integer
        # @param Resource: Resource
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param IsDefault: 是否默认配置,DEFAULT,BACKUP
        # @type IsDefault: String
        # @param MaxResourceNum: 该类型剩余
        # @type MaxResourceNum: Integer
        # @param PrepaidUnderwritePeriods: 支持的包销时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidUnderwritePeriods: Array

        attr_accessor :ResourceConfigId, :Resource, :CreateTime, :UpdateTime, :IsDefault, :MaxResourceNum, :PrepaidUnderwritePeriods

        def initialize(resourceconfigid=nil, resource=nil, createtime=nil, updatetime=nil, isdefault=nil, maxresourcenum=nil, prepaidunderwriteperiods=nil)
          @ResourceConfigId = resourceconfigid
          @Resource = resource
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsDefault = isdefault
          @MaxResourceNum = maxresourcenum
          @PrepaidUnderwritePeriods = prepaidunderwriteperiods
        end

        def deserialize(params)
          @ResourceConfigId = params['ResourceConfigId']
          unless params['Resource'].nil?
            @Resource = Resource.new
            @Resource.deserialize(params['Resource'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsDefault = params['IsDefault']
          @MaxResourceNum = params['MaxResourceNum']
          @PrepaidUnderwritePeriods = params['PrepaidUnderwritePeriods']
        end
      end

      # 资源详情
      class NodeResourceSpec < TencentCloud::Common::AbstractModel
        # @param InstanceType: 规格类型，如S2.MEDIUM8
        # @type InstanceType: String
        # @param SystemDisk: 系统盘，系统盘个数不超过1块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDisk: Array
        # @param Tags: 需要绑定的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DataDisk: 云数据盘，云数据盘总个数不超过15块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisk: Array
        # @param LocalDataDisk: 本地数据盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDataDisk: Array

        attr_accessor :InstanceType, :SystemDisk, :Tags, :DataDisk, :LocalDataDisk

        def initialize(instancetype=nil, systemdisk=nil, tags=nil, datadisk=nil, localdatadisk=nil)
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @Tags = tags
          @DataDisk = datadisk
          @LocalDataDisk = localdatadisk
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = []
            params['SystemDisk'].each do |i|
              diskspecinfo_tmp = DiskSpecInfo.new
              diskspecinfo_tmp.deserialize(i)
              @SystemDisk << diskspecinfo_tmp
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
          unless params['DataDisk'].nil?
            @DataDisk = []
            params['DataDisk'].each do |i|
              diskspecinfo_tmp = DiskSpecInfo.new
              diskspecinfo_tmp.deserialize(i)
              @DataDisk << diskspecinfo_tmp
            end
          end
          unless params['LocalDataDisk'].nil?
            @LocalDataDisk = []
            params['LocalDataDisk'].each do |i|
              diskspecinfo_tmp = DiskSpecInfo.new
              diskspecinfo_tmp.deserialize(i)
              @LocalDataDisk << diskspecinfo_tmp
            end
          end
        end
      end

      # Pod强制调度节点选择条件
      class NodeSelector < TencentCloud::Common::AbstractModel
        # @param NodeSelectorTerms: Pod强制调度节点选择条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSelectorTerms: Array

        attr_accessor :NodeSelectorTerms

        def initialize(nodeselectorterms=nil)
          @NodeSelectorTerms = nodeselectorterms
        end

        def deserialize(params)
          unless params['NodeSelectorTerms'].nil?
            @NodeSelectorTerms = []
            params['NodeSelectorTerms'].each do |i|
              nodeselectorterm_tmp = NodeSelectorTerm.new
              nodeselectorterm_tmp.deserialize(i)
              @NodeSelectorTerms << nodeselectorterm_tmp
            end
          end
        end
      end

      # Pod节点选择项
      class NodeSelectorRequirement < TencentCloud::Common::AbstractModel
        # @param Key: 节点选择项Key值
        # @type Key: String
        # @param Operator: 节点选择项Operator值，支持In, NotIn, Exists, DoesNotExist. Gt, and Lt.
        # @type Operator: String
        # @param Values: 节点选择项Values值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Key, :Operator, :Values

        def initialize(key=nil, operator=nil, values=nil)
          @Key = key
          @Operator = operator
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Values = params['Values']
        end
      end

      # Pod节点选择项集合
      class NodeSelectorTerm < TencentCloud::Common::AbstractModel
        # @param MatchExpressions: 节点选择项表达式集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchExpressions: Array

        attr_accessor :MatchExpressions

        def initialize(matchexpressions=nil)
          @MatchExpressions = matchexpressions
        end

        def deserialize(params)
          unless params['MatchExpressions'].nil?
            @MatchExpressions = []
            params['MatchExpressions'].each do |i|
              nodeselectorrequirement_tmp = NodeSelectorRequirement.new
              nodeselectorrequirement_tmp.deserialize(i)
              @MatchExpressions << nodeselectorrequirement_tmp
            end
          end
        end
      end

      # 节点磁盘类型
      class NodeSpecDisk < TencentCloud::Common::AbstractModel
        # @param Count: 数量
        # @type Count: Integer
        # @param Name: 名字
        # @type Name: String
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DefaultDiskSize: 指定磁盘大小
        # @type DefaultDiskSize: Integer
        # @param IsSpecialDisk: 是否为特殊的数据盘，如：单副本盘
        # @type IsSpecialDisk: Boolean

        attr_accessor :Count, :Name, :DiskType, :DefaultDiskSize, :IsSpecialDisk

        def initialize(count=nil, name=nil, disktype=nil, defaultdisksize=nil, isspecialdisk=nil)
          @Count = count
          @Name = name
          @DiskType = disktype
          @DefaultDiskSize = defaultdisksize
          @IsSpecialDisk = isspecialdisk
        end

        def deserialize(params)
          @Count = params['Count']
          @Name = params['Name']
          @DiskType = params['DiskType']
          @DefaultDiskSize = params['DefaultDiskSize']
          @IsSpecialDisk = params['IsSpecialDisk']
        end
      end

      # 节点磁盘类型
      class NodeSpecDiskV2 < TencentCloud::Common::AbstractModel
        # @param Count: 数量
        # @type Count: Integer
        # @param Name: 名字
        # @type Name: String
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DefaultDiskSize: 指定磁盘大小
        # @type DefaultDiskSize: Integer

        attr_accessor :Count, :Name, :DiskType, :DefaultDiskSize

        def initialize(count=nil, name=nil, disktype=nil, defaultdisksize=nil)
          @Count = count
          @Name = name
          @DiskType = disktype
          @DefaultDiskSize = defaultdisksize
        end

        def deserialize(params)
          @Count = params['Count']
          @Name = params['Name']
          @DiskType = params['DiskType']
          @DefaultDiskSize = params['DefaultDiskSize']
        end
      end

      # 节点机型列族
      class NodeSpecFamily < TencentCloud::Common::AbstractModel
        # @param InstanceFamily: 机型
        # @type InstanceFamily: String
        # @param FamilyName: 机型名称
        # @type FamilyName: String
        # @param Order: 排序
        # @type Order: Integer
        # @param InstanceTypes: InstanceType的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypes: Array

        attr_accessor :InstanceFamily, :FamilyName, :Order, :InstanceTypes

        def initialize(instancefamily=nil, familyname=nil, order=nil, instancetypes=nil)
          @InstanceFamily = instancefamily
          @FamilyName = familyname
          @Order = order
          @InstanceTypes = instancetypes
        end

        def deserialize(params)
          @InstanceFamily = params['InstanceFamily']
          @FamilyName = params['FamilyName']
          @Order = params['Order']
          unless params['InstanceTypes'].nil?
            @InstanceTypes = []
            params['InstanceTypes'].each do |i|
              nodespecinstancetype_tmp = NodeSpecInstanceType.new
              nodespecinstancetype_tmp.deserialize(i)
              @InstanceTypes << nodespecinstancetype_tmp
            end
          end
        end
      end

      # 节点规格类型
      class NodeSpecInstanceType < TencentCloud::Common::AbstractModel
        # @param InstanceType: 规格
        # @type InstanceType: String
        # @param Cpu: 4
        # @type Cpu: Integer
        # @param Memory: 8，单位G
        # @type Memory: Integer
        # @param Order: 排序，越小排的越前
        # @type Order: Integer
        # @param Num: 数量
        # @type Num: Integer
        # @param SellOutReason: 售罄原因
        # @type SellOutReason: String
        # @param SystemDisk: 系统盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDisk: Array
        # @param DataDisk: 数据盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisk: Array
        # @param LocalDataDisk: 本地数据盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDataDisk: Array
        # @param SoldOutReason: 售罄原因
        # @type SoldOutReason: String
        # @param InstanceFamily: 机型类别
        # @type InstanceFamily: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param NodeType: 节点类型
        # @type NodeType: String
        # @param Type: 类别
        # @type Type: String
        # @param TypeName: 类别名称
        # @type TypeName: String
        # @param FamilyName: 类别分类
        # @type FamilyName: String
        # @param CpuType: cpu类型
        # @type CpuType: String
        # @param Remark: 售罄 RunOut、库存少 Less、充足 Enough
        # @type Remark: String
        # @param OriginPrice: 原价
        # @type OriginPrice: Float
        # @param PrepaidUnderwritePeriods: 包销计费机型支持的购买时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidUnderwritePeriods: Array
        # @param GpuDesc: GPU信息
        # @type GpuDesc: String

        attr_accessor :InstanceType, :Cpu, :Memory, :Order, :Num, :SellOutReason, :SystemDisk, :DataDisk, :LocalDataDisk, :SoldOutReason, :InstanceFamily, :NodeName, :NodeType, :Type, :TypeName, :FamilyName, :CpuType, :Remark, :OriginPrice, :PrepaidUnderwritePeriods, :GpuDesc

        def initialize(instancetype=nil, cpu=nil, memory=nil, order=nil, num=nil, selloutreason=nil, systemdisk=nil, datadisk=nil, localdatadisk=nil, soldoutreason=nil, instancefamily=nil, nodename=nil, nodetype=nil, type=nil, typename=nil, familyname=nil, cputype=nil, remark=nil, originprice=nil, prepaidunderwriteperiods=nil, gpudesc=nil)
          @InstanceType = instancetype
          @Cpu = cpu
          @Memory = memory
          @Order = order
          @Num = num
          @SellOutReason = selloutreason
          @SystemDisk = systemdisk
          @DataDisk = datadisk
          @LocalDataDisk = localdatadisk
          @SoldOutReason = soldoutreason
          @InstanceFamily = instancefamily
          @NodeName = nodename
          @NodeType = nodetype
          @Type = type
          @TypeName = typename
          @FamilyName = familyname
          @CpuType = cputype
          @Remark = remark
          @OriginPrice = originprice
          @PrepaidUnderwritePeriods = prepaidunderwriteperiods
          @GpuDesc = gpudesc
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Order = params['Order']
          @Num = params['Num']
          @SellOutReason = params['SellOutReason']
          unless params['SystemDisk'].nil?
            @SystemDisk = []
            params['SystemDisk'].each do |i|
              nodespecdisk_tmp = NodeSpecDisk.new
              nodespecdisk_tmp.deserialize(i)
              @SystemDisk << nodespecdisk_tmp
            end
          end
          unless params['DataDisk'].nil?
            @DataDisk = []
            params['DataDisk'].each do |i|
              nodespecdisk_tmp = NodeSpecDisk.new
              nodespecdisk_tmp.deserialize(i)
              @DataDisk << nodespecdisk_tmp
            end
          end
          unless params['LocalDataDisk'].nil?
            @LocalDataDisk = []
            params['LocalDataDisk'].each do |i|
              nodespecdisk_tmp = NodeSpecDisk.new
              nodespecdisk_tmp.deserialize(i)
              @LocalDataDisk << nodespecdisk_tmp
            end
          end
          @SoldOutReason = params['SoldOutReason']
          @InstanceFamily = params['InstanceFamily']
          @NodeName = params['NodeName']
          @NodeType = params['NodeType']
          @Type = params['Type']
          @TypeName = params['TypeName']
          @FamilyName = params['FamilyName']
          @CpuType = params['CpuType']
          @Remark = params['Remark']
          @OriginPrice = params['OriginPrice']
          @PrepaidUnderwritePeriods = params['PrepaidUnderwritePeriods']
          @GpuDesc = params['GpuDesc']
        end
      end

      # 节点机型类型
      class NodeSpecType < TencentCloud::Common::AbstractModel
        # @param Type: 机型序列
        # @type Type: String
        # @param TypeName: 机型序列名字
        # @type TypeName: String
        # @param Order: 排序
        # @type Order: Integer
        # @param InstanceFamilies: InstanceFamily数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceFamilies: Array

        attr_accessor :Type, :TypeName, :Order, :InstanceFamilies

        def initialize(type=nil, typename=nil, order=nil, instancefamilies=nil)
          @Type = type
          @TypeName = typename
          @Order = order
          @InstanceFamilies = instancefamilies
        end

        def deserialize(params)
          @Type = params['Type']
          @TypeName = params['TypeName']
          @Order = params['Order']
          unless params['InstanceFamilies'].nil?
            @InstanceFamilies = []
            params['InstanceFamilies'].each do |i|
              nodespecfamily_tmp = NodeSpecFamily.new
              nodespecfamily_tmp.deserialize(i)
              @InstanceFamilies << nodespecfamily_tmp
            end
          end
        end
      end

      # 弹性扩缩容执行一次规则上下文
      class NotRepeatStrategy < TencentCloud::Common::AbstractModel
        # @param ExecuteAt: 该次任务执行的具体完整时间，格式为"2020-07-13 00:00:00"
        # @type ExecuteAt: String

        attr_accessor :ExecuteAt

        def initialize(executeat=nil)
          @ExecuteAt = executeat
        end

        def deserialize(params)
          @ExecuteAt = params['ExecuteAt']
        end
      end

      # 操作范围
      class OpScope < TencentCloud::Common::AbstractModel
        # @param ServiceInfoList: 操作范围，要操作的服务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInfoList: Array

        attr_accessor :ServiceInfoList

        def initialize(serviceinfolist=nil)
          @ServiceInfoList = serviceinfolist
        end

        def deserialize(params)
          unless params['ServiceInfoList'].nil?
            @ServiceInfoList = []
            params['ServiceInfoList'].each do |i|
              servicebasicrestartinfo_tmp = ServiceBasicRestartInfo.new
              servicebasicrestartinfo_tmp.deserialize(i)
              @ServiceInfoList << servicebasicrestartinfo_tmp
            end
          end
        end
      end

      # 描述排序，用于排序.
      class Order < TencentCloud::Common::AbstractModel
        # @param Name: 排序字段。
        # @type Name: String
        # @param Direction: Desc or Asc。
        # @type Direction: String

        attr_accessor :Name, :Direction

        def initialize(name=nil, direction=nil)
          @Name = name
          @Direction = direction
        end

        def deserialize(params)
          @Name = params['Name']
          @Direction = params['Direction']
        end
      end

      # 资源详情
      class OutterResource < TencentCloud::Common::AbstractModel
        # @param Spec: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param SpecName: 规格名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param StorageType: 硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: Integer
        # @param DiskType: 硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param RootSize: 系统盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootSize: Integer
        # @param MemSize: 内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param Cpu: CPU个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param DiskSize: 硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param InstanceType: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String

        attr_accessor :Spec, :SpecName, :StorageType, :DiskType, :RootSize, :MemSize, :Cpu, :DiskSize, :InstanceType

        def initialize(spec=nil, specname=nil, storagetype=nil, disktype=nil, rootsize=nil, memsize=nil, cpu=nil, disksize=nil, instancetype=nil)
          @Spec = spec
          @SpecName = specname
          @StorageType = storagetype
          @DiskType = disktype
          @RootSize = rootsize
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Spec = params['Spec']
          @SpecName = params['SpecName']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @RootSize = params['RootSize']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          @InstanceType = params['InstanceType']
        end
      end

      # 概览数据
      class OverviewMetricData < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名
        # @type Metric: String
        # @param First: 第一个数据时间戳
        # @type First: Integer
        # @param Last: 最后一个数据时间戳
        # @type Last: Integer
        # @param Interval: 采样点时间间隔
        # @type Interval: Integer
        # @param DataPoints: 采样点数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataPoints: Array
        # @param Tags: 指标tags
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: :class:`Tencentcloud::Emr.v20190103.models.MetricTags`

        attr_accessor :Metric, :First, :Last, :Interval, :DataPoints, :Tags

        def initialize(metric=nil, first=nil, last=nil, interval=nil, datapoints=nil, tags=nil)
          @Metric = metric
          @First = first
          @Last = last
          @Interval = interval
          @DataPoints = datapoints
          @Tags = tags
        end

        def deserialize(params)
          @Metric = params['Metric']
          @First = params['First']
          @Last = params['Last']
          @Interval = params['Interval']
          @DataPoints = params['DataPoints']
          unless params['Tags'].nil?
            @Tags = MetricTags.new
            @Tags.deserialize(params['Tags'])
          end
        end
      end

      # Hbase的TableMetric Overview返回
      class OverviewRow < TencentCloud::Common::AbstractModel
        # @param Table: 表名字
        # @type Table: String
        # @param ReadRequestCount: 读请求次数
        # @type ReadRequestCount: Float
        # @param WriteRequestCount: 写请求次数
        # @type WriteRequestCount: Float
        # @param MemstoreSize: 当前memstore的size
        # @type MemstoreSize: Float
        # @param StoreFileSize: 当前region中StroreFile的size
        # @type StoreFileSize: Float
        # @param Operation: regions，点击可跳转
        # @type Operation: String
        # @param StoreFileNum: StoreFile数量
        # @type StoreFileNum: Float

        attr_accessor :Table, :ReadRequestCount, :WriteRequestCount, :MemstoreSize, :StoreFileSize, :Operation, :StoreFileNum

        def initialize(table=nil, readrequestcount=nil, writerequestcount=nil, memstoresize=nil, storefilesize=nil, operation=nil, storefilenum=nil)
          @Table = table
          @ReadRequestCount = readrequestcount
          @WriteRequestCount = writerequestcount
          @MemstoreSize = memstoresize
          @StoreFileSize = storefilesize
          @Operation = operation
          @StoreFileNum = storefilenum
        end

        def deserialize(params)
          @Table = params['Table']
          @ReadRequestCount = params['ReadRequestCount']
          @WriteRequestCount = params['WriteRequestCount']
          @MemstoreSize = params['MemstoreSize']
          @StoreFileSize = params['StoreFileSize']
          @Operation = params['Operation']
          @StoreFileNum = params['StoreFileNum']
        end
      end

      # 用于创建集群价格清单-节点组成部分价格
      class PartDetailPriceItem < TencentCloud::Common::AbstractModel
        # @param InstanceType: 类型包括：节点->node、系统盘->rootDisk、云数据盘->dataDisk、metaDB
        # @type InstanceType: String
        # @param Price: 单价（原价）
        # @type Price: Float
        # @param RealCost: 单价（折扣价）
        # @type RealCost: Float
        # @param RealTotalCost: 总价（折扣价）
        # @type RealTotalCost: Float
        # @param Policy: 折扣
        # @type Policy: Float
        # @param GoodsNum: 数量
        # @type GoodsNum: Integer

        attr_accessor :InstanceType, :Price, :RealCost, :RealTotalCost, :Policy, :GoodsNum

        def initialize(instancetype=nil, price=nil, realcost=nil, realtotalcost=nil, policy=nil, goodsnum=nil)
          @InstanceType = instancetype
          @Price = price
          @RealCost = realcost
          @RealTotalCost = realtotalcost
          @Policy = policy
          @GoodsNum = goodsnum
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @Price = params['Price']
          @RealCost = params['RealCost']
          @RealTotalCost = params['RealTotalCost']
          @Policy = params['Policy']
          @GoodsNum = params['GoodsNum']
        end
      end

      # Serverless HBase包年包月时间
      class Period < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 时间跨度
        # @type TimeSpan: Integer
        # @param TimeUnit: 时间单位，"m"代表月。
        # @type TimeUnit: String

        attr_accessor :TimeSpan, :TimeUnit

        def initialize(timespan=nil, timeunit=nil)
          @TimeSpan = timespan
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
        end
      end

      # Pod PVC存储方式描述
      class PersistentVolumeContext < TencentCloud::Common::AbstractModel
        # @param DiskSize: 磁盘大小，单位为GB。
        # @type DiskSize: Integer
        # @param DiskType: 磁盘类型。CLOUD_PREMIUM;CLOUD_SSD
        # @type DiskType: String
        # @param DiskNum: 磁盘数量
        # @type DiskNum: Integer
        # @param ExtraPerformance: 云盘额外性能
        # @type ExtraPerformance: Integer

        attr_accessor :DiskSize, :DiskType, :DiskNum, :ExtraPerformance

        def initialize(disksize=nil, disktype=nil, disknum=nil, extraperformance=nil)
          @DiskSize = disksize
          @DiskType = disktype
          @DiskNum = disknum
          @ExtraPerformance = extraperformance
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          @DiskNum = params['DiskNum']
          @ExtraPerformance = params['ExtraPerformance']
        end
      end

      # 描述集群实例位置信息
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区，例如ap-guangzhou-1。该参数也可以通过调用[DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用[DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer

        attr_accessor :Zone, :ProjectId

        def initialize(zone=nil, projectid=nil)
          @Zone = zone
          @ProjectId = projectid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
        end
      end

      # POD自定义权限和自定义参数
      class PodNewParameter < TencentCloud::Common::AbstractModel
        # @param InstanceId: TKE或EKS集群ID
        # @type InstanceId: String
        # @param Config: 自定义权限
        # 如：
        # {
        #   "apiVersion": "v1",
        #   "clusters": [
        #     {
        #       "cluster": {
        #         "certificate-authority-data": "xxxxxx==",
        #         "server": "https://xxxxx.com"
        #       },
        #       "name": "cls-xxxxx"
        #     }
        #   ],
        #   "contexts": [
        #     {
        #       "context": {
        #         "cluster": "cls-xxxxx",
        #         "user": "100014xxxxx"
        #       },
        #       "name": "cls-a44yhcxxxxxxxxxx"
        #     }
        #   ],
        #   "current-context": "cls-a4xxxx-context-default",
        #   "kind": "Config",
        #   "preferences": {},
        #   "users": [
        #     {
        #       "name": "100014xxxxx",
        #       "user": {
        #         "client-certificate-data": "xxxxxx",
        #         "client-key-data": "xxxxxx"
        #       }
        #     }
        #   ]
        # }
        # @type Config: String
        # @param Parameter: 自定义参数
        # 如：
        # {
        #     "apiVersion": "apps/v1",
        #     "kind": "Deployment",
        #     "metadata": {
        #       "name": "test-deployment",
        #       "labels": {
        #         "app": "test"
        #       }
        #     },
        #     "spec": {
        #       "replicas": 3,
        #       "selector": {
        #         "matchLabels": {
        #           "app": "test-app"
        #         }
        #       },
        #       "template": {
        #         "metadata": {
        #           "annotations": {
        #             "your-organization.com/department-v1": "test-example-v1",
        #             "your-organization.com/department-v2": "test-example-v2"
        #           },
        #           "labels": {
        #             "app": "test-app",
        #             "environment": "production"
        #           }
        #         },
        #         "spec": {
        #           "nodeSelector": {
        #             "your-organization/node-test": "test-node"
        #           },
        #           "containers": [
        #             {
        #               "name": "nginx",
        #               "image": "nginx:1.14.2",
        #               "ports": [
        #                 {
        #                   "containerPort": 80
        #                 }
        #               ]
        #             }
        #           ],
        #           "affinity": {
        #             "nodeAffinity": {
        #               "requiredDuringSchedulingIgnoredDuringExecution": {
        #                 "nodeSelectorTerms": [
        #                   {
        #                     "matchExpressions": [
        #                       {
        #                         "key": "disk-type",
        #                         "operator": "In",
        #                         "values": [
        #                           "ssd",
        #                           "sas"
        #                         ]
        #                       },
        #                       {
        #                         "key": "cpu-num",
        #                         "operator": "Gt",
        #                         "values": [
        #                           "6"
        #                         ]
        #                       }
        #                     ]
        #                   }
        #                 ]
        #               }
        #             }
        #           }
        #         }
        #       }
        #     }
        #   }
        # @type Parameter: String

        attr_accessor :InstanceId, :Config, :Parameter

        def initialize(instanceid=nil, config=nil, parameter=nil)
          @InstanceId = instanceid
          @Config = config
          @Parameter = parameter
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Config = params['Config']
          @Parameter = params['Parameter']
        end
      end

      # 扩容容器资源时的资源描述
      class PodNewSpec < TencentCloud::Common::AbstractModel
        # @param ResourceProviderIdentifier: 外部资源提供者的标识符，例如"cls-a1cd23fa"。
        # @type ResourceProviderIdentifier: String
        # @param ResourceProviderType: 外部资源提供者类型，例如"tke",当前仅支持"tke"。
        # @type ResourceProviderType: String
        # @param NodeFlag: 资源的用途，即节点类型，当前仅支持"TASK"。
        # @type NodeFlag: String
        # @param Cpu: CPU核数。
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位为GB。
        # @type Memory: Integer
        # @param CpuType: Eks集群-CPU类型，当前支持"intel"和"amd"
        # @type CpuType: String
        # @param PodVolumes: Pod节点数据目录挂载信息。
        # @type PodVolumes: Array
        # @param EnableDynamicSpecFlag: 是否浮动规格，默认否
        # <li>true：代表是</li>
        # <li>false：代表否</li>
        # @type EnableDynamicSpecFlag: Boolean
        # @param DynamicPodSpec: 浮动规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicPodSpec: :class:`Tencentcloud::Emr.v20190103.models.DynamicPodSpec`
        # @param VpcId: 代表vpc网络唯一id
        # @type VpcId: String
        # @param SubnetId: 代表vpc子网唯一id
        # @type SubnetId: String
        # @param PodName: pod name
        # @type PodName: String

        attr_accessor :ResourceProviderIdentifier, :ResourceProviderType, :NodeFlag, :Cpu, :Memory, :CpuType, :PodVolumes, :EnableDynamicSpecFlag, :DynamicPodSpec, :VpcId, :SubnetId, :PodName

        def initialize(resourceprovideridentifier=nil, resourceprovidertype=nil, nodeflag=nil, cpu=nil, memory=nil, cputype=nil, podvolumes=nil, enabledynamicspecflag=nil, dynamicpodspec=nil, vpcid=nil, subnetid=nil, podname=nil)
          @ResourceProviderIdentifier = resourceprovideridentifier
          @ResourceProviderType = resourceprovidertype
          @NodeFlag = nodeflag
          @Cpu = cpu
          @Memory = memory
          @CpuType = cputype
          @PodVolumes = podvolumes
          @EnableDynamicSpecFlag = enabledynamicspecflag
          @DynamicPodSpec = dynamicpodspec
          @VpcId = vpcid
          @SubnetId = subnetid
          @PodName = podname
        end

        def deserialize(params)
          @ResourceProviderIdentifier = params['ResourceProviderIdentifier']
          @ResourceProviderType = params['ResourceProviderType']
          @NodeFlag = params['NodeFlag']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @CpuType = params['CpuType']
          unless params['PodVolumes'].nil?
            @PodVolumes = []
            params['PodVolumes'].each do |i|
              podvolume_tmp = PodVolume.new
              podvolume_tmp.deserialize(i)
              @PodVolumes << podvolume_tmp
            end
          end
          @EnableDynamicSpecFlag = params['EnableDynamicSpecFlag']
          unless params['DynamicPodSpec'].nil?
            @DynamicPodSpec = DynamicPodSpec.new
            @DynamicPodSpec.deserialize(params['DynamicPodSpec'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PodName = params['PodName']
        end
      end

      # POD自定义权限和自定义参数
      class PodParameter < TencentCloud::Common::AbstractModel
        # @param ClusterId: TKE或EKS集群ID
        # @type ClusterId: String
        # @param Config: 自定义权限
        # 如：
        # {
        #   "apiVersion": "v1",
        #   "clusters": [
        #     {
        #       "cluster": {
        #         "certificate-authority-data": "xxxxxx==",
        #         "server": "https://xxxxx.com"
        #       },
        #       "name": "cls-xxxxx"
        #     }
        #   ],
        #   "contexts": [
        #     {
        #       "context": {
        #         "cluster": "cls-xxxxx",
        #         "user": "100014xxxxx"
        #       },
        #       "name": "cls-a44yhcxxxxxxxxxx"
        #     }
        #   ],
        #   "current-context": "cls-a4xxxx-context-default",
        #   "kind": "Config",
        #   "preferences": {},
        #   "users": [
        #     {
        #       "name": "100014xxxxx",
        #       "user": {
        #         "client-certificate-data": "xxxxxx",
        #         "client-key-data": "xxxxxx"
        #       }
        #     }
        #   ]
        # }
        # @type Config: String
        # @param Parameter: 自定义参数
        # 如：
        # {
        #     "apiVersion": "apps/v1",
        #     "kind": "Deployment",
        #     "metadata": {
        #       "name": "test-deployment",
        #       "labels": {
        #         "app": "test"
        #       }
        #     },
        #     "spec": {
        #       "replicas": 3,
        #       "selector": {
        #         "matchLabels": {
        #           "app": "test-app"
        #         }
        #       },
        #       "template": {
        #         "metadata": {
        #           "annotations": {
        #             "your-organization.com/department-v1": "test-example-v1",
        #             "your-organization.com/department-v2": "test-example-v2"
        #           },
        #           "labels": {
        #             "app": "test-app",
        #             "environment": "production"
        #           }
        #         },
        #         "spec": {
        #           "nodeSelector": {
        #             "your-organization/node-test": "test-node"
        #           },
        #           "containers": [
        #             {
        #               "name": "nginx",
        #               "image": "nginx:1.14.2",
        #               "ports": [
        #                 {
        #                   "containerPort": 80
        #                 }
        #               ]
        #             }
        #           ],
        #           "affinity": {
        #             "nodeAffinity": {
        #               "requiredDuringSchedulingIgnoredDuringExecution": {
        #                 "nodeSelectorTerms": [
        #                   {
        #                     "matchExpressions": [
        #                       {
        #                         "key": "disk-type",
        #                         "operator": "In",
        #                         "values": [
        #                           "ssd",
        #                           "sas"
        #                         ]
        #                       },
        #                       {
        #                         "key": "cpu-num",
        #                         "operator": "Gt",
        #                         "values": [
        #                           "6"
        #                         ]
        #                       }
        #                     ]
        #                   }
        #                 ]
        #               }
        #             }
        #           }
        #         }
        #       }
        #     }
        #   }
        # @type Parameter: String

        attr_accessor :ClusterId, :Config, :Parameter

        def initialize(clusterid=nil, config=nil, parameter=nil)
          @ClusterId = clusterid
          @Config = config
          @Parameter = parameter
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Config = params['Config']
          @Parameter = params['Parameter']
        end
      end

      # Pod资源售卖规格
      class PodSaleSpec < TencentCloud::Common::AbstractModel
        # @param NodeType: 可售卖的资源规格，仅为以下值:"TASK","CORE","MASTER","ROUTER"。
        # @type NodeType: String
        # @param Cpu: Cpu核数。
        # @type Cpu: Integer
        # @param Memory: 内存数量，单位为GB。
        # @type Memory: Integer
        # @param Number: 该规格资源可申请的最大数量。
        # @type Number: Integer

        attr_accessor :NodeType, :Cpu, :Memory, :Number

        def initialize(nodetype=nil, cpu=nil, memory=nil, number=nil)
          @NodeType = nodetype
          @Cpu = cpu
          @Memory = memory
          @Number = number
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Number = params['Number']
        end
      end

      # 扩容容器资源时的资源描述
      class PodSpec < TencentCloud::Common::AbstractModel
        # @param ResourceProviderIdentifier: 外部资源提供者的标识符，例如"cls-a1cd23fa"。
        # @type ResourceProviderIdentifier: String
        # @param ResourceProviderType: 外部资源提供者类型，例如"tke",当前仅支持"tke"。
        # @type ResourceProviderType: String
        # @param NodeType: 资源的用途，即节点类型，当前仅支持"TASK"。
        # @type NodeType: String
        # @param Cpu: CPU核数。
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位为GB。
        # @type Memory: Integer
        # @param DataVolumes: 资源对宿主机的挂载点，指定的挂载点对应了宿主机的路径，该挂载点在Pod中作为数据存储目录使用。弃用
        # @type DataVolumes: Array
        # @param CpuType: Eks集群-CPU类型，当前支持"intel"和"amd"
        # @type CpuType: String
        # @param PodVolumes: Pod节点数据目录挂载信息。
        # @type PodVolumes: Array
        # @param IsDynamicSpec: 是否浮动规格，1是，0否
        # @type IsDynamicSpec: Integer
        # @param DynamicPodSpec: 浮动规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicPodSpec: :class:`Tencentcloud::Emr.v20190103.models.DynamicPodSpec`
        # @param VpcId: 代表vpc网络唯一id
        # @type VpcId: String
        # @param SubnetId: 代表vpc子网唯一id
        # @type SubnetId: String
        # @param PodName: pod name
        # @type PodName: String

        attr_accessor :ResourceProviderIdentifier, :ResourceProviderType, :NodeType, :Cpu, :Memory, :DataVolumes, :CpuType, :PodVolumes, :IsDynamicSpec, :DynamicPodSpec, :VpcId, :SubnetId, :PodName

        def initialize(resourceprovideridentifier=nil, resourceprovidertype=nil, nodetype=nil, cpu=nil, memory=nil, datavolumes=nil, cputype=nil, podvolumes=nil, isdynamicspec=nil, dynamicpodspec=nil, vpcid=nil, subnetid=nil, podname=nil)
          @ResourceProviderIdentifier = resourceprovideridentifier
          @ResourceProviderType = resourceprovidertype
          @NodeType = nodetype
          @Cpu = cpu
          @Memory = memory
          @DataVolumes = datavolumes
          @CpuType = cputype
          @PodVolumes = podvolumes
          @IsDynamicSpec = isdynamicspec
          @DynamicPodSpec = dynamicpodspec
          @VpcId = vpcid
          @SubnetId = subnetid
          @PodName = podname
        end

        def deserialize(params)
          @ResourceProviderIdentifier = params['ResourceProviderIdentifier']
          @ResourceProviderType = params['ResourceProviderType']
          @NodeType = params['NodeType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @DataVolumes = params['DataVolumes']
          @CpuType = params['CpuType']
          unless params['PodVolumes'].nil?
            @PodVolumes = []
            params['PodVolumes'].each do |i|
              podvolume_tmp = PodVolume.new
              podvolume_tmp.deserialize(i)
              @PodVolumes << podvolume_tmp
            end
          end
          @IsDynamicSpec = params['IsDynamicSpec']
          unless params['DynamicPodSpec'].nil?
            @DynamicPodSpec = DynamicPodSpec.new
            @DynamicPodSpec.deserialize(params['DynamicPodSpec'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PodName = params['PodName']
        end
      end

      # Pod相关信息
      class PodSpecInfo < TencentCloud::Common::AbstractModel
        # @param PodSpec: 使用Pod资源扩容时，指定的Pod规格以及来源等信息
        # @type PodSpec: :class:`Tencentcloud::Emr.v20190103.models.PodNewSpec`
        # @param PodParameter: POD自定义权限和自定义参数
        # @type PodParameter: :class:`Tencentcloud::Emr.v20190103.models.PodNewParameter`

        attr_accessor :PodSpec, :PodParameter

        def initialize(podspec=nil, podparameter=nil)
          @PodSpec = podspec
          @PodParameter = podparameter
        end

        def deserialize(params)
          unless params['PodSpec'].nil?
            @PodSpec = PodNewSpec.new
            @PodSpec.deserialize(params['PodSpec'])
          end
          unless params['PodParameter'].nil?
            @PodParameter = PodNewParameter.new
            @PodParameter.deserialize(params['PodParameter'])
          end
        end
      end

      # 单个pod状态
      class PodState < TencentCloud::Common::AbstractModel
        # @param Name: pod的名称
        # @type Name: String
        # @param Uuid: pod uuid
        # @type Uuid: String
        # @param State: pod的状态
        # @type State: String
        # @param Reason: pod处于该状态原因
        # @type Reason: String
        # @param OwnerCluster: pod所属集群
        # @type OwnerCluster: String
        # @param Memory: pod内存大小
        # @type Memory: Integer

        attr_accessor :Name, :Uuid, :State, :Reason, :OwnerCluster, :Memory

        def initialize(name=nil, uuid=nil, state=nil, reason=nil, ownercluster=nil, memory=nil)
          @Name = name
          @Uuid = uuid
          @State = state
          @Reason = reason
          @OwnerCluster = ownercluster
          @Memory = memory
        end

        def deserialize(params)
          @Name = params['Name']
          @Uuid = params['Uuid']
          @State = params['State']
          @Reason = params['Reason']
          @OwnerCluster = params['OwnerCluster']
          @Memory = params['Memory']
        end
      end

      # Pod的存储设备描述信息。
      class PodVolume < TencentCloud::Common::AbstractModel
        # @param VolumeType: 存储类型，可为"pvc"，"hostpath"。
        # @type VolumeType: String
        # @param PVCVolume: 当VolumeType为"pvc"时，该字段生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PVCVolume: :class:`Tencentcloud::Emr.v20190103.models.PersistentVolumeContext`
        # @param HostVolume: 当VolumeType为"hostpath"时，该字段生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostVolume: :class:`Tencentcloud::Emr.v20190103.models.HostVolumeContext`

        attr_accessor :VolumeType, :PVCVolume, :HostVolume

        def initialize(volumetype=nil, pvcvolume=nil, hostvolume=nil)
          @VolumeType = volumetype
          @PVCVolume = pvcvolume
          @HostVolume = hostvolume
        end

        def deserialize(params)
          @VolumeType = params['VolumeType']
          unless params['PVCVolume'].nil?
            @PVCVolume = PersistentVolumeContext.new
            @PVCVolume.deserialize(params['PVCVolume'])
          end
          unless params['HostVolume'].nil?
            @HostVolume = HostVolumeContext.new
            @HostVolume.deserialize(params['HostVolume'])
          end
        end
      end

      # 预执行脚本配置
      class PreExecuteFileSettings < TencentCloud::Common::AbstractModel
        # @param Path: 脚本在COS上路径，已废弃
        # @type Path: String
        # @param Args: 执行脚本参数
        # @type Args: Array
        # @param Bucket: COS的Bucket名称，已废弃
        # @type Bucket: String
        # @param Region: COS的Region名称，已废弃
        # @type Region: String
        # @param Domain: COS的Domain数据，已废弃
        # @type Domain: String
        # @param RunOrder: 执行顺序
        # @type RunOrder: Integer
        # @param WhenRun: resourceAfter 或 clusterAfter
        # @type WhenRun: String
        # @param CosFileName: 脚本文件名，已废弃
        # @type CosFileName: String
        # @param CosFileURI: 脚本的cos地址
        # @type CosFileURI: String
        # @param CosSecretId: cos的SecretId
        # @type CosSecretId: String
        # @param CosSecretKey: Cos的SecretKey
        # @type CosSecretKey: String
        # @param AppId: cos的appid，已废弃
        # @type AppId: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :Path, :Args, :Bucket, :Region, :Domain, :RunOrder, :WhenRun, :CosFileName, :CosFileURI, :CosSecretId, :CosSecretKey, :AppId, :Remark

        def initialize(path=nil, args=nil, bucket=nil, region=nil, domain=nil, runorder=nil, whenrun=nil, cosfilename=nil, cosfileuri=nil, cossecretid=nil, cossecretkey=nil, appid=nil, remark=nil)
          @Path = path
          @Args = args
          @Bucket = bucket
          @Region = region
          @Domain = domain
          @RunOrder = runorder
          @WhenRun = whenrun
          @CosFileName = cosfilename
          @CosFileURI = cosfileuri
          @CosSecretId = cossecretid
          @CosSecretKey = cossecretkey
          @AppId = appid
          @Remark = remark
        end

        def deserialize(params)
          @Path = params['Path']
          @Args = params['Args']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Domain = params['Domain']
          @RunOrder = params['RunOrder']
          @WhenRun = params['WhenRun']
          @CosFileName = params['CosFileName']
          @CosFileURI = params['CosFileURI']
          @CosSecretId = params['CosSecretId']
          @CosSecretKey = params['CosSecretKey']
          @AppId = params['AppId']
          @Remark = params['Remark']
        end
      end

      # Serverless HBase 预付费设置
      class PrePaySetting < TencentCloud::Common::AbstractModel
        # @param Period: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: :class:`Tencentcloud::Emr.v20190103.models.Period`
        # @param AutoRenewFlag: 自动续费标记，0：表示通知即将过期，但不自动续费 1：表示通知即将过期，而且自动续费 2：表示不通知即将过期，也不自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :Period, :AutoRenewFlag

        def initialize(period=nil, autorenewflag=nil)
          @Period = period
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          unless params['Period'].nil?
            @Period = Period.new
            @Period.deserialize(params['Period'])
          end
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # Pod容忍调度节点选择项
      class PreferredSchedulingTerm < TencentCloud::Common::AbstractModel
        # @param Weight: 权重，范围1-100
        # @type Weight: Integer
        # @param Preference: 节点选择表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Preference: :class:`Tencentcloud::Emr.v20190103.models.NodeSelectorTerm`

        attr_accessor :Weight, :Preference

        def initialize(weight=nil, preference=nil)
          @Weight = weight
          @Preference = preference
        end

        def deserialize(params)
          @Weight = params['Weight']
          unless params['Preference'].nil?
            @Preference = NodeSelectorTerm.new
            @Preference.deserialize(params['Preference'])
          end
        end
      end

      # 价格详情
      class PriceDetail < TencentCloud::Common::AbstractModel
        # @param ResourceId: 节点ID
        # @type ResourceId: String
        # @param Formula: 价格计算公式
        # @type Formula: String
        # @param OriginalCost: 原价
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价
        # @type DiscountCost: Float

        attr_accessor :ResourceId, :Formula, :OriginalCost, :DiscountCost

        def initialize(resourceid=nil, formula=nil, originalcost=nil, discountcost=nil)
          @ResourceId = resourceid
          @Formula = formula
          @OriginalCost = originalcost
          @DiscountCost = discountcost
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Formula = params['Formula']
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
        end
      end

      # 询价资源
      class PriceResource < TencentCloud::Common::AbstractModel
        # @param Spec: 需要的规格
        # @type Spec: String
        # @param StorageType: 硬盘类型
        # @type StorageType: Integer
        # @param DiskType: 硬盘类型
        # @type DiskType: String
        # @param RootSize: 系统盘大小
        # @type RootSize: Integer
        # @param MemSize: 内存大小
        # @type MemSize: Integer
        # @param Cpu: 核心数量
        # @type Cpu: Integer
        # @param DiskSize: 硬盘大小
        # @type DiskSize: Integer
        # @param MultiDisks: 云盘列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiDisks: Array
        # @param DiskCnt: 磁盘数量
        # @type DiskCnt: Integer
        # @param InstanceType: 规格
        # @type InstanceType: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DiskNum: 磁盘数量
        # @type DiskNum: Integer
        # @param LocalDiskNum: 本地盘的数量
        # @type LocalDiskNum: Integer
        # @param GpuDesc: GPU信息
        # @type GpuDesc: String

        attr_accessor :Spec, :StorageType, :DiskType, :RootSize, :MemSize, :Cpu, :DiskSize, :MultiDisks, :DiskCnt, :InstanceType, :Tags, :DiskNum, :LocalDiskNum, :GpuDesc

        def initialize(spec=nil, storagetype=nil, disktype=nil, rootsize=nil, memsize=nil, cpu=nil, disksize=nil, multidisks=nil, diskcnt=nil, instancetype=nil, tags=nil, disknum=nil, localdisknum=nil, gpudesc=nil)
          @Spec = spec
          @StorageType = storagetype
          @DiskType = disktype
          @RootSize = rootsize
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @MultiDisks = multidisks
          @DiskCnt = diskcnt
          @InstanceType = instancetype
          @Tags = tags
          @DiskNum = disknum
          @LocalDiskNum = localdisknum
          @GpuDesc = gpudesc
        end

        def deserialize(params)
          @Spec = params['Spec']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @RootSize = params['RootSize']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          unless params['MultiDisks'].nil?
            @MultiDisks = []
            params['MultiDisks'].each do |i|
              multidisk_tmp = MultiDisk.new
              multidisk_tmp.deserialize(i)
              @MultiDisks << multidisk_tmp
            end
          end
          @DiskCnt = params['DiskCnt']
          @InstanceType = params['InstanceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DiskNum = params['DiskNum']
          @LocalDiskNum = params['LocalDiskNum']
          @GpuDesc = params['GpuDesc']
        end
      end

      # 询价结果
      class PriceResult < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价
        # @type DiscountCost: Float

        attr_accessor :OriginalCost, :DiscountCost

        def initialize(originalcost=nil, discountcost=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
        end
      end

      # 获取CVM配额
      class QuotaEntity < TencentCloud::Common::AbstractModel
        # @param UsedQuota: 已使用配额
        # @type UsedQuota: Integer
        # @param RemainingQuota: 剩余配额
        # @type RemainingQuota: Integer
        # @param TotalQuota: 总配额
        # @type TotalQuota: Integer
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :UsedQuota, :RemainingQuota, :TotalQuota, :Zone

        def initialize(usedquota=nil, remainingquota=nil, totalquota=nil, zone=nil)
          @UsedQuota = usedquota
          @RemainingQuota = remainingquota
          @TotalQuota = totalquota
          @Zone = zone
        end

        def deserialize(params)
          @UsedQuota = params['UsedQuota']
          @RemainingQuota = params['RemainingQuota']
          @TotalQuota = params['TotalQuota']
          @Zone = params['Zone']
        end
      end

      # 集群续费实例信息
      class RenewInstancesInfo < TencentCloud::Common::AbstractModel
        # @param EmrResourceId: 节点资源ID
        # @type EmrResourceId: String
        # @param Flag: 节点类型。0:common节点；1:master节点
        # ；2:core节点；3:task节点
        # @type Flag: Integer
        # @param Ip: 内网IP
        # @type Ip: String
        # @param MemDesc: 节点内存描述
        # @type MemDesc: String
        # @param CpuNum: 节点核数
        # @type CpuNum: Integer
        # @param DiskSize: 硬盘大小
        # @type DiskSize: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param Spec: 节点规格
        # @type Spec: String
        # @param StorageType: 磁盘类型
        # @type StorageType: Integer
        # @param RootSize: 系统盘大小
        # @type RootSize: Integer
        # @param RootStorageType: 系统盘类型
        # @type RootStorageType: Integer
        # @param MCMultiDisk: 数据盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCMultiDisk: Array

        attr_accessor :EmrResourceId, :Flag, :Ip, :MemDesc, :CpuNum, :DiskSize, :ExpireTime, :Spec, :StorageType, :RootSize, :RootStorageType, :MCMultiDisk

        def initialize(emrresourceid=nil, flag=nil, ip=nil, memdesc=nil, cpunum=nil, disksize=nil, expiretime=nil, spec=nil, storagetype=nil, rootsize=nil, rootstoragetype=nil, mcmultidisk=nil)
          @EmrResourceId = emrresourceid
          @Flag = flag
          @Ip = ip
          @MemDesc = memdesc
          @CpuNum = cpunum
          @DiskSize = disksize
          @ExpireTime = expiretime
          @Spec = spec
          @StorageType = storagetype
          @RootSize = rootsize
          @RootStorageType = rootstoragetype
          @MCMultiDisk = mcmultidisk
        end

        def deserialize(params)
          @EmrResourceId = params['EmrResourceId']
          @Flag = params['Flag']
          @Ip = params['Ip']
          @MemDesc = params['MemDesc']
          @CpuNum = params['CpuNum']
          @DiskSize = params['DiskSize']
          @ExpireTime = params['ExpireTime']
          @Spec = params['Spec']
          @StorageType = params['StorageType']
          @RootSize = params['RootSize']
          @RootStorageType = params['RootStorageType']
          unless params['MCMultiDisk'].nil?
            @MCMultiDisk = []
            params['MCMultiDisk'].each do |i|
              multidiskmc_tmp = MultiDiskMC.new
              multidiskmc_tmp.deserialize(i)
              @MCMultiDisk << multidiskmc_tmp
            end
          end
        end
      end

      # 节点子项续费询价明细
      class RenewPriceDetail < TencentCloud::Common::AbstractModel
        # @param BillingName: 计费项名称
        # @type BillingName: String
        # @param Policy: 折扣
        # @type Policy: Float
        # @param Quantity: 数量
        # @type Quantity: Integer
        # @param OriginalCost: 原价
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价
        # @type DiscountCost: Float

        attr_accessor :BillingName, :Policy, :Quantity, :OriginalCost, :DiscountCost

        def initialize(billingname=nil, policy=nil, quantity=nil, originalcost=nil, discountcost=nil)
          @BillingName = billingname
          @Policy = policy
          @Quantity = quantity
          @OriginalCost = originalcost
          @DiscountCost = discountcost
        end

        def deserialize(params)
          @BillingName = params['BillingName']
          @Policy = params['Policy']
          @Quantity = params['Quantity']
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
        end
      end

      # 定时伸缩任务策略
      class RepeatStrategy < TencentCloud::Common::AbstractModel
        # @param RepeatType: 取值范围"DAY","DOW","DOM","NONE"，分别表示按天重复、按周重复、按月重复和一次执行。必须填写
        # @type RepeatType: String
        # @param DayRepeat: 按天重复规则，当RepeatType为"DAY"时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DayRepeat: :class:`Tencentcloud::Emr.v20190103.models.DayRepeatStrategy`
        # @param WeekRepeat: 按周重复规则，当RepeatType为"DOW"时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeekRepeat: :class:`Tencentcloud::Emr.v20190103.models.WeekRepeatStrategy`
        # @param MonthRepeat: 按月重复规则，当RepeatType为"DOM"时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonthRepeat: :class:`Tencentcloud::Emr.v20190103.models.MonthRepeatStrategy`
        # @param NotRepeat: 一次执行规则，当RepeatType为"NONE"时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotRepeat: :class:`Tencentcloud::Emr.v20190103.models.NotRepeatStrategy`
        # @param Expire: 规则过期时间，超过该时间后，规则将自动置为暂停状态，形式为"2020-07-23 00:00:00"。必须填写
        # @type Expire: String
        # @param StartTime: 周期性规则开始时间
        # @type StartTime: String

        attr_accessor :RepeatType, :DayRepeat, :WeekRepeat, :MonthRepeat, :NotRepeat, :Expire, :StartTime

        def initialize(repeattype=nil, dayrepeat=nil, weekrepeat=nil, monthrepeat=nil, notrepeat=nil, expire=nil, starttime=nil)
          @RepeatType = repeattype
          @DayRepeat = dayrepeat
          @WeekRepeat = weekrepeat
          @MonthRepeat = monthrepeat
          @NotRepeat = notrepeat
          @Expire = expire
          @StartTime = starttime
        end

        def deserialize(params)
          @RepeatType = params['RepeatType']
          unless params['DayRepeat'].nil?
            @DayRepeat = DayRepeatStrategy.new
            @DayRepeat.deserialize(params['DayRepeat'])
          end
          unless params['WeekRepeat'].nil?
            @WeekRepeat = WeekRepeatStrategy.new
            @WeekRepeat.deserialize(params['WeekRepeat'])
          end
          unless params['MonthRepeat'].nil?
            @MonthRepeat = MonthRepeatStrategy.new
            @MonthRepeat.deserialize(params['MonthRepeat'])
          end
          unless params['NotRepeat'].nil?
            @NotRepeat = NotRepeatStrategy.new
            @NotRepeat.deserialize(params['NotRepeat'])
          end
          @Expire = params['Expire']
          @StartTime = params['StartTime']
        end
      end

      # ResetYarnConfig请求参数结构体
      class ResetYarnConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param Key: 要重置的配置别名，可选值：

        # - capacityLabel：重置标签管理的配置
        # - fair：重置公平调度的配置
        # - capacity：重置容量调度的配置
        # @type Key: String

        attr_accessor :InstanceId, :Key

        def initialize(instanceid=nil, key=nil)
          @InstanceId = instanceid
          @Key = key
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Key = params['Key']
        end
      end

      # ResetYarnConfig返回参数结构体
      class ResetYarnConfigResponse < TencentCloud::Common::AbstractModel
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

      # ResizeDataDisks请求参数结构体
      class ResizeDataDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: EMR集群实例ID
        # @type InstanceId: String
        # @param DiskSize: 需要扩充的容量值，容量值需要大于原容量，并且为10的整数倍
        # @type DiskSize: Integer
        # @param CvmInstanceIds: 需要扩容的节点ID列表
        # @type CvmInstanceIds: Array
        # @param DiskIds: 需要扩容的云盘ID
        # @type DiskIds: Array
        # @param ResizeAll: 是否扩容全部云硬盘
        # @type ResizeAll: Boolean

        attr_accessor :InstanceId, :DiskSize, :CvmInstanceIds, :DiskIds, :ResizeAll

        def initialize(instanceid=nil, disksize=nil, cvminstanceids=nil, diskids=nil, resizeall=nil)
          @InstanceId = instanceid
          @DiskSize = disksize
          @CvmInstanceIds = cvminstanceids
          @DiskIds = diskids
          @ResizeAll = resizeall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiskSize = params['DiskSize']
          @CvmInstanceIds = params['CvmInstanceIds']
          @DiskIds = params['DiskIds']
          @ResizeAll = params['ResizeAll']
        end
      end

      # ResizeDataDisks返回参数结构体
      class ResizeDataDisksResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程Id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 资源详情
      class Resource < TencentCloud::Common::AbstractModel
        # @param Spec: 节点规格描述，如CVM.SA2。
        # @type Spec: String
        # @param StorageType: 取值范围:
        # "LOCAL_SSD"   3     //本地SSD
        # "CLOUD_SSD"   4     //云SSD
        # "CLOUD_PREMIUM"  5  //高效云盘
        # "CLOUD_HSSD"   6    //增强型SSD云硬盘
        # "CLOUD_THROUGHPUT" 11//吞吐型云硬盘
        # "CLOUD_TSSD"  12     //极速型SSD云硬盘
        # "CLOUD_BSSD"    13   //通用型SSD云硬盘
        # "CLOUD_BIGDATA" 14   //大数据型云硬盘
        # "CLOUD_HIGHIO"  15   //高IO型云硬盘

        # 该类型字段为无效字段，实际系统盘类型会根据数据盘类型和节点类型判断，如果节点支持所选的数据盘类型，系统盘类型会跟数据盘保持一致，建议使用CreateCluster接口
        # @type StorageType: Integer
        # @param DiskType: 数据盘类型 取值范围：

        # CLOUD_SSD：表示云SSD。

        # CLOUD_PREMIUM：表示高效云盘。

        # CLOUD_BASIC：表示云硬盘。

        # LOCAL_BASIC：表示本地盘。

        # LOCAL_SSD：表示本地SSD。

        # CLOUD_HSSD：表示增强型SSD云硬盘。

        # CLOUD_THROUGHPUT：表示吞吐型云硬盘。

        # CLOUD_TSSD：表示极速型SSD云硬盘。

        # CLOUD_BIGDATA：表示大数据型云硬盘。

        # CLOUD_HIGHIO：表示高IO型云硬盘。

        # CLOUD_BSSD：表示通用型SSD云硬盘。

        # REMOTE_SSD：表示远端SSD盘。
        # @type DiskType: String
        # @param MemSize: 内存容量,单位为M
        # @type MemSize: Integer
        # @param Cpu: CPU核数
        # @type Cpu: Integer
        # @param DiskSize: 数据盘容量
        # @type DiskSize: Integer
        # @param RootSize: 系统盘容量
        # @type RootSize: Integer
        # @param MultiDisks: 云盘列表，当数据盘为一块云盘时，直接使用DiskType和DiskSize参数，超出部分使用MultiDisks
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiDisks: Array
        # @param Tags: 需要绑定的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceType: 规格类型，如S2.MEDIUM8
        # @type InstanceType: String
        # @param LocalDiskNum: 本地盘数量，该字段已废弃
        # @type LocalDiskNum: Integer
        # @param DiskNum: 本地盘数量，如2
        # @type DiskNum: Integer
        # @param GpuDesc: GPU信息
        # @type GpuDesc: String

        attr_accessor :Spec, :StorageType, :DiskType, :MemSize, :Cpu, :DiskSize, :RootSize, :MultiDisks, :Tags, :InstanceType, :LocalDiskNum, :DiskNum, :GpuDesc

        def initialize(spec=nil, storagetype=nil, disktype=nil, memsize=nil, cpu=nil, disksize=nil, rootsize=nil, multidisks=nil, tags=nil, instancetype=nil, localdisknum=nil, disknum=nil, gpudesc=nil)
          @Spec = spec
          @StorageType = storagetype
          @DiskType = disktype
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @RootSize = rootsize
          @MultiDisks = multidisks
          @Tags = tags
          @InstanceType = instancetype
          @LocalDiskNum = localdisknum
          @DiskNum = disknum
          @GpuDesc = gpudesc
        end

        def deserialize(params)
          @Spec = params['Spec']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          @RootSize = params['RootSize']
          unless params['MultiDisks'].nil?
            @MultiDisks = []
            params['MultiDisks'].each do |i|
              multidisk_tmp = MultiDisk.new
              multidisk_tmp.deserialize(i)
              @MultiDisks << multidisk_tmp
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
          @InstanceType = params['InstanceType']
          @LocalDiskNum = params['LocalDiskNum']
          @DiskNum = params['DiskNum']
          @GpuDesc = params['GpuDesc']
        end
      end

      # 资源详情
      class ResourceDetail < TencentCloud::Common::AbstractModel
        # @param Spec: 规格
        # @type Spec: String
        # @param SpecName: 规格名
        # @type SpecName: String
        # @param StorageType: 硬盘类型
        # @type StorageType: Integer
        # @param DiskType: 硬盘类型
        # @type DiskType: String
        # @param RootSize: 系统盘大小
        # @type RootSize: Integer
        # @param MemSize: 内存大小
        # @type MemSize: Integer
        # @param Cpu: CPU个数
        # @type Cpu: Integer
        # @param DiskSize: 硬盘大小
        # @type DiskSize: Integer
        # @param InstanceType: 规格
        # @type InstanceType: String

        attr_accessor :Spec, :SpecName, :StorageType, :DiskType, :RootSize, :MemSize, :Cpu, :DiskSize, :InstanceType

        def initialize(spec=nil, specname=nil, storagetype=nil, disktype=nil, rootsize=nil, memsize=nil, cpu=nil, disksize=nil, instancetype=nil)
          @Spec = spec
          @SpecName = specname
          @StorageType = storagetype
          @DiskType = disktype
          @RootSize = rootsize
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Spec = params['Spec']
          @SpecName = params['SpecName']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @RootSize = params['RootSize']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          @InstanceType = params['InstanceType']
        end
      end

      # 组件重启策略
      class RestartPolicy < TencentCloud::Common::AbstractModel
        # @param Name: 重启策略名。
        # @type Name: String
        # @param DisplayName: 策略展示名称。
        # @type DisplayName: String
        # @param Describe: 策略描述。
        # @type Describe: String
        # @param BatchSizeRange: 批量重启节点数可选范围。
        # @type BatchSizeRange: Array
        # @param IsDefault: 是否是默认策略。
        # @type IsDefault: String

        attr_accessor :Name, :DisplayName, :Describe, :BatchSizeRange, :IsDefault

        def initialize(name=nil, displayname=nil, describe=nil, batchsizerange=nil, isdefault=nil)
          @Name = name
          @DisplayName = displayname
          @Describe = describe
          @BatchSizeRange = batchsizerange
          @IsDefault = isdefault
        end

        def deserialize(params)
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @Describe = params['Describe']
          @BatchSizeRange = params['BatchSizeRange']
          @IsDefault = params['IsDefault']
        end
      end

      # 用户组的输出结果
      class ResultItem < TencentCloud::Common::AbstractModel
        # @param Item: 此处为用户组名
        # @type Item: String
        # @param Result: 创建用户组是否成功
        # @type Result: Boolean
        # @param Reason: 若是创建失败, 提供失败原因
        # @type Reason: String

        attr_accessor :Item, :Result, :Reason

        def initialize(item=nil, result=nil, reason=nil)
          @Item = item
          @Result = result
          @Reason = reason
        end

        def deserialize(params)
          @Item = params['Item']
          @Result = params['Result']
          @Reason = params['Reason']
        end
      end

      # RunJobFlow请求参数结构体
      class RunJobFlowRequest < TencentCloud::Common::AbstractModel
        # @param Name: 作业名称。
        # @type Name: String
        # @param CreateCluster: 是否新创建集群。
        # true，新创建集群，则使用Instance中的参数进行集群创建。
        # false，使用已有集群，则通过InstanceId传入。
        # @type CreateCluster: Boolean
        # @param Steps: 作业流程执行步骤。
        # @type Steps: Array
        # @param InstancePolicy: 作业流程正常完成时，集群的处理方式，可选择:
        # Terminate 销毁集群。
        # Reserve 保留集群。
        # @type InstancePolicy: String
        # @param ProductVersion: 只有CreateCluster为true时生效，目前只支持EMR版本，例如EMR-2.2.0，不支持ClickHouse和Druid版本。
        # @type ProductVersion: String
        # @param SecurityClusterFlag: 只在CreateCluster为true时生效。
        # true 表示安装kerberos，false表示不安装kerberos。
        # @type SecurityClusterFlag: Boolean
        # @param Software: 只在CreateCluster为true时生效。
        # 新建集群时，要安装的软件列表。
        # @type Software: Array
        # @param BootstrapActions: 引导脚本。
        # @type BootstrapActions: Array
        # @param Configurations: 指定配置创建集群。
        # @type Configurations: Array
        # @param LogUri: 作业日志保存地址。
        # @type LogUri: String
        # @param InstanceId: 只在CreateCluster为false时生效。
        # @type InstanceId: String
        # @param ApplicationRole: 自定义应用角色，大数据应用访问外部服务时使用的角色，默认为"EME_QCSRole"。
        # @type ApplicationRole: String
        # @param ClientToken: 重入标签，用来可重入检查，防止在一段时间内，创建相同的流程作业。
        # @type ClientToken: String
        # @param Instance: 只在CreateCluster为true时生效，使用该配置创建集群。
        # @type Instance: :class:`Tencentcloud::Emr.v20190103.models.ClusterSetting`

        attr_accessor :Name, :CreateCluster, :Steps, :InstancePolicy, :ProductVersion, :SecurityClusterFlag, :Software, :BootstrapActions, :Configurations, :LogUri, :InstanceId, :ApplicationRole, :ClientToken, :Instance

        def initialize(name=nil, createcluster=nil, steps=nil, instancepolicy=nil, productversion=nil, securityclusterflag=nil, software=nil, bootstrapactions=nil, configurations=nil, loguri=nil, instanceid=nil, applicationrole=nil, clienttoken=nil, instance=nil)
          @Name = name
          @CreateCluster = createcluster
          @Steps = steps
          @InstancePolicy = instancepolicy
          @ProductVersion = productversion
          @SecurityClusterFlag = securityclusterflag
          @Software = software
          @BootstrapActions = bootstrapactions
          @Configurations = configurations
          @LogUri = loguri
          @InstanceId = instanceid
          @ApplicationRole = applicationrole
          @ClientToken = clienttoken
          @Instance = instance
        end

        def deserialize(params)
          @Name = params['Name']
          @CreateCluster = params['CreateCluster']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              step_tmp = Step.new
              step_tmp.deserialize(i)
              @Steps << step_tmp
            end
          end
          @InstancePolicy = params['InstancePolicy']
          @ProductVersion = params['ProductVersion']
          @SecurityClusterFlag = params['SecurityClusterFlag']
          @Software = params['Software']
          unless params['BootstrapActions'].nil?
            @BootstrapActions = []
            params['BootstrapActions'].each do |i|
              bootstrapaction_tmp = BootstrapAction.new
              bootstrapaction_tmp.deserialize(i)
              @BootstrapActions << bootstrapaction_tmp
            end
          end
          unless params['Configurations'].nil?
            @Configurations = []
            params['Configurations'].each do |i|
              configuration_tmp = Configuration.new
              configuration_tmp.deserialize(i)
              @Configurations << configuration_tmp
            end
          end
          @LogUri = params['LogUri']
          @InstanceId = params['InstanceId']
          @ApplicationRole = params['ApplicationRole']
          @ClientToken = params['ClientToken']
          unless params['Instance'].nil?
            @Instance = ClusterSetting.new
            @Instance.deserialize(params['Instance'])
          end
        end
      end

      # RunJobFlow返回参数结构体
      class RunJobFlowResponse < TencentCloud::Common::AbstractModel
        # @param JobFlowId: 作业流程ID。
        # @type JobFlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobFlowId, :RequestId

        def initialize(jobflowid=nil, requestid=nil)
          @JobFlowId = jobflowid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobFlowId = params['JobFlowId']
          @RequestId = params['RequestId']
        end
      end

      # Serverless Instance
      class SLInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: EMR Instance Id
        # @type InstanceId: String
        # @param ClusterId: EMR Numeric Instance Id
        # @type ClusterId: Integer
        # @param InstanceName: Instance Name
        # @type InstanceName: String
        # @param RegionId: Region id
        # @type RegionId: Integer
        # @param Zone: Zone Name
        # @type Zone: String
        # @param PayMode: Pay Mode
        # @type PayMode: Integer
        # @param DiskType: Disk Type
        # @type DiskType: String
        # @param DiskSize: Disk Size
        # @type DiskSize: Integer
        # @param NodeType: Node Type
        # @type NodeType: String
        # @param NodeNum: Node Number
        # @type NodeNum: Integer
        # @param ExpireTime: Expire Time
        # @type ExpireTime: String
        # @param IsolateTime: Isolate Time
        # @type IsolateTime: String
        # @param CreateTime: Create Time
        # @type CreateTime: String
        # @param AutoRenewFlag: Auto Renew Flag
        # @type AutoRenewFlag: Integer
        # @param Status: EMR Numeric Instance Status
        # @type Status: Integer
        # @param ZoneSettings: Zone Setting
        # @type ZoneSettings: Array
        # @param Tags: Bound Tags
        # @type Tags: Array
        # @param DeployRole: Deploy Role
        # @type DeployRole: String

        attr_accessor :InstanceId, :ClusterId, :InstanceName, :RegionId, :Zone, :PayMode, :DiskType, :DiskSize, :NodeType, :NodeNum, :ExpireTime, :IsolateTime, :CreateTime, :AutoRenewFlag, :Status, :ZoneSettings, :Tags, :DeployRole

        def initialize(instanceid=nil, clusterid=nil, instancename=nil, regionid=nil, zone=nil, paymode=nil, disktype=nil, disksize=nil, nodetype=nil, nodenum=nil, expiretime=nil, isolatetime=nil, createtime=nil, autorenewflag=nil, status=nil, zonesettings=nil, tags=nil, deployrole=nil)
          @InstanceId = instanceid
          @ClusterId = clusterid
          @InstanceName = instancename
          @RegionId = regionid
          @Zone = zone
          @PayMode = paymode
          @DiskType = disktype
          @DiskSize = disksize
          @NodeType = nodetype
          @NodeNum = nodenum
          @ExpireTime = expiretime
          @IsolateTime = isolatetime
          @CreateTime = createtime
          @AutoRenewFlag = autorenewflag
          @Status = status
          @ZoneSettings = zonesettings
          @Tags = tags
          @DeployRole = deployrole
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterId = params['ClusterId']
          @InstanceName = params['InstanceName']
          @RegionId = params['RegionId']
          @Zone = params['Zone']
          @PayMode = params['PayMode']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @NodeType = params['NodeType']
          @NodeNum = params['NodeNum']
          @ExpireTime = params['ExpireTime']
          @IsolateTime = params['IsolateTime']
          @CreateTime = params['CreateTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Status = params['Status']
          unless params['ZoneSettings'].nil?
            @ZoneSettings = []
            params['ZoneSettings'].each do |i|
              zonesetting_tmp = ZoneSetting.new
              zonesetting_tmp.deserialize(i)
              @ZoneSettings << zonesetting_tmp
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
          @DeployRole = params['DeployRole']
        end
      end

      # Serverless HBase实例信息
      class SLInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群实例字符串ID
        # @type ClusterId: String
        # @param Id: 集群实例数字ID
        # @type Id: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param HealthStatus: 健康状态
        # @type HealthStatus: String
        # @param ClusterName: 实例名称
        # @type ClusterName: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param ZoneId: 主可用区ID
        # @type ZoneId: Integer
        # @param Zone: 主可用区
        # @type Zone: String
        # @param AppId: 用户APPID
        # @type AppId: Integer
        # @param VpcId: 主可用区私有网络ID
        # @type VpcId: Integer
        # @param SubnetId: 主可用区子网ID
        # @type SubnetId: Integer
        # @param Status: 状态码
        # @type Status: Integer
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param PayMode: 集群计费类型。0表示按量计费，1表示包年包月
        # @type PayMode: Integer
        # @param ZoneSettings: 多可用区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneSettings: Array
        # @param Tags: 实例标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标记， 0：表示通知即将过期，但不自动续费 1：表示通知即将过期，而且自动续费 2：表示不通知即将过期，也不自动续费，若业务无续费概念，设置为0
        # @type AutoRenewFlag: Integer
        # @param IsolateTime: 隔离时间，未隔离返回0000-00-00 00:00:00。
        # @type IsolateTime: String
        # @param ExpireTime: 过期时间，后付费返回0000-00-00 00:00:00
        # @type ExpireTime: String
        # @param DeployRole: 主备部署角色
        # @type DeployRole: String

        attr_accessor :ClusterId, :Id, :StatusDesc, :HealthStatus, :ClusterName, :RegionId, :ZoneId, :Zone, :AppId, :VpcId, :SubnetId, :Status, :AddTime, :PayMode, :ZoneSettings, :Tags, :AutoRenewFlag, :IsolateTime, :ExpireTime, :DeployRole

        def initialize(clusterid=nil, id=nil, statusdesc=nil, healthstatus=nil, clustername=nil, regionid=nil, zoneid=nil, zone=nil, appid=nil, vpcid=nil, subnetid=nil, status=nil, addtime=nil, paymode=nil, zonesettings=nil, tags=nil, autorenewflag=nil, isolatetime=nil, expiretime=nil, deployrole=nil)
          @ClusterId = clusterid
          @Id = id
          @StatusDesc = statusdesc
          @HealthStatus = healthstatus
          @ClusterName = clustername
          @RegionId = regionid
          @ZoneId = zoneid
          @Zone = zone
          @AppId = appid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @AddTime = addtime
          @PayMode = paymode
          @ZoneSettings = zonesettings
          @Tags = tags
          @AutoRenewFlag = autorenewflag
          @IsolateTime = isolatetime
          @ExpireTime = expiretime
          @DeployRole = deployrole
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Id = params['Id']
          @StatusDesc = params['StatusDesc']
          @HealthStatus = params['HealthStatus']
          @ClusterName = params['ClusterName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @AddTime = params['AddTime']
          @PayMode = params['PayMode']
          unless params['ZoneSettings'].nil?
            @ZoneSettings = []
            params['ZoneSettings'].each do |i|
              zonesetting_tmp = ZoneSetting.new
              zonesetting_tmp.deserialize(i)
              @ZoneSettings << zonesetting_tmp
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
          @AutoRenewFlag = params['AutoRenewFlag']
          @IsolateTime = params['IsolateTime']
          @ExpireTime = params['ExpireTime']
          @DeployRole = params['DeployRole']
        end
      end

      # ScaleOutCluster请求参数结构体
      class ScaleOutClusterRequest < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点计费模式。取值范围：
        # <li>PREPAID：预付费，即包年包月。</li>
        # <li>POSTPAID_BY_HOUR：按小时后付费。</li>
        # <li>SPOTPAID：竞价付费（仅支持TASK节点）。</li>
        # @type InstanceChargeType: String
        # @param InstanceId: 集群实例ID。
        # @type InstanceId: String
        # @param ScaleOutNodeConfig: 扩容节点类型以及数量
        # @type ScaleOutNodeConfig: :class:`Tencentcloud::Emr.v20190103.models.ScaleOutNodeConfig`
        # @param ClientToken: 唯一随机标识，时效5分钟，需要调用者指定 防止客户端重新创建资源，例如 a9a90aa6-****-****-****-fae36063280
        # @type ClientToken: String
        # @param InstanceChargePrepaid: 即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Emr.v20190103.models.InstanceChargePrepaid`
        # @param ScriptBootstrapActionConfig: [引导操作](https://cloud.tencent.com/document/product/589/35656)脚本设置。
        # @type ScriptBootstrapActionConfig: Array
        # @param SoftDeployInfo: 扩容部署服务，新增节点将默认继承当前节点类型中所部署服务，部署服务含默认可选服务，该参数仅支持可选服务填写，如：存量task节点已部署HDFS、YARN、impala；使用api扩容task节不部署impala时，部署服务仅填写HDFS、YARN。[组件名对应的映射关系表](https://cloud.tencent.com/document/product/589/98760)。
        # @type SoftDeployInfo: Array
        # @param ServiceNodeInfo: 部署进程，默认部署扩容服务的全部进程，支持修改部署进程，如：当前task节点部署服务为：HDFS、YARN、impala，默认部署服务为：DataNode,NodeManager,ImpalaServer，若用户需修改部署进程信息，部署进程：	DataNode,NodeManager,ImpalaServerCoordinator或DataNode,NodeManager,ImpalaServerExecutor。[进程名对应的映射关系表](https://cloud.tencent.com/document/product/589/98760)。
        # @type ServiceNodeInfo: Array
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，当前只支持指定一个。
        # 该参数可以通过调用 [DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/product/213/17810)的返回值中的DisasterRecoverGroupId字段来获取。
        # @type DisasterRecoverGroupIds: Array
        # @param Tags: 扩容节点绑定标签列表。
        # @type Tags: Array
        # @param HardwareSourceType: 扩容所选资源类型，可选范围为"HOST","POD","MNode"，HOST为普通的CVM资源，POD为TKE集群或EKS集群提供的资源,MNode为全托管资源类型
        # @type HardwareSourceType: String
        # @param PodSpecInfo: Pod相关资源信息
        # @type PodSpecInfo: :class:`Tencentcloud::Emr.v20190103.models.PodSpecInfo`
        # @param ClickHouseClusterName: 使用clickhouse集群扩容时，选择的机器分组名称
        # @type ClickHouseClusterName: String
        # @param ClickHouseClusterType: 使用clickhouse集群扩容时，选择的机器分组类型。new为新增，old为选择旧分组
        # @type ClickHouseClusterType: String
        # @param YarnNodeLabel: 扩容指定 Yarn Node Label
        # @type YarnNodeLabel: String
        # @param EnableStartServiceFlag: 扩容后是否启动服务，默认取值否
        # <li>true：是</li>
        # <li>false：否</li>
        # @type EnableStartServiceFlag: Boolean
        # @param ResourceSpec: 规格设置
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NodeResourceSpec`
        # @param Zone: 实例所属的可用区，例如ap-guangzhou-1。该参数也可以通过调用[DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param SubnetId: 子网，默认是集群创建时的子网
        # @type SubnetId: String
        # @param ScaleOutServiceConfGroupsInfo: 扩容指定配置组
        # @type ScaleOutServiceConfGroupsInfo: Array
        # @param NodeMarks: 节点标记信息，当前只提供给tf平台使用
        # @type NodeMarks: :class:`Tencentcloud::Emr.v20190103.models.NodeMark`
        # @param WarehouseName: 扩容指定计算组名称
        # @type WarehouseName: String

        attr_accessor :InstanceChargeType, :InstanceId, :ScaleOutNodeConfig, :ClientToken, :InstanceChargePrepaid, :ScriptBootstrapActionConfig, :SoftDeployInfo, :ServiceNodeInfo, :DisasterRecoverGroupIds, :Tags, :HardwareSourceType, :PodSpecInfo, :ClickHouseClusterName, :ClickHouseClusterType, :YarnNodeLabel, :EnableStartServiceFlag, :ResourceSpec, :Zone, :SubnetId, :ScaleOutServiceConfGroupsInfo, :NodeMarks, :WarehouseName

        def initialize(instancechargetype=nil, instanceid=nil, scaleoutnodeconfig=nil, clienttoken=nil, instancechargeprepaid=nil, scriptbootstrapactionconfig=nil, softdeployinfo=nil, servicenodeinfo=nil, disasterrecovergroupids=nil, tags=nil, hardwaresourcetype=nil, podspecinfo=nil, clickhouseclustername=nil, clickhouseclustertype=nil, yarnnodelabel=nil, enablestartserviceflag=nil, resourcespec=nil, zone=nil, subnetid=nil, scaleoutserviceconfgroupsinfo=nil, nodemarks=nil, warehousename=nil)
          @InstanceChargeType = instancechargetype
          @InstanceId = instanceid
          @ScaleOutNodeConfig = scaleoutnodeconfig
          @ClientToken = clienttoken
          @InstanceChargePrepaid = instancechargeprepaid
          @ScriptBootstrapActionConfig = scriptbootstrapactionconfig
          @SoftDeployInfo = softdeployinfo
          @ServiceNodeInfo = servicenodeinfo
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @Tags = tags
          @HardwareSourceType = hardwaresourcetype
          @PodSpecInfo = podspecinfo
          @ClickHouseClusterName = clickhouseclustername
          @ClickHouseClusterType = clickhouseclustertype
          @YarnNodeLabel = yarnnodelabel
          @EnableStartServiceFlag = enablestartserviceflag
          @ResourceSpec = resourcespec
          @Zone = zone
          @SubnetId = subnetid
          @ScaleOutServiceConfGroupsInfo = scaleoutserviceconfgroupsinfo
          @NodeMarks = nodemarks
          @WarehouseName = warehousename
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          @InstanceId = params['InstanceId']
          unless params['ScaleOutNodeConfig'].nil?
            @ScaleOutNodeConfig = ScaleOutNodeConfig.new
            @ScaleOutNodeConfig.deserialize(params['ScaleOutNodeConfig'])
          end
          @ClientToken = params['ClientToken']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['ScriptBootstrapActionConfig'].nil?
            @ScriptBootstrapActionConfig = []
            params['ScriptBootstrapActionConfig'].each do |i|
              scriptbootstrapactionconfig_tmp = ScriptBootstrapActionConfig.new
              scriptbootstrapactionconfig_tmp.deserialize(i)
              @ScriptBootstrapActionConfig << scriptbootstrapactionconfig_tmp
            end
          end
          @SoftDeployInfo = params['SoftDeployInfo']
          @ServiceNodeInfo = params['ServiceNodeInfo']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HardwareSourceType = params['HardwareSourceType']
          unless params['PodSpecInfo'].nil?
            @PodSpecInfo = PodSpecInfo.new
            @PodSpecInfo.deserialize(params['PodSpecInfo'])
          end
          @ClickHouseClusterName = params['ClickHouseClusterName']
          @ClickHouseClusterType = params['ClickHouseClusterType']
          @YarnNodeLabel = params['YarnNodeLabel']
          @EnableStartServiceFlag = params['EnableStartServiceFlag']
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NodeResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          @Zone = params['Zone']
          @SubnetId = params['SubnetId']
          unless params['ScaleOutServiceConfGroupsInfo'].nil?
            @ScaleOutServiceConfGroupsInfo = []
            params['ScaleOutServiceConfGroupsInfo'].each do |i|
              scaleoutserviceconfgroupsinfo_tmp = ScaleOutServiceConfGroupsInfo.new
              scaleoutserviceconfgroupsinfo_tmp.deserialize(i)
              @ScaleOutServiceConfGroupsInfo << scaleoutserviceconfgroupsinfo_tmp
            end
          end
          unless params['NodeMarks'].nil?
            @NodeMarks = NodeMark.new
            @NodeMarks.deserialize(params['NodeMarks'])
          end
          @WarehouseName = params['WarehouseName']
        end
      end

      # ScaleOutCluster返回参数结构体
      class ScaleOutClusterResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ClientToken: 客户端Token。
        # @type ClientToken: String
        # @param FlowId: 扩容流程ID。
        # @type FlowId: Integer
        # @param TraceId: 查询流程状态，流程额外信息
        # @type TraceId: String
        # @param DealNames: 订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param BillId: 大订单号。
        # @type BillId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :ClientToken, :FlowId, :TraceId, :DealNames, :BillId, :RequestId

        def initialize(instanceid=nil, clienttoken=nil, flowid=nil, traceid=nil, dealnames=nil, billid=nil, requestid=nil)
          @InstanceId = instanceid
          @ClientToken = clienttoken
          @FlowId = flowid
          @TraceId = traceid
          @DealNames = dealnames
          @BillId = billid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClientToken = params['ClientToken']
          @FlowId = params['FlowId']
          @TraceId = params['TraceId']
          @DealNames = params['DealNames']
          @BillId = params['BillId']
          @RequestId = params['RequestId']
        end
      end

      # ScaleOutInstance请求参数结构体
      class ScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 扩容的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 扩容的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param ClientToken: 唯一随机标识，时效5分钟，需要调用者指定 防止客户端重新创建资源，例如 a9a90aa6-****-****-****-fae36063280
        # @type ClientToken: String
        # @param PreExecutedFileSettings: 引导操作脚本设置。
        # @type PreExecutedFileSettings: Array
        # @param TaskCount: 扩容的Task节点数量。
        # @type TaskCount: Integer
        # @param CoreCount: 扩容的Core节点数量。
        # @type CoreCount: Integer
        # @param UnNecessaryNodeList: 扩容时不需要安装的进程。
        # @type UnNecessaryNodeList: Array
        # @param RouterCount: 扩容的Router节点数量。
        # @type RouterCount: Integer
        # @param SoftDeployInfo: 部署的服务。
        # <li>SoftDeployInfo和ServiceNodeInfo是同组参数，和UnNecessaryNodeList参数互斥。</li>
        # <li>建议使用SoftDeployInfo和ServiceNodeInfo组合。</li>
        # @type SoftDeployInfo: Array
        # @param ServiceNodeInfo: 启动的进程。
        # @type ServiceNodeInfo: Array
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，当前仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param Tags: 扩容节点绑定标签列表。
        # @type Tags: Array
        # @param HardwareResourceType: 扩容所选资源类型，可选范围为"HOST","POD","MNode"，HOST为普通的CVM资源，POD为TKE集群或EKS集群提供的资源,MNode为全托管资源类型
        # @type HardwareResourceType: String
        # @param PodSpec: 使用Pod资源扩容时，指定的Pod规格以及来源等信息
        # @type PodSpec: :class:`Tencentcloud::Emr.v20190103.models.PodSpec`
        # @param ClickHouseClusterName: 使用clickhouse集群扩容时，选择的机器分组名称
        # @type ClickHouseClusterName: String
        # @param ClickHouseClusterType: 使用clickhouse集群扩容时，选择的机器分组类型。new为新增，old为选择旧分组
        # @type ClickHouseClusterType: String
        # @param YarnNodeLabel: 规则扩容指定 yarn node label
        # @type YarnNodeLabel: String
        # @param PodParameter: POD自定义权限和自定义参数
        # @type PodParameter: :class:`Tencentcloud::Emr.v20190103.models.PodParameter`
        # @param MasterCount: 扩容的Master节点的数量。
        # 使用clickhouse集群扩容时，该参数不生效。
        # 使用kafka集群扩容时，该参数不生效。
        # 当HardwareResourceType=POD时，该参数不生效。
        # @type MasterCount: Integer
        # @param StartServiceAfterScaleOut: 扩容后是否启动服务，true：启动，false：不启动
        # @type StartServiceAfterScaleOut: String
        # @param ZoneId: 可用区，默认是集群的主可用区
        # @type ZoneId: Integer
        # @param SubnetId: 子网，默认是集群创建时的子网
        # @type SubnetId: String
        # @param ScaleOutServiceConfAssign: 预设配置组
        # @type ScaleOutServiceConfAssign: String
        # @param AutoRenew: 0表示关闭自动续费，1表示开启自动续费
        # @type AutoRenew: Integer
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR,类型为EMR时,InstanceId生效,类型为ComputeResource时,使用ComputeResourceId标识
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String
        # @param ComputeResourceAdvanceParams: 计算资源高级设置
        # @type ComputeResourceAdvanceParams: :class:`Tencentcloud::Emr.v20190103.models.ComputeResourceAdvanceParams`
        # @param NodeMarks: 节点标记信息，目前只提供tf平台使用
        # @type NodeMarks: :class:`Tencentcloud::Emr.v20190103.models.NodeMark`
        # @param WarehouseName: 扩容指定计算组
        # @type WarehouseName: String

        attr_accessor :TimeUnit, :TimeSpan, :InstanceId, :PayMode, :ClientToken, :PreExecutedFileSettings, :TaskCount, :CoreCount, :UnNecessaryNodeList, :RouterCount, :SoftDeployInfo, :ServiceNodeInfo, :DisasterRecoverGroupIds, :Tags, :HardwareResourceType, :PodSpec, :ClickHouseClusterName, :ClickHouseClusterType, :YarnNodeLabel, :PodParameter, :MasterCount, :StartServiceAfterScaleOut, :ZoneId, :SubnetId, :ScaleOutServiceConfAssign, :AutoRenew, :ResourceBaseType, :ComputeResourceId, :ComputeResourceAdvanceParams, :NodeMarks, :WarehouseName

        def initialize(timeunit=nil, timespan=nil, instanceid=nil, paymode=nil, clienttoken=nil, preexecutedfilesettings=nil, taskcount=nil, corecount=nil, unnecessarynodelist=nil, routercount=nil, softdeployinfo=nil, servicenodeinfo=nil, disasterrecovergroupids=nil, tags=nil, hardwareresourcetype=nil, podspec=nil, clickhouseclustername=nil, clickhouseclustertype=nil, yarnnodelabel=nil, podparameter=nil, mastercount=nil, startserviceafterscaleout=nil, zoneid=nil, subnetid=nil, scaleoutserviceconfassign=nil, autorenew=nil, resourcebasetype=nil, computeresourceid=nil, computeresourceadvanceparams=nil, nodemarks=nil, warehousename=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @InstanceId = instanceid
          @PayMode = paymode
          @ClientToken = clienttoken
          @PreExecutedFileSettings = preexecutedfilesettings
          @TaskCount = taskcount
          @CoreCount = corecount
          @UnNecessaryNodeList = unnecessarynodelist
          @RouterCount = routercount
          @SoftDeployInfo = softdeployinfo
          @ServiceNodeInfo = servicenodeinfo
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @Tags = tags
          @HardwareResourceType = hardwareresourcetype
          @PodSpec = podspec
          @ClickHouseClusterName = clickhouseclustername
          @ClickHouseClusterType = clickhouseclustertype
          @YarnNodeLabel = yarnnodelabel
          @PodParameter = podparameter
          @MasterCount = mastercount
          @StartServiceAfterScaleOut = startserviceafterscaleout
          @ZoneId = zoneid
          @SubnetId = subnetid
          @ScaleOutServiceConfAssign = scaleoutserviceconfassign
          @AutoRenew = autorenew
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
          @ComputeResourceAdvanceParams = computeresourceadvanceparams
          @NodeMarks = nodemarks
          @WarehouseName = warehousename
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @InstanceId = params['InstanceId']
          @PayMode = params['PayMode']
          @ClientToken = params['ClientToken']
          unless params['PreExecutedFileSettings'].nil?
            @PreExecutedFileSettings = []
            params['PreExecutedFileSettings'].each do |i|
              preexecutefilesettings_tmp = PreExecuteFileSettings.new
              preexecutefilesettings_tmp.deserialize(i)
              @PreExecutedFileSettings << preexecutefilesettings_tmp
            end
          end
          @TaskCount = params['TaskCount']
          @CoreCount = params['CoreCount']
          @UnNecessaryNodeList = params['UnNecessaryNodeList']
          @RouterCount = params['RouterCount']
          @SoftDeployInfo = params['SoftDeployInfo']
          @ServiceNodeInfo = params['ServiceNodeInfo']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HardwareResourceType = params['HardwareResourceType']
          unless params['PodSpec'].nil?
            @PodSpec = PodSpec.new
            @PodSpec.deserialize(params['PodSpec'])
          end
          @ClickHouseClusterName = params['ClickHouseClusterName']
          @ClickHouseClusterType = params['ClickHouseClusterType']
          @YarnNodeLabel = params['YarnNodeLabel']
          unless params['PodParameter'].nil?
            @PodParameter = PodParameter.new
            @PodParameter.deserialize(params['PodParameter'])
          end
          @MasterCount = params['MasterCount']
          @StartServiceAfterScaleOut = params['StartServiceAfterScaleOut']
          @ZoneId = params['ZoneId']
          @SubnetId = params['SubnetId']
          @ScaleOutServiceConfAssign = params['ScaleOutServiceConfAssign']
          @AutoRenew = params['AutoRenew']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
          unless params['ComputeResourceAdvanceParams'].nil?
            @ComputeResourceAdvanceParams = ComputeResourceAdvanceParams.new
            @ComputeResourceAdvanceParams.deserialize(params['ComputeResourceAdvanceParams'])
          end
          unless params['NodeMarks'].nil?
            @NodeMarks = NodeMark.new
            @NodeMarks.deserialize(params['NodeMarks'])
          end
          @WarehouseName = params['WarehouseName']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param DealNames: 订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ClientToken: 客户端Token。
        # @type ClientToken: String
        # @param FlowId: 扩容流程ID。
        # @type FlowId: Integer
        # @param BillId: 大订单号。
        # @type BillId: String
        # @param TraceId: 扩容TraceId
        # @type TraceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DealNames, :ClientToken, :FlowId, :BillId, :TraceId, :RequestId

        def initialize(instanceid=nil, dealnames=nil, clienttoken=nil, flowid=nil, billid=nil, traceid=nil, requestid=nil)
          @InstanceId = instanceid
          @DealNames = dealnames
          @ClientToken = clienttoken
          @FlowId = flowid
          @BillId = billid
          @TraceId = traceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DealNames = params['DealNames']
          @ClientToken = params['ClientToken']
          @FlowId = params['FlowId']
          @BillId = params['BillId']
          @TraceId = params['TraceId']
          @RequestId = params['RequestId']
        end
      end

      # 扩容节点类型以及数量
      class ScaleOutNodeConfig < TencentCloud::Common::AbstractModel
        # @param NodeFlag: 扩容节点类型取值范围：
        #   <li>MASTER</li>
        #   <li>TASK</li>
        #   <li>CORE</li>
        #   <li>ROUTER</li>
        # @type NodeFlag: String
        # @param NodeCount: 扩容节点数量
        # @type NodeCount: Integer

        attr_accessor :NodeFlag, :NodeCount

        def initialize(nodeflag=nil, nodecount=nil)
          @NodeFlag = nodeflag
          @NodeCount = nodecount
        end

        def deserialize(params)
          @NodeFlag = params['NodeFlag']
          @NodeCount = params['NodeCount']
        end
      end

      # 扩容指定配置组
      class ScaleOutServiceConfGroupsInfo < TencentCloud::Common::AbstractModel
        # @param ServiceComponentName: 组件版本名称 如 HDFS-2.8.5
        # @type ServiceComponentName: String
        # @param ConfGroupName: 配置组名 如hdfs-core-defaultGroup    ConfGroupName参数传入 代表配置组维度
        #                                                              ConfGroupName参数不传 默认 代表集群维度
        # @type ConfGroupName: String

        attr_accessor :ServiceComponentName, :ConfGroupName

        def initialize(servicecomponentname=nil, confgroupname=nil)
          @ServiceComponentName = servicecomponentname
          @ConfGroupName = confgroupname
        end

        def deserialize(params)
          @ServiceComponentName = params['ServiceComponentName']
          @ConfGroupName = params['ConfGroupName']
        end
      end

      # 集群应用场景以及支持部署组件信息
      class SceneSoftwareConfig < TencentCloud::Common::AbstractModel
        # @param Software: 部署的组件列表。不同的EMR产品版本ProductVersion 对应不同可选组件列表，不同产品版本可选组件列表查询：[组件版本](https://cloud.tencent.com/document/product/589/20279) ；
        # 填写实例值：hive、flink。
        # @type Software: Array
        # @param SceneName: 默认Hadoop-Default,[场景查询](https://cloud.tencent.com/document/product/589/14624)场景化取值范围：
        # Hadoop-Kudu
        # Hadoop-Zookeeper
        # Hadoop-Presto
        # Hadoop-Hbase
        # Hadoop-Default
        # @type SceneName: String

        attr_accessor :Software, :SceneName

        def initialize(software=nil, scenename=nil)
          @Software = software
          @SceneName = scenename
        end

        def deserialize(params)
          @Software = params['Software']
          @SceneName = params['SceneName']
        end
      end

      # 调度任务详情
      class SchedulerTaskDetail < TencentCloud::Common::AbstractModel
        # @param Step: 步骤
        # @type Step: String
        # @param Progress: 进度
        # @type Progress: String
        # @param FailReason: 失败信息
        # @type FailReason: String
        # @param JobId: 用来获取详情的id
        # @type JobId: Integer

        attr_accessor :Step, :Progress, :FailReason, :JobId

        def initialize(step=nil, progress=nil, failreason=nil, jobid=nil)
          @Step = step
          @Progress = progress
          @FailReason = failreason
          @JobId = jobid
        end

        def deserialize(params)
          @Step = params['Step']
          @Progress = params['Progress']
          @FailReason = params['FailReason']
          @JobId = params['JobId']
        end
      end

      # yarn资源调度历史
      class SchedulerTaskInfo < TencentCloud::Common::AbstractModel
        # @param SchedulerName: 调度器类型
        # @type SchedulerName: String
        # @param OperatorName: 操作类型
        # @type OperatorName: String
        # @param CreateTime: 开始时间
        # @type CreateTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param State: 状态
        # @type State: Integer
        # @param Details: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :SchedulerName, :OperatorName, :CreateTime, :EndTime, :State, :Details

        def initialize(schedulername=nil, operatorname=nil, createtime=nil, endtime=nil, state=nil, details=nil)
          @SchedulerName = schedulername
          @OperatorName = operatorname
          @CreateTime = createtime
          @EndTime = endtime
          @State = state
          @Details = details
        end

        def deserialize(params)
          @SchedulerName = params['SchedulerName']
          @OperatorName = params['OperatorName']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          @State = params['State']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              schedulertaskdetail_tmp = SchedulerTaskDetail.new
              schedulertaskdetail_tmp.deserialize(i)
              @Details << schedulertaskdetail_tmp
            end
          end
        end
      end

      # 添加引导操作
      class ScriptBootstrapActionConfig < TencentCloud::Common::AbstractModel
        # @param CosFileURI: 脚本的cos地址，参照格式：https://beijing-111111.cos.ap-beijing.myqcloud.com/data/test.sh查询cos存储桶列表：[存储桶列表](https://console.cloud.tencent.com/cos/bucket)
        # @type CosFileURI: String
        # @param ExecutionMoment: 引导脚步执行时机范围
        # <li>resourceAfter：节点初始化后</li>
        # <li>clusterAfter：集群启动后</li>
        # <li>clusterBefore：集群启动前</li>
        # @type ExecutionMoment: String
        # @param Args: 执行脚本参数，参数格式请遵循标准Shell规范
        # @type Args: Array
        # @param CosFileName: 脚本文件名
        # @type CosFileName: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :CosFileURI, :ExecutionMoment, :Args, :CosFileName, :Remark

        def initialize(cosfileuri=nil, executionmoment=nil, args=nil, cosfilename=nil, remark=nil)
          @CosFileURI = cosfileuri
          @ExecutionMoment = executionmoment
          @Args = args
          @CosFileName = cosfilename
          @Remark = remark
        end

        def deserialize(params)
          @CosFileURI = params['CosFileURI']
          @ExecutionMoment = params['ExecutionMoment']
          @Args = params['Args']
          @CosFileName = params['CosFileName']
          @Remark = params['Remark']
        end
      end

      # 搜索字段
      class SearchItem < TencentCloud::Common::AbstractModel
        # @param SearchType: 支持搜索的类型
        # @type SearchType: String
        # @param SearchValue: 支持搜索的值
        # @type SearchValue: String

        attr_accessor :SearchType, :SearchValue

        def initialize(searchtype=nil, searchvalue=nil)
          @SearchType = searchtype
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @SearchType = params['SearchType']
          @SearchValue = params['SearchValue']
        end
      end

      # 操作的服务范围
      class ServiceBasicRestartInfo < TencentCloud::Common::AbstractModel
        # @param ServiceName: 服务名，必填，如HDFS
        # @type ServiceName: String
        # @param ComponentInfoList: 如果没传，则表示所有进程
        # @type ComponentInfoList: Array

        attr_accessor :ServiceName, :ComponentInfoList

        def initialize(servicename=nil, componentinfolist=nil)
          @ServiceName = servicename
          @ComponentInfoList = componentinfolist
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          unless params['ComponentInfoList'].nil?
            @ComponentInfoList = []
            params['ComponentInfoList'].each do |i|
              componentbasicrestartinfo_tmp = ComponentBasicRestartInfo.new
              componentbasicrestartinfo_tmp.deserialize(i)
              @ComponentInfoList << componentbasicrestartinfo_tmp
            end
          end
        end
      end

      # 服务进程信息
      class ServiceNodeDetailInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 进程所在节点IP
        # @type Ip: String
        # @param NodeType: 进程类型
        # @type NodeType: Integer
        # @param NodeName: 进程名称
        # @type NodeName: String
        # @param ServiceStatus: 服务组件状态
        # @type ServiceStatus: Integer
        # @param MonitorStatus: 进程监控状态
        # @type MonitorStatus: Integer
        # @param Status: 服务组件状态
        # @type Status: Integer
        # @param PortsInfo: 进程端口信息
        # @type PortsInfo: String
        # @param LastRestartTime: 最近重启时间
        # @type LastRestartTime: String
        # @param Flag: 节点类型
        # @type Flag: Integer
        # @param ConfGroupId: 配置组ID
        # @type ConfGroupId: Integer
        # @param ConfGroupName: 配置组名称
        # @type ConfGroupName: String
        # @param ConfStatus: 节点是否需要重启
        # @type ConfStatus: Integer
        # @param ServiceDetectionInfo: 进程探测信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDetectionInfo: Array
        # @param NodeFlagFilter: 节点类型
        # @type NodeFlagFilter: String
        # @param HealthStatus: 进程健康状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthStatus: :class:`Tencentcloud::Emr.v20190103.models.HealthStatus`
        # @param IsSupportRoleMonitor: 角色是否支持监控
        # @type IsSupportRoleMonitor: Boolean
        # @param StopPolicies: 暂停策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopPolicies: Array
        # @param HAState: 测试环境api强校验，现网没有，emrcc接口返回有。不加会报错
        # @type HAState: String
        # @param NameService: NameService名称
        # @type NameService: String
        # @param IsFederation: 是否支持联邦
        # @type IsFederation: Boolean
        # @param DataNodeMaintenanceState: datanode是否是维护状态
        # @type DataNodeMaintenanceState: Integer

        attr_accessor :Ip, :NodeType, :NodeName, :ServiceStatus, :MonitorStatus, :Status, :PortsInfo, :LastRestartTime, :Flag, :ConfGroupId, :ConfGroupName, :ConfStatus, :ServiceDetectionInfo, :NodeFlagFilter, :HealthStatus, :IsSupportRoleMonitor, :StopPolicies, :HAState, :NameService, :IsFederation, :DataNodeMaintenanceState

        def initialize(ip=nil, nodetype=nil, nodename=nil, servicestatus=nil, monitorstatus=nil, status=nil, portsinfo=nil, lastrestarttime=nil, flag=nil, confgroupid=nil, confgroupname=nil, confstatus=nil, servicedetectioninfo=nil, nodeflagfilter=nil, healthstatus=nil, issupportrolemonitor=nil, stoppolicies=nil, hastate=nil, nameservice=nil, isfederation=nil, datanodemaintenancestate=nil)
          @Ip = ip
          @NodeType = nodetype
          @NodeName = nodename
          @ServiceStatus = servicestatus
          @MonitorStatus = monitorstatus
          @Status = status
          @PortsInfo = portsinfo
          @LastRestartTime = lastrestarttime
          @Flag = flag
          @ConfGroupId = confgroupid
          @ConfGroupName = confgroupname
          @ConfStatus = confstatus
          @ServiceDetectionInfo = servicedetectioninfo
          @NodeFlagFilter = nodeflagfilter
          @HealthStatus = healthstatus
          @IsSupportRoleMonitor = issupportrolemonitor
          @StopPolicies = stoppolicies
          @HAState = hastate
          @NameService = nameservice
          @IsFederation = isfederation
          @DataNodeMaintenanceState = datanodemaintenancestate
        end

        def deserialize(params)
          @Ip = params['Ip']
          @NodeType = params['NodeType']
          @NodeName = params['NodeName']
          @ServiceStatus = params['ServiceStatus']
          @MonitorStatus = params['MonitorStatus']
          @Status = params['Status']
          @PortsInfo = params['PortsInfo']
          @LastRestartTime = params['LastRestartTime']
          @Flag = params['Flag']
          @ConfGroupId = params['ConfGroupId']
          @ConfGroupName = params['ConfGroupName']
          @ConfStatus = params['ConfStatus']
          unless params['ServiceDetectionInfo'].nil?
            @ServiceDetectionInfo = []
            params['ServiceDetectionInfo'].each do |i|
              serviceprocessfunctioninfo_tmp = ServiceProcessFunctionInfo.new
              serviceprocessfunctioninfo_tmp.deserialize(i)
              @ServiceDetectionInfo << serviceprocessfunctioninfo_tmp
            end
          end
          @NodeFlagFilter = params['NodeFlagFilter']
          unless params['HealthStatus'].nil?
            @HealthStatus = HealthStatus.new
            @HealthStatus.deserialize(params['HealthStatus'])
          end
          @IsSupportRoleMonitor = params['IsSupportRoleMonitor']
          unless params['StopPolicies'].nil?
            @StopPolicies = []
            params['StopPolicies'].each do |i|
              restartpolicy_tmp = RestartPolicy.new
              restartpolicy_tmp.deserialize(i)
              @StopPolicies << restartpolicy_tmp
            end
          end
          @HAState = params['HAState']
          @NameService = params['NameService']
          @IsFederation = params['IsFederation']
          @DataNodeMaintenanceState = params['DataNodeMaintenanceState']
        end
      end

      # 进程检测信息
      class ServiceProcessFunctionInfo < TencentCloud::Common::AbstractModel
        # @param DetectAlert: 探测告警级别
        # @type DetectAlert: String
        # @param DetetcFunctionKey: 探测功能描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetetcFunctionKey: String
        # @param DetetcFunctionValue: 探测功能结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetetcFunctionValue: String
        # @param DetetcTime: 探测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetetcTime: String
        # @param DetectFunctionKey: 探测功能描述
        # @type DetectFunctionKey: String
        # @param DetectFunctionValue: 探测功能结果
        # @type DetectFunctionValue: String
        # @param DetectTime: 探测结果
        # @type DetectTime: String

        attr_accessor :DetectAlert, :DetetcFunctionKey, :DetetcFunctionValue, :DetetcTime, :DetectFunctionKey, :DetectFunctionValue, :DetectTime
        extend Gem::Deprecate
        deprecate :DetetcFunctionKey, :none, 2025, 11
        deprecate :DetetcFunctionKey=, :none, 2025, 11
        deprecate :DetetcFunctionValue, :none, 2025, 11
        deprecate :DetetcFunctionValue=, :none, 2025, 11
        deprecate :DetetcTime, :none, 2025, 11
        deprecate :DetetcTime=, :none, 2025, 11

        def initialize(detectalert=nil, detetcfunctionkey=nil, detetcfunctionvalue=nil, detetctime=nil, detectfunctionkey=nil, detectfunctionvalue=nil, detecttime=nil)
          @DetectAlert = detectalert
          @DetetcFunctionKey = detetcfunctionkey
          @DetetcFunctionValue = detetcfunctionvalue
          @DetetcTime = detetctime
          @DetectFunctionKey = detectfunctionkey
          @DetectFunctionValue = detectfunctionvalue
          @DetectTime = detecttime
        end

        def deserialize(params)
          @DetectAlert = params['DetectAlert']
          @DetetcFunctionKey = params['DetetcFunctionKey']
          @DetetcFunctionValue = params['DetetcFunctionValue']
          @DetetcTime = params['DetetcTime']
          @DetectFunctionKey = params['DetectFunctionKey']
          @DetectFunctionValue = params['DetectFunctionValue']
          @DetectTime = params['DetectTime']
        end
      end

      # SetNodeResourceConfigDefault请求参数结构体
      class SetNodeResourceConfigDefaultRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param ResourceConfigId: 配置Id
        # @type ResourceConfigId: Integer
        # @param ResourceType: 规格节点类型 CORE TASK ROUTER
        # @type ResourceType: String
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源id
        # @type ComputeResourceId: String
        # @param HardwareResourceType: 硬件类型
        # @type HardwareResourceType: String

        attr_accessor :InstanceId, :ResourceConfigId, :ResourceType, :ResourceBaseType, :ComputeResourceId, :HardwareResourceType

        def initialize(instanceid=nil, resourceconfigid=nil, resourcetype=nil, resourcebasetype=nil, computeresourceid=nil, hardwareresourcetype=nil)
          @InstanceId = instanceid
          @ResourceConfigId = resourceconfigid
          @ResourceType = resourcetype
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
          @HardwareResourceType = hardwareresourcetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceConfigId = params['ResourceConfigId']
          @ResourceType = params['ResourceType']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
          @HardwareResourceType = params['HardwareResourceType']
        end
      end

      # SetNodeResourceConfigDefault返回参数结构体
      class SetNodeResourceConfigDefaultResponse < TencentCloud::Common::AbstractModel
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

      # 节点信息
      class ShortNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型，Master/Core/Task/Router/Common
        # @type NodeType: String
        # @param NodeSize: 节点数量
        # @type NodeSize: Integer

        attr_accessor :NodeType, :NodeSize

        def initialize(nodetype=nil, nodesize=nil)
          @NodeType = nodetype
          @NodeSize = nodesize
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeSize = params['NodeSize']
        end
      end

      # 体外客户端组件依赖信息
      class SoftDependInfo < TencentCloud::Common::AbstractModel
        # @param SoftName: 组件名称
        # @type SoftName: String
        # @param Required: 是否必选
        # @type Required: Boolean

        attr_accessor :SoftName, :Required

        def initialize(softname=nil, required=nil)
          @SoftName = softname
          @Required = required
        end

        def deserialize(params)
          @SoftName = params['SoftName']
          @Required = params['Required']
        end
      end

      # spark任务列表
      class SparkApplicationsList < TencentCloud::Common::AbstractModel
        # @param ID: 应用id
        # @type ID: String
        # @param Name: 应用名称
        # @type Name: String
        # @param User: 用户
        # @type User: String
        # @param StartTime: 起始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Duration: 持续时间
        # @type Duration: Integer
        # @param State: 状态
        # @type State: String
        # @param ApplicationType: 类型
        # @type ApplicationType: String
        # @param CoreSeconds: 核数*秒
        # @type CoreSeconds: Integer
        # @param MemorySeconds: 内存MB*秒
        # @type MemorySeconds: String
        # @param Insight: 洞察结果
        # @type Insight: String

        attr_accessor :ID, :Name, :User, :StartTime, :EndTime, :Duration, :State, :ApplicationType, :CoreSeconds, :MemorySeconds, :Insight

        def initialize(id=nil, name=nil, user=nil, starttime=nil, endtime=nil, duration=nil, state=nil, applicationtype=nil, coreseconds=nil, memoryseconds=nil, insight=nil)
          @ID = id
          @Name = name
          @User = user
          @StartTime = starttime
          @EndTime = endtime
          @Duration = duration
          @State = state
          @ApplicationType = applicationtype
          @CoreSeconds = coreseconds
          @MemorySeconds = memoryseconds
          @Insight = insight
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @User = params['User']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Duration = params['Duration']
          @State = params['State']
          @ApplicationType = params['ApplicationType']
          @CoreSeconds = params['CoreSeconds']
          @MemorySeconds = params['MemorySeconds']
          @Insight = params['Insight']
        end
      end

      # spark查询详情
      class SparkQuery < TencentCloud::Common::AbstractModel
        # @param Statement: 执行语句
        # @type Statement: String
        # @param Duration: 执行时长（单位毫秒）
        # @type Duration: Integer
        # @param Status: 执行状态
        # @type Status: String
        # @param Id: 查询ID
        # @type Id: String
        # @param ScanPartitionNum: 扫描分区数
        # @type ScanPartitionNum: Integer
        # @param ScanRowNum: 扫描总行数
        # @type ScanRowNum: Integer
        # @param ScanFileNum: 扫描总文件数
        # @type ScanFileNum: Integer
        # @param ScanTotalData: 查询扫描总数据量(单位B)
        # @type ScanTotalData: Integer
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: Array
        # @param OutputRowNum: 输出总行数
        # @type OutputRowNum: Integer
        # @param OutputFileNum: 输出总文件数
        # @type OutputFileNum: Integer
        # @param OutputPartitionNum: 输出分区数
        # @type OutputPartitionNum: Integer
        # @param OutputTotalData: 输出总数据量（单位B）
        # @type OutputTotalData: Integer
        # @param BeginTime: 开始时间
        # @type BeginTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :Statement, :Duration, :Status, :Id, :ScanPartitionNum, :ScanRowNum, :ScanFileNum, :ScanTotalData, :ApplicationId, :OutputRowNum, :OutputFileNum, :OutputPartitionNum, :OutputTotalData, :BeginTime, :EndTime

        def initialize(statement=nil, duration=nil, status=nil, id=nil, scanpartitionnum=nil, scanrownum=nil, scanfilenum=nil, scantotaldata=nil, applicationid=nil, outputrownum=nil, outputfilenum=nil, outputpartitionnum=nil, outputtotaldata=nil, begintime=nil, endtime=nil)
          @Statement = statement
          @Duration = duration
          @Status = status
          @Id = id
          @ScanPartitionNum = scanpartitionnum
          @ScanRowNum = scanrownum
          @ScanFileNum = scanfilenum
          @ScanTotalData = scantotaldata
          @ApplicationId = applicationid
          @OutputRowNum = outputrownum
          @OutputFileNum = outputfilenum
          @OutputPartitionNum = outputpartitionnum
          @OutputTotalData = outputtotaldata
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @Statement = params['Statement']
          @Duration = params['Duration']
          @Status = params['Status']
          @Id = params['Id']
          @ScanPartitionNum = params['ScanPartitionNum']
          @ScanRowNum = params['ScanRowNum']
          @ScanFileNum = params['ScanFileNum']
          @ScanTotalData = params['ScanTotalData']
          @ApplicationId = params['ApplicationId']
          @OutputRowNum = params['OutputRowNum']
          @OutputFileNum = params['OutputFileNum']
          @OutputPartitionNum = params['OutputPartitionNum']
          @OutputTotalData = params['OutputTotalData']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # 任务步骤详情
      class StageInfoDetail < TencentCloud::Common::AbstractModel
        # @param Stage: 步骤
        # @type Stage: String
        # @param Name: 步骤名
        # @type Name: String
        # @param IsShow: 是否展示
        # @type IsShow: Boolean
        # @param IsSubFlow: 是否子流程
        # @type IsSubFlow: Boolean
        # @param SubFlowFlag: 子流程标签
        # @type SubFlowFlag: String
        # @param Status: 步骤运行状态：0:未开始 1:进行中 2:已完成 3:部分完成  -1:失败
        # @type Status: Integer
        # @param Desc: 步骤运行状态描述
        # @type Desc: String
        # @param Progress: 运行进度
        # @type Progress: Float
        # @param Starttime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Starttime: String
        # @param Endtime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endtime: String
        # @param HadWoodDetail: 是否有详情信息
        # @type HadWoodDetail: Boolean
        # @param WoodJobId: Wood子流程Id
        # @type WoodJobId: Integer
        # @param LanguageKey: 多语言版本Key
        # @type LanguageKey: String
        # @param FailedReason: 如果stage失败，失败原因
        # @type FailedReason: String
        # @param TimeConsuming: 步骤耗时
        # @type TimeConsuming: String
        # @param Id: id，前端用
        # @type Id: Integer

        attr_accessor :Stage, :Name, :IsShow, :IsSubFlow, :SubFlowFlag, :Status, :Desc, :Progress, :Starttime, :Endtime, :HadWoodDetail, :WoodJobId, :LanguageKey, :FailedReason, :TimeConsuming, :Id

        def initialize(stage=nil, name=nil, isshow=nil, issubflow=nil, subflowflag=nil, status=nil, desc=nil, progress=nil, starttime=nil, endtime=nil, hadwooddetail=nil, woodjobid=nil, languagekey=nil, failedreason=nil, timeconsuming=nil, id=nil)
          @Stage = stage
          @Name = name
          @IsShow = isshow
          @IsSubFlow = issubflow
          @SubFlowFlag = subflowflag
          @Status = status
          @Desc = desc
          @Progress = progress
          @Starttime = starttime
          @Endtime = endtime
          @HadWoodDetail = hadwooddetail
          @WoodJobId = woodjobid
          @LanguageKey = languagekey
          @FailedReason = failedreason
          @TimeConsuming = timeconsuming
          @Id = id
        end

        def deserialize(params)
          @Stage = params['Stage']
          @Name = params['Name']
          @IsShow = params['IsShow']
          @IsSubFlow = params['IsSubFlow']
          @SubFlowFlag = params['SubFlowFlag']
          @Status = params['Status']
          @Desc = params['Desc']
          @Progress = params['Progress']
          @Starttime = params['Starttime']
          @Endtime = params['Endtime']
          @HadWoodDetail = params['HadWoodDetail']
          @WoodJobId = params['WoodJobId']
          @LanguageKey = params['LanguageKey']
          @FailedReason = params['FailedReason']
          @TimeConsuming = params['TimeConsuming']
          @Id = params['Id']
        end
      end

      # StarRocks 查询信息
      class StarRocksQueryInfo < TencentCloud::Common::AbstractModel
        # @param ClientIP: 提交IP
        # @type ClientIP: String
        # @param CPUCost: CPU总时间(ns)
        # @type CPUCost: Integer
        # @param DefaultDB: 默认DB
        # @type DefaultDB: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ExecutionIP: 执行IP
        # @type ExecutionIP: String
        # @param QueryID: 查询ID
        # @type QueryID: String
        # @param QueryType: 查询类型
        # @type QueryType: String
        # @param MemCost: 消耗总内存(bytes)
        # @type MemCost: Integer
        # @param PlanCpuCosts: plan阶段CPU占用(ns)
        # @type PlanCpuCosts: Integer
        # @param PlanMemCosts: plan阶段内存占用(bytes)
        # @type PlanMemCosts: Integer
        # @param QueryTime: 执行时长
        # @type QueryTime: Integer
        # @param ResourceGroup: 资源组
        # @type ResourceGroup: String
        # @param ReturnRows: 获取行数
        # @type ReturnRows: Integer
        # @param ScanBytes: 扫描数据量(bytes)
        # @type ScanBytes: Integer
        # @param ScanRows: 扫描行数
        # @type ScanRows: Integer
        # @param BeginTime: 开始时间
        # @type BeginTime: Integer
        # @param ExecutionState: 执行状态
        # @type ExecutionState: String
        # @param ExecutionStatement: 执行语句
        # @type ExecutionStatement: String
        # @param User: 用户
        # @type User: String

        attr_accessor :ClientIP, :CPUCost, :DefaultDB, :EndTime, :ExecutionIP, :QueryID, :QueryType, :MemCost, :PlanCpuCosts, :PlanMemCosts, :QueryTime, :ResourceGroup, :ReturnRows, :ScanBytes, :ScanRows, :BeginTime, :ExecutionState, :ExecutionStatement, :User

        def initialize(clientip=nil, cpucost=nil, defaultdb=nil, endtime=nil, executionip=nil, queryid=nil, querytype=nil, memcost=nil, plancpucosts=nil, planmemcosts=nil, querytime=nil, resourcegroup=nil, returnrows=nil, scanbytes=nil, scanrows=nil, begintime=nil, executionstate=nil, executionstatement=nil, user=nil)
          @ClientIP = clientip
          @CPUCost = cpucost
          @DefaultDB = defaultdb
          @EndTime = endtime
          @ExecutionIP = executionip
          @QueryID = queryid
          @QueryType = querytype
          @MemCost = memcost
          @PlanCpuCosts = plancpucosts
          @PlanMemCosts = planmemcosts
          @QueryTime = querytime
          @ResourceGroup = resourcegroup
          @ReturnRows = returnrows
          @ScanBytes = scanbytes
          @ScanRows = scanrows
          @BeginTime = begintime
          @ExecutionState = executionstate
          @ExecutionStatement = executionstatement
          @User = user
        end

        def deserialize(params)
          @ClientIP = params['ClientIP']
          @CPUCost = params['CPUCost']
          @DefaultDB = params['DefaultDB']
          @EndTime = params['EndTime']
          @ExecutionIP = params['ExecutionIP']
          @QueryID = params['QueryID']
          @QueryType = params['QueryType']
          @MemCost = params['MemCost']
          @PlanCpuCosts = params['PlanCpuCosts']
          @PlanMemCosts = params['PlanMemCosts']
          @QueryTime = params['QueryTime']
          @ResourceGroup = params['ResourceGroup']
          @ReturnRows = params['ReturnRows']
          @ScanBytes = params['ScanBytes']
          @ScanRows = params['ScanRows']
          @BeginTime = params['BeginTime']
          @ExecutionState = params['ExecutionState']
          @ExecutionStatement = params['ExecutionStatement']
          @User = params['User']
        end
      end

      # StartStopServiceOrMonitor请求参数结构体
      class StartStopServiceOrMonitorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param OpType: 操作类型，当前支持
        # <li>StartService：启动服务</li>
        # <li>StopService：停止服务</li>
        # <li>StartMonitor：退出维护</li>
        # <li>StopMonitor：进入维护</li>
        # <li>RestartService：重启服务 如果操作类型选择重启服务 StrategyConfig操作策略则是必填项</li>
        # @type OpType: String
        # @param OpScope: 操作范围
        # @type OpScope: :class:`Tencentcloud::Emr.v20190103.models.OpScope`
        # @param StrategyConfig: 操作策略
        # @type StrategyConfig: :class:`Tencentcloud::Emr.v20190103.models.StrategyConfig`
        # @param StopParams: 暂停服务时用的参数
        # @type StopParams: :class:`Tencentcloud::Emr.v20190103.models.StopParams`
        # @param KeepMonitorButNotRecoverProcess: 当OpType为<li>StopMonitor</li>才有用，true表示进入维护模式但是仍然监控进程但是不拉起进程
        # @type KeepMonitorButNotRecoverProcess: Boolean

        attr_accessor :InstanceId, :OpType, :OpScope, :StrategyConfig, :StopParams, :KeepMonitorButNotRecoverProcess

        def initialize(instanceid=nil, optype=nil, opscope=nil, strategyconfig=nil, stopparams=nil, keepmonitorbutnotrecoverprocess=nil)
          @InstanceId = instanceid
          @OpType = optype
          @OpScope = opscope
          @StrategyConfig = strategyconfig
          @StopParams = stopparams
          @KeepMonitorButNotRecoverProcess = keepmonitorbutnotrecoverprocess
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OpType = params['OpType']
          unless params['OpScope'].nil?
            @OpScope = OpScope.new
            @OpScope.deserialize(params['OpScope'])
          end
          unless params['StrategyConfig'].nil?
            @StrategyConfig = StrategyConfig.new
            @StrategyConfig.deserialize(params['StrategyConfig'])
          end
          unless params['StopParams'].nil?
            @StopParams = StopParams.new
            @StopParams.deserialize(params['StopParams'])
          end
          @KeepMonitorButNotRecoverProcess = params['KeepMonitorButNotRecoverProcess']
        end
      end

      # StartStopServiceOrMonitor返回参数结构体
      class StartStopServiceOrMonitorResponse < TencentCloud::Common::AbstractModel
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

      # 执行步骤
      class Step < TencentCloud::Common::AbstractModel
        # @param Name: 执行步骤名称。
        # @type Name: String
        # @param ExecutionStep: 执行动作。
        # @type ExecutionStep: :class:`Tencentcloud::Emr.v20190103.models.Execution`
        # @param ActionOnFailure: 执行失败策略。
        # 1. TERMINATE_CLUSTER 执行失败时退出并销毁集群。
        # 2. CONTINUE 执行失败时跳过并执行后续步骤。
        # @type ActionOnFailure: String
        # @param User: 指定执行Step时的用户名，非必须，默认为hadoop。
        # @type User: String

        attr_accessor :Name, :ExecutionStep, :ActionOnFailure, :User

        def initialize(name=nil, executionstep=nil, actiononfailure=nil, user=nil)
          @Name = name
          @ExecutionStep = executionstep
          @ActionOnFailure = actiononfailure
          @User = user
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['ExecutionStep'].nil?
            @ExecutionStep = Execution.new
            @ExecutionStep.deserialize(params['ExecutionStep'])
          end
          @ActionOnFailure = params['ActionOnFailure']
          @User = params['User']
        end
      end

      # 停止服务时的参数
      class StopParams < TencentCloud::Common::AbstractModel
        # @param StopPolicy: 安全模式：safe
        # 默认模式：default
        # @type StopPolicy: String
        # @param ThreadCount: 线程数
        # @type ThreadCount: Integer

        attr_accessor :StopPolicy, :ThreadCount

        def initialize(stoppolicy=nil, threadcount=nil)
          @StopPolicy = stoppolicy
          @ThreadCount = threadcount
        end

        def deserialize(params)
          @StopPolicy = params['StopPolicy']
          @ThreadCount = params['ThreadCount']
        end
      end

      # HDFS文件存储详情
      class StorageSummaryDistribution < TencentCloud::Common::AbstractModel
        # @param MetricItem: 数据项
        # @type MetricItem: String
        # @param MetricName: 数据项描述
        # @type MetricName: String
        # @param Dps: 采样值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dps: Array

        attr_accessor :MetricItem, :MetricName, :Dps

        def initialize(metricitem=nil, metricname=nil, dps=nil)
          @MetricItem = metricitem
          @MetricName = metricname
          @Dps = dps
        end

        def deserialize(params)
          @MetricItem = params['MetricItem']
          @MetricName = params['MetricName']
          unless params['Dps'].nil?
            @Dps = []
            params['Dps'].each do |i|
              dps_tmp = Dps.new
              dps_tmp.deserialize(i)
              @Dps << dps_tmp
            end
          end
        end
      end

      # 重启/停止/启动服务/监控的配置
      class StrategyConfig < TencentCloud::Common::AbstractModel
        # @param RollingRestartSwitch: 0:关闭滚动重启
        # 1:开启滚动启动
        # @type RollingRestartSwitch: Integer
        # @param BatchSize: 滚动重启每批次的重启数量，最大重启台数为 99999 台
        # @type BatchSize: Integer
        # @param TimeWait: 滚动重启每批停止等待时间 ,最大间隔为 5 分钟 单位是秒
        # @type TimeWait: Integer
        # @param DealOnFail: 操作失败处理策略，0:失败阻塞, 1:失败自动跳过
        # @type DealOnFail: Integer
        # @param Args: 指令需要指定的参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Args: Array

        attr_accessor :RollingRestartSwitch, :BatchSize, :TimeWait, :DealOnFail, :Args

        def initialize(rollingrestartswitch=nil, batchsize=nil, timewait=nil, dealonfail=nil, args=nil)
          @RollingRestartSwitch = rollingrestartswitch
          @BatchSize = batchsize
          @TimeWait = timewait
          @DealOnFail = dealonfail
          @Args = args
        end

        def deserialize(params)
          @RollingRestartSwitch = params['RollingRestartSwitch']
          @BatchSize = params['BatchSize']
          @TimeWait = params['TimeWait']
          @DealOnFail = params['DealOnFail']
          unless params['Args'].nil?
            @Args = []
            params['Args'].each do |i|
              arg_tmp = Arg.new
              arg_tmp.deserialize(i)
              @Args << arg_tmp
            end
          end
        end
      end

      # 子网信息
      class SubnetInfo < TencentCloud::Common::AbstractModel
        # @param SubnetName: 子网信息（名字）
        # @type SubnetName: String
        # @param SubnetId: 子网信息（ID）
        # @type SubnetId: String

        attr_accessor :SubnetName, :SubnetId

        def initialize(subnetname=nil, subnetid=nil)
          @SubnetName = subnetname
          @SubnetId = subnetid
        end

        def deserialize(params)
          @SubnetName = params['SubnetName']
          @SubnetId = params['SubnetId']
        end
      end

      # SyncPodState请求参数结构体
      class SyncPodStateRequest < TencentCloud::Common::AbstractModel
        # @param Message: EmrService中pod状态信息
        # @type Message: :class:`Tencentcloud::Emr.v20190103.models.PodState`

        attr_accessor :Message

        def initialize(message=nil)
          @Message = message
        end

        def deserialize(params)
          unless params['Message'].nil?
            @Message = PodState.new
            @Message.deserialize(params['Message'])
          end
        end
      end

      # SyncPodState返回参数结构体
      class SyncPodStateResponse < TencentCloud::Common::AbstractModel
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

      # 表格schema信息
      class TableSchemaItem < TencentCloud::Common::AbstractModel
        # @param Name: 列标识
        # @type Name: String
        # @param Sortable: 是否可按该列排序
        # @type Sortable: Boolean
        # @param WithFilter: 是否可筛选
        # @type WithFilter: Boolean
        # @param Candidates: 筛选的候选集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Candidates: Array
        # @param Clickable: 是否可点击
        # @type Clickable: Boolean
        # @param Title: 展示的名字
        # @type Title: String

        attr_accessor :Name, :Sortable, :WithFilter, :Candidates, :Clickable, :Title

        def initialize(name=nil, sortable=nil, withfilter=nil, candidates=nil, clickable=nil, title=nil)
          @Name = name
          @Sortable = sortable
          @WithFilter = withfilter
          @Candidates = candidates
          @Clickable = clickable
          @Title = title
        end

        def deserialize(params)
          @Name = params['Name']
          @Sortable = params['Sortable']
          @WithFilter = params['WithFilter']
          @Candidates = params['Candidates']
          @Clickable = params['Clickable']
          @Title = params['Title']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # 标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
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

      # Kubernetes Taint
      class Taint < TencentCloud::Common::AbstractModel
        # @param Key: Taint Key
        # @type Key: String
        # @param Value: Taint Value
        # @type Value: String
        # @param Effect: Taint Effect
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

      # 巡检任务参数
      class TaskSettings < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Value: 参数值
        # @type Value: String
        # @param Key: 参数唯一标记
        # @type Key: String
        # @param Editable: 是否可编辑，”true" "false"
        # @type Editable: String

        attr_accessor :Name, :Value, :Key, :Editable

        def initialize(name=nil, value=nil, key=nil, editable=nil)
          @Name = name
          @Value = value
          @Key = key
          @Editable = editable
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Key = params['Key']
          @Editable = params['Editable']
        end
      end

      # TerminateClusterNodes请求参数结构体
      class TerminateClusterNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param CvmInstanceIds: 销毁资源列表
        # @type CvmInstanceIds: Array
        # @param NodeFlag: 销毁节点类型取值范围：
        #   <li>MASTER</li>
        #   <li>TASK</li>
        #   <li>CORE</li>
        #   <li>ROUTER</li>
        # @type NodeFlag: String
        # @param GraceDownFlag: 优雅缩容开关
        #   <li>true:开启</li>
        #   <li>false:不开启</li>
        # @type GraceDownFlag: Boolean
        # @param GraceDownTime: 优雅缩容等待时间,时间范围60到1800  单位秒
        # @type GraceDownTime: Integer

        attr_accessor :InstanceId, :CvmInstanceIds, :NodeFlag, :GraceDownFlag, :GraceDownTime

        def initialize(instanceid=nil, cvminstanceids=nil, nodeflag=nil, gracedownflag=nil, gracedowntime=nil)
          @InstanceId = instanceid
          @CvmInstanceIds = cvminstanceids
          @NodeFlag = nodeflag
          @GraceDownFlag = gracedownflag
          @GraceDownTime = gracedowntime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CvmInstanceIds = params['CvmInstanceIds']
          @NodeFlag = params['NodeFlag']
          @GraceDownFlag = params['GraceDownFlag']
          @GraceDownTime = params['GraceDownTime']
        end
      end

      # TerminateClusterNodes返回参数结构体
      class TerminateClusterNodesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 缩容流程ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # TerminateInstance请求参数结构体
      class TerminateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ResourceIds: 销毁节点ID。该参数为预留参数，用户无需配置。
        # @type ResourceIds: Array
        # @param ResourceBaseType: 类型为ComputeResource和EMR以及默认，默认为EMR,类型为EMR时,InstanceId生效,类型为ComputeResource时,使用ComputeResourceId标识
        # @type ResourceBaseType: String
        # @param ComputeResourceId: 计算资源ID
        # @type ComputeResourceId: String

        attr_accessor :InstanceId, :ResourceIds, :ResourceBaseType, :ComputeResourceId

        def initialize(instanceid=nil, resourceids=nil, resourcebasetype=nil, computeresourceid=nil)
          @InstanceId = instanceid
          @ResourceIds = resourceids
          @ResourceBaseType = resourcebasetype
          @ComputeResourceId = computeresourceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceIds = params['ResourceIds']
          @ResourceBaseType = params['ResourceBaseType']
          @ComputeResourceId = params['ComputeResourceId']
        end
      end

      # TerminateInstance返回参数结构体
      class TerminateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # TerminateSLInstance请求参数结构体
      class TerminateSLInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一标识符（字符串表示）
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateSLInstance返回参数结构体
      class TerminateSLInstanceResponse < TencentCloud::Common::AbstractModel
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

      # TerminateTasks请求参数结构体
      class TerminateTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ResourceIds: 待销毁节点的资源ID列表。资源ID形如：emr-vm-xxxxxxxx。有效的资源ID可通过登录[控制台](https://console.cloud.tencent.com/emr)查询。
        # @type ResourceIds: Array

        attr_accessor :InstanceId, :ResourceIds

        def initialize(instanceid=nil, resourceids=nil)
          @InstanceId = instanceid
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceIds = params['ResourceIds']
        end
      end

      # TerminateTasks返回参数结构体
      class TerminateTasksResponse < TencentCloud::Common::AbstractModel
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

      # 时间扩缩容规则
      class TimeAutoScaleStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名字，集群内唯一。
        # @type StrategyName: String
        # @param IntervalTime: 策略触发后的冷却时间，该段时间内，将不能触发弹性扩缩容。
        # @type IntervalTime: Integer
        # @param ScaleAction: 扩缩容动作，1表示扩容，2表示缩容。
        # @type ScaleAction: Integer
        # @param ScaleNum: 扩缩容数量。
        # @type ScaleNum: Integer
        # @param StrategyStatus: 规则状态，1表示有效，2表示无效，3表示暂停。必须填写
        # @type StrategyStatus: Integer
        # @param Priority: 规则优先级，越小越高。
        # @type Priority: Integer
        # @param RetryValidTime: 当多条规则同时触发，其中某些未真正执行时，在该时间范围内，将会重试。
        # @type RetryValidTime: Integer
        # @param RepeatStrategy: 时间扩缩容重复策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepeatStrategy: :class:`Tencentcloud::Emr.v20190103.models.RepeatStrategy`
        # @param StrategyId: 策略唯一ID。
        # @type StrategyId: Integer
        # @param GraceDownFlag: 优雅缩容开关
        # @type GraceDownFlag: Boolean
        # @param GraceDownTime: 优雅缩容等待时间
        # @type GraceDownTime: Integer
        # @param GraceDownProtectFlag: 是否开启任务保护
        # @type GraceDownProtectFlag: Boolean
        # @param Tags: 绑定标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ConfigGroupAssigned: 预设配置组
        # @type ConfigGroupAssigned: String
        # @param MeasureMethod: 扩容资源计算方法，"DEFAULT","INSTANCE", "CPU", "MEMORYGB"。
        # "DEFAULT"表示默认方式，与"INSTANCE"意义相同。
        # "INSTANCE"表示按照节点计算，默认方式。
        # "CPU"表示按照机器的核数计算。
        # "MEMORYGB"表示按照机器内存数计算。
        # @type MeasureMethod: String
        # @param TerminatePolicy: 销毁策略, "DEFAULT",默认销毁策略，由缩容规则触发缩容，"TIMING"表示定时销毁
        # @type TerminatePolicy: String
        # @param MaxUse: 最长使用时间， 秒数，最短1小时，最长24小时
        # @type MaxUse: Integer
        # @param SoftDeployInfo: 节点部署服务列表。部署服务仅填写HDFS、YARN。[组件名对应的映射关系表](https://cloud.tencent.com/document/product/589/98760)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftDeployInfo: Array
        # @param ServiceNodeInfo: 启动进程列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNodeInfo: Array
        # @param CompensateFlag: 补偿扩容，0表示不开启，1表示开启
        # @type CompensateFlag: Integer
        # @param GroupId: 伸缩组id
        # @type GroupId: Integer
        # @param GraceDownLabel: 优雅缩容业务pod标签，当node不存在上述pod或超过优雅缩容时间时，缩容节点
        # @type GraceDownLabel: Array

        attr_accessor :StrategyName, :IntervalTime, :ScaleAction, :ScaleNum, :StrategyStatus, :Priority, :RetryValidTime, :RepeatStrategy, :StrategyId, :GraceDownFlag, :GraceDownTime, :GraceDownProtectFlag, :Tags, :ConfigGroupAssigned, :MeasureMethod, :TerminatePolicy, :MaxUse, :SoftDeployInfo, :ServiceNodeInfo, :CompensateFlag, :GroupId, :GraceDownLabel

        def initialize(strategyname=nil, intervaltime=nil, scaleaction=nil, scalenum=nil, strategystatus=nil, priority=nil, retryvalidtime=nil, repeatstrategy=nil, strategyid=nil, gracedownflag=nil, gracedowntime=nil, gracedownprotectflag=nil, tags=nil, configgroupassigned=nil, measuremethod=nil, terminatepolicy=nil, maxuse=nil, softdeployinfo=nil, servicenodeinfo=nil, compensateflag=nil, groupid=nil, gracedownlabel=nil)
          @StrategyName = strategyname
          @IntervalTime = intervaltime
          @ScaleAction = scaleaction
          @ScaleNum = scalenum
          @StrategyStatus = strategystatus
          @Priority = priority
          @RetryValidTime = retryvalidtime
          @RepeatStrategy = repeatstrategy
          @StrategyId = strategyid
          @GraceDownFlag = gracedownflag
          @GraceDownTime = gracedowntime
          @GraceDownProtectFlag = gracedownprotectflag
          @Tags = tags
          @ConfigGroupAssigned = configgroupassigned
          @MeasureMethod = measuremethod
          @TerminatePolicy = terminatepolicy
          @MaxUse = maxuse
          @SoftDeployInfo = softdeployinfo
          @ServiceNodeInfo = servicenodeinfo
          @CompensateFlag = compensateflag
          @GroupId = groupid
          @GraceDownLabel = gracedownlabel
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
          @IntervalTime = params['IntervalTime']
          @ScaleAction = params['ScaleAction']
          @ScaleNum = params['ScaleNum']
          @StrategyStatus = params['StrategyStatus']
          @Priority = params['Priority']
          @RetryValidTime = params['RetryValidTime']
          unless params['RepeatStrategy'].nil?
            @RepeatStrategy = RepeatStrategy.new
            @RepeatStrategy.deserialize(params['RepeatStrategy'])
          end
          @StrategyId = params['StrategyId']
          @GraceDownFlag = params['GraceDownFlag']
          @GraceDownTime = params['GraceDownTime']
          @GraceDownProtectFlag = params['GraceDownProtectFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ConfigGroupAssigned = params['ConfigGroupAssigned']
          @MeasureMethod = params['MeasureMethod']
          @TerminatePolicy = params['TerminatePolicy']
          @MaxUse = params['MaxUse']
          @SoftDeployInfo = params['SoftDeployInfo']
          @ServiceNodeInfo = params['ServiceNodeInfo']
          @CompensateFlag = params['CompensateFlag']
          @GroupId = params['GroupId']
          unless params['GraceDownLabel'].nil?
            @GraceDownLabel = []
            params['GraceDownLabel'].each do |i|
              tkelabel_tmp = TkeLabel.new
              tkelabel_tmp.deserialize(i)
              @GraceDownLabel << tkelabel_tmp
            end
          end
        end
      end

      # Kubernetes Label
      class TkeLabel < TencentCloud::Common::AbstractModel
        # @param Name: Label Name
        # @type Name: String
        # @param Value: Label Value
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

      # 集群节点拓扑信息
      class TopologyInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param SubnetInfoList: 子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetInfoList: Array
        # @param NodeInfoList: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfoList: Array

        attr_accessor :ZoneId, :Zone, :SubnetInfoList, :NodeInfoList

        def initialize(zoneid=nil, zone=nil, subnetinfolist=nil, nodeinfolist=nil)
          @ZoneId = zoneid
          @Zone = zone
          @SubnetInfoList = subnetinfolist
          @NodeInfoList = nodeinfolist
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          unless params['SubnetInfoList'].nil?
            @SubnetInfoList = []
            params['SubnetInfoList'].each do |i|
              subnetinfo_tmp = SubnetInfo.new
              subnetinfo_tmp.deserialize(i)
              @SubnetInfoList << subnetinfo_tmp
            end
          end
          unless params['NodeInfoList'].nil?
            @NodeInfoList = []
            params['NodeInfoList'].each do |i|
              shortnodeinfo_tmp = ShortNodeInfo.new
              shortnodeinfo_tmp.deserialize(i)
              @NodeInfoList << shortnodeinfo_tmp
            end
          end
        end
      end

      # 规则触发条件
      class TriggerCondition < TencentCloud::Common::AbstractModel
        # @param CompareMethod: 条件比较方法，1表示大于，2表示小于，3表示大于等于，4表示小于等于。
        # @type CompareMethod: Integer
        # @param Threshold: 条件阈值。
        # @type Threshold: Float

        attr_accessor :CompareMethod, :Threshold

        def initialize(comparemethod=nil, threshold=nil)
          @CompareMethod = comparemethod
          @Threshold = threshold
        end

        def deserialize(params)
          @CompareMethod = params['CompareMethod']
          @Threshold = params['Threshold']
        end
      end

      # trino 查询信息
      class TrinoQueryInfo < TencentCloud::Common::AbstractModel
        # @param Catalog: catalog
        # @type Catalog: String
        # @param ClientIpAddr: 提交IP
        # @type ClientIpAddr: String
        # @param CompletedSplits: 切片数
        # @type CompletedSplits: String
        # @param CpuTime: CPU时间
        # @type CpuTime: Integer
        # @param CumulativeMemory: 累计内存
        # @type CumulativeMemory: Integer
        # @param DurationMillis: 执行时长
        # @type DurationMillis: Integer
        # @param EndTime: 结束时间 (s)
        # @type EndTime: Integer
        # @param Id: 查询ID
        # @type Id: String
        # @param InternalNetworkBytes: 内部传输量
        # @type InternalNetworkBytes: Integer
        # @param OutputBytes: 输出字节数
        # @type OutputBytes: Integer
        # @param PeakUserMemoryBytes: 峰值内存量
        # @type PeakUserMemoryBytes: Integer
        # @param PhysicalInputBytes: 物理输入量
        # @type PhysicalInputBytes: Integer
        # @param ProcessedInputBytes: 处理输入量
        # @type ProcessedInputBytes: Integer
        # @param SqlCompileTime: 编译时长
        # @type SqlCompileTime: Integer
        # @param StartTime: 开始时间 (s)
        # @type StartTime: Integer
        # @param State: 执行状态
        # @type State: String
        # @param Statement: 执行语句
        # @type Statement: String
        # @param User: 提交用户
        # @type User: String
        # @param WrittenBytes: 写入字节数
        # @type WrittenBytes: Integer

        attr_accessor :Catalog, :ClientIpAddr, :CompletedSplits, :CpuTime, :CumulativeMemory, :DurationMillis, :EndTime, :Id, :InternalNetworkBytes, :OutputBytes, :PeakUserMemoryBytes, :PhysicalInputBytes, :ProcessedInputBytes, :SqlCompileTime, :StartTime, :State, :Statement, :User, :WrittenBytes

        def initialize(catalog=nil, clientipaddr=nil, completedsplits=nil, cputime=nil, cumulativememory=nil, durationmillis=nil, endtime=nil, id=nil, internalnetworkbytes=nil, outputbytes=nil, peakusermemorybytes=nil, physicalinputbytes=nil, processedinputbytes=nil, sqlcompiletime=nil, starttime=nil, state=nil, statement=nil, user=nil, writtenbytes=nil)
          @Catalog = catalog
          @ClientIpAddr = clientipaddr
          @CompletedSplits = completedsplits
          @CpuTime = cputime
          @CumulativeMemory = cumulativememory
          @DurationMillis = durationmillis
          @EndTime = endtime
          @Id = id
          @InternalNetworkBytes = internalnetworkbytes
          @OutputBytes = outputbytes
          @PeakUserMemoryBytes = peakusermemorybytes
          @PhysicalInputBytes = physicalinputbytes
          @ProcessedInputBytes = processedinputbytes
          @SqlCompileTime = sqlcompiletime
          @StartTime = starttime
          @State = state
          @Statement = statement
          @User = user
          @WrittenBytes = writtenbytes
        end

        def deserialize(params)
          @Catalog = params['Catalog']
          @ClientIpAddr = params['ClientIpAddr']
          @CompletedSplits = params['CompletedSplits']
          @CpuTime = params['CpuTime']
          @CumulativeMemory = params['CumulativeMemory']
          @DurationMillis = params['DurationMillis']
          @EndTime = params['EndTime']
          @Id = params['Id']
          @InternalNetworkBytes = params['InternalNetworkBytes']
          @OutputBytes = params['OutputBytes']
          @PeakUserMemoryBytes = params['PeakUserMemoryBytes']
          @PhysicalInputBytes = params['PhysicalInputBytes']
          @ProcessedInputBytes = params['ProcessedInputBytes']
          @SqlCompileTime = params['SqlCompileTime']
          @StartTime = params['StartTime']
          @State = params['State']
          @Statement = params['Statement']
          @User = params['User']
          @WrittenBytes = params['WrittenBytes']
        end
      end

      # 变配资源规格
      class UpdateInstanceSettings < TencentCloud::Common::AbstractModel
        # @param Memory: 内存容量，单位为G
        # @type Memory: Integer
        # @param CPUCores: CPU核数
        # @type CPUCores: Integer
        # @param ResourceId: 机器资源ID（EMR测资源标识）
        # @type ResourceId: String
        # @param InstanceType: 变配机器规格
        # @type InstanceType: String

        attr_accessor :Memory, :CPUCores, :ResourceId, :InstanceType

        def initialize(memory=nil, cpucores=nil, resourceid=nil, instancetype=nil)
          @Memory = memory
          @CPUCores = cpucores
          @ResourceId = resourceid
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Memory = params['Memory']
          @CPUCores = params['CPUCores']
          @ResourceId = params['ResourceId']
          @InstanceType = params['InstanceType']
        end
      end

      # 容器集群用户组信息
      class UserAndGroup < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户组
        # @type UserGroup: String

        attr_accessor :UserName, :UserGroup

        def initialize(username=nil, usergroup=nil)
          @UserName = username
          @UserGroup = usergroup
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
        end
      end

      # 添加的用户信息列表
      class UserInfoForUserManager < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户所属的组
        # @type UserGroup: String
        # @param PassWord: 密码
        # @type PassWord: String
        # @param ReMark: 备注
        # @type ReMark: String
        # @param Groups: 用户副组
        # @type Groups: Array

        attr_accessor :UserName, :UserGroup, :PassWord, :ReMark, :Groups

        def initialize(username=nil, usergroup=nil, password=nil, remark=nil, groups=nil)
          @UserName = username
          @UserGroup = usergroup
          @PassWord = password
          @ReMark = remark
          @Groups = groups
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @PassWord = params['PassWord']
          @ReMark = params['ReMark']
          @Groups = params['Groups']
        end
      end

      # 用户管理列表过滤器
      class UserManagerFilter < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserType: 用户来源
        # @type UserType: String
        # @param Groups: 组名
        # @type Groups: String

        attr_accessor :UserName, :UserType, :Groups

        def initialize(username=nil, usertype=nil, groups=nil)
          @UserName = username
          @UserType = usertype
          @Groups = groups
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserType = params['UserType']
          @Groups = params['Groups']
        end
      end

      # 用户管理中用户的简要信息
      class UserManagerUserBriefInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户所属的组
        # @type UserGroup: String
        # @param UserType: Manager表示管理员、NormalUser表示普通用户
        # @type UserType: String
        # @param CreateTime: 用户创建时间
        # @type CreateTime: String
        # @param SupportDownLoadKeyTab: 是否可以下载用户对应的keytab文件，对开启kerberos的集群才有意义
        # @type SupportDownLoadKeyTab: Boolean
        # @param DownLoadKeyTabUrl: keytab文件的下载地址
        # @type DownLoadKeyTabUrl: String

        attr_accessor :UserName, :UserGroup, :UserType, :CreateTime, :SupportDownLoadKeyTab, :DownLoadKeyTabUrl

        def initialize(username=nil, usergroup=nil, usertype=nil, createtime=nil, supportdownloadkeytab=nil, downloadkeytaburl=nil)
          @UserName = username
          @UserGroup = usergroup
          @UserType = usertype
          @CreateTime = createtime
          @SupportDownLoadKeyTab = supportdownloadkeytab
          @DownLoadKeyTabUrl = downloadkeytaburl
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @UserType = params['UserType']
          @CreateTime = params['CreateTime']
          @SupportDownLoadKeyTab = params['SupportDownLoadKeyTab']
          @DownLoadKeyTabUrl = params['DownLoadKeyTabUrl']
        end
      end

      # VPC 参数
      class VPCSettings < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: Subnet ID
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

      # VPC 参数
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: Subnet ID
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

      # 数据卷目录设置
      class VolumeSetting < TencentCloud::Common::AbstractModel
        # @param VolumeType: 数据卷类型
        # <li>HOST_PATH表示支持本机路径</li>
        # <li>NEW_PVC表示新建PVC</li>
        # 组件角色支持的数据卷类型可参考 EMR on TKE 集群部署说明：[部署说明](https://cloud.tencent.com/document/product/589/94254)
        # @type VolumeType: String
        # @param HostPath: 主机路径信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostPath: :class:`Tencentcloud::Emr.v20190103.models.HostPathVolumeSource`

        attr_accessor :VolumeType, :HostPath

        def initialize(volumetype=nil, hostpath=nil)
          @VolumeType = volumetype
          @HostPath = hostpath
        end

        def deserialize(params)
          @VolumeType = params['VolumeType']
          unless params['HostPath'].nil?
            @HostPath = HostPathVolumeSource.new
            @HostPath.deserialize(params['HostPath'])
          end
        end
      end

      # 定时扩容每周重复任务策略
      class WeekRepeatStrategy < TencentCloud::Common::AbstractModel
        # @param ExecuteAtTimeOfDay: 重复任务执行的具体时刻，例如"01:02:00"
        # @type ExecuteAtTimeOfDay: String
        # @param DaysOfWeek: 每周几的数字描述，例如，[1,3,4]表示每周周一、周三、周四。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DaysOfWeek: Array

        attr_accessor :ExecuteAtTimeOfDay, :DaysOfWeek

        def initialize(executeattimeofday=nil, daysofweek=nil)
          @ExecuteAtTimeOfDay = executeattimeofday
          @DaysOfWeek = daysofweek
        end

        def deserialize(params)
          @ExecuteAtTimeOfDay = params['ExecuteAtTimeOfDay']
          @DaysOfWeek = params['DaysOfWeek']
        end
      end

      # Yarn 运行的Application信息
      class YarnApplication < TencentCloud::Common::AbstractModel
        # @param Id: 应用ID
        # @type Id: String
        # @param User: 用户
        # @type User: String
        # @param Name: 应用名
        # @type Name: String
        # @param Queue: 队列
        # @type Queue: String
        # @param ApplicationType: 应用类型
        # @type ApplicationType: String
        # @param ElapsedTime: 运行时间
        # @type ElapsedTime: String
        # @param State: 状态
        # @type State: String
        # @param FinalStatus: 最终状态
        # @type FinalStatus: String
        # @param Progress: 进度
        # @type Progress: Integer
        # @param StartedTime: 开始时间毫秒
        # @type StartedTime: Integer
        # @param FinishedTime: 结束时间毫秒
        # @type FinishedTime: Integer
        # @param AllocatedMB: 申请内存MB
        # @type AllocatedMB: Integer
        # @param AllocatedVCores: 申请VCores
        # @type AllocatedVCores: Integer
        # @param RunningContainers: 运行的Containers数
        # @type RunningContainers: Integer
        # @param MemorySeconds: 内存MB*时间秒
        # @type MemorySeconds: Integer
        # @param VCoreSeconds: VCores*时间秒
        # @type VCoreSeconds: Integer
        # @param QueueUsagePercentage: 队列资源占比
        # @type QueueUsagePercentage: Float
        # @param ClusterUsagePercentage: 集群资源占比
        # @type ClusterUsagePercentage: Float
        # @param PreemptedResourceMB: 预占用的内存
        # @type PreemptedResourceMB: Integer
        # @param PreemptedResourceVCores: 预占用的VCore
        # @type PreemptedResourceVCores: Integer
        # @param NumNonAMContainerPreempted: 预占的非应用程序主节点容器数量
        # @type NumNonAMContainerPreempted: Integer
        # @param NumAMContainerPreempted: AM预占用的容器数量
        # @type NumAMContainerPreempted: Integer
        # @param MapsTotal: Map总数
        # @type MapsTotal: Integer
        # @param MapsCompleted: 完成的Map数
        # @type MapsCompleted: Integer
        # @param ReducesTotal: Reduce总数
        # @type ReducesTotal: Integer
        # @param ReducesCompleted: 完成的Reduce数
        # @type ReducesCompleted: Integer
        # @param AvgMapTime: 平均Map时间
        # @type AvgMapTime: Integer
        # @param AvgReduceTime: 平均Reduce时间
        # @type AvgReduceTime: Integer
        # @param AvgShuffleTime: 平均Shuffle时间毫秒
        # @type AvgShuffleTime: Integer
        # @param AvgMergeTime: 平均Merge时间毫秒
        # @type AvgMergeTime: Integer
        # @param FailedReduceAttempts: 失败的Reduce执行次数
        # @type FailedReduceAttempts: Integer
        # @param KilledReduceAttempts: Kill的Reduce执行次数
        # @type KilledReduceAttempts: Integer
        # @param SuccessfulReduceAttempts: 成功的Reduce执行次数
        # @type SuccessfulReduceAttempts: Integer
        # @param FailedMapAttempts: 失败的Map执行次数
        # @type FailedMapAttempts: Integer
        # @param KilledMapAttempts: Kill的Map执行次数
        # @type KilledMapAttempts: Integer
        # @param SuccessfulMapAttempts: 成功的Map执行次数
        # @type SuccessfulMapAttempts: Integer
        # @param GcTimeMillis: GC毫秒
        # @type GcTimeMillis: Integer
        # @param VCoreMillisMaps: Map使用的VCore毫秒
        # @type VCoreMillisMaps: Integer
        # @param MbMillisMaps: Map使用的内存毫秒
        # @type MbMillisMaps: Integer
        # @param VCoreMillisReduces: Reduce使用的VCore毫秒
        # @type VCoreMillisReduces: Integer
        # @param MbMillisReduces: Reduce使用的内存毫秒
        # @type MbMillisReduces: Integer
        # @param TotalLaunchedMaps: 启动Map的总数
        # @type TotalLaunchedMaps: Integer
        # @param TotalLaunchedReduces: 启动Reduce的总数
        # @type TotalLaunchedReduces: Integer
        # @param MapInputRecords: Map输入记录数
        # @type MapInputRecords: Integer
        # @param MapOutputRecords: Map输出记录数
        # @type MapOutputRecords: Integer
        # @param ReduceInputRecords: Reduce输入记录数
        # @type ReduceInputRecords: Integer
        # @param ReduceOutputRecords: Reduce输出记录数
        # @type ReduceOutputRecords: Integer
        # @param HDFSBytesWritten: HDFS写入字节数
        # @type HDFSBytesWritten: Integer
        # @param HDFSBytesRead: HDFS读取字节数
        # @type HDFSBytesRead: Integer

        attr_accessor :Id, :User, :Name, :Queue, :ApplicationType, :ElapsedTime, :State, :FinalStatus, :Progress, :StartedTime, :FinishedTime, :AllocatedMB, :AllocatedVCores, :RunningContainers, :MemorySeconds, :VCoreSeconds, :QueueUsagePercentage, :ClusterUsagePercentage, :PreemptedResourceMB, :PreemptedResourceVCores, :NumNonAMContainerPreempted, :NumAMContainerPreempted, :MapsTotal, :MapsCompleted, :ReducesTotal, :ReducesCompleted, :AvgMapTime, :AvgReduceTime, :AvgShuffleTime, :AvgMergeTime, :FailedReduceAttempts, :KilledReduceAttempts, :SuccessfulReduceAttempts, :FailedMapAttempts, :KilledMapAttempts, :SuccessfulMapAttempts, :GcTimeMillis, :VCoreMillisMaps, :MbMillisMaps, :VCoreMillisReduces, :MbMillisReduces, :TotalLaunchedMaps, :TotalLaunchedReduces, :MapInputRecords, :MapOutputRecords, :ReduceInputRecords, :ReduceOutputRecords, :HDFSBytesWritten, :HDFSBytesRead

        def initialize(id=nil, user=nil, name=nil, queue=nil, applicationtype=nil, elapsedtime=nil, state=nil, finalstatus=nil, progress=nil, startedtime=nil, finishedtime=nil, allocatedmb=nil, allocatedvcores=nil, runningcontainers=nil, memoryseconds=nil, vcoreseconds=nil, queueusagepercentage=nil, clusterusagepercentage=nil, preemptedresourcemb=nil, preemptedresourcevcores=nil, numnonamcontainerpreempted=nil, numamcontainerpreempted=nil, mapstotal=nil, mapscompleted=nil, reducestotal=nil, reducescompleted=nil, avgmaptime=nil, avgreducetime=nil, avgshuffletime=nil, avgmergetime=nil, failedreduceattempts=nil, killedreduceattempts=nil, successfulreduceattempts=nil, failedmapattempts=nil, killedmapattempts=nil, successfulmapattempts=nil, gctimemillis=nil, vcoremillismaps=nil, mbmillismaps=nil, vcoremillisreduces=nil, mbmillisreduces=nil, totallaunchedmaps=nil, totallaunchedreduces=nil, mapinputrecords=nil, mapoutputrecords=nil, reduceinputrecords=nil, reduceoutputrecords=nil, hdfsbyteswritten=nil, hdfsbytesread=nil)
          @Id = id
          @User = user
          @Name = name
          @Queue = queue
          @ApplicationType = applicationtype
          @ElapsedTime = elapsedtime
          @State = state
          @FinalStatus = finalstatus
          @Progress = progress
          @StartedTime = startedtime
          @FinishedTime = finishedtime
          @AllocatedMB = allocatedmb
          @AllocatedVCores = allocatedvcores
          @RunningContainers = runningcontainers
          @MemorySeconds = memoryseconds
          @VCoreSeconds = vcoreseconds
          @QueueUsagePercentage = queueusagepercentage
          @ClusterUsagePercentage = clusterusagepercentage
          @PreemptedResourceMB = preemptedresourcemb
          @PreemptedResourceVCores = preemptedresourcevcores
          @NumNonAMContainerPreempted = numnonamcontainerpreempted
          @NumAMContainerPreempted = numamcontainerpreempted
          @MapsTotal = mapstotal
          @MapsCompleted = mapscompleted
          @ReducesTotal = reducestotal
          @ReducesCompleted = reducescompleted
          @AvgMapTime = avgmaptime
          @AvgReduceTime = avgreducetime
          @AvgShuffleTime = avgshuffletime
          @AvgMergeTime = avgmergetime
          @FailedReduceAttempts = failedreduceattempts
          @KilledReduceAttempts = killedreduceattempts
          @SuccessfulReduceAttempts = successfulreduceattempts
          @FailedMapAttempts = failedmapattempts
          @KilledMapAttempts = killedmapattempts
          @SuccessfulMapAttempts = successfulmapattempts
          @GcTimeMillis = gctimemillis
          @VCoreMillisMaps = vcoremillismaps
          @MbMillisMaps = mbmillismaps
          @VCoreMillisReduces = vcoremillisreduces
          @MbMillisReduces = mbmillisreduces
          @TotalLaunchedMaps = totallaunchedmaps
          @TotalLaunchedReduces = totallaunchedreduces
          @MapInputRecords = mapinputrecords
          @MapOutputRecords = mapoutputrecords
          @ReduceInputRecords = reduceinputrecords
          @ReduceOutputRecords = reduceoutputrecords
          @HDFSBytesWritten = hdfsbyteswritten
          @HDFSBytesRead = hdfsbytesread
        end

        def deserialize(params)
          @Id = params['Id']
          @User = params['User']
          @Name = params['Name']
          @Queue = params['Queue']
          @ApplicationType = params['ApplicationType']
          @ElapsedTime = params['ElapsedTime']
          @State = params['State']
          @FinalStatus = params['FinalStatus']
          @Progress = params['Progress']
          @StartedTime = params['StartedTime']
          @FinishedTime = params['FinishedTime']
          @AllocatedMB = params['AllocatedMB']
          @AllocatedVCores = params['AllocatedVCores']
          @RunningContainers = params['RunningContainers']
          @MemorySeconds = params['MemorySeconds']
          @VCoreSeconds = params['VCoreSeconds']
          @QueueUsagePercentage = params['QueueUsagePercentage']
          @ClusterUsagePercentage = params['ClusterUsagePercentage']
          @PreemptedResourceMB = params['PreemptedResourceMB']
          @PreemptedResourceVCores = params['PreemptedResourceVCores']
          @NumNonAMContainerPreempted = params['NumNonAMContainerPreempted']
          @NumAMContainerPreempted = params['NumAMContainerPreempted']
          @MapsTotal = params['MapsTotal']
          @MapsCompleted = params['MapsCompleted']
          @ReducesTotal = params['ReducesTotal']
          @ReducesCompleted = params['ReducesCompleted']
          @AvgMapTime = params['AvgMapTime']
          @AvgReduceTime = params['AvgReduceTime']
          @AvgShuffleTime = params['AvgShuffleTime']
          @AvgMergeTime = params['AvgMergeTime']
          @FailedReduceAttempts = params['FailedReduceAttempts']
          @KilledReduceAttempts = params['KilledReduceAttempts']
          @SuccessfulReduceAttempts = params['SuccessfulReduceAttempts']
          @FailedMapAttempts = params['FailedMapAttempts']
          @KilledMapAttempts = params['KilledMapAttempts']
          @SuccessfulMapAttempts = params['SuccessfulMapAttempts']
          @GcTimeMillis = params['GcTimeMillis']
          @VCoreMillisMaps = params['VCoreMillisMaps']
          @MbMillisMaps = params['MbMillisMaps']
          @VCoreMillisReduces = params['VCoreMillisReduces']
          @MbMillisReduces = params['MbMillisReduces']
          @TotalLaunchedMaps = params['TotalLaunchedMaps']
          @TotalLaunchedReduces = params['TotalLaunchedReduces']
          @MapInputRecords = params['MapInputRecords']
          @MapOutputRecords = params['MapOutputRecords']
          @ReduceInputRecords = params['ReduceInputRecords']
          @ReduceOutputRecords = params['ReduceOutputRecords']
          @HDFSBytesWritten = params['HDFSBytesWritten']
          @HDFSBytesRead = params['HDFSBytesRead']
        end
      end

      # 用于创建集群价格清单 不同可用区下价格详情
      class ZoneDetailPriceResult < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区Id
        # @type ZoneId: String
        # @param NodeDetailPrice: 不同节点的价格详情
        # @type NodeDetailPrice: Array

        attr_accessor :ZoneId, :NodeDetailPrice

        def initialize(zoneid=nil, nodedetailprice=nil)
          @ZoneId = zoneid
          @NodeDetailPrice = nodedetailprice
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['NodeDetailPrice'].nil?
            @NodeDetailPrice = []
            params['NodeDetailPrice'].each do |i|
              nodedetailpriceresult_tmp = NodeDetailPriceResult.new
              nodedetailpriceresult_tmp.deserialize(i)
              @NodeDetailPrice << nodedetailpriceresult_tmp
            end
          end
        end
      end

      # 可用区配置信息
      class ZoneResourceConfiguration < TencentCloud::Common::AbstractModel
        # @param VirtualPrivateCloud: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Emr.v20190103.models.VirtualPrivateCloud`
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param AllNodeResourceSpec: 所有节点资源的规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllNodeResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.AllNodeResourceSpec`
        # @param ZoneTag: 如果是单可用区，ZoneTag可以不用填， 如果是双AZ部署，第一个可用区ZoneTag选择master，第二个可用区ZoneTag选择standby，如果是三AZ部署，第一个可用区ZoneTag选择master，第二个可用区ZoneTag选择standby，第三个可用区ZoneTag选择third-party，取值范围：
        #   <li>master</li>
        #   <li>standby</li>
        #   <li>third-party</li>
        # @type ZoneTag: String

        attr_accessor :VirtualPrivateCloud, :Placement, :AllNodeResourceSpec, :ZoneTag

        def initialize(virtualprivatecloud=nil, placement=nil, allnoderesourcespec=nil, zonetag=nil)
          @VirtualPrivateCloud = virtualprivatecloud
          @Placement = placement
          @AllNodeResourceSpec = allnoderesourcespec
          @ZoneTag = zonetag
        end

        def deserialize(params)
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['AllNodeResourceSpec'].nil?
            @AllNodeResourceSpec = AllNodeResourceSpec.new
            @AllNodeResourceSpec.deserialize(params['AllNodeResourceSpec'])
          end
          @ZoneTag = params['ZoneTag']
        end
      end

      # 可用区配置描述。
      class ZoneSetting < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称
        # @type Zone: String
        # @param VPCSettings: 可用区VPC和子网
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param NodeNum: 可用区节点数量
        # @type NodeNum: Integer

        attr_accessor :Zone, :VPCSettings, :NodeNum

        def initialize(zone=nil, vpcsettings=nil, nodenum=nil)
          @Zone = zone
          @VPCSettings = vpcsettings
          @NodeNum = nodenum
        end

        def deserialize(params)
          @Zone = params['Zone']
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          @NodeNum = params['NodeNum']
        end
      end

    end
  end
end

