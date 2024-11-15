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
  module Cdz
    module V20221123
      # CDZ的母机和子机的对应关系
      class CloudDedicatedZoneHostsInfo < TencentCloud::Common::AbstractModel
        # @param HostUuid: Host的唯一标识uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostUuid: String
        # @param InstancesInfo: 实例名称数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancesInfo: Array

        attr_accessor :HostUuid, :InstancesInfo

        def initialize(hostuuid=nil, instancesinfo=nil)
          @HostUuid = hostuuid
          @InstancesInfo = instancesinfo
        end

        def deserialize(params)
          @HostUuid = params['HostUuid']
          @InstancesInfo = params['InstancesInfo']
        end
      end

      # 专属可用区资源统计项数据详情，对应一个具体的垂直产品的资源统计项。
      class CloudDedicatedZoneResourceStatisticsInfo < TencentCloud::Common::AbstractModel
        # @param Item: 资源统计项名称
        # @type Item: String
        # @param Unit: 资源统计项单位
        # @type Unit: String
        # @param Total: 资源总量
        # @type Total: String
        # @param Usage: 已用资源
        # @type Usage: String
        # @param UsageRate: 已用资源占比
        # @type UsageRate: String
        # @param Remain: 剩余资源
        # @type Remain: String
        # @param RemainRate: 剩余资源占比
        # @type RemainRate: String
        # @param ThisMondayUsageRate: 本周一零点资源使用率
        # @type ThisMondayUsageRate: String
        # @param ThisMondayUsageGrowthRate: 本周资源增长比例
        # @type ThisMondayUsageGrowthRate: String
        # @param LastMondayUsageGrowthRate: 上周资源增长比例
        # @type LastMondayUsageGrowthRate: String

        attr_accessor :Item, :Unit, :Total, :Usage, :UsageRate, :Remain, :RemainRate, :ThisMondayUsageRate, :ThisMondayUsageGrowthRate, :LastMondayUsageGrowthRate

        def initialize(item=nil, unit=nil, total=nil, usage=nil, usagerate=nil, remain=nil, remainrate=nil, thismondayusagerate=nil, thismondayusagegrowthrate=nil, lastmondayusagegrowthrate=nil)
          @Item = item
          @Unit = unit
          @Total = total
          @Usage = usage
          @UsageRate = usagerate
          @Remain = remain
          @RemainRate = remainrate
          @ThisMondayUsageRate = thismondayusagerate
          @ThisMondayUsageGrowthRate = thismondayusagegrowthrate
          @LastMondayUsageGrowthRate = lastmondayusagegrowthrate
        end

        def deserialize(params)
          @Item = params['Item']
          @Unit = params['Unit']
          @Total = params['Total']
          @Usage = params['Usage']
          @UsageRate = params['UsageRate']
          @Remain = params['Remain']
          @RemainRate = params['RemainRate']
          @ThisMondayUsageRate = params['ThisMondayUsageRate']
          @ThisMondayUsageGrowthRate = params['ThisMondayUsageGrowthRate']
          @LastMondayUsageGrowthRate = params['LastMondayUsageGrowthRate']
        end
      end

      # 专属可用区资源水位数据详情，对应一个具体的垂直产品。
      class CloudDedicatedZoneResourceSummaryInfo < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param SubProductName: 子产品名称
        # @type SubProductName: String
        # @param Statistics: 资源统计详情
        # @type Statistics: Array

        attr_accessor :ProductName, :SubProductName, :Statistics

        def initialize(productname=nil, subproductname=nil, statistics=nil)
          @ProductName = productname
          @SubProductName = subproductname
          @Statistics = statistics
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @SubProductName = params['SubProductName']
          unless params['Statistics'].nil?
            @Statistics = []
            params['Statistics'].each do |i|
              clouddedicatedzoneresourcestatisticsinfo_tmp = CloudDedicatedZoneResourceStatisticsInfo.new
              clouddedicatedzoneresourcestatisticsinfo_tmp.deserialize(i)
              @Statistics << clouddedicatedzoneresourcestatisticsinfo_tmp
            end
          end
        end
      end

      # DescribeCloudDedicatedZoneHosts请求参数结构体
      class DescribeCloudDedicatedZoneHostsRequest < TencentCloud::Common::AbstractModel
        # @param CloudDedicatedZoneID: 专属可用区ID
        # @type CloudDedicatedZoneID: String
        # @param HostUuids: 一个或多个Host面的CVM实例信息。最大支持查询100台Host。
        # @type HostUuids: Array
        # @param InstanceIds: 查询一个实例或者多个实例所在的Host上面的CVM实例信息。最大支持查询100台实例。
        # @type InstanceIds: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。该参数仅与CloudDedicatedZoneID有关，传递了HostUuids和InstanceIds则会失效。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。该参数仅与CloudDedicatedZoneID有关，传递了HostUuids和InstanceIds则会失效。
        # @type Limit: Integer

        attr_accessor :CloudDedicatedZoneID, :HostUuids, :InstanceIds, :Offset, :Limit

        def initialize(clouddedicatedzoneid=nil, hostuuids=nil, instanceids=nil, offset=nil, limit=nil)
          @CloudDedicatedZoneID = clouddedicatedzoneid
          @HostUuids = hostuuids
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CloudDedicatedZoneID = params['CloudDedicatedZoneID']
          @HostUuids = params['HostUuids']
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCloudDedicatedZoneHosts返回参数结构体
      class DescribeCloudDedicatedZoneHostsResponse < TencentCloud::Common::AbstractModel
        # @param CloudDedicatedZoneHostsInfoSet: 返回Host和Host上部署的实例信息之间的关系
        # @type CloudDedicatedZoneHostsInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CloudDedicatedZoneHostsInfoSet, :RequestId

        def initialize(clouddedicatedzonehostsinfoset=nil, requestid=nil)
          @CloudDedicatedZoneHostsInfoSet = clouddedicatedzonehostsinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CloudDedicatedZoneHostsInfoSet'].nil?
            @CloudDedicatedZoneHostsInfoSet = []
            params['CloudDedicatedZoneHostsInfoSet'].each do |i|
              clouddedicatedzonehostsinfo_tmp = CloudDedicatedZoneHostsInfo.new
              clouddedicatedzonehostsinfo_tmp.deserialize(i)
              @CloudDedicatedZoneHostsInfoSet << clouddedicatedzonehostsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudDedicatedZoneResourceSummary请求参数结构体
      class DescribeCloudDedicatedZoneResourceSummaryRequest < TencentCloud::Common::AbstractModel
        # @param CdzId: 专属可用区唯一标识
        # @type CdzId: String

        attr_accessor :CdzId

        def initialize(cdzid=nil)
          @CdzId = cdzid
        end

        def deserialize(params)
          @CdzId = params['CdzId']
        end
      end

      # DescribeCloudDedicatedZoneResourceSummary返回参数结构体
      class DescribeCloudDedicatedZoneResourceSummaryResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSummarySet: 资源水位详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceSummarySet: Array
        # @param ExtraInfo: 资源水位扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Cdz.v20221123.models.ExtraInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSummarySet, :ExtraInfo, :RequestId

        def initialize(resourcesummaryset=nil, extrainfo=nil, requestid=nil)
          @ResourceSummarySet = resourcesummaryset
          @ExtraInfo = extrainfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSummarySet'].nil?
            @ResourceSummarySet = []
            params['ResourceSummarySet'].each do |i|
              clouddedicatedzoneresourcesummaryinfo_tmp = CloudDedicatedZoneResourceSummaryInfo.new
              clouddedicatedzoneresourcesummaryinfo_tmp.deserialize(i)
              @ResourceSummarySet << clouddedicatedzoneresourcesummaryinfo_tmp
            end
          end
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 专属可用区资源水位数据扩展信息，包含可用区当地时间等数据。
      class ExtraInfo < TencentCloud::Common::AbstractModel
        # @param ThisMondayLocalDate: 专属可用区当地时间本周一日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThisMondayLocalDate: String
        # @param LastMondayLocalDate: 专属可用区当地时间上周一日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMondayLocalDate: String

        attr_accessor :ThisMondayLocalDate, :LastMondayLocalDate

        def initialize(thismondaylocaldate=nil, lastmondaylocaldate=nil)
          @ThisMondayLocalDate = thismondaylocaldate
          @LastMondayLocalDate = lastmondaylocaldate
        end

        def deserialize(params)
          @ThisMondayLocalDate = params['ThisMondayLocalDate']
          @LastMondayLocalDate = params['LastMondayLocalDate']
        end
      end

    end
  end
end

