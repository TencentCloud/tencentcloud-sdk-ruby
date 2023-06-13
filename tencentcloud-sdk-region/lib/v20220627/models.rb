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
  module Region
    module V20220627
      # DescribeProducts请求参数结构体
      class DescribeProductsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeProducts返回参数结构体
      class DescribeProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品详细信息列表。
        # @type Products: Array
        # @param TotalCount: 产品总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :TotalCount, :RequestId

        def initialize(products=nil, totalcount=nil, requestid=nil)
          @Products = products
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              regionproduct_tmp = RegionProduct.new
              regionproduct_tmp.deserialize(i)
              @Products << regionproduct_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 待查询产品的名称，例如cvm，具体取值请查询DescribeProducts接口
        # @type Product: String
        # @param Scene: 不传或者0表示不查询【可选业务白名单】，1表示查询【可选业务白名单】，该参数设置了1，只有在业务白名单查不到情况下，才会查该白名单
        # @type Scene: Integer

        attr_accessor :Product, :Scene

        def initialize(product=nil, scene=nil)
          @Product = product
          @Scene = scene
        end

        def deserialize(params)
          @Product = params['Product']
          @Scene = params['Scene']
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
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Product: 待查询产品的名称，例如cvm，具体取值请查询DescribeProducts接口
        # @type Product: String
        # @param Scene: 不传或者0表示不查询【可选业务白名单】，1表示查询【可选业务白名单】，该参数设置了1，只有在业务白名单查不到情况下，才会查该白名单
        # @type Scene: Integer

        attr_accessor :Product, :Scene

        def initialize(product=nil, scene=nil)
          @Product = product
          @Scene = scene
        end

        def deserialize(params)
          @Product = params['Product']
          @Scene = params['Scene']
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
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
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
        # @param RegionTypeMC: 控制台类型，api调用时默认null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionTypeMC: Integer
        # @param LocationMC: 不同语言的地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationMC: String
        # @param RegionNameMC: 控制台展示的地域描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionNameMC: String
        # @param RegionIdMC: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionIdMC: String

        attr_accessor :Region, :RegionName, :RegionState, :RegionTypeMC, :LocationMC, :RegionNameMC, :RegionIdMC

        def initialize(region=nil, regionname=nil, regionstate=nil, regiontypemc=nil, locationmc=nil, regionnamemc=nil, regionidmc=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
          @RegionTypeMC = regiontypemc
          @LocationMC = locationmc
          @RegionNameMC = regionnamemc
          @RegionIdMC = regionidmc
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
          @RegionTypeMC = params['RegionTypeMC']
          @LocationMC = params['LocationMC']
          @RegionNameMC = params['RegionNameMC']
          @RegionIdMC = params['RegionIdMC']
        end
      end

      # 地域管理系统支持的产品信息
      class RegionProduct < TencentCloud::Common::AbstractModel
        # @param Name: 产品名称，如cvm
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
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
        # @param ParentZone: 父级zone
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentZone: String
        # @param ParentZoneId: 父级可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentZoneId: String
        # @param ParentZoneName: 父级可用区描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentZoneName: String
        # @param ZoneType: zone类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneType: String
        # @param MachineRoomTypeMC: 控制台类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineRoomTypeMC: String
        # @param ZoneIdMC: 和ZoneId一样，适用于控制台调用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIdMC: String

        attr_accessor :Zone, :ZoneName, :ZoneId, :ZoneState, :ParentZone, :ParentZoneId, :ParentZoneName, :ZoneType, :MachineRoomTypeMC, :ZoneIdMC

        def initialize(zone=nil, zonename=nil, zoneid=nil, zonestate=nil, parentzone=nil, parentzoneid=nil, parentzonename=nil, zonetype=nil, machineroomtypemc=nil, zoneidmc=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @ZoneState = zonestate
          @ParentZone = parentzone
          @ParentZoneId = parentzoneid
          @ParentZoneName = parentzonename
          @ZoneType = zonetype
          @MachineRoomTypeMC = machineroomtypemc
          @ZoneIdMC = zoneidmc
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @ZoneState = params['ZoneState']
          @ParentZone = params['ParentZone']
          @ParentZoneId = params['ParentZoneId']
          @ParentZoneName = params['ParentZoneName']
          @ZoneType = params['ZoneType']
          @MachineRoomTypeMC = params['MachineRoomTypeMC']
          @ZoneIdMC = params['ZoneIdMC']
        end
      end

    end
  end
end

