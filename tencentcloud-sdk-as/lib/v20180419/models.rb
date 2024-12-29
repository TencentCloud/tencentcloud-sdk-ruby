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
  module As
    module V20180419
      # 符合条件的伸缩活动相关信息。
      class Activity < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param ActivityId: 伸缩活动ID。
        # @type ActivityId: String
        # @param ActivityType: 伸缩活动类型。取值如下：
        # <li>SCALE_OUT：扩容活动</li>
        # <li>SCALE_IN：缩容活动</li>
        # <li>ATTACH_INSTANCES：添加实例</li>
        # <li>REMOVE_INSTANCES：销毁实例</li>
        # <li>DETACH_INSTANCES：移出实例</li>
        # <li>TERMINATE_INSTANCES_UNEXPECTEDLY：实例在CVM控制台被销毁</li>
        # <li>REPLACE_UNHEALTHY_INSTANCE：替换不健康实例</li>
        # <li>START_INSTANCES：开启实例</li>
        # <li>STOP_INSTANCES：关闭实例</li>
        # <li>INVOKE_COMMAND：执行命令</li>
        # @type ActivityType: String
        # @param StatusCode: 伸缩活动状态。取值如下
        # <li>INIT：初始化中</li>
        # <li>RUNNING：运行中</li>
        # <li>SUCCESSFUL：活动成功</li>
        # <li>PARTIALLY_SUCCESSFUL：活动部分成功</li>
        # <li>FAILED：活动失败</li>
        # <li>CANCELLED：活动取消</li>
        # @type StatusCode: String
        # @param StatusMessage: 伸缩活动状态描述。
        # @type StatusMessage: String
        # @param Cause: 伸缩活动起因。
        # @type Cause: String
        # @param Description: 伸缩活动描述。
        # @type Description: String
        # @param StartTime: 伸缩活动开始时间。
        # @type StartTime: String
        # @param EndTime: 伸缩活动结束时间。
        # @type EndTime: String
        # @param CreatedTime: 伸缩活动创建时间。
        # @type CreatedTime: String
        # @param ActivityRelatedInstanceSet: 该参数已废弃，请勿使用。
        # @type ActivityRelatedInstanceSet: Array
        # @param StatusMessageSimplified: 伸缩活动状态简要描述。
        # @type StatusMessageSimplified: String
        # @param LifecycleActionResultSet: 伸缩活动中生命周期挂钩的执行结果。
        # @type LifecycleActionResultSet: Array
        # @param DetailedStatusMessageSet: 伸缩活动状态详细描述。
        # @type DetailedStatusMessageSet: Array
        # @param InvocationResultSet: 执行命令结果。
        # @type InvocationResultSet: Array
        # @param RelatedInstanceSet: 伸缩活动相关实例信息集合。
        # @type RelatedInstanceSet: Array

        attr_accessor :AutoScalingGroupId, :ActivityId, :ActivityType, :StatusCode, :StatusMessage, :Cause, :Description, :StartTime, :EndTime, :CreatedTime, :ActivityRelatedInstanceSet, :StatusMessageSimplified, :LifecycleActionResultSet, :DetailedStatusMessageSet, :InvocationResultSet, :RelatedInstanceSet
        extend Gem::Deprecate
        deprecate :ActivityRelatedInstanceSet, :none, 2024, 12
        deprecate :ActivityRelatedInstanceSet=, :none, 2024, 12

        def initialize(autoscalinggroupid=nil, activityid=nil, activitytype=nil, statuscode=nil, statusmessage=nil, cause=nil, description=nil, starttime=nil, endtime=nil, createdtime=nil, activityrelatedinstanceset=nil, statusmessagesimplified=nil, lifecycleactionresultset=nil, detailedstatusmessageset=nil, invocationresultset=nil, relatedinstanceset=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @ActivityId = activityid
          @ActivityType = activitytype
          @StatusCode = statuscode
          @StatusMessage = statusmessage
          @Cause = cause
          @Description = description
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @ActivityRelatedInstanceSet = activityrelatedinstanceset
          @StatusMessageSimplified = statusmessagesimplified
          @LifecycleActionResultSet = lifecycleactionresultset
          @DetailedStatusMessageSet = detailedstatusmessageset
          @InvocationResultSet = invocationresultset
          @RelatedInstanceSet = relatedinstanceset
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @ActivityId = params['ActivityId']
          @ActivityType = params['ActivityType']
          @StatusCode = params['StatusCode']
          @StatusMessage = params['StatusMessage']
          @Cause = params['Cause']
          @Description = params['Description']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          unless params['ActivityRelatedInstanceSet'].nil?
            @ActivityRelatedInstanceSet = []
            params['ActivityRelatedInstanceSet'].each do |i|
              activtyrelatedinstance_tmp = ActivtyRelatedInstance.new
              activtyrelatedinstance_tmp.deserialize(i)
              @ActivityRelatedInstanceSet << activtyrelatedinstance_tmp
            end
          end
          @StatusMessageSimplified = params['StatusMessageSimplified']
          unless params['LifecycleActionResultSet'].nil?
            @LifecycleActionResultSet = []
            params['LifecycleActionResultSet'].each do |i|
              lifecycleactionresultinfo_tmp = LifecycleActionResultInfo.new
              lifecycleactionresultinfo_tmp.deserialize(i)
              @LifecycleActionResultSet << lifecycleactionresultinfo_tmp
            end
          end
          unless params['DetailedStatusMessageSet'].nil?
            @DetailedStatusMessageSet = []
            params['DetailedStatusMessageSet'].each do |i|
              detailedstatusmessage_tmp = DetailedStatusMessage.new
              detailedstatusmessage_tmp.deserialize(i)
              @DetailedStatusMessageSet << detailedstatusmessage_tmp
            end
          end
          unless params['InvocationResultSet'].nil?
            @InvocationResultSet = []
            params['InvocationResultSet'].each do |i|
              invocationresult_tmp = InvocationResult.new
              invocationresult_tmp.deserialize(i)
              @InvocationResultSet << invocationresult_tmp
            end
          end
          unless params['RelatedInstanceSet'].nil?
            @RelatedInstanceSet = []
            params['RelatedInstanceSet'].each do |i|
              relatedinstance_tmp = RelatedInstance.new
              relatedinstance_tmp.deserialize(i)
              @RelatedInstanceSet << relatedinstance_tmp
            end
          end
        end
      end

      # 与本次伸缩活动相关的实例信息。
      class ActivtyRelatedInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceStatus: 实例在伸缩活动中的状态。取值如下：<br><li>INIT：初始化中</li><li>RUNNING：实例操作中</li><li>SUCCESSFUL：活动成功</li><li>FAILED：活动失败
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

      # 伸缩配置建议。
      class Advice < TencentCloud::Common::AbstractModel
        # @param Problem: 问题描述。
        # @type Problem: String
        # @param Detail: 问题详情。
        # @type Detail: String
        # @param Solution: 建议解决方案。
        # @type Solution: String
        # @param Level: 伸缩建议警告级别。取值范围：
        # <li>WARNING：警告级别</li>
        # <li>CRITICAL：严重级别</li>
        # @type Level: String

        attr_accessor :Problem, :Detail, :Solution, :Level

        def initialize(problem=nil, detail=nil, solution=nil, level=nil)
          @Problem = problem
          @Detail = detail
          @Solution = solution
          @Level = level
        end

        def deserialize(params)
          @Problem = params['Problem']
          @Detail = params['Detail']
          @Solution = params['Solution']
          @Level = params['Level']
        end
      end

      # AttachInstances请求参数结构体
      class AttachInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param InstanceIds: CVM实例ID列表
        # @type InstanceIds: Array

        attr_accessor :AutoScalingGroupId, :InstanceIds

        def initialize(autoscalinggroupid=nil, instanceids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AttachInstances返回参数结构体
      class AttachInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # AttachLoadBalancers请求参数结构体
      class AttachLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param LoadBalancerIds: 传统型负载均衡器ID列表，每个伸缩组绑定传统型负载均衡器数量上限为20，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        # @type LoadBalancerIds: Array
        # @param ForwardLoadBalancers: 应用型负载均衡器列表，每个伸缩组绑定应用型负载均衡器数量上限为100，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        # @type ForwardLoadBalancers: Array

        attr_accessor :AutoScalingGroupId, :LoadBalancerIds, :ForwardLoadBalancers

        def initialize(autoscalinggroupid=nil, loadbalancerids=nil, forwardloadbalancers=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @LoadBalancerIds = loadbalancerids
          @ForwardLoadBalancers = forwardloadbalancers
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['ForwardLoadBalancers'].nil?
            @ForwardLoadBalancers = []
            params['ForwardLoadBalancers'].each do |i|
              forwardloadbalancer_tmp = ForwardLoadBalancer.new
              forwardloadbalancer_tmp.deserialize(i)
              @ForwardLoadBalancers << forwardloadbalancer_tmp
            end
          end
        end
      end

      # AttachLoadBalancers返回参数结构体
      class AttachLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # 伸缩组配置建议。
      class AutoScalingAdvice < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param Level: 伸缩组警告级别。取值范围：
        # <li>NORMAL：正常</li>
        # <li>WARNING：警告级别</li>
        # <li>CRITICAL：严重级别</li>
        # @type Level: String
        # @param Advices: 伸缩组配置建议集合。
        # @type Advices: Array

        attr_accessor :AutoScalingGroupId, :Level, :Advices

        def initialize(autoscalinggroupid=nil, level=nil, advices=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @Level = level
          @Advices = advices
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @Level = params['Level']
          unless params['Advices'].nil?
            @Advices = []
            params['Advices'].each do |i|
              advice_tmp = Advice.new
              advice_tmp.deserialize(i)
              @Advices << advice_tmp
            end
          end
        end
      end

      # 伸缩组
      class AutoScalingGroup < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param AutoScalingGroupName: 伸缩组名称
        # @type AutoScalingGroupName: String
        # @param AutoScalingGroupStatus: 伸缩组当前状态。取值范围：
        # <li>NORMAL：正常</li>
        # <li>CVM_ABNORMAL：启动配置异常</li>
        # <li>LB_ABNORMAL：负载均衡器异常</li>
        # <li>LB_LISTENER_ABNORMAL：负载均衡器监听器异常</li>
        # <li>LB_LOCATION_ABNORMAL：负载均衡器监听器转发配置异常</li>
        # <li>VPC_ABNORMAL：VPC网络异常</li>
        # <li>SUBNET_ABNORMAL：VPC子网异常</li>
        # <li>INSUFFICIENT_BALANCE：余额不足</li>
        # <li>LB_BACKEND_REGION_NOT_MATCH：CLB实例后端地域与AS服务所在地域不匹配</li>
        # <li>LB_BACKEND_VPC_NOT_MATCH：CLB实例VPC与伸缩组VPC不匹配</li>
        # @type AutoScalingGroupStatus: String
        # @param CreatedTime: 创建时间，采用UTC标准计时
        # @type CreatedTime: String
        # @param DefaultCooldown: 默认冷却时间，单位秒
        # @type DefaultCooldown: Integer
        # @param DesiredCapacity: 期望实例数
        # @type DesiredCapacity: Integer
        # @param EnabledStatus: 启用状态，取值包括`ENABLED`和`DISABLED`
        # @type EnabledStatus: String
        # @param ForwardLoadBalancerSet: 应用型负载均衡器列表
        # @type ForwardLoadBalancerSet: Array
        # @param InstanceCount: 实例数量
        # @type InstanceCount: Integer
        # @param InServiceInstanceCount: 状态为`IN_SERVICE`实例的数量
        # @type InServiceInstanceCount: Integer
        # @param LaunchConfigurationId: 启动配置ID
        # @type LaunchConfigurationId: String
        # @param LaunchConfigurationName: 启动配置名称
        # @type LaunchConfigurationName: String
        # @param LoadBalancerIdSet: 传统型负载均衡器ID列表
        # @type LoadBalancerIdSet: Array
        # @param MaxSize: 最大实例数
        # @type MaxSize: Integer
        # @param MinSize: 最小实例数
        # @type MinSize: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param SubnetIdSet: 子网ID列表
        # @type SubnetIdSet: Array
        # @param TerminationPolicySet: 销毁策略
        # @type TerminationPolicySet: Array
        # @param VpcId: VPC标识
        # @type VpcId: String
        # @param ZoneSet: 可用区列表
        # @type ZoneSet: Array
        # @param RetryPolicy: 重试策略
        # @type RetryPolicy: String
        # @param InActivityStatus: 伸缩组是否处于伸缩活动中，`IN_ACTIVITY`表示处于伸缩活动中，`NOT_IN_ACTIVITY`表示不处于伸缩活动中。
        # @type InActivityStatus: String
        # @param Tags: 伸缩组标签列表
        # @type Tags: Array
        # @param ServiceSettings: 服务设置
        # @type ServiceSettings: :class:`Tencentcloud::As.v20180419.models.ServiceSettings`
        # @param Ipv6AddressCount: 实例具有IPv6地址数量的配置
        # @type Ipv6AddressCount: Integer
        # @param MultiZoneSubnetPolicy: 多可用区/子网策略。
        # <li> PRIORITY，按照可用区/子网列表的顺序，作为优先级来尝试创建实例，如果优先级最高的可用区/子网可以创建成功，则总在该可用区/子网创建。</li>
        # <li> EQUALITY：每次选择当前实例数最少的可用区/子网进行扩容，使得每个可用区/子网都有机会发生扩容，多次扩容出的实例会打散到多个可用区/子网。</li>
        # @type MultiZoneSubnetPolicy: String
        # @param HealthCheckType: 伸缩组实例健康检查类型，取值如下：
        # <li>CVM：根据实例网络状态判断实例是否处于不健康状态，不健康的网络状态即发生实例 PING 不可达事件，详细判断标准可参考[实例健康检查](https://cloud.tencent.com/document/product/377/8553)</li>
        # <li>CLB：根据 CLB 的健康检查状态判断实例是否处于不健康状态，CLB健康检查原理可参考[健康检查](https://cloud.tencent.com/document/product/214/6097)</li>
        # @type HealthCheckType: String
        # @param LoadBalancerHealthCheckGracePeriod: CLB健康检查宽限期
        # @type LoadBalancerHealthCheckGracePeriod: Integer
        # @param InstanceAllocationPolicy: 实例分配策略，取值包括 LAUNCH_CONFIGURATION 和 SPOT_MIXED。
        # <li> LAUNCH_CONFIGURATION，代表传统的按照启动配置模式。</li>
        # <li> SPOT_MIXED，代表竞价混合模式。目前仅支持启动配置为按量计费模式时使用混合模式，混合模式下，伸缩组将根据设定扩容按量或竞价机型。使用混合模式时，关联的启动配置的计费类型不可被修改。</li>
        # @type InstanceAllocationPolicy: String
        # @param SpotMixedAllocationPolicy: 竞价混合模式下，各计费类型实例的分配策略。
        # 仅当 InstanceAllocationPolicy 取 SPOT_MIXED 时才会返回有效值。
        # @type SpotMixedAllocationPolicy: :class:`Tencentcloud::As.v20180419.models.SpotMixedAllocationPolicy`
        # @param CapacityRebalance: 容量重平衡功能，仅对伸缩组内的竞价实例有效。取值范围：
        # <li> TRUE，开启该功能，当伸缩组内的竞价实例即将被竞价实例服务自动回收前，AS 主动发起竞价实例销毁流程，如果有配置过缩容 hook，则销毁前 hook 会生效。销毁流程启动后，AS 会异步开启一个扩容活动，用于补齐期望实例数。</li>
        # <li> FALSE，不开启该功能，则 AS 等待竞价实例被销毁后才会去扩容补齐伸缩组期望实例数。</li>
        # @type CapacityRebalance: Boolean
        # @param InstanceNameIndexSettings: 实例名称序号相关设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNameIndexSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameIndexSettings`

        attr_accessor :AutoScalingGroupId, :AutoScalingGroupName, :AutoScalingGroupStatus, :CreatedTime, :DefaultCooldown, :DesiredCapacity, :EnabledStatus, :ForwardLoadBalancerSet, :InstanceCount, :InServiceInstanceCount, :LaunchConfigurationId, :LaunchConfigurationName, :LoadBalancerIdSet, :MaxSize, :MinSize, :ProjectId, :SubnetIdSet, :TerminationPolicySet, :VpcId, :ZoneSet, :RetryPolicy, :InActivityStatus, :Tags, :ServiceSettings, :Ipv6AddressCount, :MultiZoneSubnetPolicy, :HealthCheckType, :LoadBalancerHealthCheckGracePeriod, :InstanceAllocationPolicy, :SpotMixedAllocationPolicy, :CapacityRebalance, :InstanceNameIndexSettings

        def initialize(autoscalinggroupid=nil, autoscalinggroupname=nil, autoscalinggroupstatus=nil, createdtime=nil, defaultcooldown=nil, desiredcapacity=nil, enabledstatus=nil, forwardloadbalancerset=nil, instancecount=nil, inserviceinstancecount=nil, launchconfigurationid=nil, launchconfigurationname=nil, loadbalanceridset=nil, maxsize=nil, minsize=nil, projectid=nil, subnetidset=nil, terminationpolicyset=nil, vpcid=nil, zoneset=nil, retrypolicy=nil, inactivitystatus=nil, tags=nil, servicesettings=nil, ipv6addresscount=nil, multizonesubnetpolicy=nil, healthchecktype=nil, loadbalancerhealthcheckgraceperiod=nil, instanceallocationpolicy=nil, spotmixedallocationpolicy=nil, capacityrebalance=nil, instancenameindexsettings=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @AutoScalingGroupName = autoscalinggroupname
          @AutoScalingGroupStatus = autoscalinggroupstatus
          @CreatedTime = createdtime
          @DefaultCooldown = defaultcooldown
          @DesiredCapacity = desiredcapacity
          @EnabledStatus = enabledstatus
          @ForwardLoadBalancerSet = forwardloadbalancerset
          @InstanceCount = instancecount
          @InServiceInstanceCount = inserviceinstancecount
          @LaunchConfigurationId = launchconfigurationid
          @LaunchConfigurationName = launchconfigurationname
          @LoadBalancerIdSet = loadbalanceridset
          @MaxSize = maxsize
          @MinSize = minsize
          @ProjectId = projectid
          @SubnetIdSet = subnetidset
          @TerminationPolicySet = terminationpolicyset
          @VpcId = vpcid
          @ZoneSet = zoneset
          @RetryPolicy = retrypolicy
          @InActivityStatus = inactivitystatus
          @Tags = tags
          @ServiceSettings = servicesettings
          @Ipv6AddressCount = ipv6addresscount
          @MultiZoneSubnetPolicy = multizonesubnetpolicy
          @HealthCheckType = healthchecktype
          @LoadBalancerHealthCheckGracePeriod = loadbalancerhealthcheckgraceperiod
          @InstanceAllocationPolicy = instanceallocationpolicy
          @SpotMixedAllocationPolicy = spotmixedallocationpolicy
          @CapacityRebalance = capacityrebalance
          @InstanceNameIndexSettings = instancenameindexsettings
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @AutoScalingGroupName = params['AutoScalingGroupName']
          @AutoScalingGroupStatus = params['AutoScalingGroupStatus']
          @CreatedTime = params['CreatedTime']
          @DefaultCooldown = params['DefaultCooldown']
          @DesiredCapacity = params['DesiredCapacity']
          @EnabledStatus = params['EnabledStatus']
          unless params['ForwardLoadBalancerSet'].nil?
            @ForwardLoadBalancerSet = []
            params['ForwardLoadBalancerSet'].each do |i|
              forwardloadbalancer_tmp = ForwardLoadBalancer.new
              forwardloadbalancer_tmp.deserialize(i)
              @ForwardLoadBalancerSet << forwardloadbalancer_tmp
            end
          end
          @InstanceCount = params['InstanceCount']
          @InServiceInstanceCount = params['InServiceInstanceCount']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @LaunchConfigurationName = params['LaunchConfigurationName']
          @LoadBalancerIdSet = params['LoadBalancerIdSet']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @ProjectId = params['ProjectId']
          @SubnetIdSet = params['SubnetIdSet']
          @TerminationPolicySet = params['TerminationPolicySet']
          @VpcId = params['VpcId']
          @ZoneSet = params['ZoneSet']
          @RetryPolicy = params['RetryPolicy']
          @InActivityStatus = params['InActivityStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ServiceSettings'].nil?
            @ServiceSettings = ServiceSettings.new
            @ServiceSettings.deserialize(params['ServiceSettings'])
          end
          @Ipv6AddressCount = params['Ipv6AddressCount']
          @MultiZoneSubnetPolicy = params['MultiZoneSubnetPolicy']
          @HealthCheckType = params['HealthCheckType']
          @LoadBalancerHealthCheckGracePeriod = params['LoadBalancerHealthCheckGracePeriod']
          @InstanceAllocationPolicy = params['InstanceAllocationPolicy']
          unless params['SpotMixedAllocationPolicy'].nil?
            @SpotMixedAllocationPolicy = SpotMixedAllocationPolicy.new
            @SpotMixedAllocationPolicy.deserialize(params['SpotMixedAllocationPolicy'])
          end
          @CapacityRebalance = params['CapacityRebalance']
          unless params['InstanceNameIndexSettings'].nil?
            @InstanceNameIndexSettings = InstanceNameIndexSettings.new
            @InstanceNameIndexSettings.deserialize(params['InstanceNameIndexSettings'])
          end
        end
      end

      # 伸缩组简明信息。
      class AutoScalingGroupAbstract < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param AutoScalingGroupName: 伸缩组名称。
        # @type AutoScalingGroupName: String

        attr_accessor :AutoScalingGroupId, :AutoScalingGroupName

        def initialize(autoscalinggroupid=nil, autoscalinggroupname=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @AutoScalingGroupName = autoscalinggroupname
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @AutoScalingGroupName = params['AutoScalingGroupName']
        end
      end

      # 弹性伸缩事件通知
      class AutoScalingNotification < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param NotificationUserGroupIds: 用户组ID列表。
        # @type NotificationUserGroupIds: Array
        # @param NotificationTypes: 通知事件列表。
        # @type NotificationTypes: Array
        # @param AutoScalingNotificationId: 事件通知ID。
        # @type AutoScalingNotificationId: String
        # @param TargetType: 通知接收端类型。
        # @type TargetType: String
        # @param QueueName: CMQ 队列名。
        # @type QueueName: String
        # @param TopicName: CMQ 主题名。
        # @type TopicName: String

        attr_accessor :AutoScalingGroupId, :NotificationUserGroupIds, :NotificationTypes, :AutoScalingNotificationId, :TargetType, :QueueName, :TopicName

        def initialize(autoscalinggroupid=nil, notificationusergroupids=nil, notificationtypes=nil, autoscalingnotificationid=nil, targettype=nil, queuename=nil, topicname=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @NotificationUserGroupIds = notificationusergroupids
          @NotificationTypes = notificationtypes
          @AutoScalingNotificationId = autoscalingnotificationid
          @TargetType = targettype
          @QueueName = queuename
          @TopicName = topicname
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @NotificationUserGroupIds = params['NotificationUserGroupIds']
          @NotificationTypes = params['NotificationTypes']
          @AutoScalingNotificationId = params['AutoScalingNotificationId']
          @TargetType = params['TargetType']
          @QueueName = params['QueueName']
          @TopicName = params['TopicName']
        end
      end

      # CancelInstanceRefresh请求参数结构体
      class CancelInstanceRefreshRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param RefreshActivityId: 刷新活动ID。
        # @type RefreshActivityId: String

        attr_accessor :AutoScalingGroupId, :RefreshActivityId

        def initialize(autoscalinggroupid=nil, refreshactivityid=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RefreshActivityId = refreshactivityid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RefreshActivityId = params['RefreshActivityId']
        end
      end

      # CancelInstanceRefresh返回参数结构体
      class CancelInstanceRefreshResponse < TencentCloud::Common::AbstractModel
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

      # ClearLaunchConfigurationAttributes请求参数结构体
      class ClearLaunchConfigurationAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: 启动配置ID。
        # @type LaunchConfigurationId: String
        # @param ClearDataDisks: 是否清空数据盘信息，非必填，默认为 false。
        # 填 true 代表清空“数据盘”信息，清空后基于此新创建的云主机将不含有任何数据盘。
        # @type ClearDataDisks: Boolean
        # @param ClearHostNameSettings: 是否清空云服务器主机名相关设置信息，非必填，默认为 false。
        # 填 true 代表清空主机名设置信息，清空后基于此新创建的云主机将不设置主机名。
        # @type ClearHostNameSettings: Boolean
        # @param ClearInstanceNameSettings: 是否清空云服务器实例名相关设置信息，非必填，默认为 false。
        # 填 true 代表清空主机名设置信息，清空后基于此新创建的云主机将按照“as-{{ 伸缩组AutoScalingGroupName }}”进行设置。
        # @type ClearInstanceNameSettings: Boolean
        # @param ClearDisasterRecoverGroupIds: 是否清空置放群组信息，非必填，默认为 false。
        # 填 true 代表清空置放群组信息，清空后基于此新创建的云主机将不指定任何置放群组。
        # @type ClearDisasterRecoverGroupIds: Boolean
        # @param ClearInstanceTags: 是否清空实例标签列表，非必填，默认为 false。
        # 填 true 代表清空实例标签列表，清空后基于此新创建的云主机将不会绑定列表中的标签。
        # @type ClearInstanceTags: Boolean

        attr_accessor :LaunchConfigurationId, :ClearDataDisks, :ClearHostNameSettings, :ClearInstanceNameSettings, :ClearDisasterRecoverGroupIds, :ClearInstanceTags

        def initialize(launchconfigurationid=nil, cleardatadisks=nil, clearhostnamesettings=nil, clearinstancenamesettings=nil, cleardisasterrecovergroupids=nil, clearinstancetags=nil)
          @LaunchConfigurationId = launchconfigurationid
          @ClearDataDisks = cleardatadisks
          @ClearHostNameSettings = clearhostnamesettings
          @ClearInstanceNameSettings = clearinstancenamesettings
          @ClearDisasterRecoverGroupIds = cleardisasterrecovergroupids
          @ClearInstanceTags = clearinstancetags
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @ClearDataDisks = params['ClearDataDisks']
          @ClearHostNameSettings = params['ClearHostNameSettings']
          @ClearInstanceNameSettings = params['ClearInstanceNameSettings']
          @ClearDisasterRecoverGroupIds = params['ClearDisasterRecoverGroupIds']
          @ClearInstanceTags = params['ClearInstanceTags']
        end
      end

      # ClearLaunchConfigurationAttributes返回参数结构体
      class ClearLaunchConfigurationAttributesResponse < TencentCloud::Common::AbstractModel
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

      # CompleteLifecycleAction请求参数结构体
      class CompleteLifecycleActionRequest < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩ID
        # @type LifecycleHookId: String
        # @param LifecycleActionResult: 生命周期动作的结果，取值范围为“CONTINUE”或“ABANDON”
        # @type LifecycleActionResult: String
        # @param InstanceId: 实例ID，“InstanceId”和“LifecycleActionToken”必须填充其中一个
        # @type InstanceId: String
        # @param LifecycleActionToken: “InstanceId”和“LifecycleActionToken”必须填充其中一个
        # @type LifecycleActionToken: String

        attr_accessor :LifecycleHookId, :LifecycleActionResult, :InstanceId, :LifecycleActionToken

        def initialize(lifecyclehookid=nil, lifecycleactionresult=nil, instanceid=nil, lifecycleactiontoken=nil)
          @LifecycleHookId = lifecyclehookid
          @LifecycleActionResult = lifecycleactionresult
          @InstanceId = instanceid
          @LifecycleActionToken = lifecycleactiontoken
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
          @LifecycleActionResult = params['LifecycleActionResult']
          @InstanceId = params['InstanceId']
          @LifecycleActionToken = params['LifecycleActionToken']
        end
      end

      # CompleteLifecycleAction返回参数结构体
      class CompleteLifecycleActionResponse < TencentCloud::Common::AbstractModel
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

      # CreateAutoScalingGroupFromInstance请求参数结构体
      class CreateAutoScalingGroupFromInstanceRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupName: 伸缩组名称，在您账号中必须唯一。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超55个字节。
        # @type AutoScalingGroupName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param MinSize: 最小实例数，取值范围为0-2000。
        # @type MinSize: Integer
        # @param MaxSize: 最大实例数，取值范围为0-2000。
        # @type MaxSize: Integer
        # @param DesiredCapacity: 期望实例数，大小介于最小实例数和最大实例数之间。
        # @type DesiredCapacity: Integer
        # @param InheritInstanceTag: 是否继承实例标签，默认值为False
        # @type InheritInstanceTag: Boolean

        attr_accessor :AutoScalingGroupName, :InstanceId, :MinSize, :MaxSize, :DesiredCapacity, :InheritInstanceTag

        def initialize(autoscalinggroupname=nil, instanceid=nil, minsize=nil, maxsize=nil, desiredcapacity=nil, inheritinstancetag=nil)
          @AutoScalingGroupName = autoscalinggroupname
          @InstanceId = instanceid
          @MinSize = minsize
          @MaxSize = maxsize
          @DesiredCapacity = desiredcapacity
          @InheritInstanceTag = inheritinstancetag
        end

        def deserialize(params)
          @AutoScalingGroupName = params['AutoScalingGroupName']
          @InstanceId = params['InstanceId']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @DesiredCapacity = params['DesiredCapacity']
          @InheritInstanceTag = params['InheritInstanceTag']
        end
      end

      # CreateAutoScalingGroupFromInstance返回参数结构体
      class CreateAutoScalingGroupFromInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingGroupId, :RequestId

        def initialize(autoscalinggroupid=nil, requestid=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAutoScalingGroup请求参数结构体
      class CreateAutoScalingGroupRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupName: 伸缩组名称，在您账号中必须唯一。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超55个字节。
        # @type AutoScalingGroupName: String
        # @param LaunchConfigurationId: 启动配置ID
        # @type LaunchConfigurationId: String
        # @param MaxSize: 最大实例数，取值范围为0-2000。
        # @type MaxSize: Integer
        # @param MinSize: 最小实例数，取值范围为0-2000。
        # @type MinSize: Integer
        # @param VpcId: VPC ID，基础网络则填空字符串
        # @type VpcId: String
        # @param DefaultCooldown: 默认冷却时间，单位秒，默认值为300
        # @type DefaultCooldown: Integer
        # @param DesiredCapacity: 期望实例数，大小介于最小实例数和最大实例数之间
        # @type DesiredCapacity: Integer
        # @param LoadBalancerIds: 传统负载均衡器ID列表，目前长度上限为20，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        # @type LoadBalancerIds: Array
        # @param ProjectId: 伸缩组内实例所属项目ID。不填为默认项目。
        # @type ProjectId: Integer
        # @param ForwardLoadBalancers: 应用型负载均衡器列表，目前长度上限为100，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        # @type ForwardLoadBalancers: Array
        # @param SubnetIds: 子网ID列表，VPC场景下必须指定子网。多个子网以填写顺序为优先级，依次进行尝试，直至可以成功创建实例。
        # @type SubnetIds: Array
        # @param TerminationPolicies: 销毁策略，目前长度上限为1。取值包括 OLDEST_INSTANCE 和 NEWEST_INSTANCE，默认取值为 OLDEST_INSTANCE。
        # <li> OLDEST_INSTANCE 优先销毁伸缩组中最旧的实例。</li>
        # <li> NEWEST_INSTANCE，优先销毁伸缩组中最新的实例。</li>
        # @type TerminationPolicies: Array
        # @param Zones: 可用区列表，基础网络场景下必须指定可用区。多个可用区以填写顺序为优先级，依次进行尝试，直至可以成功创建实例。
        # @type Zones: Array
        # @param RetryPolicy: 重试策略，取值包括 IMMEDIATE_RETRY、 INCREMENTAL_INTERVALS、NO_RETRY，默认取值为 IMMEDIATE_RETRY。部分成功的伸缩活动判定为一次失败活动。
        # <li> IMMEDIATE_RETRY，立即重试，在较短时间内快速重试，连续失败超过一定次数（5次）后不再重试。</li>
        # <li> INCREMENTAL_INTERVALS，间隔递增重试，随着连续失败次数的增加，重试间隔逐渐增大。前 10 次重试间隔与立即重试模式相同，后续逐步递增至 10 分钟、30 分钟、60 分钟、一天。</li>
        # <li> NO_RETRY，不进行重试，直到再次收到用户调用或者告警信息后才会重试。</li>
        # @type RetryPolicy: String
        # @param ZonesCheckPolicy: 可用区校验策略，取值包括 ALL 和 ANY，默认取值为ANY。
        # <li> ALL，所有可用区（Zone）或子网（SubnetId）都可用则通过校验，否则校验报错。</li>
        # <li> ANY，存在任何一个可用区（Zone）或子网（SubnetId）可用则通过校验，否则校验报错。</li>

        # 可用区或子网不可用的常见原因包括该可用区CVM实例类型售罄、该可用区CBS云盘售罄、该可用区配额不足、该子网IP不足等。
        # 如果 Zones/SubnetIds 中可用区或者子网不存在，则无论 ZonesCheckPolicy 采用何种取值，都会校验报错。
        # @type ZonesCheckPolicy: String
        # @param Tags: 标签描述列表。通过指定该参数可以支持绑定标签到伸缩组。同时绑定标签到相应的资源实例。每个伸缩组最多支持30个标签。
        # @type Tags: Array
        # @param ServiceSettings: 服务设置，包括云监控不健康替换等服务设置。
        # @type ServiceSettings: :class:`Tencentcloud::As.v20180419.models.ServiceSettings`
        # @param Ipv6AddressCount: 实例具有IPv6地址数量的配置，取值包括 0、1，默认值为0。
        # @type Ipv6AddressCount: Integer
        # @param MultiZoneSubnetPolicy: 多可用区/子网策略，取值包括 PRIORITY 和 EQUALITY，默认为 PRIORITY。
        # <li> PRIORITY，按照可用区/子网列表的顺序，作为优先级来尝试创建实例，如果优先级最高的可用区/子网可以创建成功，则总在该可用区/子网创建。</li>
        # <li> EQUALITY：扩容出的实例会打散到多个可用区/子网，保证扩容后的各个可用区/子网实例数相对均衡。</li>

        # 与本策略相关的注意点：
        # <li> 当伸缩组为基础网络时，本策略适用于多可用区；当伸缩组为VPC网络时，本策略适用于多子网，此时不再考虑可用区因素，例如四个子网ABCD，其中ABC处于可用区1，D处于可用区2，此时考虑子网ABCD进行排序，而不考虑可用区1、2。</li>
        # <li> 本策略适用于多可用区/子网，不适用于启动配置的多机型。多机型按照优先级策略进行选择。</li>
        # <li> 按照 PRIORITY 策略创建实例时，先保证多机型的策略，后保证多可用区/子网的策略。例如多机型A、B，多子网1、2、3，会按照A1、A2、A3、B1、B2、B3 进行尝试，如果A1售罄，会尝试A2（而非B1）。</li>
        # @type MultiZoneSubnetPolicy: String
        # @param HealthCheckType: 伸缩组实例健康检查类型，取值如下：
        # <li>CVM：根据实例网络状态判断实例是否处于不健康状态，不健康的网络状态即发生实例 PING 不可达事件，详细判断标准可参考[实例健康检查](https://cloud.tencent.com/document/product/377/8553)</li>
        # <li>CLB：根据 CLB 的健康检查状态判断实例是否处于不健康状态，CLB健康检查原理可参考[健康检查](https://cloud.tencent.com/document/product/214/6097) </li>
        # 如果选择了`CLB`类型，伸缩组将同时检查实例网络状态与CLB健康检查状态，如果出现实例网络状态不健康，实例将被标记为 UNHEALTHY 状态；如果出现 CLB 健康检查状态异常，实例将被标记为CLB_UNHEALTHY 状态，如果两个异常状态同时出现，实例`HealthStatus`字段将返回 UNHEALTHY|CLB_UNHEALTHY。默认值：CLB
        # @type HealthCheckType: String
        # @param LoadBalancerHealthCheckGracePeriod: CLB健康检查宽限期，当扩容的实例进入`IN_SERVICE`后，在宽限期时间范围内将不会被标记为不健康`CLB_UNHEALTHY`。<br>默认值：0。取值范围[0, 7200]，单位：秒。
        # @type LoadBalancerHealthCheckGracePeriod: Integer
        # @param InstanceAllocationPolicy: 实例分配策略，取值包括 LAUNCH_CONFIGURATION 和 SPOT_MIXED，默认取 LAUNCH_CONFIGURATION。
        # <li> LAUNCH_CONFIGURATION，代表传统的按照启动配置模式。</li>
        # <li> SPOT_MIXED，代表竞价混合模式。目前仅支持启动配置为按量计费模式时使用混合模式，混合模式下，伸缩组将根据设定扩容按量或竞价机型。使用混合模式时，关联的启动配置的计费类型不可被修改。</li>
        # @type InstanceAllocationPolicy: String
        # @param SpotMixedAllocationPolicy: 竞价混合模式下，各计费类型实例的分配策略。
        # 仅当 InstanceAllocationPolicy 取 SPOT_MIXED 时可用。
        # @type SpotMixedAllocationPolicy: :class:`Tencentcloud::As.v20180419.models.SpotMixedAllocationPolicy`
        # @param CapacityRebalance: 容量重平衡功能，仅对伸缩组内的竞价实例有效。取值范围：
        # <li> TRUE，开启该功能，当伸缩组内的竞价实例即将被竞价实例服务自动回收前，AS 主动发起竞价实例销毁流程，如果有配置过缩容 hook，则销毁前 hook 会生效。销毁流程启动后，AS 会异步开启一个扩容活动，用于补齐期望实例数。</li>
        # <li> FALSE，不开启该功能，则 AS 等待竞价实例被销毁后才会去扩容补齐伸缩组期望实例数。</li>
        # 默认取 FALSE。
        # @type CapacityRebalance: Boolean
        # @param InstanceNameIndexSettings: 实例名称序号相关设置。若不指定该参数，则默认不开启。开启后为伸缩组内自动创建的实例名称添加递增的数字序号。
        # @type InstanceNameIndexSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameIndexSettings`

        attr_accessor :AutoScalingGroupName, :LaunchConfigurationId, :MaxSize, :MinSize, :VpcId, :DefaultCooldown, :DesiredCapacity, :LoadBalancerIds, :ProjectId, :ForwardLoadBalancers, :SubnetIds, :TerminationPolicies, :Zones, :RetryPolicy, :ZonesCheckPolicy, :Tags, :ServiceSettings, :Ipv6AddressCount, :MultiZoneSubnetPolicy, :HealthCheckType, :LoadBalancerHealthCheckGracePeriod, :InstanceAllocationPolicy, :SpotMixedAllocationPolicy, :CapacityRebalance, :InstanceNameIndexSettings

        def initialize(autoscalinggroupname=nil, launchconfigurationid=nil, maxsize=nil, minsize=nil, vpcid=nil, defaultcooldown=nil, desiredcapacity=nil, loadbalancerids=nil, projectid=nil, forwardloadbalancers=nil, subnetids=nil, terminationpolicies=nil, zones=nil, retrypolicy=nil, zonescheckpolicy=nil, tags=nil, servicesettings=nil, ipv6addresscount=nil, multizonesubnetpolicy=nil, healthchecktype=nil, loadbalancerhealthcheckgraceperiod=nil, instanceallocationpolicy=nil, spotmixedallocationpolicy=nil, capacityrebalance=nil, instancenameindexsettings=nil)
          @AutoScalingGroupName = autoscalinggroupname
          @LaunchConfigurationId = launchconfigurationid
          @MaxSize = maxsize
          @MinSize = minsize
          @VpcId = vpcid
          @DefaultCooldown = defaultcooldown
          @DesiredCapacity = desiredcapacity
          @LoadBalancerIds = loadbalancerids
          @ProjectId = projectid
          @ForwardLoadBalancers = forwardloadbalancers
          @SubnetIds = subnetids
          @TerminationPolicies = terminationpolicies
          @Zones = zones
          @RetryPolicy = retrypolicy
          @ZonesCheckPolicy = zonescheckpolicy
          @Tags = tags
          @ServiceSettings = servicesettings
          @Ipv6AddressCount = ipv6addresscount
          @MultiZoneSubnetPolicy = multizonesubnetpolicy
          @HealthCheckType = healthchecktype
          @LoadBalancerHealthCheckGracePeriod = loadbalancerhealthcheckgraceperiod
          @InstanceAllocationPolicy = instanceallocationpolicy
          @SpotMixedAllocationPolicy = spotmixedallocationpolicy
          @CapacityRebalance = capacityrebalance
          @InstanceNameIndexSettings = instancenameindexsettings
        end

        def deserialize(params)
          @AutoScalingGroupName = params['AutoScalingGroupName']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @VpcId = params['VpcId']
          @DefaultCooldown = params['DefaultCooldown']
          @DesiredCapacity = params['DesiredCapacity']
          @LoadBalancerIds = params['LoadBalancerIds']
          @ProjectId = params['ProjectId']
          unless params['ForwardLoadBalancers'].nil?
            @ForwardLoadBalancers = []
            params['ForwardLoadBalancers'].each do |i|
              forwardloadbalancer_tmp = ForwardLoadBalancer.new
              forwardloadbalancer_tmp.deserialize(i)
              @ForwardLoadBalancers << forwardloadbalancer_tmp
            end
          end
          @SubnetIds = params['SubnetIds']
          @TerminationPolicies = params['TerminationPolicies']
          @Zones = params['Zones']
          @RetryPolicy = params['RetryPolicy']
          @ZonesCheckPolicy = params['ZonesCheckPolicy']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ServiceSettings'].nil?
            @ServiceSettings = ServiceSettings.new
            @ServiceSettings.deserialize(params['ServiceSettings'])
          end
          @Ipv6AddressCount = params['Ipv6AddressCount']
          @MultiZoneSubnetPolicy = params['MultiZoneSubnetPolicy']
          @HealthCheckType = params['HealthCheckType']
          @LoadBalancerHealthCheckGracePeriod = params['LoadBalancerHealthCheckGracePeriod']
          @InstanceAllocationPolicy = params['InstanceAllocationPolicy']
          unless params['SpotMixedAllocationPolicy'].nil?
            @SpotMixedAllocationPolicy = SpotMixedAllocationPolicy.new
            @SpotMixedAllocationPolicy.deserialize(params['SpotMixedAllocationPolicy'])
          end
          @CapacityRebalance = params['CapacityRebalance']
          unless params['InstanceNameIndexSettings'].nil?
            @InstanceNameIndexSettings = InstanceNameIndexSettings.new
            @InstanceNameIndexSettings.deserialize(params['InstanceNameIndexSettings'])
          end
        end
      end

      # CreateAutoScalingGroup返回参数结构体
      class CreateAutoScalingGroupResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingGroupId, :RequestId

        def initialize(autoscalinggroupid=nil, requestid=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLaunchConfiguration请求参数结构体
      class CreateLaunchConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationName: 启动配置显示名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type LaunchConfigurationName: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-8toqc6s3`。镜像Id与镜像族名称，二者必填一个且只能填写一个。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        # @type ImageId: String
        # @param ProjectId: 启动配置所属项目ID。不填为默认项目。
        # 注意：伸缩组内实例所属项目ID取伸缩组项目ID，与这里取值无关。
        # @type ProjectId: Integer
        # @param InstanceType: 实例机型。不同实例机型指定了不同的资源规格，具体取值可通过调用接口 [DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749) 来获得最新的规格表或参见[实例类型](https://cloud.tencent.com/document/product/213/11518)描述。
        # `InstanceType`和`InstanceTypes`参数互斥，二者必填一个且只能填写一个。
        # @type InstanceType: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::As.v20180419.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘，最多支持指定11块数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::As.v20180419.models.InternetAccessible`
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        # @type LoginSettings: :class:`Tencentcloud::As.v20180419.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的`SecurityGroupId`字段来获取。若不指定该参数，则默认不绑定安全组。
        # @type SecurityGroupIds: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::As.v20180419.models.EnhancedService`
        # @param UserData: 经过 Base64 编码后的自定义数据，最大长度不超过16KB。
        # @type UserData: String
        # @param InstanceChargeType: 实例计费类型，CVM默认值按照POSTPAID_BY_HOUR处理。
        # <li>POSTPAID_BY_HOUR：按小时后付费</li>
        # <li>SPOTPAID：竞价付费</li>
        # <li>PREPAID：预付费，即包年包月</li>
        # <li>CDCPAID：专用集群付费</li>
        # @type InstanceChargeType: String
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        # @type InstanceMarketOptions: :class:`Tencentcloud::As.v20180419.models.InstanceMarketOptionsRequest`
        # @param InstanceTypes: 实例机型列表，不同实例机型指定了不同的资源规格，最多支持10种实例机型。
        # `InstanceType`和`InstanceTypes`参数互斥，二者必填一个且只能填写一个。
        # @type InstanceTypes: Array
        # @param CamRoleName: CAM角色名称。可通过DescribeRoleList接口返回值中的roleName获取。
        # @type CamRoleName: String
        # @param InstanceTypesCheckPolicy: 实例类型校验策略，取值包括 ALL 和 ANY，默认取值为ANY。
        # <li> ALL，所有实例类型（InstanceType）都可用则通过校验，否则校验报错。</li>
        # <li> ANY，存在任何一个实例类型（InstanceType）可用则通过校验，否则校验报错。</li>

        # 实例类型不可用的常见原因包括该实例类型售罄、对应云盘售罄等。
        # 如果 InstanceTypes 中一款机型不存在或者已下线，则无论 InstanceTypesCheckPolicy 采用何种取值，都会校验报错。
        # @type InstanceTypesCheckPolicy: String
        # @param InstanceTags: 标签列表。通过指定该参数，可以为扩容的实例绑定标签。最多支持指定10个标签。
        # @type InstanceTags: Array
        # @param Tags: 标签描述列表。通过指定该参数可以支持绑定标签到启动配置。每个启动配置最多支持30个标签。
        # @type Tags: Array
        # @param HostNameSettings: 云服务器主机名（HostName）的相关设置。
        # @type HostNameSettings: :class:`Tencentcloud::As.v20180419.models.HostNameSettings`
        # @param InstanceNameSettings: 云服务器实例名（InstanceName）的相关设置。
        # 如果用户在启动配置中设置此字段，则伸缩组创建出的实例 InstanceName 参照此字段进行设置，并传递给 CVM；如果用户未在启动配置中设置此字段，则伸缩组创建出的实例 InstanceName 按照“as-{{ 伸缩组AutoScalingGroupName }}”进行设置，并传递给 CVM。
        # @type InstanceNameSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameSettings`
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::As.v20180419.models.InstanceChargePrepaid`
        # @param DiskTypePolicy: 云盘类型选择策略，默认取值 ORIGINAL，取值范围：
        # <li>ORIGINAL：使用设置的云盘类型</li>
        # <li>AUTOMATIC：自动选择当前可用的云盘类型</li>
        # @type DiskTypePolicy: String
        # @param HpcClusterId: 高性能计算集群ID。<br>
        # 注意：此字段默认为空。
        # @type HpcClusterId: String
        # @param IPv6InternetAccessible: IPv6公网带宽相关信息设置。若新建实例包含IPv6地址，该参数可为新建实例的IPv6地址分配公网带宽。关联启动配置的伸缩组Ipv6AddressCount参数为0时，该参数不会生效。
        # @type IPv6InternetAccessible: :class:`Tencentcloud::As.v20180419.models.IPv6InternetAccessible`
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param ImageFamily: 镜像族名称。镜像Id与镜像族名称，二者必填一个且只能填写一个。
        # @type ImageFamily: String
        # @param DedicatedClusterId: 本地专用集群ID。
        # @type DedicatedClusterId: String

        attr_accessor :LaunchConfigurationName, :ImageId, :ProjectId, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :LoginSettings, :SecurityGroupIds, :EnhancedService, :UserData, :InstanceChargeType, :InstanceMarketOptions, :InstanceTypes, :CamRoleName, :InstanceTypesCheckPolicy, :InstanceTags, :Tags, :HostNameSettings, :InstanceNameSettings, :InstanceChargePrepaid, :DiskTypePolicy, :HpcClusterId, :IPv6InternetAccessible, :DisasterRecoverGroupIds, :ImageFamily, :DedicatedClusterId

        def initialize(launchconfigurationname=nil, imageid=nil, projectid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, loginsettings=nil, securitygroupids=nil, enhancedservice=nil, userdata=nil, instancechargetype=nil, instancemarketoptions=nil, instancetypes=nil, camrolename=nil, instancetypescheckpolicy=nil, instancetags=nil, tags=nil, hostnamesettings=nil, instancenamesettings=nil, instancechargeprepaid=nil, disktypepolicy=nil, hpcclusterid=nil, ipv6internetaccessible=nil, disasterrecovergroupids=nil, imagefamily=nil, dedicatedclusterid=nil)
          @LaunchConfigurationName = launchconfigurationname
          @ImageId = imageid
          @ProjectId = projectid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @EnhancedService = enhancedservice
          @UserData = userdata
          @InstanceChargeType = instancechargetype
          @InstanceMarketOptions = instancemarketoptions
          @InstanceTypes = instancetypes
          @CamRoleName = camrolename
          @InstanceTypesCheckPolicy = instancetypescheckpolicy
          @InstanceTags = instancetags
          @Tags = tags
          @HostNameSettings = hostnamesettings
          @InstanceNameSettings = instancenamesettings
          @InstanceChargePrepaid = instancechargeprepaid
          @DiskTypePolicy = disktypepolicy
          @HpcClusterId = hpcclusterid
          @IPv6InternetAccessible = ipv6internetaccessible
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @ImageFamily = imagefamily
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @LaunchConfigurationName = params['LaunchConfigurationName']
          @ImageId = params['ImageId']
          @ProjectId = params['ProjectId']
          @InstanceType = params['InstanceType']
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
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @UserData = params['UserData']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @InstanceTypes = params['InstanceTypes']
          @CamRoleName = params['CamRoleName']
          @InstanceTypesCheckPolicy = params['InstanceTypesCheckPolicy']
          unless params['InstanceTags'].nil?
            @InstanceTags = []
            params['InstanceTags'].each do |i|
              instancetag_tmp = InstanceTag.new
              instancetag_tmp.deserialize(i)
              @InstanceTags << instancetag_tmp
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
          unless params['HostNameSettings'].nil?
            @HostNameSettings = HostNameSettings.new
            @HostNameSettings.deserialize(params['HostNameSettings'])
          end
          unless params['InstanceNameSettings'].nil?
            @InstanceNameSettings = InstanceNameSettings.new
            @InstanceNameSettings.deserialize(params['InstanceNameSettings'])
          end
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DiskTypePolicy = params['DiskTypePolicy']
          @HpcClusterId = params['HpcClusterId']
          unless params['IPv6InternetAccessible'].nil?
            @IPv6InternetAccessible = IPv6InternetAccessible.new
            @IPv6InternetAccessible.deserialize(params['IPv6InternetAccessible'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @ImageFamily = params['ImageFamily']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # CreateLaunchConfiguration返回参数结构体
      class CreateLaunchConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: 当通过本接口来创建启动配置时会返回该参数，表示启动配置ID。
        # @type LaunchConfigurationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LaunchConfigurationId, :RequestId

        def initialize(launchconfigurationid=nil, requestid=nil)
          @LaunchConfigurationId = launchconfigurationid
          @RequestId = requestid
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLifecycleHook请求参数结构体
      class CreateLifecycleHookRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param LifecycleHookName: 生命周期挂钩名称。名称仅支持中文、英文、数字、下划线（_）、短横线（-）、小数点（.），最大长度不能超128个字节。
        # @type LifecycleHookName: String
        # @param LifecycleTransition: 进行生命周期挂钩的场景，取值范围包括 INSTANCE_LAUNCHING 和 INSTANCE_TERMINATING
        # @type LifecycleTransition: String
        # @param DefaultResult: 定义伸缩组在生命周期挂钩超时的情况下应采取的操作，取值范围是 CONTINUE 或 ABANDON，默认值为 CONTINUE
        # @type DefaultResult: String
        # @param HeartbeatTimeout: 生命周期挂钩超时之前可以经过的最长时间（以秒为单位），范围从30到7200秒，默认值为300秒
        # @type HeartbeatTimeout: Integer
        # @param NotificationMetadata: 弹性伸缩向通知目标发送的附加信息，配置通知时使用,默认值为空字符串""。最大长度不能超过1024个字节。
        # @type NotificationMetadata: String
        # @param NotificationTarget: 通知目标。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        # @type NotificationTarget: :class:`Tencentcloud::As.v20180419.models.NotificationTarget`
        # @param LifecycleTransitionType: 进行生命周期挂钩的场景类型，取值范围包括NORMAL 和 EXTENSION。说明：设置为EXTENSION值，在AttachInstances、DetachInstances、RemoveInstaces接口时会触发生命周期挂钩操作，值为NORMAL则不会在这些接口中触发生命周期挂钩。
        # @type LifecycleTransitionType: String
        # @param LifecycleCommand: 远程命令执行对象。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        # @type LifecycleCommand: :class:`Tencentcloud::As.v20180419.models.LifecycleCommand`

        attr_accessor :AutoScalingGroupId, :LifecycleHookName, :LifecycleTransition, :DefaultResult, :HeartbeatTimeout, :NotificationMetadata, :NotificationTarget, :LifecycleTransitionType, :LifecycleCommand

        def initialize(autoscalinggroupid=nil, lifecyclehookname=nil, lifecycletransition=nil, defaultresult=nil, heartbeattimeout=nil, notificationmetadata=nil, notificationtarget=nil, lifecycletransitiontype=nil, lifecyclecommand=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @LifecycleHookName = lifecyclehookname
          @LifecycleTransition = lifecycletransition
          @DefaultResult = defaultresult
          @HeartbeatTimeout = heartbeattimeout
          @NotificationMetadata = notificationmetadata
          @NotificationTarget = notificationtarget
          @LifecycleTransitionType = lifecycletransitiontype
          @LifecycleCommand = lifecyclecommand
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @LifecycleHookName = params['LifecycleHookName']
          @LifecycleTransition = params['LifecycleTransition']
          @DefaultResult = params['DefaultResult']
          @HeartbeatTimeout = params['HeartbeatTimeout']
          @NotificationMetadata = params['NotificationMetadata']
          unless params['NotificationTarget'].nil?
            @NotificationTarget = NotificationTarget.new
            @NotificationTarget.deserialize(params['NotificationTarget'])
          end
          @LifecycleTransitionType = params['LifecycleTransitionType']
          unless params['LifecycleCommand'].nil?
            @LifecycleCommand = LifecycleCommand.new
            @LifecycleCommand.deserialize(params['LifecycleCommand'])
          end
        end
      end

      # CreateLifecycleHook返回参数结构体
      class CreateLifecycleHookResponse < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩ID
        # @type LifecycleHookId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LifecycleHookId, :RequestId

        def initialize(lifecyclehookid=nil, requestid=nil)
          @LifecycleHookId = lifecyclehookid
          @RequestId = requestid
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
          @RequestId = params['RequestId']
        end
      end

      # CreateNotificationConfiguration请求参数结构体
      class CreateNotificationConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param NotificationTypes: 通知类型，即为需要订阅的通知类型集合，取值范围如下：
        # <li>SCALE_OUT_SUCCESSFUL：扩容成功</li>
        # <li>SCALE_OUT_FAILED：扩容失败</li>
        # <li>SCALE_IN_SUCCESSFUL：缩容成功</li>
        # <li>SCALE_IN_FAILED：缩容失败</li>
        # <li>REPLACE_UNHEALTHY_INSTANCE_SUCCESSFUL：替换不健康子机成功</li>
        # <li>REPLACE_UNHEALTHY_INSTANCE_FAILED：替换不健康子机失败</li>
        # @type NotificationTypes: Array
        # @param NotificationUserGroupIds: 通知组ID，即为用户组ID集合，用户组ID可以通过[ListGroups](https://cloud.tencent.com/document/product/598/34589)查询。
        # @type NotificationUserGroupIds: Array
        # @param TargetType: 通知接收端类型，取值如下
        # <br><li>USER_GROUP：用户组
        # <br><li>CMQ_QUEUE：CMQ 队列
        # <br><li>CMQ_TOPIC：CMQ 主题
        # <br><li>TDMQ_CMQ_TOPIC：TDMQ CMQ 主题
        # <br><li>TDMQ_CMQ_QUEUE：TDMQ CMQ 队列

        # 默认值为：`USER_GROUP`。
        # @type TargetType: String
        # @param QueueName: CMQ 队列名称，如 TargetType 取值为 `CMQ_QUEUE` 或 `TDMQ_CMQ_QUEUE` 时，该字段必填。
        # @type QueueName: String
        # @param TopicName: CMQ 主题名称，如 TargetType 取值为 `CMQ_TOPIC` 或 `TDMQ_CMQ_TOPIC` 时，该字段必填。
        # @type TopicName: String

        attr_accessor :AutoScalingGroupId, :NotificationTypes, :NotificationUserGroupIds, :TargetType, :QueueName, :TopicName

        def initialize(autoscalinggroupid=nil, notificationtypes=nil, notificationusergroupids=nil, targettype=nil, queuename=nil, topicname=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @NotificationTypes = notificationtypes
          @NotificationUserGroupIds = notificationusergroupids
          @TargetType = targettype
          @QueueName = queuename
          @TopicName = topicname
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @NotificationTypes = params['NotificationTypes']
          @NotificationUserGroupIds = params['NotificationUserGroupIds']
          @TargetType = params['TargetType']
          @QueueName = params['QueueName']
          @TopicName = params['TopicName']
        end
      end

      # CreateNotificationConfiguration返回参数结构体
      class CreateNotificationConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingNotificationId: 通知ID。
        # @type AutoScalingNotificationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingNotificationId, :RequestId

        def initialize(autoscalingnotificationid=nil, requestid=nil)
          @AutoScalingNotificationId = autoscalingnotificationid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoScalingNotificationId = params['AutoScalingNotificationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScalingPolicy请求参数结构体
      class CreateScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param ScalingPolicyName: 告警触发策略名称。
        # @type ScalingPolicyName: String
        # @param ScalingPolicyType: 告警触发策略类型，默认类型为SIMPLE。取值范围：<br><li>SIMPLE：简单策略</li><li>TARGET_TRACKING：目标追踪策略</li>
        # @type ScalingPolicyType: String
        # @param AdjustmentType: 告警触发后，期望实例数修改方式，仅适用于简单策略。取值范围：<br><li>CHANGE_IN_CAPACITY：增加或减少若干期望实例数</li><li>EXACT_CAPACITY：调整至指定期望实例数</li> <li>PERCENT_CHANGE_IN_CAPACITY：按百分比调整期望实例数</li>
        # @type AdjustmentType: String
        # @param AdjustmentValue: 告警触发后，期望实例数的调整值，仅适用于简单策略。
        # <li>当 AdjustmentType 为 CHANGE_IN_CAPACITY 时，AdjustmentValue 为正数表示告警触发后增加实例，为负数表示告警触发后减少实例 </li>
        # <li> 当 AdjustmentType 为 EXACT_CAPACITY 时，AdjustmentValue 的值即为告警触发后新的期望实例数，需要大于或等于0 </li>
        # <li> 当 AdjustmentType 为 PERCENT_CHANGE_IN_CAPACITY 时，AdjusmentValue 为正数表示告警触发后按百分比增加实例，为负数表示告警触发后按百分比减少实例，单位是：%。</li>
        # @type AdjustmentValue: Integer
        # @param Cooldown: 冷却时间，单位为秒，仅适用于简单策略。默认冷却时间300秒。
        # @type Cooldown: Integer
        # @param MetricAlarm: 告警监控指标，仅适用于简单策略。
        # @type MetricAlarm: :class:`Tencentcloud::As.v20180419.models.MetricAlarm`
        # @param PredefinedMetricType: 预定义监控项，仅适用于目标追踪策略。取值范围：
        # <li>ASG_AVG_CPU_UTILIZATION：平均CPU使用率</li>
        # <li>ASG_AVG_LAN_TRAFFIC_OUT：平均内网出带宽</li>
        # <li>ASG_AVG_LAN_TRAFFIC_IN：平均内网入带宽</li>
        # <li>ASG_AVG_WAN_TRAFFIC_OUT：平均外网出带宽</li>
        # <li>ASG_AVG_WAN_TRAFFIC_IN：平均外网入带宽</li>
        # @type PredefinedMetricType: String
        # @param TargetValue: 目标值，仅适用于目标追踪策略。
        # <li>ASG_AVG_CPU_UTILIZATION：[1, 100)，单位：%</li>
        # <li>ASG_AVG_LAN_TRAFFIC_OUT：>0，单位：Mbps</li>
        # <li>ASG_AVG_LAN_TRAFFIC_IN：>0，单位：Mbps</li>
        # <li>ASG_AVG_WAN_TRAFFIC_OUT：>0，单位：Mbps</li>
        # <li>ASG_AVG_WAN_TRAFFIC_IN：>0，单位：Mbps</li>
        # @type TargetValue: Integer
        # @param EstimatedInstanceWarmup: 实例预热时间，单位为秒，仅适用于目标追踪策略。取值范围为0-3600，默认预热时间300秒。
        # @type EstimatedInstanceWarmup: Integer
        # @param DisableScaleIn: 是否禁用缩容，仅适用于目标追踪策略，默认值为 false。取值范围：
        # <li>true：目标追踪策略仅触发扩容</li>
        # <li>false：目标追踪策略触发扩容和缩容</li>
        # @type DisableScaleIn: Boolean
        # @param NotificationUserGroupIds: 此参数已不再生效，请使用[创建通知](https://cloud.tencent.com/document/api/377/33185)。
        # 通知组ID，即为用户组ID集合。
        # @type NotificationUserGroupIds: Array

        attr_accessor :AutoScalingGroupId, :ScalingPolicyName, :ScalingPolicyType, :AdjustmentType, :AdjustmentValue, :Cooldown, :MetricAlarm, :PredefinedMetricType, :TargetValue, :EstimatedInstanceWarmup, :DisableScaleIn, :NotificationUserGroupIds

        def initialize(autoscalinggroupid=nil, scalingpolicyname=nil, scalingpolicytype=nil, adjustmenttype=nil, adjustmentvalue=nil, cooldown=nil, metricalarm=nil, predefinedmetrictype=nil, targetvalue=nil, estimatedinstancewarmup=nil, disablescalein=nil, notificationusergroupids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @ScalingPolicyName = scalingpolicyname
          @ScalingPolicyType = scalingpolicytype
          @AdjustmentType = adjustmenttype
          @AdjustmentValue = adjustmentvalue
          @Cooldown = cooldown
          @MetricAlarm = metricalarm
          @PredefinedMetricType = predefinedmetrictype
          @TargetValue = targetvalue
          @EstimatedInstanceWarmup = estimatedinstancewarmup
          @DisableScaleIn = disablescalein
          @NotificationUserGroupIds = notificationusergroupids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @ScalingPolicyName = params['ScalingPolicyName']
          @ScalingPolicyType = params['ScalingPolicyType']
          @AdjustmentType = params['AdjustmentType']
          @AdjustmentValue = params['AdjustmentValue']
          @Cooldown = params['Cooldown']
          unless params['MetricAlarm'].nil?
            @MetricAlarm = MetricAlarm.new
            @MetricAlarm.deserialize(params['MetricAlarm'])
          end
          @PredefinedMetricType = params['PredefinedMetricType']
          @TargetValue = params['TargetValue']
          @EstimatedInstanceWarmup = params['EstimatedInstanceWarmup']
          @DisableScaleIn = params['DisableScaleIn']
          @NotificationUserGroupIds = params['NotificationUserGroupIds']
        end
      end

      # CreateScalingPolicy返回参数结构体
      class CreateScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingPolicyId: 告警触发策略ID。
        # @type AutoScalingPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingPolicyId, :RequestId

        def initialize(autoscalingpolicyid=nil, requestid=nil)
          @AutoScalingPolicyId = autoscalingpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoScalingPolicyId = params['AutoScalingPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScheduledAction请求参数结构体
      class CreateScheduledActionRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param ScheduledActionName: 定时任务名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。同一伸缩组下必须唯一。
        # @type ScheduledActionName: String
        # @param MaxSize: 当定时任务触发时，设置的伸缩组最大实例数。
        # @type MaxSize: Integer
        # @param MinSize: 当定时任务触发时，设置的伸缩组最小实例数。
        # @type MinSize: Integer
        # @param DesiredCapacity: 当定时任务触发时，设置的伸缩组期望实例数。
        # @type DesiredCapacity: Integer
        # @param StartTime: 定时任务的首次触发时间，取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。
        # @type StartTime: String
        # @param EndTime: 定时任务的结束时间，取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。<br><br>此参数与`Recurrence`需要同时指定，到达结束时间之后，定时任务将不再生效。
        # @type EndTime: String
        # @param Recurrence: 定时任务的重复方式。为标准 Cron 格式<br><br>此参数与`EndTime`需要同时指定。
        # @type Recurrence: String

        attr_accessor :AutoScalingGroupId, :ScheduledActionName, :MaxSize, :MinSize, :DesiredCapacity, :StartTime, :EndTime, :Recurrence

        def initialize(autoscalinggroupid=nil, scheduledactionname=nil, maxsize=nil, minsize=nil, desiredcapacity=nil, starttime=nil, endtime=nil, recurrence=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @ScheduledActionName = scheduledactionname
          @MaxSize = maxsize
          @MinSize = minsize
          @DesiredCapacity = desiredcapacity
          @StartTime = starttime
          @EndTime = endtime
          @Recurrence = recurrence
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @ScheduledActionName = params['ScheduledActionName']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @DesiredCapacity = params['DesiredCapacity']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Recurrence = params['Recurrence']
        end
      end

      # CreateScheduledAction返回参数结构体
      class CreateScheduledActionResponse < TencentCloud::Common::AbstractModel
        # @param ScheduledActionId: 定时任务ID
        # @type ScheduledActionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScheduledActionId, :RequestId

        def initialize(scheduledactionid=nil, requestid=nil)
          @ScheduledActionId = scheduledactionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ScheduledActionId = params['ScheduledActionId']
          @RequestId = params['RequestId']
        end
      end

      # 启动配置的数据盘配置信息。若不指定该参数，则默认不购买数据盘，当前仅支持购买的时候指定一个数据盘。
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 数据盘类型。数据盘类型限制详见[云硬盘类型](https://cloud.tencent.com/document/product/362/2353)。取值范围：
        # <li>LOCAL_BASIC：本地硬盘</li>
        # <li>LOCAL_SSD：本地SSD硬盘</li>
        # <li>CLOUD_BASIC：普通云硬盘</li>
        # <li>CLOUD_PREMIUM：高性能云硬盘</li>
        # <li>CLOUD_SSD：SSD云硬盘</li>
        # <li>CLOUD_HSSD：增强型SSD云硬盘</li>
        # <li>CLOUD_TSSD：极速型SSD云硬盘</li>
        # 默认取值与系统盘类型（SystemDisk.DiskType）保持一致。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 数据盘大小，单位：GB。最小调整步长为10G，不同数据盘类型取值范围不同，具体限制详见：[CVM实例配置](https://cloud.tencent.com/document/product/213/2177)。默认值为0，表示不购买数据盘。更多限制详见产品文档。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param SnapshotId: 数据盘快照 ID，类似 `snap-l8psqwnt`。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotId: String
        # @param DeleteWithInstance: 数据盘是否随子机销毁。取值范围：
        # <li>TRUE：子机销毁时，销毁数据盘，只支持按小时后付费云盘</li>
        # <li>FALSE：子机销毁时，保留数据盘</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteWithInstance: Boolean
        # @param Encrypt: 数据盘是否加密。取值范围：
        # <li>TRUE：加密</li>
        # <li>FALSE：不加密</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encrypt: Boolean
        # @param ThroughputPerformance: 云硬盘性能，单位：MB/s。使用此参数可给云硬盘购买额外的性能，功能介绍和类型限制详见：[增强型 SSD 云硬盘额外性能说明](https://cloud.tencent.com/document/product/362/51896#.E5.A2.9E.E5.BC.BA.E5.9E.8B-ssd-.E4.BA.91.E7.A1.AC.E7.9B.98.E9.A2.9D.E5.A4.96.E6.80.A7.E8.83.BD)。
        # 当前仅支持极速型云盘（CLOUD_TSSD）和增强型SSD云硬盘（CLOUD_HSSD）且 需容量 > 460GB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThroughputPerformance: Integer
        # @param BurstPerformance: 突发性能。是否开启突发性能，默认取值为 false。

        # 注：内测中，需提单申请后使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BurstPerformance: Boolean

        attr_accessor :DiskType, :DiskSize, :SnapshotId, :DeleteWithInstance, :Encrypt, :ThroughputPerformance, :BurstPerformance

        def initialize(disktype=nil, disksize=nil, snapshotid=nil, deletewithinstance=nil, encrypt=nil, throughputperformance=nil, burstperformance=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @SnapshotId = snapshotid
          @DeleteWithInstance = deletewithinstance
          @Encrypt = encrypt
          @ThroughputPerformance = throughputperformance
          @BurstPerformance = burstperformance
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @SnapshotId = params['SnapshotId']
          @DeleteWithInstance = params['DeleteWithInstance']
          @Encrypt = params['Encrypt']
          @ThroughputPerformance = params['ThroughputPerformance']
          @BurstPerformance = params['BurstPerformance']
        end
      end

      # DeleteAutoScalingGroup请求参数结构体
      class DeleteAutoScalingGroupRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String

        attr_accessor :AutoScalingGroupId

        def initialize(autoscalinggroupid=nil)
          @AutoScalingGroupId = autoscalinggroupid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
        end
      end

      # DeleteAutoScalingGroup返回参数结构体
      class DeleteAutoScalingGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLaunchConfiguration请求参数结构体
      class DeleteLaunchConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: 需要删除的启动配置ID。
        # @type LaunchConfigurationId: String

        attr_accessor :LaunchConfigurationId

        def initialize(launchconfigurationid=nil)
          @LaunchConfigurationId = launchconfigurationid
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
        end
      end

      # DeleteLaunchConfiguration返回参数结构体
      class DeleteLaunchConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLifecycleHook请求参数结构体
      class DeleteLifecycleHookRequest < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩ID
        # @type LifecycleHookId: String

        attr_accessor :LifecycleHookId

        def initialize(lifecyclehookid=nil)
          @LifecycleHookId = lifecyclehookid
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
        end
      end

      # DeleteLifecycleHook返回参数结构体
      class DeleteLifecycleHookResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNotificationConfiguration请求参数结构体
      class DeleteNotificationConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingNotificationId: 待删除的通知ID。
        # @type AutoScalingNotificationId: String

        attr_accessor :AutoScalingNotificationId

        def initialize(autoscalingnotificationid=nil)
          @AutoScalingNotificationId = autoscalingnotificationid
        end

        def deserialize(params)
          @AutoScalingNotificationId = params['AutoScalingNotificationId']
        end
      end

      # DeleteNotificationConfiguration返回参数结构体
      class DeleteNotificationConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScalingPolicy请求参数结构体
      class DeleteScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingPolicyId: 待删除的告警策略ID。
        # @type AutoScalingPolicyId: String

        attr_accessor :AutoScalingPolicyId

        def initialize(autoscalingpolicyid=nil)
          @AutoScalingPolicyId = autoscalingpolicyid
        end

        def deserialize(params)
          @AutoScalingPolicyId = params['AutoScalingPolicyId']
        end
      end

      # DeleteScalingPolicy返回参数结构体
      class DeleteScalingPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScheduledAction请求参数结构体
      class DeleteScheduledActionRequest < TencentCloud::Common::AbstractModel
        # @param ScheduledActionId: 待删除的定时任务ID。
        # @type ScheduledActionId: String

        attr_accessor :ScheduledActionId

        def initialize(scheduledactionid=nil)
          @ScheduledActionId = scheduledactionid
        end

        def deserialize(params)
          @ScheduledActionId = params['ScheduledActionId']
        end
      end

      # DeleteScheduledAction返回参数结构体
      class DeleteScheduledActionResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountLimits请求参数结构体
      class DescribeAccountLimitsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccountLimits返回参数结构体
      class DescribeAccountLimitsResponse < TencentCloud::Common::AbstractModel
        # @param MaxNumberOfLaunchConfigurations: 用户账户被允许创建的启动配置最大数量
        # @type MaxNumberOfLaunchConfigurations: Integer
        # @param NumberOfLaunchConfigurations: 用户账户启动配置的当前数量
        # @type NumberOfLaunchConfigurations: Integer
        # @param MaxNumberOfAutoScalingGroups: 用户账户被允许创建的伸缩组最大数量
        # @type MaxNumberOfAutoScalingGroups: Integer
        # @param NumberOfAutoScalingGroups: 用户账户伸缩组的当前数量
        # @type NumberOfAutoScalingGroups: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxNumberOfLaunchConfigurations, :NumberOfLaunchConfigurations, :MaxNumberOfAutoScalingGroups, :NumberOfAutoScalingGroups, :RequestId

        def initialize(maxnumberoflaunchconfigurations=nil, numberoflaunchconfigurations=nil, maxnumberofautoscalinggroups=nil, numberofautoscalinggroups=nil, requestid=nil)
          @MaxNumberOfLaunchConfigurations = maxnumberoflaunchconfigurations
          @NumberOfLaunchConfigurations = numberoflaunchconfigurations
          @MaxNumberOfAutoScalingGroups = maxnumberofautoscalinggroups
          @NumberOfAutoScalingGroups = numberofautoscalinggroups
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxNumberOfLaunchConfigurations = params['MaxNumberOfLaunchConfigurations']
          @NumberOfLaunchConfigurations = params['NumberOfLaunchConfigurations']
          @MaxNumberOfAutoScalingGroups = params['MaxNumberOfAutoScalingGroups']
          @NumberOfAutoScalingGroups = params['NumberOfAutoScalingGroups']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalingActivities请求参数结构体
      class DescribeAutoScalingActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param ActivityIds: 按照一个或者多个伸缩活动ID查询。伸缩活动ID形如：`asa-5l2ejpfo`。每次请求的上限为100。参数不支持同时指定`ActivityIds`和`Filters`。
        # @type ActivityIds: Array
        # @param Filters: 过滤条件。
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # <li> activity-status-code - String - 是否必填：否 -（过滤条件）按照伸缩活动状态过滤。（INIT：初始化中|RUNNING：运行中|SUCCESSFUL：活动成功|PARTIALLY_SUCCESSFUL：活动部分成功|FAILED：活动失败|CANCELLED：活动取消）</li>
        # <li> activity-type - String - 是否必填：否 -（过滤条件）按照伸缩活动类型过滤。（SCALE_OUT：扩容活动|SCALE_IN：缩容活动|ATTACH_INSTANCES：添加实例|REMOVE_INSTANCES：销毁实例|DETACH_INSTANCES：移出实例|TERMINATE_INSTANCES_UNEXPECTEDLY：实例在CVM控制台被销毁|REPLACE_UNHEALTHY_INSTANCE：替换不健康实例|UPDATE_LOAD_BALANCERS：更新负载均衡器）</li>
        # <li> activity-id - String - 是否必填：否 -（过滤条件）按照伸缩活动ID过滤。</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`ActivityIds`和`Filters`。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param StartTime: 伸缩活动最早的开始时间，如果指定了ActivityIds，此参数将被忽略。取值为`UTC`时间，按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ssZ`。
        # @type StartTime: String
        # @param EndTime: 伸缩活动最晚的结束时间，如果指定了ActivityIds，此参数将被忽略。取值为`UTC`时间，按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ssZ`。
        # @type EndTime: String

        attr_accessor :ActivityIds, :Filters, :Limit, :Offset, :StartTime, :EndTime

        def initialize(activityids=nil, filters=nil, limit=nil, offset=nil, starttime=nil, endtime=nil)
          @ActivityIds = activityids
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ActivityIds = params['ActivityIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeAutoScalingActivities返回参数结构体
      class DescribeAutoScalingActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的伸缩活动数量。
        # @type TotalCount: Integer
        # @param ActivitySet: 符合条件的伸缩活动信息集合。
        # @type ActivitySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ActivitySet, :RequestId

        def initialize(totalcount=nil, activityset=nil, requestid=nil)
          @TotalCount = totalcount
          @ActivitySet = activityset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ActivitySet'].nil?
            @ActivitySet = []
            params['ActivitySet'].each do |i|
              activity_tmp = Activity.new
              activity_tmp.deserialize(i)
              @ActivitySet << activity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalingAdvices请求参数结构体
      class DescribeAutoScalingAdvicesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupIds: 待查询的伸缩组列表，上限100。
        # @type AutoScalingGroupIds: Array

        attr_accessor :AutoScalingGroupIds

        def initialize(autoscalinggroupids=nil)
          @AutoScalingGroupIds = autoscalinggroupids
        end

        def deserialize(params)
          @AutoScalingGroupIds = params['AutoScalingGroupIds']
        end
      end

      # DescribeAutoScalingAdvices返回参数结构体
      class DescribeAutoScalingAdvicesResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingAdviceSet: 伸缩组配置建议集合。
        # @type AutoScalingAdviceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingAdviceSet, :RequestId

        def initialize(autoscalingadviceset=nil, requestid=nil)
          @AutoScalingAdviceSet = autoscalingadviceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AutoScalingAdviceSet'].nil?
            @AutoScalingAdviceSet = []
            params['AutoScalingAdviceSet'].each do |i|
              autoscalingadvice_tmp = AutoScalingAdvice.new
              autoscalingadvice_tmp.deserialize(i)
              @AutoScalingAdviceSet << autoscalingadvice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalingGroupLastActivities请求参数结构体
      class DescribeAutoScalingGroupLastActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupIds: 伸缩组ID列表
        # @type AutoScalingGroupIds: Array

        attr_accessor :AutoScalingGroupIds

        def initialize(autoscalinggroupids=nil)
          @AutoScalingGroupIds = autoscalinggroupids
        end

        def deserialize(params)
          @AutoScalingGroupIds = params['AutoScalingGroupIds']
        end
      end

      # DescribeAutoScalingGroupLastActivities返回参数结构体
      class DescribeAutoScalingGroupLastActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param ActivitySet: 符合条件的伸缩活动信息集合。说明：伸缩组伸缩活动不存在的则不返回，如传50个伸缩组ID，返回45条数据，说明其中有5个伸缩组伸缩活动不存在。
        # @type ActivitySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivitySet, :RequestId

        def initialize(activityset=nil, requestid=nil)
          @ActivitySet = activityset
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalingGroups请求参数结构体
      class DescribeAutoScalingGroupsRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupIds: 按照一个或者多个伸缩组ID查询。伸缩组ID形如：`asg-nkdwoui0`。每次请求的上限为100。参数不支持同时指定`AutoScalingGroupIds`和`Filters`。
        # @type AutoScalingGroupIds: Array
        # @param Filters: 过滤条件。
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # <li> auto-scaling-group-name - String - 是否必填：否 -（过滤条件）按照伸缩组名称过滤。</li>
        # <li> vague-auto-scaling-group-name - String - 是否必填：否 -（过滤条件）按照伸缩组名称模糊搜索。</li>
        # <li> launch-configuration-id - String - 是否必填：否 -（过滤条件）按照启动配置ID过滤。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AutoScalingGroupIds`和`Filters`。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :AutoScalingGroupIds, :Filters, :Limit, :Offset

        def initialize(autoscalinggroupids=nil, filters=nil, limit=nil, offset=nil)
          @AutoScalingGroupIds = autoscalinggroupids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @AutoScalingGroupIds = params['AutoScalingGroupIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAutoScalingGroups返回参数结构体
      class DescribeAutoScalingGroupsResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupSet: 伸缩组详细信息列表。
        # @type AutoScalingGroupSet: Array
        # @param TotalCount: 符合条件的伸缩组数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingGroupSet, :TotalCount, :RequestId

        def initialize(autoscalinggroupset=nil, totalcount=nil, requestid=nil)
          @AutoScalingGroupSet = autoscalinggroupset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AutoScalingGroupSet'].nil?
            @AutoScalingGroupSet = []
            params['AutoScalingGroupSet'].each do |i|
              autoscalinggroup_tmp = AutoScalingGroup.new
              autoscalinggroup_tmp.deserialize(i)
              @AutoScalingGroupSet << autoscalinggroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoScalingInstances请求参数结构体
      class DescribeAutoScalingInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待查询云服务器（CVM）的实例ID。每次请求的上限为100。参数不支持同时指定InstanceIds和Filters。
        # @type InstanceIds: Array
        # @param Filters: 过滤条件。
        # <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。</li>
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`InstanceIds`和`Filters`。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
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

      # DescribeAutoScalingInstances返回参数结构体
      class DescribeAutoScalingInstancesResponse < TencentCloud::Common::AbstractModel
        # @param AutoScalingInstanceSet: 实例详细信息列表。
        # @type AutoScalingInstanceSet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoScalingInstanceSet, :TotalCount, :RequestId

        def initialize(autoscalinginstanceset=nil, totalcount=nil, requestid=nil)
          @AutoScalingInstanceSet = autoscalinginstanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AutoScalingInstanceSet'].nil?
            @AutoScalingInstanceSet = []
            params['AutoScalingInstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @AutoScalingInstanceSet << instance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLaunchConfigurations请求参数结构体
      class DescribeLaunchConfigurationsRequest < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationIds: 按照一个或者多个启动配置ID查询。启动配置ID形如：`asc-ouy1ax38`。每次请求的上限为100。参数不支持同时指定`LaunchConfigurationIds`和`Filters`
        # @type LaunchConfigurationIds: Array
        # @param Filters: 过滤条件。
        # <li> launch-configuration-id - String - 是否必填：否 -（过滤条件）按照启动配置ID过滤。</li>
        # <li> launch-configuration-name - String - 是否必填：否 -（过滤条件）按照启动配置名称过滤。</li>
        # <li> vague-launch-configuration-name - String - 是否必填：否 -（过滤条件）按照启动配置名称模糊搜索。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例3</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`LaunchConfigurationIds`和`Filters`。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :LaunchConfigurationIds, :Filters, :Limit, :Offset

        def initialize(launchconfigurationids=nil, filters=nil, limit=nil, offset=nil)
          @LaunchConfigurationIds = launchconfigurationids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @LaunchConfigurationIds = params['LaunchConfigurationIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeLaunchConfigurations返回参数结构体
      class DescribeLaunchConfigurationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的启动配置数量。
        # @type TotalCount: Integer
        # @param LaunchConfigurationSet: 启动配置详细信息列表。
        # @type LaunchConfigurationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LaunchConfigurationSet, :RequestId

        def initialize(totalcount=nil, launchconfigurationset=nil, requestid=nil)
          @TotalCount = totalcount
          @LaunchConfigurationSet = launchconfigurationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LaunchConfigurationSet'].nil?
            @LaunchConfigurationSet = []
            params['LaunchConfigurationSet'].each do |i|
              launchconfiguration_tmp = LaunchConfiguration.new
              launchconfiguration_tmp.deserialize(i)
              @LaunchConfigurationSet << launchconfiguration_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLifecycleHooks请求参数结构体
      class DescribeLifecycleHooksRequest < TencentCloud::Common::AbstractModel
        # @param LifecycleHookIds: 按照一个或者多个生命周期挂钩ID查询。生命周期挂钩ID形如：`ash-8azjzxcl`。每次请求的上限为100。参数不支持同时指定`LifecycleHookIds`和`Filters`。
        # @type LifecycleHookIds: Array
        # @param Filters: 过滤条件。
        # <li> lifecycle-hook-id - String - 是否必填：否 -（过滤条件）按照生命周期挂钩ID过滤。</li>
        # <li> lifecycle-hook-name - String - 是否必填：否 -（过滤条件）按照生命周期挂钩名称过滤。</li>
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`LifecycleHookIds `和`Filters`。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :LifecycleHookIds, :Filters, :Limit, :Offset

        def initialize(lifecyclehookids=nil, filters=nil, limit=nil, offset=nil)
          @LifecycleHookIds = lifecyclehookids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @LifecycleHookIds = params['LifecycleHookIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeLifecycleHooks返回参数结构体
      class DescribeLifecycleHooksResponse < TencentCloud::Common::AbstractModel
        # @param LifecycleHookSet: 生命周期挂钩数组
        # @type LifecycleHookSet: Array
        # @param TotalCount: 总体数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LifecycleHookSet, :TotalCount, :RequestId

        def initialize(lifecyclehookset=nil, totalcount=nil, requestid=nil)
          @LifecycleHookSet = lifecyclehookset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LifecycleHookSet'].nil?
            @LifecycleHookSet = []
            params['LifecycleHookSet'].each do |i|
              lifecyclehook_tmp = LifecycleHook.new
              lifecyclehook_tmp.deserialize(i)
              @LifecycleHookSet << lifecyclehook_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotificationConfigurations请求参数结构体
      class DescribeNotificationConfigurationsRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingNotificationIds: 按照一个或者多个通知ID查询。实例ID形如：asn-2sestqbr。每次请求的实例的上限为100。参数不支持同时指定`AutoScalingNotificationIds`和`Filters`。
        # @type AutoScalingNotificationIds: Array
        # @param Filters: 过滤条件。
        # <li> auto-scaling-notification-id - String - 是否必填：否 -（过滤条件）按照通知ID过滤。</li>
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AutoScalingNotificationIds`和`Filters`。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :AutoScalingNotificationIds, :Filters, :Limit, :Offset

        def initialize(autoscalingnotificationids=nil, filters=nil, limit=nil, offset=nil)
          @AutoScalingNotificationIds = autoscalingnotificationids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @AutoScalingNotificationIds = params['AutoScalingNotificationIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNotificationConfigurations返回参数结构体
      class DescribeNotificationConfigurationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的通知数量。
        # @type TotalCount: Integer
        # @param AutoScalingNotificationSet: 弹性伸缩事件通知详细信息列表。
        # @type AutoScalingNotificationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AutoScalingNotificationSet, :RequestId

        def initialize(totalcount=nil, autoscalingnotificationset=nil, requestid=nil)
          @TotalCount = totalcount
          @AutoScalingNotificationSet = autoscalingnotificationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AutoScalingNotificationSet'].nil?
            @AutoScalingNotificationSet = []
            params['AutoScalingNotificationSet'].each do |i|
              autoscalingnotification_tmp = AutoScalingNotification.new
              autoscalingnotification_tmp.deserialize(i)
              @AutoScalingNotificationSet << autoscalingnotification_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRefreshActivities请求参数结构体
      class DescribeRefreshActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param RefreshActivityIds: 刷新活动ID列表。ID形如：`asr-5l2ejpfo`。每次请求的上限为100。参数不支持同时指定`RefreshActivityIds`和`Filters`。
        # @type RefreshActivityIds: Array
        # @param Filters: 过滤条件。
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # <li> refresh-activity-status-code - String - 是否必填：否 -（过滤条件）按照刷新活动状态过滤。（INIT：初始化中 | RUNNING：运行中 | SUCCESSFUL：活动成功 | FAILED_PAUSE：失败暂停 | AUTO_PAUSE：自动暂停 | MANUAL_PAUSE：手动暂停 | CANCELLED：活动取消 | FAILED：活动失败）</li>
        # <li> refresh-activity-type - String - 是否必填：否 -（过滤条件）按照刷新活动类型过滤。（NORMAL：正常刷新活动 | ROLLBACK：回滚刷新活动）</li>
        # <li> refresh-activity-id - String - 是否必填：否 -（过滤条件）按照刷新活动ID过滤。</li>
        # <li> 每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定RefreshActivityIds和Filters。</li>
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :RefreshActivityIds, :Filters, :Limit, :Offset

        def initialize(refreshactivityids=nil, filters=nil, limit=nil, offset=nil)
          @RefreshActivityIds = refreshactivityids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RefreshActivityIds = params['RefreshActivityIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRefreshActivities返回参数结构体
      class DescribeRefreshActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的刷新活动数量。
        # @type TotalCount: Integer
        # @param RefreshActivitySet: 符合条件的刷新活动信息集合。
        # @type RefreshActivitySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RefreshActivitySet, :RequestId

        def initialize(totalcount=nil, refreshactivityset=nil, requestid=nil)
          @TotalCount = totalcount
          @RefreshActivitySet = refreshactivityset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RefreshActivitySet'].nil?
            @RefreshActivitySet = []
            params['RefreshActivitySet'].each do |i|
              refreshactivity_tmp = RefreshActivity.new
              refreshactivity_tmp.deserialize(i)
              @RefreshActivitySet << refreshactivity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScalingPolicies请求参数结构体
      class DescribeScalingPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingPolicyIds: 按照一个或者多个告警策略ID查询。告警策略ID形如：asp-i9vkg894。每次请求的实例的上限为100。参数不支持同时指定`AutoScalingPolicyIds`和`Filters`。
        # @type AutoScalingPolicyIds: Array
        # @param Filters: 过滤条件。
        # <li> auto-scaling-policy-id - String - 是否必填：否 -（过滤条件）按照告警策略ID过滤。</li>
        # <li> auto-scaling-group-id - String - 是否必填：否 -（过滤条件）按照伸缩组ID过滤。</li>
        # <li> scaling-policy-name - String - 是否必填：否 -（过滤条件）按照告警策略名称过滤。</li>
        # <li> scaling-policy-type - String - 是否必填：否 -（过滤条件）按照告警策略类型过滤，取值范围为SIMPLE，TARGET_TRACKING。</li>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AutoScalingPolicyIds`和`Filters`。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :AutoScalingPolicyIds, :Filters, :Limit, :Offset

        def initialize(autoscalingpolicyids=nil, filters=nil, limit=nil, offset=nil)
          @AutoScalingPolicyIds = autoscalingpolicyids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @AutoScalingPolicyIds = params['AutoScalingPolicyIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeScalingPolicies返回参数结构体
      class DescribeScalingPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param ScalingPolicySet: 弹性伸缩告警触发策略详细信息列表。
        # @type ScalingPolicySet: Array
        # @param TotalCount: 符合条件的通知数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScalingPolicySet, :TotalCount, :RequestId

        def initialize(scalingpolicyset=nil, totalcount=nil, requestid=nil)
          @ScalingPolicySet = scalingpolicyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScalingPolicySet'].nil?
            @ScalingPolicySet = []
            params['ScalingPolicySet'].each do |i|
              scalingpolicy_tmp = ScalingPolicy.new
              scalingpolicy_tmp.deserialize(i)
              @ScalingPolicySet << scalingpolicy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScheduledActions请求参数结构体
      class DescribeScheduledActionsRequest < TencentCloud::Common::AbstractModel
        # @param ScheduledActionIds: 按照一个或者多个定时任务ID查询。实例ID形如：asst-am691zxo。每次请求的实例的上限为100。参数不支持同时指定ScheduledActionIds和Filters。
        # @type ScheduledActionIds: Array
        # @param Filters: 过滤条件。
        # <li> scheduled-action-id - String - 是否必填：否 -（过滤条件）按照定时任务ID过滤。</li>
        # <li> scheduled-action-name - String - 是否必填：否 - （过滤条件） 按照定时任务名称过滤。</li>
        # <li> auto-scaling-group-id - String - 是否必填：否 - （过滤条件） 按照伸缩组ID过滤。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ScheduledActionIds, :Filters, :Offset, :Limit

        def initialize(scheduledactionids=nil, filters=nil, offset=nil, limit=nil)
          @ScheduledActionIds = scheduledactionids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ScheduledActionIds = params['ScheduledActionIds']
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

      # DescribeScheduledActions返回参数结构体
      class DescribeScheduledActionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的定时任务数量。
        # @type TotalCount: Integer
        # @param ScheduledActionSet: 定时任务详细信息列表。
        # @type ScheduledActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ScheduledActionSet, :RequestId

        def initialize(totalcount=nil, scheduledactionset=nil, requestid=nil)
          @TotalCount = totalcount
          @ScheduledActionSet = scheduledactionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ScheduledActionSet'].nil?
            @ScheduledActionSet = []
            params['ScheduledActionSet'].each do |i|
              scheduledaction_tmp = ScheduledAction.new
              scheduledaction_tmp.deserialize(i)
              @ScheduledActionSet << scheduledaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachInstances请求参数结构体
      class DetachInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param InstanceIds: CVM实例ID列表
        # @type InstanceIds: Array

        attr_accessor :AutoScalingGroupId, :InstanceIds

        def initialize(autoscalinggroupid=nil, instanceids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DetachInstances返回参数结构体
      class DetachInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # DetachLoadBalancers请求参数结构体
      class DetachLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param LoadBalancerIds: 传统负载均衡器ID列表，列表长度上限为20，LoadBalancerIds 和 ForwardLoadBalancerIdentifications 二者同时最多只能指定一个
        # @type LoadBalancerIds: Array
        # @param ForwardLoadBalancerIdentifications: 应用型负载均衡器标识信息列表，列表长度上限为100，LoadBalancerIds 和 ForwardLoadBalancerIdentifications二者同时最多只能指定一个
        # @type ForwardLoadBalancerIdentifications: Array

        attr_accessor :AutoScalingGroupId, :LoadBalancerIds, :ForwardLoadBalancerIdentifications

        def initialize(autoscalinggroupid=nil, loadbalancerids=nil, forwardloadbalanceridentifications=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @LoadBalancerIds = loadbalancerids
          @ForwardLoadBalancerIdentifications = forwardloadbalanceridentifications
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['ForwardLoadBalancerIdentifications'].nil?
            @ForwardLoadBalancerIdentifications = []
            params['ForwardLoadBalancerIdentifications'].each do |i|
              forwardloadbalanceridentification_tmp = ForwardLoadBalancerIdentification.new
              forwardloadbalanceridentification_tmp.deserialize(i)
              @ForwardLoadBalancerIdentifications << forwardloadbalanceridentification_tmp
            end
          end
        end
      end

      # DetachLoadBalancers返回参数结构体
      class DetachLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # 伸缩活动状态详细描述。
      class DetailedStatusMessage < TencentCloud::Common::AbstractModel
        # @param Code: 错误类型。
        # @type Code: String
        # @param Zone: 可用区信息。
        # @type Zone: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceChargeType: 实例计费类型。
        # @type InstanceChargeType: String
        # @param SubnetId: 子网ID。
        # @type SubnetId: String
        # @param Message: 错误描述。
        # @type Message: String
        # @param InstanceType: 实例类型。
        # @type InstanceType: String

        attr_accessor :Code, :Zone, :InstanceId, :InstanceChargeType, :SubnetId, :Message, :InstanceType

        def initialize(code=nil, zone=nil, instanceid=nil, instancechargetype=nil, subnetid=nil, message=nil, instancetype=nil)
          @Code = code
          @Zone = zone
          @InstanceId = instanceid
          @InstanceChargeType = instancechargetype
          @SubnetId = subnetid
          @Message = message
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Code = params['Code']
          @Zone = params['Zone']
          @InstanceId = params['InstanceId']
          @InstanceChargeType = params['InstanceChargeType']
          @SubnetId = params['SubnetId']
          @Message = params['Message']
          @InstanceType = params['InstanceType']
        end
      end

      # DisableAutoScalingGroup请求参数结构体
      class DisableAutoScalingGroupRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String

        attr_accessor :AutoScalingGroupId

        def initialize(autoscalinggroupid=nil)
          @AutoScalingGroupId = autoscalinggroupid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
        end
      end

      # DisableAutoScalingGroup返回参数结构体
      class DisableAutoScalingGroupResponse < TencentCloud::Common::AbstractModel
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

      # EnableAutoScalingGroup请求参数结构体
      class EnableAutoScalingGroupRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String

        attr_accessor :AutoScalingGroupId

        def initialize(autoscalinggroupid=nil)
          @AutoScalingGroupId = autoscalinggroupid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
        end
      end

      # EnableAutoScalingGroup返回参数结构体
      class EnableAutoScalingGroupResponse < TencentCloud::Common::AbstractModel
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

      # 描述了实例的增强服务启用情况与其设置，如云安全，云监控，自动化助手等实例 Agent。
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 开启云安全服务。若不指定该参数，则默认开启云安全服务。
        # @type SecurityService: :class:`Tencentcloud::As.v20180419.models.RunSecurityServiceEnabled`
        # @param MonitorService: 开启云监控服务。若不指定该参数，则默认开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::As.v20180419.models.RunMonitorServiceEnabled`
        # @param AutomationService: 该参数已废弃，查询时会返回空值，请勿使用。
        # @type AutomationService: Array
        # @param AutomationToolsService: 开启自动化助手服务。若不指定该参数，则默认逻辑与CVM保持一致。注意：此字段可能返回 null，表示取不到有效值。
        # @type AutomationToolsService: :class:`Tencentcloud::As.v20180419.models.RunAutomationServiceEnabled`

        attr_accessor :SecurityService, :MonitorService, :AutomationService, :AutomationToolsService
        extend Gem::Deprecate
        deprecate :AutomationService, :none, 2024, 12
        deprecate :AutomationService=, :none, 2024, 12

        def initialize(securityservice=nil, monitorservice=nil, automationservice=nil, automationtoolsservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
          @AutomationService = automationservice
          @AutomationToolsService = automationtoolsservice
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
            @AutomationService = []
            params['AutomationService'].each do |i|
              runautomationserviceenabled_tmp = RunAutomationServiceEnabled.new
              runautomationserviceenabled_tmp.deserialize(i)
              @AutomationService << runautomationserviceenabled_tmp
            end
          end
          unless params['AutomationToolsService'].nil?
            @AutomationToolsService = RunAutomationServiceEnabled.new
            @AutomationToolsService.deserialize(params['AutomationToolsService'])
          end
        end
      end

      # ExecuteScalingPolicy请求参数结构体
      class ExecuteScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingPolicyId: 告警伸缩策略ID，不支持目标追踪策略。
        # @type AutoScalingPolicyId: String
        # @param HonorCooldown: 是否检查伸缩组活动处于冷却时间内，默认值为false
        # @type HonorCooldown: Boolean
        # @param TriggerSource: 执行伸缩策略的触发来源，取值包括 API 和 CLOUD_MONITOR，默认值为 API。CLOUD_MONITOR 专门供云监控触发调用。
        # @type TriggerSource: String

        attr_accessor :AutoScalingPolicyId, :HonorCooldown, :TriggerSource

        def initialize(autoscalingpolicyid=nil, honorcooldown=nil, triggersource=nil)
          @AutoScalingPolicyId = autoscalingpolicyid
          @HonorCooldown = honorcooldown
          @TriggerSource = triggersource
        end

        def deserialize(params)
          @AutoScalingPolicyId = params['AutoScalingPolicyId']
          @HonorCooldown = params['HonorCooldown']
          @TriggerSource = params['TriggerSource']
        end
      end

      # ExecuteScalingPolicy返回参数结构体
      class ExecuteScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ExitStandby请求参数结构体
      class ExitStandbyRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组 ID。
        # @type AutoScalingGroupId: String
        # @param InstanceIds: 备用中状态 CVM 实例列表。
        # @type InstanceIds: Array

        attr_accessor :AutoScalingGroupId, :InstanceIds

        def initialize(autoscalinggroupid=nil, instanceids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # ExitStandby返回参数结构体
      class ExitStandbyResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
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

      # 应用型负载均衡器
      class ForwardLoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡器ID
        # @type LoadBalancerId: String
        # @param ListenerId: 应用型负载均衡监听器 ID
        # @type ListenerId: String
        # @param TargetAttributes: 目标规则属性列表
        # @type TargetAttributes: Array
        # @param LocationId: 转发规则ID，注意：针对七层监听器此参数必填
        # @type LocationId: String
        # @param Region: 负载均衡实例所属地域，默认取AS服务所在地域。格式与公共参数Region相同，如："ap-guangzhou"。
        # @type Region: String

        attr_accessor :LoadBalancerId, :ListenerId, :TargetAttributes, :LocationId, :Region

        def initialize(loadbalancerid=nil, listenerid=nil, targetattributes=nil, locationid=nil, region=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @TargetAttributes = targetattributes
          @LocationId = locationid
          @Region = region
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['TargetAttributes'].nil?
            @TargetAttributes = []
            params['TargetAttributes'].each do |i|
              targetattribute_tmp = TargetAttribute.new
              targetattribute_tmp.deserialize(i)
              @TargetAttributes << targetattribute_tmp
            end
          end
          @LocationId = params['LocationId']
          @Region = params['Region']
        end
      end

      # 应用型负载均衡器标识信息
      class ForwardLoadBalancerIdentification < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡器ID
        # @type LoadBalancerId: String
        # @param ListenerId: 应用型负载均衡监听器 ID
        # @type ListenerId: String
        # @param LocationId: 转发规则ID，注意：针对七层监听器此参数必填
        # @type LocationId: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationId

        def initialize(loadbalancerid=nil, listenerid=nil, locationid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationId = locationid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
        end
      end

      # 云服务器主机名（HostName）的相关设置
      class HostNameSettings < TencentCloud::Common::AbstractModel
        # @param HostName: 云服务器的主机名。
        # <li> 点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li>
        # <li> 不支持 Windows 实例。</li>
        # <li> 其他类型（Linux 等）实例：字符长度为[2, 40]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。不允许为纯数字。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param HostNameStyle: 云服务器主机名的风格，取值范围包括 ORIGINAL 和  UNIQUE，默认为 ORIGINAL。
        # <li> ORIGINAL，AS 直接将入参中所填的 HostName 传递给 CVM，CVM 可能会对 HostName 追加序列号，伸缩组中实例的 HostName 会出现冲突的情况。</li>
        # <li> UNIQUE，入参所填的 HostName 相当于主机名前缀，AS 和 CVM 会对其进行拓展，伸缩组中实例的 HostName 可以保证唯一。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostNameStyle: String
        # @param HostNameSuffix: 云服务器的主机名后缀。
        # <li> 点号（.）和短横线（-）不能作为 HostNameSuffix 的首尾字符，不能连续使用。</li>
        # <li> 不支持 Windows 实例。</li>
        # <li>其他类型（Linux 等）实例：字符长度为[1, 37]，且与 HostName 的长度和不能超过 39，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li>
        # 假设后缀名称为 suffix，原主机名为 test.0，最终主机名为 test.0.suffix。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostNameSuffix: String

        attr_accessor :HostName, :HostNameStyle, :HostNameSuffix

        def initialize(hostname=nil, hostnamestyle=nil, hostnamesuffix=nil)
          @HostName = hostname
          @HostNameStyle = hostnamestyle
          @HostNameSuffix = hostnamesuffix
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostNameStyle = params['HostNameStyle']
          @HostNameSuffix = params['HostNameSuffix']
        end
      end

      # 描述了启动配置创建实例的IPv6地址公网可访问性，声明了IPv6地址公网使用计费模式，最大带宽等
      class IPv6InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费模式。取值包括TRAFFIC_POSTPAID_BY_HOUR、BANDWIDTH_PACKAGE，默认取值为TRAFFIC_POSTPAID_BY_HOUR。查看当前账户类型可参考[账户类型说明](https://cloud.tencent.com/document/product/1199/49090#judge)。
        # <br><li> IPv6对标准账户类型支持TRAFFIC_POSTPAID_BY_HOUR。
        # <br><li> IPv6对传统账户类型支持BANDWIDTH_PACKAGE。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。<br>默认值：0，此时不为IPv6分配公网带宽。不同机型、可用区、计费模式的带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetMaxBandwidthOut: Integer
        # @param BandwidthPackageId: 带宽包ID。可通过[DescribeBandwidthPackages](https://cloud.tencent.com/document/api/215/19209)接口返回值中的`BandwidthPackageId`获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthPackageId: String

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :BandwidthPackageId

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, bandwidthpackageid=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # 实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param LaunchConfigurationId: 启动配置ID
        # @type LaunchConfigurationId: String
        # @param LaunchConfigurationName: 启动配置名称
        # @type LaunchConfigurationName: String
        # @param LifeCycleState: 生命周期状态，取值如下：<br>
        # <li>IN_SERVICE：运行中
        # <li>CREATING：创建中
        # <li>CREATION_FAILED：创建失败
        # <li>TERMINATING：中止中
        # <li>TERMINATION_FAILED：中止失败
        # <li>ATTACHING：绑定中
        # <li>ATTACH_FAILED：绑定失败
        # <li>DETACHING：解绑中
        # <li>DETACH_FAILED：解绑失败
        # <li>ATTACHING_LB：绑定LB中
        # <li>DETACHING_LB：解绑LB中
        # <li>MODIFYING_LB：修改LB中
        # <li>STARTING：开机中
        # <li>START_FAILED：开机失败
        # <li>STOPPING：关机中
        # <li>STOP_FAILED：关机失败
        # <li>STOPPED：已关机
        # <li>IN_LAUNCHING_HOOK：扩容生命周期挂钩中
        # <li>IN_TERMINATING_HOOK：缩容生命周期挂钩中
        # @type LifeCycleState: String
        # @param HealthStatus: 健康状态，取值包括HEALTHY和UNHEALTHY
        # @type HealthStatus: String
        # @param ProtectedFromScaleIn: 是否加入缩容保护
        # @type ProtectedFromScaleIn: Boolean
        # @param Zone: 可用区
        # @type Zone: String
        # @param CreationType: 创建类型，取值包括AUTO_CREATION, MANUAL_ATTACHING。
        # @type CreationType: String
        # @param AddTime: 实例加入时间
        # @type AddTime: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param VersionNumber: 版本号
        # @type VersionNumber: Integer
        # @param AutoScalingGroupName: 伸缩组名称
        # @type AutoScalingGroupName: String
        # @param WarmupStatus: 预热状态，取值如下：
        # <li>WAITING_ENTER_WARMUP：等待进入预热
        # <li>NO_NEED_WARMUP：无需预热
        # <li>IN_WARMUP：预热中
        # <li>AFTER_WARMUP：完成预热
        # @type WarmupStatus: String
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisasterRecoverGroupIds: Array

        attr_accessor :InstanceId, :AutoScalingGroupId, :LaunchConfigurationId, :LaunchConfigurationName, :LifeCycleState, :HealthStatus, :ProtectedFromScaleIn, :Zone, :CreationType, :AddTime, :InstanceType, :VersionNumber, :AutoScalingGroupName, :WarmupStatus, :DisasterRecoverGroupIds

        def initialize(instanceid=nil, autoscalinggroupid=nil, launchconfigurationid=nil, launchconfigurationname=nil, lifecyclestate=nil, healthstatus=nil, protectedfromscalein=nil, zone=nil, creationtype=nil, addtime=nil, instancetype=nil, versionnumber=nil, autoscalinggroupname=nil, warmupstatus=nil, disasterrecovergroupids=nil)
          @InstanceId = instanceid
          @AutoScalingGroupId = autoscalinggroupid
          @LaunchConfigurationId = launchconfigurationid
          @LaunchConfigurationName = launchconfigurationname
          @LifeCycleState = lifecyclestate
          @HealthStatus = healthstatus
          @ProtectedFromScaleIn = protectedfromscalein
          @Zone = zone
          @CreationType = creationtype
          @AddTime = addtime
          @InstanceType = instancetype
          @VersionNumber = versionnumber
          @AutoScalingGroupName = autoscalinggroupname
          @WarmupStatus = warmupstatus
          @DisasterRecoverGroupIds = disasterrecovergroupids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @LaunchConfigurationName = params['LaunchConfigurationName']
          @LifeCycleState = params['LifeCycleState']
          @HealthStatus = params['HealthStatus']
          @ProtectedFromScaleIn = params['ProtectedFromScaleIn']
          @Zone = params['Zone']
          @CreationType = params['CreationType']
          @AddTime = params['AddTime']
          @InstanceType = params['InstanceType']
          @VersionNumber = params['VersionNumber']
          @AutoScalingGroupName = params['AutoScalingGroupName']
          @WarmupStatus = params['WarmupStatus']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li>默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

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

      # CVM竞价请求相关选项
      class InstanceMarketOptionsRequest < TencentCloud::Common::AbstractModel
        # @param SpotOptions: 竞价相关选项
        # @type SpotOptions: :class:`Tencentcloud::As.v20180419.models.SpotMarketOptions`
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

      # 实例名称序号相关设置。
      class InstanceNameIndexSettings < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启实例创建序号，默认不开启。取值范围：<li>TRUE：表示开启实例创建序号<li>FALSE：表示不开启实例创建序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param BeginIndex: 初始序号，取值范围为 [0, 99999999]。当序号递增后超出取值范围时，扩容活动会失败。<li>首次开启实例名称序号：默认值为 0。<li>非首次开启实例名称序号：若不指定该参数，沿用历史序号。下调初始序号可能会造成伸缩组内实例名称序号重复。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginIndex: Integer

        attr_accessor :Enabled, :BeginIndex

        def initialize(enabled=nil, beginindex=nil)
          @Enabled = enabled
          @BeginIndex = beginindex
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @BeginIndex = params['BeginIndex']
        end
      end

      # 云服务器实例名称（InstanceName）的相关设置
      class InstanceNameSettings < TencentCloud::Common::AbstractModel
        # @param InstanceName: 云服务器的实例名。字符长度为[2, 108]。
        # @type InstanceName: String
        # @param InstanceNameStyle: 云服务器实例名的风格，取值范围包括 ORIGINAL 和 UNIQUE，默认为 ORIGINAL。

        # ORIGINAL，AS 直接将入参中所填的 InstanceName 传递给 CVM，CVM 可能会对 InstanceName 追加序列号，伸缩组中实例的 InstanceName 会出现冲突的情况。

        # UNIQUE，入参所填的 InstanceName 相当于实例名前缀，AS 和 CVM 会对其进行拓展，伸缩组中实例的 InstanceName 可以保证唯一。
        # @type InstanceNameStyle: String
        # @param InstanceNameSuffix: 云服务器实例名后缀。字符长度为[1,105]，且与 InstanceName 的长度和不能超过107。

        # 假设后缀名称为 suffix，原实例名为 test.0，最终实例名为 test.0.suffix。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNameSuffix: String

        attr_accessor :InstanceName, :InstanceNameStyle, :InstanceNameSuffix

        def initialize(instancename=nil, instancenamestyle=nil, instancenamesuffix=nil)
          @InstanceName = instancename
          @InstanceNameStyle = instancenamestyle
          @InstanceNameSuffix = instancenamesuffix
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceNameStyle = params['InstanceNameStyle']
          @InstanceNameSuffix = params['InstanceNameSuffix']
        end
      end

      # 实例标签。通过指定该参数，可以为扩容的实例绑定标签。
      class InstanceTag < TencentCloud::Common::AbstractModel
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

      # 描述了启动配置创建实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：<li>BANDWIDTH_PREPAID：预付费按带宽结算</li><li>TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费</li><li>BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费</li><li>BANDWIDTH_PACKAGE：带宽包用户</li>默认取值：TRAFFIC_POSTPAID_BY_HOUR。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见[购买网络带宽](https://cloud.tencent.com/document/product/213/509)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetMaxBandwidthOut: Integer
        # @param PublicIpAssigned: 是否分配公网IP。取值范围：<li>TRUE：表示分配公网IP</li><li>FALSE：表示不分配公网IP</li>当公网带宽大于0Mbps时，可自由选择开通与否，默认开通公网IP；当公网带宽为0，则不允许分配公网IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAssigned: Boolean
        # @param BandwidthPackageId: 带宽包ID。可通过[DescribeBandwidthPackages](https://cloud.tencent.com/document/api/215/19209)接口返回值中的`BandwidthPackageId`获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 执行命令结果。
      class InvocationResult < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InvocationId: 执行活动ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationId: String
        # @param InvocationTaskId: 执行任务ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationTaskId: String
        # @param CommandId: 命令ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommandId: String
        # @param TaskStatus: 执行任务状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String
        # @param ErrorMessage: 执行异常信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String

        attr_accessor :InstanceId, :InvocationId, :InvocationTaskId, :CommandId, :TaskStatus, :ErrorMessage

        def initialize(instanceid=nil, invocationid=nil, invocationtaskid=nil, commandid=nil, taskstatus=nil, errormessage=nil)
          @InstanceId = instanceid
          @InvocationId = invocationid
          @InvocationTaskId = invocationtaskid
          @CommandId = commandid
          @TaskStatus = taskstatus
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InvocationId = params['InvocationId']
          @InvocationTaskId = params['InvocationTaskId']
          @CommandId = params['CommandId']
          @TaskStatus = params['TaskStatus']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 符合条件的启动配置信息的集合。
      class LaunchConfiguration < TencentCloud::Common::AbstractModel
        # @param ProjectId: 实例所属项目ID。
        # @type ProjectId: Integer
        # @param LaunchConfigurationId: 启动配置ID。
        # @type LaunchConfigurationId: String
        # @param LaunchConfigurationName: 启动配置名称。
        # @type LaunchConfigurationName: String
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param SystemDisk: 实例系统盘配置信息。
        # @type SystemDisk: :class:`Tencentcloud::As.v20180419.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。
        # @type DataDisks: Array
        # @param LoginSettings: 实例登录设置。
        # @type LoginSettings: :class:`Tencentcloud::As.v20180419.models.LimitedLoginSettings`
        # @param InternetAccessible: 公网带宽相关信息设置。
        # @type InternetAccessible: :class:`Tencentcloud::As.v20180419.models.InternetAccessible`
        # @param SecurityGroupIds: 实例所属安全组。
        # @type SecurityGroupIds: Array
        # @param AutoScalingGroupAbstractSet: 启动配置关联的伸缩组。
        # @type AutoScalingGroupAbstractSet: Array
        # @param UserData: 自定义数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserData: String
        # @param CreatedTime: 启动配置创建时间。
        # @type CreatedTime: String
        # @param EnhancedService: 实例的增强服务启用情况与其设置。
        # @type EnhancedService: :class:`Tencentcloud::As.v20180419.models.EnhancedService`
        # @param ImageId: 镜像ID。
        # @type ImageId: String
        # @param LaunchConfigurationStatus: 启动配置当前状态。取值范围：<li>NORMAL：正常</li><li>IMAGE_ABNORMAL：启动配置镜像异常</li><li>CBS_SNAP_ABNORMAL：启动配置数据盘快照异常</li><li>SECURITY_GROUP_ABNORMAL：启动配置安全组异常</li>
        # @type LaunchConfigurationStatus: String
        # @param InstanceChargeType: 实例计费类型，CVM默认值按照POSTPAID_BY_HOUR处理。<li>POSTPAID_BY_HOUR：按小时后付费</li><li>SPOTPAID：竞价付费</li>
        # @type InstanceChargeType: String
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceMarketOptions: :class:`Tencentcloud::As.v20180419.models.InstanceMarketOptionsRequest`
        # @param InstanceTypes: 实例机型列表。
        # @type InstanceTypes: Array
        # @param InstanceTags: 实例标签列表。扩容出来的实例会自动带上标签，最多支持10个标签。
        # @type InstanceTags: Array
        # @param Tags: 标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param VersionNumber: 版本号。
        # @type VersionNumber: Integer
        # @param UpdatedTime: 更新时间。
        # @type UpdatedTime: String
        # @param CamRoleName: CAM角色名称。可通过DescribeRoleList接口返回值中的roleName获取。
        # @type CamRoleName: String
        # @param LastOperationInstanceTypesCheckPolicy: 上次操作时，InstanceTypesCheckPolicy 取值。
        # @type LastOperationInstanceTypesCheckPolicy: String
        # @param HostNameSettings: 云服务器主机名（HostName）的相关设置。
        # @type HostNameSettings: :class:`Tencentcloud::As.v20180419.models.HostNameSettings`
        # @param InstanceNameSettings: 云服务器实例名（InstanceName）的相关设置。
        # @type InstanceNameSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameSettings`
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::As.v20180419.models.InstanceChargePrepaid`
        # @param DiskTypePolicy: 云盘类型选择策略。取值范围：<li>ORIGINAL：使用设置的云盘类型</li><li>AUTOMATIC：自动选择当前可用区下可用的云盘类型</li>
        # @type DiskTypePolicy: String
        # @param HpcClusterId: 高性能计算集群ID。<br>
        # 注意：此字段默认为空。
        # @type HpcClusterId: String
        # @param IPv6InternetAccessible: IPv6公网带宽相关信息设置。
        # @type IPv6InternetAccessible: :class:`Tencentcloud::As.v20180419.models.IPv6InternetAccessible`
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param ImageFamily: 镜像族名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageFamily: String
        # @param DedicatedClusterId: 本地专用集群 ID。
        # @type DedicatedClusterId: String

        attr_accessor :ProjectId, :LaunchConfigurationId, :LaunchConfigurationName, :InstanceType, :SystemDisk, :DataDisks, :LoginSettings, :InternetAccessible, :SecurityGroupIds, :AutoScalingGroupAbstractSet, :UserData, :CreatedTime, :EnhancedService, :ImageId, :LaunchConfigurationStatus, :InstanceChargeType, :InstanceMarketOptions, :InstanceTypes, :InstanceTags, :Tags, :VersionNumber, :UpdatedTime, :CamRoleName, :LastOperationInstanceTypesCheckPolicy, :HostNameSettings, :InstanceNameSettings, :InstanceChargePrepaid, :DiskTypePolicy, :HpcClusterId, :IPv6InternetAccessible, :DisasterRecoverGroupIds, :ImageFamily, :DedicatedClusterId

        def initialize(projectid=nil, launchconfigurationid=nil, launchconfigurationname=nil, instancetype=nil, systemdisk=nil, datadisks=nil, loginsettings=nil, internetaccessible=nil, securitygroupids=nil, autoscalinggroupabstractset=nil, userdata=nil, createdtime=nil, enhancedservice=nil, imageid=nil, launchconfigurationstatus=nil, instancechargetype=nil, instancemarketoptions=nil, instancetypes=nil, instancetags=nil, tags=nil, versionnumber=nil, updatedtime=nil, camrolename=nil, lastoperationinstancetypescheckpolicy=nil, hostnamesettings=nil, instancenamesettings=nil, instancechargeprepaid=nil, disktypepolicy=nil, hpcclusterid=nil, ipv6internetaccessible=nil, disasterrecovergroupids=nil, imagefamily=nil, dedicatedclusterid=nil)
          @ProjectId = projectid
          @LaunchConfigurationId = launchconfigurationid
          @LaunchConfigurationName = launchconfigurationname
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @LoginSettings = loginsettings
          @InternetAccessible = internetaccessible
          @SecurityGroupIds = securitygroupids
          @AutoScalingGroupAbstractSet = autoscalinggroupabstractset
          @UserData = userdata
          @CreatedTime = createdtime
          @EnhancedService = enhancedservice
          @ImageId = imageid
          @LaunchConfigurationStatus = launchconfigurationstatus
          @InstanceChargeType = instancechargetype
          @InstanceMarketOptions = instancemarketoptions
          @InstanceTypes = instancetypes
          @InstanceTags = instancetags
          @Tags = tags
          @VersionNumber = versionnumber
          @UpdatedTime = updatedtime
          @CamRoleName = camrolename
          @LastOperationInstanceTypesCheckPolicy = lastoperationinstancetypescheckpolicy
          @HostNameSettings = hostnamesettings
          @InstanceNameSettings = instancenamesettings
          @InstanceChargePrepaid = instancechargeprepaid
          @DiskTypePolicy = disktypepolicy
          @HpcClusterId = hpcclusterid
          @IPv6InternetAccessible = ipv6internetaccessible
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @ImageFamily = imagefamily
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @LaunchConfigurationName = params['LaunchConfigurationName']
          @InstanceType = params['InstanceType']
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
          unless params['LoginSettings'].nil?
            @LoginSettings = LimitedLoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['AutoScalingGroupAbstractSet'].nil?
            @AutoScalingGroupAbstractSet = []
            params['AutoScalingGroupAbstractSet'].each do |i|
              autoscalinggroupabstract_tmp = AutoScalingGroupAbstract.new
              autoscalinggroupabstract_tmp.deserialize(i)
              @AutoScalingGroupAbstractSet << autoscalinggroupabstract_tmp
            end
          end
          @UserData = params['UserData']
          @CreatedTime = params['CreatedTime']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @ImageId = params['ImageId']
          @LaunchConfigurationStatus = params['LaunchConfigurationStatus']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @InstanceTypes = params['InstanceTypes']
          unless params['InstanceTags'].nil?
            @InstanceTags = []
            params['InstanceTags'].each do |i|
              instancetag_tmp = InstanceTag.new
              instancetag_tmp.deserialize(i)
              @InstanceTags << instancetag_tmp
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
          @VersionNumber = params['VersionNumber']
          @UpdatedTime = params['UpdatedTime']
          @CamRoleName = params['CamRoleName']
          @LastOperationInstanceTypesCheckPolicy = params['LastOperationInstanceTypesCheckPolicy']
          unless params['HostNameSettings'].nil?
            @HostNameSettings = HostNameSettings.new
            @HostNameSettings.deserialize(params['HostNameSettings'])
          end
          unless params['InstanceNameSettings'].nil?
            @InstanceNameSettings = InstanceNameSettings.new
            @InstanceNameSettings.deserialize(params['InstanceNameSettings'])
          end
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DiskTypePolicy = params['DiskTypePolicy']
          @HpcClusterId = params['HpcClusterId']
          unless params['IPv6InternetAccessible'].nil?
            @IPv6InternetAccessible = IPv6InternetAccessible.new
            @IPv6InternetAccessible.deserialize(params['IPv6InternetAccessible'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @ImageFamily = params['ImageFamily']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # 生命周期挂钩动作的执行结果信息。
      class LifecycleActionResultInfo < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩标识。
        # @type LifecycleHookId: String
        # @param InstanceId: 实例标识。
        # @type InstanceId: String
        # @param InvocationId: 执行活动ID。可通过TAT的[查询执行活动](https://cloud.tencent.com/document/api/1340/52679)API查询具体的执行结果。
        # @type InvocationId: String
        # @param InvokeCommandResult: 命令调用的结果，表示执行TAT命令是否成功。<br>
        # <li>SUCCESSFUL 命令调用成功，不代表命令执行成功，执行的具体情况可根据InvocationId进行查询</li>
        # <li>FAILED 命令调用失败</li>
        # <li>NONE</li>
        # @type InvokeCommandResult: String
        # @param NotificationResult: 通知的结果，表示通知CMQ/TDMQ是否成功。<br>
        # <li>SUCCESSFUL 通知成功</li>
        # <li>FAILED 通知失败</li>
        # <li>NONE</li>
        # @type NotificationResult: String
        # @param LifecycleActionResult: 生命周期挂钩动作的执行结果，取值包括 CONTINUE、ABANDON。
        # @type LifecycleActionResult: String
        # @param ResultReason: 结果的原因。<br>
        # <li>HEARTBEAT_TIMEOUT 由于心跳超时，结果根据DefaultResult设置。</li>
        # <li>NOTIFICATION_FAILURE 由于发送通知失败，结果根据DefaultResult设置。</li>
        # <li>CALL_INTERFACE 调用了接口CompleteLifecycleAction设置结果。</li>
        # <li>ANOTHER_ACTION_ABANDON 另一个生命周期操作的结果已设置为“ABANDON”。</li>
        # <li>COMMAND_CALL_FAILURE  由于命令调用失败，结果根据DefaultResult设置。</li>
        # <li>COMMAND_EXEC_FINISH  命令执行完成。</li>
        # <li>COMMAND_EXEC_FAILURE 由于命令执行失败，结果根据DefaultResult设置。</li>
        # <li>COMMAND_EXEC_RESULT_CHECK_FAILURE 由于命令结果检查失败，结果根据DefaultResult设置。</li>
        # @type ResultReason: String

        attr_accessor :LifecycleHookId, :InstanceId, :InvocationId, :InvokeCommandResult, :NotificationResult, :LifecycleActionResult, :ResultReason

        def initialize(lifecyclehookid=nil, instanceid=nil, invocationid=nil, invokecommandresult=nil, notificationresult=nil, lifecycleactionresult=nil, resultreason=nil)
          @LifecycleHookId = lifecyclehookid
          @InstanceId = instanceid
          @InvocationId = invocationid
          @InvokeCommandResult = invokecommandresult
          @NotificationResult = notificationresult
          @LifecycleActionResult = lifecycleactionresult
          @ResultReason = resultreason
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
          @InstanceId = params['InstanceId']
          @InvocationId = params['InvocationId']
          @InvokeCommandResult = params['InvokeCommandResult']
          @NotificationResult = params['NotificationResult']
          @LifecycleActionResult = params['LifecycleActionResult']
          @ResultReason = params['ResultReason']
        end
      end

      # 远程命令执行对象。
      class LifecycleCommand < TencentCloud::Common::AbstractModel
        # @param CommandId: 远程命令ID。若选择执行命令，则此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommandId: String
        # @param Parameters: 自定义参数。字段类型为 json encoded string。如：{"varA": "222"}。
        # key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        # 如果未提供该参数取值，将使用 Command 的 DefaultParameters 进行替换。
        # 自定义参数最多20个。自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parameters: String

        attr_accessor :CommandId, :Parameters

        def initialize(commandid=nil, parameters=nil)
          @CommandId = commandid
          @Parameters = parameters
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @Parameters = params['Parameters']
        end
      end

      # 生命周期挂钩
      class LifecycleHook < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩ID
        # @type LifecycleHookId: String
        # @param LifecycleHookName: 生命周期挂钩名称
        # @type LifecycleHookName: String
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param DefaultResult: 生命周期挂钩默认结果
        # @type DefaultResult: String
        # @param HeartbeatTimeout: 生命周期挂钩等待超时时间
        # @type HeartbeatTimeout: Integer
        # @param LifecycleTransition: 生命周期挂钩适用场景
        # @type LifecycleTransition: String
        # @param NotificationMetadata: 通知目标的附加信息
        # @type NotificationMetadata: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param NotificationTarget: 通知目标
        # @type NotificationTarget: :class:`Tencentcloud::As.v20180419.models.NotificationTarget`
        # @param LifecycleTransitionType: 生命周期挂钩适用场景
        # @type LifecycleTransitionType: String
        # @param LifecycleCommand: 远程命令执行对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifecycleCommand: :class:`Tencentcloud::As.v20180419.models.LifecycleCommand`

        attr_accessor :LifecycleHookId, :LifecycleHookName, :AutoScalingGroupId, :DefaultResult, :HeartbeatTimeout, :LifecycleTransition, :NotificationMetadata, :CreatedTime, :NotificationTarget, :LifecycleTransitionType, :LifecycleCommand

        def initialize(lifecyclehookid=nil, lifecyclehookname=nil, autoscalinggroupid=nil, defaultresult=nil, heartbeattimeout=nil, lifecycletransition=nil, notificationmetadata=nil, createdtime=nil, notificationtarget=nil, lifecycletransitiontype=nil, lifecyclecommand=nil)
          @LifecycleHookId = lifecyclehookid
          @LifecycleHookName = lifecyclehookname
          @AutoScalingGroupId = autoscalinggroupid
          @DefaultResult = defaultresult
          @HeartbeatTimeout = heartbeattimeout
          @LifecycleTransition = lifecycletransition
          @NotificationMetadata = notificationmetadata
          @CreatedTime = createdtime
          @NotificationTarget = notificationtarget
          @LifecycleTransitionType = lifecycletransitiontype
          @LifecycleCommand = lifecyclecommand
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
          @LifecycleHookName = params['LifecycleHookName']
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @DefaultResult = params['DefaultResult']
          @HeartbeatTimeout = params['HeartbeatTimeout']
          @LifecycleTransition = params['LifecycleTransition']
          @NotificationMetadata = params['NotificationMetadata']
          @CreatedTime = params['CreatedTime']
          unless params['NotificationTarget'].nil?
            @NotificationTarget = NotificationTarget.new
            @NotificationTarget.deserialize(params['NotificationTarget'])
          end
          @LifecycleTransitionType = params['LifecycleTransitionType']
          unless params['LifecycleCommand'].nil?
            @LifecycleCommand = LifecycleCommand.new
            @LifecycleCommand.deserialize(params['LifecycleCommand'])
          end
        end
      end

      # 描述了实例登录相关配置与信息，出于安全性考虑，不会描述敏感信息。
      class LimitedLoginSettings < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥ID列表。
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        # - Linux实例密码必须8到30位，至少包括四项（小写字母、大写字母、数字和特殊符号）中的两项。
        # - Windows实例密码必须12到30位，至少包括包括四项（小写字母、大写字母、数字和特殊符号）中的三项。
        # - 若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # 特殊符号的取值范围： [( ) ` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? / ]
        # @type Password: String
        # @param KeyIds: 密钥ID列表。关联密钥后，就可以通过对应的私钥来访问实例；KeyId可通过接口DescribeKeyPairs获取，密钥与密码不能同时指定，同时Windows操作系统不支持指定密钥。当前仅支持购买的时候指定一个密钥。
        # @type KeyIds: Array
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为TRUE。取值范围：
        # <li>TRUE：表示保持镜像的登录设置</li>
        # <li>FALSE：表示不保持镜像的登录设置</li>默认取值：FALSE。
        # @type KeepImageLogin: Boolean

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

      # 弹性伸缩告警指标
      class MetricAlarm < TencentCloud::Common::AbstractModel
        # @param ComparisonOperator: 比较运算符，可选值：<br><li>GREATER_THAN：大于</li><li>GREATER_THAN_OR_EQUAL_TO：大于或等于</li><li>LESS_THAN：小于</li><li> LESS_THAN_OR_EQUAL_TO：小于或等于</li><li> EQUAL_TO：等于</li> <li>NOT_EQUAL_TO：不等于</li>
        # @type ComparisonOperator: String
        # @param MetricName: 指标名称，可选字段如下：<br><li>CPU_UTILIZATION：CPU利用率</li><li>MEM_UTILIZATION：内存利用率</li><li>LAN_TRAFFIC_OUT：内网出带宽</li><li>LAN_TRAFFIC_IN：内网入带宽</li><li>WAN_TRAFFIC_OUT：外网出带宽</li><li>WAN_TRAFFIC_IN：外网入带宽</li><li>TCP_CURR_ESTAB：TCP连接数</li>
        # @type MetricName: String
        # @param Threshold: 告警阈值：<br><li>CPU_UTILIZATION：[1, 100]，单位：%</li><li>MEM_UTILIZATION：[1, 100]，单位：%</li><li>LAN_TRAFFIC_OUT：>0，单位：Mbps </li><li>LAN_TRAFFIC_IN：>0，单位：Mbps</li><li>WAN_TRAFFIC_OUT：>0，单位：Mbps</li><li>WAN_TRAFFIC_IN：>0，单位：Mbps</li><li>TCP_CURR_ESTAB：>0, 单位：Count</li>
        # @type Threshold: Integer
        # @param Period: 时间周期，单位：秒，取值枚举值为60、300。
        # @type Period: Integer
        # @param ContinuousTime: 重复次数。取值范围 [1, 10]
        # @type ContinuousTime: Integer
        # @param Statistic: 统计类型，可选字段如下：<br><li>AVERAGE：平均值</li><li>MAXIMUM：最大值<li>MINIMUM：最小值</li><br> 默认取值：AVERAGE
        # @type Statistic: String
        # @param PreciseThreshold: 精确告警阈值，本参数不作为入参输入，仅用作查询接口出参：<br><li>CPU_UTILIZATION：(0, 100]，单位：%</li><li>MEM_UTILIZATION：(0, 100]，单位：%</li><li>LAN_TRAFFIC_OUT：>0，单位：Mbps </li><li>LAN_TRAFFIC_IN：>0，单位：Mbps</li><li>WAN_TRAFFIC_OUT：>0，单位：Mbps</li><li>WAN_TRAFFIC_IN：>0，单位：Mbps</li><li>TCP_CURR_ESTAB：>0, 单位：Count</li>
        # @type PreciseThreshold: Float

        attr_accessor :ComparisonOperator, :MetricName, :Threshold, :Period, :ContinuousTime, :Statistic, :PreciseThreshold

        def initialize(comparisonoperator=nil, metricname=nil, threshold=nil, period=nil, continuoustime=nil, statistic=nil, precisethreshold=nil)
          @ComparisonOperator = comparisonoperator
          @MetricName = metricname
          @Threshold = threshold
          @Period = period
          @ContinuousTime = continuoustime
          @Statistic = statistic
          @PreciseThreshold = precisethreshold
        end

        def deserialize(params)
          @ComparisonOperator = params['ComparisonOperator']
          @MetricName = params['MetricName']
          @Threshold = params['Threshold']
          @Period = params['Period']
          @ContinuousTime = params['ContinuousTime']
          @Statistic = params['Statistic']
          @PreciseThreshold = params['PreciseThreshold']
        end
      end

      # ModifyAutoScalingGroup请求参数结构体
      class ModifyAutoScalingGroupRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param AutoScalingGroupName: 伸缩组名称，在您账号中必须唯一。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超55个字节。
        # @type AutoScalingGroupName: String
        # @param DefaultCooldown: 默认冷却时间，单位秒，默认值为300
        # @type DefaultCooldown: Integer
        # @param DesiredCapacity: 期望实例数，大小介于最小实例数和最大实例数之间
        # @type DesiredCapacity: Integer
        # @param LaunchConfigurationId: 启动配置ID
        # @type LaunchConfigurationId: String
        # @param MaxSize: 最大实例数，取值范围为0-2000。
        # @type MaxSize: Integer
        # @param MinSize: 最小实例数，取值范围为0-2000。
        # @type MinSize: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param SubnetIds: 子网ID列表
        # @type SubnetIds: Array
        # @param TerminationPolicies: 销毁策略，目前长度上限为1。取值包括 OLDEST_INSTANCE 和 NEWEST_INSTANCE。
        # <li> OLDEST_INSTANCE 优先销毁伸缩组中最旧的实例。</li>
        # <li> NEWEST_INSTANCE，优先销毁伸缩组中最新的实例。</li>
        # @type TerminationPolicies: Array
        # @param VpcId: VPC ID，基础网络则填空字符串。修改为具体VPC ID时，需指定相应的SubnetIds；修改为基础网络时，需指定相应的Zones。
        # @type VpcId: String
        # @param Zones: 可用区列表
        # @type Zones: Array
        # @param RetryPolicy: 重试策略，取值包括 IMMEDIATE_RETRY、 INCREMENTAL_INTERVALS、NO_RETRY，默认取值为 IMMEDIATE_RETRY。部分成功的伸缩活动判定为一次失败活动。
        # <li>IMMEDIATE_RETRY，立即重试，在较短时间内快速重试，连续失败超过一定次数（5次）后不再重试。</li>
        # <li>INCREMENTAL_INTERVALS，间隔递增重试，随着连续失败次数的增加，重试间隔逐渐增大，重试间隔从秒级到1天不等。</li>
        # <li> NO_RETRY，不进行重试，直到再次收到用户调用或者告警信息后才会重试。</li>
        # @type RetryPolicy: String
        # @param ZonesCheckPolicy: 可用区校验策略，取值包括 ALL 和 ANY，默认取值为ANY。在伸缩组实际变更资源相关字段时（启动配置、可用区、子网）发挥作用。
        # <li> ALL，所有可用区（Zone）或子网（SubnetId）都可用则通过校验，否则校验报错。</li>
        # <li> ANY，存在任何一个可用区（Zone）或子网（SubnetId）可用则通过校验，否则校验报错。</li>

        # 可用区或子网不可用的常见原因包括该可用区CVM实例类型售罄、该可用区CBS云盘售罄、该可用区配额不足、该子网IP不足等。
        # 如果 Zones/SubnetIds 中可用区或者子网不存在，则无论 ZonesCheckPolicy 采用何种取值，都会校验报错。
        # @type ZonesCheckPolicy: String
        # @param ServiceSettings: 服务设置，包括云监控不健康替换等服务设置。
        # @type ServiceSettings: :class:`Tencentcloud::As.v20180419.models.ServiceSettings`
        # @param Ipv6AddressCount: 实例具有IPv6地址数量的配置，取值包括0、1。
        # @type Ipv6AddressCount: Integer
        # @param MultiZoneSubnetPolicy: 多可用区/子网策略，取值包括 PRIORITY 和 EQUALITY，默认为 PRIORITY。
        # <li> PRIORITY，按照可用区/子网列表的顺序，作为优先级来尝试创建实例，如果优先级最高的可用区/子网可以创建成功，则总在该可用区/子网创建。</li>
        # <li> EQUALITY：扩容出的实例会打散到多个可用区/子网，保证扩容后的各个可用区/子网实例数相对均衡。</li>

        # 与本策略相关的注意点：
        # <li> 当伸缩组为基础网络时，本策略适用于多可用区；当伸缩组为VPC网络时，本策略适用于多子网，此时不再考虑可用区因素，例如四个子网ABCD，其中ABC处于可用区1，D处于可用区2，此时考虑子网ABCD进行排序，而不考虑可用区1、2。</li>
        # <li> 本策略适用于多可用区/子网，不适用于启动配置的多机型。多机型按照优先级策略进行选择。</li>
        # <li> 按照 PRIORITY 策略创建实例时，先保证多机型的策略，后保证多可用区/子网的策略。例如多机型A、B，多子网1、2、3，会按照A1、A2、A3、B1、B2、B3 进行尝试，如果A1售罄，会尝试A2（而非B1）。</li>
        # @type MultiZoneSubnetPolicy: String
        # @param HealthCheckType: 伸缩组实例健康检查类型，取值如下：
        # <li>CVM：根据实例网络状态判断实例是否处于不健康状态，不健康的网络状态即发生实例 PING 不可达事件，详细判断标准可参考[实例健康检查](https://cloud.tencent.com/document/product/377/8553)</li>
        # <li>CLB：根据 CLB 的健康检查状态判断实例是否处于不健康状态，CLB健康检查原理可参考[健康检查](https://cloud.tencent.com/document/product/214/6097)</li>
        # @type HealthCheckType: String
        # @param LoadBalancerHealthCheckGracePeriod: CLB健康检查宽限期。
        # @type LoadBalancerHealthCheckGracePeriod: Integer
        # @param InstanceAllocationPolicy: 实例分配策略，取值包括 LAUNCH_CONFIGURATION 和 SPOT_MIXED。
        # <li> LAUNCH_CONFIGURATION，代表传统的按照启动配置模式。</li>
        # <li> SPOT_MIXED，代表竞价混合模式。目前仅支持启动配置为按量计费模式时使用混合模式，混合模式下，伸缩组将根据设定扩容按量或竞价机型。使用混合模式时，关联的启动配置的计费类型不可被修改。</li>
        # @type InstanceAllocationPolicy: String
        # @param SpotMixedAllocationPolicy: 竞价混合模式下，各计费类型实例的分配策略。
        # 仅当 InstanceAllocationPolicy 取 SPOT_MIXED 时可用。
        # @type SpotMixedAllocationPolicy: :class:`Tencentcloud::As.v20180419.models.SpotMixedAllocationPolicy`
        # @param CapacityRebalance: 容量重平衡功能，仅对伸缩组内的竞价实例有效。取值范围：
        # <li> TRUE，开启该功能，当伸缩组内的竞价实例即将被竞价实例服务自动回收前，AS 主动发起竞价实例销毁流程，如果有配置过缩容 hook，则销毁前 hook 会生效。销毁流程启动后，AS 会异步开启一个扩容活动，用于补齐期望实例数。</li>
        # <li> FALSE，不开启该功能，则 AS 等待竞价实例被销毁后才会去扩容补齐伸缩组期望实例数。</li>
        # @type CapacityRebalance: Boolean
        # @param InstanceNameIndexSettings: 实例名称序号相关设置。开启后为伸缩组内自动创建的实例名称添加递增的数字序号。
        # @type InstanceNameIndexSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameIndexSettings`

        attr_accessor :AutoScalingGroupId, :AutoScalingGroupName, :DefaultCooldown, :DesiredCapacity, :LaunchConfigurationId, :MaxSize, :MinSize, :ProjectId, :SubnetIds, :TerminationPolicies, :VpcId, :Zones, :RetryPolicy, :ZonesCheckPolicy, :ServiceSettings, :Ipv6AddressCount, :MultiZoneSubnetPolicy, :HealthCheckType, :LoadBalancerHealthCheckGracePeriod, :InstanceAllocationPolicy, :SpotMixedAllocationPolicy, :CapacityRebalance, :InstanceNameIndexSettings

        def initialize(autoscalinggroupid=nil, autoscalinggroupname=nil, defaultcooldown=nil, desiredcapacity=nil, launchconfigurationid=nil, maxsize=nil, minsize=nil, projectid=nil, subnetids=nil, terminationpolicies=nil, vpcid=nil, zones=nil, retrypolicy=nil, zonescheckpolicy=nil, servicesettings=nil, ipv6addresscount=nil, multizonesubnetpolicy=nil, healthchecktype=nil, loadbalancerhealthcheckgraceperiod=nil, instanceallocationpolicy=nil, spotmixedallocationpolicy=nil, capacityrebalance=nil, instancenameindexsettings=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @AutoScalingGroupName = autoscalinggroupname
          @DefaultCooldown = defaultcooldown
          @DesiredCapacity = desiredcapacity
          @LaunchConfigurationId = launchconfigurationid
          @MaxSize = maxsize
          @MinSize = minsize
          @ProjectId = projectid
          @SubnetIds = subnetids
          @TerminationPolicies = terminationpolicies
          @VpcId = vpcid
          @Zones = zones
          @RetryPolicy = retrypolicy
          @ZonesCheckPolicy = zonescheckpolicy
          @ServiceSettings = servicesettings
          @Ipv6AddressCount = ipv6addresscount
          @MultiZoneSubnetPolicy = multizonesubnetpolicy
          @HealthCheckType = healthchecktype
          @LoadBalancerHealthCheckGracePeriod = loadbalancerhealthcheckgraceperiod
          @InstanceAllocationPolicy = instanceallocationpolicy
          @SpotMixedAllocationPolicy = spotmixedallocationpolicy
          @CapacityRebalance = capacityrebalance
          @InstanceNameIndexSettings = instancenameindexsettings
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @AutoScalingGroupName = params['AutoScalingGroupName']
          @DefaultCooldown = params['DefaultCooldown']
          @DesiredCapacity = params['DesiredCapacity']
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @ProjectId = params['ProjectId']
          @SubnetIds = params['SubnetIds']
          @TerminationPolicies = params['TerminationPolicies']
          @VpcId = params['VpcId']
          @Zones = params['Zones']
          @RetryPolicy = params['RetryPolicy']
          @ZonesCheckPolicy = params['ZonesCheckPolicy']
          unless params['ServiceSettings'].nil?
            @ServiceSettings = ServiceSettings.new
            @ServiceSettings.deserialize(params['ServiceSettings'])
          end
          @Ipv6AddressCount = params['Ipv6AddressCount']
          @MultiZoneSubnetPolicy = params['MultiZoneSubnetPolicy']
          @HealthCheckType = params['HealthCheckType']
          @LoadBalancerHealthCheckGracePeriod = params['LoadBalancerHealthCheckGracePeriod']
          @InstanceAllocationPolicy = params['InstanceAllocationPolicy']
          unless params['SpotMixedAllocationPolicy'].nil?
            @SpotMixedAllocationPolicy = SpotMixedAllocationPolicy.new
            @SpotMixedAllocationPolicy.deserialize(params['SpotMixedAllocationPolicy'])
          end
          @CapacityRebalance = params['CapacityRebalance']
          unless params['InstanceNameIndexSettings'].nil?
            @InstanceNameIndexSettings = InstanceNameIndexSettings.new
            @InstanceNameIndexSettings.deserialize(params['InstanceNameIndexSettings'])
          end
        end
      end

      # ModifyAutoScalingGroup返回参数结构体
      class ModifyAutoScalingGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDesiredCapacity请求参数结构体
      class ModifyDesiredCapacityRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param DesiredCapacity: 期望实例数
        # @type DesiredCapacity: Integer
        # @param MinSize: 最小实例数，取值范围为0-2000。
        # @type MinSize: Integer
        # @param MaxSize: 最大实例数，取值范围为0-2000。
        # @type MaxSize: Integer

        attr_accessor :AutoScalingGroupId, :DesiredCapacity, :MinSize, :MaxSize

        def initialize(autoscalinggroupid=nil, desiredcapacity=nil, minsize=nil, maxsize=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @DesiredCapacity = desiredcapacity
          @MinSize = minsize
          @MaxSize = maxsize
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @DesiredCapacity = params['DesiredCapacity']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
        end
      end

      # ModifyDesiredCapacity返回参数结构体
      class ModifyDesiredCapacityResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLaunchConfigurationAttributes请求参数结构体
      class ModifyLaunchConfigurationAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: 启动配置ID
        # @type LaunchConfigurationId: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-8toqc6s3`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        # @type ImageId: String
        # @param InstanceTypes: 实例类型列表，不同实例机型指定了不同的资源规格，最多支持10种实例机型。
        # InstanceType 指定单一实例类型，通过设置 InstanceTypes可以指定多实例类型，并使原有的InstanceType失效。
        # @type InstanceTypes: Array
        # @param InstanceTypesCheckPolicy: 实例类型校验策略，在实际修改 InstanceTypes 时发挥作用，取值包括 ALL 和 ANY，默认取值为ANY。
        # <li> ALL，所有实例类型（InstanceType）都可用则通过校验，否则校验报错。</li>
        # <li> ANY，存在任何一个实例类型（InstanceType）可用则通过校验，否则校验报错。</li>
        # 实例类型不可用的常见原因包括该实例类型售罄、对应云盘售罄等。
        # 如果 InstanceTypes 中一款机型不存在或者已下线，则无论 InstanceTypesCheckPolicy 采用何种取值，都会校验报错。
        # @type InstanceTypesCheckPolicy: String
        # @param LaunchConfigurationName: 启动配置显示名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type LaunchConfigurationName: String
        # @param UserData: 经过 Base64 编码后的自定义数据，最大长度不超过16KB。如果要清空UserData，则指定其为空字符串。
        # @type UserData: String
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的`SecurityGroupId`字段来获取。
        # 若指定该参数，请至少提供一个安全组，列表顺序有先后。
        # @type SecurityGroupIds: Array
        # @param InternetAccessible: 公网带宽相关信息设置。
        # 当公网出带宽上限为0Mbps时，不支持修改为开通分配公网IP；相应的，当前为开通分配公网IP时，修改的公网出带宽上限值必须大于0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::As.v20180419.models.InternetAccessible`
        # @param InstanceChargeType: 实例计费类型。具体取值范围如下：
        # <li>POSTPAID_BY_HOUR：按小时后付费</li>
        # <li>SPOTPAID：竞价付费</li>
        # <li>PREPAID：预付费，即包年包月</li>
        # <li>CDCPAID：专用集群付费</li>
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        # 若修改实例的付费模式为预付费，则该参数必传；从预付费修改为其他付费模式时，本字段原信息会自动丢弃。
        # 当新增该字段时，必须传递购买实例的时长，其它未传递字段会设置为默认值。
        # 当修改本字段时，当前付费模式必须为预付费。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::As.v20180419.models.InstanceChargePrepaid`
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数。
        # 若修改实例的付费模式为竞价付费，则该参数必传；从竞价付费修改为其他付费模式时，本字段原信息会自动丢弃。
        # 当新增该字段时，必须传递竞价相关选项下的竞价出价，其它未传递字段会设置为默认值。
        # 当修改本字段时，当前付费模式必须为竞价付费。
        # @type InstanceMarketOptions: :class:`Tencentcloud::As.v20180419.models.InstanceMarketOptionsRequest`
        # @param DiskTypePolicy: 云盘类型选择策略，取值范围：
        # <li>ORIGINAL：使用设置的云盘类型。</li>
        # <li>AUTOMATIC：自动选择当前可用的云盘类型。</li>
        # @type DiskTypePolicy: String
        # @param SystemDisk: 实例系统盘配置信息。
        # @type SystemDisk: :class:`Tencentcloud::As.v20180419.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。
        # 最多支持指定11块数据盘。采取整体修改，因此请提供修改后的全部值。
        # 数据盘类型默认与系统盘类型保持一致。
        # @type DataDisks: Array
        # @param HostNameSettings: 云服务器主机名（HostName）的相关设置。
        # 不支持windows实例设置主机名。
        # 新增该属性时，必须传递云服务器的主机名，其它未传递字段会设置为默认值。
        # @type HostNameSettings: :class:`Tencentcloud::As.v20180419.models.HostNameSettings`
        # @param InstanceNameSettings: 云服务器（InstanceName）实例名的相关设置。
        # 如果用户在启动配置中设置此字段，则伸缩组创建出的实例 InstanceName 参照此字段进行设置，并传递给 CVM；如果用户未在启动配置中设置此字段，则伸缩组创建出的实例 InstanceName 按照“as-{{ 伸缩组AutoScalingGroupName }}”进行设置，并传递给 CVM。
        # 新增该属性时，必须传递云服务器的实例名称，其它未传递字段会设置为默认值。
        # @type InstanceNameSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。
        # @type EnhancedService: :class:`Tencentcloud::As.v20180419.models.EnhancedService`
        # @param CamRoleName: CAM角色名称。可通过DescribeRoleList接口返回值中的roleName获取。
        # @type CamRoleName: String
        # @param HpcClusterId: 高性能计算集群ID。<br>
        # 注意：此字段默认为空。
        # @type HpcClusterId: String
        # @param IPv6InternetAccessible: IPv6公网带宽相关信息设置。若新建实例包含IPv6地址，该参数可为新建实例的IPv6地址分配公网带宽。关联启动配置的伸缩组Ipv6AddressCount参数为0时，该参数不会生效。
        # @type IPv6InternetAccessible: :class:`Tencentcloud::As.v20180419.models.IPv6InternetAccessible`
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param LoginSettings: 实例登录设置，包括密码、密钥或保持镜像的原始登录设置。<br>请注意，指定新的登录设置会覆盖原有登录设置。例如，如果您之前使用密码登录，使用该参数将登录设置修改为密钥，则原有密码被清除。
        # @type LoginSettings: :class:`Tencentcloud::As.v20180419.models.LoginSettings`
        # @param InstanceTags: 实例标签列表。通过指定该参数，可以为扩容的实例绑定标签。最多支持指定10个标签。
        # 该参数会覆盖原有的实例标签列表，如需新增标签，需将新标签和原有标签一并传入。
        # @type InstanceTags: Array
        # @param ImageFamily: 镜像族名称。
        # @type ImageFamily: String
        # @param DedicatedClusterId: 本地专用集群ID。
        # @type DedicatedClusterId: String

        attr_accessor :LaunchConfigurationId, :ImageId, :InstanceTypes, :InstanceTypesCheckPolicy, :LaunchConfigurationName, :UserData, :SecurityGroupIds, :InternetAccessible, :InstanceChargeType, :InstanceChargePrepaid, :InstanceMarketOptions, :DiskTypePolicy, :SystemDisk, :DataDisks, :HostNameSettings, :InstanceNameSettings, :EnhancedService, :CamRoleName, :HpcClusterId, :IPv6InternetAccessible, :DisasterRecoverGroupIds, :LoginSettings, :InstanceTags, :ImageFamily, :DedicatedClusterId

        def initialize(launchconfigurationid=nil, imageid=nil, instancetypes=nil, instancetypescheckpolicy=nil, launchconfigurationname=nil, userdata=nil, securitygroupids=nil, internetaccessible=nil, instancechargetype=nil, instancechargeprepaid=nil, instancemarketoptions=nil, disktypepolicy=nil, systemdisk=nil, datadisks=nil, hostnamesettings=nil, instancenamesettings=nil, enhancedservice=nil, camrolename=nil, hpcclusterid=nil, ipv6internetaccessible=nil, disasterrecovergroupids=nil, loginsettings=nil, instancetags=nil, imagefamily=nil, dedicatedclusterid=nil)
          @LaunchConfigurationId = launchconfigurationid
          @ImageId = imageid
          @InstanceTypes = instancetypes
          @InstanceTypesCheckPolicy = instancetypescheckpolicy
          @LaunchConfigurationName = launchconfigurationname
          @UserData = userdata
          @SecurityGroupIds = securitygroupids
          @InternetAccessible = internetaccessible
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceMarketOptions = instancemarketoptions
          @DiskTypePolicy = disktypepolicy
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @HostNameSettings = hostnamesettings
          @InstanceNameSettings = instancenamesettings
          @EnhancedService = enhancedservice
          @CamRoleName = camrolename
          @HpcClusterId = hpcclusterid
          @IPv6InternetAccessible = ipv6internetaccessible
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @LoginSettings = loginsettings
          @InstanceTags = instancetags
          @ImageFamily = imagefamily
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @ImageId = params['ImageId']
          @InstanceTypes = params['InstanceTypes']
          @InstanceTypesCheckPolicy = params['InstanceTypesCheckPolicy']
          @LaunchConfigurationName = params['LaunchConfigurationName']
          @UserData = params['UserData']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @DiskTypePolicy = params['DiskTypePolicy']
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
          unless params['HostNameSettings'].nil?
            @HostNameSettings = HostNameSettings.new
            @HostNameSettings.deserialize(params['HostNameSettings'])
          end
          unless params['InstanceNameSettings'].nil?
            @InstanceNameSettings = InstanceNameSettings.new
            @InstanceNameSettings.deserialize(params['InstanceNameSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @CamRoleName = params['CamRoleName']
          @HpcClusterId = params['HpcClusterId']
          unless params['IPv6InternetAccessible'].nil?
            @IPv6InternetAccessible = IPv6InternetAccessible.new
            @IPv6InternetAccessible.deserialize(params['IPv6InternetAccessible'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['InstanceTags'].nil?
            @InstanceTags = []
            params['InstanceTags'].each do |i|
              instancetag_tmp = InstanceTag.new
              instancetag_tmp.deserialize(i)
              @InstanceTags << instancetag_tmp
            end
          end
          @ImageFamily = params['ImageFamily']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # ModifyLaunchConfigurationAttributes返回参数结构体
      class ModifyLaunchConfigurationAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLifecycleHook请求参数结构体
      class ModifyLifecycleHookRequest < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩ID。
        # @type LifecycleHookId: String
        # @param LifecycleHookName: 生命周期挂钩名称。
        # @type LifecycleHookName: String
        # @param LifecycleTransition: 进入生命周期挂钩场景，取值包括：
        # <li> INSTANCE_LAUNCHING：实例启动后</li>
        # <li> INSTANCE_TERMINATING：实例销毁前</li>
        # @type LifecycleTransition: String
        # @param DefaultResult: 定义伸缩组在生命周期挂钩超时的情况下应采取的操作，取值包括：
        # <li> CONTINUE： 超时后继续伸缩活动</li>
        # <li> ABANDON：超时后终止伸缩活动</li>
        # @type DefaultResult: String
        # @param HeartbeatTimeout: 生命周期挂钩超时之前可以经过的最长时间（以秒为单位），范围从 30 到 7200 秒。
        # @type HeartbeatTimeout: Integer
        # @param NotificationMetadata: 弹性伸缩向通知目标发送的附加信息。
        # @type NotificationMetadata: String
        # @param LifecycleTransitionType: 进行生命周期挂钩的场景类型，取值范围包括`NORMAL`和 `EXTENSION`。说明：设置为`EXTENSION`值，在AttachInstances、DetachInstances、RemoveInstances 接口时会触发生命周期挂钩操作，值为`NORMAL`则不会在这些接口中触发生命周期挂钩。
        # @type LifecycleTransitionType: String
        # @param NotificationTarget: 通知目标信息。
        # @type NotificationTarget: :class:`Tencentcloud::As.v20180419.models.NotificationTarget`
        # @param LifecycleCommand: 远程命令执行对象。
        # @type LifecycleCommand: :class:`Tencentcloud::As.v20180419.models.LifecycleCommand`

        attr_accessor :LifecycleHookId, :LifecycleHookName, :LifecycleTransition, :DefaultResult, :HeartbeatTimeout, :NotificationMetadata, :LifecycleTransitionType, :NotificationTarget, :LifecycleCommand

        def initialize(lifecyclehookid=nil, lifecyclehookname=nil, lifecycletransition=nil, defaultresult=nil, heartbeattimeout=nil, notificationmetadata=nil, lifecycletransitiontype=nil, notificationtarget=nil, lifecyclecommand=nil)
          @LifecycleHookId = lifecyclehookid
          @LifecycleHookName = lifecyclehookname
          @LifecycleTransition = lifecycletransition
          @DefaultResult = defaultresult
          @HeartbeatTimeout = heartbeattimeout
          @NotificationMetadata = notificationmetadata
          @LifecycleTransitionType = lifecycletransitiontype
          @NotificationTarget = notificationtarget
          @LifecycleCommand = lifecyclecommand
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
          @LifecycleHookName = params['LifecycleHookName']
          @LifecycleTransition = params['LifecycleTransition']
          @DefaultResult = params['DefaultResult']
          @HeartbeatTimeout = params['HeartbeatTimeout']
          @NotificationMetadata = params['NotificationMetadata']
          @LifecycleTransitionType = params['LifecycleTransitionType']
          unless params['NotificationTarget'].nil?
            @NotificationTarget = NotificationTarget.new
            @NotificationTarget.deserialize(params['NotificationTarget'])
          end
          unless params['LifecycleCommand'].nil?
            @LifecycleCommand = LifecycleCommand.new
            @LifecycleCommand.deserialize(params['LifecycleCommand'])
          end
        end
      end

      # ModifyLifecycleHook返回参数结构体
      class ModifyLifecycleHookResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerTargetAttributes请求参数结构体
      class ModifyLoadBalancerTargetAttributesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param ForwardLoadBalancers: 需修改目标规则属性的应用型负载均衡器列表，列表长度上限为100
        # @type ForwardLoadBalancers: Array

        attr_accessor :AutoScalingGroupId, :ForwardLoadBalancers

        def initialize(autoscalinggroupid=nil, forwardloadbalancers=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @ForwardLoadBalancers = forwardloadbalancers
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          unless params['ForwardLoadBalancers'].nil?
            @ForwardLoadBalancers = []
            params['ForwardLoadBalancers'].each do |i|
              forwardloadbalancer_tmp = ForwardLoadBalancer.new
              forwardloadbalancer_tmp.deserialize(i)
              @ForwardLoadBalancers << forwardloadbalancer_tmp
            end
          end
        end
      end

      # ModifyLoadBalancerTargetAttributes返回参数结构体
      class ModifyLoadBalancerTargetAttributesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoadBalancers请求参数结构体
      class ModifyLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param LoadBalancerIds: 传统负载均衡器ID列表，目前长度上限为20，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        # @type LoadBalancerIds: Array
        # @param ForwardLoadBalancers: 应用型负载均衡器列表，目前长度上限为100，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        # @type ForwardLoadBalancers: Array
        # @param LoadBalancersCheckPolicy: 负载均衡器校验策略，取值包括 ALL 和 DIFF，默认取值为 ALL。
        # <li> ALL，所有负载均衡器都合法则通过校验，否则校验报错。</li>
        # <li> DIFF，仅校验负载均衡器参数中实际变化的部分，如果合法则通过校验，否则校验报错。</li>
        # @type LoadBalancersCheckPolicy: String

        attr_accessor :AutoScalingGroupId, :LoadBalancerIds, :ForwardLoadBalancers, :LoadBalancersCheckPolicy

        def initialize(autoscalinggroupid=nil, loadbalancerids=nil, forwardloadbalancers=nil, loadbalancerscheckpolicy=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @LoadBalancerIds = loadbalancerids
          @ForwardLoadBalancers = forwardloadbalancers
          @LoadBalancersCheckPolicy = loadbalancerscheckpolicy
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['ForwardLoadBalancers'].nil?
            @ForwardLoadBalancers = []
            params['ForwardLoadBalancers'].each do |i|
              forwardloadbalancer_tmp = ForwardLoadBalancer.new
              forwardloadbalancer_tmp.deserialize(i)
              @ForwardLoadBalancers << forwardloadbalancer_tmp
            end
          end
          @LoadBalancersCheckPolicy = params['LoadBalancersCheckPolicy']
        end
      end

      # ModifyLoadBalancers返回参数结构体
      class ModifyLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyNotificationConfiguration请求参数结构体
      class ModifyNotificationConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingNotificationId: 待修改的通知ID。
        # @type AutoScalingNotificationId: String
        # @param NotificationTypes: 通知类型，即为需要订阅的通知类型集合，取值范围如下：
        # <li>SCALE_OUT_SUCCESSFUL：扩容成功</li>
        # <li>SCALE_OUT_FAILED：扩容失败</li>
        # <li>SCALE_IN_SUCCESSFUL：缩容成功</li>
        # <li>SCALE_IN_FAILED：缩容失败</li>
        # <li>REPLACE_UNHEALTHY_INSTANCE_SUCCESSFUL：替换不健康子机成功</li>
        # <li>REPLACE_UNHEALTHY_INSTANCE_FAILED：替换不健康子机失败</li>
        # @type NotificationTypes: Array
        # @param NotificationUserGroupIds: 通知组ID，即为用户组ID集合，用户组ID可以通过[ListGroups](https://cloud.tencent.com/document/product/598/34589)查询。
        # @type NotificationUserGroupIds: Array
        # @param QueueName: CMQ 队列或 TDMQ CMQ 队列名。
        # @type QueueName: String
        # @param TopicName: CMQ 主题或 TDMQ CMQ 主题名。
        # @type TopicName: String

        attr_accessor :AutoScalingNotificationId, :NotificationTypes, :NotificationUserGroupIds, :QueueName, :TopicName

        def initialize(autoscalingnotificationid=nil, notificationtypes=nil, notificationusergroupids=nil, queuename=nil, topicname=nil)
          @AutoScalingNotificationId = autoscalingnotificationid
          @NotificationTypes = notificationtypes
          @NotificationUserGroupIds = notificationusergroupids
          @QueueName = queuename
          @TopicName = topicname
        end

        def deserialize(params)
          @AutoScalingNotificationId = params['AutoScalingNotificationId']
          @NotificationTypes = params['NotificationTypes']
          @NotificationUserGroupIds = params['NotificationUserGroupIds']
          @QueueName = params['QueueName']
          @TopicName = params['TopicName']
        end
      end

      # ModifyNotificationConfiguration返回参数结构体
      class ModifyNotificationConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyScalingPolicy请求参数结构体
      class ModifyScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingPolicyId: 告警策略ID。
        # @type AutoScalingPolicyId: String
        # @param ScalingPolicyName: 告警策略名称。
        # @type ScalingPolicyName: String
        # @param AdjustmentType: 告警触发后，期望实例数修改方式，仅适用于简单策略。取值范围：<br><li>CHANGE_IN_CAPACITY：增加或减少若干期望实例数</li><li>EXACT_CAPACITY：调整至指定期望实例数</li> <li>PERCENT_CHANGE_IN_CAPACITY：按百分比调整期望实例数</li>
        # @type AdjustmentType: String
        # @param AdjustmentValue: 告警触发后，期望实例数的调整值，仅适用于简单策略。<li>当 AdjustmentType 为 CHANGE_IN_CAPACITY 时，AdjustmentValue 为正数表示告警触发后增加实例，为负数表示告警触发后减少实例 </li> <li> 当 AdjustmentType 为 EXACT_CAPACITY 时，AdjustmentValue 的值即为告警触发后新的期望实例数，需要大于或等于0 </li> <li> 当 AdjustmentType 为 PERCENT_CHANGE_IN_CAPACITY 时，AdjusmentValue 为正数表示告警触发后按百分比增加实例，为负数表示告警触发后按百分比减少实例，单位是：%。</li>
        # @type AdjustmentValue: Integer
        # @param Cooldown: 冷却时间，仅适用于简单策略，单位为秒。
        # @type Cooldown: Integer
        # @param MetricAlarm: 告警监控指标，仅适用于简单策略。
        # @type MetricAlarm: :class:`Tencentcloud::As.v20180419.models.MetricAlarm`
        # @param PredefinedMetricType: 预定义监控项，仅适用于目标追踪策略。取值范围：<br><li>ASG_AVG_CPU_UTILIZATION：平均CPU使用率</li><li>ASG_AVG_LAN_TRAFFIC_OUT：平均内网出带宽</li><li>ASG_AVG_LAN_TRAFFIC_IN：平均内网入带宽</li><li>ASG_AVG_WAN_TRAFFIC_OUT：平均外网出带宽</li><li>ASG_AVG_WAN_TRAFFIC_IN：平均外网出带宽</li>
        # @type PredefinedMetricType: String
        # @param TargetValue: 目标值，仅适用于目标追踪策略。<br><li>ASG_AVG_CPU_UTILIZATION：[1, 100)，单位：%</li><li>ASG_AVG_LAN_TRAFFIC_OUT：>0，单位：Mbps</li><li>ASG_AVG_LAN_TRAFFIC_IN：>0，单位：Mbps</li><li>ASG_AVG_WAN_TRAFFIC_OUT：>0，单位：Mbps</li><li>ASG_AVG_WAN_TRAFFIC_IN：>0，单位：Mbps</li>
        # @type TargetValue: Integer
        # @param EstimatedInstanceWarmup: 实例预热时间，单位为秒，仅适用于目标追踪策略。取值范围为0-3600。
        # @type EstimatedInstanceWarmup: Integer
        # @param DisableScaleIn: 是否禁用缩容，仅适用于目标追踪策略。取值范围：<br><li>true：目标追踪策略仅触发扩容</li><li>false：目标追踪策略触发扩容和缩容</li>
        # @type DisableScaleIn: Boolean
        # @param NotificationUserGroupIds: 此参数已不再生效，请使用[创建通知](https://cloud.tencent.com/document/api/377/33185)。
        # 通知组ID，即为用户组ID集合。
        # @type NotificationUserGroupIds: Array

        attr_accessor :AutoScalingPolicyId, :ScalingPolicyName, :AdjustmentType, :AdjustmentValue, :Cooldown, :MetricAlarm, :PredefinedMetricType, :TargetValue, :EstimatedInstanceWarmup, :DisableScaleIn, :NotificationUserGroupIds

        def initialize(autoscalingpolicyid=nil, scalingpolicyname=nil, adjustmenttype=nil, adjustmentvalue=nil, cooldown=nil, metricalarm=nil, predefinedmetrictype=nil, targetvalue=nil, estimatedinstancewarmup=nil, disablescalein=nil, notificationusergroupids=nil)
          @AutoScalingPolicyId = autoscalingpolicyid
          @ScalingPolicyName = scalingpolicyname
          @AdjustmentType = adjustmenttype
          @AdjustmentValue = adjustmentvalue
          @Cooldown = cooldown
          @MetricAlarm = metricalarm
          @PredefinedMetricType = predefinedmetrictype
          @TargetValue = targetvalue
          @EstimatedInstanceWarmup = estimatedinstancewarmup
          @DisableScaleIn = disablescalein
          @NotificationUserGroupIds = notificationusergroupids
        end

        def deserialize(params)
          @AutoScalingPolicyId = params['AutoScalingPolicyId']
          @ScalingPolicyName = params['ScalingPolicyName']
          @AdjustmentType = params['AdjustmentType']
          @AdjustmentValue = params['AdjustmentValue']
          @Cooldown = params['Cooldown']
          unless params['MetricAlarm'].nil?
            @MetricAlarm = MetricAlarm.new
            @MetricAlarm.deserialize(params['MetricAlarm'])
          end
          @PredefinedMetricType = params['PredefinedMetricType']
          @TargetValue = params['TargetValue']
          @EstimatedInstanceWarmup = params['EstimatedInstanceWarmup']
          @DisableScaleIn = params['DisableScaleIn']
          @NotificationUserGroupIds = params['NotificationUserGroupIds']
        end
      end

      # ModifyScalingPolicy返回参数结构体
      class ModifyScalingPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyScheduledAction请求参数结构体
      class ModifyScheduledActionRequest < TencentCloud::Common::AbstractModel
        # @param ScheduledActionId: 待修改的定时任务ID
        # @type ScheduledActionId: String
        # @param ScheduledActionName: 定时任务名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。同一伸缩组下必须唯一。
        # @type ScheduledActionName: String
        # @param MaxSize: 当定时任务触发时，设置的伸缩组最大实例数。
        # @type MaxSize: Integer
        # @param MinSize: 当定时任务触发时，设置的伸缩组最小实例数。
        # @type MinSize: Integer
        # @param DesiredCapacity: 当定时任务触发时，设置的伸缩组期望实例数。
        # @type DesiredCapacity: Integer
        # @param StartTime: 定时任务的首次触发时间，取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。
        # @type StartTime: String
        # @param EndTime: 定时任务的结束时间，取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。<br>此参数与`Recurrence`需要同时指定，到达结束时间之后，定时任务将不再生效。
        # @type EndTime: String
        # @param Recurrence: 定时任务的重复方式。为标准 Cron 格式<br>此参数与`EndTime`需要同时指定。
        # @type Recurrence: String

        attr_accessor :ScheduledActionId, :ScheduledActionName, :MaxSize, :MinSize, :DesiredCapacity, :StartTime, :EndTime, :Recurrence

        def initialize(scheduledactionid=nil, scheduledactionname=nil, maxsize=nil, minsize=nil, desiredcapacity=nil, starttime=nil, endtime=nil, recurrence=nil)
          @ScheduledActionId = scheduledactionid
          @ScheduledActionName = scheduledactionname
          @MaxSize = maxsize
          @MinSize = minsize
          @DesiredCapacity = desiredcapacity
          @StartTime = starttime
          @EndTime = endtime
          @Recurrence = recurrence
        end

        def deserialize(params)
          @ScheduledActionId = params['ScheduledActionId']
          @ScheduledActionName = params['ScheduledActionName']
          @MaxSize = params['MaxSize']
          @MinSize = params['MinSize']
          @DesiredCapacity = params['DesiredCapacity']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Recurrence = params['Recurrence']
        end
      end

      # ModifyScheduledAction返回参数结构体
      class ModifyScheduledActionResponse < TencentCloud::Common::AbstractModel
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

      # 通知目标
      class NotificationTarget < TencentCloud::Common::AbstractModel
        # @param TargetType: 目标类型，取值范围包括`CMQ_QUEUE`、`CMQ_TOPIC`、`TDMQ_CMQ_QUEUE`、`TDMQ_CMQ_TOPIC`。
        # <li> CMQ_QUEUE，指腾讯云消息队列-队列模型。</li>
        # <li> CMQ_TOPIC，指腾讯云消息队列-主题模型。</li>
        # <li> TDMQ_CMQ_QUEUE，指腾讯云 TDMQ 消息队列-队列模型。</li>
        # <li> TDMQ_CMQ_TOPIC，指腾讯云 TDMQ 消息队列-主题模型。</li>
        # @type TargetType: String
        # @param QueueName: 队列名称，如果`TargetType`取值为`CMQ_QUEUE` 或 `TDMQ_CMQ_QUEUE`，则本字段必填。
        # @type QueueName: String
        # @param TopicName: 主题名称，如果`TargetType`取值为`CMQ_TOPIC` 或 `TDMQ_CMQ_TOPIC`，则本字段必填。
        # @type TopicName: String

        attr_accessor :TargetType, :QueueName, :TopicName

        def initialize(targettype=nil, queuename=nil, topicname=nil)
          @TargetType = targettype
          @QueueName = queuename
          @TopicName = topicname
        end

        def deserialize(params)
          @TargetType = params['TargetType']
          @QueueName = params['QueueName']
          @TopicName = params['TopicName']
        end
      end

      # 实例刷新活动。
      class RefreshActivity < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组 ID。
        # @type AutoScalingGroupId: String
        # @param RefreshActivityId: 刷新活动 ID。
        # @type RefreshActivityId: String
        # @param OriginRefreshActivityId: 原始刷新活动ID，仅在回滚刷新活动中存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginRefreshActivityId: String
        # @param RefreshBatchSet: 刷新批次信息列表。
        # @type RefreshBatchSet: Array
        # @param RefreshMode: 刷新模式。
        # @type RefreshMode: String
        # @param RefreshSettings: 实例更新设置参数。
        # @type RefreshSettings: :class:`Tencentcloud::As.v20180419.models.RefreshSettings`
        # @param ActivityType: 刷新活动类型。取值如下：
        # <li>NORMAL：正常刷新活动</li>
        # <li>ROLLBACK：回滚刷新活动</li>
        # @type ActivityType: String
        # @param Status: 刷新活动状态。取值如下：
        # <li>INIT：初始化中</li>
        # <li>RUNNING：运行中</li>
        # <li>SUCCESSFUL：活动成功</li>
        # <li>FAILED_PAUSE：因刷新批次失败暂停</li>
        # <li>AUTO_PAUSE：因暂停策略自动暂停</li>
        # <li>MANUAL_PAUSE：手动暂停</li>
        # <li>CANCELLED：活动取消</li>
        # <li>FAILED：活动失败</li>
        # @type Status: String
        # @param CurrentRefreshBatchNum: 当前刷新批次序号。例如，2 表示当前活动正在刷新第二批次的实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentRefreshBatchNum: Integer
        # @param StartTime: 刷新活动开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 刷新活动结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CreatedTime: 刷新活动创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String

        attr_accessor :AutoScalingGroupId, :RefreshActivityId, :OriginRefreshActivityId, :RefreshBatchSet, :RefreshMode, :RefreshSettings, :ActivityType, :Status, :CurrentRefreshBatchNum, :StartTime, :EndTime, :CreatedTime

        def initialize(autoscalinggroupid=nil, refreshactivityid=nil, originrefreshactivityid=nil, refreshbatchset=nil, refreshmode=nil, refreshsettings=nil, activitytype=nil, status=nil, currentrefreshbatchnum=nil, starttime=nil, endtime=nil, createdtime=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RefreshActivityId = refreshactivityid
          @OriginRefreshActivityId = originrefreshactivityid
          @RefreshBatchSet = refreshbatchset
          @RefreshMode = refreshmode
          @RefreshSettings = refreshsettings
          @ActivityType = activitytype
          @Status = status
          @CurrentRefreshBatchNum = currentrefreshbatchnum
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RefreshActivityId = params['RefreshActivityId']
          @OriginRefreshActivityId = params['OriginRefreshActivityId']
          unless params['RefreshBatchSet'].nil?
            @RefreshBatchSet = []
            params['RefreshBatchSet'].each do |i|
              refreshbatch_tmp = RefreshBatch.new
              refreshbatch_tmp.deserialize(i)
              @RefreshBatchSet << refreshbatch_tmp
            end
          end
          @RefreshMode = params['RefreshMode']
          unless params['RefreshSettings'].nil?
            @RefreshSettings = RefreshSettings.new
            @RefreshSettings.deserialize(params['RefreshSettings'])
          end
          @ActivityType = params['ActivityType']
          @Status = params['Status']
          @CurrentRefreshBatchNum = params['CurrentRefreshBatchNum']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 实例刷新批次信息，包含该批次的刷新状态、实例、起止时间等信息。
      class RefreshBatch < TencentCloud::Common::AbstractModel
        # @param RefreshBatchNum: 刷新批次序号。例如，2 表示当前批次实例会在第二批次进行实例刷新。
        # @type RefreshBatchNum: Integer
        # @param RefreshBatchStatus: 刷新批次状态。取值如下：<li>WAITING：待刷新</li><li>INIT：初始化中</li><li>RUNNING：刷新中</li><li>FAILED:  刷新失败</li><li>PARTIALLY_SUCCESSFUL：批次部分成功</li><li>CANCELLED：已取消</li><li>SUCCESSFUL：刷新成功</li>
        # @type RefreshBatchStatus: String
        # @param RefreshBatchRelatedInstanceSet: 刷新批次关联实例列表。
        # @type RefreshBatchRelatedInstanceSet: Array
        # @param StartTime: 刷新批次开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 刷新批次结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :RefreshBatchNum, :RefreshBatchStatus, :RefreshBatchRelatedInstanceSet, :StartTime, :EndTime

        def initialize(refreshbatchnum=nil, refreshbatchstatus=nil, refreshbatchrelatedinstanceset=nil, starttime=nil, endtime=nil)
          @RefreshBatchNum = refreshbatchnum
          @RefreshBatchStatus = refreshbatchstatus
          @RefreshBatchRelatedInstanceSet = refreshbatchrelatedinstanceset
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @RefreshBatchNum = params['RefreshBatchNum']
          @RefreshBatchStatus = params['RefreshBatchStatus']
          unless params['RefreshBatchRelatedInstanceSet'].nil?
            @RefreshBatchRelatedInstanceSet = []
            params['RefreshBatchRelatedInstanceSet'].each do |i|
              refreshbatchrelatedinstance_tmp = RefreshBatchRelatedInstance.new
              refreshbatchrelatedinstance_tmp.deserialize(i)
              @RefreshBatchRelatedInstanceSet << refreshbatchrelatedinstance_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 刷新批次关联实例，包含单个实例的刷新活动状态、对应伸缩活动等信息。
      class RefreshBatchRelatedInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param InstanceStatus: 刷新实例状态。如果在刷新时实例被移出或销毁，状态会更新为 NOT_FOUND。取值如下：<br><li>WAITING：待刷新</li><li>INIT：初始化中</li><li>RUNNING：刷新中</li><li>FAILED：刷新失败</li><li>CANCELLED：已取消</li><li>SUCCESSFUL：刷新成功</li><li>NOT_FOUND：实例不存在
        # @type InstanceStatus: String
        # @param LastActivityId: 实例刷新中最近一次伸缩活动 ID，可通过 DescribeAutoScalingActivities 接口查询。
        # 需注意伸缩活动与实例刷新活动不同，一次实例刷新活动可能包括多次伸缩活动。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastActivityId: String
        # @param InstanceStatusMessage: 实例刷新状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatusMessage: String

        attr_accessor :InstanceId, :InstanceStatus, :LastActivityId, :InstanceStatusMessage

        def initialize(instanceid=nil, instancestatus=nil, lastactivityid=nil, instancestatusmessage=nil)
          @InstanceId = instanceid
          @InstanceStatus = instancestatus
          @LastActivityId = lastactivityid
          @InstanceStatusMessage = instancestatusmessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceStatus = params['InstanceStatus']
          @LastActivityId = params['LastActivityId']
          @InstanceStatusMessage = params['InstanceStatusMessage']
        end
      end

      # 实例刷新设置。
      class RefreshSettings < TencentCloud::Common::AbstractModel
        # @param RollingUpdateSettings: 滚动更新设置参数。RefreshMode 为滚动更新该参数必须填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RollingUpdateSettings: :class:`Tencentcloud::As.v20180419.models.RollingUpdateSettings`
        # @param CheckInstanceTargetHealth: 实例后端服务健康状态检查，默认为 FALSE。仅针对绑定应用型负载均衡器的伸缩组生效，开启该检查后，如刷新后实例未通过检查，负载均衡器端口权重始终为 0，且标记为刷新失败。取值范围如下：<li>TRUE：开启检查</li><li>FALSE：不开启检查</li>
        # @type CheckInstanceTargetHealth: Boolean

        attr_accessor :RollingUpdateSettings, :CheckInstanceTargetHealth

        def initialize(rollingupdatesettings=nil, checkinstancetargethealth=nil)
          @RollingUpdateSettings = rollingupdatesettings
          @CheckInstanceTargetHealth = checkinstancetargethealth
        end

        def deserialize(params)
          unless params['RollingUpdateSettings'].nil?
            @RollingUpdateSettings = RollingUpdateSettings.new
            @RollingUpdateSettings.deserialize(params['RollingUpdateSettings'])
          end
          @CheckInstanceTargetHealth = params['CheckInstanceTargetHealth']
        end
      end

      # 与本次伸缩活动相关的实例信息。
      class RelatedInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceStatus: 实例在伸缩活动中的状态。取值如下：
        # INIT：初始化中
        # RUNNING：实例操作中
        # SUCCESSFUL：活动成功
        # FAILED：活动失败
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

      # RemoveInstances请求参数结构体
      class RemoveInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param InstanceIds: CVM实例ID列表
        # @type InstanceIds: Array

        attr_accessor :AutoScalingGroupId, :InstanceIds

        def initialize(autoscalinggroupid=nil, instanceids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # RemoveInstances返回参数结构体
      class RemoveInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ResumeInstanceRefresh请求参数结构体
      class ResumeInstanceRefreshRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param RefreshActivityId: 刷新活动ID。
        # @type RefreshActivityId: String
        # @param ResumeMode: 当前批次刷新失败实例的恢复方式，如不存在失败实例，该参数无效。默认值为RETRY，取值范围如下：<li>RETRY: 重试当前批次刷新失败实例</li><li>CONTINUE: 跳过当前批次刷新失败实例</li>
        # @type ResumeMode: String

        attr_accessor :AutoScalingGroupId, :RefreshActivityId, :ResumeMode

        def initialize(autoscalinggroupid=nil, refreshactivityid=nil, resumemode=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RefreshActivityId = refreshactivityid
          @ResumeMode = resumemode
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RefreshActivityId = params['RefreshActivityId']
          @ResumeMode = params['ResumeMode']
        end
      end

      # ResumeInstanceRefresh返回参数结构体
      class ResumeInstanceRefreshResponse < TencentCloud::Common::AbstractModel
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

      # RollbackInstanceRefresh请求参数结构体
      class RollbackInstanceRefreshRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param RefreshSettings: 刷新设置。
        # @type RefreshSettings: :class:`Tencentcloud::As.v20180419.models.RefreshSettings`
        # @param OriginRefreshActivityId: 原始刷新活动 ID。
        # @type OriginRefreshActivityId: String
        # @param RefreshMode: 刷新模式，目前仅支持滚动更新，默认值为 ROLLING_UPDATE_RESET。
        # @type RefreshMode: String

        attr_accessor :AutoScalingGroupId, :RefreshSettings, :OriginRefreshActivityId, :RefreshMode

        def initialize(autoscalinggroupid=nil, refreshsettings=nil, originrefreshactivityid=nil, refreshmode=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RefreshSettings = refreshsettings
          @OriginRefreshActivityId = originrefreshactivityid
          @RefreshMode = refreshmode
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          unless params['RefreshSettings'].nil?
            @RefreshSettings = RefreshSettings.new
            @RefreshSettings.deserialize(params['RefreshSettings'])
          end
          @OriginRefreshActivityId = params['OriginRefreshActivityId']
          @RefreshMode = params['RefreshMode']
        end
      end

      # RollbackInstanceRefresh返回参数结构体
      class RollbackInstanceRefreshResponse < TencentCloud::Common::AbstractModel
        # @param RefreshActivityId: 刷新活动 ID。
        # @type RefreshActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RefreshActivityId, :RequestId

        def initialize(refreshactivityid=nil, requestid=nil)
          @RefreshActivityId = refreshactivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @RefreshActivityId = params['RefreshActivityId']
          @RequestId = params['RequestId']
        end
      end

      # 滚动更新设置。
      class RollingUpdateSettings < TencentCloud::Common::AbstractModel
        # @param BatchNumber: 批次数量。批次数量为大于 0 的正整数，但不能大于待刷新实例数量。
        # @type BatchNumber: Integer
        # @param BatchPause: 批次间暂停策略。默认值为 Automatic，取值范围如下：
        # <li>FIRST_BATCH_PAUSE：第一批次更新完成后暂停</li>
        # <li>BATCH_INTERVAL_PAUSE：批次间暂停</li>
        # <li>AUTOMATIC：不暂停</li>
        # @type BatchPause: String
        # @param MaxSurge: 最大额外数量。设置该参数后，在滚动更新开始前根据启动配置创建一批按量计费的额外实例，滚动更新完成后销毁额外实例。
        # 该参数用于保证滚动更新过程中可用实例的数量，最大额外数量不能超过滚动更新单个批次的刷新实例数。回滚流程暂不支持该参数。
        # @type MaxSurge: Integer

        attr_accessor :BatchNumber, :BatchPause, :MaxSurge

        def initialize(batchnumber=nil, batchpause=nil, maxsurge=nil)
          @BatchNumber = batchnumber
          @BatchPause = batchpause
          @MaxSurge = maxsurge
        end

        def deserialize(params)
          @BatchNumber = params['BatchNumber']
          @BatchPause = params['BatchPause']
          @MaxSurge = params['MaxSurge']
        end
      end

      # 描述了 “自动化助手” 服务相关的信息
      class RunAutomationServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[自动化助手](https://cloud.tencent.com/document/product/1340)服务。取值范围：<br><li>TRUE：表示开启自动化助手服务<br><li>FALSE：表示不开启自动化助手服务
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

      # 描述了 “可观测平台（原名云监控）” 服务相关的信息。
      class RunMonitorServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[可观测平台（原名云监控）](https://cloud.tencent.com/document/product/248)服务。取值范围：
        # <li>TRUE：表示开启云监控服务</li>
        # <li>FALSE：表示不开启云监控服务</li>
        # 默认取值：TRUE。
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
        # @param Enabled: 是否开启[云安全](https://cloud.tencent.com/document/product/296)服务。取值范围：
        # <li>TRUE：表示开启云安全服务</li>
        # <li>FALSE：表示不开启云安全服务</li>
        # 默认取值：TRUE。
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

      # ScaleInInstances请求参数结构体
      class ScaleInInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param ScaleInNumber: 希望缩容的实例数量。
        # @type ScaleInNumber: Integer

        attr_accessor :AutoScalingGroupId, :ScaleInNumber

        def initialize(autoscalinggroupid=nil, scaleinnumber=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @ScaleInNumber = scaleinnumber
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @ScaleInNumber = params['ScaleInNumber']
        end
      end

      # ScaleInInstances返回参数结构体
      class ScaleInInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID。
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ScaleOutInstances请求参数结构体
      class ScaleOutInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param ScaleOutNumber: 希望扩容的实例数量。
        # @type ScaleOutNumber: Integer

        attr_accessor :AutoScalingGroupId, :ScaleOutNumber

        def initialize(autoscalinggroupid=nil, scaleoutnumber=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @ScaleOutNumber = scaleoutnumber
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @ScaleOutNumber = params['ScaleOutNumber']
        end
      end

      # ScaleOutInstances返回参数结构体
      class ScaleOutInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID。
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # 告警触发策略。
      class ScalingPolicy < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param AutoScalingPolicyId: 告警触发策略ID。
        # @type AutoScalingPolicyId: String
        # @param ScalingPolicyType: 告警触发策略类型。取值：
        # - SIMPLE：简单策略
        # - TARGET_TRACKING：目标追踪策略
        # @type ScalingPolicyType: String
        # @param ScalingPolicyName: 告警触发策略名称。
        # @type ScalingPolicyName: String
        # @param AdjustmentType: 告警触发后，期望实例数修改方式，仅适用于简单策略。取值范围：<br><li>CHANGE_IN_CAPACITY：增加或减少若干期望实例数</li><li>EXACT_CAPACITY：调整至指定期望实例数</li> <li>PERCENT_CHANGE_IN_CAPACITY：按百分比调整期望实例数</li>
        # @type AdjustmentType: String
        # @param AdjustmentValue: 告警触发后，期望实例数的调整值，仅适用于简单策略。
        # @type AdjustmentValue: Integer
        # @param Cooldown: 冷却时间，仅适用于简单策略。
        # @type Cooldown: Integer
        # @param MetricAlarm: 简单告警触发策略告警监控指标，仅适用于简单策略。
        # @type MetricAlarm: :class:`Tencentcloud::As.v20180419.models.MetricAlarm`
        # @param PredefinedMetricType: 预定义监控项，仅适用于目标追踪策略。取值范围：<br><li>ASG_AVG_CPU_UTILIZATION：平均CPU使用率</li><li>ASG_AVG_LAN_TRAFFIC_OUT：平均内网出带宽</li><li>ASG_AVG_LAN_TRAFFIC_IN：平均内网入带宽</li><li>ASG_AVG_WAN_TRAFFIC_OUT：平均外网出带宽</li><li>ASG_AVG_WAN_TRAFFIC_IN：平均外网出带宽</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredefinedMetricType: String
        # @param TargetValue: 目标值，仅适用于目标追踪策略。<br><li>ASG_AVG_CPU_UTILIZATION：[1, 100)，单位：%</li><li>ASG_AVG_LAN_TRAFFIC_OUT：>0，单位：Mbps</li><li>ASG_AVG_LAN_TRAFFIC_IN：>0，单位：Mbps</li><li>ASG_AVG_WAN_TRAFFIC_OUT：>0，单位：Mbps</li><li>ASG_AVG_WAN_TRAFFIC_IN：>0，单位：Mbps</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetValue: Integer
        # @param EstimatedInstanceWarmup: 实例预热时间，单位为秒，仅适用于目标追踪策略。取值范围为0-3600。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EstimatedInstanceWarmup: Integer
        # @param DisableScaleIn: 是否禁用缩容，仅适用于目标追踪策略。取值范围：<br><li>true：目标追踪策略仅触发扩容</li><li>false：目标追踪策略触发扩容和缩容</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisableScaleIn: Boolean
        # @param MetricAlarms: 告警监控指标列表，仅适用于目标追踪策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricAlarms: Array
        # @param NotificationUserGroupIds: 通知组ID，即为用户组ID集合。
        # @type NotificationUserGroupIds: Array

        attr_accessor :AutoScalingGroupId, :AutoScalingPolicyId, :ScalingPolicyType, :ScalingPolicyName, :AdjustmentType, :AdjustmentValue, :Cooldown, :MetricAlarm, :PredefinedMetricType, :TargetValue, :EstimatedInstanceWarmup, :DisableScaleIn, :MetricAlarms, :NotificationUserGroupIds

        def initialize(autoscalinggroupid=nil, autoscalingpolicyid=nil, scalingpolicytype=nil, scalingpolicyname=nil, adjustmenttype=nil, adjustmentvalue=nil, cooldown=nil, metricalarm=nil, predefinedmetrictype=nil, targetvalue=nil, estimatedinstancewarmup=nil, disablescalein=nil, metricalarms=nil, notificationusergroupids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @AutoScalingPolicyId = autoscalingpolicyid
          @ScalingPolicyType = scalingpolicytype
          @ScalingPolicyName = scalingpolicyname
          @AdjustmentType = adjustmenttype
          @AdjustmentValue = adjustmentvalue
          @Cooldown = cooldown
          @MetricAlarm = metricalarm
          @PredefinedMetricType = predefinedmetrictype
          @TargetValue = targetvalue
          @EstimatedInstanceWarmup = estimatedinstancewarmup
          @DisableScaleIn = disablescalein
          @MetricAlarms = metricalarms
          @NotificationUserGroupIds = notificationusergroupids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @AutoScalingPolicyId = params['AutoScalingPolicyId']
          @ScalingPolicyType = params['ScalingPolicyType']
          @ScalingPolicyName = params['ScalingPolicyName']
          @AdjustmentType = params['AdjustmentType']
          @AdjustmentValue = params['AdjustmentValue']
          @Cooldown = params['Cooldown']
          unless params['MetricAlarm'].nil?
            @MetricAlarm = MetricAlarm.new
            @MetricAlarm.deserialize(params['MetricAlarm'])
          end
          @PredefinedMetricType = params['PredefinedMetricType']
          @TargetValue = params['TargetValue']
          @EstimatedInstanceWarmup = params['EstimatedInstanceWarmup']
          @DisableScaleIn = params['DisableScaleIn']
          unless params['MetricAlarms'].nil?
            @MetricAlarms = []
            params['MetricAlarms'].each do |i|
              metricalarm_tmp = MetricAlarm.new
              metricalarm_tmp.deserialize(i)
              @MetricAlarms << metricalarm_tmp
            end
          end
          @NotificationUserGroupIds = params['NotificationUserGroupIds']
        end
      end

      # 描述定时任务的信息
      class ScheduledAction < TencentCloud::Common::AbstractModel
        # @param ScheduledActionId: 定时任务ID。
        # @type ScheduledActionId: String
        # @param ScheduledActionName: 定时任务名称。
        # @type ScheduledActionName: String
        # @param AutoScalingGroupId: 定时任务所在伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param StartTime: 定时任务的开始时间。取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。
        # @type StartTime: String
        # @param Recurrence: 定时任务的重复方式。
        # @type Recurrence: String
        # @param EndTime: 定时任务的结束时间。取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。
        # @type EndTime: String
        # @param MaxSize: 定时任务设置的最大实例数。
        # @type MaxSize: Integer
        # @param DesiredCapacity: 定时任务设置的期望实例数。
        # @type DesiredCapacity: Integer
        # @param MinSize: 定时任务设置的最小实例数。
        # @type MinSize: Integer
        # @param CreatedTime: 定时任务的创建时间。取值为`UTC`时间，按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ssZ`。
        # @type CreatedTime: String
        # @param ScheduledType: 定时任务的执行类型。取值范围：
        # <li>CRONTAB：代表定时任务为重复执行。</li>
        # <li>ONCE：代表定时任务为单次执行。</li>
        # @type ScheduledType: String

        attr_accessor :ScheduledActionId, :ScheduledActionName, :AutoScalingGroupId, :StartTime, :Recurrence, :EndTime, :MaxSize, :DesiredCapacity, :MinSize, :CreatedTime, :ScheduledType

        def initialize(scheduledactionid=nil, scheduledactionname=nil, autoscalinggroupid=nil, starttime=nil, recurrence=nil, endtime=nil, maxsize=nil, desiredcapacity=nil, minsize=nil, createdtime=nil, scheduledtype=nil)
          @ScheduledActionId = scheduledactionid
          @ScheduledActionName = scheduledactionname
          @AutoScalingGroupId = autoscalinggroupid
          @StartTime = starttime
          @Recurrence = recurrence
          @EndTime = endtime
          @MaxSize = maxsize
          @DesiredCapacity = desiredcapacity
          @MinSize = minsize
          @CreatedTime = createdtime
          @ScheduledType = scheduledtype
        end

        def deserialize(params)
          @ScheduledActionId = params['ScheduledActionId']
          @ScheduledActionName = params['ScheduledActionName']
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @StartTime = params['StartTime']
          @Recurrence = params['Recurrence']
          @EndTime = params['EndTime']
          @MaxSize = params['MaxSize']
          @DesiredCapacity = params['DesiredCapacity']
          @MinSize = params['MinSize']
          @CreatedTime = params['CreatedTime']
          @ScheduledType = params['ScheduledType']
        end
      end

      # 服务设置
      class ServiceSettings < TencentCloud::Common::AbstractModel
        # @param ReplaceMonitorUnhealthy: 开启监控不健康替换服务。若开启则对于云监控标记为不健康的实例，弹性伸缩服务会进行替换。若不指定该参数，则默认为 False。
        # @type ReplaceMonitorUnhealthy: Boolean
        # @param ScalingMode: 取值范围：
        # CLASSIC_SCALING：经典方式，使用创建、销毁实例来实现扩缩容；
        # WAKE_UP_STOPPED_SCALING：扩容优先开机。扩容时优先对已关机的实例执行开机操作，若开机后实例数仍低于期望实例数，则创建实例，缩容仍采用销毁实例的方式。用户可以使用StopAutoScalingInstances接口来关闭伸缩组内的实例。监控告警触发的扩容仍将创建实例
        # 默认取值：CLASSIC_SCALING
        # @type ScalingMode: String
        # @param ReplaceLoadBalancerUnhealthy: 开启负载均衡不健康替换服务。若开启则对于负载均衡健康检查判断不健康的实例，弹性伸缩服务会进行替换。若不指定该参数，则默认为 False。
        # @type ReplaceLoadBalancerUnhealthy: Boolean
        # @param ReplaceMode: 不健康替换服务的替换模式。取值范围：
        # RECREATE：重建实例替代原有不健康实例；
        # RESET：对原有不健康实例进行重装系统操作，可保持数据盘、内网IP、实例id等信息不发生变化，实例登录设置、主机名、增强服务和 UserData 与当前启动配置保持一致。
        # 默认取值：RECREATE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplaceMode: String
        # @param AutoUpdateInstanceTags: 自动更新实例标签。默认取值为 False，配置后如伸缩组标签发生更新，会同步更新（同步更新仅支持新增、修改标签，暂不支持删除标签）伸缩组内运行中状态实例的标签，同步更新非立即生效，存在一定延迟。
        # @type AutoUpdateInstanceTags: Boolean
        # @param DesiredCapacitySyncWithMaxMinSize: 期望实例数同步最大最小值。默认值为 False。该参数仅对修改伸缩组接口未传入期望数的场景生效。
        # <li>True: 修改最大值或最小值时，如与当前期望数存在冲突，则同步调整期望数。例如修改时传入最小值 2，当前期望数为 1，则同步调整期望数为 2。</li>
        # <li>False: 修改最大值或最小值时，如与当前期望数存在冲突，报错提示不允许修改。</li>
        # @type DesiredCapacitySyncWithMaxMinSize: Boolean

        attr_accessor :ReplaceMonitorUnhealthy, :ScalingMode, :ReplaceLoadBalancerUnhealthy, :ReplaceMode, :AutoUpdateInstanceTags, :DesiredCapacitySyncWithMaxMinSize

        def initialize(replacemonitorunhealthy=nil, scalingmode=nil, replaceloadbalancerunhealthy=nil, replacemode=nil, autoupdateinstancetags=nil, desiredcapacitysyncwithmaxminsize=nil)
          @ReplaceMonitorUnhealthy = replacemonitorunhealthy
          @ScalingMode = scalingmode
          @ReplaceLoadBalancerUnhealthy = replaceloadbalancerunhealthy
          @ReplaceMode = replacemode
          @AutoUpdateInstanceTags = autoupdateinstancetags
          @DesiredCapacitySyncWithMaxMinSize = desiredcapacitysyncwithmaxminsize
        end

        def deserialize(params)
          @ReplaceMonitorUnhealthy = params['ReplaceMonitorUnhealthy']
          @ScalingMode = params['ScalingMode']
          @ReplaceLoadBalancerUnhealthy = params['ReplaceLoadBalancerUnhealthy']
          @ReplaceMode = params['ReplaceMode']
          @AutoUpdateInstanceTags = params['AutoUpdateInstanceTags']
          @DesiredCapacitySyncWithMaxMinSize = params['DesiredCapacitySyncWithMaxMinSize']
        end
      end

      # SetInstancesProtection请求参数结构体
      class SetInstancesProtectionRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param InstanceIds: 实例ID。
        # @type InstanceIds: Array
        # @param ProtectedFromScaleIn: 实例是否需要设置保护。
        # @type ProtectedFromScaleIn: Boolean

        attr_accessor :AutoScalingGroupId, :InstanceIds, :ProtectedFromScaleIn

        def initialize(autoscalinggroupid=nil, instanceids=nil, protectedfromscalein=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
          @ProtectedFromScaleIn = protectedfromscalein
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
          @ProtectedFromScaleIn = params['ProtectedFromScaleIn']
        end
      end

      # SetInstancesProtection返回参数结构体
      class SetInstancesProtectionResponse < TencentCloud::Common::AbstractModel
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

      # 竞价相关选项
      class SpotMarketOptions < TencentCloud::Common::AbstractModel
        # @param MaxPrice: 竞价出价，例如“1.05”
        # @type MaxPrice: String
        # @param SpotInstanceType: 竞价请求类型，当前仅支持类型：one-time，默认值为one-time
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

      # 竞价混合模式下，各计费类型实例的分配策略。包括按量计费实例和竞价计费实例。
      class SpotMixedAllocationPolicy < TencentCloud::Common::AbstractModel
        # @param BaseCapacity: 混合模式下，基础容量的大小，基础容量部分固定为按量计费实例。默认值 0，最大不可超过伸缩组的最大实例数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseCapacity: Integer
        # @param OnDemandPercentageAboveBaseCapacity: 超出基础容量部分，按量计费实例所占的比例。取值范围 [0, 100]，0 代表超出基础容量的部分仅生产竞价实例，100 代表仅生产按量实例，默认值为 70。按百分比计算按量实例数时，向上取整。
        # 比如，总期望实例数取 3，基础容量取 1，超基础部分按量百分比取 1，则最终按量 2 台（1 台来自基础容量，1 台按百分比向上取整得到），竞价 1台。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnDemandPercentageAboveBaseCapacity: Integer
        # @param SpotAllocationStrategy: 混合模式下，竞价实例的分配策略。取值包括 COST_OPTIMIZED 和 CAPACITY_OPTIMIZED，默认取 COST_OPTIMIZED。
        # <br><li> COST_OPTIMIZED，成本优化策略。对于启动配置内的所有机型，按照各机型在各可用区的每核单价由小到大依次尝试。优先尝试购买每核单价最便宜的，如果购买失败则尝试购买次便宜的，以此类推。
        # <br><li> CAPACITY_OPTIMIZED，容量优化策略。对于启动配置内的所有机型，按照各机型在各可用区的库存情况由大到小依次尝试。优先尝试购买剩余库存最大的机型，这样可尽量降低竞价实例被动回收的发生概率。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpotAllocationStrategy: String
        # @param CompensateWithBaseInstance: 按量实例替补功能。取值范围：
        # <br><li> TRUE，开启该功能，当所有竞价机型因库存不足等原因全部购买失败后，尝试购买按量实例。
        # <br><li> FALSE，不开启该功能，伸缩组在需要扩容竞价实例时仅尝试所配置的竞价机型。

        # 默认取值： TRUE。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompensateWithBaseInstance: Boolean

        attr_accessor :BaseCapacity, :OnDemandPercentageAboveBaseCapacity, :SpotAllocationStrategy, :CompensateWithBaseInstance

        def initialize(basecapacity=nil, ondemandpercentageabovebasecapacity=nil, spotallocationstrategy=nil, compensatewithbaseinstance=nil)
          @BaseCapacity = basecapacity
          @OnDemandPercentageAboveBaseCapacity = ondemandpercentageabovebasecapacity
          @SpotAllocationStrategy = spotallocationstrategy
          @CompensateWithBaseInstance = compensatewithbaseinstance
        end

        def deserialize(params)
          @BaseCapacity = params['BaseCapacity']
          @OnDemandPercentageAboveBaseCapacity = params['OnDemandPercentageAboveBaseCapacity']
          @SpotAllocationStrategy = params['SpotAllocationStrategy']
          @CompensateWithBaseInstance = params['CompensateWithBaseInstance']
        end
      end

      # StartAutoScalingInstances请求参数结构体
      class StartAutoScalingInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param InstanceIds: 待开启的CVM实例ID列表
        # @type InstanceIds: Array

        attr_accessor :AutoScalingGroupId, :InstanceIds

        def initialize(autoscalinggroupid=nil, instanceids=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # StartAutoScalingInstances返回参数结构体
      class StartAutoScalingInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # StartInstanceRefresh请求参数结构体
      class StartInstanceRefreshRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param RefreshSettings: 刷新设置。
        # @type RefreshSettings: :class:`Tencentcloud::As.v20180419.models.RefreshSettings`
        # @param RefreshMode: 刷新模式。取值范围：
        # <li>ROLLING_UPDATE_RESET：重装系统进行滚动更新</li>
        # <li>ROLLING_UPDATE_REPLACE：新建实例替换进行滚动更新，该模式暂不支持回滚接口</li>
        # @type RefreshMode: String

        attr_accessor :AutoScalingGroupId, :RefreshSettings, :RefreshMode

        def initialize(autoscalinggroupid=nil, refreshsettings=nil, refreshmode=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RefreshSettings = refreshsettings
          @RefreshMode = refreshmode
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          unless params['RefreshSettings'].nil?
            @RefreshSettings = RefreshSettings.new
            @RefreshSettings.deserialize(params['RefreshSettings'])
          end
          @RefreshMode = params['RefreshMode']
        end
      end

      # StartInstanceRefresh返回参数结构体
      class StartInstanceRefreshResponse < TencentCloud::Common::AbstractModel
        # @param RefreshActivityId: 刷新活动 ID。
        # @type RefreshActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RefreshActivityId, :RequestId

        def initialize(refreshactivityid=nil, requestid=nil)
          @RefreshActivityId = refreshactivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @RefreshActivityId = params['RefreshActivityId']
          @RequestId = params['RequestId']
        end
      end

      # StopAutoScalingInstances请求参数结构体
      class StopAutoScalingInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID
        # @type AutoScalingGroupId: String
        # @param InstanceIds: 待关闭的CVM实例ID列表
        # @type InstanceIds: Array
        # @param StoppedMode: 关闭的实例是否收费，取值为：
        # KEEP_CHARGING：关机继续收费
        # STOP_CHARGING：关机停止收费
        # 默认为 KEEP_CHARGING
        # @type StoppedMode: String

        attr_accessor :AutoScalingGroupId, :InstanceIds, :StoppedMode

        def initialize(autoscalinggroupid=nil, instanceids=nil, stoppedmode=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @InstanceIds = instanceids
          @StoppedMode = stoppedmode
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @InstanceIds = params['InstanceIds']
          @StoppedMode = params['StoppedMode']
        end
      end

      # StopAutoScalingInstances返回参数结构体
      class StopAutoScalingInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ActivityId: 伸缩活动ID
        # @type ActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivityId, :RequestId

        def initialize(activityid=nil, requestid=nil)
          @ActivityId = activityid
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @RequestId = params['RequestId']
        end
      end

      # StopInstanceRefresh请求参数结构体
      class StopInstanceRefreshRequest < TencentCloud::Common::AbstractModel
        # @param AutoScalingGroupId: 伸缩组ID。
        # @type AutoScalingGroupId: String
        # @param RefreshActivityId: 刷新活动ID。
        # @type RefreshActivityId: String

        attr_accessor :AutoScalingGroupId, :RefreshActivityId

        def initialize(autoscalinggroupid=nil, refreshactivityid=nil)
          @AutoScalingGroupId = autoscalinggroupid
          @RefreshActivityId = refreshactivityid
        end

        def deserialize(params)
          @AutoScalingGroupId = params['AutoScalingGroupId']
          @RefreshActivityId = params['RefreshActivityId']
        end
      end

      # StopInstanceRefresh返回参数结构体
      class StopInstanceRefreshResponse < TencentCloud::Common::AbstractModel
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

      # 启动配置的系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见[云硬盘类型](https://cloud.tencent.com/document/product/362/2353)。取值范围：<br><li>LOCAL_BASIC：本地硬盘<br><li>LOCAL_SSD：本地SSD硬盘<br><li>CLOUD_BASIC：普通云硬盘<br><li>CLOUD_PREMIUM：高性能云硬盘<br><li>CLOUD_SSD：SSD云硬盘<br><br>默认取值：CLOUD_PREMIUM。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 50
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 资源类型及标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
        # @type Value: String
        # @param ResourceType: 标签绑定的资源类型，当前支持类型："auto-scaling-group", "launch-configuration"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String

        attr_accessor :Key, :Value, :ResourceType

        def initialize(key=nil, value=nil, resourcetype=nil)
          @Key = key
          @Value = value
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @ResourceType = params['ResourceType']
        end
      end

      # 负载均衡器目标属性
      class TargetAttribute < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: Integer
        # @param Weight: 权重
        # @type Weight: Integer

        attr_accessor :Port, :Weight

        def initialize(port=nil, weight=nil)
          @Port = port
          @Weight = weight
        end

        def deserialize(params)
          @Port = params['Port']
          @Weight = params['Weight']
        end
      end

      # UpgradeLaunchConfiguration请求参数结构体
      class UpgradeLaunchConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param LaunchConfigurationId: 启动配置ID。
        # @type LaunchConfigurationId: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-8toqc6s3`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        # @type ImageId: String
        # @param InstanceTypes: 实例机型列表，不同实例机型指定了不同的资源规格，最多支持5种实例机型。
        # @type InstanceTypes: Array
        # @param LaunchConfigurationName: 启动配置显示名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type LaunchConfigurationName: String
        # @param DataDisks: 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘，最多支持指定11块数据盘。
        # @type DataDisks: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::As.v20180419.models.EnhancedService`
        # @param InstanceChargeType: 实例计费类型，CVM默认值按照POSTPAID_BY_HOUR处理。
        # <br><li>POSTPAID_BY_HOUR：按小时后付费
        # <br><li>SPOTPAID：竞价付费
        # <br><li>PREPAID：预付费，即包年包月
        # @type InstanceChargeType: String
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        # @type InstanceMarketOptions: :class:`Tencentcloud::As.v20180419.models.InstanceMarketOptionsRequest`
        # @param InstanceTypesCheckPolicy: 实例类型校验策略，取值包括 ALL 和 ANY，默认取值为ANY。
        # <br><li> ALL，所有实例类型（InstanceType）都可用则通过校验，否则校验报错。
        # <br><li> ANY，存在任何一个实例类型（InstanceType）可用则通过校验，否则校验报错。

        # 实例类型不可用的常见原因包括该实例类型售罄、对应云盘售罄等。
        # 如果 InstanceTypes 中一款机型不存在或者已下线，则无论 InstanceTypesCheckPolicy 采用何种取值，都会校验报错。
        # @type InstanceTypesCheckPolicy: String
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::As.v20180419.models.InternetAccessible`
        # @param LoginSettings: 该参数已失效，请勿使用。升级启动配置接口无法修改或覆盖 LoginSettings 参数，升级后 LoginSettings 不会发生变化。
        # @type LoginSettings: :class:`Tencentcloud::As.v20180419.models.LoginSettings`
        # @param ProjectId: 实例所属项目ID。不填为默认项目。
        # @type ProjectId: Integer
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的`SecurityGroupId`字段来获取。若不指定该参数，则默认不绑定安全组。
        # @type SecurityGroupIds: Array
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::As.v20180419.models.SystemDisk`
        # @param UserData: 经过 Base64 编码后的自定义数据，最大长度不超过16KB。
        # @type UserData: String
        # @param InstanceTags: 标签列表。通过指定该参数，可以为扩容的实例绑定标签。最多支持指定10个标签。
        # @type InstanceTags: Array
        # @param CamRoleName: CAM角色名称。可通过DescribeRoleList接口返回值中的roleName获取。
        # @type CamRoleName: String
        # @param HostNameSettings: 云服务器主机名（HostName）的相关设置。
        # @type HostNameSettings: :class:`Tencentcloud::As.v20180419.models.HostNameSettings`
        # @param InstanceNameSettings: 云服务器实例名（InstanceName）的相关设置。
        # @type InstanceNameSettings: :class:`Tencentcloud::As.v20180419.models.InstanceNameSettings`
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::As.v20180419.models.InstanceChargePrepaid`
        # @param DiskTypePolicy: 云盘类型选择策略，取值范围：
        # <br><li>ORIGINAL：使用设置的云盘类型
        # <br><li>AUTOMATIC：自动选择当前可用的云盘类型
        # @type DiskTypePolicy: String
        # @param IPv6InternetAccessible: IPv6公网带宽相关信息设置。若新建实例包含IPv6地址，该参数可为新建实例的IPv6地址分配公网带宽。关联启动配置的伸缩组Ipv6AddressCount参数为0时，该参数不会生效。
        # @type IPv6InternetAccessible: :class:`Tencentcloud::As.v20180419.models.IPv6InternetAccessible`

        attr_accessor :LaunchConfigurationId, :ImageId, :InstanceTypes, :LaunchConfigurationName, :DataDisks, :EnhancedService, :InstanceChargeType, :InstanceMarketOptions, :InstanceTypesCheckPolicy, :InternetAccessible, :LoginSettings, :ProjectId, :SecurityGroupIds, :SystemDisk, :UserData, :InstanceTags, :CamRoleName, :HostNameSettings, :InstanceNameSettings, :InstanceChargePrepaid, :DiskTypePolicy, :IPv6InternetAccessible

        def initialize(launchconfigurationid=nil, imageid=nil, instancetypes=nil, launchconfigurationname=nil, datadisks=nil, enhancedservice=nil, instancechargetype=nil, instancemarketoptions=nil, instancetypescheckpolicy=nil, internetaccessible=nil, loginsettings=nil, projectid=nil, securitygroupids=nil, systemdisk=nil, userdata=nil, instancetags=nil, camrolename=nil, hostnamesettings=nil, instancenamesettings=nil, instancechargeprepaid=nil, disktypepolicy=nil, ipv6internetaccessible=nil)
          @LaunchConfigurationId = launchconfigurationid
          @ImageId = imageid
          @InstanceTypes = instancetypes
          @LaunchConfigurationName = launchconfigurationname
          @DataDisks = datadisks
          @EnhancedService = enhancedservice
          @InstanceChargeType = instancechargetype
          @InstanceMarketOptions = instancemarketoptions
          @InstanceTypesCheckPolicy = instancetypescheckpolicy
          @InternetAccessible = internetaccessible
          @LoginSettings = loginsettings
          @ProjectId = projectid
          @SecurityGroupIds = securitygroupids
          @SystemDisk = systemdisk
          @UserData = userdata
          @InstanceTags = instancetags
          @CamRoleName = camrolename
          @HostNameSettings = hostnamesettings
          @InstanceNameSettings = instancenamesettings
          @InstanceChargePrepaid = instancechargeprepaid
          @DiskTypePolicy = disktypepolicy
          @IPv6InternetAccessible = ipv6internetaccessible
        end

        def deserialize(params)
          @LaunchConfigurationId = params['LaunchConfigurationId']
          @ImageId = params['ImageId']
          @InstanceTypes = params['InstanceTypes']
          @LaunchConfigurationName = params['LaunchConfigurationName']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @InstanceTypesCheckPolicy = params['InstanceTypesCheckPolicy']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @ProjectId = params['ProjectId']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @UserData = params['UserData']
          unless params['InstanceTags'].nil?
            @InstanceTags = []
            params['InstanceTags'].each do |i|
              instancetag_tmp = InstanceTag.new
              instancetag_tmp.deserialize(i)
              @InstanceTags << instancetag_tmp
            end
          end
          @CamRoleName = params['CamRoleName']
          unless params['HostNameSettings'].nil?
            @HostNameSettings = HostNameSettings.new
            @HostNameSettings.deserialize(params['HostNameSettings'])
          end
          unless params['InstanceNameSettings'].nil?
            @InstanceNameSettings = InstanceNameSettings.new
            @InstanceNameSettings.deserialize(params['InstanceNameSettings'])
          end
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DiskTypePolicy = params['DiskTypePolicy']
          unless params['IPv6InternetAccessible'].nil?
            @IPv6InternetAccessible = IPv6InternetAccessible.new
            @IPv6InternetAccessible.deserialize(params['IPv6InternetAccessible'])
          end
        end
      end

      # UpgradeLaunchConfiguration返回参数结构体
      class UpgradeLaunchConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeLifecycleHook请求参数结构体
      class UpgradeLifecycleHookRequest < TencentCloud::Common::AbstractModel
        # @param LifecycleHookId: 生命周期挂钩ID
        # @type LifecycleHookId: String
        # @param LifecycleHookName: 生命周期挂钩名称
        # @type LifecycleHookName: String
        # @param LifecycleTransition: 进行生命周期挂钩的场景，取值范围包括“INSTANCE_LAUNCHING”和“INSTANCE_TERMINATING”
        # @type LifecycleTransition: String
        # @param DefaultResult: 定义伸缩组在生命周期挂钩超时的情况下应采取的操作，取值范围是“CONTINUE”或“ABANDON”，默认值为“CONTINUE”
        # @type DefaultResult: String
        # @param HeartbeatTimeout: 生命周期挂钩超时之前可以经过的最长时间（以秒为单位），范围从30到7200秒，默认值为300秒
        # @type HeartbeatTimeout: Integer
        # @param NotificationMetadata: 弹性伸缩向通知目标发送的附加信息，配置通知时使用，默认值为空字符串""
        # @type NotificationMetadata: String
        # @param NotificationTarget: 通知目标。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        # @type NotificationTarget: :class:`Tencentcloud::As.v20180419.models.NotificationTarget`
        # @param LifecycleTransitionType: 进行生命周期挂钩的场景类型，取值范围包括NORMAL 和 EXTENSION。说明：设置为EXTENSION值，在AttachInstances、DetachInstances、RemoveInstaces接口时会触发生命周期挂钩操作，值为NORMAL则不会在这些接口中触发生命周期挂钩。
        # @type LifecycleTransitionType: String
        # @param LifecycleCommand: 远程命令执行对象。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        # @type LifecycleCommand: :class:`Tencentcloud::As.v20180419.models.LifecycleCommand`

        attr_accessor :LifecycleHookId, :LifecycleHookName, :LifecycleTransition, :DefaultResult, :HeartbeatTimeout, :NotificationMetadata, :NotificationTarget, :LifecycleTransitionType, :LifecycleCommand

        def initialize(lifecyclehookid=nil, lifecyclehookname=nil, lifecycletransition=nil, defaultresult=nil, heartbeattimeout=nil, notificationmetadata=nil, notificationtarget=nil, lifecycletransitiontype=nil, lifecyclecommand=nil)
          @LifecycleHookId = lifecyclehookid
          @LifecycleHookName = lifecyclehookname
          @LifecycleTransition = lifecycletransition
          @DefaultResult = defaultresult
          @HeartbeatTimeout = heartbeattimeout
          @NotificationMetadata = notificationmetadata
          @NotificationTarget = notificationtarget
          @LifecycleTransitionType = lifecycletransitiontype
          @LifecycleCommand = lifecyclecommand
        end

        def deserialize(params)
          @LifecycleHookId = params['LifecycleHookId']
          @LifecycleHookName = params['LifecycleHookName']
          @LifecycleTransition = params['LifecycleTransition']
          @DefaultResult = params['DefaultResult']
          @HeartbeatTimeout = params['HeartbeatTimeout']
          @NotificationMetadata = params['NotificationMetadata']
          unless params['NotificationTarget'].nil?
            @NotificationTarget = NotificationTarget.new
            @NotificationTarget.deserialize(params['NotificationTarget'])
          end
          @LifecycleTransitionType = params['LifecycleTransitionType']
          unless params['LifecycleCommand'].nil?
            @LifecycleCommand = LifecycleCommand.new
            @LifecycleCommand.deserialize(params['LifecycleCommand'])
          end
        end
      end

      # UpgradeLifecycleHook返回参数结构体
      class UpgradeLifecycleHookResponse < TencentCloud::Common::AbstractModel
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

