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
  module Eis
    module V20210601
      # 运行时精简信息
      class AbstractRuntimeMC < TencentCloud::Common::AbstractModel
        # @param RuntimeId: 运行时id
        # @type RuntimeId: Integer
        # @param DisplayName: 运行时名称，用户输入，同一uin内唯一
        # @type DisplayName: String
        # @param Type: 运行时类型：0: sandbox, 1:shared, 2:private
        # @type Type: Integer
        # @param Zone: 运行时所在地域，tianjin，beijiing，guangzhou等
        # @type Zone: String
        # @param Area: 运行时所在地域，tianjin，beijiing，guangzhou等（同Zone）
        # @type Area: String
        # @param Addr: 运行时应用listener地址后缀
        # @type Addr: String
        # @param Status: 运行时状态
        # @type Status: Integer
        # @param ExpiredAt: 运行时过期时间
        # @type ExpiredAt: Integer

        attr_accessor :RuntimeId, :DisplayName, :Type, :Zone, :Area, :Addr, :Status, :ExpiredAt
        
        def initialize(runtimeid=nil, displayname=nil, type=nil, zone=nil, area=nil, addr=nil, status=nil, expiredat=nil)
          @RuntimeId = runtimeid
          @DisplayName = displayname
          @Type = type
          @Zone = zone
          @Area = area
          @Addr = addr
          @Status = status
          @ExpiredAt = expiredat
        end

        def deserialize(params)
          @RuntimeId = params['RuntimeId']
          @DisplayName = params['DisplayName']
          @Type = params['Type']
          @Zone = params['Zone']
          @Area = params['Area']
          @Addr = params['Addr']
          @Status = params['Status']
          @ExpiredAt = params['ExpiredAt']
        end
      end

      # GetRuntimeMC请求参数结构体
      class GetRuntimeMCRequest < TencentCloud::Common::AbstractModel
        # @param RuntimeId: 运行时id
        # @type RuntimeId: Integer
        # @param Zone: 运行时地域
        # @type Zone: String

        attr_accessor :RuntimeId, :Zone
        
        def initialize(runtimeid=nil, zone=nil)
          @RuntimeId = runtimeid
          @Zone = zone
        end

        def deserialize(params)
          @RuntimeId = params['RuntimeId']
          @Zone = params['Zone']
        end
      end

      # GetRuntimeMC返回参数结构体
      class GetRuntimeMCResponse < TencentCloud::Common::AbstractModel
        # @param Runtime: 运行时详情
        # @type Runtime: :class:`Tencentcloud::Eis.v20210601.models.RuntimeMC`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Runtime, :RequestId
        
        def initialize(runtime=nil, requestid=nil)
          @Runtime = runtime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Runtime'].nil?
            @Runtime = RuntimeMC.new
            @Runtime.deserialize(params['Runtime'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRuntimeResourceMonitorMetricMC请求参数结构体
      class GetRuntimeResourceMonitorMetricMCRequest < TencentCloud::Common::AbstractModel
        # @param RuntimeId: 运行时id
        # @type RuntimeId: Integer
        # @param StartTime: 起始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param MetricType: 指标类型：0:CPU, 1:MemUsageBytes, 2:K8sWorkloadNetworkReceiveBytesBw, 3:K8sWorkloadNetworkTransmitBytesBw
        # @type MetricType: Integer
        # @param RateType: 是否返回百分比数值，仅支持CPU，Memory
        # @type RateType: Boolean
        # @param Interval: 采样粒度：60(s), 300(s), 3600(s), 86400(s)
        # @type Interval: Integer

        attr_accessor :RuntimeId, :StartTime, :EndTime, :MetricType, :RateType, :Interval
        
        def initialize(runtimeid=nil, starttime=nil, endtime=nil, metrictype=nil, ratetype=nil, interval=nil)
          @RuntimeId = runtimeid
          @StartTime = starttime
          @EndTime = endtime
          @MetricType = metrictype
          @RateType = ratetype
          @Interval = interval
        end

        def deserialize(params)
          @RuntimeId = params['RuntimeId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricType = params['MetricType']
          @RateType = params['RateType']
          @Interval = params['Interval']
        end
      end

      # GetRuntimeResourceMonitorMetricMC返回参数结构体
      class GetRuntimeResourceMonitorMetricMCResponse < TencentCloud::Common::AbstractModel
        # @param MetricType: 指标名称，K8sWorkloadCpuCoreUsed，K8sWorkloadMemUsageBytes，K8sWorkloadNetworkReceiveBytesBw，K8sWorkloadNetworkTransmitBytesBw
        # @type MetricType: String
        # @param Values: metric数值列表
        # @type Values: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricType, :Values, :RequestId
        
        def initialize(metrictype=nil, values=nil, requestid=nil)
          @MetricType = metrictype
          @Values = values
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricType = params['MetricType']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              metricvaluemc_tmp = MetricValueMC.new
              metricvaluemc_tmp.deserialize(i)
              @Values << metricvaluemc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDeployableRuntimesMC请求参数结构体
      class ListDeployableRuntimesMCRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListDeployableRuntimesMC返回参数结构体
      class ListDeployableRuntimesMCResponse < TencentCloud::Common::AbstractModel
        # @param Runtimes: 运行时列表
        # @type Runtimes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Runtimes, :RequestId
        
        def initialize(runtimes=nil, requestid=nil)
          @Runtimes = runtimes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Runtimes'].nil?
            @Runtimes = []
            params['Runtimes'].each do |i|
              abstractruntimemc_tmp = AbstractRuntimeMC.new
              abstractruntimemc_tmp.deserialize(i)
              @Runtimes << abstractruntimemc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRuntimeDeployedInstancesMC请求参数结构体
      class ListRuntimeDeployedInstancesMCRequest < TencentCloud::Common::AbstractModel
        # @param RuntimeId: 运行时id
        # @type RuntimeId: Integer
        # @param Limit: 最大请求数量
        # @type Limit: Integer
        # @param Offset: 请求偏移量
        # @type Offset: Integer
        # @param SortType: 排序类型：1:创建时间排序, 2:更新时间排序（默认）
        # @type SortType: Integer
        # @param Sort: 排序方式：asc，desc（默认）
        # @type Sort: String
        # @param Zone: 运行时地域
        # @type Zone: String
        # @param ApiVersion: 1:3.0版本新控制台传1；否则传0
        # @type ApiVersion: Integer

        attr_accessor :RuntimeId, :Limit, :Offset, :SortType, :Sort, :Zone, :ApiVersion
        
        def initialize(runtimeid=nil, limit=nil, offset=nil, sorttype=nil, sort=nil, zone=nil, apiversion=nil)
          @RuntimeId = runtimeid
          @Limit = limit
          @Offset = offset
          @SortType = sorttype
          @Sort = sort
          @Zone = zone
          @ApiVersion = apiversion
        end

        def deserialize(params)
          @RuntimeId = params['RuntimeId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SortType = params['SortType']
          @Sort = params['Sort']
          @Zone = params['Zone']
          @ApiVersion = params['ApiVersion']
        end
      end

      # ListRuntimeDeployedInstancesMC返回参数结构体
      class ListRuntimeDeployedInstancesMCResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 运行时所部属的应用实例列表
        # @type Instances: Array
        # @param TotalCount: 满足条件的记录总数，用于分页器
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId
        
        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              runtimedeployedinstancemc_tmp = RuntimeDeployedInstanceMC.new
              runtimedeployedinstancemc_tmp.deserialize(i)
              @Instances << runtimedeployedinstancemc_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListRuntimesMC请求参数结构体
      class ListRuntimesMCRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRuntimesMC返回参数结构体
      class ListRuntimesMCResponse < TencentCloud::Common::AbstractModel
        # @param Runtimes: 运行时列表
        # @type Runtimes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Runtimes, :RequestId
        
        def initialize(runtimes=nil, requestid=nil)
          @Runtimes = runtimes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Runtimes'].nil?
            @Runtimes = []
            params['Runtimes'].each do |i|
              runtimemc_tmp = RuntimeMC.new
              runtimemc_tmp.deserialize(i)
              @Runtimes << runtimemc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetMonitorMetricResponse
      class MetricValueMC < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param Val: 对应的value值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Val: String

        attr_accessor :Time, :Val
        
        def initialize(time=nil, val=nil)
          @Time = time
          @Val = val
        end

        def deserialize(params)
          @Time = params['Time']
          @Val = params['Val']
        end
      end

      # 运行时部署的应用实例详情
      class RuntimeDeployedInstanceMC < TencentCloud::Common::AbstractModel
        # @param GroupId: 项目id
        # @type GroupId: Integer
        # @param GroupName: 项目名称
        # @type GroupName: String
        # @param ProjectId: 应用id
        # @type ProjectId: Integer
        # @param ProjectName: 应用名称
        # @type ProjectName: String
        # @param InstanceId: 应用实例id
        # @type InstanceId: Integer
        # @param InstanceVersion: 应用实例版本
        # @type InstanceVersion: Integer
        # @param InstanceCreatedAt: 应用实例创建时间
        # @type InstanceCreatedAt: Integer
        # @param Status: 应用实例部署状态. 0:running, 1:deleting
        # @type Status: Integer
        # @param CreatedAt: 应用实例部署创建时间
        # @type CreatedAt: Integer
        # @param UpdatedAt: 应用实例部署更新时间
        # @type UpdatedAt: Integer
        # @param ProjectType: 应用类型：0:NormalApp普通应用 1:TemplateApp模板应用 2:LightApp轻应用 3:MicroConnTemplate微连接模板 4:MicroConnApp微连接应用
        # @type ProjectType: Integer

        attr_accessor :GroupId, :GroupName, :ProjectId, :ProjectName, :InstanceId, :InstanceVersion, :InstanceCreatedAt, :Status, :CreatedAt, :UpdatedAt, :ProjectType
        
        def initialize(groupid=nil, groupname=nil, projectid=nil, projectname=nil, instanceid=nil, instanceversion=nil, instancecreatedat=nil, status=nil, createdat=nil, updatedat=nil, projecttype=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ProjectId = projectid
          @ProjectName = projectname
          @InstanceId = instanceid
          @InstanceVersion = instanceversion
          @InstanceCreatedAt = instancecreatedat
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @ProjectType = projecttype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @InstanceId = params['InstanceId']
          @InstanceVersion = params['InstanceVersion']
          @InstanceCreatedAt = params['InstanceCreatedAt']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @ProjectType = params['ProjectType']
        end
      end

      # 运行时详细信息
      class RuntimeMC < TencentCloud::Common::AbstractModel
        # @param RuntimeId: 运行时id
        # @type RuntimeId: Integer
        # @param Uin: 主账号uin
        # @type Uin: String
        # @param DisplayName: 运行时名称，用户输入，同一uin内唯一
        # @type DisplayName: String
        # @param Zone: 运行时所在地域，tianjin，beijiing，guangzhou等
        # @type Zone: String
        # @param Type: 运行时类型：0: sandbox, 1:shared, 2:private
        # @type Type: Integer
        # @param Status: 运行时状态：1:running, 2:deleting, 3:creating, 4:scaling, 5:unavailable, 6:deleted, 7:errored
        # @type Status: Integer
        # @param CreatedAt: 运行时创建时间
        # @type CreatedAt: Integer
        # @param UpdatedAt: 运行时更新时间
        # @type UpdatedAt: Integer
        # @param WorkerSize: 运行时资源配置，worker总配额，0:0vCore0G, 1:1vCore2G, 2:2vCore4G, 4:4vCore8G, 8:8vCore16G, 12:12vCore24G, 16:16vCore32G, 100:unlimited
        # @type WorkerSize: Integer
        # @param WorkerReplica: 运行时资源配置，worker副本数
        # @type WorkerReplica: Integer
        # @param RunningInstanceCount: 正在运行的应用实例数量
        # @type RunningInstanceCount: Integer
        # @param CpuUsed: 已使用cpu核数
        # @type CpuUsed: Float
        # @param CpuLimit: cpu核数上限
        # @type CpuLimit: Float
        # @param MemoryUsed: 已使用内存 MB
        # @type MemoryUsed: Float
        # @param MemoryLimit: 内存上限 MB
        # @type MemoryLimit: Float
        # @param ExpiredAt: 运行时过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredAt: Integer
        # @param ChargeType: 收费类型：0:缺省，1:通过订单页自助下单(支持续费/升配等操作)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: Integer
        # @param ResourceLimitType: 资源限制类型：0:无限制，1:有限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceLimitType: Integer
        # @param AutoRenewal: 是否开启自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewal: Boolean

        attr_accessor :RuntimeId, :Uin, :DisplayName, :Zone, :Type, :Status, :CreatedAt, :UpdatedAt, :WorkerSize, :WorkerReplica, :RunningInstanceCount, :CpuUsed, :CpuLimit, :MemoryUsed, :MemoryLimit, :ExpiredAt, :ChargeType, :ResourceLimitType, :AutoRenewal
        
        def initialize(runtimeid=nil, uin=nil, displayname=nil, zone=nil, type=nil, status=nil, createdat=nil, updatedat=nil, workersize=nil, workerreplica=nil, runninginstancecount=nil, cpuused=nil, cpulimit=nil, memoryused=nil, memorylimit=nil, expiredat=nil, chargetype=nil, resourcelimittype=nil, autorenewal=nil)
          @RuntimeId = runtimeid
          @Uin = uin
          @DisplayName = displayname
          @Zone = zone
          @Type = type
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @WorkerSize = workersize
          @WorkerReplica = workerreplica
          @RunningInstanceCount = runninginstancecount
          @CpuUsed = cpuused
          @CpuLimit = cpulimit
          @MemoryUsed = memoryused
          @MemoryLimit = memorylimit
          @ExpiredAt = expiredat
          @ChargeType = chargetype
          @ResourceLimitType = resourcelimittype
          @AutoRenewal = autorenewal
        end

        def deserialize(params)
          @RuntimeId = params['RuntimeId']
          @Uin = params['Uin']
          @DisplayName = params['DisplayName']
          @Zone = params['Zone']
          @Type = params['Type']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @WorkerSize = params['WorkerSize']
          @WorkerReplica = params['WorkerReplica']
          @RunningInstanceCount = params['RunningInstanceCount']
          @CpuUsed = params['CpuUsed']
          @CpuLimit = params['CpuLimit']
          @MemoryUsed = params['MemoryUsed']
          @MemoryLimit = params['MemoryLimit']
          @ExpiredAt = params['ExpiredAt']
          @ChargeType = params['ChargeType']
          @ResourceLimitType = params['ResourceLimitType']
          @AutoRenewal = params['AutoRenewal']
        end
      end

    end
  end
end

