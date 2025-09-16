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
  module Gwlb
    module V20240906
      # AssociateTargetGroups请求参数结构体
      class AssociateTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Associations: 绑定的关系数组。一次请求最多支持20个。
        # @type Associations: Array

        attr_accessor :Associations

        def initialize(associations=nil)
          @Associations = associations
        end

        def deserialize(params)
          unless params['Associations'].nil?
            @Associations = []
            params['Associations'].each do |i|
              targetgroupassociation_tmp = TargetGroupAssociation.new
              targetgroupassociation_tmp.deserialize(i)
              @Associations << targetgroupassociation_tmp
            end
          end
        end
      end

      # AssociateTargetGroups返回参数结构体
      class AssociateTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 目标组关联到的规则
      class AssociationItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 关联到的网关负载均衡实例ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 网关负载均衡实例名称
        # @type LoadBalancerName: String

        attr_accessor :LoadBalancerId, :LoadBalancerName

        def initialize(loadbalancerid=nil, loadbalancername=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
        end
      end

      # CreateGatewayLoadBalancer请求参数结构体
      class CreateGatewayLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 网关负载均衡后端目标设备所属的私有网络 ID，如vpc-azd4dt1c，可以通过 [DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)  接口获取。
        # @type VpcId: String
        # @param SubnetId: 网关负载均衡后端目标设备所属的私有网络的子网ID。可通过[DescribeSubnets](https://cloud.tencent.com/document/product/215/15784)接口获取。
        # @type SubnetId: String
        # @param LoadBalancerName: 网关负载均衡实例名称。可支持输入1-60个字符。不填写时默认自动生成。
        # @type LoadBalancerName: String
        # @param Number: 创建网关负载均衡的个数，默认值为 1。批量创建数量最大支持10个。
        # @type Number: Integer
        # @param Tags: 购买网关负载均衡的同时，给负载均衡打上标签，最大支持20个标签键值对。
        # @type Tags: Array
        # @param LBChargeType: 网关负载均衡实例计费类型，当前只支持传POSTPAID_BY_HOUR（按量计费），默认是POSTPAID_BY_HOUR。
        # @type LBChargeType: String

        attr_accessor :VpcId, :SubnetId, :LoadBalancerName, :Number, :Tags, :LBChargeType

        def initialize(vpcid=nil, subnetid=nil, loadbalancername=nil, number=nil, tags=nil, lbchargetype=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @LoadBalancerName = loadbalancername
          @Number = number
          @Tags = tags
          @LBChargeType = lbchargetype
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @LoadBalancerName = params['LoadBalancerName']
          @Number = params['Number']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @LBChargeType = params['LBChargeType']
        end
      end

      # CreateGatewayLoadBalancer返回参数结构体
      class CreateGatewayLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 由网关负载均衡实例唯一 ID 组成的数组。
        # 存在某些场景，如创建出现延迟时，此字段可能返回为空；此时可以根据接口返回的RequestId或DealName参数，通过[DescribeTaskStatus](https://cloud.tencent.com/document/api/1782/111700)接口查询创建的资源ID。
        # @type LoadBalancerIds: Array
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerIds, :DealName, :RequestId

        def initialize(loadbalancerids=nil, dealname=nil, requestid=nil)
          @LoadBalancerIds = loadbalancerids
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreateTargetGroup请求参数结构体
      class CreateTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupName: 目标组名称，限定60个字符。
        # @type TargetGroupName: String
        # @param VpcId: 网关负载均衡后端目标组所属的网络 ID，如vpc-12345678，可以通过 [DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)  接口获取。 不填此参数则默认为DefaultVPC。
        # @type VpcId: String
        # @param Port: 目标组的默认端口， 后续添加服务器时可使用该默认端口。Port和TargetGroupInstances.N中的port二者必填其一。仅支持6081。
        # @type Port: Integer
        # @param TargetGroupInstances: 目标组绑定的后端服务器
        # @type TargetGroupInstances: Array
        # @param Protocol: 网关负载均衡目标组协议。
        # - TENCENT_GENEVE ：GENEVE 标准协议
        # - AWS_GENEVE：GENEVE 兼容协议
        # @type Protocol: String
        # @param HealthCheck: 健康检查设置。
        # @type HealthCheck: :class:`Tencentcloud::Gwlb.v20240906.models.TargetGroupHealthCheck`
        # @param ScheduleAlgorithm: 均衡算法。
        # - IP_HASH_3_ELASTIC：弹性哈希
        # @type ScheduleAlgorithm: String
        # @param AllDeadToAlive: 是否支持全死全活。默认支持。
        # @type AllDeadToAlive: Boolean
        # @param Tags: 标签。
        # @type Tags: Array
        # @param ForwardingMode: 流量分发方式

        # - STATELESS：无状态
        # - STATEFUL： 有状态
        # @type ForwardingMode: String
        # @param TcpIdleConnectTimeout: TCP协议连接空闲超时时间，可配置60s-6000s，默认350s。
        # @type TcpIdleConnectTimeout: Integer
        # @param OthersIdleConnectTimeout: 其他协议连接空闲超时时间，可配置5s-180s，默认120s
        # @type OthersIdleConnectTimeout: Integer
        # @param RescheduleUnbindRs: 重新调度功能内的解绑后端服务开关，开关打开后解绑后端服务会触发重新调度。
        # @type RescheduleUnbindRs: Boolean
        # @param RescheduleUnbindRsStartTime: 解绑RS后开启重调度的时间，可配置0s-3600s，默认0s
        # @type RescheduleUnbindRsStartTime: Integer
        # @param RescheduleUnhealthy: 重新调度功能内的后端服务健康探测异常开关，开关打开后后端服务健康检查异常会触发重新调度。
        # @type RescheduleUnhealthy: Boolean
        # @param RescheduleUnhealthyStartTime: 后端服务健康探测异常后开启重调度的时间，可配置0s-3600s，默认0s
        # @type RescheduleUnhealthyStartTime: Integer

        attr_accessor :TargetGroupName, :VpcId, :Port, :TargetGroupInstances, :Protocol, :HealthCheck, :ScheduleAlgorithm, :AllDeadToAlive, :Tags, :ForwardingMode, :TcpIdleConnectTimeout, :OthersIdleConnectTimeout, :RescheduleUnbindRs, :RescheduleUnbindRsStartTime, :RescheduleUnhealthy, :RescheduleUnhealthyStartTime

        def initialize(targetgroupname=nil, vpcid=nil, port=nil, targetgroupinstances=nil, protocol=nil, healthcheck=nil, schedulealgorithm=nil, alldeadtoalive=nil, tags=nil, forwardingmode=nil, tcpidleconnecttimeout=nil, othersidleconnecttimeout=nil, rescheduleunbindrs=nil, rescheduleunbindrsstarttime=nil, rescheduleunhealthy=nil, rescheduleunhealthystarttime=nil)
          @TargetGroupName = targetgroupname
          @VpcId = vpcid
          @Port = port
          @TargetGroupInstances = targetgroupinstances
          @Protocol = protocol
          @HealthCheck = healthcheck
          @ScheduleAlgorithm = schedulealgorithm
          @AllDeadToAlive = alldeadtoalive
          @Tags = tags
          @ForwardingMode = forwardingmode
          @TcpIdleConnectTimeout = tcpidleconnecttimeout
          @OthersIdleConnectTimeout = othersidleconnecttimeout
          @RescheduleUnbindRs = rescheduleunbindrs
          @RescheduleUnbindRsStartTime = rescheduleunbindrsstarttime
          @RescheduleUnhealthy = rescheduleunhealthy
          @RescheduleUnhealthyStartTime = rescheduleunhealthystarttime
        end

        def deserialize(params)
          @TargetGroupName = params['TargetGroupName']
          @VpcId = params['VpcId']
          @Port = params['Port']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
          @Protocol = params['Protocol']
          unless params['HealthCheck'].nil?
            @HealthCheck = TargetGroupHealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @ScheduleAlgorithm = params['ScheduleAlgorithm']
          @AllDeadToAlive = params['AllDeadToAlive']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @ForwardingMode = params['ForwardingMode']
          @TcpIdleConnectTimeout = params['TcpIdleConnectTimeout']
          @OthersIdleConnectTimeout = params['OthersIdleConnectTimeout']
          @RescheduleUnbindRs = params['RescheduleUnbindRs']
          @RescheduleUnbindRsStartTime = params['RescheduleUnbindRsStartTime']
          @RescheduleUnhealthy = params['RescheduleUnhealthy']
          @RescheduleUnhealthyStartTime = params['RescheduleUnhealthyStartTime']
        end
      end

      # CreateTargetGroup返回参数结构体
      class CreateTargetGroupResponse < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 创建目标组后生成的id
        # @type TargetGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetGroupId, :RequestId

        def initialize(targetgroupid=nil, requestid=nil)
          @TargetGroupId = targetgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGatewayLoadBalancer请求参数结构体
      class DeleteGatewayLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 要删除的网关负载均衡实例 ID数组，数组大小最大支持20。可通过[DescribeGatewayLoadBalancers](https://cloud.tencent.com/document/api/1782/111683)  接口获取。
        # @type LoadBalancerIds: Array

        attr_accessor :LoadBalancerIds

        def initialize(loadbalancerids=nil)
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # DeleteGatewayLoadBalancer返回参数结构体
      class DeleteGatewayLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTargetGroups请求参数结构体
      class DeleteTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组ID列表。 可以通过接口[DescribeTargetGroups](https://cloud.tencent.com/document/product/214/40554)获取。
        # @type TargetGroupIds: Array

        attr_accessor :TargetGroupIds

        def initialize(targetgroupids=nil)
          @TargetGroupIds = targetgroupids
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
        end
      end

      # DeleteTargetGroups返回参数结构体
      class DeleteTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargetGroupInstances请求参数结构体
      class DeregisterTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。可通过[DescribeTargetGroupList](https://cloud.tencent.com/document/api/1782/111692)接口获取。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待解绑的服务器信息。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # DeregisterTargetGroupInstances返回参数结构体
      class DeregisterTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeGatewayLoadBalancers请求参数结构体
      class DescribeGatewayLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 网关负载均衡实例ID。支持批量筛选的实例ID数量上限为20个。
        # @type LoadBalancerIds: Array
        # @param Limit: 一次批量返回网关负载均衡实例的数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 返回网关负载均衡实例列表的起始偏移量，默认0。
        # @type Offset: Integer
        # @param Filters: 查询负载均衡详细信息列表的过滤条件，每次请求的Filters的上限为10，Filter.Values的上限为100。
        # Filter.Name和Filter.Values皆为必填项。详细的过滤条件如下：
        # - VpcId - String - 是否必填：否 - （过滤条件）按照网关负载均衡实例所属的私有网络过滤，如“vpc-bhqk****”。
        # - Vips - String  - 是否必填：否 - （过滤条件）按照网关负载均衡实例所属的私有网络过滤，如“10.1.1.1”
        # - tag:tag-key - String - 是否必填：否 - （过滤条件）按照GWLB标签键值对进行过滤，tag-key使用具体的标签键进行替换。
        # @type Filters: Array
        # @param SearchKey: 搜索字段，模糊匹配名称、VIP。
        # @type SearchKey: String

        attr_accessor :LoadBalancerIds, :Limit, :Offset, :Filters, :SearchKey

        def initialize(loadbalancerids=nil, limit=nil, offset=nil, filters=nil, searchkey=nil)
          @LoadBalancerIds = loadbalancerids
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @SearchKey = searchkey
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeGatewayLoadBalancers返回参数结构体
      class DescribeGatewayLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的负载均衡实例总数。此数值与入参中的Limit无关。
        # @type TotalCount: Integer
        # @param LoadBalancerSet: 返回的网关负载均衡实例数组。
        # @type LoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerSet, :RequestId

        def initialize(totalcount=nil, loadbalancerset=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerSet = loadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              gatewayloadbalancer_tmp = GatewayLoadBalancer.new
              gatewayloadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << gatewayloadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupInstanceStatus请求参数结构体
      class DescribeTargetGroupInstanceStatusRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组唯一id。可通过[DescribeTargetGroupList](https://cloud.tencent.com/document/api/1782/111692)接口获取。
        # @type TargetGroupId: String
        # @param TargetGroupInstanceIps: 目标组绑定的后端服务ip列表
        # @type TargetGroupInstanceIps: Array

        attr_accessor :TargetGroupId, :TargetGroupInstanceIps

        def initialize(targetgroupid=nil, targetgroupinstanceips=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstanceIps = targetgroupinstanceips
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupInstanceIps = params['TargetGroupInstanceIps']
        end
      end

      # DescribeTargetGroupInstanceStatus返回参数结构体
      class DescribeTargetGroupInstanceStatusResponse < TencentCloud::Common::AbstractModel
        # @param TargetGroupInstanceSet: 健康检查后端rs状态列表
        # @type TargetGroupInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetGroupInstanceSet, :RequestId

        def initialize(targetgroupinstanceset=nil, requestid=nil)
          @TargetGroupInstanceSet = targetgroupinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TargetGroupInstanceSet'].nil?
            @TargetGroupInstanceSet = []
            params['TargetGroupInstanceSet'].each do |i|
              targetgroupinstancestatus_tmp = TargetGroupInstanceStatus.new
              targetgroupinstancestatus_tmp.deserialize(i)
              @TargetGroupInstanceSet << targetgroupinstancestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupInstances请求参数结构体
      class DescribeTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，当前仅支持TargetGroupId，BindIP，InstanceId过滤。

        # - TargetGroupId - String - 是否必填：否 - （过滤条件）目标组ID，如“lbtg-5xunivs0”。可通过[DescribeTargetGroupList](https://cloud.tencent.com/document/api/1782/111692)接口获取。
        # - BindIP - String - 是否必填：否 - （过滤条件）目标组绑定实例的内网IP地址，如“10.1.1.1”。
        # - InstanceId - String - 是否必填：否 - （过滤条件）目标组绑定实例的名称，如“ins-mxzlf9ke”。可通过[DescribeInstances](https://cloud.tencent.com/document/product/213/15728) 接口获取。
        # @type Filters: Array
        # @param Limit: 显示数量限制，默认20，最大100。
        # @type Limit: Integer
        # @param Offset: 显示的偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
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
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTargetGroupInstances返回参数结构体
      class DescribeTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次查询的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupInstanceSet: 绑定的服务器信息。
        # @type TargetGroupInstanceSet: Array
        # @param RealCount: 实际统计数量，不受Limit、Offset、CAM的影响。
        # @type RealCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupInstanceSet, :RealCount, :RequestId

        def initialize(totalcount=nil, targetgroupinstanceset=nil, realcount=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupInstanceSet = targetgroupinstanceset
          @RealCount = realcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupInstanceSet'].nil?
            @TargetGroupInstanceSet = []
            params['TargetGroupInstanceSet'].each do |i|
              targetgroupbackend_tmp = TargetGroupBackend.new
              targetgroupbackend_tmp.deserialize(i)
              @TargetGroupInstanceSet << targetgroupbackend_tmp
            end
          end
          @RealCount = params['RealCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupList请求参数结构体
      class DescribeTargetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组ID数组。
        # @type TargetGroupIds: Array
        # @param Filters: 过滤条件数组。

        # - TargetGroupVpcId - String - 是否必填：否 - （过滤条件）按照目标组所属的私有网络过滤，可以通过[DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)获取，如“vpc-bhqk****”。
        # - TargetGroupName - String - 是否必填：否 - （过滤条件）按照目标组的名称过滤，如“tg_name”
        # @type Filters: Array
        # @param Offset: 显示的偏移起始量，默认为0。
        # @type Offset: Integer
        # @param Limit: 显示条数限制，默认为20，最大值为1000。
        # @type Limit: Integer

        attr_accessor :TargetGroupIds, :Filters, :Offset, :Limit

        def initialize(targetgroupids=nil, filters=nil, offset=nil, limit=nil)
          @TargetGroupIds = targetgroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
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

      # DescribeTargetGroupList返回参数结构体
      class DescribeTargetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 显示的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupSet: 显示的目标组信息集合。
        # @type TargetGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupSet, :RequestId

        def initialize(totalcount=nil, targetgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupSet = targetgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupSet'].nil?
            @TargetGroupSet = []
            params['TargetGroupSet'].each do |i|
              targetgroupinfo_tmp = TargetGroupInfo.new
              targetgroupinfo_tmp.deserialize(i)
              @TargetGroupSet << targetgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroups请求参数结构体
      class DescribeTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组ID。
        # @type TargetGroupIds: Array
        # @param Limit: 显示条数限制，默认为20，最大值为1000。
        # @type Limit: Integer
        # @param Offset: 显示的偏移起始量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件数组。
        # - TargetGroupVpcId - String - 是否必填：否 - （过滤条件）按照目标组所属的私有网络过滤，可以通过[DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)获取，如“vpc-bhqk****”。
        # - TargetGroupName - String - 是否必填：否 - （过滤条件）按照目标组的名称过滤，如“tg_name”
        # @type Filters: Array

        attr_accessor :TargetGroupIds, :Limit, :Offset, :Filters

        def initialize(targetgroupids=nil, limit=nil, offset=nil, filters=nil)
          @TargetGroupIds = targetgroupids
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeTargetGroups返回参数结构体
      class DescribeTargetGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 显示的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupSet: 显示的目标组信息集合。
        # @type TargetGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupSet, :RequestId

        def initialize(totalcount=nil, targetgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupSet = targetgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupSet'].nil?
            @TargetGroupSet = []
            params['TargetGroupSet'].each do |i|
              targetgroupinfo_tmp = TargetGroupInfo.new
              targetgroupinfo_tmp.deserialize(i)
              @TargetGroupSet << targetgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 请求ID，即接口返回的 RequestId 参数。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务的当前状态。 0：成功，1：失败，2：进行中。
        # @type Status: Integer
        # @param LoadBalancerIds: 由负载均衡实例唯一 ID 组成的数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array
        # @param Message: 辅助描述信息，如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :LoadBalancerIds, :Message, :RequestId

        def initialize(status=nil, loadbalancerids=nil, message=nil, requestid=nil)
          @Status = status
          @LoadBalancerIds = loadbalancerids
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @LoadBalancerIds = params['LoadBalancerIds']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DisassociateTargetGroups请求参数结构体
      class DisassociateTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Associations: 待解绑的目标组列表。
        # @type Associations: Array

        attr_accessor :Associations

        def initialize(associations=nil)
          @Associations = associations
        end

        def deserialize(params)
          unless params['Associations'].nil?
            @Associations = []
            params['Associations'].each do |i|
              targetgroupassociation_tmp = TargetGroupAssociation.new
              targetgroupassociation_tmp.deserialize(i)
              @Associations << targetgroupassociation_tmp
            end
          end
        end
      end

      # DisassociateTargetGroups返回参数结构体
      class DisassociateTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 过滤器条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤器的名称
        # @type Name: String
        # @param Values: 过滤器的值数组
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

      # 网关负载均衡实例的信息
      class GatewayLoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 网关负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 网关负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param VpcId: 网关负载均衡所属私有网络。
        # @type VpcId: String
        # @param SubnetId: 网关负载均衡所属子网。
        # @type SubnetId: String
        # @param Vips: 网关负载均衡提供服务的虚拟IP。
        # @type Vips: Array
        # @param Status: 网关负载均衡实例状态。
        # 0：创建中，1：正常运行，3：删除中。
        # @type Status: Integer
        # @param TargetGroupId: 关联的目标组唯一ID。
        # @type TargetGroupId: String
        # @param DeleteProtect: 是否开启删除保护功能。
        # @type DeleteProtect: Boolean
        # @param Tags: 负载均衡实例的标签信息。
        # @type Tags: Array
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ChargeType: 网关负载均衡实例的计费类型，POSTPAID_BY_HOUR：按量计费
        # @type ChargeType: String
        # @param Isolation: 0：表示未被隔离，1：表示被隔离。
        # @type Isolation: Integer
        # @param IsolatedTime: 网关负载均衡实例被隔离的时间
        # @type IsolatedTime: String
        # @param OperateProtect: 是否开启配置修改保护功能。
        # @type OperateProtect: Boolean

        attr_accessor :LoadBalancerId, :LoadBalancerName, :VpcId, :SubnetId, :Vips, :Status, :TargetGroupId, :DeleteProtect, :Tags, :CreateTime, :ChargeType, :Isolation, :IsolatedTime, :OperateProtect

        def initialize(loadbalancerid=nil, loadbalancername=nil, vpcid=nil, subnetid=nil, vips=nil, status=nil, targetgroupid=nil, deleteprotect=nil, tags=nil, createtime=nil, chargetype=nil, isolation=nil, isolatedtime=nil, operateprotect=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vips = vips
          @Status = status
          @TargetGroupId = targetgroupid
          @DeleteProtect = deleteprotect
          @Tags = tags
          @CreateTime = createtime
          @ChargeType = chargetype
          @Isolation = isolation
          @IsolatedTime = isolatedtime
          @OperateProtect = operateprotect
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vips = params['Vips']
          @Status = params['Status']
          @TargetGroupId = params['TargetGroupId']
          @DeleteProtect = params['DeleteProtect']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ChargeType = params['ChargeType']
          @Isolation = params['Isolation']
          @IsolatedTime = params['IsolatedTime']
          @OperateProtect = params['OperateProtect']
        end
      end

      # InquirePriceCreateGatewayLoadBalancer请求参数结构体
      class InquirePriceCreateGatewayLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param GoodsNum: 询价的网关负载均衡实例个数，默认为1
        # @type GoodsNum: Integer

        attr_accessor :GoodsNum

        def initialize(goodsnum=nil)
          @GoodsNum = goodsnum
        end

        def deserialize(params)
          @GoodsNum = params['GoodsNum']
        end
      end

      # InquirePriceCreateGatewayLoadBalancer返回参数结构体
      class InquirePriceCreateGatewayLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应的价格。
        # @type Price: :class:`Tencentcloud::Gwlb.v20240906.models.Price`
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

      # 描述了单项的价格信息
      class ItemPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 后付费单价，单位：元。
        # @type UnitPrice: Float
        # @param ChargeUnit: 后付费计价单元，可取值范围： HOUR：表示计价单元是按每小时来计算。当前涉及该计价单元的场景有：实例按小时后付费（POSTPAID_BY_HOUR）。
        # @type ChargeUnit: String
        # @param OriginalPrice: 预支费用的原价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 预支费用的折扣价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param UnitPriceDiscount: 后付费的折扣单价，单位:元。
        # @type UnitPriceDiscount: Float
        # @param Discount: 折扣，如20.0代表2折。
        # @type Discount: Float

        attr_accessor :UnitPrice, :ChargeUnit, :OriginalPrice, :DiscountPrice, :UnitPriceDiscount, :Discount

        def initialize(unitprice=nil, chargeunit=nil, originalprice=nil, discountprice=nil, unitpricediscount=nil, discount=nil)
          @UnitPrice = unitprice
          @ChargeUnit = chargeunit
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @UnitPriceDiscount = unitpricediscount
          @Discount = discount
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @ChargeUnit = params['ChargeUnit']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @Discount = params['Discount']
        end
      end

      # ModifyGatewayLoadBalancerAttribute请求参数结构体
      class ModifyGatewayLoadBalancerAttributeRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 网关负载均衡的唯一ID。可通过[DescribeGatewayLoadBalancers](https://cloud.tencent.com/document/api/1782/111683) 接口获取。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 网关负载均衡实例名称。可支持输入1-60个字符。
        # @type LoadBalancerName: String
        # @param DeleteProtect: 是否开启删除保护。
        # @type DeleteProtect: Boolean

        attr_accessor :LoadBalancerId, :LoadBalancerName, :DeleteProtect

        def initialize(loadbalancerid=nil, loadbalancername=nil, deleteprotect=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @DeleteProtect = deleteprotect
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @DeleteProtect = params['DeleteProtect']
        end
      end

      # ModifyGatewayLoadBalancerAttribute返回参数结构体
      class ModifyGatewayLoadBalancerAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupAttribute请求参数结构体
      class ModifyTargetGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组的ID，可以通过[DescribeTargetGroups](https://cloud.tencent.com/document/product/214/40554)获取。
        # @type TargetGroupId: String
        # @param TargetGroupName: 目标组的新名称。
        # @type TargetGroupName: String
        # @param HealthCheck: 健康检查详情。
        # @type HealthCheck: :class:`Tencentcloud::Gwlb.v20240906.models.TargetGroupHealthCheck`
        # @param AllDeadToAlive: 是否支持全死全活。
        # @type AllDeadToAlive: Boolean
        # @param TcpIdleConnectTimeout: TCP协议连接空闲超时时间，可配置60s-6000s，默认350s。
        # @type TcpIdleConnectTimeout: Integer
        # @param OthersIdleConnectTimeout: 其他协议连接空闲超时时间，可配置5s-180s，默认120s
        # @type OthersIdleConnectTimeout: Integer
        # @param RescheduleUnbindRs: 重新调度功能内的解绑后端服务开关，开关打开后解绑后端服务会触发重新调度。
        # @type RescheduleUnbindRs: Boolean
        # @param RescheduleUnbindRsStartTime: 解绑RS后开启重调度的时间，可配置0s-3600s，默认0s
        # @type RescheduleUnbindRsStartTime: Integer
        # @param RescheduleUnhealthy: 重新调度功能内的后端服务健康探测异常开关，开关打开后后端服务健康检查异常会触发重新调度。
        # @type RescheduleUnhealthy: Boolean
        # @param RescheduleUnhealthyStartTime: 后端服务健康探测异常后开启重调度的时间，可配置0s-3600s，默认0s
        # @type RescheduleUnhealthyStartTime: Integer

        attr_accessor :TargetGroupId, :TargetGroupName, :HealthCheck, :AllDeadToAlive, :TcpIdleConnectTimeout, :OthersIdleConnectTimeout, :RescheduleUnbindRs, :RescheduleUnbindRsStartTime, :RescheduleUnhealthy, :RescheduleUnhealthyStartTime

        def initialize(targetgroupid=nil, targetgroupname=nil, healthcheck=nil, alldeadtoalive=nil, tcpidleconnecttimeout=nil, othersidleconnecttimeout=nil, rescheduleunbindrs=nil, rescheduleunbindrsstarttime=nil, rescheduleunhealthy=nil, rescheduleunhealthystarttime=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
          @HealthCheck = healthcheck
          @AllDeadToAlive = alldeadtoalive
          @TcpIdleConnectTimeout = tcpidleconnecttimeout
          @OthersIdleConnectTimeout = othersidleconnecttimeout
          @RescheduleUnbindRs = rescheduleunbindrs
          @RescheduleUnbindRsStartTime = rescheduleunbindrsstarttime
          @RescheduleUnhealthy = rescheduleunhealthy
          @RescheduleUnhealthyStartTime = rescheduleunhealthystarttime
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
          unless params['HealthCheck'].nil?
            @HealthCheck = TargetGroupHealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @AllDeadToAlive = params['AllDeadToAlive']
          @TcpIdleConnectTimeout = params['TcpIdleConnectTimeout']
          @OthersIdleConnectTimeout = params['OthersIdleConnectTimeout']
          @RescheduleUnbindRs = params['RescheduleUnbindRs']
          @RescheduleUnbindRsStartTime = params['RescheduleUnbindRsStartTime']
          @RescheduleUnhealthy = params['RescheduleUnhealthy']
          @RescheduleUnhealthyStartTime = params['RescheduleUnhealthyStartTime']
        end
      end

      # ModifyTargetGroupAttribute返回参数结构体
      class ModifyTargetGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupInstancesWeight请求参数结构体
      class ModifyTargetGroupInstancesWeightRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。可通过[DescribeTargetGroupList](https://cloud.tencent.com/document/api/1782/111692)接口获取。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 实例绑定配置数组。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # ModifyTargetGroupInstancesWeight返回参数结构体
      class ModifyTargetGroupInstancesWeightResponse < TencentCloud::Common::AbstractModel
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

      # 表示网关负载均衡的价格
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 描述了实例价格。
        # @type InstancePrice: :class:`Tencentcloud::Gwlb.v20240906.models.ItemPrice`
        # @param LcuPrice: 描述了GLCU的价格。
        # @type LcuPrice: :class:`Tencentcloud::Gwlb.v20240906.models.ItemPrice`

        attr_accessor :InstancePrice, :LcuPrice

        def initialize(instanceprice=nil, lcuprice=nil)
          @InstancePrice = instanceprice
          @LcuPrice = lcuprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = ItemPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['LcuPrice'].nil?
            @LcuPrice = ItemPrice.new
            @LcuPrice.deserialize(params['LcuPrice'])
          end
        end
      end

      # RegisterTargetGroupInstances请求参数结构体
      class RegisterTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。可通过[DescribeTargetGroupList](https://cloud.tencent.com/document/api/1782/111692)接口获取。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 服务器实例数组
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # RegisterTargetGroupInstances返回参数结构体
      class RegisterTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 网关负载均衡的标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
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

      # 规则与目标组的关联关系。
      class TargetGroupAssociation < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 网关负载均衡实例ID，可以通过[DescribeGatewayLoadBalancers](https://cloud.tencent.com/document/product/1782/111683)获取网关负载均衡ID。
        # @type LoadBalancerId: String
        # @param TargetGroupId: 目标组ID，可以通过[DescribeTargetGroups](https://cloud.tencent.com/document/product/214/40554)获取目标组ID。
        # @type TargetGroupId: String

        attr_accessor :LoadBalancerId, :TargetGroupId

        def initialize(loadbalancerid=nil, targetgroupid=nil)
          @LoadBalancerId = loadbalancerid
          @TargetGroupId = targetgroupid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @TargetGroupId = params['TargetGroupId']
        end
      end

      # 目标组绑定的后端服务器
      class TargetGroupBackend < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param Type: 后端服务的类型，可取：CVM、ENI
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID
        # @type InstanceId: String
        # @param Port: 后端服务的监听端口
        # @type Port: Integer
        # @param Weight: 后端服务的转发权重，取值为0或16
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # @type InstanceName: String
        # @param RegisteredTime: 后端服务被绑定的时间
        # @type RegisteredTime: String
        # @param EniId: 弹性网卡唯一ID
        # @type EniId: String
        # @param ZoneId: 后端服务的可用区ID
        # @type ZoneId: Integer

        attr_accessor :TargetGroupId, :Type, :InstanceId, :Port, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RegisteredTime, :EniId, :ZoneId

        def initialize(targetgroupid=nil, type=nil, instanceid=nil, port=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, registeredtime=nil, eniid=nil, zoneid=nil)
          @TargetGroupId = targetgroupid
          @Type = type
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RegisteredTime = registeredtime
          @EniId = eniid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RegisteredTime = params['RegisteredTime']
          @EniId = params['EniId']
          @ZoneId = params['ZoneId']
        end
      end

      # 目标组健康检查详情
      class TargetGroupHealthCheck < TencentCloud::Common::AbstractModel
        # @param HealthSwitch: 是否开启健康检查。
        # @type HealthSwitch: Boolean
        # @param Protocol: 健康检查使用的协议。支持PING和TCP两种方式，默认为PING。

        # - icmp: 使用PING的方式进行健康检查
        # - tcp: 使用TCP连接的方式进行健康检查
        # @type Protocol: String
        # @param Port: 健康检查端口，探测协议为tcp时，该参数必填。
        # @type Port: Integer
        # @param Timeout: 健康检查超时时间。 默认为2秒。 可配置范围：2 - 30秒。
        # @type Timeout: Integer
        # @param IntervalTime: 检测间隔时间。 默认为5秒。 可配置范围：2 - 300秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 检测健康阈值。 默认为3次。 可配置范围：2 - 10次。
        # @type HealthNum: Integer
        # @param UnHealthNum: 检测不健康阈值。 默认为3次。 可配置范围：2 - 10次。
        # @type UnHealthNum: Integer

        attr_accessor :HealthSwitch, :Protocol, :Port, :Timeout, :IntervalTime, :HealthNum, :UnHealthNum

        def initialize(healthswitch=nil, protocol=nil, port=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil)
          @HealthSwitch = healthswitch
          @Protocol = protocol
          @Port = port
          @Timeout = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnHealthNum = unhealthnum
        end

        def deserialize(params)
          @HealthSwitch = params['HealthSwitch']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Timeout = params['Timeout']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnHealthNum = params['UnHealthNum']
        end
      end

      # 目标组信息
      class TargetGroupInfo < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param VpcId: 目标组的vpcid
        # @type VpcId: String
        # @param TargetGroupName: 目标组的名字
        # @type TargetGroupName: String
        # @param Port: 目标组的默认端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param CreatedTime: 目标组的创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 目标组的修改时间
        # @type UpdatedTime: String
        # @param AssociatedRule: 关联到的规则数组。在DescribeTargetGroupList接口调用时无法获取到该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedRule: Array
        # @param Protocol: 网关负载均衡目标组协议。
        # - tencent_geneve ：GENEVE 标准协议
        # - aws_geneve：GENEVE 兼容协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param ScheduleAlgorithm: 均衡算法。
        # - ip_hash_3_elastic：弹性哈希
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleAlgorithm: String
        # @param HealthCheck: 健康检查详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Gwlb.v20240906.models.TargetGroupHealthCheck`
        # @param AllDeadToAlive: 是否支持全死全活。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllDeadToAlive: Boolean
        # @param AssociatedRuleCount: 目标组已关联的规则数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedRuleCount: Integer
        # @param RegisteredInstancesCount: 目标组内的实例数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisteredInstancesCount: Integer
        # @param Tag: 目标组的标签。
        # @type Tag: Array

        attr_accessor :TargetGroupId, :VpcId, :TargetGroupName, :Port, :CreatedTime, :UpdatedTime, :AssociatedRule, :Protocol, :ScheduleAlgorithm, :HealthCheck, :AllDeadToAlive, :AssociatedRuleCount, :RegisteredInstancesCount, :Tag

        def initialize(targetgroupid=nil, vpcid=nil, targetgroupname=nil, port=nil, createdtime=nil, updatedtime=nil, associatedrule=nil, protocol=nil, schedulealgorithm=nil, healthcheck=nil, alldeadtoalive=nil, associatedrulecount=nil, registeredinstancescount=nil, tag=nil)
          @TargetGroupId = targetgroupid
          @VpcId = vpcid
          @TargetGroupName = targetgroupname
          @Port = port
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @AssociatedRule = associatedrule
          @Protocol = protocol
          @ScheduleAlgorithm = schedulealgorithm
          @HealthCheck = healthcheck
          @AllDeadToAlive = alldeadtoalive
          @AssociatedRuleCount = associatedrulecount
          @RegisteredInstancesCount = registeredinstancescount
          @Tag = tag
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @VpcId = params['VpcId']
          @TargetGroupName = params['TargetGroupName']
          @Port = params['Port']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['AssociatedRule'].nil?
            @AssociatedRule = []
            params['AssociatedRule'].each do |i|
              associationitem_tmp = AssociationItem.new
              associationitem_tmp.deserialize(i)
              @AssociatedRule << associationitem_tmp
            end
          end
          @Protocol = params['Protocol']
          @ScheduleAlgorithm = params['ScheduleAlgorithm']
          unless params['HealthCheck'].nil?
            @HealthCheck = TargetGroupHealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @AllDeadToAlive = params['AllDeadToAlive']
          @AssociatedRuleCount = params['AssociatedRuleCount']
          @RegisteredInstancesCount = params['RegisteredInstancesCount']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tag << taginfo_tmp
            end
          end
        end
      end

      # 目标组实例
      class TargetGroupInstance < TencentCloud::Common::AbstractModel
        # @param BindIP: 目标组实例的内网IP。
        # @type BindIP: String
        # @param Port: 目标组实例的端口，只支持6081。
        # @type Port: Integer
        # @param Weight: 目标组实例的权重，只支持0或16，非0统一按16处理。
        # @type Weight: Integer

        attr_accessor :BindIP, :Port, :Weight

        def initialize(bindip=nil, port=nil, weight=nil)
          @BindIP = bindip
          @Port = port
          @Weight = weight
        end

        def deserialize(params)
          @BindIP = params['BindIP']
          @Port = params['Port']
          @Weight = params['Weight']
        end
      end

      # 用于目标组后端rs健康检查状态。
      class TargetGroupInstanceStatus < TencentCloud::Common::AbstractModel
        # @param InstanceIp: 后端rs的IP
        # @type InstanceIp: String
        # @param Status: 健康检查状态，参数值及含义如下：
        # ● on：表示探测中。
        # ● off：表示健康检查关闭。
        # ● health：表示健康。
        # ● unhealth：表示异常。
        # @type Status: String

        attr_accessor :InstanceIp, :Status

        def initialize(instanceip=nil, status=nil)
          @InstanceIp = instanceip
          @Status = status
        end

        def deserialize(params)
          @InstanceIp = params['InstanceIp']
          @Status = params['Status']
        end
      end

    end
  end
end

