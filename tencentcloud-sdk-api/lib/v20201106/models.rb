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
  module Api
    module V20201106
      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 待查询产品的名称，例如cvm、vpc
        # @type Product: String

        attr_accessor :Product
        
        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 地域数量
        # @type TotalCount: Integer
        # @param RegionSet: 地域列表信息
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId
        
        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              @RegionSet << RegionInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Product: 待查询产品的名称，例如cvm、vpc
        # @type Product: String

        attr_accessor :Product
        
        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可用区数量。
        # @type TotalCount: Integer
        # @param ZoneSet: 可用区列表信息。
        # @type ZoneSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ZoneSet, :RequestId
        
        def initialize(totalcount=nil, zoneset=nil, requestid=nil)
          @TotalCount = totalcount
          @ZoneSet = zoneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              @ZoneSet << ZoneInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域名称，例如，ap-guangzhou
        # @type Region: String
        # @param RegionName: 地域描述，例如，华南地区(广州)
        # @type RegionName: String
        # @param RegionState: 地域是否可用状态
        # @type RegionState: String

        attr_accessor :Region, :RegionName, :RegionState
        
        def initialize(region=nil, regionname=nil, regionstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称，例如，ap-guangzhou-3
        # 全网可用区名称如下：
        # <li> ap-chongqing-1 </li>
        # <li> ap-seoul-1 </li>
        # <li> ap-seoul-2 </li>
        # <li> ap-chengdu-1 </li>
        # <li> ap-chengdu-2 </li>
        # <li> ap-hongkong-1 </li>
        # <li> ap-hongkong-2 </li>
        # <li> ap-shenzhen-fsi-1 </li>
        # <li> ap-shenzhen-fsi-2 </li>
        # <li> ap-shenzhen-fsi-3 </li>
        # <li> ap-guangzhou-1（售罄）</li>
        # <li> ap-guangzhou-2（售罄）</li>
        # <li> ap-guangzhou-3 </li>
        # <li> ap-guangzhou-4 </li>
        # <li> ap-guangzhou-6 </li>
        # <li> ap-tokyo-1 </li>
        # <li> ap-singapore-1 </li>
        # <li> ap-singapore-2 </li>
        # <li> ap-shanghai-fsi-1 </li>
        # <li> ap-shanghai-fsi-2 </li>
        # <li> ap-shanghai-fsi-3 </li>
        # <li> ap-bangkok-1 </li>
        # <li> ap-shanghai-1（售罄） </li>
        # <li> ap-shanghai-2 </li>
        # <li> ap-shanghai-3 </li>
        # <li> ap-shanghai-4 </li>
        # <li> ap-shanghai-5 </li>
        # <li> ap-mumbai-1 </li>
        # <li> ap-mumbai-2 </li>
        # <li> eu-moscow-1 </li>
        # <li> ap-beijing-1 </li>
        # <li> ap-beijing-2 </li>
        # <li> ap-beijing-3 </li>
        # <li> ap-beijing-4 </li>
        # <li> ap-beijing-5 </li>
        # <li> na-siliconvalley-1 </li>
        # <li> na-siliconvalley-2 </li>
        # <li> eu-frankfurt-1 </li>
        # <li> na-toronto-1 </li>
        # <li> na-ashburn-1 </li>
        # <li> na-ashburn-2 </li>
        # <li> ap-nanjing-1 </li>
        # <li> ap-nanjing-2 </li>
        # @type Zone: String
        # @param ZoneName: 可用区描述，例如，广州三区
        # @type ZoneName: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param ZoneState: 可用区状态，包含AVAILABLE和UNAVAILABLE。AVAILABLE代表可用，UNAVAILABLE代表不可用。
        # @type ZoneState: String

        attr_accessor :Zone, :ZoneName, :ZoneId, :ZoneState
        
        def initialize(zone=nil, zonename=nil, zoneid=nil, zonestate=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @ZoneState = zonestate
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @ZoneState = params['ZoneState']
        end
      end

    end
  end
end

