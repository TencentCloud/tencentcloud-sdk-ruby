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
  module Ga2
    module V20250115
      # DescribeCrossBorderSettlement请求参数结构体
      class DescribeCrossBorderSettlementRequest < TencentCloud::Common::AbstractModel
        # @param GlobalAcceleratorId: 全球加速实例ID。
        # @type GlobalAcceleratorId: String
        # @param AccelerateRegion: 加速地域。
        # @type AccelerateRegion: String
        # @param EndpointGroupRegion: 终端节点组地域。
        # @type EndpointGroupRegion: String
        # @param SettlementMonth: 账单年月时间。
        # @type SettlementMonth: Integer

        attr_accessor :GlobalAcceleratorId, :AccelerateRegion, :EndpointGroupRegion, :SettlementMonth

        def initialize(globalacceleratorid=nil, accelerateregion=nil, endpointgroupregion=nil, settlementmonth=nil)
          @GlobalAcceleratorId = globalacceleratorid
          @AccelerateRegion = accelerateregion
          @EndpointGroupRegion = endpointgroupregion
          @SettlementMonth = settlementmonth
        end

        def deserialize(params)
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @AccelerateRegion = params['AccelerateRegion']
          @EndpointGroupRegion = params['EndpointGroupRegion']
          @SettlementMonth = params['SettlementMonth']
        end
      end

      # DescribeCrossBorderSettlement返回参数结构体
      class DescribeCrossBorderSettlementResponse < TencentCloud::Common::AbstractModel
        # @param Traffic: 流量用量，单位是GB；精度为保留小数点6位。
        # @type Traffic: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Traffic, :RequestId

        def initialize(traffic=nil, requestid=nil)
          @Traffic = traffic
          @RequestId = requestid
        end

        def deserialize(params)
          @Traffic = params['Traffic']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

