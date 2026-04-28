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
  module Antiddos
    module V20250903
      # 封堵记录
      class DDoSBlockRecord < TencentCloud::Common::AbstractModel
        # @param Resource: <p>被封堵的资源，公网 IP，示例如下：</p><ul><li> 公网 IP：117.175.94.231。</li></ul>
        # @type Resource: String
        # @param BlockTime: <p>被封堵的时间。</p>
        # @type BlockTime: String
        # @param Status: <p>封堵解封状态。</p><p>枚举值：</p><ul><li>Blocked：已封堵；</li><li>Unblocking：解封中；</li><li>Unblocked：已解封。</li></ul>
        # @type Status: String

        attr_accessor :Resource, :BlockTime, :Status

        def initialize(resource=nil, blocktime=nil, status=nil)
          @Resource = resource
          @BlockTime = blocktime
          @Status = status
        end

        def deserialize(params)
          @Resource = params['Resource']
          @BlockTime = params['BlockTime']
          @Status = params['Status']
        end
      end

      # 当前账号剩余解封配额信息。购买高防产品的用户默认解封配额为三个资源，系统将在每天零点（UTC+8）时区重置解封配额数，当天未使用的解封配额数不会累计到次日；DDoS 高防包（轻量版）解封配额数为每月三个资源，每月重置。
      class DDoSUnblockQuota < TencentCloud::Common::AbstractModel
        # @param TotalQuota: <p>解封次数配额总数。</p>
        # @type TotalQuota: Integer
        # @param UsedQuota: <p>已使用的配额总数。</p>
        # @type UsedQuota: Integer
        # @param QuotaStartTime: <p>配额生效的起始时间。</p>
        # @type QuotaStartTime: String
        # @param QuotaEndTime: <p>配额生效的结束时间。</p>
        # @type QuotaEndTime: String

        attr_accessor :TotalQuota, :UsedQuota, :QuotaStartTime, :QuotaEndTime

        def initialize(totalquota=nil, usedquota=nil, quotastarttime=nil, quotaendtime=nil)
          @TotalQuota = totalquota
          @UsedQuota = usedquota
          @QuotaStartTime = quotastarttime
          @QuotaEndTime = quotaendtime
        end

        def deserialize(params)
          @TotalQuota = params['TotalQuota']
          @UsedQuota = params['UsedQuota']
          @QuotaStartTime = params['QuotaStartTime']
          @QuotaEndTime = params['QuotaEndTime']
        end
      end

      # DescribeDDoSBlockRecords请求参数结构体
      class DescribeDDoSBlockRecordsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>查询的起始时间。最高支持近一年的数据查询。</p><p>参数格式：2026-02-04T11:30:00+08:00。</p>
        # @type StartTime: String
        # @param EndTime: <p>查询的结束时间。查询时间范围（EndTime - StartTime）需小于等于 31 天。</p><p>参数格式：2026-03-04T11:30:00+08:00。</p>
        # @type EndTime: String
        # @param Filters: <p>过滤条件，Filters.Values 的上限为 20。该参数不填写时，返回当前 appid 下所有被封堵过的资源列表。详细的过滤条件如下：</p><ul><li> Resource：可按照被封堵的 IP 或者被封堵的资源六段式进行过滤；</li><li> Status：可按照被封堵的资源状态进行过滤。</li></ul><p>当 Filters.Name 取值为 Status 时，Filters.Values 取值有：</p><ul><li>Blocked：已封堵；</li><li>Unblocking：解封中；</li><li>Unblocked：已解封。</li></ul>
        # @type Filters: Array
        # @param Limit: <p>分页查询限制数，最大值为 100。</p><p>默认值：20</p>
        # @type Limit: Integer
        # @param Offset: <p>分页查询偏移量。</p><p>默认值：0</p>
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :Filters, :Limit, :Offset

        def initialize(starttime=nil, endtime=nil, filters=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # DescribeDDoSBlockRecords返回参数结构体
      class DescribeDDoSBlockRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>封堵解封记录总数。</p>
        # @type TotalCount: Integer
        # @param BlockRecords: <p>封堵解封记录。</p>
        # @type BlockRecords: Array
        # @param UnblockQuotaInfo: <p>解封次数配额信息。</p>
        # @type UnblockQuotaInfo: :class:`Tencentcloud::Antiddos.v20250903.models.DDoSUnblockQuota`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BlockRecords, :UnblockQuotaInfo, :RequestId

        def initialize(totalcount=nil, blockrecords=nil, unblockquotainfo=nil, requestid=nil)
          @TotalCount = totalcount
          @BlockRecords = blockrecords
          @UnblockQuotaInfo = unblockquotainfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BlockRecords'].nil?
            @BlockRecords = []
            params['BlockRecords'].each do |i|
              ddosblockrecord_tmp = DDoSBlockRecord.new
              ddosblockrecord_tmp.deserialize(i)
              @BlockRecords << ddosblockrecord_tmp
            end
          end
          unless params['UnblockQuotaInfo'].nil?
            @UnblockQuotaInfo = DDoSUnblockQuota.new
            @UnblockQuotaInfo.deserialize(params['UnblockQuotaInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤 ID、名称、状态等。 若存在多个 Filter 时，Filter 间的关系为逻辑与（AND）关系。 若同一个 Filter 存在多个 Values，同一 Filter 下 Values 间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: <p>需要过滤的字段；具体可选择值请查看对应的引用接口。</p>
        # @type Name: String
        # @param Values: <p>字段的过滤值。</p>
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

      # UnblockResources请求参数结构体
      class UnblockResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Resources: <p>申请解封的资源列表。支持按照公网 IP 解封；可通过 DescribeDDoSBlockRecords 接口获取被封堵的资源详情。参数示例如下：</p><ul><li>公网 IP：117.175.94.230。</li></ul><p>入参限制：列表长度最大限制 10。</p>
        # @type Resources: Array

        attr_accessor :Resources

        def initialize(resources=nil)
          @Resources = resources
        end

        def deserialize(params)
          @Resources = params['Resources']
        end
      end

      # UnblockResources返回参数结构体
      class UnblockResourcesResponse < TencentCloud::Common::AbstractModel
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

