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
  module Cdc
    module V20201214
      # 购买的cbs信息
      class CbsInfo < TencentCloud::Common::AbstractModel
        # @param Size: cbs存储大小，单位TB
        # @type Size: Integer
        # @param Type: cbs存储类型，默认为SSD
        # @type Type: String

        attr_accessor :Size, :Type

        def initialize(size=nil, type=nil)
          @Size = size
          @Type = type
        end

        def deserialize(params)
          @Size = params['Size']
          @Type = params['Type']
        end
      end

      # CDC集群内cos的容量信息
      class CosCapacity < TencentCloud::Common::AbstractModel
        # @param TotalCapacity: 已购cos的总容量大小，单位GB
        # @type TotalCapacity: Float
        # @param TotalFreeCapacity: 剩余可用cos的容量大小，单位GB
        # @type TotalFreeCapacity: Float
        # @param TotalUsedCapacity: 已用cos的容量大小，单位GB
        # @type TotalUsedCapacity: Float

        attr_accessor :TotalCapacity, :TotalFreeCapacity, :TotalUsedCapacity

        def initialize(totalcapacity=nil, totalfreecapacity=nil, totalusedcapacity=nil)
          @TotalCapacity = totalcapacity
          @TotalFreeCapacity = totalfreecapacity
          @TotalUsedCapacity = totalusedcapacity
        end

        def deserialize(params)
          @TotalCapacity = params['TotalCapacity']
          @TotalFreeCapacity = params['TotalFreeCapacity']
          @TotalUsedCapacity = params['TotalUsedCapacity']
        end
      end

      # 用于购买页面添加cos信息
      class CosInfo < TencentCloud::Common::AbstractModel
        # @param Size: COS存储大小，单位TB
        # @type Size: Integer
        # @param Type: COS存储类型，默认为cos
        # @type Type: String

        attr_accessor :Size, :Type

        def initialize(size=nil, type=nil)
          @Size = size
          @Type = type
        end

        def deserialize(params)
          @Size = params['Size']
          @Type = params['Type']
        end
      end

      # CreateDedicatedClusterImageCache请求参数结构体
      class CreateDedicatedClusterImageCacheRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 集群ID
        # @type DedicatedClusterId: String
        # @param ImageId: 镜像ID
        # @type ImageId: String

        attr_accessor :DedicatedClusterId, :ImageId

        def initialize(dedicatedclusterid=nil, imageid=nil)
          @DedicatedClusterId = dedicatedclusterid
          @ImageId = imageid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @ImageId = params['ImageId']
        end
      end

      # CreateDedicatedClusterImageCache返回参数结构体
      class CreateDedicatedClusterImageCacheResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDedicatedClusterOrder请求参数结构体
      class CreateDedicatedClusterOrderRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 专用集群id
        # @type DedicatedClusterId: String
        # @param DedicatedClusterTypes: order关联的专用集群类型数组
        # @type DedicatedClusterTypes: Array
        # @param CosInfo: order关联的cos存储信息
        # @type CosInfo: :class:`Tencentcloud::Cdc.v20201214.models.CosInfo`
        # @param CbsInfo: order关联的cbs存储信息
        # @type CbsInfo: :class:`Tencentcloud::Cdc.v20201214.models.CbsInfo`
        # @param PurchaseSource: 购买来源，默认为cloudApi
        # @type PurchaseSource: String
        # @param DedicatedClusterOrderId: 当调用API接口提交订单时，需要提交DedicatedClusterOrderId，此处DedicatedClusterOrderId是之前创建的订单，可通过DescribeDedicatedClusterOrders接口查询，这里传入DedicatedClusterOrderId用于调整订单和支付。
        # @type DedicatedClusterOrderId: String

        attr_accessor :DedicatedClusterId, :DedicatedClusterTypes, :CosInfo, :CbsInfo, :PurchaseSource, :DedicatedClusterOrderId

        def initialize(dedicatedclusterid=nil, dedicatedclustertypes=nil, cosinfo=nil, cbsinfo=nil, purchasesource=nil, dedicatedclusterorderid=nil)
          @DedicatedClusterId = dedicatedclusterid
          @DedicatedClusterTypes = dedicatedclustertypes
          @CosInfo = cosinfo
          @CbsInfo = cbsinfo
          @PurchaseSource = purchasesource
          @DedicatedClusterOrderId = dedicatedclusterorderid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          unless params['DedicatedClusterTypes'].nil?
            @DedicatedClusterTypes = []
            params['DedicatedClusterTypes'].each do |i|
              dedicatedclustertypeinfo_tmp = DedicatedClusterTypeInfo.new
              dedicatedclustertypeinfo_tmp.deserialize(i)
              @DedicatedClusterTypes << dedicatedclustertypeinfo_tmp
            end
          end
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new
            @CosInfo.deserialize(params['CosInfo'])
          end
          unless params['CbsInfo'].nil?
            @CbsInfo = CbsInfo.new
            @CbsInfo.deserialize(params['CbsInfo'])
          end
          @PurchaseSource = params['PurchaseSource']
          @DedicatedClusterOrderId = params['DedicatedClusterOrderId']
        end
      end

      # CreateDedicatedClusterOrder返回参数结构体
      class CreateDedicatedClusterOrderResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterOrderId: 专用集群订单id
        # @type DedicatedClusterOrderId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterOrderId, :RequestId

        def initialize(dedicatedclusterorderid=nil, requestid=nil)
          @DedicatedClusterOrderId = dedicatedclusterorderid
          @RequestId = requestid
        end

        def deserialize(params)
          @DedicatedClusterOrderId = params['DedicatedClusterOrderId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDedicatedCluster请求参数结构体
      class CreateDedicatedClusterRequest < TencentCloud::Common::AbstractModel
        # @param SiteId: 专用集群所属的SiteId
        # @type SiteId: String
        # @param Name: 专用集群的名称
        # @type Name: String
        # @param Zone: 专用集群所属的可用区
        # @type Zone: String
        # @param Description: 专用集群的描述
        # @type Description: String

        attr_accessor :SiteId, :Name, :Zone, :Description

        def initialize(siteid=nil, name=nil, zone=nil, description=nil)
          @SiteId = siteid
          @Name = name
          @Zone = zone
          @Description = description
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @Name = params['Name']
          @Zone = params['Zone']
          @Description = params['Description']
        end
      end

      # CreateDedicatedCluster返回参数结构体
      class CreateDedicatedClusterResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 创建的专用集群id
        # @type DedicatedClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterId, :RequestId

        def initialize(dedicatedclusterid=nil, requestid=nil)
          @DedicatedClusterId = dedicatedclusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSite请求参数结构体
      class CreateSiteRequest < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param Country: 站点所在国家
        # @type Country: String
        # @param Province: 站点所在省份
        # @type Province: String
        # @param City: 站点所在城市
        # @type City: String
        # @param AddressLine: 站点所在地区的详细地址信息
        # @type AddressLine: String
        # @param Description: 站点描述
        # @type Description: String
        # @param Note: 注意事项
        # @type Note: String
        # @param FiberType: 您将使用光纤类型将CDC设备连接到网络。有单模和多模两种选项。取值范围："MM","SM"
        # @type FiberType: String
        # @param OpticalStandard: 您将CDC连接到网络时采用的光学标准。此字段取决于上行链路速度、光纤类型和到上游设备的距离。
        # @type OpticalStandard: String
        # @param PowerConnectors: 电源连接器类型
        # @type PowerConnectors: String
        # @param PowerFeedDrop: 从机架上方还是下方供电。取值范围：["UP","DOWN"]
        # @type PowerFeedDrop: String
        # @param MaxWeight: 最大承重(KG)
        # @type MaxWeight: Integer
        # @param PowerDrawKva: 功耗(KW)
        # @type PowerDrawKva: Integer
        # @param UplinkSpeedGbps: 网络到腾讯云Region区域的上行链路速度(Gbps)
        # @type UplinkSpeedGbps: Integer
        # @param UplinkCount: 将CDC连接到网络时，每台CDC网络设备(每个机架 2 台设备)使用的上行链路数量。
        # @type UplinkCount: Integer
        # @param ConditionRequirement: 是否满足下面环境条件：
        # 1、场地没有材料要求或验收标准会影响 CDC 设备配送和安装。
        # 2、确定的机架位置包含:
        # 温度范围为 41 到 104°F (5 到 40°C)。
        # 湿度范围为 10°F (-12°C)和 8% RH (相对湿度)到 70°F(21°C)和 80% RH。
        # 机架位置的气流方向为从前向后，且应具有足够的 CFM (每分钟立方英尺)。CFM 必须是 CDC 配置的 kVA 功耗值的 145.8 倍。
        # @type ConditionRequirement: Boolean
        # @param DimensionRequirement: 是否满足下面的尺寸条件：
        # 您的装货站台可以容纳一个机架箱(高 x 宽 x 深 = 94" x 54" x 48")。
        # 您可以提供从机架(高 x 宽 x 深 = 80" x 24" x 48")交货地点到机架最终安置位置的明确通道。测量深度时，应包括站台、走廊通道、门、转弯、坡道、货梯，并将其他通道限制考虑在内。
        # 在最终的 CDC安置位置，前部间隙可以为 48" 或更大，后部间隙可以为 24" 或更大。
        # @type DimensionRequirement: Boolean
        # @param RedundantNetworking: 是否提供冗余的上游设备(交换机或路由器)，以便两台  网络设备都能连接到网络设备。
        # @type RedundantNetworking: Boolean
        # @param PostalCode: 站点所在地区的邮编
        # @type PostalCode: Integer
        # @param OptionalAddressLine: 站点所在地区的详细地址信息（补充）
        # @type OptionalAddressLine: String
        # @param NeedHelp: 是否需要腾讯云团队协助完成机架支撑工作
        # @type NeedHelp: Boolean
        # @param RedundantPower: 是否电源冗余
        # @type RedundantPower: Boolean
        # @param BreakerRequirement: 上游断路器是否具备
        # @type BreakerRequirement: Boolean

        attr_accessor :Name, :Country, :Province, :City, :AddressLine, :Description, :Note, :FiberType, :OpticalStandard, :PowerConnectors, :PowerFeedDrop, :MaxWeight, :PowerDrawKva, :UplinkSpeedGbps, :UplinkCount, :ConditionRequirement, :DimensionRequirement, :RedundantNetworking, :PostalCode, :OptionalAddressLine, :NeedHelp, :RedundantPower, :BreakerRequirement

        def initialize(name=nil, country=nil, province=nil, city=nil, addressline=nil, description=nil, note=nil, fibertype=nil, opticalstandard=nil, powerconnectors=nil, powerfeeddrop=nil, maxweight=nil, powerdrawkva=nil, uplinkspeedgbps=nil, uplinkcount=nil, conditionrequirement=nil, dimensionrequirement=nil, redundantnetworking=nil, postalcode=nil, optionaladdressline=nil, needhelp=nil, redundantpower=nil, breakerrequirement=nil)
          @Name = name
          @Country = country
          @Province = province
          @City = city
          @AddressLine = addressline
          @Description = description
          @Note = note
          @FiberType = fibertype
          @OpticalStandard = opticalstandard
          @PowerConnectors = powerconnectors
          @PowerFeedDrop = powerfeeddrop
          @MaxWeight = maxweight
          @PowerDrawKva = powerdrawkva
          @UplinkSpeedGbps = uplinkspeedgbps
          @UplinkCount = uplinkcount
          @ConditionRequirement = conditionrequirement
          @DimensionRequirement = dimensionrequirement
          @RedundantNetworking = redundantnetworking
          @PostalCode = postalcode
          @OptionalAddressLine = optionaladdressline
          @NeedHelp = needhelp
          @RedundantPower = redundantpower
          @BreakerRequirement = breakerrequirement
        end

        def deserialize(params)
          @Name = params['Name']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @AddressLine = params['AddressLine']
          @Description = params['Description']
          @Note = params['Note']
          @FiberType = params['FiberType']
          @OpticalStandard = params['OpticalStandard']
          @PowerConnectors = params['PowerConnectors']
          @PowerFeedDrop = params['PowerFeedDrop']
          @MaxWeight = params['MaxWeight']
          @PowerDrawKva = params['PowerDrawKva']
          @UplinkSpeedGbps = params['UplinkSpeedGbps']
          @UplinkCount = params['UplinkCount']
          @ConditionRequirement = params['ConditionRequirement']
          @DimensionRequirement = params['DimensionRequirement']
          @RedundantNetworking = params['RedundantNetworking']
          @PostalCode = params['PostalCode']
          @OptionalAddressLine = params['OptionalAddressLine']
          @NeedHelp = params['NeedHelp']
          @RedundantPower = params['RedundantPower']
          @BreakerRequirement = params['BreakerRequirement']
        end
      end

      # CreateSite返回参数结构体
      class CreateSiteResponse < TencentCloud::Common::AbstractModel
        # @param SiteId: 创建Site生成的id
        # @type SiteId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SiteId, :RequestId

        def initialize(siteid=nil, requestid=nil)
          @SiteId = siteid
          @RequestId = requestid
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @RequestId = params['RequestId']
        end
      end

      # 专用集群列表
      class DedicatedCluster < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 专用集群id。如"cluster-xxxxx"。
        # @type DedicatedClusterId: String
        # @param Zone: 专用集群所属可用区名称。
        # @type Zone: String
        # @param Description: 专用集群的描述。
        # @type Description: String
        # @param Name: 专用集群的名称。
        # @type Name: String
        # @param LifecycleStatus: 专用集群的生命周期。如"PENDING"。
        # @type LifecycleStatus: String
        # @param CreateTime: 专用集群的创建时间。
        # @type CreateTime: String
        # @param SiteId: 专用集群所属的站点id。
        # @type SiteId: String
        # @param RunningStatus: 专用集群的运营状态
        # @type RunningStatus: String

        attr_accessor :DedicatedClusterId, :Zone, :Description, :Name, :LifecycleStatus, :CreateTime, :SiteId, :RunningStatus

        def initialize(dedicatedclusterid=nil, zone=nil, description=nil, name=nil, lifecyclestatus=nil, createtime=nil, siteid=nil, runningstatus=nil)
          @DedicatedClusterId = dedicatedclusterid
          @Zone = zone
          @Description = description
          @Name = name
          @LifecycleStatus = lifecyclestatus
          @CreateTime = createtime
          @SiteId = siteid
          @RunningStatus = runningstatus
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @Zone = params['Zone']
          @Description = params['Description']
          @Name = params['Name']
          @LifecycleStatus = params['LifecycleStatus']
          @CreateTime = params['CreateTime']
          @SiteId = params['SiteId']
          @RunningStatus = params['RunningStatus']
        end
      end

      # 专用宿主机支持的实例规格列表
      class DedicatedClusterInstanceType < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param InstanceType: 规格名称
        # @type InstanceType: String
        # @param NetworkCard: 网卡类型，例如：25代表25G网卡
        # @type NetworkCard: Integer
        # @param Cpu: 实例的CPU核数，单位：核。
        # @type Cpu: Integer
        # @param Memory: 实例内存容量，单位：`GB`。
        # @type Memory: Integer
        # @param InstanceFamily: 实例机型系列。
        # @type InstanceFamily: String
        # @param TypeName: 机型名称。
        # @type TypeName: String
        # @param StorageBlockAmount: 本地存储块数量。
        # @type StorageBlockAmount: Integer
        # @param InstanceBandwidth: 内网带宽，单位Gbps。
        # @type InstanceBandwidth: Float
        # @param InstancePps: 网络收发包能力，单位万PPS。
        # @type InstancePps: Integer
        # @param CpuType: 处理器型号。
        # @type CpuType: String
        # @param Gpu: 实例的GPU数量。
        # @type Gpu: Integer
        # @param Fpga: 实例的FPGA数量。
        # @type Fpga: Integer
        # @param Remark: 机型描述
        # @type Remark: String
        # @param Status: 实例是否售卖。取值范围： <br><li>SELL：表示实例可购买<br></li><li>SOLD_OUT：表示实例已售罄。</li>
        # @type Status: String

        attr_accessor :Zone, :InstanceType, :NetworkCard, :Cpu, :Memory, :InstanceFamily, :TypeName, :StorageBlockAmount, :InstanceBandwidth, :InstancePps, :CpuType, :Gpu, :Fpga, :Remark, :Status

        def initialize(zone=nil, instancetype=nil, networkcard=nil, cpu=nil, memory=nil, instancefamily=nil, typename=nil, storageblockamount=nil, instancebandwidth=nil, instancepps=nil, cputype=nil, gpu=nil, fpga=nil, remark=nil, status=nil)
          @Zone = zone
          @InstanceType = instancetype
          @NetworkCard = networkcard
          @Cpu = cpu
          @Memory = memory
          @InstanceFamily = instancefamily
          @TypeName = typename
          @StorageBlockAmount = storageblockamount
          @InstanceBandwidth = instancebandwidth
          @InstancePps = instancepps
          @CpuType = cputype
          @Gpu = gpu
          @Fpga = fpga
          @Remark = remark
          @Status = status
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @NetworkCard = params['NetworkCard']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @InstanceFamily = params['InstanceFamily']
          @TypeName = params['TypeName']
          @StorageBlockAmount = params['StorageBlockAmount']
          @InstanceBandwidth = params['InstanceBandwidth']
          @InstancePps = params['InstancePps']
          @CpuType = params['CpuType']
          @Gpu = params['Gpu']
          @Fpga = params['Fpga']
          @Remark = params['Remark']
          @Status = params['Status']
        end
      end

      # 专用集群订单
      class DedicatedClusterOrder < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 专用集群id
        # @type DedicatedClusterId: String
        # @param DedicatedClusterTypeId: 专用集群类型id（移到下一层级，已经废弃，后续将删除）
        # @type DedicatedClusterTypeId: String
        # @param SupportedStorageType: 支持的存储类型列表（移到下一层级，已经废弃，后续将删除）
        # @type SupportedStorageType: Array
        # @param SupportedUplinkSpeed: 支持的上连交换机的链路传输速率(GiB)（移到下一层级，已经废弃，后续将删除）
        # @type SupportedUplinkSpeed: Array
        # @param SupportedInstanceFamily: 支持的实例族列表（移到下一层级，已经废弃，后续将删除）
        # @type SupportedInstanceFamily: Array
        # @param Weight: 地板承重要求(KG)
        # @type Weight: Integer
        # @param PowerDraw: 功率要求(KW)
        # @type PowerDraw: Float
        # @param OrderStatus: 订单状态
        # @type OrderStatus: String
        # @param CreateTime: 订单创建的时间
        # @type CreateTime: String
        # @param DedicatedClusterOrderId: 大订单ID
        # @type DedicatedClusterOrderId: String
        # @param Action: 订单类型，创建CREATE或扩容EXTEND
        # @type Action: String
        # @param DedicatedClusterOrderItems: 子订单详情列表
        # @type DedicatedClusterOrderItems: Array
        # @param Cpu: cpu值
        # @type Cpu: Integer
        # @param Mem: mem值
        # @type Mem: Integer
        # @param Gpu: gpu值
        # @type Gpu: Integer
        # @param PayStatus: 0代表未支付，1代表已支付
        # @type PayStatus: Integer
        # @param PayType: 支付方式，一次性、按月、按年
        # @type PayType: String
        # @param TimeUnit: 购买时长的单位
        # @type TimeUnit: String
        # @param TimeSpan: 购买时长
        # @type TimeSpan: Integer
        # @param OrderType: 订单类型
        # @type OrderType: String
        # @param CheckStatus: 验收状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckStatus: String
        # @param DeliverExpectTime: 交付预期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverExpectTime: String
        # @param DeliverFinishTime: 交付实际完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliverFinishTime: String
        # @param CheckExpectTime: 验收预期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckExpectTime: String
        # @param CheckFinishTime: 验收实际完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckFinishTime: String
        # @param OrderSLA: 订单SLA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderSLA: String
        # @param OrderPayPlan: 订单支付计划
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderPayPlan: String

        attr_accessor :DedicatedClusterId, :DedicatedClusterTypeId, :SupportedStorageType, :SupportedUplinkSpeed, :SupportedInstanceFamily, :Weight, :PowerDraw, :OrderStatus, :CreateTime, :DedicatedClusterOrderId, :Action, :DedicatedClusterOrderItems, :Cpu, :Mem, :Gpu, :PayStatus, :PayType, :TimeUnit, :TimeSpan, :OrderType, :CheckStatus, :DeliverExpectTime, :DeliverFinishTime, :CheckExpectTime, :CheckFinishTime, :OrderSLA, :OrderPayPlan
        extend Gem::Deprecate
        deprecate :DedicatedClusterTypeId, :none, 2025, 11
        deprecate :DedicatedClusterTypeId=, :none, 2025, 11
        deprecate :SupportedStorageType, :none, 2025, 11
        deprecate :SupportedStorageType=, :none, 2025, 11
        deprecate :SupportedUplinkSpeed, :none, 2025, 11
        deprecate :SupportedUplinkSpeed=, :none, 2025, 11
        deprecate :SupportedInstanceFamily, :none, 2025, 11
        deprecate :SupportedInstanceFamily=, :none, 2025, 11

        def initialize(dedicatedclusterid=nil, dedicatedclustertypeid=nil, supportedstoragetype=nil, supporteduplinkspeed=nil, supportedinstancefamily=nil, weight=nil, powerdraw=nil, orderstatus=nil, createtime=nil, dedicatedclusterorderid=nil, action=nil, dedicatedclusterorderitems=nil, cpu=nil, mem=nil, gpu=nil, paystatus=nil, paytype=nil, timeunit=nil, timespan=nil, ordertype=nil, checkstatus=nil, deliverexpecttime=nil, deliverfinishtime=nil, checkexpecttime=nil, checkfinishtime=nil, ordersla=nil, orderpayplan=nil)
          @DedicatedClusterId = dedicatedclusterid
          @DedicatedClusterTypeId = dedicatedclustertypeid
          @SupportedStorageType = supportedstoragetype
          @SupportedUplinkSpeed = supporteduplinkspeed
          @SupportedInstanceFamily = supportedinstancefamily
          @Weight = weight
          @PowerDraw = powerdraw
          @OrderStatus = orderstatus
          @CreateTime = createtime
          @DedicatedClusterOrderId = dedicatedclusterorderid
          @Action = action
          @DedicatedClusterOrderItems = dedicatedclusterorderitems
          @Cpu = cpu
          @Mem = mem
          @Gpu = gpu
          @PayStatus = paystatus
          @PayType = paytype
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @OrderType = ordertype
          @CheckStatus = checkstatus
          @DeliverExpectTime = deliverexpecttime
          @DeliverFinishTime = deliverfinishtime
          @CheckExpectTime = checkexpecttime
          @CheckFinishTime = checkfinishtime
          @OrderSLA = ordersla
          @OrderPayPlan = orderpayplan
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @DedicatedClusterTypeId = params['DedicatedClusterTypeId']
          @SupportedStorageType = params['SupportedStorageType']
          @SupportedUplinkSpeed = params['SupportedUplinkSpeed']
          @SupportedInstanceFamily = params['SupportedInstanceFamily']
          @Weight = params['Weight']
          @PowerDraw = params['PowerDraw']
          @OrderStatus = params['OrderStatus']
          @CreateTime = params['CreateTime']
          @DedicatedClusterOrderId = params['DedicatedClusterOrderId']
          @Action = params['Action']
          unless params['DedicatedClusterOrderItems'].nil?
            @DedicatedClusterOrderItems = []
            params['DedicatedClusterOrderItems'].each do |i|
              dedicatedclusterorderitem_tmp = DedicatedClusterOrderItem.new
              dedicatedclusterorderitem_tmp.deserialize(i)
              @DedicatedClusterOrderItems << dedicatedclusterorderitem_tmp
            end
          end
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Gpu = params['Gpu']
          @PayStatus = params['PayStatus']
          @PayType = params['PayType']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @OrderType = params['OrderType']
          @CheckStatus = params['CheckStatus']
          @DeliverExpectTime = params['DeliverExpectTime']
          @DeliverFinishTime = params['DeliverFinishTime']
          @CheckExpectTime = params['CheckExpectTime']
          @CheckFinishTime = params['CheckFinishTime']
          @OrderSLA = params['OrderSLA']
          @OrderPayPlan = params['OrderPayPlan']
        end
      end

      # 专用集群子订单
      class DedicatedClusterOrderItem < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterTypeId: 专用集群类型id
        # @type DedicatedClusterTypeId: String
        # @param SupportedStorageType: 支持的存储类型列表
        # @type SupportedStorageType: Array
        # @param SupportedUplinkSpeed: 支持的上连交换机的链路传输速率(GiB)
        # @type SupportedUplinkSpeed: Array
        # @param SupportedInstanceFamily: 支持的实例族列表
        # @type SupportedInstanceFamily: Array
        # @param Weight: 地板承重要求(KG)
        # @type Weight: Integer
        # @param PowerDraw: 功率要求(KW)
        # @type PowerDraw: Float
        # @param SubOrderStatus: 订单状态
        # @type SubOrderStatus: String
        # @param CreateTime: 订单创建的时间
        # @type CreateTime: String
        # @param SubOrderId: 子订单ID
        # @type SubOrderId: String
        # @param Count: 关联的集群规格数量
        # @type Count: Integer
        # @param Name: 规格简单描述
        # @type Name: String
        # @param Description: 规格详细描述
        # @type Description: String
        # @param TotalCpu: CPU数
        # @type TotalCpu: Integer
        # @param TotalMem: 内存数
        # @type TotalMem: Integer
        # @param TotalGpu: GPU数
        # @type TotalGpu: Integer
        # @param TypeName: 规格英文名
        # @type TypeName: String
        # @param ComputeFormat: 规格展示
        # @type ComputeFormat: String
        # @param TypeFamily: 规格类型
        # @type TypeFamily: String
        # @param SubOrderPayStatus: 0未支付，1已支付
        # @type SubOrderPayStatus: Integer

        attr_accessor :DedicatedClusterTypeId, :SupportedStorageType, :SupportedUplinkSpeed, :SupportedInstanceFamily, :Weight, :PowerDraw, :SubOrderStatus, :CreateTime, :SubOrderId, :Count, :Name, :Description, :TotalCpu, :TotalMem, :TotalGpu, :TypeName, :ComputeFormat, :TypeFamily, :SubOrderPayStatus

        def initialize(dedicatedclustertypeid=nil, supportedstoragetype=nil, supporteduplinkspeed=nil, supportedinstancefamily=nil, weight=nil, powerdraw=nil, suborderstatus=nil, createtime=nil, suborderid=nil, count=nil, name=nil, description=nil, totalcpu=nil, totalmem=nil, totalgpu=nil, typename=nil, computeformat=nil, typefamily=nil, suborderpaystatus=nil)
          @DedicatedClusterTypeId = dedicatedclustertypeid
          @SupportedStorageType = supportedstoragetype
          @SupportedUplinkSpeed = supporteduplinkspeed
          @SupportedInstanceFamily = supportedinstancefamily
          @Weight = weight
          @PowerDraw = powerdraw
          @SubOrderStatus = suborderstatus
          @CreateTime = createtime
          @SubOrderId = suborderid
          @Count = count
          @Name = name
          @Description = description
          @TotalCpu = totalcpu
          @TotalMem = totalmem
          @TotalGpu = totalgpu
          @TypeName = typename
          @ComputeFormat = computeformat
          @TypeFamily = typefamily
          @SubOrderPayStatus = suborderpaystatus
        end

        def deserialize(params)
          @DedicatedClusterTypeId = params['DedicatedClusterTypeId']
          @SupportedStorageType = params['SupportedStorageType']
          @SupportedUplinkSpeed = params['SupportedUplinkSpeed']
          @SupportedInstanceFamily = params['SupportedInstanceFamily']
          @Weight = params['Weight']
          @PowerDraw = params['PowerDraw']
          @SubOrderStatus = params['SubOrderStatus']
          @CreateTime = params['CreateTime']
          @SubOrderId = params['SubOrderId']
          @Count = params['Count']
          @Name = params['Name']
          @Description = params['Description']
          @TotalCpu = params['TotalCpu']
          @TotalMem = params['TotalMem']
          @TotalGpu = params['TotalGpu']
          @TypeName = params['TypeName']
          @ComputeFormat = params['ComputeFormat']
          @TypeFamily = params['TypeFamily']
          @SubOrderPayStatus = params['SubOrderPayStatus']
        end
      end

      # 专用集群配置
      class DedicatedClusterType < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterTypeId: 配置id
        # @type DedicatedClusterTypeId: String
        # @param Description: 配置描述，对应描述
        # @type Description: String
        # @param Name: 配置名称，对应计算资源类型
        # @type Name: String
        # @param CreateTime: 创建配置的时间
        # @type CreateTime: String
        # @param SupportedStorageType: 支持的存储类型列表
        # @type SupportedStorageType: Array
        # @param SupportedUplinkGiB: 支持的上连交换机的链路传输速率
        # @type SupportedUplinkGiB: Array
        # @param SupportedInstanceFamily: 支持的实例族列表
        # @type SupportedInstanceFamily: Array
        # @param Weight: 地板承重要求(KG)
        # @type Weight: Integer
        # @param PowerDrawKva: 功率要求(KW)
        # @type PowerDrawKva: Float
        # @param ComputeFormatDesc: 显示计算资源规格详情，存储等资源不显示
        # @type ComputeFormatDesc: String

        attr_accessor :DedicatedClusterTypeId, :Description, :Name, :CreateTime, :SupportedStorageType, :SupportedUplinkGiB, :SupportedInstanceFamily, :Weight, :PowerDrawKva, :ComputeFormatDesc

        def initialize(dedicatedclustertypeid=nil, description=nil, name=nil, createtime=nil, supportedstoragetype=nil, supporteduplinkgib=nil, supportedinstancefamily=nil, weight=nil, powerdrawkva=nil, computeformatdesc=nil)
          @DedicatedClusterTypeId = dedicatedclustertypeid
          @Description = description
          @Name = name
          @CreateTime = createtime
          @SupportedStorageType = supportedstoragetype
          @SupportedUplinkGiB = supporteduplinkgib
          @SupportedInstanceFamily = supportedinstancefamily
          @Weight = weight
          @PowerDrawKva = powerdrawkva
          @ComputeFormatDesc = computeformatdesc
        end

        def deserialize(params)
          @DedicatedClusterTypeId = params['DedicatedClusterTypeId']
          @Description = params['Description']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @SupportedStorageType = params['SupportedStorageType']
          @SupportedUplinkGiB = params['SupportedUplinkGiB']
          @SupportedInstanceFamily = params['SupportedInstanceFamily']
          @Weight = params['Weight']
          @PowerDrawKva = params['PowerDrawKva']
          @ComputeFormatDesc = params['ComputeFormatDesc']
        end
      end

      # DedicatedClusterType => (Id, Count)
      class DedicatedClusterTypeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 集群类型Id
        # @type Id: String
        # @param Count: 集群类型个数
        # @type Count: Integer

        attr_accessor :Id, :Count

        def initialize(id=nil, count=nil)
          @Id = id
          @Count = count
        end

        def deserialize(params)
          @Id = params['Id']
          @Count = params['Count']
        end
      end

      # DeleteDedicatedClusterImageCache请求参数结构体
      class DeleteDedicatedClusterImageCacheRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 集群id
        # @type DedicatedClusterId: String
        # @param ImageId: 镜像id
        # @type ImageId: String

        attr_accessor :DedicatedClusterId, :ImageId

        def initialize(dedicatedclusterid=nil, imageid=nil)
          @DedicatedClusterId = dedicatedclusterid
          @ImageId = imageid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @ImageId = params['ImageId']
        end
      end

      # DeleteDedicatedClusterImageCache返回参数结构体
      class DeleteDedicatedClusterImageCacheResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDedicatedClusters请求参数结构体
      class DeleteDedicatedClustersRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterIds: 要删除的专用集群id
        # @type DedicatedClusterIds: Array

        attr_accessor :DedicatedClusterIds

        def initialize(dedicatedclusterids=nil)
          @DedicatedClusterIds = dedicatedclusterids
        end

        def deserialize(params)
          @DedicatedClusterIds = params['DedicatedClusterIds']
        end
      end

      # DeleteDedicatedClusters返回参数结构体
      class DeleteDedicatedClustersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSites请求参数结构体
      class DeleteSitesRequest < TencentCloud::Common::AbstractModel
        # @param SiteIds: 要删除的站点id列表
        # @type SiteIds: Array

        attr_accessor :SiteIds

        def initialize(siteids=nil)
          @SiteIds = siteids
        end

        def deserialize(params)
          @SiteIds = params['SiteIds']
        end
      end

      # DeleteSites返回参数结构体
      class DeleteSitesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDedicatedClusterCbsStatistics请求参数结构体
      class DescribeDedicatedClusterCbsStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 查询的专用集群id
        # @type DedicatedClusterId: String
        # @param SetId: 云硬盘仓库id
        # @type SetId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Period: 时间范围精度，1分钟(ONE_MINUTE)/5分钟(FIVE_MINUTE)
        # @type Period: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20
        # @type Limit: Integer

        attr_accessor :DedicatedClusterId, :SetId, :StartTime, :EndTime, :Period, :Offset, :Limit

        def initialize(dedicatedclusterid=nil, setid=nil, starttime=nil, endtime=nil, period=nil, offset=nil, limit=nil)
          @DedicatedClusterId = dedicatedclusterid
          @SetId = setid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @SetId = params['SetId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDedicatedClusterCbsStatistics返回参数结构体
      class DescribeDedicatedClusterCbsStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SetList: 云硬盘仓库信息
        # @type SetList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SetList, :TotalCount, :RequestId

        def initialize(setlist=nil, totalcount=nil, requestid=nil)
          @SetList = setlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SetList'].nil?
            @SetList = []
            params['SetList'].each do |i|
              setinfo_tmp = SetInfo.new
              setinfo_tmp.deserialize(i)
              @SetList << setinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterCosCapacity请求参数结构体
      class DescribeDedicatedClusterCosCapacityRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 查询的专用集群id
        # @type DedicatedClusterId: String

        attr_accessor :DedicatedClusterId

        def initialize(dedicatedclusterid=nil)
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # DescribeDedicatedClusterCosCapacity返回参数结构体
      class DescribeDedicatedClusterCosCapacityResponse < TencentCloud::Common::AbstractModel
        # @param CosCapacity: 本集群内cos容量信息，单位：‘GB’
        # @type CosCapacity: :class:`Tencentcloud::Cdc.v20201214.models.CosCapacity`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosCapacity, :RequestId

        def initialize(coscapacity=nil, requestid=nil)
          @CosCapacity = coscapacity
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CosCapacity'].nil?
            @CosCapacity = CosCapacity.new
            @CosCapacity.deserialize(params['CosCapacity'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterHostStatistics请求参数结构体
      class DescribeDedicatedClusterHostStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 查询的专用集群id
        # @type DedicatedClusterId: String
        # @param HostId: 宿主机id
        # @type HostId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Period: 时间范围精度，1分钟(ONE_MINUTE)/5分钟(FIVE_MINUTE)
        # @type Period: String

        attr_accessor :DedicatedClusterId, :HostId, :StartTime, :EndTime, :Period

        def initialize(dedicatedclusterid=nil, hostid=nil, starttime=nil, endtime=nil, period=nil)
          @DedicatedClusterId = dedicatedclusterid
          @HostId = hostid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @HostId = params['HostId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeDedicatedClusterHostStatistics返回参数结构体
      class DescribeDedicatedClusterHostStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param HostStatisticSet: 该集群内宿主机的统计信息列表
        # @type HostStatisticSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostStatisticSet, :RequestId

        def initialize(hoststatisticset=nil, requestid=nil)
          @HostStatisticSet = hoststatisticset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HostStatisticSet'].nil?
            @HostStatisticSet = []
            params['HostStatisticSet'].each do |i|
              hoststatistic_tmp = HostStatistic.new
              hoststatistic_tmp.deserialize(i)
              @HostStatisticSet << hoststatistic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterHosts请求参数结构体
      class DescribeDedicatedClusterHostsRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 集群id
        # @type DedicatedClusterId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20
        # @type Limit: Integer

        attr_accessor :DedicatedClusterId, :Offset, :Limit

        def initialize(dedicatedclusterid=nil, offset=nil, limit=nil)
          @DedicatedClusterId = dedicatedclusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDedicatedClusterHosts返回参数结构体
      class DescribeDedicatedClusterHostsResponse < TencentCloud::Common::AbstractModel
        # @param HostInfoSet: 宿主机信息
        # @type HostInfoSet: Array
        # @param TotalCount: 宿主机总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostInfoSet, :TotalCount, :RequestId

        def initialize(hostinfoset=nil, totalcount=nil, requestid=nil)
          @HostInfoSet = hostinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HostInfoSet'].nil?
            @HostInfoSet = []
            params['HostInfoSet'].each do |i|
              hostinfo_tmp = HostInfo.new
              hostinfo_tmp.deserialize(i)
              @HostInfoSet << hostinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterInstanceTypes请求参数结构体
      class DescribeDedicatedClusterInstanceTypesRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 查询的专用集群id
        # @type DedicatedClusterId: String

        attr_accessor :DedicatedClusterId

        def initialize(dedicatedclusterid=nil)
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # DescribeDedicatedClusterInstanceTypes返回参数结构体
      class DescribeDedicatedClusterInstanceTypesResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterInstanceTypeSet: 支持的实例规格列表
        # @type DedicatedClusterInstanceTypeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterInstanceTypeSet, :RequestId

        def initialize(dedicatedclusterinstancetypeset=nil, requestid=nil)
          @DedicatedClusterInstanceTypeSet = dedicatedclusterinstancetypeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DedicatedClusterInstanceTypeSet'].nil?
            @DedicatedClusterInstanceTypeSet = []
            params['DedicatedClusterInstanceTypeSet'].each do |i|
              dedicatedclusterinstancetype_tmp = DedicatedClusterInstanceType.new
              dedicatedclusterinstancetype_tmp.deserialize(i)
              @DedicatedClusterInstanceTypeSet << dedicatedclusterinstancetype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterOrders请求参数结构体
      class DescribeDedicatedClusterOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterIds: 按照专用集群id过滤
        # @type DedicatedClusterIds: Array
        # @param DedicatedClusterOrderIds: 按照专用集群订单id过滤
        # @type DedicatedClusterOrderIds: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Status: 订单状态为过滤条件：PENDING INCONSTRUCTION DELIVERING DELIVERED EXPIRED CANCELLED  OFFLINE
        # @type Status: String
        # @param ActionType: 订单类型为过滤条件：CREATE  EXTEND
        # @type ActionType: String
        # @param OrderTypes: 订单类型列表
        # @type OrderTypes: Array

        attr_accessor :DedicatedClusterIds, :DedicatedClusterOrderIds, :Offset, :Limit, :Status, :ActionType, :OrderTypes

        def initialize(dedicatedclusterids=nil, dedicatedclusterorderids=nil, offset=nil, limit=nil, status=nil, actiontype=nil, ordertypes=nil)
          @DedicatedClusterIds = dedicatedclusterids
          @DedicatedClusterOrderIds = dedicatedclusterorderids
          @Offset = offset
          @Limit = limit
          @Status = status
          @ActionType = actiontype
          @OrderTypes = ordertypes
        end

        def deserialize(params)
          @DedicatedClusterIds = params['DedicatedClusterIds']
          @DedicatedClusterOrderIds = params['DedicatedClusterOrderIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @ActionType = params['ActionType']
          @OrderTypes = params['OrderTypes']
        end
      end

      # DescribeDedicatedClusterOrders返回参数结构体
      class DescribeDedicatedClusterOrdersResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterOrderSet: 专用集群订单列表
        # @type DedicatedClusterOrderSet: Array
        # @param TotalCount: 符合条件的专用集群订单总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterOrderSet, :TotalCount, :RequestId

        def initialize(dedicatedclusterorderset=nil, totalcount=nil, requestid=nil)
          @DedicatedClusterOrderSet = dedicatedclusterorderset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DedicatedClusterOrderSet'].nil?
            @DedicatedClusterOrderSet = []
            params['DedicatedClusterOrderSet'].each do |i|
              dedicatedclusterorder_tmp = DedicatedClusterOrder.new
              dedicatedclusterorder_tmp.deserialize(i)
              @DedicatedClusterOrderSet << dedicatedclusterorder_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterOverview请求参数结构体
      class DescribeDedicatedClusterOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 集群id
        # @type DedicatedClusterId: String

        attr_accessor :DedicatedClusterId

        def initialize(dedicatedclusterid=nil)
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # DescribeDedicatedClusterOverview返回参数结构体
      class DescribeDedicatedClusterOverviewResponse < TencentCloud::Common::AbstractModel
        # @param CvmCount: 云服务器数量
        # @type CvmCount: Integer
        # @param HostCount: 宿主机数量
        # @type HostCount: Integer
        # @param VpnConnectionState: vpn通道状态
        # @type VpnConnectionState: String
        # @param VpngwBandwidthData: vpn网关监控数据
        # @type VpngwBandwidthData: :class:`Tencentcloud::Cdc.v20201214.models.VpngwBandwidthData`
        # @param LocalNetInfo: 本地网关信息
        # @type LocalNetInfo: :class:`Tencentcloud::Cdc.v20201214.models.LocalNetInfo`
        # @param VpnConnectionBandwidthData: vpn网关通道监控数据
        # @type VpnConnectionBandwidthData: Array
        # @param HostDetailInfo: 宿主机资源概览信息
        # @type HostDetailInfo: Array
        # @param HostStandbyCount: 热备宿主机数量
        # @type HostStandbyCount: Integer
        # @param HostNormalCount: 普通宿主机数量
        # @type HostNormalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CvmCount, :HostCount, :VpnConnectionState, :VpngwBandwidthData, :LocalNetInfo, :VpnConnectionBandwidthData, :HostDetailInfo, :HostStandbyCount, :HostNormalCount, :RequestId

        def initialize(cvmcount=nil, hostcount=nil, vpnconnectionstate=nil, vpngwbandwidthdata=nil, localnetinfo=nil, vpnconnectionbandwidthdata=nil, hostdetailinfo=nil, hoststandbycount=nil, hostnormalcount=nil, requestid=nil)
          @CvmCount = cvmcount
          @HostCount = hostcount
          @VpnConnectionState = vpnconnectionstate
          @VpngwBandwidthData = vpngwbandwidthdata
          @LocalNetInfo = localnetinfo
          @VpnConnectionBandwidthData = vpnconnectionbandwidthdata
          @HostDetailInfo = hostdetailinfo
          @HostStandbyCount = hoststandbycount
          @HostNormalCount = hostnormalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @CvmCount = params['CvmCount']
          @HostCount = params['HostCount']
          @VpnConnectionState = params['VpnConnectionState']
          unless params['VpngwBandwidthData'].nil?
            @VpngwBandwidthData = VpngwBandwidthData.new
            @VpngwBandwidthData.deserialize(params['VpngwBandwidthData'])
          end
          unless params['LocalNetInfo'].nil?
            @LocalNetInfo = LocalNetInfo.new
            @LocalNetInfo.deserialize(params['LocalNetInfo'])
          end
          unless params['VpnConnectionBandwidthData'].nil?
            @VpnConnectionBandwidthData = []
            params['VpnConnectionBandwidthData'].each do |i|
              vpngwbandwidthdata_tmp = VpngwBandwidthData.new
              vpngwbandwidthdata_tmp.deserialize(i)
              @VpnConnectionBandwidthData << vpngwbandwidthdata_tmp
            end
          end
          unless params['HostDetailInfo'].nil?
            @HostDetailInfo = []
            params['HostDetailInfo'].each do |i|
              hostdetailinfo_tmp = HostDetailInfo.new
              hostdetailinfo_tmp.deserialize(i)
              @HostDetailInfo << hostdetailinfo_tmp
            end
          end
          @HostStandbyCount = params['HostStandbyCount']
          @HostNormalCount = params['HostNormalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusterTypes请求参数结构体
      class DescribeDedicatedClusterTypesRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模糊匹配专用集群配置名称
        # @type Name: String
        # @param DedicatedClusterTypeIds: 待查询的专用集群配置id列表
        # @type DedicatedClusterTypeIds: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param IsCompute: 是否只查询计算规格类型
        # @type IsCompute: Boolean

        attr_accessor :Name, :DedicatedClusterTypeIds, :Offset, :Limit, :IsCompute

        def initialize(name=nil, dedicatedclustertypeids=nil, offset=nil, limit=nil, iscompute=nil)
          @Name = name
          @DedicatedClusterTypeIds = dedicatedclustertypeids
          @Offset = offset
          @Limit = limit
          @IsCompute = iscompute
        end

        def deserialize(params)
          @Name = params['Name']
          @DedicatedClusterTypeIds = params['DedicatedClusterTypeIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IsCompute = params['IsCompute']
        end
      end

      # DescribeDedicatedClusterTypes返回参数结构体
      class DescribeDedicatedClusterTypesResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterTypeSet: 专用集群配置列表
        # @type DedicatedClusterTypeSet: Array
        # @param TotalCount: 符合条件的个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterTypeSet, :TotalCount, :RequestId

        def initialize(dedicatedclustertypeset=nil, totalcount=nil, requestid=nil)
          @DedicatedClusterTypeSet = dedicatedclustertypeset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DedicatedClusterTypeSet'].nil?
            @DedicatedClusterTypeSet = []
            params['DedicatedClusterTypeSet'].each do |i|
              dedicatedclustertype_tmp = DedicatedClusterType.new
              dedicatedclustertype_tmp.deserialize(i)
              @DedicatedClusterTypeSet << dedicatedclustertype_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusters请求参数结构体
      class DescribeDedicatedClustersRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterIds: 按照一个或者多个实例ID查询。实例ID形如：`cluster-xxxxxxxx`
        # @type DedicatedClusterIds: Array
        # @param Zones: 按照可用区名称过滤
        # @type Zones: Array
        # @param SiteIds: 按照站点id过滤
        # @type SiteIds: Array
        # @param LifecycleStatuses: 按照专用集群生命周期过滤
        # @type LifecycleStatuses: Array
        # @param Name: 模糊匹配专用集群名称
        # @type Name: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :DedicatedClusterIds, :Zones, :SiteIds, :LifecycleStatuses, :Name, :Offset, :Limit

        def initialize(dedicatedclusterids=nil, zones=nil, siteids=nil, lifecyclestatuses=nil, name=nil, offset=nil, limit=nil)
          @DedicatedClusterIds = dedicatedclusterids
          @Zones = zones
          @SiteIds = siteids
          @LifecycleStatuses = lifecyclestatuses
          @Name = name
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DedicatedClusterIds = params['DedicatedClusterIds']
          @Zones = params['Zones']
          @SiteIds = params['SiteIds']
          @LifecycleStatuses = params['LifecycleStatuses']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDedicatedClusters返回参数结构体
      class DescribeDedicatedClustersResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterSet: 符合查询条件的专用集群列表
        # @type DedicatedClusterSet: Array
        # @param TotalCount: 符合条件的专用集群数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterSet, :TotalCount, :RequestId

        def initialize(dedicatedclusterset=nil, totalcount=nil, requestid=nil)
          @DedicatedClusterSet = dedicatedclusterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DedicatedClusterSet'].nil?
            @DedicatedClusterSet = []
            params['DedicatedClusterSet'].each do |i|
              dedicatedcluster_tmp = DedicatedCluster.new
              dedicatedcluster_tmp.deserialize(i)
              @DedicatedClusterSet << dedicatedcluster_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedSupportedZones请求参数结构体
      class DescribeDedicatedSupportedZonesRequest < TencentCloud::Common::AbstractModel
        # @param Regions: 传入region列表
        # @type Regions: Array

        attr_accessor :Regions

        def initialize(regions=nil)
          @Regions = regions
        end

        def deserialize(params)
          @Regions = params['Regions']
        end
      end

      # DescribeDedicatedSupportedZones返回参数结构体
      class DescribeDedicatedSupportedZonesResponse < TencentCloud::Common::AbstractModel
        # @param ZoneSet: 支持的可用区列表
        # @type ZoneSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneSet, :RequestId

        def initialize(zoneset=nil, requestid=nil)
          @ZoneSet = zoneset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              regionzoneinfo_tmp = RegionZoneInfo.new
              regionzoneinfo_tmp.deserialize(i)
              @ZoneSet << regionzoneinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSitesDetail请求参数结构体
      class DescribeSitesDetailRequest < TencentCloud::Common::AbstractModel
        # @param SiteIds: 按照站点id过滤
        # @type SiteIds: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Name: 按照站定名称模糊匹配
        # @type Name: String

        attr_accessor :SiteIds, :Offset, :Limit, :Name

        def initialize(siteids=nil, offset=nil, limit=nil, name=nil)
          @SiteIds = siteids
          @Offset = offset
          @Limit = limit
          @Name = name
        end

        def deserialize(params)
          @SiteIds = params['SiteIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Name = params['Name']
        end
      end

      # DescribeSitesDetail返回参数结构体
      class DescribeSitesDetailResponse < TencentCloud::Common::AbstractModel
        # @param SiteDetailSet: 站点详情
        # @type SiteDetailSet: Array
        # @param TotalCount: 符合条件的站点总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SiteDetailSet, :TotalCount, :RequestId

        def initialize(sitedetailset=nil, totalcount=nil, requestid=nil)
          @SiteDetailSet = sitedetailset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SiteDetailSet'].nil?
            @SiteDetailSet = []
            params['SiteDetailSet'].each do |i|
              sitedetail_tmp = SiteDetail.new
              sitedetail_tmp.deserialize(i)
              @SiteDetailSet << sitedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSites请求参数结构体
      class DescribeSitesRequest < TencentCloud::Common::AbstractModel
        # @param SiteIds: 按照站点id过滤
        # @type SiteIds: Array
        # @param Name: 模糊匹配站点名称
        # @type Name: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :SiteIds, :Name, :Offset, :Limit

        def initialize(siteids=nil, name=nil, offset=nil, limit=nil)
          @SiteIds = siteids
          @Name = name
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SiteIds = params['SiteIds']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSites返回参数结构体
      class DescribeSitesResponse < TencentCloud::Common::AbstractModel
        # @param SiteSet: 符合查询条件的站点列表
        # @type SiteSet: Array
        # @param TotalCount: 符合条件的站点数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SiteSet, :TotalCount, :RequestId

        def initialize(siteset=nil, totalcount=nil, requestid=nil)
          @SiteSet = siteset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SiteSet'].nil?
            @SiteSet = []
            params['SiteSet'].each do |i|
              site_tmp = Site.new
              site_tmp.deserialize(i)
              @SiteSet << site_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 带有时间戳的详细数据。
      class DetailData < TencentCloud::Common::AbstractModel
        # @param Timestamps: 时间戳
        # @type Timestamps: Array
        # @param Values: 对应的具体值
        # @type Values: Array

        attr_accessor :Timestamps, :Values

        def initialize(timestamps=nil, values=nil)
          @Timestamps = timestamps
          @Values = values
        end

        def deserialize(params)
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # 宿主机资源的概览详细信息。
      class HostDetailInfo < TencentCloud::Common::AbstractModel
        # @param HostTypeFamily: 类型族
        # @type HostTypeFamily: String
        # @param CpuTotal: 总CPU
        # @type CpuTotal: Float
        # @param CpuAvailable: 可用CPU
        # @type CpuAvailable: Float
        # @param MemTotal: 总内存
        # @type MemTotal: Float
        # @param MemAvailable: 可用内存
        # @type MemAvailable: Float

        attr_accessor :HostTypeFamily, :CpuTotal, :CpuAvailable, :MemTotal, :MemAvailable

        def initialize(hosttypefamily=nil, cputotal=nil, cpuavailable=nil, memtotal=nil, memavailable=nil)
          @HostTypeFamily = hosttypefamily
          @CpuTotal = cputotal
          @CpuAvailable = cpuavailable
          @MemTotal = memtotal
          @MemAvailable = memavailable
        end

        def deserialize(params)
          @HostTypeFamily = params['HostTypeFamily']
          @CpuTotal = params['CpuTotal']
          @CpuAvailable = params['CpuAvailable']
          @MemTotal = params['MemTotal']
          @MemAvailable = params['MemAvailable']
        end
      end

      # CDC宿主机的详细信息
      class HostInfo < TencentCloud::Common::AbstractModel
        # @param HostIp: 宿主机IP（废弃）
        # @type HostIp: String
        # @param ServiceType: 云服务类型
        # @type ServiceType: String
        # @param HostStatus: 宿主机运行状态
        # @type HostStatus: String
        # @param HostType: 宿主机类型
        # @type HostType: String
        # @param CpuAvailable: cpu可用数
        # @type CpuAvailable: Integer
        # @param CpuTotal: cpu总数
        # @type CpuTotal: Integer
        # @param MemAvailable: 内存可用数
        # @type MemAvailable: Integer
        # @param MemTotal: 内存总数
        # @type MemTotal: Integer
        # @param RunTime: 运行时间
        # @type RunTime: String
        # @param ExpireTime: 到期时间
        # @type ExpireTime: String
        # @param HostId: 宿主机id
        # @type HostId: String

        attr_accessor :HostIp, :ServiceType, :HostStatus, :HostType, :CpuAvailable, :CpuTotal, :MemAvailable, :MemTotal, :RunTime, :ExpireTime, :HostId
        extend Gem::Deprecate
        deprecate :HostIp, :none, 2025, 11
        deprecate :HostIp=, :none, 2025, 11

        def initialize(hostip=nil, servicetype=nil, hoststatus=nil, hosttype=nil, cpuavailable=nil, cputotal=nil, memavailable=nil, memtotal=nil, runtime=nil, expiretime=nil, hostid=nil)
          @HostIp = hostip
          @ServiceType = servicetype
          @HostStatus = hoststatus
          @HostType = hosttype
          @CpuAvailable = cpuavailable
          @CpuTotal = cputotal
          @MemAvailable = memavailable
          @MemTotal = memtotal
          @RunTime = runtime
          @ExpireTime = expiretime
          @HostId = hostid
        end

        def deserialize(params)
          @HostIp = params['HostIp']
          @ServiceType = params['ServiceType']
          @HostStatus = params['HostStatus']
          @HostType = params['HostType']
          @CpuAvailable = params['CpuAvailable']
          @CpuTotal = params['CpuTotal']
          @MemAvailable = params['MemAvailable']
          @MemTotal = params['MemTotal']
          @RunTime = params['RunTime']
          @ExpireTime = params['ExpireTime']
          @HostId = params['HostId']
        end
      end

      # CDC集群内宿主机的统计信息
      class HostStatistic < TencentCloud::Common::AbstractModel
        # @param HostType: 宿主机规格
        # @type HostType: String
        # @param HostFamily: 宿主机机型系列
        # @type HostFamily: String
        # @param Cpu: 宿主机的CPU核数，单位：核
        # @type Cpu: Integer
        # @param Memory: 宿主机内存大小，单位：GB
        # @type Memory: Integer
        # @param Count: 该规格宿主机的数量
        # @type Count: Integer
        # @param CpuAverage: 平均cpu负载百分比
        # @type CpuAverage: Float
        # @param MemAverage: 平均内存使用率百分比
        # @type MemAverage: Float
        # @param NetAverage: 平均网络流量
        # @type NetAverage: Float
        # @param CpuDetailData: cpu详细监控数据
        # @type CpuDetailData: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param MemDetailData: 内存详细数据
        # @type MemDetailData: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param NetRateDetailData: 网络速率详细数据
        # @type NetRateDetailData: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param NetPacketDetailData: 网速包详细数据
        # @type NetPacketDetailData: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`

        attr_accessor :HostType, :HostFamily, :Cpu, :Memory, :Count, :CpuAverage, :MemAverage, :NetAverage, :CpuDetailData, :MemDetailData, :NetRateDetailData, :NetPacketDetailData

        def initialize(hosttype=nil, hostfamily=nil, cpu=nil, memory=nil, count=nil, cpuaverage=nil, memaverage=nil, netaverage=nil, cpudetaildata=nil, memdetaildata=nil, netratedetaildata=nil, netpacketdetaildata=nil)
          @HostType = hosttype
          @HostFamily = hostfamily
          @Cpu = cpu
          @Memory = memory
          @Count = count
          @CpuAverage = cpuaverage
          @MemAverage = memaverage
          @NetAverage = netaverage
          @CpuDetailData = cpudetaildata
          @MemDetailData = memdetaildata
          @NetRateDetailData = netratedetaildata
          @NetPacketDetailData = netpacketdetaildata
        end

        def deserialize(params)
          @HostType = params['HostType']
          @HostFamily = params['HostFamily']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Count = params['Count']
          @CpuAverage = params['CpuAverage']
          @MemAverage = params['MemAverage']
          @NetAverage = params['NetAverage']
          unless params['CpuDetailData'].nil?
            @CpuDetailData = DetailData.new
            @CpuDetailData.deserialize(params['CpuDetailData'])
          end
          unless params['MemDetailData'].nil?
            @MemDetailData = DetailData.new
            @MemDetailData.deserialize(params['MemDetailData'])
          end
          unless params['NetRateDetailData'].nil?
            @NetRateDetailData = DetailData.new
            @NetRateDetailData.deserialize(params['NetRateDetailData'])
          end
          unless params['NetPacketDetailData'].nil?
            @NetPacketDetailData = DetailData.new
            @NetPacketDetailData.deserialize(params['NetPacketDetailData'])
          end
        end
      end

      # 入带宽数据
      class InBandwidth < TencentCloud::Common::AbstractModel
        # @param Timestamps: 时间戳
        # @type Timestamps: Array
        # @param Values: 时间对应的值
        # @type Values: Array

        attr_accessor :Timestamps, :Values

        def initialize(timestamps=nil, values=nil)
          @Timestamps = timestamps
          @Values = values
        end

        def deserialize(params)
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # 本地网络信息
      class LocalNetInfo < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议
        # @type Protocol: String
        # @param VpcId: 网络id
        # @type VpcId: String
        # @param BGPRoute: 路由信息
        # @type BGPRoute: String
        # @param LocalIp: 本地IP
        # @type LocalIp: String

        attr_accessor :Protocol, :VpcId, :BGPRoute, :LocalIp

        def initialize(protocol=nil, vpcid=nil, bgproute=nil, localip=nil)
          @Protocol = protocol
          @VpcId = vpcid
          @BGPRoute = bgproute
          @LocalIp = localip
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @VpcId = params['VpcId']
          @BGPRoute = params['BGPRoute']
          @LocalIp = params['LocalIp']
        end
      end

      # ModifyDedicatedClusterInfo请求参数结构体
      class ModifyDedicatedClusterInfoRequest < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 本地专用集群ID
        # @type DedicatedClusterId: String
        # @param Name: 集群的新名称
        # @type Name: String
        # @param Zone: 集群的新可用区
        # @type Zone: String
        # @param Description: 集群的新描述信息
        # @type Description: String
        # @param SiteId: 集群所在站点
        # @type SiteId: String

        attr_accessor :DedicatedClusterId, :Name, :Zone, :Description, :SiteId

        def initialize(dedicatedclusterid=nil, name=nil, zone=nil, description=nil, siteid=nil)
          @DedicatedClusterId = dedicatedclusterid
          @Name = name
          @Zone = zone
          @Description = description
          @SiteId = siteid
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @Name = params['Name']
          @Zone = params['Zone']
          @Description = params['Description']
          @SiteId = params['SiteId']
        end
      end

      # ModifyDedicatedClusterInfo返回参数结构体
      class ModifyDedicatedClusterInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOrderStatus请求参数结构体
      class ModifyOrderStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 要更新成的状态
        # @type Status: String
        # @param DedicatedClusterOrderId: 大订单ID，可以在本地专用集群的基础信息页获取大订单ID
        # @type DedicatedClusterOrderId: String
        # @param SubOrderIds: 小订单ID，进入大订单的详情页，可以看到小订单ID
        # @type SubOrderIds: Array

        attr_accessor :Status, :DedicatedClusterOrderId, :SubOrderIds

        def initialize(status=nil, dedicatedclusterorderid=nil, suborderids=nil)
          @Status = status
          @DedicatedClusterOrderId = dedicatedclusterorderid
          @SubOrderIds = suborderids
        end

        def deserialize(params)
          @Status = params['Status']
          @DedicatedClusterOrderId = params['DedicatedClusterOrderId']
          @SubOrderIds = params['SubOrderIds']
        end
      end

      # ModifyOrderStatus返回参数结构体
      class ModifyOrderStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifySiteDeviceInfo请求参数结构体
      class ModifySiteDeviceInfoRequest < TencentCloud::Common::AbstractModel
        # @param SiteId: 机房ID
        # @type SiteId: String
        # @param FiberType: 您将使用光纤类型将CDC设备连接到网络。有单模和多模两种选项。
        # @type FiberType: String
        # @param OpticalStandard: 您将CDC连接到网络时采用的光学标准。此字段取决于上行链路速度、光纤类型和到上游设备的距离。
        # @type OpticalStandard: String
        # @param PowerConnectors: 电源连接器类型
        # @type PowerConnectors: String
        # @param PowerFeedDrop: 从机架上方还是下方供电。取值范围：["UP","DOWN"]
        # @type PowerFeedDrop: String
        # @param MaxWeight: 最大承重(KG)
        # @type MaxWeight: Integer
        # @param PowerDrawKva: 功耗(KW)
        # @type PowerDrawKva: Integer
        # @param UplinkSpeedGbps: 网络到腾讯云Region区域的上行链路速度(Gbps)
        # @type UplinkSpeedGbps: Integer
        # @param UplinkCount: 将CDC连接到网络时，每台CDC网络设备(每个机架 2 台设备)使用的上行链路数量。
        # @type UplinkCount: Integer
        # @param ConditionRequirement: 是否满足下面环境条件：
        # 1、场地没有材料要求或验收标准会影响 CDC 设备配送和安装。
        # 2、确定的机架位置包含:
        # 温度范围为 41 到 104°F (5 到 40°C)。
        # 湿度范围为 10°F (-12°C)和 8% RH (相对湿度)到 70°F(21°C)和 80% RH。
        # 机架位置的气流方向为从前向后，且应具有足够的 CFM (每分钟立方英尺)，散热功率须达到CDC运行功率值的 145.8 倍以上。
        # @type ConditionRequirement: Boolean
        # @param DimensionRequirement: 是否满足下面的尺寸条件：
        # 您的装货站台可以容纳一个机架箱(高 x 宽 x 深 = 94" x 54" x 48")。
        # 您可以提供从机架(高 x 宽 x 深 = 80" x 24" x 48")交货地点到机架最终安置位置的明确通道。测量深度时，应包括站台、走廊通道、门、转弯、坡道、货梯，并将其他通道限制考虑在内。
        # 在最终的 CDC安置位置，前部间隙可以为 48" 或更大，后部间隙可以为 24" 或更大。
        # @type DimensionRequirement: Boolean
        # @param RedundantNetworking: 是否提供冗余的上游设备(交换机或路由器)，以便实现网络出口的高可用。
        # @type RedundantNetworking: Boolean
        # @param NeedHelp: 是否需要腾讯云团队协助完成机架支撑工作
        # @type NeedHelp: Boolean
        # @param RedundantPower: 是否电源冗余
        # @type RedundantPower: Boolean
        # @param BreakerRequirement: 上游断路器是否具备
        # @type BreakerRequirement: Boolean

        attr_accessor :SiteId, :FiberType, :OpticalStandard, :PowerConnectors, :PowerFeedDrop, :MaxWeight, :PowerDrawKva, :UplinkSpeedGbps, :UplinkCount, :ConditionRequirement, :DimensionRequirement, :RedundantNetworking, :NeedHelp, :RedundantPower, :BreakerRequirement

        def initialize(siteid=nil, fibertype=nil, opticalstandard=nil, powerconnectors=nil, powerfeeddrop=nil, maxweight=nil, powerdrawkva=nil, uplinkspeedgbps=nil, uplinkcount=nil, conditionrequirement=nil, dimensionrequirement=nil, redundantnetworking=nil, needhelp=nil, redundantpower=nil, breakerrequirement=nil)
          @SiteId = siteid
          @FiberType = fibertype
          @OpticalStandard = opticalstandard
          @PowerConnectors = powerconnectors
          @PowerFeedDrop = powerfeeddrop
          @MaxWeight = maxweight
          @PowerDrawKva = powerdrawkva
          @UplinkSpeedGbps = uplinkspeedgbps
          @UplinkCount = uplinkcount
          @ConditionRequirement = conditionrequirement
          @DimensionRequirement = dimensionrequirement
          @RedundantNetworking = redundantnetworking
          @NeedHelp = needhelp
          @RedundantPower = redundantpower
          @BreakerRequirement = breakerrequirement
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @FiberType = params['FiberType']
          @OpticalStandard = params['OpticalStandard']
          @PowerConnectors = params['PowerConnectors']
          @PowerFeedDrop = params['PowerFeedDrop']
          @MaxWeight = params['MaxWeight']
          @PowerDrawKva = params['PowerDrawKva']
          @UplinkSpeedGbps = params['UplinkSpeedGbps']
          @UplinkCount = params['UplinkCount']
          @ConditionRequirement = params['ConditionRequirement']
          @DimensionRequirement = params['DimensionRequirement']
          @RedundantNetworking = params['RedundantNetworking']
          @NeedHelp = params['NeedHelp']
          @RedundantPower = params['RedundantPower']
          @BreakerRequirement = params['BreakerRequirement']
        end
      end

      # ModifySiteDeviceInfo返回参数结构体
      class ModifySiteDeviceInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifySiteInfo请求参数结构体
      class ModifySiteInfoRequest < TencentCloud::Common::AbstractModel
        # @param SiteId: 机房ID
        # @type SiteId: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Description: 站点描述
        # @type Description: String
        # @param Note: 注意事项
        # @type Note: String
        # @param Country: 站点所在国家
        # @type Country: String
        # @param Province: 站点所在省份
        # @type Province: String
        # @param City: 站点所在城市
        # @type City: String
        # @param PostalCode: 站点所在地区的邮编
        # @type PostalCode: String
        # @param AddressLine: 站点所在地区的详细地址信息
        # @type AddressLine: String

        attr_accessor :SiteId, :Name, :Description, :Note, :Country, :Province, :City, :PostalCode, :AddressLine

        def initialize(siteid=nil, name=nil, description=nil, note=nil, country=nil, province=nil, city=nil, postalcode=nil, addressline=nil)
          @SiteId = siteid
          @Name = name
          @Description = description
          @Note = note
          @Country = country
          @Province = province
          @City = city
          @PostalCode = postalcode
          @AddressLine = addressline
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @Name = params['Name']
          @Description = params['Description']
          @Note = params['Note']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @PostalCode = params['PostalCode']
          @AddressLine = params['AddressLine']
        end
      end

      # ModifySiteInfo返回参数结构体
      class ModifySiteInfoResponse < TencentCloud::Common::AbstractModel
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

      # 出带宽数据。
      class OutBandwidth < TencentCloud::Common::AbstractModel
        # @param Timestamps: 时间戳
        # @type Timestamps: Array
        # @param Values: 对应时间的值
        # @type Values: Array

        attr_accessor :Timestamps, :Values

        def initialize(timestamps=nil, values=nil)
          @Timestamps = timestamps
          @Values = values
        end

        def deserialize(params)
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # RegionZoneInfo信息
      class RegionZoneInfo < TencentCloud::Common::AbstractModel
        # @param RegionId: Region id
        # @type RegionId: Integer
        # @param Zones: ZoneInfo数组
        # @type Zones: Array

        attr_accessor :RegionId, :Zones

        def initialize(regionid=nil, zones=nil)
          @RegionId = regionid
          @Zones = zones
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @Zones << zoneinfo_tmp
            end
          end
        end
      end

      # 云硬盘的仓库级别信息
      class SetInfo < TencentCloud::Common::AbstractModel
        # @param SetId: 云硬盘仓库id
        # @type SetId: String
        # @param SetName: 云硬盘仓库名称
        # @type SetName: String
        # @param SetType: 云硬盘仓库类型
        # @type SetType: String
        # @param SetSize: 云硬盘仓库容量
        # @type SetSize: Float
        # @param SetStatus: 云硬盘仓库状态
        # @type SetStatus: String
        # @param CreateTime: 云硬盘仓库创建时间
        # @type CreateTime: String
        # @param ReadTraffic: 读流量
        # @type ReadTraffic: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param WriteTraffic: 写流量
        # @type WriteTraffic: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param ReadIO: 读IO
        # @type ReadIO: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param WriteIO: 写IO
        # @type WriteIO: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param Await: 平均等待时间
        # @type Await: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`
        # @param Util: 利用率
        # @type Util: :class:`Tencentcloud::Cdc.v20201214.models.DetailData`

        attr_accessor :SetId, :SetName, :SetType, :SetSize, :SetStatus, :CreateTime, :ReadTraffic, :WriteTraffic, :ReadIO, :WriteIO, :Await, :Util

        def initialize(setid=nil, setname=nil, settype=nil, setsize=nil, setstatus=nil, createtime=nil, readtraffic=nil, writetraffic=nil, readio=nil, writeio=nil, await=nil, util=nil)
          @SetId = setid
          @SetName = setname
          @SetType = settype
          @SetSize = setsize
          @SetStatus = setstatus
          @CreateTime = createtime
          @ReadTraffic = readtraffic
          @WriteTraffic = writetraffic
          @ReadIO = readio
          @WriteIO = writeio
          @Await = await
          @Util = util
        end

        def deserialize(params)
          @SetId = params['SetId']
          @SetName = params['SetName']
          @SetType = params['SetType']
          @SetSize = params['SetSize']
          @SetStatus = params['SetStatus']
          @CreateTime = params['CreateTime']
          unless params['ReadTraffic'].nil?
            @ReadTraffic = DetailData.new
            @ReadTraffic.deserialize(params['ReadTraffic'])
          end
          unless params['WriteTraffic'].nil?
            @WriteTraffic = DetailData.new
            @WriteTraffic.deserialize(params['WriteTraffic'])
          end
          unless params['ReadIO'].nil?
            @ReadIO = DetailData.new
            @ReadIO.deserialize(params['ReadIO'])
          end
          unless params['WriteIO'].nil?
            @WriteIO = DetailData.new
            @WriteIO.deserialize(params['WriteIO'])
          end
          unless params['Await'].nil?
            @Await = DetailData.new
            @Await.deserialize(params['Await'])
          end
          unless params['Util'].nil?
            @Util = DetailData.new
            @Util.deserialize(params['Util'])
          end
        end
      end

      # 客户站点信息
      class Site < TencentCloud::Common::AbstractModel
        # @param Name: 站点名称
        # @type Name: String
        # @param SiteId: 站点id
        # @type SiteId: String
        # @param Description: 站点描述
        # @type Description: String
        # @param CreateTime: 站点创建时间
        # @type CreateTime: String

        attr_accessor :Name, :SiteId, :Description, :CreateTime

        def initialize(name=nil, siteid=nil, description=nil, createtime=nil)
          @Name = name
          @SiteId = siteid
          @Description = description
          @CreateTime = createtime
        end

        def deserialize(params)
          @Name = params['Name']
          @SiteId = params['SiteId']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
        end
      end

      # 站点详情
      class SiteDetail < TencentCloud::Common::AbstractModel
        # @param SiteId: 站点id
        # @type SiteId: String
        # @param Name: 站点名称
        # @type Name: String
        # @param Description: 站点描述
        # @type Description: String
        # @param CreateTime: 站点创建时间
        # @type CreateTime: String
        # @param FiberType: 光纤类型
        # @type FiberType: String
        # @param UplinkSpeedGbps: 网络到腾讯云Region区域的上行链路速度
        # @type UplinkSpeedGbps: Integer
        # @param UplinkCount: 将CDC连接到网络时，每台CDC网络设备(每个机架 2 台设备)使用的上行链路数量。
        # @type UplinkCount: Integer
        # @param OpticalStandard: 将CDC连接到网络时采用的光学标准
        # @type OpticalStandard: String
        # @param RedundantNetworking: 是否提供冗余的上游设备(交换机或路由器)，以便两台  网络设备都能连接到网络设备。
        # @type RedundantNetworking: Boolean
        # @param PowerConnectors: 电源连接器类型
        # @type PowerConnectors: String
        # @param PowerFeedDrop: 从机架上方还是下方供电。
        # @type PowerFeedDrop: String
        # @param PowerDrawKva: 功耗(KW)
        # @type PowerDrawKva: Float
        # @param ConditionRequirement: 是否满足下面环境条件：
        # 1、场地没有材料要求或验收标准会影响 CDC 设备配送和安装。
        # 2、确定的机架位置包含:
        # 温度范围为 41 到 104°F (5 到 40°C)。
        # 湿度范围为 10°F (-12°C)和 8% RH (相对湿度)到 70°F(21°C)和 80% RH。
        # 机架位置的气流方向为从前向后，且应具有足够的 CFM (每分钟立方英尺)。CFM 必须是 CDC 配置的 kVA 功耗值的 145.8 倍。
        # @type ConditionRequirement: Boolean
        # @param DimensionRequirement: 是否满足下面的尺寸条件：
        # 您的装货站台可以容纳一个机架箱(高 x 宽 x 深 = 94" x 54" x 48")。
        # 您可以提供从机架(高 x 宽 x 深 = 80" x 24" x 48")交货地点到机架最终安置位置的明确通道。测量深度时，应包括站台、走廊通道、门、转弯、坡道、货梯，并将其他通道限制考虑在内。
        # 在最终的 CDC安置位置，前部间隙可以为 48" 或更大，后部间隙可以为 24" 或更大。
        # @type DimensionRequirement: Boolean
        # @param MaxWeight: 最大承重(KG)
        # @type MaxWeight: Integer
        # @param AddressLine: 站点地址
        # @type AddressLine: String
        # @param OptionalAddressLine: 站点所在地区的详细地址信息（补充）
        # @type OptionalAddressLine: String
        # @param NeedHelp: 是否需要腾讯云团队协助完成机架支撑工作
        # @type NeedHelp: Boolean
        # @param BreakerRequirement: 上游断路器是否具备
        # @type BreakerRequirement: Boolean
        # @param RedundantPower: 是否电源冗余
        # @type RedundantPower: Boolean
        # @param Country: 站点所在国家
        # @type Country: String
        # @param Province: 站点所在省份
        # @type Province: String
        # @param City: 站点所在城市
        # @type City: String
        # @param PostalCode: 站点所在地区的邮编
        # @type PostalCode: Integer

        attr_accessor :SiteId, :Name, :Description, :CreateTime, :FiberType, :UplinkSpeedGbps, :UplinkCount, :OpticalStandard, :RedundantNetworking, :PowerConnectors, :PowerFeedDrop, :PowerDrawKva, :ConditionRequirement, :DimensionRequirement, :MaxWeight, :AddressLine, :OptionalAddressLine, :NeedHelp, :BreakerRequirement, :RedundantPower, :Country, :Province, :City, :PostalCode

        def initialize(siteid=nil, name=nil, description=nil, createtime=nil, fibertype=nil, uplinkspeedgbps=nil, uplinkcount=nil, opticalstandard=nil, redundantnetworking=nil, powerconnectors=nil, powerfeeddrop=nil, powerdrawkva=nil, conditionrequirement=nil, dimensionrequirement=nil, maxweight=nil, addressline=nil, optionaladdressline=nil, needhelp=nil, breakerrequirement=nil, redundantpower=nil, country=nil, province=nil, city=nil, postalcode=nil)
          @SiteId = siteid
          @Name = name
          @Description = description
          @CreateTime = createtime
          @FiberType = fibertype
          @UplinkSpeedGbps = uplinkspeedgbps
          @UplinkCount = uplinkcount
          @OpticalStandard = opticalstandard
          @RedundantNetworking = redundantnetworking
          @PowerConnectors = powerconnectors
          @PowerFeedDrop = powerfeeddrop
          @PowerDrawKva = powerdrawkva
          @ConditionRequirement = conditionrequirement
          @DimensionRequirement = dimensionrequirement
          @MaxWeight = maxweight
          @AddressLine = addressline
          @OptionalAddressLine = optionaladdressline
          @NeedHelp = needhelp
          @BreakerRequirement = breakerrequirement
          @RedundantPower = redundantpower
          @Country = country
          @Province = province
          @City = city
          @PostalCode = postalcode
        end

        def deserialize(params)
          @SiteId = params['SiteId']
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @FiberType = params['FiberType']
          @UplinkSpeedGbps = params['UplinkSpeedGbps']
          @UplinkCount = params['UplinkCount']
          @OpticalStandard = params['OpticalStandard']
          @RedundantNetworking = params['RedundantNetworking']
          @PowerConnectors = params['PowerConnectors']
          @PowerFeedDrop = params['PowerFeedDrop']
          @PowerDrawKva = params['PowerDrawKva']
          @ConditionRequirement = params['ConditionRequirement']
          @DimensionRequirement = params['DimensionRequirement']
          @MaxWeight = params['MaxWeight']
          @AddressLine = params['AddressLine']
          @OptionalAddressLine = params['OptionalAddressLine']
          @NeedHelp = params['NeedHelp']
          @BreakerRequirement = params['BreakerRequirement']
          @RedundantPower = params['RedundantPower']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @PostalCode = params['PostalCode']
        end
      end

      # VPN网关的流量监控数据。
      class VpngwBandwidthData < TencentCloud::Common::AbstractModel
        # @param OutBandwidth: 出带宽流量
        # @type OutBandwidth: :class:`Tencentcloud::Cdc.v20201214.models.OutBandwidth`
        # @param InBandwidth: 入带宽流量
        # @type InBandwidth: :class:`Tencentcloud::Cdc.v20201214.models.InBandwidth`

        attr_accessor :OutBandwidth, :InBandwidth

        def initialize(outbandwidth=nil, inbandwidth=nil)
          @OutBandwidth = outbandwidth
          @InBandwidth = inbandwidth
        end

        def deserialize(params)
          unless params['OutBandwidth'].nil?
            @OutBandwidth = OutBandwidth.new
            @OutBandwidth.deserialize(params['OutBandwidth'])
          end
          unless params['InBandwidth'].nil?
            @InBandwidth = InBandwidth.new
            @InBandwidth.deserialize(params['InBandwidth'])
          end
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称
        # @type Zone: String
        # @param ZoneName: 可用区描述
        # @type ZoneName: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
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

