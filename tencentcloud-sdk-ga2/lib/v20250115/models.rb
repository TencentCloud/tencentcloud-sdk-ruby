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
      # CreateGlobalAccelerator请求参数结构体
      class CreateGlobalAcceleratorRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>名称，最大长度不能超过60个字节。</p>
        # @type Name: String
        # @param InstanceChargeType: <p>计费模式，PREPAID：表示预付费，即包年包月，POSTPAID：表示后付费，即按量计费。默认：POSTPAID。当前仅支持后付费。</p>
        # @type InstanceChargeType: String
        # @param Description: <p>描述信息，最大长度不能超过100个字节。</p>
        # @type Description: String
        # @param CrossBorderType: <p>跨境类型；HighQuality：精品BGP-IP跨境；Unicom：联通专线跨境。</p>
        # @type CrossBorderType: String
        # @param CrossBorderPromiseFlag: <p>此Flag代表签署跨境服务承诺书。当使用跨境服务时候，此字段必传。True：代表签署。</p>
        # @type CrossBorderPromiseFlag: Boolean
        # @param Tags: <p>标签信息</p>
        # @type Tags: Array

        attr_accessor :Name, :InstanceChargeType, :Description, :CrossBorderType, :CrossBorderPromiseFlag, :Tags

        def initialize(name=nil, instancechargetype=nil, description=nil, crossbordertype=nil, crossborderpromiseflag=nil, tags=nil)
          @Name = name
          @InstanceChargeType = instancechargetype
          @Description = description
          @CrossBorderType = crossbordertype
          @CrossBorderPromiseFlag = crossborderpromiseflag
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @InstanceChargeType = params['InstanceChargeType']
          @Description = params['Description']
          @CrossBorderType = params['CrossBorderType']
          @CrossBorderPromiseFlag = params['CrossBorderPromiseFlag']
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

      # CreateGlobalAccelerator返回参数结构体
      class CreateGlobalAcceleratorResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID。</p>
        # @type TaskId: String
        # @param GlobalAcceleratorId: <p>全球加速实例ID。</p>
        # @type GlobalAcceleratorId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :GlobalAcceleratorId, :RequestId

        def initialize(taskid=nil, globalacceleratorid=nil, requestid=nil)
          @TaskId = taskid
          @GlobalAcceleratorId = globalacceleratorid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @GlobalAcceleratorId = params['GlobalAcceleratorId']
          @RequestId = params['RequestId']
        end
      end

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

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
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

    end
  end
end

