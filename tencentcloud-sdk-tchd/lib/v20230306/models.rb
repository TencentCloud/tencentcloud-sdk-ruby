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
  module Tchd
    module V20230306
      # DescribeEvents请求参数结构体
      class DescribeEventsRequest < TencentCloud::Common::AbstractModel
        # @param EventDate: 事件的发生日期
        # @type EventDate: String
        # @param ProductIds: 1. 不指定产品列表时将查询所有产品。
        # 2. 产品ID示例：cvm、lb、cdb、cdn、crs
        # @type ProductIds: Array
        # @param RegionIds: 1. 不指定地域列表时将查询所有地域。
        # 2. 查询非区域性产品事件时，地域ID指定为：non-regional
        # 3. 其他地域ID取值请参考：https://cloud.tencent.com/document/api/213/15692
        # @type RegionIds: Array

        attr_accessor :EventDate, :ProductIds, :RegionIds

        def initialize(eventdate=nil, productids=nil, regionids=nil)
          @EventDate = eventdate
          @ProductIds = productids
          @RegionIds = regionids
        end

        def deserialize(params)
          @EventDate = params['EventDate']
          @ProductIds = params['ProductIds']
          @RegionIds = params['RegionIds']
        end
      end

      # DescribeEvents返回参数结构体
      class DescribeEventsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 事件详情列表
        # @type Data: :class:`Tencentcloud::Tchd.v20230306.models.ProductEventList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProductEventList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 事件详情信息，包含：产品名称、地域名称、事件开始时间、事件结束时间、事件当前状态；
      class EventDetail < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param RegionId: 地域ID，非区域性地域返回non-regional
        # @type RegionId: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param StartTime: 事件开始时间
        # @type StartTime: String
        # @param EndTime: 事件结束时间，当事件正在发生还未结束时，结束时间返回空
        # @type EndTime: String
        # @param CurrentStatus: 事件当前状态：提示、异常、正常
        # @type CurrentStatus: String

        attr_accessor :ProductId, :ProductName, :RegionId, :RegionName, :StartTime, :EndTime, :CurrentStatus

        def initialize(productid=nil, productname=nil, regionid=nil, regionname=nil, starttime=nil, endtime=nil, currentstatus=nil)
          @ProductId = productid
          @ProductName = productname
          @RegionId = regionid
          @RegionName = regionname
          @StartTime = starttime
          @EndTime = endtime
          @CurrentStatus = currentstatus
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CurrentStatus = params['CurrentStatus']
        end
      end

      # 产品可用性事件详情列表
      class ProductEventList < TencentCloud::Common::AbstractModel
        # @param EventList: 事件详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventList: Array

        attr_accessor :EventList

        def initialize(eventlist=nil)
          @EventList = eventlist
        end

        def deserialize(params)
          unless params['EventList'].nil?
            @EventList = []
            params['EventList'].each do |i|
              eventdetail_tmp = EventDetail.new
              eventdetail_tmp.deserialize(i)
              @EventList << eventdetail_tmp
            end
          end
        end
      end

    end
  end
end

